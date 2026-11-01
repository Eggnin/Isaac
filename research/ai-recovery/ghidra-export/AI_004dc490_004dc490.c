/* Local J460 decompiler output.
 * VA: 0x004dc490
 * Entry: 004dc490
 * Dispatcher: 0x006c2990
 * Types: 852
 * Identities: 852.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004dca90; instructions=354
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=852; identities=852.0.0; dispatcher=0x006c2990;
   end=0x004dca90; instructions=354 */

void __fastcall AI_004dc490(int *param_1)

{
  char *pcVar1;
  char cVar2;
  float *pfVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  float fVar10;
  float fVar11;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),*(undefined4 *)(DAT_00c71678 + 0x1830c));
  iVar5 = DAT_00c71678;
  if (param_1[0x2dd] == 3) {
    iVar5 = param_1[0x2df];
    if (*(int *)(iVar5 + 0x28) == 0x354) {
      local_3c = *(float *)(iVar5 + 0x33c) - (float)param_1[0xcf];
      local_44 = *(float *)(iVar5 + 0x340) - (float)param_1[0xd0];
      fVar10 = local_3c * local_3c + local_44 * local_44;
      FUN_00435a50();
      if (0.0 < fVar10) {
        local_3c = local_3c * (DAT_00baa454 / fVar10);
        local_44 = local_44 * (DAT_00baa454 / fVar10);
      }
      pfVar3 = (float *)FUN_0067f1d0();
      if (0.0 < local_44 * pfVar3[1] + local_3c * *pfVar3) {
        uVar4 = param_1[0x2f0] + 2U & 0x80000003;
        if ((int)uVar4 < 0) {
          uVar4 = (uVar4 - 1 | 0xfffffffc) + 1;
        }
        param_1[0x2f0] = uVar4;
        return;
      }
    }
    iVar5 = param_1[0x2df];
    if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (*(int *)(iVar5 + 0x28) == 1)) ||
        (*(int *)(iVar5 + 0x28) - 10U < 0x3de)) &&
       (((*(uint *)(iVar5 + 0x168) & 0x20000000) != 0) == ((param_1[0x5a] & 0x20000000U) != 0))) {
      param_1[0x2e0] = 0;
      return;
    }
  }
  else {
    iVar7 = *(int *)(DAT_00c71678 + 0x18300);
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    fVar10 = DAT_00baa904;
    if (param_1[0x2d9] == 0) {
      param_1[0x2f0] = param_1[0xc] & 3;
      param_1[0x2d9] = 3;
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0x3c6] = 4;
      iVar9 = (int)(((float)param_1[0xcf] - fVar10) / fVar10 + DAT_00baa2d0);
      iVar6 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / fVar10 + DAT_00baa2d0);
      if (((iVar9 < 0) || (*(int *)(iVar7 + 0xc) <= iVar9)) ||
         ((iVar6 < 0 || (*(int *)(iVar7 + 0x10) <= iVar6)))) {
        iVar9 = -1;
      }
      else {
        iVar9 = iVar6 * *(int *)(iVar7 + 0xc) + iVar9;
      }
      param_1[0x5a] = param_1[0x5a] | 0x10011;
      param_1[0x5b] = param_1[0x5b] | 8;
      param_1[0x10d] = iVar9;
      param_1[0x61] = 6;
      iVar9 = iRam00c34e8c;
      iVar6 = iRam00c34e88;
      iVar7 = iRam00c34e84;
      if (param_1 + 0x79 != (int *)&DAT_00c34e80) {
        param_1[0x79] = _DAT_00c34e80;
        param_1[0x7a] = iVar7;
        param_1[0x7b] = iVar6;
        param_1[0x7c] = iVar9;
        iVar9 = iRam00c34e9c;
        iVar6 = iRam00c34e98;
        iVar7 = iRam00c34e94;
        param_1[0x7d] = _DAT_00c34e90;
        param_1[0x7e] = iVar7;
        param_1[0x7f] = iVar6;
        param_1[0x80] = iVar9;
        *(undefined8 *)(param_1 + 0x81) = DAT_00c34ea0;
        param_1[0x83] = DAT_00c34ea8;
      }
      param_1[0x2f1] = 0;
      iVar7 = FUN_006d6c20();
      if ((0 < iVar7) || (*(char *)(*(int *)(iVar5 + 0x18300) + 0x7229) != '\0')) {
        param_1[0x2f1] = 1;
      }
    }
    else if (param_1[0x2d9] == 3) {
      FUN_0067f1d0();
      param_1[0xd8] = (int)(local_44 * DAT_00baa6fc * (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] = (int)(local_40 * DAT_00baa6fc * (float)param_1[0xe7] + (float)param_1[0xd9]);
      local_38 = local_44 * DAT_00baa87c + (float)param_1[0xcf];
      local_34 = local_40 * DAT_00baa87c + (float)param_1[0xd0];
      iVar5 = FUN_007f0780(local_38,local_34);
      if (1 < iVar5) {
        uVar4 = param_1[0x2f0] + 2U & 0x80000003;
        if ((int)uVar4 < 0) {
          uVar4 = (uVar4 - 1 | 0xfffffffc) + 1;
        }
        param_1[0x2f0] = uVar4;
      }
      FUN_0040a380(&DAT_00b1bc54,0);
      iVar5 = DAT_00c71678;
      fVar10 = (float)param_1[0xe7];
      if ((float)((uint)local_40 & DAT_00bacb40) <= (float)((uint)local_44 & DAT_00bacb40)) {
        fVar11 = DAT_00baa3e0;
        if ((NAN(fVar10) || NAN(DAT_00baa454)) == (fVar10 == DAT_00baa454)) {
          fVar11 = DAT_00baa3e0 / ((fVar10 + DAT_00baa3e0) - fVar10 * DAT_00baa3e0);
        }
        param_1[0xd9] =
             (int)(((((float)(param_1[0x10d] / *(int *)(iVar7 + 0xc)) * DAT_00baa904 + DAT_00baaa00)
                    - (float)param_1[0xd0]) - (float)param_1[0xd9]) * (DAT_00baa454 - fVar11) +
                  (float)param_1[0xd9]);
      }
      else {
        fVar11 = DAT_00baa3e0;
        if ((NAN(fVar10) || NAN(DAT_00baa454)) == (fVar10 == DAT_00baa454)) {
          fVar11 = DAT_00baa3e0 / ((fVar10 + DAT_00baa3e0) - fVar10 * DAT_00baa3e0);
        }
        param_1[0xd8] =
             (int)(((((float)(param_1[0x10d] % *(int *)(iVar7 + 0xc)) * DAT_00baa904 + DAT_00baa904)
                    - (float)param_1[0xcf]) - (float)param_1[0xd8]) * (DAT_00baa454 - fVar11) +
                  (float)param_1[0xd8]);
      }
    }
    if (((((param_1[0x2f1] != 0) && (iVar7 = FUN_006d6c20(), iVar7 < 1)) &&
         (pcVar1 = *(char **)(iVar5 + 0x18300), *pcVar1 != '\0')) &&
        ((0x50 < *(int *)(iVar5 + 0x264f8) - *(int *)(pcVar1 + 0x11f0) && (pcVar1[0x7229] == '\0')))
        ) || ((iVar5 = FUN_00740bc0(*(undefined4 *)(iVar5 + 0x18304),
                                    *(undefined4 *)(iVar5 + 0x1830c)),
              (*(uint *)(iVar5 + 0x44) >> 1 & 1) != 0 || (cVar2 = FUN_0044bfb0(0x97), cVar2 != '\0')
              ))) {
      local_20 = DAT_00c7b640;
      local_18 = DAT_00c7b640;
      local_1c = DAT_00c7b644;
      local_14 = DAT_00c7b644;
      local_30 = 0;
      local_2c = 0;
      local_28 = 0;
      local_24 = 0;
      local_10 = 0;
      local_c = 0;
      (**(code **)(*param_1 + 0x24))(&local_30);
    }
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      if (-1 < param_1[0xcb]) {
        FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),0xffffffff);
        FUN_004e45c0(&local_38,param_1 + 0xcb);
        if (*(char *)((int)param_1 + 0x173) == '\0') {
          return;
        }
      }
      if (param_1[0xb] == 0) {
        uVar8 = FUN_006eef60();
        FUN_006fe410(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,param_1,2,uVar8,0);
      }
    }
  }
  return;
}

