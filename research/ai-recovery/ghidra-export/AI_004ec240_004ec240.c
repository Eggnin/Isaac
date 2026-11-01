/* Local J460 decompiler output.
 * VA: 0x004ec240
 * Entry: 004ec240
 * Dispatcher: 0x006c2990
 * Types: 832
 * Identities: 832.0.0,832.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004ecc10; instructions=625
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=832; identities=832.0.0,832.1.0; dispatcher=0x006c2990;
   end=0x004ecc10; instructions=625 */

void __fastcall AI_004ec240(int param_1)

{
  char cVar1;
  int iVar2;
  float *pfVar3;
  undefined4 uVar4;
  int *piVar5;
  uint uVar6;
  uint uVar7;
  int **ppiVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined4 uVar12;
  int *piStack_70;
  int *piStack_6c;
  undefined auStack_68 [4];
  undefined4 *puStack_64;
  int **ppiStack_60;
  undefined4 *puStack_5c;
  int **ppiStack_58;
  undefined4 *puStack_54;
  int **ppiStack_50;
  int **ppiStack_4c;
  int *piStack_48;
  uint uStack_44;
  undefined4 uStack_40;
  undefined auStack_3c [4];
  int iStack_38;
  undefined4 uStack_34;
  uint uStack_30;
  int iStack_2c;
  undefined4 uStack_28;
  char acStack_24 [4];
  int iStack_20;
  float fStack_1c;
  float fStack_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 uStack_8;
  
  uStack_8 = -1;
  puStack_c = &LAB_00af3da5;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  if (*(int *)(param_1 + 0x2c) == 1) {
    FUN_004faad0(local_14);
    goto LAB_004ecbd2;
  }
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 4;
    FUN_0040a940(&DAT_00b5fed4,0);
    FUN_0040a6e0("WalkVert",0);
    uVar6 = FUN_006eef60();
    *(uint *)(param_1 + 0xbc0) = uVar6 % 0x1e + 0xf;
    break;
  case 4:
    fStack_18 = 2.101948e-44;
    fStack_1c = 1.121039e-44;
    iStack_2c = s_WalkVert_00b1dd18._0_4_;
    uStack_28 = s_WalkVert_00b1dd18._4_4_;
    acStack_24[0] = '\0';
    uStack_30 = 0xf;
    uStack_34 = 8;
    uStack_44 = s_WalkHori_00b1dd30._0_4_;
    uStack_40 = s_WalkHori_00b1dd30._4_4_;
    auStack_3c[0] = 0;
    uStack_8._0_1_ = 1;
    uStack_8._1_3_ = 0;
    FUN_006c1330(&uStack_44,&iStack_2c,0x3dcccccd);
    uStack_8 = (uint)uStack_8._1_3_ << 8;
    if (0xf < uStack_30) {
      uVar7 = uStack_30 + 1;
      uVar6 = uStack_44;
      if (0xfff < uVar7) {
        uVar6 = *(uint *)(uStack_44 - 4);
        uVar7 = uStack_30 + 0x24;
        if (0x1f < (uStack_44 - uVar6) - 4) goto LAB_004ec3b9;
      }
      FUN_00aef15c(uVar6,uVar7);
    }
    uStack_8 = -1;
    uStack_34 = 0;
    uStack_30 = 0xf;
    uStack_44 = uStack_44 & 0xffffff00;
    if (0xf < (uint)fStack_18) {
      uVar6 = (int)fStack_18 + 1;
      iVar2 = iStack_2c;
      if (0xfff < uVar6) {
        iVar2 = *(int *)(iStack_2c + -4);
        uVar6 = (int)fStack_18 + 0x24;
        if (0x1f < (iStack_2c - iVar2) - 4U) {
LAB_004ec3b9:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar2,uVar6);
    }
    FUN_0040a940(&DAT_00b5fed4,0);
    ppiStack_4c = (int **)0x0;
    iVar2 = FUN_006ac760();
    if ((iVar2 != 0) && (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) {
      FUN_006d6ba0(0x74,0x3f4ccccd,0x78,0,0x3f800000);
    }
    iVar2 = FUN_006ac760();
    if (iVar2 != 0) {
      iVar2 = *(int *)(param_1 + 0xbec);
      if (iVar2 != 0) {
        fVar9 = *(float *)(param_1 + 0x338) - *(float *)(iVar2 + 0x340);
        fVar10 = *(float *)(param_1 + 0x334) - *(float *)(iVar2 + 0x33c);
        if (DAT_00baac24 <= fVar9 * fVar9 + fVar10 * fVar10) {
LAB_004ec4a2:
          puStack_64 = (undefined4 *)(param_1 + 0xbec);
          FUN_004cf210(&puStack_64);
        }
        else {
          cVar1 = FUN_007e7070(param_1 + 0x334,0);
          if (cVar1 != '\0') goto LAB_004ec4bf;
          if (*(int *)(param_1 + 0xbec) != 0) goto LAB_004ec4a2;
        }
        *(undefined4 *)(param_1 + 0xbec) = 0;
      }
    }
LAB_004ec4bf:
    if (*(int *)(param_1 + 0xbec) == 0) {
      iVar2 = FUN_006ac760();
      if (iVar2 != 0) {
        uVar6 = FUN_006eef60();
        if ((int *)(uVar6 % 3) == (int *)0x0) {
          puStack_64 = (undefined4 *)0x0;
          ppiStack_60 = DAT_00baac5c;
          piStack_48 = (int *)(uVar6 % 3);
          AI_0041af60(auStack_3c,1000,0x90,0,0,0);
          uVar6 = 0;
          uStack_8 = 2;
          if (uStack_30 != 0) {
            do {
              piVar5 = *(int **)(iStack_38 + uVar6 * 4);
              fStack_18 = (float)piVar5[0xd0];
              fStack_1c = (float)piVar5[0xcf];
              FUN_00813520(&puStack_5c,&fStack_1c,0,0,0,0);
              fVar9 = *(float *)(param_1 + 0x33c) - (float)puStack_5c;
              fVar10 = *(float *)(param_1 + 0x340) - (float)ppiStack_58;
              ppiStack_50 = (int **)(fVar10 * fVar10 + fVar9 * fVar9);
              if ((((float)ppiStack_50 < (float)ppiStack_60) &&
                  (((float)piVar5[0xd0] - (float)ppiStack_58) *
                   ((float)piVar5[0xd0] - (float)ppiStack_58) +
                   ((float)piVar5[0xcf] - (float)puStack_5c) *
                   ((float)piVar5[0xcf] - (float)puStack_5c) < DAT_00baac24)) &&
                 (cVar1 = FUN_007e7070(&puStack_5c,0), cVar1 != '\0')) {
                puStack_64 = puStack_5c;
                ppiStack_4c = ppiStack_58;
                ppiStack_60 = ppiStack_50;
                piStack_48 = piVar5;
              }
              uVar6 = uVar6 + 1;
            } while (uVar6 < uStack_30);
            ppiVar8 = (int **)(param_1 + 0xbec);
            if (piStack_48 != (int *)0x0) {
              if (*ppiVar8 != (int *)0x0) {
                ppiStack_50 = ppiVar8;
                FUN_004cf210(&ppiStack_50);
              }
              *ppiVar8 = piStack_48;
              FUN_004cdcf0(ppiVar8);
              *(undefined4 **)(param_1 + 0x334) = puStack_64;
              *(int ***)(param_1 + 0x338) = ppiStack_4c;
            }
          }
          uStack_8 = -1;
          FUN_004175b0();
        }
      }
      if (*(int *)(param_1 + 0xbec) != 0) goto LAB_004ec6a6;
      iVar2 = FUN_006be840();
      puStack_5c = *(undefined4 **)(iVar2 + 0x33c);
      ppiStack_58 = *(int ***)(iVar2 + 0x340);
      iVar2 = *(int *)(param_1 + 0x3c0);
      if (iVar2 == 0) {
        uVar12 = 0;
        uVar4 = FUN_006bec40(&fStack_1c,0);
        FUN_007e4940(uVar4,uVar12);
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      }
      else {
        ppiStack_50 = *(int ***)(iVar2 + 0x33c);
        ppiStack_4c = *(int ***)(iVar2 + 0x340);
        fStack_1c = (float)ppiStack_50 - (float)puStack_5c;
        fStack_18 = (float)ppiStack_4c - (float)ppiStack_58;
        pfVar3 = (float *)FUN_00a10100(auStack_68,0x42a00000);
        fStack_1c = (float)ppiStack_50 + *pfVar3;
        fStack_18 = (float)ppiStack_4c + pfVar3[1];
        FUN_00812f50(&puStack_54,&fStack_1c,0x40a00000,0x40a00000,0x40a00000);
        puStack_5c = puStack_54;
        ppiStack_58 = ppiStack_50;
        FUN_007e33c0(&puStack_5c,0x3f59999a,0,1);
      }
    }
    else {
LAB_004ec6a6:
      ppiVar8 = (int **)(param_1 + 0xbec);
      FUN_007e33c0((float *)(param_1 + 0x334),0x3f59999a,0,1);
      fVar9 = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
      fVar10 = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
      if (fVar10 * fVar10 + fVar9 * fVar9 <= DAT_00baaabc) {
        if (*ppiVar8 != (int *)0x0) {
          ppiStack_50 = ppiVar8;
          FUN_004cf210(&ppiStack_50);
        }
        *ppiVar8 = (int *)0x0;
        FUN_00408830(0);
        FUN_0040a380("Revive",0);
        *(undefined4 *)(param_1 + 0xb64) = 9;
        break;
      }
    }
    if (((*(int *)(param_1 + 0xbc0) < 1) && (uVar6 = FUN_006eef60(), uVar6 % 10 == 0)) &&
       (*(int *)(param_1 + 0x3c0) == 0)) {
      FUN_00408830(0);
      FUN_0040a380("Revive",0);
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
    break;
  case 8:
  case 9:
    FUN_0040a380("Revive",0);
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar1 = FUN_0040add0("Revive");
      if (cVar1 != '\0') {
        if (*(int *)(param_1 + 0xb64) == 8) {
          FUN_00813520(&fStack_1c,param_1 + 0x33c,0x42200000,1,1,0);
          FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
          uVar4 = FUN_006eef60();
          piVar5 = (int *)FUN_00428b20(0x104,10,&fStack_1c,&DAT_00c7b640,param_1,0,uVar4);
          ppiVar8 = (int **)(param_1 + 0x3c0);
          piVar5[0x5b] = piVar5[0x5b] | 0x400;
          piVar5[0x5a] = piVar5[0x5a];
          if (*ppiVar8 != (int *)0x0) {
            ppiStack_50 = ppiVar8;
            FUN_004cf210(&ppiStack_50);
          }
          *ppiVar8 = piVar5;
          FUN_004cdcf0(ppiVar8);
          (**(code **)(*piVar5 + 0xc))();
        }
        else {
          AI_0041af60(acStack_24,1000,0x90,0,0,0);
          fVar9 = 0.0;
          uStack_8 = 3;
          if (fStack_18 != 0.0) {
            do {
              ppiStack_50 = *(int ***)(iStack_20 + (int)fVar9 * 4);
              fVar11 = *(float *)(param_1 + 0x33c) - (float)ppiStack_50[0xcf];
              fVar10 = *(float *)(param_1 + 0x340) - (float)ppiStack_50[0xd0];
              if (fVar10 * fVar10 + fVar11 * fVar11 < DAT_00baac24) {
                piStack_48 = DAT_00baa454;
                piVar5 = DAT_00baa528;
                if ((*(int *)(param_1 + 0xc64) == 0x12) ||
                   (piVar5 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
                  piStack_48 = piVar5;
                }
                ppiStack_4c = (int **)0x109;
                FUN_00956780();
                FUN_0092dc30(ppiStack_4c,0x3f800000,2,0,piStack_48,0);
                uVar4 = FUN_006eef60();
                ppiVar8 = ppiStack_50;
                piStack_70 = ppiStack_50[0xcf];
                piStack_6c = ppiStack_50[0xd0];
                piVar5 = (int *)FUN_00428b20(0x104,10,&piStack_70,&DAT_00c7b640,param_1,0,uVar4);
                piVar5[0x5b] = piVar5[0x5b] | 0x400;
                piVar5[0x5a] = piVar5[0x5a];
                (**(code **)(*piVar5 + 0xc))();
                (*(code *)(*ppiVar8)[10])();
              }
              fVar9 = (float)((int)fVar9 + 1);
            } while ((uint)fVar9 < (uint)fStack_18);
          }
          uStack_8 = -1;
          if (acStack_24[0] == '\0') {
            uStack_8 = 4;
            FUN_00a648b0(0,0);
            uStack_8 = -1;
          }
        }
        uVar6 = FUN_006eef60();
        *(uint *)(param_1 + 0xbc0) = uVar6 % 0x3c + 0x3c;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) break;
    }
    *(undefined4 *)(param_1 + 0xb64) = 4;
  }
  iVar2 = *(int *)(param_1 + 0xbc0);
  if ((0x1e < iVar2) || ((*(int *)(param_1 + 0x3c0) == 0 && (0 < iVar2)))) {
    *(int *)(param_1 + 0xbc0) =
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) + iVar2;
  }
LAB_004ecbd2:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

