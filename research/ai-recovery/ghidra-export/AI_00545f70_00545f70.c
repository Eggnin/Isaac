/* Local J460 decompiler output.
 * VA: 0x00545f70
 * Entry: 00545f70
 * Dispatcher: 0x006c2990
 * Types: 308
 * Identities: 308.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0054612b; instructions=96
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=308; identities=308.0.0; dispatcher=0x006c2990;
   end=0x0054612b; instructions=96 */

void __fastcall AI_00545f70(int *param_1)

{
  int iVar1;
  code *pcVar2;
  char cVar3;
  float fVar4;
  float *pfVar5;
  undefined4 uVar6;
  int *piVar7;
  float extraout_ECX;
  float extraout_ECX_00;
  float extraout_ECX_01;
  float extraout_ECX_02;
  float extraout_ECX_03;
  float extraout_ECX_04;
  float extraout_ECX_05;
  float extraout_ECX_06;
  float extraout_ECX_07;
  float extraout_ECX_08;
  float extraout_ECX_09;
  float *extraout_ECX_10;
  float extraout_ECX_11;
  float extraout_ECX_12;
  float extraout_ECX_13;
  float extraout_ECX_14;
  float extraout_ECX_15;
  float extraout_ECX_16;
  float extraout_ECX_17;
  float extraout_ECX_18;
  float extraout_ECX_19;
  float extraout_ECX_20;
  uint uVar8;
  int iVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined8 uVar13;
  undefined4 uVar14;
  TypeDescriptor *pTVar15;
  TypeDescriptor *pTVar16;
  undefined4 uVar17;
  undefined4 local_148;
  undefined4 local_144;
  undefined4 local_140;
  undefined4 local_13c;
  float local_138;
  float local_134;
  float local_130;
  float local_12c;
  undefined4 local_128;
  undefined4 local_124;
  char local_120 [4];
  undefined8 local_11c;
  uint local_114;
  float local_110;
  float local_10c;
  float local_108;
  float local_104;
  undefined local_100 [4];
  float local_fc;
  char local_f8 [4];
  int local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  undefined local_e4 [4];
  float local_e0;
  float local_dc;
  float local_d8;
  char local_d1;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af48f0;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  if (((param_1[0xef] == 0) || (*(int **)(param_1[0xef] + 0x3c0) == param_1)) ||
     (local_d1 = '\x01', param_1[0x3c7] != -1)) {
    local_d1 = '\0';
  }
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 4;
    param_1[0x2f0] = 0;
    puStack_20 = &stack0xfffffffc;
    goto LAB_00547022;
  }
  fVar4 = (float)FUN_006be840(local_24);
  fVar11 = DAT_00baa2d0;
  fVar10 = (float)param_1[0x2d9];
  local_fc = fVar4;
  if (fVar10 == 5.605194e-45) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if (local_d1 == '\0') {
      local_dc = (float)param_1[0xfb];
      local_104 = (float)DAT_00b1f674;
      local_11c = DAT_00b1f66c;
      FUN_006bec40(&local_f0,0);
      iVar9 = param_1[0xef];
      if (iVar9 == 0) {
        local_e0 = local_ec;
        local_d8 = local_f0;
      }
      else {
        local_d8 = local_f0;
        local_e0 = local_ec;
        fVar10 = ((float)param_1[0xd0] - local_ec) * ((float)param_1[0xd0] - local_ec) +
                 ((float)param_1[0xcf] - local_f0) * ((float)param_1[0xcf] - local_f0);
        FUN_00435a50();
        if (DAT_00baaad4 < fVar10) {
          local_e0 = *(float *)(iVar9 + 0x340);
          local_d8 = *(float *)(iVar9 + 0x33c);
        }
      }
      if (local_dc == 0.0) {
        FUN_00a112c0(0x10,"RNG Seed is zero!\n");
        pcVar2 = (code *)swi(3);
        (*pcVar2)();
        return;
      }
      uVar8 = (uint)local_dc >> ((byte)local_11c & 0x1f) ^ (uint)local_dc;
      uVar8 = uVar8 << ((byte)((ulonglong)local_11c >> 0x20) & 0x1f) ^ uVar8;
      uVar8 = uVar8 >> (SUB41(local_104,0) & 0x1f) ^ uVar8;
      local_dc = (float)((double)uVar8 + (double)(&DAT_00bacb00)[-((int)uVar8 >> 0x1f)]) *
                 DAT_00ba9ff0;
      fVar10 = ((float)param_1[0xd0] - local_e0) * ((float)param_1[0xd0] - local_e0) +
               ((float)param_1[0xcf] - local_d8) * ((float)param_1[0xcf] - local_d8);
      FUN_00435a50();
      local_d8 = local_d8 - (float)param_1[0xcf];
      fVar10 = (fVar10 - DAT_00baaa94) / DAT_00baabb0;
      if (fVar10 <= DAT_00ba9fe4) {
        fVar10 = DAT_00ba9fe4;
      }
      if (DAT_00baa454 <= fVar10) {
        fVar10 = DAT_00baa454;
      }
      local_e8 = DAT_00baa904 - fVar10 * DAT_00baa904;
      local_e0 = local_e0 - (float)param_1[0xd0];
      fVar10 = local_e0 * local_e0 + local_d8 * local_d8;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar10) {
        local_d8 = (DAT_00baa454 / fVar10) * local_d8;
        local_e0 = local_e0 * (DAT_00baa454 / fVar10);
      }
      iVar9 = param_1[0x3c7];
      if (iVar9 != -1) {
        pfVar5 = (float *)FUN_006d82d0(&local_f0);
        iVar9 = param_1[0x3c7];
        local_d8 = *pfVar5;
        local_e0 = pfVar5[1];
        local_e8 = local_e8 * DAT_00baa2d0;
      }
      fVar10 = ((float)(*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]) / DAT_00baa950 + local_dc)
               * DAT_00baa7a8;
      FUN_0041d520();
      fVar10 = fVar10 * local_e8 * DAT_00baa088;
      local_dc = fVar10;
      FUN_0041d540();
      local_104 = fVar10;
      fVar10 = local_dc;
      FUN_0041d520();
      local_ec = fVar10 * local_d8 + local_104 * local_e0;
      local_10c = local_104 * local_d8 - fVar10 * local_e0;
      fVar10 = extraout_ECX_00;
      fVar11 = local_10c;
      fVar4 = local_ec;
      if (iVar9 == -1) {
        local_e8 = 0.0;
        local_dc = 0.0;
        local_104 = 0.0;
        FUN_006d0c60(local_120,param_1[10],param_1[0xb]);
        uVar8 = 0;
        fVar10 = extraout_ECX_01;
        if (local_114 != 0) {
          do {
            piVar7 = *(int **)((int)local_11c + uVar8 * 4);
            if (piVar7 != param_1) {
              local_d8 = (float)param_1[0xd0] - (float)piVar7[0xd0];
              local_e0 = (float)param_1[0xcf] - (float)piVar7[0xcf];
              fVar11 = local_d8 * local_d8 + local_e0 * local_e0;
              FUN_00435a50();
              fVar10 = extraout_ECX_02;
              if (DAT_00ba9fe4 < fVar11) {
                local_e8 = (float)((int)local_e8 + 1);
                fVar4 = fVar11 * DAT_00baa120 + DAT_00baa81c;
                local_104 = ((local_e0 / fVar11) / fVar4) * DAT_00baa81c + local_104;
                local_dc = ((local_d8 / fVar11) / fVar4) * DAT_00baa81c + local_dc;
              }
            }
            uVar8 = uVar8 + 1;
          } while (uVar8 < local_114);
        }
        local_e0 = local_10c;
        local_d8 = local_ec;
        if (0 < (int)local_e8) {
          local_e0 = local_104 / (float)(int)local_e8 + local_10c;
          local_d8 = local_dc / (float)(int)local_e8 + local_ec;
          fVar11 = local_e0 * local_e0 + local_d8 * local_d8;
          FUN_00435a50();
          fVar10 = extraout_ECX_03;
          if (DAT_00ba9fe4 < fVar11) {
            local_e0 = local_e0 * (DAT_00baa454 / fVar11);
            local_d8 = local_d8 * (DAT_00baa454 / fVar11);
          }
        }
        fVar11 = local_e0;
        fVar4 = local_d8;
        if (local_120[0] == '\0') {
          local_14 = 0;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
          fVar10 = extraout_ECX_04;
          fVar11 = local_e0;
          fVar4 = local_d8;
        }
      }
      fVar4 = fVar4 * DAT_00baa354;
      fVar11 = fVar11 * DAT_00baa354 * (float)param_1[0xe7] + (float)param_1[0xd8];
      param_1[0xd8] = (int)fVar11;
      param_1[0xd9] = (int)(fVar4 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      fVar4 = local_fc;
    }
    else {
      fVar11 = (float)param_1[0xd8];
      fVar10 = extraout_ECX;
    }
    *(bool *)(param_1 + 0x52) = DAT_00ba9fe4 < fVar11;
    fVar11 = DAT_00baa2d0;
    if ((param_1[0x5a] & 0x1000a00U) == 0) {
      if (param_1[0x2f0] < 1) {
        if (param_1[0x3c7] == -1) {
          iVar9 = param_1[0xf2];
          if ((((iVar9 == 0) || (*(int *)(iVar9 + 0x28) != 0x19d)) || (*(int *)(iVar9 + 0xb64) != 9)
              ) && (fVar12 = (float)param_1[0xcf] - *(float *)((int)fVar4 + 0x33c),
                   fVar4 = (float)param_1[0xd0] - *(float *)((int)fVar4 + 0x340),
                   fVar4 * fVar4 + fVar12 * fVar12 < DAT_00baac34)) {
            uVar8 = FUN_006eef60();
            fVar10 = 7.006492e-45;
            fVar11 = DAT_00baa2d0;
            if (uVar8 % 5 == 0) goto LAB_005466bd;
          }
        }
        else {
          cVar3 = FUN_006cae60(0,7);
          fVar10 = extraout_ECX_05;
          fVar11 = DAT_00baa2d0;
          if (cVar3 != '\0') {
LAB_005466bd:
            pfVar5 = (float *)(param_1 + 0x3c8);
            if (param_1[0x3c7] == -1) {
              *pfVar5 = DAT_00c7b640;
              fVar10 = DAT_00c7b644;
            }
            else {
              FUN_006d85a0(&local_f0);
              *pfVar5 = local_f0;
              fVar10 = local_ec;
            }
            param_1[0x3c9] = (int)fVar10;
            param_1[0x2d9] = 8;
            FUN_0040a380("Attack",0);
            fVar10 = extraout_ECX_06;
            if ((param_1[0x3c7] == -1) ||
               (cVar3 = FUN_00a10630(&DAT_00c7b640), fVar10 = extraout_ECX_07, cVar3 == '\0')) {
              *(bool *)(param_1 + 0x52) = DAT_00ba9fe4 < *pfVar5;
              fVar11 = DAT_00baa2d0;
            }
            else {
              *(bool *)(param_1 + 0x52) =
                   (float)param_1[0xcf] <= *(float *)((int)local_fc + 0x33c) &&
                   *(float *)((int)local_fc + 0x33c) != (float)param_1[0xcf];
              fVar11 = DAT_00baa2d0;
            }
          }
        }
      }
      else {
        fVar10 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
        param_1[0x2f0] = param_1[0x2f0] - (int)fVar10;
        fVar11 = DAT_00baa2d0;
      }
    }
  }
  else if (fVar10 == 1.121039e-44) {
    FUN_006d9050(0);
    fVar10 = extraout_ECX_08;
    if ((param_1[0x1f] != 0) &&
       (cVar3 = FUN_0040add0("Shoot"), fVar10 = extraout_ECX_09, cVar3 != '\0')) {
      FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
      local_f0 = *(float *)((int)local_fc + 0x33c) - (float)param_1[0xcf];
      local_ec = *(float *)((int)local_fc + 0x340) - (float)param_1[0xd0];
      FUN_00a10030(&local_110);
      local_dc = local_10c;
      if ((param_1[0x3c7] != -1) &&
         (cVar3 = FUN_00a10630(&DAT_00c7b640), local_dc = local_10c, cVar3 != '\0')) {
        local_110 = *extraout_ECX_10;
        local_dc = extraout_ECX_10[1];
      }
      param_1[0x2ee] = (int)local_110;
      param_1[0x2ef] = (int)local_dc;
      local_fc = local_110;
      uVar6 = AI_0043ef30();
      local_108 = local_fc * DAT_00baa81c;
      local_104 = local_dc * DAT_00baa81c;
      FUN_006cb2e0(param_1 + 0xcf,&local_108,0,uVar6);
      *(bool *)(param_1 + 0x52) = DAT_00ba9fe4 < local_fc;
      fVar10 = extraout_ECX_11;
    }
    if (local_d1 == '\0') {
      if (param_1[0x1f] != 0) {
        cVar3 = FUN_0040ae70("Shoot");
        fVar10 = extraout_ECX_12;
        if (cVar3 != '\0') {
          fVar11 = (float)(param_1[0x2ef] ^ DAT_00bacb70) * DAT_00baa4b0;
          param_1[0xd8] =
               (int)((float)(param_1[0x2ee] ^ DAT_00bacb70) * DAT_00baa4b0 * (float)param_1[0xe7] +
                    (float)param_1[0xd8]);
          param_1[0xd9] = (int)(fVar11 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        }
        goto LAB_0054695e;
      }
    }
    else {
LAB_0054695e:
      if ((param_1[0x1f] != 0) && (fVar11 = DAT_00baa2d0, *(char *)(param_1 + 0x23) != '\0'))
      goto LAB_00546aa6;
    }
    param_1[0x2d9] = 4;
    param_1[0x2f0] = 0x1e;
    fVar11 = DAT_00baa2d0;
  }
  else if (fVar10 == 7.006492e-45) {
    param_1[0x62] = 0;
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xdb] = (int)((float)param_1[0xdb] * fVar11);
    if ((param_1[0x1f] != 0) &&
       (cVar3 = FUN_0040add0("Shoot"), fVar10 = extraout_ECX_13, fVar11 = DAT_00baa2d0,
       cVar3 != '\0')) {
      cVar3 = FUN_00417430(0x1000000,0);
      if (cVar3 == '\0') {
        uVar6 = FUN_006eef60();
        local_f0 = (float)param_1[0x2ec] * DAT_00baa834;
        local_ec = (float)param_1[0x2ed] * DAT_00baa834;
        uVar17 = 0;
        pTVar16 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar15 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar14 = 0;
        uVar6 = FUN_00428b20(0x27,0x16,param_1 + 0xcf,&local_f0,param_1,1,uVar6);
        piVar7 = (int *)__RTDynamicCast(uVar6,uVar14,pTVar15,pTVar16,uVar17);
        piVar7[0x2d9] = 0;
        (**(code **)(*piVar7 + 0xc))();
      }
      uVar13 = FUN_00435c70();
      (*(code *)((ulonglong)uVar13 >> 0x20))((int)uVar13);
      fVar10 = extraout_ECX_14;
      fVar11 = DAT_00baa2d0;
    }
  }
