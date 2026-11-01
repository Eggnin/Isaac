/* Local J460 decompiler output.
 * VA: 0x00578a70
 * Entry: 00578a70
 * Dispatcher: 0x006c2990
 * Types: 902
 * Identities: 902.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00579700; instructions=707
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=902; identities=902.0.0; dispatcher=0x006c2990;
   end=0x00579700; instructions=707 */

void __fastcall AI_00578a70(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  byte **ppbVar6;
  uint uVar7;
  float *pfVar8;
  undefined4 uVar9;
  int *piVar10;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  byte *pbVar11;
  int **ppiVar12;
  int iVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  undefined local_fc [4];
  float local_f8;
  undefined local_f4 [4];
  int *local_f0;
  char local_ec [4];
  int local_e8;
  int *local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  int local_d4;
  undefined local_d0 [4];
  undefined4 local_cc;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af5230;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_d4 = *(int *)(DAT_00c71678 + 0x18300);
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
  local_24 = uVar5;
  puVar3 = &stack0xfffffffc;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 3;
    puVar3 = &stack0xfffffffc;
    break;
  case 3:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380(&DAT_00b1dce4,0);
    FUN_005784e0();
    uVar5 = FUN_006eef60();
    puVar3 = puStack_20;
    if (uVar5 % 0x14 == 0) {
      *(undefined4 *)(param_1 + 0xba0) = 0;
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      uVar5 = FUN_006eef60();
      if (uVar5 % 3 == 0) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        iVar13 = FUN_006be840();
        local_e4 = (int *)(*(float *)(iVar13 + 0x33c) - *(float *)(param_1 + 0x33c));
        local_e0 = *(float *)(iVar13 + 0x340) - *(float *)(param_1 + 0x340);
        iVar13 = FUN_00a10030(local_f4);
        if (((float)(*(uint *)(iVar13 + 4) & DAT_00bacb40) < DAT_00baa1d4) ||
           (uVar5 = FUN_006eef60(), (uVar5 & 1) == 0)) {
          *(undefined4 *)(param_1 + 0xbc4) = 0;
          puVar3 = puStack_20;
        }
        else {
          *(undefined4 *)(param_1 + 0xbc4) = 1;
          puVar3 = puStack_20;
        }
      }
      else {
        *(uint *)(param_1 + 0xb64) = (uVar5 % 3 != 1) + 9;
        puVar3 = puStack_20;
      }
    }
    break;
  case 8:
    if (-1 < *(int *)(param_1 + 0xba0)) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(&DAT_00b1d2cc,0);
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        FUN_0040a380("Attack1End",0);
        *(undefined4 *)(param_1 + 0xba0) = 0xffffffff;
        puVar3 = puStack_20;
      }
      else {
        iVar13 = *(int *)(param_1 + 0xba0);
        if (((iVar13 < 0xc) || (0x11 < iVar13 + -0xc)) ||
           (local_d8 = (float)((iVar13 + -0xc) / 3), iVar13 + -0xc != (int)local_d8 * 3)) {
          *(int *)(param_1 + 0xba0) = iVar13 + 1;
          puVar3 = puStack_20;
        }
        else {
          iVar13 = -1;
          do {
            local_dc = *(float *)(param_1 + 0x340);
            if (*(int *)(param_1 + 0xbc4) == 1) {
              local_f8 = (((float)(int)local_d8 * DAT_00baaa78) / DAT_00baa7a4 +
                         (float)iVar13 * DAT_00baa9b4 + DAT_00baa9b4) * DAT_00baa088;
              fVar16 = local_f8;
              FUN_0041d540();
              local_f0 = (int *)(fVar16 * DAT_00baa97c + *(float *)(param_1 + 0x33c));
              fVar16 = local_f8;
              FUN_0041d520();
              local_e4 = local_f0;
              local_e0 = fVar16 * DAT_00baa97c + local_dc;
            }
            else {
              local_e0 = local_dc + 0.0;
              local_e4 = (int *)((float)((int)local_d8 + 1) * (float)iVar13 * DAT_00baa8d0 +
                                *(float *)(param_1 + 0x33c));
            }
            cVar4 = FUN_00813360(&local_e4,0x3f800000);
            if (cVar4 != '\0') {
              FUN_006be840();
              FUN_00578820(&local_e4,extraout_ECX,(9 - (int)local_d8) * 8,0,0x3d4ccccd);
            }
            iVar13 = iVar13 + 2;
          } while (iVar13 < 2);
          *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) + 1;
          puVar3 = puStack_20;
        }
      }
      break;
    }
    puStack_20 = &stack0xfffffffc;
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      uVar9 = 0x19;
LAB_00578e40:
      FUN_006d6ba0(uVar9,0x3f800000,2,0,0x3f800000);
    }
    goto LAB_00578e47;
  case 9:
    iVar13 = *(int *)(param_1 + 0xba0);
    if (iVar13 == 0) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380("Attack2Begin",0);
      if ((*(int *)(param_1 + 0x7c) == 0) ||
         (puVar3 = puStack_20, *(char *)(param_1 + 0x8c) == '\0')) {
        FUN_0040a380("Attack2Loop",0);
        *(undefined4 *)(param_1 + 0xba0) = 1;
        puVar3 = puStack_20;
      }
      break;
    }
    if (0 < iVar13) {
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        if (iVar13 < 0x96) {
          puStack_20 = &stack0xfffffffc;
          cVar4 = FUN_0040a5d0("Attack2Loop",1);
          puVar3 = puStack_20;
          if (cVar4 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
            puVar3 = puStack_20;
          }
        }
        else {
          puStack_20 = &stack0xfffffffc;
          FUN_0040a380("Attack2End",0);
          *(undefined4 *)(param_1 + 0xba0) = 0xffffffff;
          puVar3 = puStack_20;
        }
      }
      else {
        puStack_20 = &stack0xfffffffc;
        if (iVar13 % 10 == 0) {
          puStack_20 = &stack0xfffffffc;
          FUN_006be840();
          pfVar8 = (float *)FUN_0067f070(local_f4);
          local_e4 = (int *)(*pfVar8 * DAT_00baa950 + *(float *)(param_1 + 0x33c));
          local_e0 = pfVar8[1] * DAT_00baa950 + *(float *)(param_1 + 0x340);
          FUN_00578820(&local_e4,extraout_ECX_00,0x2d,0x40a00000,0x3cf5c28f);
          iVar13 = *(int *)(param_1 + 0xba0);
        }
        *(int *)(param_1 + 0xba0) = iVar13 + 1;
        FUN_005784e0();
        puVar3 = puStack_20;
      }
      break;
    }
    puStack_20 = &stack0xfffffffc;
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
      AI_0043ef30();
      local_3c = 4;
      local_e4 = (int *)0x41200000;
      local_e0 = 0.0;
      FUN_006cb2e0(param_1 + 0x33c,&local_e4,8,local_d0);
    }
    cVar4 = FUN_0040b030(&DAT_00b61e90);
    if (cVar4 != '\0') {
      uVar9 = 0xc9;
      goto LAB_00578e40;
    }
