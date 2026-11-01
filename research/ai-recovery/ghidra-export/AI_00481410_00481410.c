/* Local J460 decompiler output.
 * VA: 0x00481410
 * Entry: 00481410
 * Dispatcher: 0x006c2990
 * Types: 260
 * Identities: 260.0.0,260.10.0
 * Evidence: dispatcher=0x006c2990; end=0x004830e0; instructions=1584
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=260; identities=260.0.0,260.10.0;
   dispatcher=0x006c2990; end=0x004830e0; instructions=1584 */

void __fastcall AI_00481410(int *param_1)

{
  byte bVar1;
  byte **ppbVar2;
  int iVar3;
  undefined *puVar4;
  char cVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  byte **ppbVar9;
  float *pfVar10;
  int iVar11;
  int iVar12;
  undefined4 *puVar13;
  char *pcVar14;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint uVar15;
  bool bVar16;
  float fVar17;
  float fVar18;
  undefined local_1c0 [8];
  undefined local_1b8 [8];
  int local_1b0 [8];
  undefined4 local_190;
  undefined4 uStack_18c;
  undefined4 local_188;
  char local_184 [4];
  int local_180;
  undefined local_17c [4];
  uint local_178;
  float local_174;
  int *local_170;
  int *local_16c;
  int *local_168;
  float local_164;
  float local_160;
  int *local_15c;
  float local_158;
  float local_154;
  undefined local_150 [12];
  undefined4 local_144;
  int local_50;
  int iStack_4c;
  int iStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined8 local_30;
  int local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2bf0;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar8 = param_1[0xb];
  local_16c = param_1;
  if (param_1[0x2d9] == 0) {
    param_1[0x104] = 0;
    if (iVar8 == 0) {
      param_1[0x62] = 2;
      param_1[0x61] = 3;
      param_1[0x2f0] = 3;
      if (param_1[0xc] == 1) {
        param_1[0x2f0] = 2;
      }
      else {
        iVar8 = param_1[0x2f0];
        if (param_1[0xc] == 2) {
          iVar8 = 1;
        }
        param_1[0x2f0] = iVar8;
      }
      local_16c = (int *)0x0;
      puStack_20 = &stack0xfffffffc;
      do {
        uVar6 = FUN_006eef60();
        local_168 = (int *)(((float)(int)local_16c / (float)param_1[0x2f0]) * DAT_00baab30 *
                           DAT_00baa088);
        piVar7 = local_168;
        FUN_0041d540();
        local_158 = (float)piVar7 * DAT_00baa924 + (float)param_1[0xcf];
        piVar7 = local_168;
        FUN_0041d520();
        local_154 = (float)piVar7 * DAT_00baa924 + (float)param_1[0xd0];
        uVar6 = FUN_006fe410(param_1[10],10,&local_158,&DAT_00c7b640,param_1,0,uVar6,0);
        piVar7 = (int *)__RTDynamicCast(uVar6,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                        &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if (piVar7[0xef] != 0) {
          local_168 = piVar7 + 0xef;
          FUN_004cf210(&local_168);
        }
        piVar7[0xef] = (int)param_1;
        FUN_004cdcf0(piVar7 + 0xef);
        local_40 = ZEXT816(0);
        local_50 = _DAT_00babc30;
        iStack_4c = _UNK_00babc34;
        iStack_48 = _UNK_00babc38;
        uStack_44 = _UNK_00babc3c;
        local_30 = 0;
        local_28 = 0;
        (**(code **)(*piVar7 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
        piVar7[0x2f0] = (int)local_16c;
        local_16c = (int *)((int)local_16c + 1);
        *(undefined *)(piVar7 + 0xec) = 1;
      } while ((int)local_16c < param_1[0x2f0]);
      uVar15 = 0;
      param_1[0xcd] = 0x3e99999a;
      param_1[0xce] = 0;
      if (param_1[0x32] != 0) {
        do {
          iVar8 = FUN_0040b220(uVar15);
          uVar15 = uVar15 + 1;
          *(undefined4 *)(iVar8 + 0x54) = 0x3f000000;
        } while (uVar15 < (uint)param_1[0x32]);
      }
      param_1[0x5a] = param_1[0x5a] | 0x10;
      param_1[0x5b] = param_1[0x5b];
      iVar8 = 4;
      *(undefined *)(param_1 + 0xec) = 1;
    }
    else {
      param_1[0x5a] = param_1[0x5a] | 0x80000000;
      param_1[0x5b] = param_1[0x5b];
      iVar8 = 3;
      param_1[0x61] = 0;
      param_1[0x62] = 1;
      puStack_20 = &stack0xfffffffc;
    }
    param_1[0x2d9] = iVar8;
    iVar3 = _UNK_00babaec;
    iVar12 = _UNK_00babae8;
    iVar11 = _UNK_00babae4;
    iVar8 = _DAT_00babae0;
    local_190 = 0x3f4ccccd;
    uStack_18c = 0x3f4ccccd;
    local_188 = 0x3f4ccccd;
    puVar4 = puStack_20;
    if (param_1 + 0x79 != local_1b0) {
      *(undefined8 *)(param_1 + 0x81) = 0x3f4ccccd3f4ccccd;
      param_1[0x79] = iVar8;
      param_1[0x7a] = iVar11;
      param_1[0x7b] = iVar12;
      param_1[0x7c] = iVar3;
      param_1[0x83] = 0x3f4ccccd;
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
    }
    goto LAB_004830b2;
  }
  *(undefined *)(param_1 + 0xec) = 0;
  iVar11 = DAT_00c71678;
  if (iVar8 != 0) {
    puVar4 = &stack0xfffffffc;
    if (iVar8 != 10) goto LAB_004830b2;
    FUN_006d8e40(1);
    iVar8 = param_1[0x2d9];
    if (iVar8 == 4) {
      pfVar10 = (float *)FUN_006bec40(local_17c,0);
      local_168 = (int *)(*pfVar10 - (float)param_1[0xcf]);
      local_15c = (int *)(pfVar10[1] - (float)param_1[0xd0]);
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380("FloatChase",0);
      }
      local_160 = (float)local_15c * (float)local_15c + (float)local_168 * (float)local_168;
      local_154 = local_160;
      FUN_00435a50();
      if (param_1[0x3c7] == -1) {
        iVar8 = FUN_006be840();
        local_158 = local_154 * *(float *)(iVar8 + 0x360) * (float)DAT_00baa2d0 + (float)local_168;
        local_154 = local_154 * *(float *)(iVar8 + 0x364) * (float)DAT_00baa2d0 + (float)local_15c;
        pfVar10 = (float *)FUN_00a10030(local_17c);
      }
      else {
        pfVar10 = (float *)FUN_006d82d0(local_17c);
      }
      fVar17 = (float)param_1[0xdb];
      fVar18 = *pfVar10 * (float)DAT_00baa2d0;
      if (NAN(fVar17) == (fVar17 == 0.0)) {
        param_1[0xd9] =
             (int)((pfVar10[1] * (float)DAT_00baa2d0 * (float)param_1[0xe7]) / fVar17 +
                  (float)param_1[0xd9]);
        param_1[0xd8] = (int)((fVar18 * (float)param_1[0xe7]) / fVar17 + (float)param_1[0xd8]);
      }
      *(bool *)(param_1 + 0x52) = 0.0 < (float)param_1[0xd8];
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
      if (param_1[0x3c7] == -1) {
        if (((0x5a < param_1[0x104]) && (local_160 < DAT_00baac5c)) &&
           (uVar15 = FUN_006eef60(), uVar15 % 0x32 == 0)) goto LAB_00482a9e;
      }
      else if ((0x3c < param_1[0x104]) && (cVar5 = FUN_006cae60(0,7), cVar5 != '\0')) {
LAB_00482a9e:
        FUN_006d9050(1);
        param_1[0x2d9] = 8;
      }
      param_1[0x104] = param_1[0x104] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    }
    else if (iVar8 == 8) {
      FUN_006d9050(0);
      FUN_0040a380("Shoot",0);
      cVar5 = FUN_0040b030("Shoot");
      if (cVar5 != '\0') {
        iVar8 = FUN_006eef60();
        FUN_006d6ba0(0x13e,0x3f800000,2,0,
                     (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa120 + DAT_00baa4b0);
        local_158 = 0.0;
        local_154 = -12.0;
        iVar8 = FUN_006d7cf0(&local_158,param_1 + 0x79,&DAT_00c7b640);
        *(undefined4 *)(iVar8 + 0x358) = 0x40800000;
        FUN_004564b0(param_1);
        iVar8 = FUN_006be840();
        local_154 = *(float *)(iVar8 + 0x33c);
        local_160 = *(float *)(iVar8 + 0x340);
        iVar8 = FUN_006be840();
        local_158 = (*(float *)(iVar8 + 0x360) * DAT_00baa784 + local_154) - (float)param_1[0xcf];
        local_154 = (*(float *)(iVar8 + 0x364) * DAT_00baa784 + local_160) - (float)param_1[0xd0];
        if (param_1[0x3c7] != -1) {
          local_158 = (float)param_1[0x3c8];
          local_154 = (float)param_1[0x3c9];
        }
        uVar6 = AI_0043ef30();
        pfVar10 = (float *)FUN_00a10030(local_17c);
        local_160 = pfVar10[1] * DAT_00baa81c;
        local_164 = *pfVar10 * DAT_00baa81c;
        FUN_006cb2e0(param_1 + 0xcf,&local_164,0,uVar6);
        param_1[0x2d9] = 4;
      }
      fVar17 = (float)param_1[0xdb] * (float)DAT_00baa2d0;
      param_1[0x104] = 0;
      param_1[0xdb] = (int)fVar17;
    }
    else if (iVar8 == 3) {
      FUN_0040a380("Float",0);
      local_168 = (int *)0x0;
      piVar7 = (int *)0x0;
      if (param_1[0xef] != 0) {
        iVar8 = FUN_00447770();
        piVar7 = *(int **)(iVar8 + 0xbc0);
        local_168 = piVar7;
        iVar8 = FUN_00447770();
        local_170 = *(int **)(iVar8 + 0x30);
        if (local_170 == (int *)0x0) {
          iVar8 = *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca];
          fVar17 = DAT_00baa6fc;
          if ((0x5a < iVar8) && (fVar17 = DAT_00baa630, iVar8 < 0x96)) {
            fVar17 = DAT_00baa6fc - (float)(iVar8 + -0x5a) / DAT_00baa950;
          }
        }
        else {
          fVar17 = (float)(int)piVar7;
        }
        iVar8 = param_1[0xef];
        if (**(char **)(DAT_00c71678 + 0x18300) == '\0') {
          iVar11 = -1;
        }
        else {
          iVar11 = *(int *)(DAT_00c71678 + 0x264f8) -
                   *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0);
        }
        local_154 = ((((float)param_1[0x2f0] / fVar17) * DAT_00baab30 +
                     (float)iVar11 + (float)iVar11) - DAT_00baa904) * DAT_00baa088;
        fVar17 = local_154;
        FUN_0041d540();
        local_160 = fVar17 * DAT_00baa924 + *(float *)(iVar8 + 0x33c);
        fVar18 = local_154;
        FUN_0041d520();
        fVar18 = fVar18 * DAT_00baa924;
        fVar17 = *(float *)(iVar8 + 0x340);
        param_1[0xcf] = (int)local_160;
        param_1[0xd0] = (int)(fVar18 + fVar17);
        piVar7 = local_170;
      }
      param_1[0xdb] = (int)((float)param_1[0xdb] * (float)DAT_00baa2d0);
      if (0.0 < (float)param_1[5]) {
        local_40 = ZEXT816(0);
        local_50 = _DAT_00babac0;
        iStack_4c = _UNK_00babac4;
        iStack_48 = _UNK_00babac8;
        uStack_44 = _UNK_00babacc;
        local_30 = 0;
        local_28 = 0;
        (**(code **)(*param_1 + 0x3c))(&local_50,10,1,0,1);
        param_1[3] = param_1[2];
        param_1[5] = 0;
        param_1[6] = 0;
        param_1[7] = 0;
      }
      if ((((param_1[0x2f0] == 0) || (piVar7 != (int *)0x0)) &&
          (0x5a < *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca])) ||
         ((((int)local_168 < 3 && (piVar7 == (int *)0x0)) || (param_1[0x3c7] != -1)))) {
        param_1[0x2d9] = 4;
        FUN_0040a380("FloatChase",0);
        uVar6 = FUN_00435a80();
        (**(code **)(*param_1 + 0x3c))(uVar6,0xffffffff,0xff,0,1);
        param_1[0x62] = 4;
        FUN_006d6ba0(0x3e6,0x3f800000,2,0,0x3f800000);
      }
    }
    if (param_1[0x2d9] != 3) {
      FUN_00812f50(&local_174,param_1 + 0xcf,0,0,0);
      local_158 = local_174 - (float)param_1[0xcf];
      local_154 = (float)local_170 - (float)param_1[0xd0];
      if (((NAN(local_158) || NAN(DAT_00c7b640)) == (local_158 == DAT_00c7b640)) ||
         ((NAN(local_154) || NAN(DAT_00c7b644)) == (local_154 == DAT_00c7b644))) {
        FUN_00a0ffc0();
        piVar7 = (int *)((uint)(local_154 * (float)param_1[0xd9] + (float)param_1[0xd8] * local_158)
                        ^ DAT_00bacb70);
        if ((float)piVar7 <= (float)DAT_00baa08c) {
          piVar7 = DAT_00baa08c;
        }
        if ((float)DAT_00baa454 <= (float)piVar7) {
          piVar7 = DAT_00baa454;
        }
        param_1[0xd9] =
             (int)((float)piVar7 * local_154 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xd8] =
             (int)((float)piVar7 * local_158 * (float)param_1[0xe7] + (float)param_1[0xd8]);
      }
    }
    puVar4 = puStack_20;
    if ((param_1[0xef] != 0) && (*(char *)(param_1[0xef] + 0x173) != '\0')) {
      uVar6 = FUN_00435c70();
      (**(code **)(*param_1 + 0x24))(uVar6);
      puVar4 = puStack_20;
    }
    goto LAB_004830b2;
  }
  puStack_20 = &stack0xfffffffc;
  if (((0 < param_1[0x2f0]) && (puStack_20 = &stack0xfffffffc, (param_1[0x5a] & 0x4000U) == 0)) &&
     (puStack_20 = &stack0xfffffffc, cVar5 = FUN_006fd350(local_24), cVar5 == '\0')) {
    uVar15 = *(uint *)(iVar11 + 0x264f8) & 0x80000003;
    bVar16 = uVar15 == 0;
    if ((int)uVar15 < 0) {
      bVar16 = (uVar15 - 1 | 0xfffffffc) == 0xffffffff;
    }
    if (bVar16) {
      param_1[0x2f0] = 0;
      FUN_006d0c60(local_184,0x104,10);
      uVar15 = 0;
      if (local_178 != 0) {
        do {
          if (*(int **)(*(int *)(local_180 + uVar15 * 4) + 0x3bc) == param_1) {
            param_1[0x2f0] = param_1[0x2f0] + 1;
          }
          uVar15 = uVar15 + 1;
        } while (uVar15 < local_178);
      }
      if (local_184[0] == '\0') {
        local_14 = 0;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
      }
    }
  }
  iVar8 = param_1[0x2d9];
  if (((iVar8 == 4) || (iVar8 == 0x10)) && (DAT_00ba9fe4 < (float)param_1[5])) {
    if ((iVar8 == 4) && (0 < param_1[0x2f0])) {
      local_50 = param_1[0x3c];
      iStack_4c = param_1[0x3d];
      iStack_48 = param_1[0x3e];
      local_28 = param_1[0x46];
      local_40 = *(undefined (*) [16])(param_1 + 0x40);
      local_30 = *(undefined8 *)(param_1 + 0x44);
      uStack_44 = 0x3e4ccccd;
      (**(code **)(*param_1 + 0x3c))(&local_50,10,1,0,1);
    }
    param_1[3] = param_1[2];
    param_1[5] = 0;
    param_1[6] = 0;
    param_1[7] = 0;
  }
  iVar8 = param_1[0x2d9];
  local_168 = DAT_00baa454;
  if (iVar8 == 4) {
    if (param_1[0x2f0] < 1) {
      param_1[0x5a] = param_1[0x5a] & 0xffffffef;
      param_1[0x5b] = param_1[0x5b];
      FUN_0040a380("AngrySkin",0);
      FUN_006d6ba0(300,0x3f800000,600,0,0x3f800000);
      if (param_1[0x1f] == 0) {
        iVar8 = 0;
      }
      else {
        iVar8 = *(int *)(param_1[0x1f] + 0x30);
      }
      uVar15 = 0;
      local_170 = (int *)((float)param_1[0x22] / (float)iVar8);
      local_15c = (int *)((float)local_170 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0);
      if (param_1[0x32] != 0) {
        do {
          iVar8 = FUN_0040b220(uVar15);
          uVar15 = uVar15 + 1;
          *(int **)(iVar8 + 0x54) = local_15c;
        } while (uVar15 < (uint)param_1[0x32]);
      }
      iVar8 = DAT_00c71678;
      param_1[0xd0] =
           (int)(((*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18) + DAT_00baa87c) -
                 (float)param_1[0xd0]) * (float)local_170 + (float)param_1[0xd0]);
      if ((((param_1[0x5b] & 0x10000000U) == 0) ||
          ((*(byte *)(*(int *)(*(int *)(iVar8 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
         ((param_1[0x1f] == 0 || (*(char *)(param_1 + 0x23) == '\0')))) {
        FUN_0040a380(&DAT_00b1e588,0);
        FUN_006d6ba0(0x13a,0x3f800000,2,0,0x3f800000);
        iVar8 = DAT_00c71678;
        param_1[0x2d9] = 0x10;
        *(undefined *)(iVar8 + 0x22ea0) = 1;
      }
      param_1[0xdb] = (int)((float)param_1[0xdb] * (float)DAT_00baa2d0);
    }
    else {
      FUN_0040a380("IdleSkin",0);
      FUN_007e6650(0);
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
      uVar15 = FUN_006eef60();
      if ((uVar15 % 100 == 0) && (cVar5 = FUN_0092e560(0x3e6), cVar5 == '\0')) {
        FUN_006d6ba0(0x3e5,0x3f800000,100,0,0x3f800000);
      }
    }
  }
  else if (iVar8 == 0x10) {
    uVar15 = 0;
    if (param_1[0x32] != 0) {
      do {
        iVar8 = FUN_0040b220(uVar15);
        uVar15 = uVar15 + 1;
        *(undefined4 *)(iVar8 + 0x54) = 0x3f800000;
      } while (uVar15 < (uint)param_1[0x32]);
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x104] = 0;
      param_1[0x62] = 2;
    }
  }
  else if (iVar8 == 3) {
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380("IdleNoSkin",0);
    }
    pfVar10 = (float *)FUN_006bec40(&local_158,0);
    local_170 = (int *)(*pfVar10 - (float)param_1[0xcf]);
    if (((float)((uint)(pfVar10[1] - (float)param_1[0xd0]) & DAT_00bacb40) < DAT_00baa904) &&
       (uVar15 = FUN_006eef60(), uVar15 % 0x28 == 0)) {
      uVar15 = param_1[0xd8] & DAT_00bacb40;
      if (0.0 <= (float)local_170) {
        param_1[0xcd] = param_1[0xcd] & DAT_00bacb40;
        param_1[0xd8] = uVar15;
        iVar8 = FUN_006eef60();
        fVar17 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa784 + DAT_00baa81c + (float)param_1[0xd8];
      }
      else {
        uVar15 = uVar15 ^ DAT_00bacb70;
        param_1[0xcd] = param_1[0xcd] & DAT_00bacb40 ^ DAT_00bacb70;
        param_1[0xd8] = uVar15;
        iVar8 = FUN_006eef60();
        fVar17 = (float)param_1[0xd8] -
                 ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa784 + DAT_00baa81c);
      }
      param_1[0xd8] = (int)fVar17;
      cVar5 = FUN_0040a4d0("AngryNoSkin");
      if (cVar5 == '\0') {
        FUN_0040a380("AngryNoSkin",0);
        FUN_006d6ba0(0x3e3,0x3f800000,2,0,0x3f800000);
      }
    }
    cVar5 = FUN_00417430(0,0x10000000);
    if ((((cVar5 == '\0') ||
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
        (iVar8 = param_1[0x104], param_1[0x104] = iVar8 + 1, 0x3c < iVar8)) &&
       (uVar15 = FUN_006eef60(), uVar15 % 0x3c == 0)) {
      uVar15 = FUN_006eef60();
      if ((uVar15 & 1) == 0) {
        param_1[0x2d9] = 8;
        param_1[0x2ee] = 0;
      }
      else {
        param_1[0x2d9] = 9;
        if (param_1[0xc] != 1) {
          if (param_1[0xc] == 2) {
            uVar6 = FUN_004238f0(0x3f4ccccd);
            local_158 = DAT_00baa6b0;
            FUN_0041d540();
            local_154 = DAT_00baa6b0;
            FUN_0041d520();
            local_164 = 0.0;
            local_160 = -46.0;
            FUN_0060b890(&local_158,0x12,uVar6,0x40800000);
            uVar6 = FUN_004238f0(0x3f4ccccd);
            fVar17 = DAT_00baa398;
            FUN_0041d540();
            local_158 = fVar17;
            fVar17 = DAT_00baa398;
            FUN_0041d520();
            local_154 = fVar17;
            local_160 = -46.0;
          }
          else {
            uVar6 = FUN_004238f0(0x3f4ccccd);
            local_158 = DAT_00baa54c;
            FUN_0041d540();
            local_154 = DAT_00baa54c;
            FUN_0041d520();
            local_160 = -28.0;
          }
          local_164 = 0.0;
          FUN_0060b890(&local_158,0x12,uVar6,0x40800000);
        }
      }
    }
  }
  iVar8 = param_1[0x2d9];
  if (iVar8 == 8) {
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 == (byte **)0x0) {
LAB_00481ef3:
      cVar5 = FUN_0040a5d0("SpitNoSkin",1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar9 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar9 = (byte **)*ppbVar2;
      }
      pcVar14 = "SpitNoSkin";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_00481ed5:
          uVar15 = -(uint)bVar16 | 1;
          goto LAB_00481eda;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_00481ed5;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar15 = 0;
LAB_00481eda:
      if ((uVar15 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00481ef3;
    }
    if (param_1[0xc] == 2) {
      if ((((param_1[0x1f] != 0) && (cVar5 = FUN_0040ae70("Shoot"), cVar5 != '\0')) &&
          ((param_1[0x1f] == 0 || (cVar5 = FUN_0040ae70(&DAT_00b1d6f4), cVar5 == '\0')))) &&
         (cVar5 = FUN_006ac710(2,0), cVar5 != '\0')) {
        AI_0043ef30();
        local_144 = 0xbdcccccd;
        cVar5 = FUN_006ac710(4,0);
        piVar7 = DAT_00baad50;
        if (cVar5 != '\0') {
          piVar7 = DAT_00baa454;
        }
        local_15c = (int *)((float)param_1[0x2ee] * (float)DAT_00baa2d0 * (float)piVar7 +
                           (float)DAT_00baa2d0);
        pfVar10 = (float *)FUN_006bec40(&local_164,0);
        local_158 = *pfVar10 - (float)param_1[0xcf];
        local_154 = pfVar10[1] - (float)param_1[0xd0];
        FUN_00a10100(&local_164,0x41200000);
        local_15c = (int *)(((float)local_15c * DAT_00baaa00 - DAT_00baa950) * DAT_00baa088);
        piVar7 = local_15c;
        FUN_0041d540();
        local_170 = piVar7;
        piVar7 = local_15c;
        FUN_0041d520();
        local_158 = (float)local_170 * local_164 - local_160 * (float)piVar7;
        local_154 = (float)piVar7 * local_164 + local_160 * (float)local_170;
        local_164 = (float)param_1[0xcf] + (float)param_1[0xd8];
        local_160 = (float)param_1[0xd0] + (float)param_1[0xd9];
        FUN_006cb2e0(&local_164,&local_158,0,local_150);
        FUN_006d6ba0(0x132,0x3f800000,2,0,0x3f800000);
        param_1[0x2ee] = (int)((float)param_1[0x2ee] + DAT_00baa13c);
      }
    }
    else if ((param_1[0x1f] != 0) && (cVar5 = FUN_0040add0("Shoot"), cVar5 != '\0')) {
      uVar6 = AI_0043ef30();
      local_164 = (float)param_1[0xd8] + (float)param_1[0xcf];
      local_158 = 0.0;
      local_160 = (float)param_1[0xd9] + (float)param_1[0xd0];
      local_154 = 10.0;
      FUN_006cb2e0(&local_164,&local_158,5,uVar6);
      FUN_006d6ba0(0x132,0x3f800000,2,0,0x3f800000);
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) {
      iVar8 = param_1[0x2d9];
      goto LAB_004821f1;
    }
LAB_004827f0:
    param_1[0x2d9] = 3;
    param_1[0x104] = 0;
LAB_004826bb:
    piVar7 = DAT_00baa2d0;
    param_1[0xd8] = (int)((float)param_1[0xe7] * (float)param_1[0xcd] + (float)param_1[0xd8]);
    param_1[0xd9] = (int)((float)param_1[0xce] * (float)param_1[0xe7] + (float)param_1[0xd9]);
    if ((*(char *)(param_1 + 100) != '\0') &&
       ((float)piVar7 < (float)(param_1[0x67] & DAT_00bacb40))) {
      fVar17 = (float)(param_1[0xcd] ^ DAT_00bacb70);
      fVar18 = (float)(param_1[0xce] ^ DAT_00bacb70);
      param_1[0xcd] = (int)fVar17;
      fVar17 = fVar17 * DAT_00baa854;
      param_1[0xce] = (int)fVar18;
      fVar18 = fVar18 * DAT_00baa854;
      param_1[0xd8] = (int)(fVar17 + (float)param_1[0xd8]);
      param_1[0xd9] = (int)(fVar18 + (float)param_1[0xd9]);
      piVar7 = DAT_00baa2d0;
    }
  }
  else {
LAB_004821f1:
    if (iVar8 == 9) {
      ppbVar2 = (byte **)param_1[0x1f];
      if (ppbVar2 == (byte **)0x0) {
LAB_0048224e:
        cVar5 = FUN_0040a5d0("LaserNoSkin",1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar9 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar9 = (byte **)*ppbVar2;
        }
        pcVar14 = "LaserNoSkin";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar16 = bVar1 < (byte)*pcVar14;
          if (bVar1 != *pcVar14) {
LAB_00482230:
            uVar15 = -(uint)bVar16 | 1;
            goto LAB_00482235;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar16 = bVar1 < ((byte *)pcVar14)[1];
          if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_00482230;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar14 = (char *)((byte *)pcVar14 + 2);
        } while (bVar1 != 0);
        uVar15 = 0;
LAB_00482235:
        if ((uVar15 != 0) ||
           ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_0048224e;
      }
      if (param_1[0x1f] == 0) goto LAB_004827f0;
      cVar5 = FUN_0040add0("Shoot");
      if (cVar5 != '\0') {
        if (param_1[0xc] == 1) {
          local_15c = (int *)0x2;
          if ((param_1[0x5b] & 0x10000000U) == 0) {
LAB_00482300:
            iVar8 = FUN_006be840();
            pfVar10 = (float *)(param_1 + 0xcf);
            local_158 = (*(float *)(iVar8 + 0x33c) - *pfVar10) * (float)DAT_00baa2d0 + *pfVar10;
            local_154 = (*(float *)(iVar8 + 0x340) - (float)param_1[0xd0]) * (float)DAT_00baa2d0 +
                        (float)param_1[0xd0];
            puVar13 = (undefined4 *)FUN_00813520(local_1b8,&local_158,0,0,0,0);
            param_1 = local_16c;
            FUN_006c2750(pfVar10,local_16c,*puVar13,puVar13[1],0,0xc2480000);
          }
          else {
            iVar8 = FUN_006ac7e0(0x5e,0,param_1[0x5b] & 0x10000000U,0);
            iVar11 = FUN_006ac7e0(0x55,0,extraout_ECX,0);
            iVar12 = FUN_006ac7e0(0x32e,0,extraout_ECX_00,0);
            iVar12 = ((3 - iVar8) - iVar11) - iVar12;
            if ((2 < iVar12) || (local_15c = (int *)iVar12, 0 < iVar12)) goto LAB_00482300;
          }
          if ((1 < (int)local_15c) &&
             (uVar15 = FUN_006eef60(), piVar7 = local_16c, (uVar15 & 1) == 0)) {
            iVar8 = FUN_006be840();
            local_15c = *(int **)(iVar8 + 0x33c);
            local_154 = *(float *)(iVar8 + 0x340);
            local_170 = (int *)piVar7[0xcf];
            local_160 = (float)piVar7[0xd0];
            pfVar10 = (float *)FUN_0067f070(local_1c0);
            iVar8 = FUN_006eef60();
            fVar17 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa924;
            local_174 = ((float)local_15c - (float)local_170) * (float)DAT_00baa2d0 +
                        (float)local_170 + fVar17 * *pfVar10;
            local_170 = (int *)((local_154 - local_160) * (float)DAT_00baa2d0 + local_160 +
                               fVar17 * pfVar10[1]);
            FUN_00812f50(&local_158,&local_174,0,0,0);
            puVar13 = (undefined4 *)FUN_00813520(local_17c,&local_158,0,0,0,0);
            param_1 = local_16c;
            FUN_006c2750(local_16c + 0xcf,local_16c,*puVar13,puVar13[1],0,0xc2480000);
          }
        }
        else {
          local_158 = 0.0;
          local_154 = -50.0;
          if (param_1[0xc] == 2) {
            iVar8 = 2;
            local_15c = (int *)DAT_00baaa24;
            do {
              piVar7 = (int *)FUN_0096f310(1,param_1 + 0xcf,local_15c,10,&local_158,param_1,0);
              piVar7[0xd6] = 0x453b8000;
              iVar3 = DAT_00c34b8c;
              iVar12 = DAT_00c34b88;
              iVar11 = DAT_00c34b84;
              piVar7[0x10a] = DAT_00c34b80;
              piVar7[0x10b] = iVar11;
              piVar7[0x10c] = iVar12;
              piVar7[0x10d] = iVar3;
              (**(code **)(*piVar7 + 0xc))();
              local_15c = (int *)((float)local_15c - DAT_00baa9b4);
              iVar8 = iVar8 + -1;
            } while (iVar8 != 0);
          }
          else {
            piVar7 = (int *)FUN_0096f310(1,param_1 + 0xcf,0x42b40000,10,&local_158,param_1,0);
            piVar7[0xd6] = 0x453b8000;
            (**(code **)(*piVar7 + 0xc))();
          }
        }
        local_15c = DAT_00baa454;
        piVar7 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (piVar7 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_15c = piVar7;
        }
        local_16c = (int *)0x131;
        FUN_00956780();
        FUN_0092dc30(local_16c,0x3f800000,2,0,local_15c,0);
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_004827f0;
      iVar8 = param_1[0x2d9];
    }
    if (((iVar8 == 3) || (iVar8 == 8)) || (piVar7 = DAT_00baa2d0, iVar8 == 9)) goto LAB_004826bb;
  }
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa428);
  if (param_1[0x2d9] != 4) {
    param_1[0xd0] = (int)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18) + DAT_00baa8d0);
  }
  puVar4 = puStack_20;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (param_1[0x319] == 0x12) {
      local_168 = DAT_00baa528;
    }
    else if (param_1[0x319] == 0x13) {
      local_168 = piVar7;
    }
    local_15c = (int *)0x3e4;
    FUN_00956780();
    FUN_0092dc30(local_15c,0x3f800000,2,0,local_168,0);
    puVar4 = puStack_20;
  }
LAB_004830b2:
  puStack_20 = puVar4;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

