/* Local J460 decompiler output.
 * VA: 0x00560ca0
 * Entry: 00560ca0
 * Dispatcher: 0x006c2990
 * Types: 873
 * Identities: 873.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00561580; instructions=588
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=873; identities=873.0.0; dispatcher=0x006c2990;
   end=0x00561580; instructions=588 */

void __fastcall AI_00560ca0(int param_1)

{
  byte bVar1;
  code *pcVar2;
  byte **ppbVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  undefined4 uVar7;
  int iVar8;
  int *piVar9;
  byte **ppbVar10;
  undefined4 extraout_ECX;
  byte *pbVar11;
  uint uVar12;
  uint *puVar13;
  uint uVar14;
  bool bVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  undefined local_74 [8];
  char local_6c [4];
  int local_68;
  uint local_60;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  int *local_4c;
  int *local_48;
  int *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  float local_34;
  undefined local_30 [16];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af4ded;
  local_10 = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  uVar14 = 0;
  local_14 = uVar5;
  FUN_006d0ca0(local_6c,*(undefined4 *)(param_1 + 0x28),0,1);
  local_8 = 0;
  uVar12 = 0;
  uVar6 = uVar14;
  if (local_60 != 0) {
    do {
      uVar14 = uVar6 + 1;
      if (*(int *)(*(int *)(local_68 + uVar12 * 4) + 0x3bc) != param_1) {
        uVar14 = uVar6;
      }
      uVar12 = uVar12 + 1;
      uVar6 = uVar14;
    } while (uVar12 < local_60);
  }
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    iVar8 = FUN_006eef60();
    uVar14 = 0;
    local_44 = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baab30);
    do {
      uVar7 = FUN_006eef60();
      local_4c = (int *)(((float)((double)uVar14 + (double)(&DAT_00bacb00)[-((int)uVar14 >> 0x1f)])
                          * DAT_00baaa00 + (float)local_44) * DAT_00baa088);
      piVar9 = local_4c;
      FUN_0041d520();
      local_48 = piVar9;
      piVar9 = local_4c;
      FUN_0041d540();
      local_54 = (float)piVar9 * DAT_00baa87c + *(float *)(param_1 + 0x33c);
      local_50 = (float)local_48 * DAT_00baa87c + *(float *)(param_1 + 0x340);
      iVar8 = FUN_00428b20(0x12,0,&local_54,&DAT_00c7b640,param_1,0,uVar7);
      piVar9 = (int *)(iVar8 + 0x3bc);
      if (*(int *)(iVar8 + 0x3bc) != 0) {
        local_48 = piVar9;
        FUN_004cf210(&local_48);
      }
      *piVar9 = param_1;
      FUN_004cdcf0(piVar9);
      uVar14 = uVar14 + 1;
    } while (uVar14 < 3);
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x184) = 3;
    break;
  case 4:
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar3 == (byte **)0x0) {
LAB_00560e9e:
      cVar4 = FUN_0040a5d0(&DAT_00b1dce4,1);
      if (cVar4 != '\0') {
        FUN_0040a1b0(uVar5);
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar10 = (byte **)*ppbVar3;
      }
      pbVar11 = &DAT_00b1dce4;
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar15 = bVar1 < *pbVar11;
        if (bVar1 != *pbVar11) {
LAB_00560e80:
          uVar6 = -(uint)bVar15 | 1;
          goto LAB_00560e85;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar15 = bVar1 < pbVar11[1];
        if (bVar1 != pbVar11[1]) goto LAB_00560e80;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_00560e85:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00560e9e;
    }
    uVar21 = 1;
    uVar20 = 0;
    uVar19 = 0x3e800000;
    uVar7 = FUN_006bec40(&local_5c,0);
    FUN_007e33c0(uVar7,uVar19,uVar20,uVar21);
    if (0 < *(int *)(param_1 + 0xbc0)) break;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if ((2 < uVar14) && (uVar6 = FUN_006eef60(), uVar6 % 0x28 == 0)) goto LAB_00560f69;
    }
    else {
      cVar4 = FUN_00956110(9,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX);
      if (cVar4 != '\0') {
LAB_00560f69:
        *(undefined4 *)(param_1 + 0xb64) = 9;
        break;
      }
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (((uVar14 < 3) && (uVar6 = FUN_006eef60(), uVar6 % 0x14 == 0)) ||
         ((uVar14 < 6 && (uVar14 = FUN_006eef60(), uVar14 % 0x50 == 0)))) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
      }
    }
    else {
      cVar4 = FUN_006cae60(0,7);
      if ((cVar4 != '\0') && (uVar14 < 6)) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
      }
    }
    break;
  case 8:
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar3 == (byte **)0x0) {
LAB_00561009:
      cVar4 = FUN_0040a5d0(&DAT_00b1d53c,1);
      if (cVar4 != '\0') {
        FUN_0040a1b0(uVar5);
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar10 = (byte **)*ppbVar3;
      }
      pbVar11 = &DAT_00b1d53c;
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar15 = bVar1 < *pbVar11;
        if (bVar1 != *pbVar11) {
LAB_00560ff3:
          uVar14 = -(uint)bVar15 | 1;
          goto LAB_00560ff8;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar15 = bVar1 < pbVar11[1];
        if (bVar1 != pbVar11[1]) goto LAB_00560ff3;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_00560ff8:
      if ((uVar14 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00561009;
    }
    uVar21 = 1;
    uVar20 = 0;
    uVar19 = 0x3e800000;
    uVar7 = FUN_006bec40(local_74,0);
    FUN_007e33c0(uVar7,uVar19,uVar20,uVar21);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        iVar8 = FUN_006eef60();
        fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
        local_48 = (int *)(fVar16 + fVar16);
        local_44 = local_48;
        FUN_0041d520();
        FUN_0041d540();
        uVar7 = FUN_006eef60();
        local_54 = (float)local_48 * DAT_00baa81c;
        local_50 = (float)local_44 * DAT_00baa81c;
        local_5c = (float)local_48 + (float)local_48 + *(float *)(param_1 + 0x33c);
        local_58 = (float)local_44 + (float)local_44 + *(float *)(param_1 + 0x340);
        iVar8 = FUN_00428b20(0x12,0,&local_5c,&local_54,param_1,0,uVar7);
        piVar9 = (int *)(iVar8 + 0x3bc);
        *(uint *)(iVar8 + 0x168) = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
        *(undefined4 *)(iVar8 + 0x16c) = *(undefined4 *)(iVar8 + 0x16c);
        if (*piVar9 != 0) {
          local_48 = piVar9;
          FUN_004cf210(&local_48);
        }
        *piVar9 = param_1;
        FUN_004cdcf0(piVar9);
        local_4c = DAT_00baa454;
        piVar9 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (piVar9 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_4c = piVar9;
        }
        local_44 = (int *)0x9e;
        FUN_00956780();
        FUN_0092dc30(local_44,0x3f800000,2,0,local_4c,0);
        uVar7 = FUN_006eef60();
        piVar9 = (int *)FUN_00428b20(1000,0x3b,(float *)(param_1 + 0x33c),&DAT_00c7b640,0,0,uVar7);
        iVar8 = FUN_006eef60();
        piVar9[0x11d] =
             (int)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa81c + DAT_00baa630);
        uVar14 = FUN_006eef60();
        iVar8 = uVar14 % 0xf + 0xf;
        piVar9[0x117] = iVar8;
        piVar9[0x118] = iVar8;
        pcVar2 = *(code **)(*piVar9 + 0x3c);
        iVar8 = FUN_006eef60();
        local_40 = 0x3f800000;
        local_3c = 0x3f800000;
        local_38 = 0x3f800000;
        local_20 = 0;
        local_1c = 0;
        local_18 = 0;
        local_30 = ZEXT816(0);
        local_34 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * (float)DAT_00baa2d0 + DAT_00baa198;
        (*pcVar2)(&local_40,0xffffffff,0xff,0,1);
        (**(code **)(*piVar9 + 0xc))();
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) break;
    }
    *(undefined4 *)(param_1 + 0xb64) = 4;
    break;
  case 9:
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar3 == (byte **)0x0) {
LAB_00561359:
      cVar4 = FUN_0040a5d0(&DAT_00b1d554,1);
      if (cVar4 != '\0') {
        FUN_0040a1b0(uVar5);
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar10 = (byte **)*ppbVar3;
      }
      pbVar11 = &DAT_00b1d554;
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar15 = bVar1 < *pbVar11;
        if (bVar1 != *pbVar11) {
LAB_00561343:
          uVar14 = -(uint)bVar15 | 1;
          goto LAB_00561348;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar15 = bVar1 < pbVar11[1];
        if (bVar1 != pbVar11[1]) goto LAB_00561343;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_00561348:
      if ((uVar14 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00561359;
    }
    if (*(int *)(param_1 + 0x7c) == 0) {
LAB_005614c0:
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
    else {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        uVar14 = 0;
        *(undefined4 *)(param_1 + 0xbc0) = 0x50;
        if (local_60 != 0) {
          do {
            iVar8 = *(int *)(local_68 + uVar14 * 4);
            if (*(int *)(iVar8 + 0x3bc) == param_1) {
              local_44 = (int *)(*(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0x33c));
              local_4c = (int *)(*(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340));
              fVar17 = (float)local_44 * (float)local_44 + (float)local_4c * (float)local_4c;
              FUN_00435a50();
              piVar9 = local_4c;
              fVar16 = (float)local_44;
              if (0.0 < fVar17) {
                piVar9 = (int *)(((float)DAT_00baa454 / fVar17) * (float)local_4c);
                fVar16 = (float)local_44 * ((float)DAT_00baa454 / fVar17);
              }
              fVar17 = *(float *)(iVar8 + 0x36c);
              fVar18 = (float)piVar9 * DAT_00baa81c;
              if (NAN(fVar17) == (fVar17 == 0.0)) {
                *(float *)(iVar8 + 0x360) =
                     (fVar16 * DAT_00baa81c * *(float *)(iVar8 + 0x39c)) / fVar17 +
                     *(float *)(iVar8 + 0x360);
                *(float *)(iVar8 + 0x364) =
                     (fVar18 * *(float *)(iVar8 + 0x39c)) / fVar17 + *(float *)(iVar8 + 0x364);
              }
            }
            uVar14 = uVar14 + 1;
          } while (uVar14 < local_60);
        }
        FUN_00704360(param_1 + 0x33c,0x42f00000,param_1,1,0);
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) goto LAB_005614c0;
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  }
  if (0 < *(int *)(param_1 + 0xbc0)) {
    *(int *)(param_1 + 0xbc0) =
         *(int *)(param_1 + 0xbc0) -
         ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  }
  if (local_6c[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar13 = &DAT_00c7f618;
    }
    else {
      puVar13 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_68 != 0) {
      uVar6 = *(uint *)(local_68 + -4);
      uVar14 = *puVar13;
      *puVar13 = *puVar13 - uVar6;
      puVar13[1] = puVar13[1] - (uint)(uVar14 < uVar6);
      free((void *)(local_68 + -4));
    }
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

