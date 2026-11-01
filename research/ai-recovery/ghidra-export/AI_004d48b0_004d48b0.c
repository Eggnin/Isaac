/* Local J460 decompiler output.
 * VA: 0x004d48b0
 * Entry: 004d48b0
 * Dispatcher: 0x006c2990
 * Types: 78
 * Identities: 78.0.0,78.1.0,78.10.0
 * Evidence: dispatcher=0x006c2990; end=0x004d64f0; instructions=1773
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=78; identities=78.0.0,78.1.0,78.10.0;
   dispatcher=0x006c2990; end=0x004d64f0; instructions=1773 */

void __fastcall AI_004d48b0(int *param_1)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  float *pfVar9;
  byte **ppbVar10;
  byte **ppbVar11;
  uint uVar12;
  int iVar13;
  char *pcVar14;
  uint *puVar15;
  bool bVar16;
  float fVar17;
  int **ppiVar18;
  int **ppiVar19;
  float fVar20;
  undefined local_ac [8];
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  int local_7c;
  int local_78;
  int local_74;
  int local_70;
  int local_6c;
  int local_68;
  int local_64;
  int local_60;
  uint local_5c;
  int *local_58;
  int local_54;
  int **local_50;
  float local_4c;
  int **local_48;
  float local_44;
  float local_40;
  char local_3c [4];
  int local_38;
  float local_34;
  int **local_30;
  int local_2c;
  int *local_28;
  float local_24;
  int **local_20;
  float local_1c;
  int **local_18;
  int **local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af3880;
  local_10 = ExceptionList;
  local_28 = param_1;
  if (param_1[0xb] == 10) {
    if (param_1[0x2d9] == 0) {
      param_1[0x61] = 0;
      param_1[0x62] = 0;
      param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x40011;
      param_1[0x5b] = param_1[0x5b];
      param_1[0x2d9] = 3;
      return;
    }
    local_7c = param_1[0xef];
    if (local_7c != 0) {
      ExceptionList = &local_10;
      param_1[0xd0] = 0x437f0000;
      iVar3 = __RTDynamicCast(local_7c,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                              &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      switch(*(undefined4 *)(iVar3 + 0xbc0)) {
      case 1:
        FUN_0040a380("Heartbeat1",0);
        ExceptionList = local_10;
        return;
      case 2:
        FUN_0040a380("Heartbeat2",0);
        ExceptionList = local_10;
        return;
      case 3:
        FUN_0040a380("Heartbeat3",0);
        ExceptionList = local_10;
        return;
      case 4:
        FUN_0040a380("HeartSummon",0);
        ExceptionList = local_10;
        return;
      case 5:
        FUN_0040a380("HeartRetracted",0);
        ExceptionList = local_10;
        return;
      default:
        ExceptionList = local_10;
        return;
      }
    }
    local_6c = DAT_00c7b640;
    local_64 = DAT_00c7b640;
    local_68 = DAT_00c7b644;
    local_60 = DAT_00c7b644;
    local_5c = 0;
    local_58 = (int *)0x0;
    ExceptionList = &local_10;
    local_78 = local_7c;
    local_74 = local_7c;
    local_70 = local_7c;
    (**(code **)(*param_1 + 0x24))(&local_7c);
    ExceptionList = local_10;
    return;
  }
  local_2c = param_1[0xc];
  local_54 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  ExceptionList = &local_10;
  uVar4 = FUN_006eef60(DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
  local_50 = DAT_00baa454;
  if ((float)((double)(uVar4 % 0x14 + 10) + DAT_00bacb00) < (float)param_1[5]) {
    uVar4 = FUN_006eef60();
    FUN_006d6ba0(0x57,0x3f800000,uVar4 % 0x1e + 0x19,0,0x3f800000);
  }
  if (param_1[0x2d9] == 0) {
    if (-1 < param_1[0xcb]) {
      uVar4 = 0;
      local_40 = (float)param_1[0xcf];
      local_30 = (int **)0x43b90000;
      local_34 = local_40;
      if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
        do {
          if (uVar4 == 0) {
            FUN_00417870(0);
            pfVar9 = &local_34;
          }
          else {
            FUN_00417870(uVar4);
            iVar3 = FUN_006eef60();
            fVar17 = (float)((double)iVar3 + (&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
                     DAT_00baa704;
            local_14 = (int **)(fVar17 + fVar17);
            ppiVar19 = local_14;
            FUN_0041d520();
            local_20 = ppiVar19;
            ppiVar19 = local_14;
            FUN_0041d540();
            pfVar9 = &local_4c;
            local_4c = (float)ppiVar19 * DAT_00baa87c + local_40;
            local_48 = (int **)((float)local_20 * DAT_00baa87c + _DAT_00baab40);
          }
          FUN_007cd950(pfVar9,0,0);
          uVar4 = uVar4 + 1;
        } while (uVar4 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8)
                               >> 2));
      }
      uVar4 = 0;
      iVar3 = *(int *)(DAT_00c71678 + 0x18300);
      if (*(int *)(iVar3 + 0x1264) != 0) {
        do {
          iVar13 = *(int *)(*(int *)(iVar3 + 0x125c) + uVar4 * 4);
          if ((iVar13 != 0) && (*(int *)(iVar13 + 0x28) == 3)) {
            puVar5 = (undefined4 *)FUN_0063b4a0(local_ac,0);
            *(undefined4 *)(iVar13 + 0x33c) = *puVar5;
            *(undefined4 *)(iVar13 + 0x340) = puVar5[1];
          }
          uVar4 = uVar4 + 1;
          param_1 = local_28;
        } while (uVar4 < *(uint *)(iVar3 + 0x1264));
      }
    }
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x2f1] = -1;
    param_1[0x2db] = 4;
    param_1[0x2f0] = 1;
    param_1[0x2e9] = 0;
    param_1[0x2ec] = 0x42c80000;
    param_1[0x2e8] = 0;
    param_1[0x104] = 0;
    param_1[0x2d9] = 3;
    if (local_2c == 1) {
      fVar17 = (float)param_1[0xe1] * DAT_00baa500;
      param_1[0xe1] = (int)fVar17;
      param_1[0xe0] = (int)fVar17;
    }
    if (param_1[0xb] != 10) {
      uVar6 = FUN_006eef60();
      local_34 = (float)param_1[0xcf] - DAT_00ba9fe4;
      local_30 = (int **)((float)param_1[0xd0] - DAT_00baad50);
      uVar6 = FUN_006fe410(param_1[10],10,&local_34,&DAT_00c7b640,param_1,0,uVar6,0);
      piVar7 = (int *)__RTDynamicCast(uVar6,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      ppiVar19 = (int **)(piVar7 + 0xef);
      if (piVar7[0xef] != 0) {
        local_14 = ppiVar19;
        FUN_004cf210(&local_14);
      }
      *ppiVar19 = param_1;
      FUN_004cdcf0(ppiVar19);
      ppiVar19 = (int **)(param_1 + 0xf0);
      if (param_1[0xf0] != 0) {
        local_14 = ppiVar19;
        FUN_004cf210(&local_14);
      }
      *ppiVar19 = piVar7;
      FUN_004cdcf0(ppiVar19);
      (**(code **)(*piVar7 + 0xc))();
    }
  }
  pfVar9 = (float *)(param_1 + 0xcf);
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
  fVar17 = DAT_00ba9fe4;
  param_1[0xd8] = (int)((float)param_1[0xcd] - *pfVar9);
  fVar20 = DAT_00baa6fc;
  if (fVar17 < (float)param_1[5]) {
    param_1[0x2ec] = (int)((float)param_1[0x2ec] - DAT_00baa6fc);
  }
  if (param_1[0x2db] == 3) {
    iVar3 = FUN_006eef60();
    local_14 = (int **)((float)((double)iVar3 + (&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
                        (float)DAT_00baa2d0 + DAT_00baa198);
    uVar6 = FUN_006eef60();
    uVar6 = FUN_006fe410(1000,7,pfVar9,&DAT_00c7b640,param_1,0,uVar6,0);
    piVar7 = (int *)__RTDynamicCast(uVar6,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                    &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
    piVar7[0x39] = (int)local_14;
    piVar7[0x3a] = (int)local_14;
    (**(code **)(*piVar7 + 0xc))();
    fVar20 = DAT_00baa6fc;
  }
  iVar13 = 4 - (int)(((float)param_1[0xe0] / (float)param_1[0xe1]) * fVar20 + DAT_00baa418);
  iVar3 = 3;
  if (iVar13 < 3) {
    iVar3 = iVar13;
  }
  param_1[0x2db] = iVar3;
  if (param_1[0x2f1] != iVar3) {
    param_1[0x2e9] = 0;
  }
  local_28 = (int *)DAT_00baa06c;
  if ((param_1[0x1f] != 0) && (cVar2 = FUN_0040add0("Heartbeat"), cVar2 != '\0')) {
    iVar3 = param_1[0x2db];
    local_1c = DAT_00baa120;
    local_48 = (int **)*pfVar9;
    local_30 = (int **)param_1[0xd0];
    local_40 = 7.006492e-45;
    if (param_1[0x2f0] == 5) {
LAB_004d51d1:
      local_20 = (int **)DAT_00baa120;
      fVar17 = DAT_00baa304;
      if ((param_1[0x319] == 0x12) || (fVar17 = DAT_00baa0d0, param_1[0x319] == 0x13)) {
        local_20 = (int **)fVar17;
      }
      local_14 = (int **)0x48;
      FUN_00956780();
      FUN_0092dc30(local_14,0x3f000000,2,0,local_20,0);
      local_20 = DAT_00baa454;
      ppiVar19 = DAT_00baa528;
      if ((param_1[0x319] == 0x12) || (ppiVar19 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
        local_20 = ppiVar19;
      }
      local_14 = (int **)0x141;
LAB_004d5284:
      FUN_00956780();
      FUN_0092dc30(local_14,0x3f800000,2,0,local_20,0);
    }
    else {
      if ((param_1[0x2f0] == 4) || (iVar3 == 1)) {
        FUN_00703670(3);
        local_1c = DAT_00baa08c;
        local_40 = 6.726233e-44;
        local_28 = (int *)DAT_00baa068;
        goto LAB_004d51d1;
      }
      if (iVar3 == 2) {
        FUN_00703670(3);
        local_1c = DAT_00baa09c;
        local_28 = (int *)DAT_00baa068;
        local_40 = 4.203895e-44;
        local_20 = (int **)DAT_00baa154;
        uVar6 = DAT_00baa324;
        if ((param_1[0x319] == 0x12) || (uVar6 = DAT_00baa100, param_1[0x319] == 0x13)) {
          local_20 = (int **)uVar6;
        }
        local_14 = (int **)0x48;
        FUN_00956780();
        FUN_0092dc30(local_14,0x3f000000,2,0,local_20,0);
        local_20 = DAT_00baa454;
        if (param_1[0x319] == 0x12) {
          local_20 = DAT_00baa528;
          local_14 = (int **)0x142;
        }
        else {
          if (param_1[0x319] == 0x13) {
            local_20 = DAT_00baa2d0;
          }
          local_14 = (int **)0x142;
        }
        goto LAB_004d5284;
      }
      if (iVar3 == 3) {
        FUN_00703670(4);
        local_1c = DAT_00baa0a0;
        local_28 = (int *)DAT_00baa068;
        local_40 = 1.681558e-44;
        local_20 = (int **)DAT_00baa198;
        fVar17 = DAT_00baa354;
        if ((param_1[0x319] == 0x12) || (fVar17 = DAT_00baa120, param_1[0x319] == 0x13)) {
          local_20 = (int **)fVar17;
        }
        local_14 = (int **)0x48;
        FUN_00956780();
        FUN_0092dc30(local_14,0x3f000000,2,0,local_20,0);
        local_20 = DAT_00baa454;
        if (param_1[0x319] == 0x12) {
          local_20 = DAT_00baa528;
          local_14 = (int **)0x143;
        }
        else {
          if (param_1[0x319] == 0x13) {
            local_20 = DAT_00baa2d0;
          }
          local_14 = (int **)0x143;
        }
        goto LAB_004d5284;
      }
    }
    iVar3 = *(int *)(DAT_00c71678 + 0x18300);
    *(int *)(iVar3 + 0x70fc) = *(int *)(iVar3 + 0x70fc) + 1;
    uVar4 = *(uint *)(iVar3 + 0x70fc) & 0x80000001;
    if ((int)uVar4 < 0) {
      uVar4 = (uVar4 - 1 | 0xfffffffe) + 1;
    }
    if (1 < uVar4) {
      FUN_00a112c0(0x10,"Shockwave id is too large!");
    }
    iVar13 = uVar4 + 0x407;
    *(int ***)(iVar3 + iVar13 * 0x1c) = local_48;
    *(int ***)(iVar3 + 4 + iVar13 * 0x1c) = local_30;
    *(int **)(iVar3 + 0xc + iVar13 * 0x1c) = local_28;
    *(undefined4 *)(iVar3 + 8 + iVar13 * 0x1c) = 0;
    *(float *)(iVar3 + 0x10 + iVar13 * 0x1c) = local_1c;
    *(undefined4 *)(iVar3 + 0x14 + iVar13 * 0x1c) = 0;
    *(float *)(iVar3 + 0x18 + iVar13 * 0x1c) = local_40;
  }
  iVar3 = param_1[0x2db];
  local_28 = (int *)&DAT_00b1f100;
  if (iVar3 - 1U < 3) {
    if (local_2c == 1) {
      local_28 = (int *)(&DAT_00b1eea0 + iVar3 * 8);
    }
    else {
      local_28 = (int *)(&DAT_00b1efc0 + iVar3 * 8);
      if (param_1[0xb] != 1) {
        local_28 = (int *)(&DAT_00b1eee8 + iVar3 * 8);
      }
    }
  }
  iVar13 = param_1[0x2e9];
  puVar15 = (uint *)(iVar13 * 0x10 + local_28[1]);
  if (param_1[0x2d9] == 3) {
    iVar8 = param_1[0x2f0];
    if (iVar8 == 5) {
LAB_004d53cf:
      if ((param_1[0x2e8] < 0x28) || (((iVar3 == 3 && (param_1[0x2f1] == 2)) && (iVar8 == 5)))) {
        local_20 = DAT_00baa454;
        ppiVar19 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (ppiVar19 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_20 = ppiVar19;
        }
        local_14 = (int **)0xd5;
        FUN_00956780();
        FUN_0092dc30(local_14,0x3f800000,2,0,local_20,0);
        local_20 = DAT_00baa454;
        ppiVar19 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (ppiVar19 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_20 = ppiVar19;
        }
        local_14 = (int **)0x5a;
        FUN_00956780();
        FUN_0092dc30(local_14,0x3f800000,0x2d,0,local_20,0);
        param_1[0x2ec] = 0x42c80000;
        param_1[0x2f0] = 4;
        param_1[0x104] = 0;
        FUN_00703670(0xf);
        local_30 = (int **)param_1[0xcf];
        local_48 = (int **)param_1[0xd0];
        iVar3 = *(int *)(DAT_00c71678 + 0x18300);
        *(int *)(iVar3 + 0x70fc) = *(int *)(iVar3 + 0x70fc) + 1;
        local_14 = (int **)(*(uint *)(iVar3 + 0x70fc) & 0x80000001);
        if ((int)local_14 < 0) {
          local_14 = (int **)(((int)local_14 - 1U | 0xfffffffe) + 1);
        }
        if ((int **)0x1 < local_14) {
          FUN_00a112c0(0x10,"Shockwave id is too large!");
        }
        iVar13 = (int)local_14 + 0x407;
        *(int ***)(iVar3 + iVar13 * 0x1c) = local_30;
        *(int ***)(iVar3 + 4 + iVar13 * 0x1c) = local_48;
        *(undefined4 *)(iVar3 + 8 + iVar13 * 0x1c) = 0;
        *(undefined4 *)(iVar3 + 0xc + iVar13 * 0x1c) = 0x3c23d70a;
        *(undefined4 *)(iVar3 + 0x10 + iVar13 * 0x1c) = 0x3c75c28f;
        *(undefined4 *)(iVar3 + 0x14 + iVar13 * 0x1c) = 0;
        *(undefined4 *)(iVar3 + 0x18 + iVar13 * 0x1c) = 100;
        iVar3 = param_1[0x2e9];
        param_1[0x2e9] = iVar3 + 1;
        if (*local_28 <= iVar3 + 1) {
          iVar3 = *local_28 + -1;
          if (local_2c != 1) {
            iVar3 = 0;
          }
LAB_004d5684:
          param_1[0x2e9] = iVar3;
        }
      }
    }
    else if (iVar8 == 4) {
      if (param_1[0x104] < 0x1f) {
        if (iVar3 == 3) goto LAB_004d53cf;
      }
      else {
        FUN_004d4610();
      }
    }
    else {
      param_1[0x2f0] = iVar3;
      param_1[0x104] = 0;
      fVar17 = (float)param_1[0x2ec] - (float)DAT_00baa454;
      param_1[0x2ec] = (int)fVar17;
      if ((fVar17 < 0.0) && (iVar3 != 3)) {
        if ((local_2c == 1) && ((iVar3 != 1 || (iVar13 != 0)))) {
          param_1[0x2e9] = iVar13 + 1;
          if (*local_28 <= iVar13 + 1) {
            iVar3 = *local_28 + -1;
            goto LAB_004d5684;
          }
        }
        else {
          FUN_006d6ba0(0xd4,0x3f800000,2,0,0x3f800000);
          param_1[0x2f0] = 5;
          param_1[0x104] = 0;
          FUN_004d4610();
        }
      }
    }
  }
  if (param_1[0x2f0] == 5) {
    param_1[0x62] = 0;
    param_1[0x57] = 0;
    FUN_004d33d0((int)(float)param_1[0x2ed],param_1[0x104]);
    if ((*puVar15 & 0xffffff) != 0) {
      iVar13 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
               *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
      iVar3 = 0;
      if (0 < iVar13) {
        iVar3 = iVar13;
      }
      ppiVar19 = DAT_00baa454;
      if (((int)puVar15[2] <= iVar3 + -2) ||
         ((float)puVar15[3] < (float)param_1[0x2ee] || (float)puVar15[3] == (float)param_1[0x2ee]))
      goto LAB_004d56cb;
      iVar3 = FUN_006eef60();
      uVar4 = 0;
      local_44 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) + DAT_00baa8d0;
      local_44 = ((*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) - DAT_00baa8d0) - local_44) *
                 (float)((double)iVar3 + (&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 +
                 local_44;
      do {
        if ((local_44 < (float)param_1[0xcf] - (float)param_1[0xdc]) ||
           ((float)param_1[0xcf] + (float)param_1[0xdc] < local_44)) break;
        iVar3 = FUN_006eef60();
        uVar4 = uVar4 + 1;
        local_44 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) + DAT_00baa8d0;
        local_44 = ((*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) - DAT_00baa8d0) - local_44)
                   * (float)((double)iVar3 + (&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 +
                   local_44;
      } while (uVar4 < 0x14);
      local_40 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18) + DAT_00baa8d0;
      pfVar9 = (float *)FUN_00813520(&local_34,&local_44,0,0,0,0);
      local_44 = *pfVar9;
      local_40 = pfVar9[1];
      uVar6 = FUN_006eef60();
      FUN_006fe410(*puVar15 & 0xffffff,(int)*puVar15 >> 0x18,&local_44,&DAT_00c7b640,param_1,0,uVar6
                   ,0);
    }
    ppiVar19 = DAT_00baa454;
    param_1[0x2ee] = (int)((float)param_1[0x2ee] + (float)DAT_00baa454);
  }
  else if ((param_1[0x2f0] == 4) && (param_1[0x104] < 6)) {
    param_1[0x62] = 0;
    param_1[0x57] = 0;
    ppiVar19 = DAT_00baa454;
  }
  else {
    param_1[0x62] = 4;
    param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
    ppiVar19 = DAT_00baa454;
  }
LAB_004d56cb:
  iVar3 = DAT_00c71678;
  iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
          *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
  iVar13 = 0;
  if (0 < iVar8) {
    iVar13 = iVar8;
  }
  if (((iVar13 < 3) && (param_1[0x2d9] != 8)) ||
     ((param_1[0x2db] == 3 && ((*puVar15 & 0xffffff) == 0)))) {
    param_1[0x2e8] = param_1[0x2e8] - local_54;
  }
  if (param_1[0x2d9] == 3) {
    if (param_1[0x2e8] < 0) {
      uVar4 = *puVar15 & 0xffffff;
      if ((uVar4 == 0) || ((float)param_1[0xe0] / (float)param_1[0xe1] <= DAT_00baa198)) {
        if (local_2c == 1) {
          iVar3 = *(int *)(iVar3 + 0x18300);
          fVar17 = 0.0;
          uVar4 = 0;
          local_1c = 0.0;
          if (*(int *)(iVar3 + 0x1264) != 0) {
            do {
              iVar8 = *(int *)(iVar3 + 0x125c);
              iVar13 = *(int *)(iVar8 + uVar4 * 4);
              if (*(int *)(iVar13 + 0x28) == 9) {
                local_30 = *(int ***)(iVar13 + 0x33c);
                local_48 = *(int ***)(iVar13 + 0x340);
                iVar13 = *(int *)(DAT_00c71678 + 0x18300);
                local_18 = local_30;
                local_14 = local_48;
                if (*(int *)(*(int *)(*(int *)(iVar13 + 4) + 0x10) + 0x48) - 9U < 4) {
                  FUN_00812f50(&local_24,&local_18,0x41a00000,0x41a00000,0x41a00000);
                  fVar17 = local_1c;
                  if (((NAN(local_24) || NAN((float)local_30)) != (local_24 == (float)local_30)) &&
                     ((NAN((float)local_20) || NAN((float)local_48)) !=
                      ((float)local_20 == (float)local_48))) {
                    iVar8 = *(int *)(iVar3 + 0x125c);
LAB_004d5dc1:
                    fVar17 = local_1c;
                    if (*(int *)(*(int *)(iVar8 + uVar4 * 4) + 0x34) == param_1[10]) {
                      local_1c = (float)((int)local_1c + 1);
                      fVar17 = local_1c;
                    }
                  }
                }
                else {
                  fVar17 = local_1c;
                  if ((((*(float *)(iVar13 + 0x14) + DAT_00baa87c <= (float)local_30) &&
                       ((float)local_30 <= *(float *)(iVar13 + 0x1c) - DAT_00baa87c)) &&
                      (*(float *)(iVar13 + 0x18) + DAT_00baa87c <= (float)local_48)) &&
                     ((float)local_48 <= *(float *)(iVar13 + 0x20) - DAT_00baa87c))
                  goto LAB_004d5dc1;
                }
              }
              uVar4 = uVar4 + 1;
            } while (uVar4 < *(uint *)(iVar3 + 0x1264));
          }
          if (0x11 < (int)fVar17) {
            param_1[0x2e8] = 0xf;
            goto LAB_004d5f35;
          }
        }
        iVar13 = local_2c;
        FUN_004d4610();
        param_1[0x2e8] = 0x4b;
        iVar3 = param_1[0x2e9];
        param_1[0x2e9] = iVar3 + 1;
        if (*local_28 <= iVar3 + 1) {
          iVar3 = *local_28 + -1;
          if (iVar13 != 1) {
            iVar3 = 0;
          }
          param_1[0x2e9] = iVar3;
        }
        param_1[0x2f1] = param_1[0x2db];
      }
      else {
        local_1c = DAT_00baa904;
        if (uVar4 == 0x3c) {
          pcVar14 = *(char **)(iVar3 + 0x18300);
          if ((*pcVar14 == '\0') ||
             (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(pcVar14 + 0x11f0) < 100)) {
LAB_004d59fd:
            local_1c = DAT_00baaa78;
          }
        }
        else if (uVar4 == 0xe7) goto LAB_004d59fd;
        local_30 = (int **)((float)param_1[0x2db] * DAT_00baa120 + (float)ppiVar19);
        ppiVar18 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) ||
           (ppiVar18 = DAT_00baa2d0, local_20 = ppiVar19, param_1[0x319] == 0x13)) {
          local_20 = ppiVar18;
        }
        local_14 = (int **)0x109;
        FUN_00956780();
        FUN_0092dc30(local_14,local_30,2,0,local_20,0);
        if ((*puVar15 & 0xffffff) == 0x1c) {
          uVar6 = FUN_006eef60();
          local_1c = local_1c + local_1c;
          local_34 = (float)param_1[0xcf] + DAT_00ba9fe4;
          local_30 = (int **)(local_1c + (float)param_1[0xd0]);
          FUN_006fe410(*puVar15 & 0xffffff,(int)*puVar15 >> 0x18,&local_34,&DAT_00c7b640,param_1,0,
                       uVar6,0);
          uVar6 = FUN_006eef60();
          local_34 = (float)param_1[0xcf] + DAT_00ba9fe4;
          local_30 = (int **)(local_1c + (float)param_1[0xd0]);
          FUN_006fe410(*puVar15 & 0xffffff,(int)*puVar15 >> 0x18,&local_34,&DAT_00c7b640,param_1,0,
                       uVar6,0);
          uVar6 = FUN_006eef60();
          local_34 = (float)param_1[0xcf] + DAT_00ba9fe4;
          local_30 = (int **)(local_1c + (float)param_1[0xd0]);
          FUN_006fe410(*puVar15 & 0xffffff,(int)*puVar15 >> 0x18,&local_34,&DAT_00c7b640,param_1,0,
                       uVar6,0);
        }
        else {
          param_1[0x2ee] = 0;
          iVar3 = 0;
          uVar4 = puVar15[1];
          if (0 < (int)uVar4) {
            do {
              if (uVar4 == 1) {
                ppiVar19 = DAT_00baa454;
                ppiVar18 = (int **)0x0;
              }
              else {
                ppiVar19 = (int **)(((float)iVar3 / (float)(uVar4 - 1)) * DAT_00baa708);
                local_30 = ppiVar19;
                FUN_0041d540();
                local_48 = ppiVar19;
                ppiVar19 = local_30;
                FUN_0041d520();
                ppiVar19 = (int **)((float)ppiVar19 * DAT_00baa3a4);
                ppiVar18 = local_48;
              }
              local_24 = (float)ppiVar18 * local_1c + (float)param_1[0xcf];
              local_20 = (int **)((float)ppiVar19 * local_1c + (float)param_1[0xd0]);
              uVar6 = FUN_006eef60();
              FUN_006fe410(*puVar15 & 0xffffff,(int)*puVar15 >> 0x18,&local_24,&DAT_00c7b640,param_1
                           ,0,uVar6,0);
              iVar3 = iVar3 + 1;
              param_1[0x2ee] = (int)((float)param_1[0x2ee] + (float)DAT_00baa454);
              uVar4 = puVar15[1];
            } while (iVar3 < (int)uVar4);
          }
        }
        param_1[0x2e8] = 0x4b;
        if (param_1[0x2db] == 3) {
          iVar3 = param_1[0x2e9];
          param_1[0x2e9] = iVar3 + 1;
          if (*local_28 <= iVar3 + 1) {
            iVar3 = *local_28 + -1;
            if (local_2c != 1) {
              iVar3 = 0;
            }
            param_1[0x2e9] = iVar3;
          }
        }
        param_1[0x2f1] = param_1[0x2db];
      }
    }
  }
  else if (param_1[0x2d9] == 8) {
    FUN_004d33d0((int)(float)param_1[0x2ed],param_1[0x104]);
    bVar16 = false;
    param_1[0x2f0] = param_1[0x2db];
    fVar17 = (float)param_1[0x2ed];
    if (((NAN(fVar17) || NAN(DAT_00baa804)) != (fVar17 == DAT_00baa804)) ||
       ((NAN(fVar17) || NAN(DAT_00baa868)) != (fVar17 == DAT_00baa868))) {
      AI_0041af60(local_3c,7,1,0xffffffff,0,0);
      ppiVar19 = (int **)0x0;
      bVar16 = false;
      if (local_30 != (int **)0x0) {
        do {
          if (*(int *)(*(int *)(local_38 + (int)ppiVar19 * 4) + 0x34) == 0x4e) {
            bVar16 = true;
            break;
          }
          ppiVar19 = (int **)((int)ppiVar19 + 1);
        } while (ppiVar19 < local_30);
      }
      if (local_3c[0] == '\0') {
        if (DAT_00c7de78 == 0) {
          puVar15 = &DAT_00c7f618;
        }
        else {
          puVar15 = (uint *)(DAT_00c7de78 + 0x30);
        }
        if (local_38 != 0) {
          uVar12 = *(uint *)(local_38 + -4);
          uVar4 = *puVar15;
          *puVar15 = *puVar15 - uVar12;
          puVar15[1] = puVar15[1] - (uint)(uVar4 < uVar12);
          free((void *)(local_38 + -4));
        }
        local_8 = 0xffffffff;
      }
    }
    if ((0xb4 < param_1[0x104]) && (!bVar16)) {
      param_1[0x2d9] = 3;
      param_1[0x104] = 0;
    }
  }
LAB_004d5f35:
  switch(param_1[0x2f0]) {
  case 1:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 != (byte **)0x0) {
      ppbVar11 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar11 = (byte **)*ppbVar10;
      }
      pcVar14 = "Heartbeat1";
      do {
        bVar1 = *(byte *)ppbVar11;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_004d5f82:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_004d5f87;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar11 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d5f82;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_004d5f87:
      if ((uVar4 == 0) && ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004d6218;
    }
    pcVar14 = "Heartbeat1";
    break;
  case 2:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 != (byte **)0x0) {
      ppbVar11 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar11 = (byte **)*ppbVar10;
      }
      pcVar14 = "Heartbeat2";
      do {
        bVar1 = *(byte *)ppbVar11;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_004d5fe2:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_004d5fe7;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar11 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d5fe2;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_004d5fe7:
      if ((uVar4 == 0) && ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004d6218;
    }
    pcVar14 = "Heartbeat2";
    break;
  case 3:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 != (byte **)0x0) {
      ppbVar11 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar11 = (byte **)*ppbVar10;
      }
      pcVar14 = "Heartbeat3";
      do {
        bVar1 = *(byte *)ppbVar11;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_004d6042:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_004d6047;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar11 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d6042;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_004d6047:
      if ((uVar4 == 0) && ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004d6218;
    }
    pcVar14 = "Heartbeat3";
    break;
  case 4:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 != (byte **)0x0) {
      ppbVar11 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar11 = (byte **)*ppbVar10;
      }
      pcVar14 = "HeartComedown";
      do {
        bVar1 = *(byte *)ppbVar11;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_004d60a2:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_004d60a7;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar11 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d60a2;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_004d60a7:
      if ((uVar4 == 0) && ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004d6218;
    }
    pcVar14 = "HeartComedown";
    break;
  case 5:
    if (param_1[0x1f] != 0) {
      ppbVar10 = (byte **)param_1[0x1f];
      if (*(char *)(param_1 + 0x23) == '\0') {
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar10 = (byte **)*ppbVar10;
        }
        pcVar14 = "HeartRetracted";
        do {
          bVar1 = *(byte *)ppbVar10;
          bVar16 = bVar1 < (byte)*pcVar14;
          if (bVar1 != *pcVar14) goto LAB_004d6140;
          if (bVar1 == 0) goto LAB_004d613c;
          bVar1 = *(byte *)((int)ppbVar10 + 1);
          bVar16 = bVar1 < ((byte *)pcVar14)[1];
          if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d6140;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pcVar14 = (char *)((byte *)pcVar14 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
      }
      else {
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar10 = (byte **)*ppbVar10;
        }
        pcVar14 = "HeartHidingHeartbeat";
        do {
          bVar1 = *(byte *)ppbVar10;
          bVar16 = bVar1 < (byte)*pcVar14;
          if (bVar1 != *pcVar14) goto LAB_004d6140;
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar10 + 1);
          bVar16 = bVar1 < ((byte *)pcVar14)[1];
          if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d6140;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pcVar14 = (char *)((byte *)pcVar14 + 2);
        } while (bVar1 != 0);
LAB_004d613c:
        uVar4 = 0;
      }
      goto LAB_004d6145;
    }
    goto LAB_004d61a3;
  default:
    goto LAB_004d6218;
  }
LAB_004d61fd:
  cVar2 = FUN_0040a5d0(pcVar14,1);
  if (cVar2 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x23) = 1;
  }