LAB_00578e47:
    puVar3 = puStack_20;
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
    }
    break;
  case 10:
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_005790b3:
      cVar4 = FUN_0040a5d0(&DAT_00b1d2e4,1);
      puVar3 = puStack_20;
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
        puVar3 = puStack_20;
      }
    }
    else {
      ppbVar6 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar6 = (byte **)*ppbVar2;
      }
      pbVar11 = &DAT_00b1d2e4;
      do {
        bVar1 = *(byte *)ppbVar6;
        bVar14 = bVar1 < *pbVar11;
        if (bVar1 != *pbVar11) {
LAB_00579095:
          uVar7 = -(uint)bVar14 | 1;
          goto LAB_0057909a;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar6 + 1);
        bVar14 = bVar1 < pbVar11[1];
        if (bVar1 != pbVar11[1]) goto LAB_00579095;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_0057909a:
      if ((uVar7 != 0) ||
         ((puVar3 = &stack0xfffffffc, *(byte *)(ppbVar2 + 0xd) != 0 &&
          (puVar3 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')))) goto LAB_005790b3;
    }
    puStack_20 = puVar3;
    if (((2 < *(int *)(param_1 + 0xba0)) &&
        (uVar7 = *(int *)(param_1 + 0xba0) - 2, (int)uVar7 < 0x12)) && ((uVar7 & 1) == 0)) {
      pfVar8 = (float *)FUN_0067f070(local_fc,uVar5);
      local_e4 = (int *)(*pfVar8 * DAT_00baa950 + *(float *)(param_1 + 0x33c));
      local_e0 = pfVar8[1] * DAT_00baa950 + *(float *)(param_1 + 0x340);
      uVar9 = FUN_006eef60();
      piVar10 = (int *)FUN_00428b20(9,4,&local_e4,&DAT_00c7b640,param_1,1,uVar9);
      piVar10[0x104] = -0x3f400000;
      piVar10[0x105] = 0;
      piVar10[0x108] = 0x3f800000;
      if (piVar10[0xef] != 0) {
        local_f0 = piVar10 + 0xef;
        FUN_004cf210(&local_f0);
      }
      piVar10[0xef] = param_1;
      FUN_004cdcf0(piVar10 + 0xef);
      (**(code **)(*piVar10 + 0xc))();
      uVar9 = FUN_006eef60();
      FUN_00428b20(1000,0x85,&local_e4,&DAT_00c7b640,0,0,uVar9);
      uVar9 = FUN_006eef60();
      FUN_00428b20(1000,0x85,&local_e4,&DAT_00c7b640,0,1,uVar9);
      local_d8 = 2.143987e-43;
      FUN_00956780();
      FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
    }
    fVar16 = (float)(param_1 + 0x78);
    local_dc = fVar16;
    if (*(int *)(param_1 + 0x7c) == 0) {
LAB_005793de:
      AI_0041af60(local_ec,9,0xffffffff,0xffffffff,0,0);
      local_14 = 0;
      local_f8 = 0.0;
      iVar13 = local_e8;
      if (local_e0 != 0.0) {
        do {
          piVar10 = *(int **)(iVar13 + (int)local_f8 * 4);
          local_f0 = piVar10;
          if (((piVar10 != (int *)0x0) && (piVar10[10] == 9)) &&
             ((piVar10[0xc] == 1 && (piVar10[0xef] == param_1)))) {
            piVar10[0x61] = 0;
            local_d8 = *(float *)(param_1 + 0x340) - (float)piVar10[0xd0];
            local_dc = *(float *)(param_1 + 0x33c) - (float)piVar10[0xcf];
            fVar15 = local_d8 * local_d8 + local_dc * local_dc;
            FUN_00435a50();
            fVar19 = DAT_00baae54;
            fVar16 = DAT_00baa75c;
            fVar18 = local_dc;
            fVar17 = local_d8;
            if (DAT_00baa75c < fVar15) {
              if (fVar15 <= 0.0) {
                fVar18 = local_dc * DAT_00baa75c;
                fVar17 = local_d8 * DAT_00baa75c;
              }
              else {
                fVar18 = local_dc * (DAT_00baa454 / fVar15) * DAT_00baa75c;
                fVar17 = (DAT_00baa454 / fVar15) * local_d8 * DAT_00baa75c;
              }
            }
            piVar10[0xd9] = (int)(fVar17 / (float)piVar10[0xdb]);
            piVar10[0xd8] = (int)(fVar18 / (float)piVar10[0xdb]);
            fVar18 = (float)((uint)((float)piVar10[0x104] - DAT_00baae54) & DAT_00bacb40);
            piVar10[0x105] = (int)((fVar19 - (float)piVar10[0x104]) * _DAT_00baa1ec);
            iVar13 = local_e8;
            if (fVar18 < fVar16) {
              fVar16 = *(float *)(param_1 + 0x340) - (float)piVar10[0xd0];
              fVar19 = *(float *)(param_1 + 0x33c) - (float)piVar10[0xcf];
              fVar16 = fVar16 * fVar16 + fVar19 * fVar19;
              FUN_00435a50();
              iVar13 = local_e8;
              if (fVar16 < DAT_00baa804) {
                local_d8 = 2.592402e-43;
                FUN_00956780();
                FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
                *(undefined *)((int)local_f0 + 0x173) = 1;
                uVar5 = FUN_006eef60();
                *(uint *)(param_1 + 0xbc0) = (uVar5 & 1) + *(int *)(param_1 + 0xbc0) + 2;
                iVar13 = local_e8;
              }
            }
          }
          local_f8 = (float)((int)local_f8 + 1);
        } while ((uint)local_f8 < (uint)local_e0);
      }
      local_14 = 0xffffffff;
      if (local_ec[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
      }
    }
    else {
      cVar4 = FUN_0040add0(&DAT_00b61e90);
      if (cVar4 != '\0') {
        FUN_006d6ba0(0x1e5,0x3f800000,2,0,0x3f800000);
        local_dc = fVar16;
      }
      if (*(int *)(param_1 + 0x7c) == 0) goto LAB_005793de;
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        local_d8 = 6.810311e-43;
        FUN_00956780();
        FUN_0092dc30(local_d8,0x3f800000,2,0,0x3f800000,0);
        AI_0043ef30();
        local_f0 = (int *)&DAT_00000004;
        ppiVar12 = &local_f0;
        if (4 < *(int *)(param_1 + 0xbc0)) {
          ppiVar12 = (int **)(param_1 + 0xbc0);
        }
        local_cc = 0xc2900000;
        local_3c = 4;
        FUN_006ccdd0(*ppiVar12,&DAT_00c7b640,0x40000000,local_d0);
        uVar9 = FUN_006eef60();
        piVar10 = (int *)FUN_00428b20(1000,0xd,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar9);
        piVar10[0xd3] = 0;
        piVar10[0xd4] = -0x3d420000;
        piVar10[0x39] = 0x40000000;
        piVar10[0x3a] = 0x40000000;
        (**(code **)(*piVar10 + 0xc))();
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (cVar4 = FUN_0040ae70("Shoot"), cVar4 == '\0'))
      goto LAB_005793de;
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
    }
    *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) + 1;
    puVar3 = puStack_20;
  }
  puStack_20 = puVar3;
  if (*(char *)(param_1 + 0x173) != '\0') {
    uVar5 = 0;
    if (*(int *)(local_d4 + 0x1264) != 0) {
      do {
        iVar13 = *(int *)(*(int *)(local_d4 + 0x125c) + uVar5 * 4);
        if ((*(int *)(iVar13 + 0x28) == 9) && (*(int *)(iVar13 + 0x3bc) == param_1)) {
          *(undefined *)(iVar13 + 0x173) = 1;
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 < *(uint *)(local_d4 + 0x1264));
    }
    *(undefined *)(local_d4 + 0x745c) = 1;
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

