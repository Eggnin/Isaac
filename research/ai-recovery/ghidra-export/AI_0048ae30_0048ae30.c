/* Local J460 decompiler output.
 * VA: 0x0048ae30
 * Entry: 0048ae30
 * Dispatcher: 0x006c2990
 * Types: 266
 * Identities: 266.0.0,266.1.0,266.2.0
 * Evidence: dispatcher=0x006c2990; end=0x0048c3b0; instructions=1162
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=266; identities=266.0.0,266.1.0,266.2.0;
   dispatcher=0x006c2990; end=0x0048c3b0; instructions=1162 */

void __fastcall AI_0048ae30(int *param_1)

{
  double dVar1;
  byte bVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  byte **ppbVar7;
  int *piVar8;
  undefined4 uVar9;
  float *pfVar10;
  byte *pbVar11;
  float fVar12;
  undefined4 *puVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  undefined4 uVar17;
  TypeDescriptor *pTVar18;
  undefined1 *puVar19;
  TypeDescriptor *pTVar20;
  undefined4 uVar21;
  undefined4 local_13c;
  int local_138;
  char local_134 [8];
  float local_12c;
  float local_128;
  float local_124;
  float local_120;
  float local_11c;
  float local_118;
  float local_114;
  float local_110;
  int *local_10c;
  undefined4 *local_108;
  float local_104;
  float local_100;
  int *local_fc;
  undefined local_f8 [16];
  undefined4 local_e8;
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
  puStack_18 = &LAB_00af2d10;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_fc = (int *)0x0;
  local_13c = 0;
  local_138 = 0;
  local_14 = 0;
  local_10c = param_1;
  local_24 = uVar4;
  iVar5 = AI_0041af60(local_134,0x10a,0,0xffffffff,0,0);
  local_108 = *(undefined4 **)(iVar5 + 4);
  local_13c = *(undefined4 *)(iVar5 + 8);
  iVar5 = *(int *)(iVar5 + 0xc);
  local_138 = iVar5;
  if (local_134[0] == '\0') {
    local_14._0_1_ = 1;
    FUN_00a648b0(0,0,uVar4);
    local_14 = (uint)local_14._1_3_ << 8;
  }
  if (iVar5 != 0) {
    local_fc = (int *)__RTDynamicCast(*local_108,0,
                                      &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
  }
  local_14 = 0xffffffff;
  uVar4 = FUN_006eef60();
  fVar12 = (float)((int)(((float)param_1[0xe0] / (float)param_1[0xe1]) * DAT_00baa2d0 + DAT_00baa2d0
                        ) * (uVar4 % 0x19 + 0x1e));
  *(undefined *)(DAT_00c71678 + 0x22ea0) = 1;
  local_114 = fVar12;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x5a] = param_1[0x5a] | 0x40000;
    param_1[0x2d9] = 3;
    param_1[0x61] = 0;
    param_1[0x62] = 2;
    param_1[0x104] = (int)fVar12;
    param_1[0x5b] = param_1[0x5b];
    if (param_1[0xb] == 0) {
      param_1[0x37] = 0;
      param_1[0x38] = 0x41d00000;
      param_1[0xdd] = 0x400ccccd;
      param_1[0xcf] = (int)((float)param_1[0xcf] + 0.0);
      fVar12 = (float)param_1[0xd0] - DAT_00baa904;
      param_1[0xd5] = -8000;
      param_1[0xd0] = (int)fVar12;
      FUN_0040a940("Organs",0);
      uVar9 = FUN_006eef60();
      pfVar10 = (float *)FUN_00812d00(&local_13c);
      local_104 = *pfVar10 * DAT_00baa2d0;
      local_100 = 175.0;
      local_108 = (undefined4 *)FUN_00428b20(0x10a,1,&local_104,&DAT_00c7b640,local_10c,0,uVar9);
      uVar9 = FUN_006eef60();
      pfVar10 = (float *)FUN_00812d00(&local_12c);
      local_124 = *pfVar10 * DAT_00baa528;
      local_120 = 175.0;
      iVar5 = FUN_00428b20(0x10a,2,&local_124,&DAT_00c7b640,local_10c,0,uVar9);
      *(undefined *)((int)local_108 + 0x171) = 0;
      *(undefined *)(iVar5 + 0x171) = 0;
      pfVar10 = (float *)FUN_00812d00(&local_13c);
      fVar12 = *pfVar10;
      local_10c[0xce] = 0x431b0000;
      local_10c[0xcd] = (int)(fVar12 + 0.0);
      local_10c[0x2ec] = (int)(fVar12 + 0.0);
      local_10c[0x2ed] = local_10c[0xce];
      param_1 = local_10c;
    }
    else {
      fVar12 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18) + DAT_00baa7e8;
      param_1[0xd0] = (int)fVar12;
      param_1[0x2ec] = param_1[0xcf];
      param_1[0x2ed] = param_1[0xd0];
      param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
      *(undefined *)((int)param_1 + 0x171) = 0;
      param_1[0x5b] = param_1[0x5b];
      if (local_fc != (int *)0x0) {
        fVar15 = (float)local_fc[0xd0];
        param_1[0xcd] = (int)((float)param_1[0xcf] - (float)local_fc[0xcf]);
        param_1[0xce] = (int)(fVar12 - fVar15);
      }
      *(undefined *)(param_1 + 0x30f) = 0;
      if (param_1[0xb] == 2) {
        *(undefined *)(param_1 + 0x52) = 1;
      }
    }
    break;
  case 3:
    if (param_1[0xb] == 0) {
      cVar3 = FUN_0040a9f0("Organs");
      if (cVar3 == '\0') {
        FUN_0040a940("Organs",0);
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380(&DAT_00b1bc54,0);
      }
      iVar5 = param_1[0x104];
      param_1[0x104] = iVar5 + -1;
      if (iVar5 < 0) {
        uVar4 = FUN_006eef60();
        uVar4 = uVar4 % 3;
        if (uVar4 == param_1[0x2f1]) {
          uVar4 = FUN_006eef60();
          uVar4 = uVar4 % 3;
        }
        param_1[0x2f1] = uVar4;
        if (uVar4 == 0) {
          param_1[0x2d9] = 8;
          cVar3 = FUN_0040a5d0("Shoot",1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
          uVar4 = FUN_006eef60();
          param_1[0x2f0] = (uVar4 & 3) * 2 + 1;
          uVar4 = FUN_006eef60();
          if (uVar4 % 100 < 0x1e) {
            param_1[0x2f0] = 0;
          }
        }
        else if (uVar4 == 1) {
          param_1[0x2d9] = 9;
          cVar3 = FUN_0040a5d0(&DAT_00b1d2cc,1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
        else if (uVar4 == 2) {
          param_1[0x2d9] = 10;
          uVar4 = FUN_006eef60();
          if (uVar4 % 100 < 0x14) {
            param_1[0x2f0] = 1;
            puVar19 = &DAT_00b1d2cc;
          }
          else {
            param_1[0x2f0] = 0;
            puVar19 = &DAT_00b1d998;
          }
          cVar3 = FUN_0040a5d0(puVar19,1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
          param_1[0x104] = 0;
        }
      }
    }
    else {
      *(undefined *)((int)param_1 + 0x171) = 0;
    }
    break;
  case 8:
    if (param_1[0xb] == 0) {
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 3;
        param_1[0x104] = (int)fVar12;
      }
      iVar5 = FUN_0040a780();
      if (iVar5 == 0x1f) {
        iVar6 = FUN_006be840();
        fVar12 = *(float *)(iVar6 + 0x340);
        param_1[0x2ee] = (int)(*(float *)(iVar6 + 0x33c) - (float)param_1[0xcf]);
        param_1[0x2ef] = (int)(fVar12 - (float)param_1[0xd0]);
      }
      iVar6 = param_1[0x2f0];
      if (iVar6 < 2) {
        bVar14 = iVar5 == 0x1f;
LAB_0048b4a4:
        if (!bVar14) break;
      }
      else if (iVar6 == 3) {
        if ((iVar5 != 0x1f) && (iVar5 != 0x24)) {
          bVar14 = iVar5 == 0x29;
          goto LAB_0048b4a4;
        }
      }
      else if (iVar6 == 5) {
        if (((iVar5 != 0x1f) && (iVar5 != 0x22)) && (iVar5 != 0x25)) {
          bVar14 = iVar5 == 0x28;
LAB_0048b49f:
          if (!bVar14) {
            bVar14 = iVar5 == 0x2b;
            goto LAB_0048b4a4;
          }
        }
      }
      else {
        if (iVar6 != 7) break;
        if ((((iVar5 != 0x1f) && (iVar5 != 0x21)) && (iVar5 != 0x23)) &&
           ((iVar5 != 0x25 && (iVar5 != 0x27)))) {
          bVar14 = iVar5 == 0x29;
          goto LAB_0048b49f;
        }
      }
      FUN_006d6ba0(0x10,0x3f800000,0x14,0,0x3f800000);
      if (param_1[0x2f0] == 0) {
        local_108 = (undefined4 *)param_1[0xcf];
        local_110 = (float)param_1[0xd0];
        param_1[0xcf] = (int)((float)local_108 - 0.0);
        param_1[0xd0] = (int)((float)param_1[0xd0] - DAT_00baae28);
        AI_0043ef30();
        local_e8 = 0x3fe66666;
        iVar5 = FUN_006be840();
        local_104 = (*(float *)(iVar5 + 0x33c) - (float)param_1[0xcf]) * DAT_00baa354 +
                    (float)param_1[0xcf];
        local_100 = (*(float *)(iVar5 + 0x340) - (float)param_1[0xd0]) * DAT_00baa354 +
                    (float)param_1[0xd0];
        FUN_006ccdd0(0xc,&local_104,0x41200000,local_f8);
        param_1[0xcf] = (int)local_108;
        param_1[0xd0] = (int)local_110;
      }
      else {
        uVar9 = AI_0043ef30();
        pfVar10 = (float *)FUN_00a10030(&local_13c);
        local_104 = *pfVar10 * _DAT_00baa7fc;
        local_100 = pfVar10[1] * _DAT_00baa7fc;
        local_124 = (float)param_1[0xcf] - 0.0;
        local_120 = (float)param_1[0xd0] - DAT_00baae28;
        FUN_006cb2e0(&local_124,&local_104,5,uVar9);
      }
    }
    else {
      cVar3 = FUN_0040b030("Smash");
      if (cVar3 == '\0') {
        if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
          FUN_0040a380(&DAT_00b1bc54,0);
          goto LAB_0048c1af;
        }
      }
      else {
        uVar9 = 0x48b68a;
        FUN_006d6ba0(0x30,0x3f333333,0x14,0,0x3f800000);
        FUN_006fed60(param_1 + 0xcf,param_1,0,0,0,uVar9,0x42480000,DAT_00c79100,DAT_00c79104,
                     DAT_00c79108,DAT_00c7910c);
      }
    }
    break;
  case 9:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x104] = (int)fVar12;
    }
    iVar5 = FUN_0040a780();
    if (iVar5 == 0x14) {
      FUN_006d6ba0(0x133,0x3f800000,0x3c,0,0x3f800000);
      iVar5 = 0x14;
      do {
        iVar6 = *(int *)(DAT_00c71678 + 0x18300);
        local_110 = *(float *)(iVar6 + 0x14);
        local_118 = *(float *)(iVar6 + 0x18) + DAT_00baa904;
        local_108 = *(undefined4 **)(iVar6 + 0x1c);
        local_11c = *(float *)(iVar6 + 0x20);
        iVar6 = FUN_006eef60();
        local_10c = (int *)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                           DAT_00ba9ff4);
        iVar6 = FUN_006eef60();
        local_104 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                    DAT_00ba9ff4 * ((float)local_108 - local_110) + local_110;
        local_100 = (local_11c - local_118) * (float)local_10c + local_118;
        FUN_00813520(&local_12c,&local_104,0,0,0,0);
        uVar9 = FUN_006eef60();
        FUN_00428b20(1000,0x37,&local_12c,&DAT_00c7b640,param_1,0,uVar9);
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
    }
    break;
  case 10:
    if (param_1[0x2f0] == 1) {
      iVar5 = param_1[0x104];
      if (iVar5 == 0) {
        FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
        iVar5 = param_1[0x104];
      }
      fVar15 = (float)param_1[0x2ed];
      fVar16 = ((float)iVar5 - 0.0) / DAT_00baa910;
      if (fVar16 <= 0.0) {
        fVar16 = 0.0;
      }
      if (DAT_00baa454 <= fVar16) {
        fVar16 = DAT_00baa454;
      }
      param_1[0xce] = (int)(((fVar15 - DAT_00baaaf8) - fVar15) * fVar16 + fVar15);
      if (iVar5 == 0x23) {
        FUN_006d6ba0(0x133,0x3f800000,0x3c,0,0x3f800000);
        iVar5 = 0x14;
        do {
          iVar6 = *(int *)(DAT_00c71678 + 0x18300);
          local_110 = *(float *)(iVar6 + 0x14);
          local_118 = *(float *)(iVar6 + 0x18) + DAT_00baa904;
          local_108 = *(undefined4 **)(iVar6 + 0x1c);
          local_11c = *(float *)(iVar6 + 0x20);
          iVar6 = FUN_006eef60();
          local_10c = (int *)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                             DAT_00ba9ff4);
          iVar6 = FUN_006eef60();
          local_104 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                      DAT_00ba9ff4 * ((float)local_108 - local_110) + local_110;
          local_100 = (local_11c - local_118) * (float)local_10c + local_118;
          FUN_00813520(&local_13c,&local_104,0,0,0,0);
          uVar9 = FUN_006eef60();
          FUN_00428b20(1000,0x37,&local_13c,&DAT_00c7b640,param_1,0,uVar9);
          iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
        iVar5 = param_1[0x104];
        fVar12 = local_114;
      }
      param_1[0x104] = iVar5 + 1;
      if (0x2c < iVar5 + 1) {
        param_1[0x2f0] = 2;
        uVar4 = FUN_006eef60();
        param_1[0x104] = uVar4 % 0x3c;
      }
    }
    if ((param_1[0x2f0] == 2) && (param_1[0x104] = param_1[0x104] + -1, param_1[0x104] < 1)) {
      param_1[0x2f0] = 3;
      FUN_0040a380(&DAT_00b1d998,0);
    }
    if (param_1[0x1f] != 0) {
      if (*(char *)(param_1 + 0x23) == '\0') {
LAB_0048bb56:
        ppbVar7 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar7[5]) {
          ppbVar7 = (byte **)*ppbVar7;
        }
        pbVar11 = &DAT_00b1d998;
        do {
          bVar2 = *(byte *)ppbVar7;
          bVar14 = bVar2 < *pbVar11;
          if (bVar2 != *pbVar11) {
LAB_0048bb86:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_0048bb8b;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar7 + 1);
          bVar14 = bVar2 < pbVar11[1];
          if (bVar2 != pbVar11[1]) goto LAB_0048bb86;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pbVar11 = pbVar11 + 2;
        } while (bVar2 != 0);
        uVar4 = 0;
LAB_0048bb8b:
        if (uVar4 != 0) break;
      }
      else {
        ppbVar7 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar7[5]) {
          ppbVar7 = (byte **)*ppbVar7;
        }
        pbVar11 = &DAT_00b1d998;
        do {
          bVar2 = *(byte *)ppbVar7;
          bVar14 = bVar2 < *pbVar11;
          if (bVar2 != *pbVar11) {
LAB_0048bb40:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_0048bb45;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar7 + 1);
          bVar14 = bVar2 < pbVar11[1];
          if (bVar2 != pbVar11[1]) goto LAB_0048bb40;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pbVar11 = pbVar11 + 2;
        } while (bVar2 != 0);
        uVar4 = 0;