LAB_004d6218:
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    ppiVar19 = DAT_00baa528;
    if ((param_1[0x319] == 0x12) || (ppiVar19 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
      local_50 = ppiVar19;
    }
    local_14 = (int **)0x55;
    FUN_00956780();
    FUN_0092dc30(local_14,0x3f800000,2,0,local_50,0);
    local_14 = (int **)0x0;
    local_48 = *(int ***)(DAT_00c71678 + 0x18300);
    if (*(int *)((int)local_48 + 0x1264) != 0) {
      do {
        piVar7 = *(int **)(*(int *)((int)local_48 + 0x125c) + (int)local_14 * 4);
        if ((((*(int *)(DAT_00c71678 + 0x26614) < 2) || (piVar7[10] != 1)) &&
            (0x3dd < piVar7[10] - 10U)) ||
           (((cVar2 = (**(code **)(*piVar7 + 0x48))(), cVar2 == '\0' || (piVar7[10] == 0x362)) ||
            ((piVar7[0x5a] & 0x20000000U) != 0)))) {
          bVar16 = false;
        }
        else {
          bVar16 = true;
        }
        if (bVar16) {
          local_6c = param_1[0xcf];
          local_68 = param_1[0xd0];
          local_30 = *(int ***)(*piVar7 + 0x24);
          local_7c = param_1[10];
          local_78 = param_1[0xb];
          local_74 = param_1[0xd];
          local_70 = param_1[0xe];
          local_64 = param_1[0xd8];
          local_60 = param_1[0xd9];
          if ((param_1[0x5a] & 0x20000000U) == 0) {
            uVar4 = 0;
          }
          else {
            uVar4 = 2;
          }
          if ((param_1[0x5b] & 0x400000U) == 0) {
            uVar12 = 0;
          }
          else {
            uVar12 = 4;
          }
          local_5c = uVar12 | uVar4 | (uint)((param_1[0x5a] & 0x100U) != 0);
          local_58 = param_1;
          (*(code *)local_30)(&local_7c);
        }
        local_14 = (int **)((int)local_14 + 1);
      } while (local_14 < *(int ***)((int)local_48 + 0x1264));
    }
    if ((int *)param_1[0xf0] != (int *)0x0) {
      local_a4 = 0;
      local_a0 = 0;
      local_90 = DAT_00c7b644;
      local_88 = DAT_00c7b644;
      local_9c = 0;
      local_98 = 0;
      local_94 = DAT_00c7b640;
      local_8c = DAT_00c7b640;
      local_84 = 0;
      local_80 = 0;
      (**(code **)(*(int *)param_1[0xf0] + 0x24))(&local_a4);
    }
    iVar13 = DAT_00c71678;
    iVar3 = *(int *)(DAT_00c71678 + 0x18300);
    *(undefined4 *)(iVar3 + 0x7214) = 0x1e;
    *(undefined4 *)(iVar3 + 0x7218) = 7;
    if (((*(int *)(iVar13 + 4) == 4) || (*(int *)(iVar13 + 4) == 5)) &&
       (((param_1[0x5a] & 0x20000000U) == 0 && (*(int *)(DAT_00c71678 + 0x18304) == -10)))) {
      FUN_004d64f0();
    }
  }
  param_1[0x104] = param_1[0x104] + local_54;
  ExceptionList = local_10;
  return;
