/* Local J460 decompiler output.
 * VA: 0x00564f30
 * Entry: 00564f30
 * Dispatcher: 0x006c2990
 * Types: 815
 * Identities: 815.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00565680; instructions=443
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=815; identities=815.0.0; dispatcher=0x006c2990;
   end=0x00565680; instructions=443 */

void __fastcall AI_00564f30(int *param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  int iVar4;
  float *pfVar5;
  undefined4 uVar6;
  byte **ppbVar7;
  uint uVar8;
  byte *pbVar9;
  bool bVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float local_38;
  float local_34;
  undefined local_30 [4];
  int local_2c;
  float local_28;
  int local_24;
  uint local_20;
  float local_1c;
  float local_18;
  float local_14;
  
  if (param_1[0x2d9] != 0) {
    if (param_1[0x2d9] != 6) {
      return;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    local_18 = (float)param_1[0xcd];
    if (((NAN(local_18) || NAN(DAT_00c7b640)) == (local_18 == DAT_00c7b640)) ||
       ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644)))
    {
      local_14 = (float)param_1[0xce];
    }
    else {
      iVar4 = FUN_006eef60();
      local_1c = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
      local_1c = local_1c + local_1c;
      fVar11 = local_1c;
      FUN_0041d540();
      local_18 = fVar11 * DAT_00baa75c;
      fVar11 = local_1c;
      FUN_0041d520();
      fVar11 = fVar11 * DAT_00baa75c;
      param_1[0xd8] = (int)local_18;
      param_1[0xd9] = (int)fVar11;
      local_14 = DAT_00baa454;
      fVar11 = DAT_00baa630;
      FUN_00435a50();
      if (0.0 < fVar11) {
        local_14 = DAT_00baa454 / fVar11;
      }
      local_18 = local_14 * DAT_00baa3a4;
      param_1[0xcd] = (int)local_18;
      param_1[0xce] = (int)local_18;
      local_14 = local_18;
    }
    if (((float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0) != local_18 < 0.0) {
      local_18 = (float)((uint)local_18 ^ DAT_00bacb70);
    }
    if (((float)param_1[0xd9] <= 0.0 && (float)param_1[0xd9] != 0.0) != local_14 < 0.0) {
      local_14 = (float)((uint)local_14 ^ DAT_00bacb70);
    }
    fVar11 = local_18;
    fVar12 = local_14;
    if (param_1[0x3c7] != -1) {
      pfVar5 = (float *)FUN_006d82d0(local_30);
      fVar11 = local_18 * local_18 + local_14 * local_14;
      FUN_00435a50();
      fVar12 = fVar11 * DAT_00baa2d0 * pfVar5[1] + local_14;
      fVar11 = fVar11 * DAT_00baa2d0 * *pfVar5 + local_18;
    }
    fVar13 = (float)param_1[0xdb];
    if (NAN(fVar13) == (fVar13 == 0.0)) {
      param_1[0xd9] = (int)(((float)param_1[0xe7] * fVar12) / fVar13 + (float)param_1[0xd9]);
      param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar11) / fVar13 + (float)param_1[0xd8]);
    }
    if (((param_1[0x5a] & 0x1000800U) != 0) && (param_1[0x3c7] == -1)) {
      iVar4 = FUN_006be840();
      local_14 = (float)((uint)(*(float *)(iVar4 + 0x340) - (float)param_1[0xd0]) ^ DAT_00bacb70);
      local_18 = (float)((uint)(*(float *)(iVar4 + 0x33c) - (float)param_1[0xcf]) ^ DAT_00bacb70);
      fVar12 = local_14 * local_14 + local_18 * local_18;
      FUN_00435a50();
      fVar11 = local_18;
      if (0.0 < fVar12) {
        fVar13 = (DAT_00baaa00 - fVar12) * DAT_00baa08c;
        if (fVar13 <= 0.0) {
          fVar13 = 0.0;
        }
        if (DAT_00baa454 <= fVar13) {
          fVar13 = DAT_00baa454;
        }
        fVar11 = local_18 * (fVar13 / fVar12);
        local_14 = local_14 * (fVar13 / fVar12);
      }
      fVar12 = (float)param_1[0xdb];
      if (NAN(fVar12) == (fVar12 == 0.0)) {
        param_1[0xd9] = (int)(((float)param_1[0xe7] * local_14) / fVar12 + (float)param_1[0xd9]);
        param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar11) / fVar12 + (float)param_1[0xd8]);
      }
    }
    local_14 = (float)param_1[0x2ed];
    fVar11 = DAT_00baa258;
    if (param_1[0x61] == 7) {
      fVar11 = DAT_00baa17c;
    }
    fVar12 = (float)param_1[0xe7] * fVar11 + (float)param_1[0x2ec];
    param_1[0x2ec] = (int)fVar12;
    fVar11 = fVar12 * (float)param_1[0xe7] + local_14;
    param_1[0x2ed] = (int)fVar11;
    param_1[0xd4] = (int)fVar11;
    if (param_1[0x61] != 7) {
      if ((DAT_00baada8 < fVar11) && (0.0 < fVar12)) {
        local_38 = (float)param_1[0xcf];
        local_34 = (float)param_1[0xd0];
        iVar4 = FUN_007f0780(local_38,local_34);
        if (iVar4 == 1) {
          local_38 = DAT_00c3793c * DAT_00baa868;
          local_34 = DAT_00c37940 * DAT_00baa868;
          FUN_006b68c0(param_1 + 0xcf,&local_38);
          param_1[0x61] = 7;
        }
        else if ((float)param_1[0xe9] <= DAT_00baaa78) {
          param_1[0x2ed] = -0x3f400000;
          param_1[0x2ec] = -0x3f600000;
          local_38 = DAT_00c3793c * DAT_00baa868;
          local_34 = DAT_00c37940 * DAT_00baa868;
          FUN_006b68c0(param_1 + 0xcf,&local_38);
          FUN_006d6ba0(0x102,0x3f800000,2,0,0x3f800000);
        }
        else {
          uVar6 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar6);
        }
      }
    }
    else if (DAT_00baa8d0 < fVar11) {
      (**(code **)(*param_1 + 0x28))();
    }
    iVar4 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
    local_2c = 0;
    if (iVar4 < 1) {
      return;
    }
    local_34 = (float)iVar4;
    do {
      local_2c = local_2c + 1;
      local_18 = (float)param_1[0x304];
      local_24 = param_1[0xd8];
      local_28 = ((float)param_1[0x2ed] - local_14) * ((float)local_2c / local_34) + local_14;
      if ((((uint)local_18 & 1) == 0) && ((uint)param_1[0x303] <= param_1[0x305] + 2U >> 1)) {
        FUN_00499410(iVar4);
        local_18 = (float)param_1[0x304];
      }
      uVar8 = param_1[0x303] * 2;
      local_20 = uVar8 - 1 & (uint)local_18;
      param_1[0x304] = local_20;
      if (local_20 == 0) {
        local_20 = uVar8;
      }
      local_20 = local_20 - 1;
      local_18 = (float)(local_20 >> 1 & param_1[0x303] - 1U);
      local_1c = (float)param_1[0x302];
      if (*(int *)((int)local_1c + (int)local_18 * 4) == 0) {
        uVar6 = FUN_00a0f4c0(0x10);
        *(undefined4 *)(param_1[0x302] + (int)local_18 * 4) = uVar6;
        local_1c = (float)param_1[0x302];
      }
      iVar4 = *(int *)((int)local_1c + (int)local_18 * 4);
      *(int *)(iVar4 + (local_20 & 1) * 8) = local_24;
      *(float *)(iVar4 + 4 + (local_20 & 1) * 8) = local_28;
      param_1[0x305] = param_1[0x305] + 1;
      param_1[0x304] = local_20;
      uVar8 = param_1[0x305];
      do {
        if (uVar8 < 0x15) goto LAB_00565560;
        uVar8 = uVar8 - 1;
        param_1[0x305] = uVar8;
      } while (uVar8 != 0);
      param_1[0x304] = 0;
LAB_00565560:
      iVar4 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
      if (iVar4 <= local_2c) {
        return;
      }
    } while( true );
  }
  param_1[0x2ec] = -0x3f400000;
  param_1[0x2ed] = 0x41200000;
  param_1[0xd4] = 0x41200000;
  param_1[0x2d9] = 6;
  ppbVar2 = (byte **)param_1[0x1f];
  if (ppbVar2 != (byte **)0x0) {
    ppbVar7 = ppbVar2;
    if (&DAT_0000000f < ppbVar2[5]) {
      ppbVar7 = (byte **)*ppbVar2;
    }
    pbVar9 = &DAT_00b1bc54;
    do {
      bVar1 = *(byte *)ppbVar7;
      bVar10 = bVar1 < *pbVar9;
      if (bVar1 != *pbVar9) {
LAB_005655f0:
        uVar8 = -(uint)bVar10 | 1;
        goto LAB_005655f5;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar7 + 1);
      bVar10 = bVar1 < pbVar9[1];
      if (bVar1 != pbVar9[1]) goto LAB_005655f0;
      ppbVar7 = (byte **)((int)ppbVar7 + 2);
      pbVar9 = pbVar9 + 2;
    } while (bVar1 != 0);
    uVar8 = 0;
LAB_005655f5:
    if ((uVar8 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
    goto LAB_0056562c;
  }
  cVar3 = FUN_0040a5d0(&DAT_00b1bc54,1);
  if (cVar3 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x23) = 1;
  }
LAB_0056562c:
  local_34 = (float)param_1[0x2ed];
  local_38 = 0.0;
  FUN_00499190(&local_38);
  local_34 = (float)param_1[0x2ed];
  local_38 = 0.0;
  FUN_00499190(&local_38);
  return;
}

