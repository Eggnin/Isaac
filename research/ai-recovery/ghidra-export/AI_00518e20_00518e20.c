/* Local J460 decompiler output.
 * VA: 0x00518e20
 * Entry: 00518e20
 * Dispatcher: 0x006c2990
 * Types: 91,229,230,253
 * Identities: 229.0.0,229.1.0,230.0.0,253.0.0,91.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0051aaa0; instructions=1561
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=91,229,230,253;
   identities=229.0.0,229.1.0,230.0.0,253.0.0,91.0.0; dispatcher=0x006c2990; end=0x0051aaa0;
   instructions=1561 */

void __fastcall AI_00518e20(int *param_1)

{
  code *pcVar1;
  int iVar2;
  int *piVar3;
  undefined *puVar4;
  char cVar5;
  int iVar6;
  undefined4 *puVar7;
  int **ppiVar8;
  undefined4 uVar9;
  uint uVar10;
  float *pfVar11;
  int *extraout_ECX;
  undefined8 *puVar12;
  undefined4 ****ppppuVar13;
  uint uVar14;
  undefined8 *puVar15;
  float fVar16;
  float fVar17;
  int *piVar18;
  int *piVar19;
  char *pcVar20;
  int *local_190;
  int *local_18c;
  float local_188;
  float local_184;
  undefined local_180 [4];
  int *local_17c;
  float local_178;
  float local_174;
  int *local_170;
  int local_16c;
  int *local_168;
  uint local_164;
  float local_160;
  int *local_15c [2];
  int *local_154;
  char local_14d;
  int *local_14c;
  int *local_148;
  char local_141;
  undefined local_140 [88];
  uint local_e8;
  undefined4 local_e4;
  int local_d8;
  int local_d4;
  uint local_98 [4];
  undefined4 local_88;
  uint local_84;
  undefined8 local_80;
  char local_78;
  undefined local_77;
  undefined4 local_70;
  uint local_6c;
  undefined4 ****local_68;
  undefined2 local_64;
  char local_62;
  undefined local_61;
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  float fStack_44;
  undefined local_40 [5];
  undefined auStack_3b [7];
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4442;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_154 = (int *)0x0;
  local_164 = 0;
  if ((param_1[10] != 0xe5) || (local_141 = '\x01', param_1[0xb] != 1)) {
    local_141 = '\0';
  }
  local_15c[0] = (int *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_168 = param_1;
  if ((param_1[0x2dd] == 1) || (param_1[0x2dd] == 2)) {
    iVar6 = param_1[0x300];
    if (iVar6 != 0) {
      while (*(int *)(*(int *)(param_1[0x2fd] +
                              ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4) +
                     (param_1[0x2ff] & 3U) * 4) == 0) {
        iVar6 = iVar6 + -1;
        param_1[0x300] = iVar6;
        if (iVar6 == 0) goto LAB_0051a9d4;
        param_1[0x2ff] = param_1[0x2ff] + 1;
      }
      do {
        uVar10 = (param_1[0x2ff] + param_1[0x300]) - 1;
        if (*(int *)(*(int *)(param_1[0x2fd] + (uVar10 >> 2 & param_1[0x2fe] - 1U) * 4) +
                    (uVar10 & 3) * 4) != 0) goto LAB_0051a9de;
        iVar6 = param_1[0x300] + -1;
        param_1[0x300] = iVar6;
      } while (iVar6 != 0);
LAB_0051a9d4:
      param_1[0x2ff] = 0;
    }
LAB_0051a9de:
    local_15c[0] = (int *)param_1[0x2fc];
    for (uVar10 = param_1[0x2ff]; uVar10 != param_1[0x2ff] + param_1[0x300]; uVar10 = uVar10 + 1) {
      if (local_15c[0] == (int *)0x0) {
        iVar6 = 0;
      }
      else {
        iVar6 = *local_15c[0];
      }
      iVar6 = *(int *)(*(int *)(*(int *)(iVar6 + 4) + (uVar10 >> 2 & *(int *)(iVar6 + 8) - 1U) * 4)
                      + (uVar10 & 3) * 4);
      if (((iVar6 != 0) && (*(int *)(iVar6 + 0x28) == 9)) &&
         (*(char *)((int)param_1 + 0x173) != '\0')) {
        *(uint *)(iVar6 + 0x43c) = *(uint *)(iVar6 + 0x43c) & 0xfeffffff;
        *(undefined4 *)(iVar6 + 0x438) = *(undefined4 *)(iVar6 + 0x438);
        *(undefined4 *)(iVar6 + 0x418) = 0xbd23d70a;
        *(undefined4 *)(iVar6 + 0x430) = 0;
      }
    }
    puVar4 = &stack0xfffffffc;
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      FUN_006d81c0(local_24);
      puVar4 = puStack_20;
    }
    goto LAB_0051aa79;
  }
  if (param_1[0x2d9] != 0) {
    param_1[0xdb] = (int)((float)param_1[0xdb] * _DAT_00baa384);
    puStack_20 = &stack0xfffffffc;
    iVar6 = FUN_006be840();
    pfVar11 = (float *)(param_1 + 0xcf);
    local_178 = *(float *)(iVar6 + 0x340) - (float)param_1[0xd0];
    local_154 = (int *)(*(float *)(iVar6 + 0x33c) - *pfVar11);
    local_14c = (int *)0x0;
    local_148 = (int *)0x0;
    local_17c = (int *)0x0;
    if (local_141 == '\0') {
LAB_00519079:
      local_14d = '\0';
    }
    else {
      cVar5 = FUN_006d8260(9);
      local_14d = '\x01';
      if (cVar5 == '\0') goto LAB_00519079;
    }
    if (param_1[0x3c7] != -1) {
      ppiVar8 = (int **)FUN_006d85a0(&local_174);
      local_17c = *ppiVar8;
      local_148 = ppiVar8[1];
      if ((local_141 != '\0') && (cVar5 = FUN_006d8260(9), cVar5 != '\0')) {
        local_17c = local_14c;
        local_148 = DAT_00baa454;
      }
      local_154 = (int *)((float)local_17c * DAT_00baa9d0);
      local_178 = (float)local_148 * DAT_00baa9d0;
    }
    local_184 = ((float)DAT_00baa454 - (float)param_1[0xe0] / (float)param_1[0xe1]) * DAT_00baa120;
    iVar6 = FUN_006ac760();
    if (((iVar6 == 0) &&
        ((NAN((float)local_17c) || NAN(DAT_00c7b640)) != ((float)local_17c == DAT_00c7b640))) &&
       ((NAN((float)local_148) || NAN((float)DAT_00c7b644)) !=
        ((float)local_148 == (float)DAT_00c7b644))) {
      if (param_1[0x104] == 0) {
        *(bool *)(param_1 + 0x52) =
             (float)param_1[0xd8] <= (float)local_14c && (float)local_14c != (float)param_1[0xd8];
      }
    }
    else {
      if (((local_141 != '\0') && ((uint)param_1[0x300] < 3)) &&
         (uVar10 = FUN_006eef60(), uVar10 % 10 == 0)) {
        local_184 = local_184 + DAT_00baa120;
      }
      if (param_1[10] == 0x5b) {
        fVar16 = (float)DAT_00baa454 - local_184 * DAT_00baa75c;
        param_1[0x57] = (int)(fVar16 * *(float *)(param_1[0xcc] + 0x24));
        local_18c = (int *)(fVar16 * DAT_00c3793c);
        local_170 = (int *)(fVar16 * DAT_00c37940);
        iVar6 = FUN_0040b220(1);
        *(int **)(iVar6 + 0x34) = local_18c;
        *(int **)(iVar6 + 0x38) = local_170;
      }
      piVar18 = local_168;
      if ((((((param_1[0x3c7] == -1) ||
             ((NAN((float)local_17c) || NAN(DAT_00c7b640)) == ((float)local_17c == DAT_00c7b640)))
            || ((NAN((float)local_148) || NAN((float)DAT_00c7b644)) ==
                ((float)local_148 == (float)DAT_00c7b644))) &&
           ((float)param_1[0x2ec] <= local_184 * DAT_00baa9d0 &&
            local_184 * DAT_00baa9d0 != (float)param_1[0x2ec])) || (local_14d != '\0')) &&
         (param_1[0x2e8] == 0)) {
        if ((param_1[0x1f] != 0) && (*(char *)(param_1[0x1f] + 0x34) != '\0')) {
          param_1[0x2ec] = (int)((float)param_1[0x2ec] + (float)DAT_00baa454);
        }
        iVar6 = param_1[10];
        if (iVar6 == 0x5b) {
          FUN_0040a380("Attack",0);
        }
        else if (((iVar6 == 0xe5) || (iVar6 == 0xfd)) || (iVar6 == 0xe6)) {
          if (local_141 == '\0') {
            pcVar20 = "ShootUp";
            piVar18 = param_1;
            if ((float)local_14c <= local_178) {
              pcVar20 = "ShootDown";
            }
          }
          else {
            local_170 = (int *)param_1[0x2fc];
            piVar19 = (int *)param_1[0x2ff];
            local_18c = (int *)(param_1[0x300] + (int)piVar19);
            local_148 = (int *)0x0;
            piVar3 = local_148;
            while (local_148 = piVar3, piVar19 != local_18c) {
              if (local_170 == (int *)0x0) {
                iVar6 = 0;
              }
              else {
                iVar6 = *local_170;
              }
              iVar6 = *(int *)(*(int *)(*(int *)(iVar6 + 4) +
                                       ((uint)piVar19 >> 2 & *(int *)(iVar6 + 8) - 1U) * 4) +
                              ((uint)piVar19 & 3) * 4);
              if ((iVar6 == 0) || (*(int *)(iVar6 + 0x28) != 9)) {
                iVar6 = 0;
              }
              piVar19 = (int *)((int)piVar19 + 1);
              piVar3 = (int *)((int)local_148 + 1);
              if (iVar6 == 0) {
                piVar3 = local_148;
              }
            }
            cVar5 = local_14d;
            if (local_168[0x3c7] == -1) {
              if (((int)local_148 < 3) ||
                 (((uVar10 = FUN_006eef60(), uVar10 % 3 != 0 && ((int)local_148 < 6)) &&
                  (local_184 <= DAT_00baa0d0)))) {
                cVar5 = '\0';
              }
              else {
                cVar5 = '\x01';
              }
            }
            pfVar11 = (float *)(piVar18 + 0xcf);
            pcVar20 = "Shoot";
            if (cVar5 != '\0') {
              pcVar20 = "Blow";
            }
          }
          FUN_0040a380(pcVar20,0);
          piVar18[0xcd] = (int)local_154;
          piVar18[0xce] = (int)local_178;
          param_1 = piVar18;
        }
        *(bool *)(param_1 + 0x52) = (float)local_154 < (float)local_14c;
        if (param_1[0x3c7] == -1) {
          param_1[0x3c8] = (int)DAT_00c7b640;
          piVar18 = DAT_00c7b644;
        }
        else {
          FUN_006d85a0(&local_16c);
          param_1[0x3c8] = local_16c;
          piVar18 = local_168;
        }
        param_1[0x3c9] = (int)piVar18;
      }
    }
    if (((param_1[10] == 0x5b) && (param_1[0x1f] != 0)) &&
       (cVar5 = FUN_0040add0("Shoot"), cVar5 != '\0')) {
      FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
      local_148 = DAT_00baa454;
      if (*(char *)(param_1 + 0x52) != '\0') {
        local_148 = DAT_00baad50;
      }
      iVar6 = FUN_006eef60();
      local_168 = (int *)(((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088);
      piVar18 = local_168;
      FUN_0041d540();
      local_170 = piVar18;
      FUN_0041d520();
      fVar16 = (float)local_148 * (float)local_168;
      local_168 = (int *)((float)local_148 * (float)local_170 - (float)local_168 * (float)local_14c)
      ;
      local_148 = (int *)(fVar16 + (float)local_170 * (float)local_14c);
      iVar6 = FUN_006eef60();
      fVar16 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa6fc + DAT_00baa6fc;
      local_18c = (int *)(fVar16 * (float)local_148);
      local_190 = (int *)(fVar16 * (float)local_168);
      local_170 = local_18c;
      local_168 = local_190;
      uVar9 = FUN_006eef60();
      local_188 = *pfVar11 + (float)local_14c;
      local_184 = pfVar11[1] - DAT_00baa8e8;
      local_148 = (int *)FUN_00428b20(1000,0x3b,&local_188,&local_190,param_1,0,uVar9);
      local_17c = DAT_00baa454;
      if (((float)local_148[0xcf] - *pfVar11) * (float)local_170 +
          ((float)local_148[0xd0] - pfVar11[1]) * (float)((uint)local_168 ^ DAT_00bacb70) <
          (float)local_14c) {
        local_17c = DAT_00baad50;
      }
      iVar6 = FUN_006eef60();
      piVar18 = local_148;
      local_148[0x11d] =
           (int)(((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa81c + DAT_00baa630) * (float)local_17c);
      uVar10 = FUN_006eef60();
      iVar6 = uVar10 % 0xf + 0xf;
      piVar18[0x117] = iVar6;
      piVar18[0x118] = iVar6;
      pcVar1 = *(code **)(*piVar18 + 0x3c);
      iVar6 = FUN_006eef60();
      local_50 = 0x3f800000;
      uStack_4c = 0x3f800000;
      uStack_48 = 0x3f800000;
      local_30 = 0;
      local_2c = 0;
      local_28 = 0;
      _local_40 = ZEXT816(0);
      fStack_44 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa2d0 + DAT_00baa198;
      (*pcVar1)(&local_50,0xffffffff,0xff,0,1);
      (**(code **)(*local_148 + 0xc))();
      if (param_1[0x3c7] == -1) {
        fVar16 = (float)param_1[0x2ed];
      }
      else {
        fVar16 = (float)param_1[0x2ec] - DAT_00baa120;
        param_1[0x2ed] = (int)fVar16;
      }
      if (fVar16 < (float)param_1[0x2ec]) {
        do {
          iVar6 = FUN_006eef60();
          local_168 = (int *)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                              DAT_00ba9ff4 + (float)DAT_00baa454 + (float)param_1[0x2ed]);
          param_1[0x2ed] = (int)local_168;
          iVar6 = FUN_006d6c20();
          piVar18 = local_168;
          if (iVar6 < 7) {
            iVar6 = FUN_006eef60();
            fVar16 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa708;
            fVar16 = fVar16 + fVar16;
            FUN_0041d540();
            local_174 = (float)local_154 * DAT_00baa120 + fVar16 * DAT_00baa81c;
            iVar6 = FUN_006eef60();
            fVar16 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa708;
            fVar16 = fVar16 + fVar16;
            FUN_0041d520();
            local_170 = (int *)(local_178 * DAT_00baa120 + fVar16 * DAT_00baa81c);
            uVar9 = FUN_006eef60();
            FUN_00428b20(0xe,0,param_1 + 0xcf,&local_174,param_1,0,uVar9);
            piVar18 = (int *)param_1[0x2ed];
          }
        } while ((float)piVar18 < (float)param_1[0x2ec]);
      }
    }
    if (param_1[0x3c7] != -1) {
      if (DAT_00baad74 < (float)param_1[0x2ec]) {
        local_170 = (int *)0xc0000000;
        local_168 = (int *)((float)param_1[0x2ec] - (float)param_1[0xe7] / DAT_00baa950);
        ppiVar8 = &local_168;
        if ((float)local_168 <= DAT_00baad74) {
          ppiVar8 = &local_170;
        }
        param_1[0x2ec] = (int)*ppiVar8;
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1[0x1f] + 0x34) == '\0')) {
        FUN_006d9050(0);
        cVar5 = FUN_00a10630(&DAT_00c7b640);
        if (cVar5 != '\0') {
          param_1[0xcd] = *extraout_ECX;
          param_1[0xce] = extraout_ECX[1];
        }
      }
    }
    iVar6 = param_1[10];
    if (iVar6 == 0x5b) {
      uVar10 = FUN_006eef60();
      if (((uVar10 % 100 == 0) && (iVar6 = FUN_006d6c20(), iVar6 < 10)) &&
         (cVar5 = FUN_00417430(0x1000800,0), cVar5 == '\0')) {
        iVar6 = FUN_006eef60();
        fVar16 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa708;
        fVar16 = fVar16 + fVar16;
        FUN_0041d520();
        local_168 = (int *)(fVar16 * DAT_00baa81c);
        iVar6 = FUN_006eef60();
        fVar16 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa708;
        fVar16 = fVar16 + fVar16;
        FUN_0041d540();
        local_174 = fVar16 * DAT_00baa81c;
        local_170 = local_168;
        uVar9 = FUN_006eef60();
        iVar6 = FUN_00428b20(0x12,0,param_1 + 0xcf,&local_174,param_1,0,uVar9);
        *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb;
        *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
      }
    }
    else if ((((iVar6 == 0xe5) || (iVar6 == 0xfd)) || (iVar6 == 0xe6)) &&
            ((param_1[0x3c7] == -1 &&
             (((uVar10 = FUN_006eef60(), uVar10 % 100 == 0 ||
               (((local_141 != '\0' && ((uint)param_1[0x300] < 5)) &&
                (uVar10 = FUN_006eef60(), uVar10 % 0x28 == 0)))) &&
              ((cVar5 = FUN_00417430(0x1000a00,0), cVar5 == '\0' && (param_1[0x2e8] == 0)))))))) {
      if (local_141 == '\0') {
        pcVar20 = "ShootUp";
        if ((float)local_14c <= local_178) {
          pcVar20 = "ShootDown";
        }
      }
      else {
        pcVar20 = "Shoot";
      }
      FUN_0040a380(pcVar20,0);
      param_1[0xce] = (int)local_178;
      param_1[0xcd] = (int)local_154;
      *(bool *)(param_1 + 0x52) = (float)local_154 < (float)local_14c;
    }
    piVar18 = param_1 + 0xcf;
    param_1[0x104] = param_1[0x104] + (int)local_15c[0];
    if ((float)local_14c < (float)param_1[0x2ee]) {
      param_1[0x2ee] = (int)((float)param_1[0x2ee] - (float)param_1[0xe7]);
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      iVar6 = param_1[10];
      if (iVar6 != 0x5b) goto LAB_00519d09;
      pcVar20 = "Idle";
LAB_00519d56:
      FUN_0040a380(pcVar20,0);
LAB_00519d5b:
      param_1[0x104] = 0;
    }
    else if ((((param_1[0x5a] & 0x1000a00U) != 0) && (param_1[10] != 0x5b)) &&
            (cVar5 = FUN_006ac710(0xf,param_1[8]), cVar5 != '\0')) {
      iVar6 = param_1[10];
LAB_00519d09:
      if (((iVar6 == 0xe5) || (iVar6 == 0xfd)) || (iVar6 == 0xe6)) {
        if (local_141 == '\0') {
          if ((float)local_14c <= local_178) {
            pcVar20 = "FloatDown";
          }
          else {
            pcVar20 = "FloatUp";
          }
        }
        else {
          pcVar20 = "Float";
        }
        goto LAB_00519d56;
      }
      goto LAB_00519d5b;
    }
    iVar6 = param_1[10];
    if (iVar6 == 0xe5) {
      if ((param_1[0x1f] != 0) && (cVar5 = FUN_0040add0("Shoot"), cVar5 != '\0')) {
        if (local_141 == '\0') {
          FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
          uVar9 = AI_0043ef30();
          local_160 = 10.0;
          local_15c[0] = (int *)0x40c00000;
          FUN_006cb2e0(piVar18,&local_160,9,uVar9);
        }
        else {
          cVar5 = FUN_0040a4d0(&DAT_00b60df0);
          if (cVar5 == '\0') {
            uVar10 = FUN_006eef60();
            piVar18 = (int *)((uVar10 & 1) + 1);
            local_148 = piVar18;
            iVar6 = FUN_006eef60();
            local_154 = (int *)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                                DAT_00ba9ff4 * DAT_00baab30);
            local_170 = (int *)(DAT_00baab30 / (float)(int)piVar18);
            AI_0043ef30();
            local_e8 = 0x3000;
            if ((*(byte *)(param_1 + 0xfb) & 1) == 0) {
              local_e8 = 0x2800;
            }
            local_d8 = param_1[0xcf];
            local_d4 = param_1[0xd0];
            local_e4 = 0x1000000;
            while (piVar18 != (int *)0x0) {
              piVar18 = (int *)((float)local_154 * DAT_00baa088);
              local_15c[0] = piVar18;
              FUN_0041d520();
              local_168 = piVar18;
              piVar18 = local_15c[0];
              FUN_0041d540();
              local_190 = (int *)((float)piVar18 * DAT_00baa7e8);
              local_18c = (int *)((float)local_168 * DAT_00baa7e8);
              iVar6 = FUN_006cb2e0(param_1 + 0xcf,&local_190,0,local_140);
              *(undefined4 *)(iVar6 + 0x430) = 0x42a00000;
              *(undefined4 *)(iVar6 + 0x414) = 0;
              *(undefined4 *)(iVar6 + 0x418) = 0xbdc28f5c;
              if (*(int *)(iVar6 + 0x3bc) != 0) {
                local_15c[0] = (int *)(iVar6 + 0x3bc);
                FUN_004cf210(local_15c);
              }
              *(int **)(iVar6 + 0x3bc) = param_1;
              FUN_004cdcf0((int **)(iVar6 + 0x3bc));
              local_15c[0] = (int *)0x0;
              FUN_004b6a90(local_15c);
              local_15c[0] = (int *)(param_1[0x2ff] + param_1[0x300]);
              uVar10 = (int)local_15c[0] - 1U & 3;
              iVar2 = *(int *)(param_1[0x2fd] +
                              (param_1[0x2fe] - 1U & (int)local_15c[0] - 1U >> 2) * 4);
              local_168 = (int *)(iVar2 + uVar10 * 4);
              if (*(int *)(iVar2 + uVar10 * 4) != 0) {
                local_15c[0] = local_168;
                FUN_004cf210(local_15c);
              }
              *local_168 = iVar6;
              FUN_004cdcf0(local_168);
              local_154 = (int *)((float)local_170 + (float)local_154);
              local_148 = (int *)((int)local_148 + -1);
              piVar18 = local_148;
            }
            uVar9 = FUN_00407170();
            local_160 = 0.0;
            local_15c[0] = (int *)0xc1900000;
            iVar6 = FUN_006d7cf0(&local_160,uVar9,&DAT_00c7b640);
            FUN_004564b0(param_1);
            *(undefined4 *)(iVar6 + 0x358) = 0xc1200000;
            FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
          }
          else {
            param_1[0x2ee] = 0x42700000;
            FUN_00704360(piVar18,0x42f00000,param_1,1,0);
            local_15c[0] = (int *)param_1[0x2fc];
            for (local_17c = (int *)param_1[0x2ff];
                local_17c != (int *)(param_1[0x300] + param_1[0x2ff]);
                local_17c = (int *)((int)local_17c + 1)) {
              if (local_15c[0] == (int *)0x0) {
                iVar6 = 0;
              }
              else {
                iVar6 = *local_15c[0];
              }
              iVar6 = *(int *)(*(int *)(*(int *)(iVar6 + 4) +
                                       ((uint)local_17c >> 2 & *(int *)(iVar6 + 8) - 1U) * 4) +
                              ((uint)local_17c & 3) * 4);
              if ((iVar6 != 0) && (*(int *)(iVar6 + 0x28) == 9)) {
                local_148 = *(int **)(iVar6 + 0x364);
                local_154 = *(int **)(iVar6 + 0x360);
                *(undefined4 *)(iVar6 + 0x430) = 0;
                *(undefined4 *)(iVar6 + 0x410) = 0xc1b80000;
                *(undefined4 *)(iVar6 + 0x414) = 0;
                *(undefined4 *)(iVar6 + 0x418) = 0xbdae147b;
                fVar17 = (float)local_148 * (float)local_148 + (float)local_154 * (float)local_154;
                FUN_00435a50();
                piVar18 = local_148;
                fVar16 = (float)local_154;
                if ((float)local_14c < fVar17) {
                  piVar18 = (int *)((float)local_148 * (DAT_00baa81c / fVar17));
                  fVar16 = (float)local_154 * (DAT_00baa81c / fVar17);
                }
                *(uint *)(iVar6 + 0x43c) = *(uint *)(iVar6 + 0x43c) & 0xfeffffff;
                *(float *)(iVar6 + 0x360) = fVar16;
                *(int **)(iVar6 + 0x364) = piVar18;
                *(undefined4 *)(iVar6 + 0x438) = *(undefined4 *)(iVar6 + 0x438);
              }
            }
            FUN_006d81c0();
          }
        }
      }
    }
    else if (iVar6 == 0xfd) {
      cVar5 = FUN_0040b030("Shoot");
      if (cVar5 != '\0') {
        FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
        AI_0043ef30();
        local_e8 = local_e8 | 1;
        local_160 = 10.0;
        local_15c[0] = (int *)0x40c00000;
        FUN_006cb2e0(piVar18,&local_160,9,local_140);
      }
    }
    else if (iVar6 == 0xe6) {
      if (0 < param_1[0x2e8]) {
        param_1[0x2e8] = param_1[0x2e8] + -1;
      }
      cVar5 = FUN_0040b030("Shoot");
      if ((cVar5 != '\0') && (cVar5 = FUN_00944a40(piVar18), cVar5 != '\0')) {
        pfVar11 = (float *)FUN_0040b1d0("ShootPos");
        fVar16 = (float)param_1[0xce];
        local_15c[0] = (int *)(pfVar11[1] / DAT_00baa324);
        local_160 = *pfVar11 / DAT_00baa324;
        FUN_00499d60();
        piVar18 = (int *)FUN_0096f310(2,piVar18,fVar16 * DAT_00baa948,3,&local_160,param_1,0);
        iVar6 = DAT_00baabfc;
        if (local_178 < (float)local_14c) {
          iVar6 = DAT_00baadc0;
        }
        piVar18[0xd6] = iVar6;
        (**(code **)(*piVar18 + 0xc))();
        param_1[0x2e8] = 0x3c;
      }
    }
    uVar10 = local_164;
    if (param_1[10] == 0xe6) {
      local_68 = (undefined4 ****)s_ShootUp_00b60d04._0_4_;
      local_64._0_1_ = s_ShootUp_00b60d04[4];
      local_64._1_1_ = s_ShootUp_00b60d04[5];
      local_54 = 0xf;
      local_58 = 7;
      local_62 = s_ShootUp_00b60d04[6];
      local_61 = 0;
      local_14 = 0;
      local_154 = (int *)(local_164 | 1);
      FUN_00452bf0(local_40 + 4);
      local_14 = 1;
      ppppuVar13 = &local_68;
      if (0xf < local_54) {
        ppppuVar13 = local_68;
      }
      local_164 = uVar10 | 3;
      cVar5 = FUN_0040cae0(ppppuVar13,7);
      uVar10 = uVar10 | 3;
      if (cVar5 == '\0') goto LAB_0051a432;
      puVar15 = (undefined8 *)local_80;
LAB_0051a4b1:
      local_14d = '\x01';
    }
    else {
LAB_0051a432:
      local_6c = 0xf;
      local_70 = 9;
      local_80._0_1_ = s_ShootDown_00b60cec[0];
      local_80._1_1_ = s_ShootDown_00b60cec[1];
      local_80._2_1_ = s_ShootDown_00b60cec[2];
      local_80._3_1_ = s_ShootDown_00b60cec[3];
      local_80._4_1_ = s_ShootDown_00b60cec[4];
      local_80._5_1_ = s_ShootDown_00b60cec[5];
      local_80._6_1_ = s_ShootDown_00b60cec[6];
      local_80._7_1_ = s_ShootDown_00b60cec[7];
      local_78 = s_ShootDown_00b60cec[8];
      local_77 = 0;
      local_14 = 2;
      local_154 = (int *)(uVar10 | 4);
      FUN_00452bf0(local_98);
      local_164 = uVar10 | 0xc;
      puVar15 = (undefined8 *)local_80;
      puVar12 = &local_80;
      if (0xf < local_6c) {
        puVar12 = (undefined8 *)local_80;
      }
      cVar5 = FUN_0040cae0(puVar12,9);
      local_14d = '\0';
      if (cVar5 != '\0') goto LAB_0051a4b1;
    }
    if ((local_164 & 8) != 0) {
      local_164 = local_164 & 0xfffffff7;
      if (0xf < local_84) {
        uVar14 = local_84 + 1;
        uVar10 = local_98[0];
        if (0xfff < uVar14) {
          uVar10 = *(uint *)(local_98[0] - 4);
          uVar14 = local_84 + 0x24;
          if (0x1f < (local_98[0] - uVar10) - 4) goto LAB_0051a5f7;
        }
        FUN_00aef15c(uVar10,uVar14);
      }
      local_88 = 0;
      local_84 = 0xf;
      local_98[0] = local_98[0] & 0xffffff00;
    }
    local_14 = 1;
    if (((local_164 & 4) != 0) && (local_164 = local_164 & 0xfffffffb, 0xf < local_6c)) {
      uVar10 = local_6c + 1;
      puVar12 = puVar15;
      if (0xfff < uVar10) {
        puVar12 = *(undefined8 **)((int)puVar15 + -4);
        uVar10 = local_6c + 0x24;
        if (0x1f < (uint)((int)puVar15 + (-4 - (int)puVar12))) goto LAB_0051a5f7;
      }
      FUN_00aef15c(puVar12,uVar10);
    }
    local_14 = 0;
    if ((local_164 & 2) != 0) {
      local_164 = local_164 & 0xfffffffd;
      if (0xf < local_28) {
        uVar10 = local_28 + 1;
        iVar6 = stack0xffffffc4;
        if (0xfff < uVar10) {
          iVar6 = *(int *)(stack0xffffffc4 + -4);
          uVar10 = local_28 + 0x24;
          if (0x1f < (stack0xffffffc4 - iVar6) - 4U) goto LAB_0051a5f7;
        }
        FUN_00aef15c(iVar6,uVar10);
      }
      local_2c = 0;
      local_28 = 0xf;
      local_40[4] = 0;
    }
    local_14 = 0xffffffff;
    if (((local_164 & 1) != 0) && (0xf < local_54)) {
      uVar10 = local_54 + 1;
      ppppuVar13 = local_68;
      if (0xfff < uVar10) {
        ppppuVar13 = (undefined4 ****)local_68[-1];
        uVar10 = local_54 + 0x24;
        if (0x1f < (uint)((int)local_68 + (-4 - (int)ppppuVar13))) {
LAB_0051a5f7:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(ppppuVar13,uVar10);
    }
    fVar16 = DAT_00baa3e0;
    if (local_14d != '\0') {
      fVar16 = DAT_00baa198;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * fVar16);
    if (((param_1[0x5a] & 0x200U) == 0) || (param_1[0x3c7] != -1)) {
      local_154 = DAT_00baa2b8;
      iVar6 = FUN_009be080(9,DAT_00c71678 + 0x1baa8,1);
      piVar18 = DAT_00baa2b8;
      if ((iVar6 != 0) &&
         ((param_1[10] == 0x5b &&
          (cVar5 = FUN_00417430(0x20000000,0), piVar18 = DAT_00baa2b8, cVar5 == '\0')))) {
        local_154 = DAT_00baa1d4;
        piVar18 = DAT_00baa1d4;
      }
      if (local_141 != '\0') {
        piVar18 = (int *)((float)piVar18 * DAT_00baa5b4);
        local_154 = piVar18;
      }
      local_148 = piVar18;
      if ((float)param_1[0xd8] <= (float)local_14c && (float)local_14c != (float)param_1[0xd8]) {
        local_148 = (int *)((uint)piVar18 ^ DAT_00bacb70);
      }
      if ((float)param_1[0xd9] <= (float)local_14c && (float)local_14c != (float)param_1[0xd9]) {
        piVar18 = (int *)((uint)piVar18 ^ DAT_00bacb70);
        local_154 = piVar18;
      }
      piVar19 = local_148;
      if (param_1[0x3c7] != -1) {
        pfVar11 = (float *)FUN_006d82d0(&local_160);
        fVar16 = (float)local_154 * (float)local_154 + (float)local_148 * (float)local_148;
        FUN_00435a50();
        piVar18 = (int *)((float)local_154 + fVar16 * DAT_00baa2d0 * pfVar11[1]);
        piVar19 = (int *)(fVar16 * DAT_00baa2d0 * *pfVar11 + (float)local_148);
      }
      fVar16 = (float)param_1[0xdb];
      if ((NAN(fVar16) || NAN((float)local_14c)) == (fVar16 == (float)local_14c)) {
        param_1[0xd8] =
             (int)(((float)piVar19 * (float)param_1[0xe7]) / fVar16 + (float)param_1[0xd8]);
        param_1[0xd9] =
             (int)(((float)piVar18 * (float)param_1[0xe7]) / fVar16 + (float)param_1[0xd9]);
      }
      if (((param_1[0x5a] & 0x1000800U) != 0) && (param_1[0x3c7] == -1)) {
        iVar6 = FUN_006be840();
        local_15c[0] = (int *)((uint)(*(float *)(iVar6 + 0x340) - (float)param_1[0xd0]) ^
                              DAT_00bacb70);
        local_160 = (float)((uint)(*(float *)(iVar6 + 0x33c) - (float)param_1[0xcf]) ^ DAT_00bacb70)
        ;
        fVar16 = (float)local_15c[0] * (float)local_15c[0] + local_160 * local_160;
        FUN_00435a50();
        piVar18 = (int *)((DAT_00baa9a0 - fVar16) * DAT_00baa08c);
        if ((float)piVar18 <= (float)local_14c) {
          piVar18 = local_14c;
        }
        if ((float)DAT_00baa454 <= (float)piVar18) {
          piVar18 = DAT_00baa454;
        }
        pfVar11 = (float *)FUN_00a10100(local_180,piVar18);
        fVar16 = (float)param_1[0xdb];
        if ((NAN(fVar16) || NAN((float)local_14c)) == (fVar16 == (float)local_14c)) {
          fVar17 = pfVar11[1];
          param_1[0xd8] = (int)(((float)param_1[0xe7] * *pfVar11) / fVar16 + (float)param_1[0xd8]);
          param_1[0xd9] = (int)(((float)param_1[0xe7] * fVar17) / fVar16 + (float)param_1[0xd9]);
        }
      }
    }
    else {
      FUN_007e6300(0);
    }
    puVar4 = puStack_20;
    if (((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[10] == 0x5b)) &&
       (*(short *)((int)param_1 + 0xc76) == 0)) {
      uVar9 = FUN_006eef60();
      iVar6 = FUN_00428b20(0x19,0,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar9);
      *(undefined4 *)(iVar6 + 0x184) = 3;
      puVar4 = puStack_20;
    }
    goto LAB_0051aa79;
  }
  param_1[0x2d9] = 4;
  param_1[0x2ec] = (int)DAT_00c7b640;
  param_1[0x2ed] = (int)DAT_00c7b644;
  param_1[0x104] = 0;
  param_1[0x61] = 3;
  puStack_20 = &stack0xfffffffc;
  iVar6 = FUN_006eef60();
  fVar16 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
           DAT_00baa704;
  local_154 = (int *)(fVar16 + fVar16);
  local_148 = local_154;
  FUN_0041d540();
  piVar18 = local_154;
  FUN_0041d520();
  param_1[0xd8] = (int)local_148;
  param_1[0xd9] = (int)piVar18;
  if (param_1[10] == 0x5b) {
    puVar7 = &local_50;
    local_50 = _DAT_00bac7b0;
    uStack_4c = _UNK_00bac7b4;
    uStack_48 = _UNK_00bac7b8;
    fStack_44 = _UNK_00bac7bc;
    local_30 = 0;
    stack0xffffffc4 = _UNK_00bac3f4;
    local_40._0_4_ = _DAT_00bac3f0;
    auStack_3b._3_4_ = _UNK_00bac3f8;
    uStack_34 = _UNK_00bac3fc;
    local_2c = 0;
    local_28 = 0;
LAB_00518fce:
    FUN_004071f0(puVar7);
  }
  else if (param_1[10] == 0xe6) {
    puVar7 = (undefined4 *)FUN_00435a80();
    goto LAB_00518fce;
  }
  puVar4 = puStack_20;
  if (local_141 != '\0') {
    param_1[0x3c6] = param_1[0x3c6] | 3;
  }
LAB_0051aa79:
  puStack_20 = puVar4;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