LAB_004d6140:
  uVar4 = -(uint)bVar16 | 1;
LAB_004d6145:
  if (uVar4 == 0) {
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 != (byte **)0x0) {
      ppbVar11 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar11 = (byte **)*ppbVar10;
      }
      pcVar14 = "HeartHidingHeartbeat";
      do {
        bVar1 = *(byte *)ppbVar11;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_004d6180:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_004d6185;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar11 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d6180;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_004d6185:
      if ((uVar4 == 0) && ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004d6218;
    }
    pcVar14 = "HeartHidingHeartbeat";
  }
  else {
LAB_004d61a3:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 != (byte **)0x0) {
      ppbVar11 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar11 = (byte **)*ppbVar10;
      }
      pcVar14 = "HeartRetracted";
      do {
        bVar1 = *(byte *)ppbVar11;
        bVar16 = bVar1 < (byte)*pcVar14;
        if (bVar1 != *pcVar14) {
LAB_004d61e0:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_004d61e5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar11 + 1);
        bVar16 = bVar1 < ((byte *)pcVar14)[1];
        if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_004d61e0;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_004d61e5:
      if ((uVar4 == 0) && ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      goto LAB_004d6218;
    }
    pcVar14 = "HeartRetracted";
  }
  goto LAB_004d61fd;
}

