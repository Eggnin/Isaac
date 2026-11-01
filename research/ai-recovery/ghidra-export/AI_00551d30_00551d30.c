/* Local J460 decompiler output.
 * VA: 0x00551d30
 * Entry: 00551d30
 * Dispatcher: 0x006c2990
 * Types: 960
 * Identities: 960.0.0,960.1.0,960.2.0,960.3.0,960.4.0
 * Evidence: dispatcher=0x006c2990; end=0x005522d0; instructions=378
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=960;
   identities=960.0.0,960.1.0,960.2.0,960.3.0,960.4.0; dispatcher=0x006c2990; end=0x005522d0;
   instructions=378 */

void __fastcall AI_00551d30(int *param_1)

{
  float fVar1;
  byte bVar2;
  byte **ppbVar3;
  int iVar4;
  char cVar5;
  byte **ppbVar6;
  uint uVar7;
  int iVar8;
  undefined4 uVar9;
  int *piVar10;
  byte **ppbVar11;
  byte *pbVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  float local_4c;
  byte **local_48;
  byte local_41;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  if (param_1[0x2d9] != 0) {
    if (param_1[0x2d9] != 3) goto LAB_005522b4;
    if ((((param_1[0xb] != 4) && (param_1[0xb] != 3)) || (*DAT_00c71678 != 0xd)) ||
       (DAT_00c71678[1] != 1)) goto LAB_0055215a;
    ppbVar3 = (byte **)param_1[0x1f];
    if (ppbVar3 == (byte **)0x0) {
LAB_00551e05:
      cVar5 = FUN_0040a5d0(&DAT_00b1d428,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar6 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar6 = (byte **)*ppbVar3;
      }
      pbVar12 = &DAT_00b1d428;
      do {
        local_41 = *(byte *)ppbVar6;
        bVar13 = local_41 < *pbVar12;
        if (local_41 != *pbVar12) {
LAB_00551de7:
          uVar7 = -(uint)bVar13 | 1;
          goto LAB_00551dec;
        }
        if (local_41 == 0) break;
        local_41 = *(byte *)((int)ppbVar6 + 1);
        bVar13 = local_41 < pbVar12[1];
        if (local_41 != pbVar12[1]) goto LAB_00551de7;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pbVar12 = pbVar12 + 2;
      } while (local_41 != 0);
      uVar7 = 0;
LAB_00551dec:
      if ((uVar7 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00551e05;
    }
    if (((param_1[0xb] == 4) && (param_1[0x2f0] == 0)) && (4 < DAT_00c71678[0x993e] - param_1[0xca])
       ) {
      fVar1 = (float)param_1[0xcf];
      uVar7 = 0;
      local_48 = (byte **)((float)param_1[0xd0] + DAT_00baa9d0);
      if (DAT_00c71678[0x6eab] - DAT_00c71678[0x6eaa] >> 2 != 0) {
        do {
          iVar8 = FUN_00417870(uVar7);
          if (((*(int *)(iVar8 + 0x2c) == 0) && (*(char *)(iVar8 + 0x173) == '\0')) &&
             ((float)((uint)(*(float *)(iVar8 + 0x340) - (float)local_48) & DAT_00bacb40) <=
              DAT_00baaa00)) {
            fVar15 = *(float *)(iVar8 + 0x38c);
            fVar14 = (fVar1 + 0.0) - DAT_00baa81c;
            if (((fVar15 < fVar14) && (fVar14 <= *(float *)(iVar8 + 0x33c))) ||
               (((fVar14 = fVar1 + 0.0 + DAT_00baa81c, fVar14 < fVar15 &&
                 (*(float *)(iVar8 + 0x33c) <= fVar14)) ||
                (fVar15 = ((float)param_1[0xcf] + 0.0) - fVar15,
                fVar14 = ((float)param_1[0xd0] + DAT_00baa950) - *(float *)(iVar8 + 0x390),
                fVar14 * fVar14 + fVar15 * fVar15 <= DAT_00baac24)))) {
              param_1[0x2f0] = 1;
              uVar9 = FUN_007e90f0();
              local_4c = (float)param_1[0xcf] - DAT_00baa7e8;
              local_48 = (byte **)((float)param_1[0xd0] + DAT_00baa904);
              piVar10 = (int *)FUN_00428b20(0x3b6,0,&local_4c,&DAT_00c7b640,param_1,0,uVar9);
              iVar8 = param_1[0xd0];
              piVar10[0xcd] = param_1[0xcf];
              piVar10[0xce] = iVar8;
              (**(code **)(*piVar10 + 0xc))();
              piVar10 = DAT_00c71678;
              FUN_009bea10(0);
              iVar8 = piVar10[0x60c0];
              uVar7 = 0;
              if (*(int *)(iVar8 + 0x1264) != 0) {
                do {
                  local_48 = *(byte ***)(*(int *)(iVar8 + 0x125c) + uVar7 * 4);
                  if (((int *)local_48)[10] == 4) {
                    uStack_2c = DAT_00c7b640;
                    uStack_24 = DAT_00c7b640;
                    uStack_28 = DAT_00c7b644;
                    local_20 = DAT_00c7b644;
                    uStack_3c = 0;
                    uStack_38 = 0;
                    uStack_34 = 0;
                    local_30 = 0;
                    local_1c = 0;
                    local_18 = 0;
                    (**(code **)((int)*local_48 + 0x24))(&uStack_3c);
                  }
                  uVar7 = uVar7 + 1;
                } while (uVar7 < *(uint *)(iVar8 + 0x1264));
              }
              uVar7 = 0;
              local_48 = (byte **)0x724;
              do {
                uVar7 = uVar7 + 1;
                if (((uVar7 < 9) &&
                    (iVar8 = *(int *)((int)local_48 + DAT_00c71678[0x60c0]), iVar8 != 0)) &&
                   (*(int *)(iVar8 + 0xc) != 1)) {
                  *(undefined4 *)(iVar8 + 0xc) = 1;
                  FUN_0070ee40();
                  iVar4 = *(int *)(iVar8 + 0x15c);
                  if ((((iVar4 == 7) || (iVar8 = *(int *)(iVar8 + 0x160), iVar8 == 7)) ||
                      (iVar4 == 8)) || (((iVar8 == 8 || (iVar4 == 0x1d)) || (iVar8 == 0x1d)))) {
                    FUN_0040ccd0(&DAT_00b1d644,4);
                  }
                }
                local_48 = local_48 + 1;
              } while ((int)local_48 < 0x744);
              FUN_007e1e70(0x43,0x3d23d70a);
              break;
            }
          }
          uVar7 = uVar7 + 1;
        } while (uVar7 < (uint)(DAT_00c71678[0x6eab] - DAT_00c71678[0x6eaa] >> 2));
      }
    }
LAB_0055215a:
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    FUN_00aef12b();
    return;
  }
  param_1[0x2d9] = 3;
  local_48 = (byte **)(param_1 + 0x18);
  param_1[0xcd] = param_1[0xcf];
  param_1[0xce] = param_1[0xd0];
  if (0xf < (uint)param_1[0x1d]) {
    local_48 = (byte **)*local_48;
  }
  ppbVar3 = (byte **)param_1[0x1f];
  if (ppbVar3 == (byte **)0x0) {
LAB_00552225:
    cVar5 = FUN_0040a5d0(local_48,1);
    if (cVar5 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    ppbVar6 = ppbVar3;
    ppbVar11 = local_48;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar6 = (byte **)*ppbVar3;
    }
    do {
      bVar2 = *(byte *)ppbVar6;
      bVar13 = bVar2 < *(byte *)ppbVar11;
      if (bVar2 != *(byte *)ppbVar11) {
LAB_00552201:
        uVar7 = -(uint)bVar13 | 1;
        goto LAB_00552206;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar6 + 1);
      bVar13 = bVar2 < *(byte *)((int)ppbVar11 + 1);
      if (bVar2 != *(byte *)((int)ppbVar11 + 1)) goto LAB_00552201;
      ppbVar6 = (byte **)((int)ppbVar6 + 2);
      ppbVar11 = (byte **)((int)ppbVar11 + 2);
    } while (bVar2 != 0);
    uVar7 = 0;
LAB_00552206:
    if ((uVar7 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_00552225;
  }
  piVar10 = DAT_00c71678;
  param_1[0x5b] = param_1[0x5b] | 0x2008;
  param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x44250011;
  *(undefined *)(param_1 + 0xec) = 1;
  if (piVar10[0x60c3] == 2) {
    local_40 = _DAT_00bac7b0;
    uStack_3c = _UNK_00bac7b4;
    uStack_38 = _UNK_00bac7b8;
    uStack_34 = _UNK_00bac7bc;
    local_30 = _DAT_00babac0;
    uStack_2c = _UNK_00babac4;
    uStack_28 = _UNK_00babac8;
    uStack_24 = _UNK_00babacc;
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    (**(code **)(*param_1 + 0x3c))(&local_40,0xffffffff,0xff,0,1);
  }
LAB_005522b4:
  FUN_00aef12b();
  return;
}

