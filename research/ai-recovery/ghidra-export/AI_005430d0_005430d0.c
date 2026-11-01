/* Local J460 decompiler output.
 * VA: 0x005430d0
 * Entry: 005430d0
 * Dispatcher: 0x006c2990
 * Types: 303
 * Identities: 303.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00543720; instructions=380
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=303; identities=303.0.0; dispatcher=0x006c2990;
   end=0x00543720; instructions=380 */

uint __fastcall AI_005430d0(float *param_1)

{
  char cVar1;
  uint uVar2;
  float fVar3;
  uint *puVar4;
  float *pfVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  float fVar10;
  float **ppfVar11;
  float **ppfVar12;
  float **local_28 [2];
  float **local_20;
  float local_1c;
  float local_18;
  float local_14;
  undefined local_10 [12];
  
  fVar3 = param_1[0x2d9];
  if (fVar3 == 0.0) {
    param_1[0x2d9] = 5.605194e-45;
    uVar2 = FUN_006eef60();
    param_1[0x104] = (float)(uVar2 % 0x1e);
    return uVar2 / 0x1e;
  }
  if (fVar3 == 5.605194e-45) {
    FUN_0040a380(&DAT_00b1bc54,0);
    fVar3 = (float)(int)param_1[0xe9];
    pfVar5 = param_1 + 0x104;
    *pfVar5 = (float)((int)*pfVar5 + ((int)param_1[0xe8] - (int)fVar3));
    if (((int)*pfVar5 < 0) || (param_1[0x3c7] != -NAN)) {
      fVar3 = param_1[0xf0];
      if (fVar3 == 0.0) {
        fVar3 = (float)FUN_006be840();
      }
      fVar10 = DAT_00bacb70;
      ppfVar12 = (float **)(param_1[0xcf] - *(float *)((int)fVar3 + 0x33c));
      ppfVar11 = (float **)(param_1[0xd0] - *(float *)((int)fVar3 + 0x340));
      if (param_1[0x3c7] == -NAN) {
        if ((float)((uint)ppfVar12 & DAT_00bacb40) <= (float)((uint)ppfVar11 & DAT_00bacb40)) {
          local_28[0] = (float **)0x0;
          param_1[0xcd] = DAT_00bacb70 * DAT_00baa198;
          if ((float)ppfVar11 <= 0.0) {
            local_20 = DAT_00baae28;
            if ((float)DAT_00baae28 <= (float)ppfVar11) {
              local_20 = ppfVar11;
            }
          }
          else {
            local_20 = DAT_00baa904;
            if ((float)ppfVar11 <= (float)DAT_00baa904) {
              local_20 = ppfVar11;
            }
          }
          fVar10 = (float)((uint)local_20 ^ (uint)fVar10);
        }
        else {
          local_20 = (float **)0x0;
          if ((float)ppfVar12 <= 0.0) {
            local_28[0] = DAT_00baae28;
            if ((float)DAT_00baae28 <= (float)ppfVar12) {
              local_28[0] = ppfVar12;
            }
          }
          else {
            local_28[0] = DAT_00baa904;
            if ((float)ppfVar12 <= (float)DAT_00baa904) {
              local_28[0] = ppfVar12;
            }
          }
          param_1[0xcd] = (float)((uint)local_28[0] ^ (uint)DAT_00bacb70) * DAT_00baa198;
          fVar10 = DAT_00bacb70;
        }
        param_1[0xce] = fVar10 * DAT_00baa198;
LAB_0054334f:
        uVar2 = FUN_006eef60();
        cVar1 = (char)(uVar2 / 10);
        if (uVar2 % 10 == 0) {
LAB_00543365:
          if (param_1[0xf0] == 0.0) {
            param_1[0x2d9] = 1.121039e-44;
            FUN_0040a380("Attack",0);
            pfVar5 = (float *)FUN_006d85a0(&local_18);
            if ((NAN(*pfVar5) || NAN(DAT_00c7b640)) != (*pfVar5 == DAT_00c7b640)) {
              fVar10 = pfVar5[1];
              fVar3 = (float)(uint)CONCAT11((fVar10 == DAT_00c7b644) << 6 |
                                            (NAN(fVar10) || NAN(DAT_00c7b644)) << 2 | 2U |
                                            fVar10 < DAT_00c7b644,(char)pfVar5);
              if ((NAN(fVar10) || NAN(DAT_00c7b644)) != (fVar10 == DAT_00c7b644)) goto LAB_0054326e;
            }
            pfVar5 = (float *)FUN_006d85a0(local_28);
            param_1[0xcd] = *pfVar5;
            fVar3 = pfVar5[1];
            param_1[0xce] = fVar3;
            goto LAB_0054326e;
          }
        }
      }
      else {
        puVar4 = (uint *)FUN_006d82d0(&local_18);
        local_28[0] = (float **)((float)(*puVar4 ^ (uint)DAT_00bacb70) * (float)DAT_00baa904);
        local_20 = (float **)((float)(puVar4[1] ^ (uint)DAT_00bacb70) * (float)DAT_00baa904);
        fVar3 = (float)((uint)local_20 ^ (uint)DAT_00bacb70) * DAT_00baa198;
        param_1[0xcd] = (float)((uint)local_28[0] ^ (uint)DAT_00bacb70) * DAT_00baa198;
        param_1[0xce] = fVar3;
        if (param_1[0x3c7] == -NAN) goto LAB_0054334f;
        cVar1 = FUN_006cae60(0,7);
        if ((cVar1 != '\0') || (cVar1 = FUN_006d8260(9), cVar1 != '\0')) goto LAB_00543365;
      }
      if (((NAN((float)local_28[0]) || NAN(DAT_00c7b640)) == ((float)local_28[0] == DAT_00c7b640))
         || (fVar3 = (float)(uint)CONCAT11(((float)local_20 == DAT_00c7b644) << 6 |
                                           (NAN((float)local_20) || NAN(DAT_00c7b644)) << 2 | 2U |
                                           (float)local_20 < DAT_00c7b644,cVar1),
            (NAN((float)local_20) || NAN(DAT_00c7b644)) == ((float)local_20 == DAT_00c7b644))) {
        param_1[0x2d9] = 8.407791e-45;
        fVar3 = (float)FUN_0040a380(&DAT_00b1de1c,0);
      }
    }
LAB_0054326e:
    fVar10 = param_1[0xdb] * DAT_00baa304;
  }
  else if (fVar3 == 8.407791e-45) {
    if (param_1[0x1f] == 0.0) {
      iVar9 = 0;
    }
    else {
      iVar9 = *(int *)((int)param_1[0x1f] + 0x30);
    }
    iVar6 = FUN_0040a780();
    fVar3 = DAT_00baa454 - (float)iVar6 / (float)iVar9;
    param_1[0xd9] = fVar3 * param_1[0xce];
    param_1[0xd8] = fVar3 * param_1[0xcd];
    if (param_1[0x1f] == 0.0) {
LAB_00543497:
      param_1[0x2d9] = 5.605194e-45;
      uVar2 = FUN_006eef60();
      fVar3 = (float)(uVar2 / 0x1e);
      param_1[0x104] = (float)(uVar2 % 0x1e);
    }
    else {
      fVar3 = (float)FUN_0040add0(&DAT_00b1d574);
      if (SUB41(fVar3,0) != '\0') {
        fVar3 = (float)FUN_006d6ba0(0x45,0x3f800000,2,0,0x3f800000);
      }
      if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_00543497;
    }
    fVar10 = param_1[0xdb] * DAT_00baa3e0;
  }
  else {
    if (fVar3 != 1.121039e-44) goto LAB_00543664;
    if (param_1[0x1f] == 0.0) {
LAB_0054362e:
      param_1[0x2d9] = 5.605194e-45;
      uVar2 = FUN_006eef60();
      fVar3 = (float)(uVar2 / 0x1e);
      param_1[0x104] = (float)(uVar2 % 0x1e);
    }
    else {
      fVar3 = (float)FUN_0040add0("Shoot");
      if (SUB41(fVar3,0) != '\0') {
        uVar8 = FUN_006eef60();
        uVar7 = FUN_00a10100(local_10,0x40800000);
        local_18 = param_1[0xcf] + DAT_00ba9fe4;
        local_14 = param_1[0xd0] + DAT_00baa454;
        local_28[0] = (float **)FUN_006fe410(0x194,1,&local_18,uVar7,param_1,0,uVar8,0);
        ppfVar11 = local_28[0] + 0xf2;
        local_28[0][0x5a] = (float *)((uint)local_28[0][0x5a] & 0xfffffffb);
        local_28[0][0x5b] = local_28[0][0x5b];
        if (*ppfVar11 != (float *)0x0) {
          local_20 = ppfVar11;
          FUN_004cf210(&local_20);
        }
        *ppfVar11 = param_1;
        FUN_004cdcf0(ppfVar11);
        ppfVar11 = (float **)(param_1 + 0xf0);
        if (param_1[0xf0] != 0.0) {
          local_20 = ppfVar11;
          FUN_004cf210(&local_20);
        }
        *ppfVar11 = (float *)local_28[0];
        FUN_004cdcf0(ppfVar11);
        iVar9 = FUN_006eef60();
        fVar3 = (float)FUN_006d6ba0(0x19e,0x3f800000,2,0,
                                    (float)((double)iVar9 +
                                           (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                                    * DAT_00baa198 + DAT_00baa3e0);
      }
      if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_0054362e;
    }
    fVar10 = param_1[0xdb] * DAT_00baa354;
  }
  param_1[0xdb] = fVar10;
LAB_00543664:
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    local_20 = (float **)param_1[0xcf];
    local_1c = param_1[0xd0];
    fVar3 = (float)FUN_007f0780(local_20,local_1c);
    if ((fVar3 == 0.0) && (*(short *)((int)param_1 + 0xc76) == 0)) {
      uVar8 = FUN_007e90f0();
      iVar9 = FUN_006fe410(0x1e,2,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar8,0);
      fVar3 = *(float *)(iVar9 + 900) * DAT_00baa2d0;
      *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
      *(float *)(iVar9 + 0x380) = fVar3;
      fVar3 = (float)FUN_006d88b0(iVar9);
    }
  }
  return (uint)fVar3;
}