LAB_0048bb45:
        if (uVar4 != 0) {
          if (*(char *)(param_1 + 0x23) != '\0') break;
          goto LAB_0048bb56;
        }
      }
      if (param_1[0x2f0] == 3) {
        iVar5 = FUN_0040a780();
        if (iVar5 == 0x22) {
          FUN_00703670(8);
          FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
        }
        local_108 = (undefined4 *)param_1[0x2ed];
        local_114 = (float)local_108 - DAT_00baaaf8;
        iVar5 = FUN_0040a780();
        fVar15 = ((float)iVar5 - DAT_00baa8e8) / DAT_00baa81c;
        if (fVar15 <= 0.0) {
          fVar15 = 0.0;
        }
        if (DAT_00baa454 <= fVar15) {
          fVar15 = DAT_00baa454;
        }
        param_1[0xce] = (int)(((float)local_108 - local_114) * fVar15 + local_114);
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 3;
        param_1[0x104] = (int)fVar12;
      }
      uVar4 = FUN_0040a780();
      if (((0x29 < (int)uVar4) && ((int)uVar4 < 0x42)) && ((uVar4 & 1) != 0)) {
        FUN_006d6ba0(0x134,0x3f800000,0x3c,0,0x3f800000);
        local_120 = DAT_00baabf0;
        FUN_00435a50();
        local_108 = (undefined4 *)0x3;
        do {
          local_10c = (int *)0x0;
          local_110 = DAT_00baa924;
          if (0.0 < local_120) {
            local_110 = (DAT_00baa454 / local_120) * DAT_00baa924;
            local_10c = (int *)((DAT_00baa454 / local_120) * 0.0);
          }
          iVar5 = FUN_006eef60();
          local_118 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa704;
          local_118 = local_118 + local_118;
          iVar5 = FUN_006eef60();
          local_11c = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                      DAT_00ba9ff4;
          fVar12 = local_118;
          FUN_0041d540();
          local_12c = fVar12 * local_11c * DAT_00baa7b0 + (float)local_10c * DAT_00baa804;
          fVar12 = local_118;
          FUN_0041d520();
          local_128 = fVar12 * local_11c * DAT_00baa7b0 + local_110 * DAT_00baa804;
          iVar5 = FUN_006eef60();
          local_114 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa704;
          local_114 = local_114 + local_114;
          fVar12 = local_114;
          FUN_0041d540();
          local_104 = fVar12;
          fVar12 = local_114;
          FUN_0041d520();
          local_100 = fVar12;
          iVar5 = FUN_006eef60();
          local_114 = ((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                       DAT_00ba9ff4 + DAT_00baa454) * local_104;
          fVar12 = local_114 * local_114 + local_100 * local_100;
          local_104 = local_114;
          FUN_00435a50();
          if (0.0 < fVar12) {
            local_104 = local_114 * (DAT_00baa454 / fVar12);
            local_100 = local_100 * (DAT_00baa454 / fVar12);
          }
          iVar5 = FUN_006eef60();
          fVar12 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa8d0 + DAT_00baa454;
          local_104 = (((float)param_1[0xcf] + 0.0) - 0.0) + fVar12 * local_104;
          local_100 = (((float)param_1[0xd0] - DAT_00baa81c) - DAT_00baae28) + local_100 * fVar12;
          uVar9 = FUN_006eef60();
          uVar21 = 0;
          pTVar20 = &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor;
          pTVar18 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar17 = 0;
          uVar9 = FUN_00428b20(9,0,&local_104,&local_12c,param_1,0,uVar9);
          piVar8 = (int *)__RTDynamicCast(uVar9,uVar17,pTVar18,pTVar20,uVar21);
          local_30 = 0x3f26a6a7;
          local_2c = 0x3ed0d0d2;
          local_40 = ZEXT816(0);
          local_28 = 0x3e24a4a5;
          local_50 = _DAT_00bac4b0;
          uStack_4c = _UNK_00bac4b4;
          uStack_48 = _UNK_00bac4b8;
          uStack_44 = _UNK_00bac4bc;
          (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
          fVar12 = (float)piVar8[0x104] - DAT_00baa87c;
          piVar8[0x108] = 0x40000000;
          piVar8[0x104] = (int)fVar12;
          iVar5 = FUN_006eef60();
          piVar8[0x10e] = piVar8[0x10e] | 0x4000;
          local_108 = (undefined4 *)((int)local_108 + -1);
          dVar1 = (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)];
          piVar8[0x10f] = piVar8[0x10f];
          piVar8[0x105] =
               (int)((float)((double)iVar5 + dVar1) * DAT_00ba9ff4 * DAT_00baa7b8 +
                    (float)piVar8[0x105]);
        } while (local_108 != (undefined4 *)0x0);
        local_108 = (undefined4 *)0x0;
      }
    }
    break;
  case 0xd:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x104] = (int)fVar12;
