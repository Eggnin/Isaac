/* Local J460 decompiler output.
 * VA: 0x0097baa0
 * Entry: 0097baa0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Circle laser update
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Circle laser update */

void __fastcall HELPER_Laser_UpdateRing(int *param_1)

{
  float *pfVar1;
  float *pfVar2;
  byte bVar3;
  code *pcVar4;
  uint uVar5;
  char cVar6;
  undefined uVar7;
  short sVar8;
  int iVar9;
  uint *puVar10;
  byte **ppbVar11;
  uint uVar12;
  undefined4 ****ppppuVar13;
  undefined4 uVar14;
  undefined4 ***pppuVar15;
  bool bVar16;
  float fVar17;
  undefined4 ****ppppuVar18;
  undefined4 *****pppppuVar19;
  float fVar20;
  int local_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  float fStack_b8;
  undefined4 local_a4;
  undefined4 uStack_a0;
  undefined4 local_9c;
  char local_98 [4];
  int local_94;
  float local_90;
  undefined4 ****local_8c;
  int *local_88;
  undefined4 ***local_84;
  float local_80;
  undefined4 ****local_7c [3];
  float local_70;
  undefined4 ****local_6c [2];
  int local_64;
  undefined4 ****local_60;
  char local_59;
  undefined4 ****local_58;
  undefined4 *****local_54;
  undefined local_50 [16];
  undefined4 *****local_40 [2];
  undefined local_38 [12];
  uint local_2c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00b0cbe8;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_88 = param_1;
  HELPER_Laser_AdvanceLifetime(local_24);
  if ((*(char *)(param_1 + 0x117) != '\0') || (*(char *)((int)param_1 + 0x515) == '\0')) {
    param_1[0x10e] = param_1[0x10a];
    param_1[0x10f] = param_1[0x10b];
    param_1[0x110] = param_1[0x10c];
    param_1[0x111] = param_1[0x10d];
  }
  if ((((*(char *)((int)param_1 + 0x173) == '\0') && (*(char *)((int)param_1 + 0x175) == '\0')) &&
      (param_1[0xb] != 8)) &&
     ((*(char *)(param_1 + 0x117) != '\0' || (iVar9 = FUN_006ac760(), iVar9 != 0)))) {
    local_59 = '\x01';
    if (param_1[0x14b] == 0) {
      param_1[0x149] = param_1[0x148];
    }
  }
  else {
    local_59 = '\0';
  }
  if ((*(char *)((int)param_1 + 0x175) == '\0') && (param_1[0xc] == 1)) {
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  }
  local_60 = (undefined4 ****)DAT_00baa454;
  param_1[300] = param_1[299];
  param_1[0x11a] = param_1[0xcf];
  param_1[0x11b] = param_1[0xd0];
  param_1[0x11c] = DAT_00c7b640;
  param_1[0x11d] = DAT_00c7b644;
  local_58 = (undefined4 ****)param_1[0x12f];
  iVar9 = param_1[0xef];
  local_84 = local_60;
  if ((iVar9 != 0) && (*(int *)(iVar9 + 0x28) == 3)) {
    local_58 = (undefined4 ****)((float)local_58 * DAT_00baa380);
  }
  local_64 = param_1[0xf2];
  if ((local_64 != 0) && (*(int *)(local_64 + 0x28) != 1)) {
    local_64 = 0;
  }
  ppppuVar18 = local_58;
  puVar10 = (uint *)FUN_00417170(&DAT_00c34890);
  if (((*puVar10 | puVar10[1]) != 0) || ((puVar10[2] | puVar10[3]) != 0)) {
    fVar17 = (float)param_1[0xe9] * DAT_00baa120;
    FUN_0041d520();
    ppppuVar18 = (undefined4 ****)(fVar17 * DAT_00baa87c + (float)local_58);
    local_58 = ppppuVar18;
  }
  if ((param_1[0xc] == 3) && (iVar9 == local_64)) {
LAB_0097bdfd:
    if ((iVar9 != 0) && (*(char *)(iVar9 + 0x173) == '\0')) goto LAB_0097c1af;
    if (*(char *)((int)param_1 + 0x173) == '\0') {
      *(undefined *)((int)param_1 + 0x173) = 1;
      param_1[0x116] = 0;
      goto LAB_0097c1af;
    }
LAB_0097c1bc:
    if (param_1[0xb] == 2) {
      iVar9 = param_1[0x1f];
      if ((iVar9 == 0) || (*(char *)(iVar9 + 0x34) == '\0')) {
        fVar17 = DAT_00baad50;
        if (param_1[0x1f] != 0) {
          fVar17 = (float)param_1[0x22];
        }
        local_84 = (undefined4 ***)(fVar17 * DAT_00baa198 + (float)local_60);
      }
      else {
        FUN_00452bf0(local_40);
        local_14 = 0;
        FUN_004997f0(&DAT_00b61844,4);
        local_54 = local_40;
        if (0xf < local_2c) {
          local_54 = local_40[0];
        }
        ppbVar11 = (byte **)param_1[0x1f];
        if (ppbVar11 == (byte **)0x0) {
LAB_0097c25f:
          cVar6 = HELPER_0040a5d0_AnimationPredicateC(local_54,1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
            param_1 = local_88;
          }
        }
        else {
          pppppuVar19 = local_54;
          if (&DAT_0000000f < ppbVar11[5]) {
            ppbVar11 = (byte **)*ppbVar11;
          }
          do {
            bVar3 = *(byte *)ppbVar11;
            bVar16 = bVar3 < *(byte *)pppppuVar19;
            if (bVar3 != *(byte *)pppppuVar19) {
LAB_0097c244:
              uVar12 = -(uint)bVar16 | 1;
              goto LAB_0097c249;
            }
            if (bVar3 == 0) break;
            bVar3 = *(byte *)((int)ppbVar11 + 1);
            bVar16 = bVar3 < *(byte *)((int)pppppuVar19 + 1);
            if (bVar3 != *(byte *)((int)pppppuVar19 + 1)) goto LAB_0097c244;
            ppbVar11 = (byte **)((int)ppbVar11 + 2);
            pppppuVar19 = (undefined4 *****)((int)pppppuVar19 + 2);
          } while (bVar3 != 0);
          uVar12 = 0;
LAB_0097c249:
          if ((uVar12 != 0) ||
             ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_0097c25f;
        }
        local_14 = 0xffffffff;
        if (0xf < local_2c) {
          uVar12 = local_2c + 1;
          pppppuVar19 = local_40[0];
          if (0xfff < uVar12) {
            pppppuVar19 = (undefined4 *****)local_40[0][-1];
            uVar12 = local_2c + 0x24;
            if ((byte *)0x1f < (byte *)((int)local_40[0] + (-4 - (int)pppppuVar19))) {
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(pppppuVar19,uVar12);
        }
        iVar9 = param_1[0x1f];
      }
      if ((iVar9 != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_0097c301;
    }
    (**(code **)(*param_1 + 0x28))();
  }
  else {
    puVar10 = (uint *)FUN_00417170(&DAT_00c34b30);
    if (((*puVar10 | puVar10[1]) != 0) || ((puVar10[2] | puVar10[3]) != 0)) {
      if (local_64 == 0) {
        local_54 = (undefined4 *****)0x0;
      }
      else {
        fVar17 = (float)param_1[0xd0] - *(float *)(local_64 + 0x340);
        fVar20 = (float)param_1[0xcf] - *(float *)(local_64 + 0x33c);
        pppppuVar19 = (undefined4 *****)(fVar17 * fVar17 + fVar20 * fVar20);
        FUN_00435a50();
        local_54 = pppppuVar19;
      }
      local_7c[0] = (undefined4 ****)0x43fa0000;
      pppppuVar19 = local_7c;
      if ((float)local_54 <= DAT_00baab7c) {
        pppppuVar19 = &local_54;
      }
      local_58 = (undefined4 ****)
                 (((float)*pppppuVar19 * DAT_00baa924) / DAT_00baab7c + (float)local_58);
      ppppuVar18 = local_58;
    }
    fVar17 = DAT_00baab7c;
    puVar10 = (uint *)FUN_00417170(&DAT_00c34c40);
    if (((*puVar10 | puVar10[1]) != 0) || ((puVar10[2] | puVar10[3]) != 0)) {
      if (local_64 == 0) {
        local_54 = (undefined4 *****)0x0;
      }
      else {
        fVar17 = (float)param_1[0xd0] - *(float *)(local_64 + 0x340);
        fVar20 = (float)param_1[0xcf] - *(float *)(local_64 + 0x33c);
        pppppuVar19 = (undefined4 *****)(fVar17 * fVar17 + fVar20 * fVar20);
        FUN_00435a50();
        local_54 = pppppuVar19;
        fVar17 = DAT_00baab7c;
      }
      local_7c[0] = (undefined4 ****)0x43fa0000;
      pppppuVar19 = local_7c;
      if ((float)local_54 <= fVar17) {
        pppppuVar19 = &local_54;
      }
      local_58 = (undefined4 ****)
                 ((float)local_58 + ((float)local_60 - (float)*pppppuVar19 / fVar17) * DAT_00baa924)
      ;
      ppppuVar18 = local_58;
    }
    if (param_1[0xc] != 2) {
      local_58 = ppppuVar18;
      if (param_1[0xc] != 3) goto LAB_0097c3ac;
      goto LAB_0097bdfd;
    }
    iVar9 = *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca];
    ppppuVar18 = local_58;
    if (iVar9 < 10) {
      local_54 = (undefined4 *****)((float)local_60 - (float)iVar9 / DAT_00baa81c);
      fVar17 = (float)local_54 * DAT_00baa708;
      FUN_0041d520();
      local_7c[0] = (undefined4 ****)0x40a00000;
      local_54 = (undefined4 *****)
                 (((float)local_60 -
                  ((float)local_54 * (float)local_54 * (float)local_54 - fVar17 * (float)local_54))
                 * (float)local_58);
      pppppuVar19 = &local_54;
      if ((float)local_54 <= DAT_00baa784) {
        pppppuVar19 = local_7c;
      }
      ppppuVar18 = *pppppuVar19;
      if ((float)local_58 < (float)ppppuVar18) {
        local_84 = (undefined4 ***)((float)ppppuVar18 / (float)local_58);
        ppppuVar18 = local_58;
      }
    }
    local_58 = ppppuVar18;
    pfVar1 = (float *)(param_1 + 0xcf);
    HELPER_RoomClampedPoint(&local_70,pfVar1,local_58,local_58,local_58);
    puVar10 = (uint *)FUN_00417170(&DAT_00c34b80);
    if (((*puVar10 | puVar10[1]) == 0) && ((puVar10[2] | puVar10[3]) == 0)) {
      puVar10 = (uint *)FUN_00417170(&DAT_00c348d0);
      if (((*puVar10 | puVar10[1]) == 0) && ((puVar10[2] | puVar10[3]) == 0)) {
        local_7c[0] = (undefined4 ****)(local_70 - *pfVar1);
        local_54 = (undefined4 *****)((float)local_6c[0] - (float)param_1[0xd0]);
        fVar17 = (float)local_7c[0] * (float)local_7c[0] + (float)local_54 * (float)local_54;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar17) {
          local_7c[0] = (undefined4 ****)((float)local_7c[0] * ((float)local_60 / fVar17));
          local_54 = (undefined4 *****)((float)local_54 * ((float)local_60 / fVar17));
        }
        local_8c = (undefined4 ****)param_1[0xd8];
        local_6c[0] = (undefined4 ****)param_1[0xd9];
        fVar17 = (float)local_8c * (float)local_8c + (float)local_6c[0] * (float)local_6c[0];
        FUN_00435a50();
        ppppuVar18 = local_8c;
        ppppuVar13 = local_6c[0];
        if (DAT_00ba9fe4 < fVar17) {
          ppppuVar18 = (undefined4 ****)((float)param_1[0xd8] * ((float)local_60 / fVar17));
          ppppuVar13 = (undefined4 ****)((float)param_1[0xd9] * ((float)local_60 / fVar17));
        }
        if (((float)local_7c[0] * (float)ppppuVar18 + (float)local_54 * (float)ppppuVar13 <
             DAT_00baad40) && (param_1[0x116] == 0)) {
          param_1[0x116] = 5;
        }
      }
    }
    else {
      pfVar2 = (float *)(param_1 + 0xd8);
      if (((local_70 < *pfVar1) && (fVar17 = *pfVar2, 0.0 < fVar17)) ||
         ((*pfVar1 < local_70 && (fVar17 = *pfVar2, fVar17 < 0.0)))) {
        fVar17 = fVar17 * DAT_00baad50;
        *pfVar1 = local_70;
        *pfVar2 = fVar17;
        puVar10 = (uint *)FUN_00592200(local_38);
        param_1[0x10a] = param_1[0x10a] & *puVar10;
        param_1[0x10b] = param_1[0x10b] & puVar10[1];
        param_1[0x10c] = param_1[0x10c] & puVar10[2];
        param_1[0x10d] = param_1[0x10d] & puVar10[3];
        param_1[0x112] = param_1[0x112] | DAT_00c34b80;
        param_1[0x113] = param_1[0x113] | DAT_00c34b84;
        param_1[0x114] = param_1[0x114] | DAT_00c34b88;
        param_1[0x115] = param_1[0x115] | DAT_00c34b8c;
      }
      pfVar1 = (float *)(param_1 + 0xd9);
      if ((((float)local_6c[0] < (float)param_1[0xd0]) && (fVar17 = *pfVar1, 0.0 < fVar17)) ||
         (((float)param_1[0xd0] < (float)local_6c[0] && (fVar17 = *pfVar1, fVar17 < 0.0)))) {
        fVar17 = fVar17 * DAT_00baad50;
        param_1[0xd0] = (int)local_6c[0];
        *pfVar1 = fVar17;
        puVar10 = (uint *)FUN_00592200(local_38);
        param_1[0x10a] = param_1[0x10a] & *puVar10;
        param_1[0x10b] = param_1[0x10b] & puVar10[1];
        param_1[0x10c] = param_1[0x10c] & puVar10[2];
        param_1[0x10d] = param_1[0x10d] & puVar10[3];
        param_1[0x112] = param_1[0x112] | DAT_00c34b80;
        param_1[0x113] = param_1[0x113] | DAT_00c34b84;
        param_1[0x114] = param_1[0x114] | DAT_00c34b88;
        param_1[0x115] = param_1[0x115] | DAT_00c34b8c;
      }
    }
LAB_0097c1af:
    if (*(char *)((int)param_1 + 0x173) != '\0') goto LAB_0097c1bc;
  }
LAB_0097c301:
  pppuVar15 = (undefined4 ***)param_1[0x116];
  ppppuVar18 = (undefined4 ****)(param_1 + 0x116);
  if ((0 < (int)pppuVar15) && (*(char *)((int)param_1 + 0x175) == '\0')) {
    if ((param_1[0xb] != 2) && (param_1[0xc] == 2)) {
      local_84 = (undefined4 ***)((float)(5 - (int)pppuVar15) * DAT_00baa198 + (float)local_60);
      FUN_004073d0(param_1 + 0x6e);
      pppuVar15 = *ppppuVar18;
      local_6c[0] = (undefined4 ****)&DAT_00000005;
      ppppuVar13 = local_6c;
      if ((int)pppuVar15 < 5) {
        ppppuVar13 = ppppuVar18;
      }
      param_1[0x3f] = (int)(((float)(int)*ppppuVar13 * (float)param_1[0x3f]) / DAT_00baa784);
    }
    *ppppuVar18 = (undefined4 ***)((int)pppuVar15 + -1);
    if ((int)(undefined4 ***)((int)pppuVar15 + -1) < 1) {
      *(undefined *)((int)param_1 + 0x173) = 1;
    }
  }
LAB_0097c3ac:
  local_54 = (undefined4 *****)DAT_00baa1f8;
  if (param_1[0xc] == 3) {
    iVar9 = param_1[0xef];
    if ((iVar9 != 0) && (*(char *)(param_1 + 0x139) == '\0')) {
      fVar17 = *(float *)(iVar9 + 0x340);
      param_1[0xcf] = (int)(*(float *)(iVar9 + 0x33c) + (float)param_1[0x104]);
      param_1[0xd0] = (int)(fVar17 + (float)param_1[0x105]);
      iVar9 = *(int *)(param_1[0xef] + 0x364);
      param_1[0xd8] = *(int *)(param_1[0xef] + 0x360);
      param_1[0xd9] = iVar9;
    }
    iVar9 = param_1[0xb];
    if ((((iVar9 == 1) || (iVar9 == 9)) || (iVar9 == 0xb)) || (iVar9 == 0xe)) {
      local_6c[0] = (undefined4 ****)&DAT_00000014;
      ppppuVar18 = local_6c;
      if (param_1[0x116] < 0x14) {
        ppppuVar18 = (undefined4 ****)(param_1 + 0x116);
      }
      local_c4 = 0x3f800000;
      uStack_c0 = 0x3f800000;
      uStack_bc = 0x3f800000;
      local_a4 = 0;
      uStack_a0 = 0;
      local_9c = 0;
      fStack_b8 = (float)(int)*ppppuVar18 / DAT_00baa87c;
      if (param_1 + 0x3c != &local_c4) {
        *(undefined (*) [16])(param_1 + 0x40) = ZEXT816(0);
        param_1[0x3c] = 0x3f800000;
        param_1[0x3d] = 0x3f800000;
        param_1[0x3e] = 0x3f800000;
        param_1[0x3f] = (int)fStack_b8;
        *(undefined8 *)(param_1 + 0x44) = 0;
        param_1[0x46] = 0;
      }
    }
  }
  else {
    ppppuVar18 = local_58;
    puVar10 = (uint *)FUN_00417170(&DAT_00c348d0);
    if (((*puVar10 | puVar10[1]) == 0) && ((puVar10[2] | puVar10[3]) == 0)) {
      HELPER_RoomClampedPoint(&local_70,param_1 + 0xcf,ppppuVar18,ppppuVar18,ppppuVar18);
      param_1[0xcf] = (int)local_70;
      param_1[0xd0] = (int)local_6c[0];
    }
    else if (*(char *)((int)param_1 + 0x175) == '\0') {
      local_6c[0] = (undefined4 ****)param_1[0xcf];
      pfVar1 = (float *)(param_1 + 0xcf);
      local_8c = (undefined4 ****)param_1[0xd0];
      HELPER_RoomWrapPoint(&local_80,pfVar1,0xc3480000,0xc3480000,0xc3480000);
      *pfVar1 = local_80;
      param_1[0xd0] = (int)local_7c[0];
      if (((NAN(*pfVar1) || NAN((float)local_6c[0])) == (*pfVar1 == (float)local_6c[0])) ||
         ((NAN((float)param_1[0xd0]) || NAN((float)local_8c)) ==
          ((float)param_1[0xd0] == (float)local_8c))) {
        local_54 = (undefined4 *****)local_60;
        if ((param_1[0xc] == 2) && (param_1[0x116] == 0)) {
          param_1[0x116] = 0x2d;
        }
      }
    }
  }
  if (((param_1[0xb] == 2) || (param_1[0xb] == 10)) && (iVar9 = param_1[0xf0], iVar9 != 0)) {
    fVar17 = (float)param_1[0xcf];
    ppppuVar18 = (undefined4 ****)param_1[0xd0];
    if (((*(char *)((int)param_1 + 0x175) == '\0') &&
        (puVar10 = (uint *)FUN_00417170(&DAT_00c348d0), (*puVar10 | puVar10[1]) == 0)) &&
       (((puVar10[2] | puVar10[3]) == 0 && (param_1[0xc] != 3)))) {
      local_70 = (float)param_1[0xdb] * (float)param_1[0xd8] + fVar17;
      local_6c[0] = (undefined4 ****)
                    ((float)param_1[0xdb] * (float)param_1[0xd9] + (float)ppppuVar18);
      HELPER_RoomClampedPoint(&local_90,&local_70,local_58,local_58,local_58);
      iVar9 = param_1[0xf0];
      ppppuVar18 = local_8c;
      fVar17 = local_90;
    }
    if (param_1[0xc] == 2) {
      ppppuVar18 = (undefined4 ****)((float)ppppuVar18 - (float)param_1[0xd9]);
      fVar17 = fVar17 - (float)param_1[0xd8];
    }
    *(float *)(iVar9 + 0x33c) = fVar17;
    *(undefined4 *****)(iVar9 + 0x340) = ppppuVar18;
    (**(code **)(*(int *)param_1[0xf0] + 0x3c))(param_1 + 0x3c,0xffffffff,0xff,0,1);
    iVar9 = param_1[0xf0];
    *(int *)(iVar9 + 0x34c) = param_1[0xd3];
    *(int *)(iVar9 + 0x350) = param_1[0xd4];
  }
  puVar10 = (uint *)FUN_00417170(&DAT_00c34ba0);
  if (((*puVar10 | puVar10[1]) == 0) && ((puVar10[2] | puVar10[3]) == 0)) {
    uVar14 = 0;
  }
  else {
    uVar14 = 1;
  }
  FUN_009a0850(param_1 + 0xcf,uVar14,param_1[0xef]);
  FUN_0099e360();
  FUN_009a0de0();
  puVar10 = (uint *)FUN_00417170(&DAT_00c34870);
  if (((*puVar10 | puVar10[1]) != 0) || ((puVar10[2] | puVar10[3]) != 0)) {
    if ((param_1[0xef] == 0) || (*(int *)(param_1[0xef] + 0x28) != 8)) {
      if (local_64 != 0) {
        FUN_007c2d50(10);
      }
    }
    else {
      local_6c[0] = (undefined4 ****)((float)*(int *)(DAT_00c71678 + 0x264f8) * DAT_00baa554);
      if (local_64 != 0) {
        ppppuVar18 = local_6c[0];
        FUN_007c2d50(10);
        local_60 = ppppuVar18;
      }
    }
    FUN_0099ec00();
  }
  *(undefined *)((int)param_1 + 0x516) = 0;
  if (param_1[0x61] != 0) {
    local_70 = (float)param_1[0xd3] * DAT_00baa3a4;
    local_6c[0] = (undefined4 ****)((float)param_1[0xd4] * DAT_00baa3a4);
    uVar7 = FUN_009a0520(&local_70,param_1[0x61]);
    *(undefined *)((int)param_1 + 0x516) = uVar7;
  }
  if (local_59 == '\0') {
    if ((((*(char *)((int)param_1 + 0x173) == '\0') && (*(char *)((int)param_1 + 0x175) == '\0')) &&
        (param_1[0xb] == 8)) && (iVar9 = FUN_006ac760(), iVar9 != 0)) {
      FUN_0041a790(local_98,param_1 + 0xcf,8);
      local_14 = 1;
      local_54 = (undefined4 *****)0x0;
      if (local_8c != (undefined4 ****)0x0) {
        do {
          ppppuVar18 = local_54;
          cVar6 = HELPER_Entity_DamageFilter(0);
          if ((cVar6 != '\0') &&
             (cVar6 = FUN_006a8fa0(*(undefined4 *)(local_94 + (int)ppppuVar18 * 4)), cVar6 == '\0'))
          {
            pcVar4 = *(code **)(**(int **)(local_94 + (int)ppppuVar18 * 4) + 0x20);
            FUN_00431310(local_88);
            (*pcVar4)(local_88[0xe2],0,0,local_50,0x1e);
            param_1 = local_88;
            ppppuVar18 = local_54;
          }
          local_54 = (undefined4 *****)((int)ppppuVar18 + 1);
        } while (local_54 < local_8c);
      }
      local_14 = 0xffffffff;
      if (local_98[0] == '\0') {
        if (DAT_00c7de78 == 0) {
          puVar10 = &DAT_00c7f618;
        }
        else {
          puVar10 = (uint *)(DAT_00c7de78 + 0x30);
        }
        if (local_94 != 0) {
          uVar5 = *(uint *)(local_94 + -4);
          uVar12 = *puVar10;
          *puVar10 = *puVar10 - uVar5;
          puVar10[1] = puVar10[1] - (uint)(uVar12 < uVar5);
          free((void *)(local_94 + -4));
        }
        local_14 = 0xffffffff;
      }
    }
  }
  else {
    HELPER_Laser_AdvanceCountdown();
  }
  local_6c[0] = (undefined4 ****)param_1[0x151];
  sVar8 = _fdclass(local_6c[0]);
  if ((sVar8 < 1) || (*(char *)((int)param_1 + 0x516) != '\0')) {
    bVar16 = true;
  }
  else {
    bVar16 = false;
  }
  if ((local_59 != '\0') && (bVar16)) {
    FUN_0096d3f0(param_1 + 0x152,param_1 + 0x154);
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

