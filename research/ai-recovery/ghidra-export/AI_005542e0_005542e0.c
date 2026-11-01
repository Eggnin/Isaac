/* Local J460 decompiler output.
 * VA: 0x005542e0
 * Entry: 005542e0
 * Dispatcher: 0x006c2990
 * Types: 866
 * Identities: 866.0.0,866.0.1,866.1.0
 * Evidence: dispatcher=0x006c2990; end=0x005562b0; instructions=1737
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=866; identities=866.0.0,866.0.1,866.1.0;
   dispatcher=0x006c2990; end=0x005562b0; instructions=1737 */

void __fastcall AI_005542e0(int *param_1)

{
  float fVar1;
  byte bVar2;
  code *pcVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  int *piVar9;
  uint *puVar10;
  float *pfVar11;
  int iVar12;
  float **ppfVar13;
  char *pcVar14;
  undefined4 extraout_ECX;
  bool bVar15;
  float fVar16;
  int **ppiVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  undefined *puVar23;
  undefined4 uVar24;
  undefined local_194 [4];
  char local_190 [4];
  int local_18c;
  undefined local_188 [4];
  int *local_184;
  float local_180;
  float local_17c;
  float local_178;
  float local_174;
  int *local_170;
  float local_16c;
  float *local_168;
  int *local_164;
  float local_160;
  float local_15c;
  char local_155;
  int **local_154;
  undefined local_150 [12];
  undefined4 local_144;
  undefined4 local_f8;
  undefined4 local_f4;
  undefined4 local_bc;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
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
  puStack_18 = &LAB_00af4be0;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_170 = (int *)0x0;
  local_164 = (int *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  piVar9 = (int *)param_1[0xf2];
  if (((piVar9 != (int *)0x0) && (piVar9[10] == 1)) &&
     (local_170 = (int *)0x0, (int *)piVar9[0x7f0] == param_1)) {
    local_170 = piVar9;
  }
  piVar9 = local_170;
  local_168 = (float *)param_1;
  local_24 = uVar5;
  if (param_1[0x2dd] == 1) {
    if (0.0 < (float)param_1[5]) {
      param_1[5] = 0;
      param_1[3] = param_1[2];
    }
    if (((param_1[0x2d9] == 8) || (puStack_20 = &stack0xfffffffc, param_1[0x2d9] == 9)) &&
       ((puStack_20 = &stack0xfffffffc, param_1[0x1f] != 0 &&
        (puStack_20 = &stack0xfffffffc, *(char *)(param_1[0x1f] + 0x34) != '\0')))) {
      param_1[0x3c1] = param_1[0x3c0];
      puStack_20 = &stack0xfffffffc;
      iVar6 = FUN_006ac760();
      if (iVar6 != 0) {
        iVar6 = FUN_004360f0();
        local_154 = (int **)((float)iVar6 + DAT_00baa804);
        FUN_0041a790(local_190,param_1 + 0xcf,10);
        local_14 = 0;
        local_164 = (int *)0x0;
        if (local_184 != (int *)0x0) {
          do {
            piVar9 = local_164;
            cVar4 = FUN_006ac560(0);
            if (((cVar4 == '\0') ||
                (local_168 = *(float **)(local_18c + (int)piVar9 * 4), local_168 == (float *)param_1
                )) || ((((int *)local_168)[0x5a] & 0x20000000U) != 0)) {
              iVar6 = *(int *)(local_18c + (int)piVar9 * 4);
              if (((*(int *)(iVar6 + 0x28) == 9) && (*(char *)(iVar6 + 0x173) == '\0')) &&
                 ((*(uint *)(iVar6 + 0x438) & 0x80000000) == 0)) {
                *(undefined4 *)(iVar6 + 0x438) = 0;
                *(undefined4 *)(iVar6 + 0x43c) = 0;
                *(undefined *)(iVar6 + 0x173) = 1;
              }
            }
            else {
              pcVar3 = *(code **)((int)*local_168 + 0x20);
              FUN_00431310(param_1);
              (*pcVar3)(local_154,0x40000000,0,&uStack_4c,0x1e);
              FUN_00431310(param_1[0xef]);
              FUN_006ae280(&uStack_4c,0x96,0x40a00000,0);
              piVar9 = local_164;
            }
            local_164 = (int *)((int)piVar9 + 1);
          } while (local_164 < local_184);
        }
        local_14 = 0xffffffff;
        if (local_190[0] == '\0') {
          local_14 = 1;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
    }
    if (((param_1[0x2d9] == 0x12) && (param_1[0x1f] != 0)) && (*(char *)(param_1 + 0x23) != '\0')) {
      puVar7 = (undefined4 *)param_1[0x1f];
      if (puVar7 == (undefined4 *)0x0) {
        puVar7 = (undefined4 *)&DAT_00b1a4ec;
      }
      else if (&DAT_0000000f < (undefined *)puVar7[5]) {
        puVar7 = (undefined4 *)*puVar7;
      }
      pcVar14 = "Death";
      do {
        bVar2 = *(byte *)puVar7;
        bVar15 = bVar2 < (byte)*pcVar14;
        if (bVar2 != *pcVar14) {
LAB_005545e0:
          uVar5 = -(uint)bVar15 | 1;
          goto LAB_005545e5;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)puVar7 + 1);
        bVar15 = bVar2 < ((byte *)pcVar14)[1];
        if (bVar2 != ((byte *)pcVar14)[1]) goto LAB_005545e0;
        puVar7 = (undefined4 *)((int)puVar7 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar2 != 0);
      uVar5 = 0;
LAB_005545e5:
      if (uVar5 == 0) {
        cVar4 = FUN_0040add0("Sound");
        if (cVar4 != '\0') {
          local_154 = (int **)0x269;
          FUN_00956780();
          FUN_0092dc30(local_154,0x3f800000,2,0,0x3f800000,0);
        }
        if ((param_1[0x1f] != 0) && (cVar4 = FUN_0040add0("Shoot"), cVar4 != '\0')) {
          uVar8 = FUN_006eef60();
          local_164 = (int *)FUN_00428b20(1000,0x7f,param_1 + 0xcf,&DAT_00c7b640,param_1[0xf2],2,
                                          uVar8);
          iVar6 = param_1[0xd0];
          ppiVar17 = (int **)(local_164 + 0xef);
          local_164[0xcd] = param_1[0xcf];
          local_164[0xce] = iVar6;
          if (*ppiVar17 != (int *)0x0) {
            local_154 = ppiVar17;
            FUN_004cf210(&local_154);
          }
          *ppiVar17 = param_1;
          FUN_004cdcf0(ppiVar17);
          (**(code **)(*local_164 + 0xc))();
          local_154 = (int **)param_1[0xf2];
          if (local_154 != (int **)0x0) {
            pcVar3 = (code *)(*local_154)[8];
            FUN_00431310(param_1);
            (*pcVar3)(0,0x12002000,0,&uStack_4c,0x1e);
          }
        }
      }
    }
    goto LAB_00556251;
  }
  if (param_1[0x2dd] == 3) {
    puStack_20 = &stack0xfffffffc;
    iVar6 = __RTDynamicCast(local_170,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_Player::RTTI_Type_Descriptor,0);
    if (((iVar6 == 0) || (*(char *)(iVar6 + 0x20a9) == '\0')) &&
       ((((iVar6 = param_1[0x2df], 1 < *(int *)(DAT_00c71678 + 0x26614) &&
          (*(int *)(iVar6 + 0x28) == 1)) || (*(int *)(iVar6 + 0x28) - 10U < 0x3de)) &&
        (cVar4 = FUN_00431640(iVar6), cVar4 == '\0')))) {
      uVar8 = FUN_006b62b0();
      FUN_00431570(uVar8);
      pcVar3 = *(code **)(*(int *)param_1[0x2df] + 0x20);
      FUN_00431310(local_168);
      (*pcVar3)(0x41f00000,0,0,&uStack_4c,0x1e);
      local_168[0x2e0] = 0.0;
    }
    goto LAB_00556251;
  }
  if (param_1[0xb] == 0) {
    if ((local_170 == (int *)0x0) ||
       ((*(char *)(local_170 + 0x104) != '\0' && (local_170[0x105] < 1)))) {
      local_155 = '\0';
    }
    else {
      local_155 = '\x01';
    }
    iVar6 = param_1[0x2d9];
    if (((iVar6 == 8) || (puStack_20 = &stack0xfffffffc, iVar6 == 9)) &&
       (puStack_20 = &stack0xfffffffc, local_155 != '\0')) {
      param_1[0x2d9] = 3;
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(&DAT_00b1bc54,0);
      iVar6 = param_1[0x2d9];
      param_1[0x2f0] = 0x3c;
    }
    if (((((iVar6 != 0xd) && (iVar6 != 5)) &&
         ((cVar4 = FUN_00813360(param_1 + 0xcf,0xc2200000), cVar4 != '\0' &&
          ((piVar9 != (int *)0x0 && (piVar9[10] == 1)))))) &&
        (cVar4 = FUN_007706e0(0x26b,0), cVar4 != '\0')) && (param_1[0xf0] == 0)) {
      if (param_1[0x2d9] == 0) {
        cVar4 = FUN_00417430(4,0);
        if (cVar4 == '\0') {
          uVar8 = FUN_006eef60();
          local_160 = (float)param_1[0xcf] + DAT_00baa81c;
          local_15c = (float)param_1[0xd0] + DAT_00ba9fe4;
          piVar9 = (int *)FUN_00428b20(0x362,0,&local_160,&DAT_00c7b640,piVar9,1,uVar8);
          if (param_1[0xf0] != 0) {
            local_154 = (int **)(param_1 + 0xf0);
            FUN_004cf210(&local_154);
          }
          param_1[0xf0] = (int)piVar9;
          if (piVar9 != (int *)0x0) {
            FUN_004cdcf0(param_1 + 0xf0);
          }
          if (piVar9[0xef] != 0) {
            local_154 = (int **)(piVar9 + 0xef);
            FUN_004cf210(&local_154);
          }
          piVar9[0xef] = (int)param_1;
          FUN_004cdcf0(piVar9 + 0xef);
          piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
          piVar9[0x5b] = piVar9[0x5b];
          (**(code **)(*piVar9 + 0xc))();
        }
      }
      else if (param_1[0x2d9] == 0x10) {
        cVar4 = FUN_0040a4d0("Appear");
        if ((cVar4 != '\0') && (iVar6 = FUN_0040a780(), iVar6 < 6)) {
          uVar8 = FUN_006eef60();
          local_160 = (float)param_1[0xcf] + DAT_00baa81c;
          local_15c = (float)param_1[0xd0] + DAT_00ba9fe4;
          piVar9 = (int *)FUN_00428b20(0x362,0,&local_160,&DAT_00c7b640,piVar9,1,uVar8);
          if (param_1[0xf0] != 0) {
            local_154 = (int **)(param_1 + 0xf0);
            FUN_004cf210(&local_154);
          }
          param_1[0xf0] = (int)piVar9;
          if (piVar9 != (int *)0x0) {
            FUN_004cdcf0(param_1 + 0xf0);
          }
          if (piVar9[0xef] != 0) {
            local_154 = (int **)(piVar9 + 0xef);
            FUN_004cf210(&local_154);
          }
          piVar9[0xef] = (int)param_1;
          FUN_004cdcf0(piVar9 + 0xef);
          piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
          piVar9[0x5b] = piVar9[0x5b];
          (**(code **)(*piVar9 + 0xc))();
          FUN_0040a380("Appear",0);
          FUN_0040a780();
          if (piVar9[0x1f] != 0) {
            FUN_00408e00();
          }
          piVar9[0x5a] = piVar9[0x5a] | 0x10;
          piVar9[0x5b] = piVar9[0x5b];
          piVar9[0x57] = 0;
          local_174 = (float)param_1[0x2fb];
          if (piVar9[0x2fb] != 0) {
            local_154 = (int **)(piVar9 + 0x2fb);
            FUN_004cf210(&local_154);
          }
          piVar9[0x2fb] = (int)local_174;
          if (local_174 != 0.0) {
            FUN_004cdcf0(piVar9 + 0x2fb);
          }
          piVar9[0x2d9] = 0x10;
          piVar9[0x62] = 0;
          piVar9[0x61] = 0;
          param_1[0xcf] = (int)((float)param_1[0xcf] - DAT_00baa81c);
        }
      }
      else {
        param_1[0x2d9] = 0xd;
        FUN_0040a380("Split",0);
      }
    }
    iVar6 = param_1[0xef];
    if ((((iVar6 == 0) || (cVar4 = FUN_006ac530(uVar5), cVar4 == '\0')) &&
        (iVar6 = param_1[0xf0], iVar6 == 0)) ||
       (((*(int *)(DAT_00c71678 + 0x26614) < 2 || (*(int *)(iVar6 + 0x28) != 1)) &&
        (0x3dd < *(int *)(iVar6 + 0x28) - 10U)))) {
      iVar6 = 0;
    }
    switch(param_1[0x2d9]) {
    case 0:
      cVar4 = FUN_00417430(4,0);
      if (cVar4 == '\0') {
        FUN_0040a380(&DAT_00b1bc54,0);
        iVar12 = 4;
        iVar6 = 3;
      }
      else {
        FUN_0040a380("Appear",0);
        param_1[0x5b] = param_1[0x5b];
        param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x10;
        param_1[0x57] = 0;
        uVar8 = FUN_006eef60();
        piVar9 = (int *)FUN_00428b20(param_1[10],1,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar8);
        if (piVar9[0xf0] != 0) {
          local_154 = (int **)(piVar9 + 0xf0);
          FUN_004cf210(&local_154);
        }
        piVar9[0xf0] = (int)param_1;
        FUN_004cdcf0(piVar9 + 0xf0);
        if (param_1[0x2fb] != 0) {
          local_154 = (int **)(param_1 + 0x2fb);
          FUN_004cf210(&local_154);
        }
        param_1[0x2fb] = (int)piVar9;
        FUN_004cdcf0(param_1 + 0x2fb);
        (**(code **)(*piVar9 + 0xc))();
        iVar12 = 0;
        iVar6 = 0x10;
      }
      param_1[0x2d9] = iVar6;
      param_1[0x62] = iVar12;
      param_1[0x61] = 0;
      param_1[0x5a] = param_1[0x5a] | 0x80100011;
      param_1[0x5b] = param_1[0x5b];
      param_1[0x3c6] = 5;
      *(undefined *)(param_1 + 0xec) = 1;
      FUN_0041b4f0(param_1);
      break;
    case 3:
      fVar18 = (float)param_1[0xdb];
      if (param_1[0x1f] == 0) {
        param_1[0xdb] = (int)(fVar18 * DAT_00baa3e0);
        FUN_0040a380(&DAT_00b1bc54,0);
      }
      else if (*(char *)(param_1[0x1f] + 0x34) == '\0') {
        param_1[0xdb] = (int)(fVar18 * DAT_00baa3e0);
        if (*(char *)(param_1 + 0x23) == '\0') {
          FUN_0040a380(&DAT_00b1bc54,0);
        }
      }
      else {
        param_1[0xdb] = (int)(fVar18 * DAT_00baa3a4);
        piVar9 = local_170;
        if (local_170 == (int *)0x0) {
          piVar9 = (int *)FUN_006be840();
        }
        local_168 = (float *)piVar9;
        FUN_006bec40(&local_160,0);
        local_154 = (int **)param_1[0xcf];
        local_174 = local_160;
        local_17c = local_160 - (float)local_154;
        fVar19 = local_15c - (float)param_1[0xd0];
        local_178 = local_15c;
        fVar18 = fVar19 * fVar19 + local_17c * local_17c;
        FUN_00435a50();
        if (0 < param_1[0x2f0]) {
          param_1[0x2f0] = param_1[0x2f0] - (int)local_164;
        }
        fVar16 = (float)param_1[0xdb] * DAT_00baa3a4;
        param_1[0x2e9] = param_1[0x2e9] + ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]);
        fVar21 = DAT_00baa904;
        param_1[0xdb] = (int)fVar16;
        local_164 = DAT_00baa6fc;
        if (local_155 != '\0') {
          fVar21 = DAT_00baa9a0;
        }
        iVar12 = param_1[0xef];
        if (iVar12 != 0) {
          fVar22 = (float)param_1[0xd0];
          fVar1 = *(float *)(iVar12 + 0x33c);
          fVar20 = fVar22 - *(float *)(iVar12 + 0x340);
          if ((fVar20 * fVar20 + ((float)local_154 - fVar1) * ((float)local_154 - fVar1) <
               ((float)local_154 - local_168[0xcf]) * ((float)local_154 - local_168[0xcf]) +
               (fVar22 - local_168[0xd0]) * (fVar22 - local_168[0xd0])) &&
             (local_178 = *(float *)(iVar12 + 0x340), local_160 = fVar1, fVar21 = DAT_00baa87c,
             local_174 = fVar1,
             DAT_00baac78 <
             (local_178 - fVar22) * (local_178 - fVar22) +
             (fVar1 - (float)local_154) * (fVar1 - (float)local_154))) {
            local_164 = DAT_00baa75c;
          }
        }
        local_160 = (float)local_154 - local_160;
        local_15c = (float)param_1[0xd0] - local_178;
        pfVar11 = (float *)FUN_00a10100(local_188,fVar21);
        local_174 = local_174 + *pfVar11;
        local_178 = local_178 + pfVar11[1];
        fVar22 = local_174 - (float)local_154;
        fVar21 = local_178 - (float)param_1[0xd0];
        local_160 = fVar22 * DAT_00baa06c;
        local_15c = fVar21 * DAT_00baa06c;
        fVar21 = fVar22 * fVar22 + fVar21 * fVar21;
        FUN_00435a50();
        ppiVar17 = (int **)((fVar21 - 0.0) / DAT_00baaa94);
        if ((float)ppiVar17 <= 0.0) {
          ppiVar17 = (int **)0x0;
        }
        if ((float)DAT_00baa454 <= (float)ppiVar17) {
          ppiVar17 = DAT_00baa454;
        }
        pfVar11 = (float *)FUN_00a10100(local_188,((float)local_164 - 0.0) * (float)ppiVar17 + 0.0);
        if ((NAN(fVar16) || NAN(DAT_00ba9fe4)) == (fVar16 == DAT_00ba9fe4)) {
          fVar21 = pfVar11[1];
          param_1[0xd8] = (int)(((float)param_1[0xe7] * *pfVar11) / fVar16 + (float)param_1[0xd8]);
          param_1[0xd9] = (int)((fVar21 * (float)param_1[0xe7]) / fVar16 + (float)param_1[0xd9]);
        }
        iVar12 = __RTDynamicCast(local_170,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                 &IsaacRepentancePlus::Entity_Player::RTTI_Type_Descriptor,0);
        if (((((iVar12 == 0) || (*(char *)(iVar12 + 0x20a9) == '\0')) && (param_1[0x2f0] < 1)) &&
            ((iVar6 == 0 ||
             (((*(int *)(iVar6 + 0xb64) == 3 && (*(int *)(iVar6 + 0xbc0) < 1)) &&
              (fVar21 = local_174 - *(float *)(iVar6 + 0x33c),
              fVar16 = local_178 - *(float *)(iVar6 + 0x340),
              fVar16 * fVar16 + fVar21 * fVar21 < DAT_00baac5c)))))) &&
           ((local_155 == '\0' && (fVar18 < DAT_00baaa00)))) {
          fVar18 = (float)((uint)fVar19 & DAT_00bacb40);
          if ((float)((uint)local_17c & DAT_00bacb40) <= (float)((uint)fVar19 & DAT_00bacb40)) {
            fVar18 = (float)((uint)local_17c & DAT_00bacb40);
          }
          if (fVar18 < DAT_00baa87c) {
            FUN_0040a380("Charge",0);
            param_1[0x2d9] = 8;
            param_1[0x104] = 0;
            FUN_006a9320(local_168);
            param_1[0xcd] = DAT_00c7b640;
            param_1[0xce] = DAT_00c7b644;
            FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
            if (iVar6 != 0) {
              FUN_0040a380("Charge",0);
              *(undefined4 *)(iVar6 + 0xb64) = 8;
              *(undefined4 *)(iVar6 + 0x410) = 0;
              FUN_006a9320(local_168);
              *(int *)(iVar6 + 0x334) = DAT_00c7b640;
              *(int *)(iVar6 + 0x338) = DAT_00c7b644;
            }
          }
        }
      }
      break;
    case 5:
      FUN_0040a380("Chained",0);
      fVar18 = (float)param_1[0xdb] * DAT_00baa3a4;
      iVar6 = param_1[0xf2];
      param_1[0xdb] = (int)fVar18;
      if (iVar6 == 0) {
        iVar6 = FUN_006be840();
        fVar18 = (float)param_1[0xdb];
      }
      fVar19 = *(float *)(iVar6 + 0x33c);
      fVar21 = *(float *)(iVar6 + 0x340);
      param_1[0xdb] = (int)(fVar18 * DAT_00baa3a4);
      local_160 = (fVar19 - (float)param_1[0xcf]) * DAT_00baa06c;
      local_15c = (fVar21 - (float)param_1[0xd0]) * DAT_00baa06c;
      puVar10 = (uint *)FUN_00a10100(local_188,0x3fb33333);
      local_160 = (float)(*puVar10 ^ DAT_00bacb70);
      local_15c = (float)(puVar10[1] ^ DAT_00bacb70);
      FUN_004314b0(&local_160,0);
      if ((param_1[0x2fb] == 0) || (*(char *)(param_1[0x2fb] + 0x173) != '\0')) {
        FUN_0040a380("Charge",0);
        FUN_0040a760();
        param_1[0x2d9] = 9;
        param_1[0x104] = 0x1e;
        FUN_006a9320(iVar6);
        param_1[0xcd] = DAT_00c7b640;
        param_1[0xce] = DAT_00c7b644;
      }
      break;
    case 8:
    case 9:
      cVar4 = FUN_004073b0();
      if (cVar4 == '\0') {
        iVar6 = FUN_00813ce0();
        if (iVar6 < 3) {
          FUN_0040a380("DashEnd",0);
          param_1[0x2d9] = 3;
          param_1[0x2f0] = 0x1e;
        }
        else {
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
          if (param_1[0xf1] == 0) {
            iVar6 = FUN_006be840();
            local_154 = *(int ***)(iVar6 + 0x33c);
            local_168 = *(float **)(iVar6 + 0x340);
          }
          else {
            ppfVar13 = (float **)FUN_006bec40(local_188,0);
            uVar24 = 0;
            local_154 = (int **)*ppfVar13;
            local_168 = ppfVar13[1];
            local_160 = ((float)local_154 - (float)param_1[0xcf]) * DAT_00baa06c;
            local_15c = ((float)local_168 - (float)param_1[0xd0]) * DAT_00baa06c;
            uVar8 = FUN_00a10100(local_188,0x3e4ccccd);
            FUN_004314b0(uVar8,uVar24);
          }
          if (-1 < param_1[0x104]) {
            iVar6 = param_1[0x104] + (int)local_164;
            param_1[0x104] = iVar6;
            if ((0xe < iVar6) &&
               (piVar9 = (int *)local_168, ppiVar17 = local_154, cVar4 = FUN_00a10600(&DAT_00c7b640)
               , cVar4 != '\0')) {
              local_160 = (float)ppiVar17 - (float)param_1[0xcf];
              local_15c = (float)piVar9 - (float)param_1[0xd0];
              piVar9 = (int *)FUN_00a10030(local_188);
              param_1[0xcd] = *piVar9;
              param_1[0xce] = piVar9[1];
            }
            local_160 = (float)param_1[0xcf] - (float)local_154;
            local_15c = (float)param_1[0xd0] - (float)local_168;
            pfVar11 = (float *)FUN_00a10100(local_188,0x3f4ccccd);
            fVar18 = pfVar11[1];
            param_1[0xd8] = (int)((float)param_1[0xe7] * *pfVar11 + (float)param_1[0xd8]);
            param_1[0xd9] = (int)(fVar18 * (float)param_1[0xe7] + (float)param_1[0xd9]);
          }
          if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
            if ((float)(param_1[0xcd] & DAT_00bacb40) <= (float)(param_1[0xce] & DAT_00bacb40)) {
              pcVar14 = "DashUp";
              if (0.0 <= (float)param_1[0xce]) {
                pcVar14 = "DashDown";
              }
              FUN_0040a380(pcVar14,0);
              bVar15 = false;
            }
            else {
              FUN_0040a380("DashHori",0);
              bVar15 = (float)param_1[0xcd] <= 0.0 && (float)param_1[0xcd] != 0.0;
            }
            *(bool *)(param_1 + 0x52) = bVar15;
            iVar6 = param_1[0x104];
            if (-1 < iVar6) {
              FUN_006d6ba0(0x77,0x3f800000,2,0,0x3f800000);
              FUN_006d6ba0(0x1e3,0x3f800000,2,0,0x3f800000);
              iVar6 = param_1[0x104];
            }
            iVar12 = 0;
            if (iVar6 < 0) {
              iVar12 = -iVar6;
            }
            param_1[0x104] = iVar12;
          }
        }
      }
      else {
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
        fVar18 = (float)param_1[0xcd] * DAT_00baa7a4;
        param_1[0xd9] =
             (int)((float)param_1[0xce] * DAT_00baa7a4 * (float)param_1[0xe7] + (float)param_1[0xd9]
                  );
        param_1[0xd8] = (int)(fVar18 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        iVar6 = FUN_006ac760();
        if (iVar6 != 0) {
          local_154 = DAT_00baa454;
          if ((local_170 != (int *)0x0) &&
             (ppiVar17 = DAT_00baa454, cVar4 = FUN_007cf8c0(), cVar4 == '\0')) {
            FUN_00925df0();
            local_154 = ppiVar17;
          }
          fVar18 = (float)param_1[0xd3];
          fVar19 = (float)param_1[0xcf];
          local_17c = (float)param_1[0xd0];
          fVar21 = (float)param_1[0xd4];
          pfVar11 = (float *)FUN_006b6af0(local_188,&DAT_00b613c0);
          local_168 = (float *)(local_17c + fVar21 + pfVar11[1]);
          local_16c = fVar19 + fVar18 + *pfVar11;
          uVar8 = FUN_006eef60();
          local_17c = (float)param_1[0xd9] * DAT_00baa120;
          local_160 = (float)param_1[0xd8] * DAT_00baa120 + DAT_00ba9fe4;
          iVar6 = FUN_006eef60();
          local_15c = (DAT_00baad74 -
                      (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa7a4) + local_17c;
          iVar6 = FUN_00428b20(1000,0x3b,&local_16c,&local_160,param_1,0,uVar8);
          FUN_00a114d0(2,extraout_ECX);
          puVar23 = local_194;
          FUN_0040b220(0);
          FUN_00a115c0(puVar23);
          uVar8 = FUN_004238f0(local_154);
          FUN_0040b220(0);
          FUN_004071f0(uVar8);
          iVar12 = FUN_006eef60();
          *(float *)(iVar6 + 0x474) =
               (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa81c + DAT_00baa630;
          uVar5 = FUN_006eef60();
          iVar12 = uVar5 % 10 + 10;
          *(int *)(iVar6 + 0x45c) = iVar12;
          *(int *)(iVar6 + 0x460) = iVar12;
          iVar12 = FUN_006eef60();
          fVar18 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa280;
          fVar19 = fVar18 * DAT_00c37940;
          fVar18 = fVar18 * DAT_00c3793c;
          *(undefined4 *)(iVar6 + 0x354) = 0xfffff830;
          *(float *)(iVar6 + 0xe8) = fVar19;
          *(float *)(iVar6 + 0xe4) = fVar18;
        }
        param_1[0x104] = param_1[0x104] + (int)local_164;
        FUN_00436090(&local_160,param_1 + 0xcf,0xc2c80000);
        cVar4 = FUN_00a10630(param_1 + 0xcf);
        if (cVar4 == '\0') {
LAB_00555a07:
          local_155 = '\0';
        }
        else {
          local_180 = local_160 - (float)param_1[0xcf];
          local_17c = local_15c - (float)param_1[0xd0];
          pfVar11 = (float *)FUN_00a10030(local_188);
          local_155 = '\x01';
          if (0.0 <= pfVar11[1] * (float)param_1[0xce] + (float)param_1[0xcd] * *pfVar11)
          goto LAB_00555a07;
        }
        if ((*(char *)(param_1 + 100) == '\0') && (iVar6 = FUN_00813ce0(), 2 < iVar6)) {
          iVar6 = 0xc;
          local_17c = 8.407791e-44;
          if (param_1[0x2d9] == 9) {
            iVar6 = 0x3c;
          }
          if ((param_1[0x104] <= iVar6) &&
             (((param_1[0x104] < 0xd || (param_1[0x2d9] != 9)) || (local_155 == '\0')))) break;
        }
        iVar6 = FUN_00813ce0();
        if (iVar6 < 3) {
          param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa280);
          param_1[0xd9] = (int)((float)param_1[0xd9] * DAT_00baa280);
        }
        FUN_0040a380("DashEnd",0);
        param_1[0x2d9] = 3;
        param_1[0x2f0] = 0x5a;
      }
      break;
    case 0xd:
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
      if ((((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) &&
          (local_170 != (int *)0x0)) && (param_1[0xf0] == 0)) {
        uVar8 = FUN_006eef60();
        local_160 = (float)param_1[0xcf] + DAT_00baa81c;
        local_15c = (float)param_1[0xd0] + DAT_00ba9fe4;
        piVar9 = (int *)FUN_00428b20(0x362,0,&local_160,&DAT_00c7b640,param_1[0xf2],1,uVar8);
        param_1 = (int *)local_168;
        FUN_006a92e0(piVar9);
        FUN_006a92a0(param_1);
        piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
        piVar9[0x5b] = piVar9[0x5b];
        (**(code **)(*piVar9 + 0xc))();
        fVar18 = (float)param_1[0xd0] - DAT_00ba9fe4;
        param_1[0xcf] = (int)((float)param_1[0xcf] - DAT_00baa81c);
        param_1[0xd0] = (int)fVar18;
        FUN_0040a380("Charge",0);
        FUN_0040a760();
        param_1[0x2d9] = 8;
        param_1[0x104] = -8;
        FUN_006a9320(0);
        param_1[0xcd] = (int)&DAT_bf800000;
        param_1[0xce] = 0;
        uVar8 = FUN_004238f0(0x3f800000);
        (**(code **)(*param_1 + 0x3c))(uVar8,0x14,0xff,1,1);
        FUN_0040a380("Charge",0);
        FUN_0040a760();
        piVar9[0x2d9] = 8;
        piVar9[0x104] = -8;
        FUN_006a9320(0);
        piVar9[0xcd] = 0x3f800000;
        piVar9[0xce] = 0;
        uVar8 = FUN_004238f0(0x3f800000);
        (**(code **)(*piVar9 + 0x3c))(uVar8,0x14,0xff,1,1);
        local_7c = _DAT_00babce0;
        uStack_78 = _UNK_00babce4;
        uStack_74 = _UNK_00babce8;
        uStack_70 = _UNK_00babcec;
        local_5c = 0;
        local_6c = _DAT_00bac7b0;
        uStack_68 = _UNK_00bac7b4;
        uStack_64 = _UNK_00bac7b8;
        uStack_60 = _UNK_00bac7bc;
        local_58 = 0;
        local_54 = 0;
        FUN_006b66a0(&local_7c);
        FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x1e3,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x250,0x3f800000,2,0,0x3f19999a);
      }
      break;
    case 0x10:
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      cVar4 = FUN_0040b030("Shoot");
      if (cVar4 != '\0') {
        FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
        FUN_00703670(10);
        param_1[0x62] = 4;
        param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
        param_1[0x104] = 0xc;
      }
      cVar4 = FUN_0040b090("Shoot");
      if (((cVar4 != '\0') && (iVar6 = FUN_006ac760(), iVar6 != 0)) &&
         ((0 < param_1[0x104] &&
          ((local_170 == (int *)0x0 || (cVar4 = FUN_00505cc0(), cVar4 != '\0')))))) {
        AI_0043ef30();
        local_bc = 2;
        local_f8 = 0x80;
        local_f4 = 0;
        local_144 = 0x3e99999a;
        if (param_1[0xc] != 0) {
          local_50 = _DAT_00bac860;
          uStack_4c = _UNK_00bac864;
          uStack_48 = _UNK_00bac868;
          uStack_44 = _UNK_00bac86c;
          local_30 = 0;
          local_40 = ZEXT816(0);
          local_2c = 0xbf000000;
          local_28 = 0xbe4ccccd;
          FUN_004071f0(&local_50);
        }
        local_160 = 8.0;
        local_15c = 8.0;
        FUN_006cb2e0(param_1 + 0xcf,&local_160,9,local_150);
        param_1[0x104] = param_1[0x104] + -1;
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_006d0c20(0);
        param_1[0x2d9] = 3;
        FUN_0040a380(&DAT_00b1bc54,0);
      }
    }
    iVar6 = param_1[0x2fb];
    if ((iVar6 != 0) && (*(int *)(iVar6 + 0x28) == 0x362)) {
      fVar18 = *(float *)(iVar6 + 0x33c);
      fVar19 = *(float *)(iVar6 + 0x340);
      if (param_1[0xf0] == 0) {
        if (param_1[0xef] != 0) {
          fVar18 = fVar18 + DAT_00baa81c;
        }
      }
      else {
        fVar18 = fVar18 - DAT_00baa81c;
      }
      param_1[0xd8] = (int)(fVar18 - (float)param_1[0xcf]);
      param_1[0xd9] = (int)(fVar19 - (float)param_1[0xd0]);
    }
  }
  else {
    iVar6 = param_1[0x2d9];
    if (iVar6 == 0) {
      FUN_006b6470(0x268,2,0,0x3f800000);
      FUN_0040a380("HoleOpen",0);
      param_1[0x2d9] = 3;
      param_1[0x104] = 0;
      param_1[0x5b] = param_1[0x5b] | 0x2008;
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x11;
      param_1[0x62] = 0;
      param_1[0x61] = 0;
      *(undefined *)(param_1 + 0x30f) = 0;
      param_1[0xd7] = 0;
    }
    else if (iVar6 == 3) {
      puStack_20 = &stack0xfffffffc;
      cVar4 = FUN_0040b030("Shoot");
      if (cVar4 != '\0') {
        FUN_00703670(6);
      }
      cVar4 = FUN_0040a550(&DAT_00b1a4ec);
      if (cVar4 != '\0') {
        FUN_0040a380("HoleIdle",0);
      }
      iVar6 = param_1[0x104];
      param_1[0x104] = iVar6 + (int)local_164;
      if (0x96 < iVar6 + (int)local_164) {
        FUN_0040a380("HoleClose",0);
        param_1[0x2d9] = 0x10;
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if ((iVar6 == 0x10) &&
         (puStack_20 = &stack0xfffffffc, cVar4 = FUN_0040a550(&DAT_00b1a4ec), cVar4 != '\0')) {
        (**(code **)(*param_1 + 0x28))();
      }
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    param_1[0xd8] = DAT_00c7b640;
    param_1[0xd9] = DAT_00c7b644;
  }
LAB_00556251:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