LAB_00546aa6:
  iVar9 = DAT_00c7169c;
  if (local_d1 == '\0') {
    param_1[0x61] = 3;
    param_1[0xdb] = 0x3f666666;
  }
  else {
    iVar1 = param_1[0xef];
    param_1[0x61] = 0;
    uVar8 = *(uint *)(iVar9 + 0x4abbc) & 0x80000001;
    if ((int)uVar8 < 0) {
      uVar8 = (uVar8 - 1 | 0xfffffffe) + 1;
    }
    local_ec = (float)param_1[0x2ec] -
               ((float)uVar8 * fVar11 + (float)*(int *)(DAT_00c71678 + 0x264f8)) * fVar11 *
               DAT_00baa708 * _DAT_00baa0b8;
    fVar10 = local_ec;
    FUN_0041d520();
    local_e0 = fVar10 * DAT_00baa9b4 * DAT_00baa3c0;
    fVar10 = local_ec;
    FUN_0041d540();
    local_ec = *(float *)(iVar1 + 0x360);
    local_10c = *(float *)(iVar1 + 0x364);
    local_e0 = ((local_e0 + *(float *)(iVar1 + 0x340)) - (local_10c + (float)param_1[0xd0])) *
               DAT_00baa2d0;
    local_fc = ((fVar10 * DAT_00baa9b4 + *(float *)(iVar1 + 0x33c)) -
               (local_ec + (float)param_1[0xcf])) * DAT_00baa2d0;
    fVar4 = local_fc * local_fc + local_e0 * local_e0;
    FUN_00435a50();
    fVar11 = local_fc;
    fVar10 = local_e0;
    if ((DAT_00baa81c < fVar4) && (DAT_00ba9fe4 < fVar4)) {
      fVar11 = local_fc * (DAT_00baa81c / fVar4);
      fVar10 = local_e0 * (DAT_00baa81c / fVar4);
    }
    param_1[0xd8] = (int)((local_ec + fVar11) / (float)param_1[0xdb]);
    param_1[0xd9] = (int)((local_10c + fVar10) / (float)param_1[0xdb]);
    fVar10 = extraout_ECX_15;
  }
  if (((*(char *)(param_1 + 0x5d) != '\0') &&
      (cVar3 = FUN_006ac710(4,0), fVar10 = extraout_ECX_16, cVar3 != '\0')) &&
     (uVar8 = FUN_006eef60(), fVar10 = extraout_ECX_17, (uVar8 & 1) == 0)) {
    uVar13 = FUN_00435c70();
    (*(code *)((ulonglong)uVar13 >> 0x20))((float)param_1[0xe1] * DAT_00baa280,0,0,(int)uVar13,0x1e)
    ;
    fVar10 = extraout_ECX_18;
  }
  if (((*(char *)((int)param_1 + 0x173) == '\0') && (iVar9 = param_1[0xef], iVar9 != 0)) &&
     ((*(int *)(iVar9 + 0x28) == 0x19d && (*(int **)(iVar9 + 0x3c0) == param_1)))) {
    FUN_0041a790(local_f8,param_1 + 0xcf,2);
    local_14 = 1;
    fVar10 = 0.0;
    if (local_ec != 0.0) {
      do {
        iVar9 = *(int *)(local_f4 + (int)fVar10 * 4);
        if ((*(int *)(iVar9 + 0x34) == 0x19d) && ((*(uint *)(iVar9 + 0x438) & 0x100) != 0)) {
          pcVar2 = *(code **)(*param_1 + 0x20);
          FUN_00431310(iVar9);
          (*pcVar2)(param_1[0xe1],0,0,&local_148,0x1e);
          fVar10 = extraout_ECX_19;
          break;
        }
        fVar10 = (float)((int)fVar10 + 1);
      } while ((uint)fVar10 < (uint)local_ec);
    }
    local_14 = 0xffffffff;
    if (local_f8[0] == '\0') {
      local_14 = 2;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
      fVar10 = extraout_ECX_20;
    }
  }
  if (((param_1[0x3c7] != -1) &&
      (cVar3 = FUN_00956110(9,param_1[0x3c7],param_1,fVar10), cVar3 != '\0')) &&
     (param_1[0x2d9] != 5)) {
    local_148 = 0;
    local_144 = 0;
    local_140 = 0;
    local_13c = 0;
    local_138 = DAT_00c7b640;
    local_134 = DAT_00c7b644;
    local_130 = DAT_00c7b640;
    local_12c = DAT_00c7b644;
    local_128 = 0;
    local_124 = 0;
    (**(code **)(*param_1 + 0x24))(&local_148);
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (local_d1 != '\0') {
      FUN_00547040();
    }
    iVar9 = param_1[0xef];
    if ((iVar9 != 0) && (*(int *)(iVar9 + 0x28) == 0x19d)) {
      *(int *)(iVar9 + 0xbc0) = *(int *)(iVar9 + 0xbc0) + 0x96;
    }
    if (((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0x2d9] != 5)) &&
       (param_1[0x2d9] != 0x12)) {
      pfVar5 = (float *)FUN_006bec40(&local_110,0);
      local_ec = *pfVar5 - (float)param_1[0xcf];
      local_10c = pfVar5[1] - (float)param_1[0xd0];
      fVar10 = local_ec;
      fVar11 = local_10c;
      if (param_1[0x3c7] != -1) {
        FUN_006d82d0(local_100);
        cVar3 = FUN_00a10630(&DAT_00c7b640);
        fVar10 = local_ec;
        fVar11 = local_10c;
        if (cVar3 != '\0') {
          pfVar5 = (float *)FUN_006d82d0(local_e4);
          fVar10 = *pfVar5;
          fVar11 = pfVar5[1];
        }
      }
      fVar4 = 0.0;
      if ((float)((uint)fVar10 & DAT_00bacb40) <= (float)((uint)fVar11 & DAT_00bacb40)) {
        fVar12 = 0.0;
        fVar4 = DAT_00baad50;
        if (0.0 < fVar11) {
          fVar4 = DAT_00baa454;
        }
      }
      else {
        fVar12 = DAT_00baad50;
        if (0.0 < fVar10) {
          fVar12 = DAT_00baa454;
        }
      }
      param_1[0x2ec] = (int)fVar12;
      param_1[0x2ed] = (int)fVar4;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      FUN_0040a380("Eject",0);
      param_1[0x2d9] = 5;
      FUN_006ae630();
      *(undefined *)(param_1 + 0xec) = 1;
      *(undefined *)((int)param_1 + 0x173) = 0;
      param_1[0xe0] = 0x3dcccccd;
      param_1[0x104] = -1;
    }
  }
LAB_00547022:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