LAB_0048c1af:
      param_1[0x2d9] = 3;
    }
    else {
      iVar5 = FUN_0040a780();
      if (iVar5 == 0x19) {
        FUN_006d6ba0(0x133,0x3f800000,0x3c,0,0x3f800000);
        local_12c = 220.0;
        local_128 = 240.0;
        FUN_00813520(&local_104,&local_12c,0,1,0,0);
        uVar9 = FUN_006eef60();
        FUN_00428b20(0x20,0,&local_104,&DAT_00c7b640,param_1,0,uVar9);
        local_12c = 420.0;
        local_128 = 240.0;
        pfVar10 = (float *)FUN_00813520(&local_13c,&local_12c,0,1,0,0);
        local_104 = *pfVar10;
        local_100 = pfVar10[1];
        uVar9 = FUN_006eef60();
        FUN_00428b20(0x20,0,&local_104,&DAT_00c7b640,param_1,0,uVar9);
      }
    }
  }
  if (param_1[0xb] == 0) {
LAB_0048c236:
    fVar12 = (float)param_1[0xdb] * DAT_00baa3a4;
    param_1[0xd0] = param_1[0xce];
    iVar5 = DAT_00c71678;
    param_1[0xdb] = (int)fVar12;
    param_1[0xd9] = 0;
    fVar15 = *(float *)(*(int *)(iVar5 + 0x18300) + 0x14) + DAT_00baa950;
    fVar12 = (float)param_1[0xcf];
    if ((float)param_1[0xcf] <= fVar15) {
      fVar12 = fVar15;
    }
    fVar15 = *(float *)(*(int *)(iVar5 + 0x18300) + 0x1c) - DAT_00baa950;
    if (fVar15 <= fVar12) {
      fVar12 = fVar15;
    }
    param_1[0xcf] = (int)fVar12;
    iVar5 = FUN_006be840();
    fVar12 = (*(float *)(iVar5 + 0x33c) - (float)param_1[0xcf]) * DAT_00baa0d0;
    if (fVar12 <= DAT_00baad74) {
      fVar12 = DAT_00baad74;
    }
    if (DAT_00baa630 <= fVar12) {
      fVar12 = DAT_00baa630;
    }
    param_1[0xd8] = (int)fVar12;
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      param_1[0x5a] = param_1[0x5a] & 0xfffbffff;
      param_1[0x5b] = param_1[0x5b];
    }
    if (param_1[0xb] == 0) goto LAB_0048c357;
  }
  else {
    if (local_fc == (int *)0x0) {
      (**(code **)(*param_1 + 0x28))();
      goto LAB_0048c357;
    }
    puVar13 = (undefined4 *)param_1[2];
    if (puVar13 != (undefined4 *)param_1[3]) {
      do {
        (**(code **)(*local_fc + 0x20))(*puVar13,puVar13[2],puVar13[3],puVar13 + 4,0);
        puVar13 = puVar13 + 0xe;
      } while (puVar13 != (undefined4 *)param_1[3]);
    }
    param_1[3] = param_1[2];
    param_1[5] = 0;
    param_1[6] = 0;
    param_1[7] = 0;
    *(undefined *)((int)param_1 + 0x173) = 0;
    param_1[0xe0] = param_1[0xe1];
    if (param_1[0xb] == 0) goto LAB_0048c236;
  }
  if (local_fc != (int *)0x0) {
    fVar12 = (float)local_fc[0xd0];
    param_1[0xcf] = (int)((float)local_fc[0xcf] + (float)param_1[0xcd]);
    param_1[0xd0] = (int)(fVar12 + (float)param_1[0xce]);
    param_1[0xd8] = DAT_00c7b640;
    param_1[0xd9] = DAT_00c7b644;
  }
LAB_0048c357:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

