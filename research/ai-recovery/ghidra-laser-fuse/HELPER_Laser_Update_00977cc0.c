/* Local J460 decompiler output.
 * VA: 0x00977cc0
 * Entry: 00977cc0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: native laser vtable
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; native laser vtable */

void __fastcall HELPER_Laser_Update(int *param_1)

{
  int **ppiVar1;
  byte bVar2;
  int *piVar3;
  byte **ppbVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  char cVar9;
  uint uVar10;
  uint *puVar11;
  int iVar12;
  byte **ppbVar13;
  undefined4 uVar14;
  int **ppiVar15;
  byte **ppbVar16;
  undefined4 *puVar17;
  uint extraout_EDX;
  bool bVar18;
  float fVar19;
  int **local_4c;
  int **local_48;
  byte **local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float local_30;
  undefined4 *local_2c;
  float local_28;
  float local_24;
  float fStack_20;
  undefined4 uStack_1c;
  uint uStack_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00b0cb35;
  local_10 = ExceptionList;
  uVar10 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_14 = uVar10;
  puVar11 = (uint *)FUN_00417170(&DAT_00c34b40,uVar10);
  if (((((*puVar11 | puVar11[1]) != 0) || ((puVar11[2] | puVar11[3]) != 0)) &&
      (iVar12 = param_1[0xc], iVar12 != 1)) &&
     (((iVar12 != 2 && (iVar12 != 3)) && (0 < param_1[0x116])))) {
    puVar11 = (uint *)FUN_00592200(&local_24);
    local_44 = (byte **)param_1[0x138];
    param_1[0x10a] = param_1[0x10a] & *puVar11;
    param_1[0x10b] = param_1[0x10b] & puVar11[1];
    param_1[0x10c] = param_1[0x10c] & puVar11[2];
    param_1[0x10d] = param_1[0x10d] & puVar11[3];
    param_1[0x112] = param_1[0x112] | DAT_00c34b40;
    param_1[0x113] = param_1[0x113] | DAT_00c34b44;
    param_1[0x114] = param_1[0x114] | DAT_00c34b48;
    param_1[0x115] = param_1[0x115] | DAT_00c34b4c;
    iVar12 = param_1[0xb];
    if ((iVar12 == 0xb) || (iVar12 == 0xe)) {
      local_44 = (byte **)((float)local_44 + (float)local_44);
    }
    else if ((iVar12 == 6) || (iVar12 == 0xf)) {
      local_44 = (byte **)((float)local_44 * DAT_00baa6fc);
    }
    else if (iVar12 == 0xd) {
      local_44 = (byte **)((float)local_44 * DAT_00baa784);
    }
    cVar9 = FUN_0096ce30();
    uVar14 = 0x47;
    if (cVar9 == '\0') {
      uVar14 = 0x7e;
    }
    local_4c = (int **)HELPER_Entity_SpawnRelay
                                 (1000,uVar14,param_1 + 0xcf,&DAT_00c7b640,param_1[0xf2],0,
                                  param_1[0xfb]);
    ppiVar15 = (int **)param_1[0x14f];
    ppiVar1 = (int **)(param_1 + 0x14f);
    if (ppiVar15 != local_4c) {
      if (ppiVar15 != (int **)0x0) {
        local_48 = ppiVar1;
        FUN_004cf210(&local_48);
      }
      *ppiVar1 = (int *)local_4c;
      ppiVar15 = local_4c;
      if (local_4c != (int **)0x0) {
        FUN_004cdcf0(ppiVar1);
        ppiVar15 = (int **)param_1[0x14f];
      }
    }
    local_48 = ppiVar15 + 0xf0;
    if (*local_48 != (int *)0x0) {
      local_4c = local_48;
      FUN_004cf210(&local_4c);
    }
    *local_48 = param_1;
    FUN_004cdcf0(local_48);
    piVar3 = *ppiVar1;
    piVar3[0xd3] = param_1[0xd3];
    piVar3[0xd4] = param_1[0xd4];
    piVar3 = *ppiVar1;
    fVar19 = (float)local_44 * DAT_00c37940;
    piVar3[0x39] = (int)((float)local_44 * DAT_00c3793c);
    piVar3[0x3a] = (int)fVar19;
    (**(code **)(**ppiVar1 + 0x3c))(param_1 + 0x6e,0xffffffff,0xff,0,1);
    (**(code **)(**ppiVar1 + 0x40))(param_1[0xe2]);
    piVar3 = *ppiVar1;
    iVar12 = param_1[0x10b];
    iVar5 = param_1[0x10c];
    iVar6 = param_1[0x10d];
    piVar3[0x108] = param_1[0x10a];
    piVar3[0x109] = iVar12;
    piVar3[0x10a] = iVar5;
    piVar3[0x10b] = iVar6;
    if ((param_1[0xef] != 0) && (*(int *)(param_1[0xef] + 0x28) == 7)) {
      *(undefined *)((int)*ppiVar1 + 0x171) = 0;
    }
    (**(code **)(**ppiVar1 + 0xc))();
    local_48 = (int **)*ppiVar1;
    ppiVar1 = (int **)(param_1 + 0xef);
    if (*ppiVar1 != (int *)0x0) {
      local_4c = ppiVar1;
      FUN_004cf210(&local_4c);
    }
    *ppiVar1 = (int *)local_48;
    if (local_48 != (int **)0x0) {
      FUN_004cdcf0(ppiVar1);
    }
    param_1[0x150] = 2;
    *(undefined *)((int)param_1 + 0x171) = 0;
    *(undefined *)(param_1 + 0x139) = 1;
  }
  if (((param_1[0x14f] != 0) && (*(int *)(param_1[0x14f] + 0x450) == 0)) && (param_1[0x150] < 2)) {
    param_1[0x150] = 2;
  }
  for (iVar12 = param_1[0x14b]; iVar12 != 0; iVar12 = *(int *)(iVar12 + 0x52c)) {
  }
  puVar11 = (uint *)FUN_00417170(&DAT_00c347f0,uVar10);
  if (((*puVar11 | puVar11[1]) == 0) && ((puVar11[2] | puVar11[3]) == 0)) {
    puVar11 = (uint *)FUN_00417170(&DAT_00c348d0,uVar10);
    if (((*puVar11 | puVar11[1]) != 0) || ((puVar11[2] | puVar11[3]) != 0)) {
      FUN_00407170();
      uVar10 = extraout_EDX & 0x80000007;
      if ((int)uVar10 < 0) {
        uVar10 = (uVar10 - 1 | 0xfffffff8) + 1;
      }
      switch(uVar10) {
      case 0:
        local_30 = _UNK_00bac950;
        local_2c = _UNK_00bac954;
        local_28 = _UNK_00bac958;
        local_24 = _UNK_00bac95c;
        break;
      case 1:
      case 7:
        local_30 = _UNK_00bac960;
        local_2c = _UNK_00bac964;
        local_28 = _UNK_00bac968;
        local_24 = _UNK_00bac96c;
        break;
      case 2:
      case 6:
        local_30 = _UNK_00bac970;
        local_2c = _UNK_00bac974;
        local_28 = _UNK_00bac978;
        local_24 = _UNK_00bac97c;
        break;
      case 3:
      case 5:
        local_30 = _UNK_00bac990;
        local_2c = _UNK_00bac994;
        local_28 = _UNK_00bac998;
        local_24 = _UNK_00bac99c;
        break;
      case 4:
        local_30 = _UNK_00bac9a0;
        local_2c = _UNK_00bac9a4;
        local_28 = _UNK_00bac9a8;
        local_24 = _UNK_00bac9ac;
      }
      goto LAB_00978138;
    }
  }
  else {
    FUN_00684b90(0x3f800000);
    local_30 = local_28 * DAT_00baa75c;
    local_2c = (undefined4 *)(local_24 * DAT_00baa75c);
    local_28 = fStack_20 * DAT_00baa75c;
    local_40 = _DAT_00bac7b0;
    uStack_3c = _UNK_00bac7b4;
    uStack_38 = _UNK_00bac7b8;
    uStack_34 = _UNK_00bac7bc;
    local_24 = _DAT_00baaef0;
    fStack_20 = _UNK_00baaef4;
    uStack_1c = _UNK_00baaef8;
    uStack_18 = _UNK_00baaefc;
LAB_00978138:
    (**(code **)(*param_1 + 0x3c))(&local_40,0xffffffff,0xff,0,1);
    if ((int *)param_1[0xf0] != (int *)0x0) {
      (**(code **)(*(int *)param_1[0xf0] + 0x3c))(&local_40,0xffffffff,0xff,0,1);
    }
    if ((int *)param_1[0x14f] != (int *)0x0) {
      (**(code **)(*(int *)param_1[0x14f] + 0x3c))(&local_40,0xffffffff,0xff,0,1);
    }
  }
  if (0 < param_1[0x150]) {
    iVar12 = param_1[0x150] + -1;
    param_1[0x150] = iVar12;
    if (0 < iVar12) goto LAB_0097858b;
    *(undefined *)((int)param_1 + 0x171) = 1;
  }
  if (*(char *)(param_1 + 0x117) == '\0') {
    iVar12 = param_1[0xc];
    if (((iVar12 == 1) || (iVar12 == 2)) || (iVar12 == 3)) {
      FUN_0097baa0();
    }
    else {
      FUN_00973c60();
    }
    if (((param_1[0xb] == 1) && (param_1[0xf2] != 0)) && (*(int *)(param_1[0xf2] + 0x28) == 0x193))
    {
      if (*(char *)((int)param_1 + 0x173) == '\0') {
        cVar9 = FUN_0092e560(0x3cb);
        if (cVar9 == '\0') {
          local_44 = (byte **)0x3cb;
          FUN_00956780();
          FUN_0092dc30(local_44,0x3f800000,2,1,0x3f800000,0);
        }
      }
      else {
        FUN_0092e230(0x3cb);
      }
    }
    HELPER_Entity_BaseUpdate();
    FUN_008616c0(param_1);
    goto LAB_0097858b;
  }
  iVar12 = param_1[0xd];
  if (iVar12 == 0x27) {
    if (param_1[0xef] != 0) {
      if (*(int *)(param_1[0xef] + 0x34) != 0x109) {
        FUN_009704a0();
        *(undefined *)(param_1 + 0x117) = 0;
        goto LAB_0097858b;
      }
LAB_0097821e:
      uStack_1c = 0;
      uStack_18 = 0xf;
      local_2c = (undefined4 *)0x0;
      local_2c = (undefined4 *)FUN_0040cf00();
      uVar8 = s_gfx_007_006_CageVisLaser_anm2_00b7ccac._12_4_;
      uVar7 = s_gfx_007_006_CageVisLaser_anm2_00b7ccac._8_4_;
      uVar14 = s_gfx_007_006_CageVisLaser_anm2_00b7ccac._4_4_;
      uStack_1c = 0x1d;
      uStack_18 = 0x1f;
      *local_2c = s_gfx_007_006_CageVisLaser_anm2_00b7ccac._0_4_;
      local_2c[1] = uVar14;
      local_2c[2] = uVar7;
      local_2c[3] = uVar8;
      *(undefined8 *)(local_2c + 4) = s_gfx_007_006_CageVisLaser_anm2_00b7ccac._16_8_;
      local_2c[6] = s_gfx_007_006_CageVisLaser_anm2_00b7ccac._24_4_;
      *(char *)(local_2c + 7) = s_gfx_007_006_CageVisLaser_anm2_00b7ccac[0x1c];
      *(undefined *)((int)local_2c + 0x1d) = 0;
      local_8 = 0;
      FUN_0040bd50(&local_2c,1);
      local_8 = 0xffffffff;
      if (0xf < uStack_18) {
        uVar10 = uStack_18 + 1;
        puVar17 = local_2c;
        if (0xfff < uVar10) {
          puVar17 = (undefined4 *)local_2c[-1];
          uVar10 = uStack_18 + 0x24;
          if (0x1f < (uint)((int)local_2c + (-4 - (int)puVar17))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(puVar17,uVar10);
      }
      local_44 = (byte **)(param_1 + 0x18);
      if (0xf < (uint)param_1[0x1d]) {
        local_44 = (byte **)*local_44;
      }
      ppbVar4 = (byte **)param_1[0x1f];
      if (ppbVar4 != (byte **)0x0) {
        ppbVar13 = ppbVar4;
        ppbVar16 = local_44;
        if (&DAT_0000000f < ppbVar4[5]) {
          ppbVar13 = (byte **)*ppbVar4;
        }
        do {
          bVar2 = *(byte *)ppbVar13;
          bVar18 = bVar2 < *(byte *)ppbVar16;
          if (bVar2 != *(byte *)ppbVar16) {
LAB_00978314:
            uVar10 = -(uint)bVar18 | 1;
            goto LAB_00978319;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar13 + 1);
          bVar18 = bVar2 < *(byte *)((int)ppbVar16 + 1);
          if (bVar2 != *(byte *)((int)ppbVar16 + 1)) goto LAB_00978314;
          ppbVar13 = (byte **)((int)ppbVar13 + 2);
          ppbVar16 = (byte **)((int)ppbVar16 + 2);
        } while (bVar2 != 0);
        uVar10 = 0;
LAB_00978319:
        if ((uVar10 == 0) &&
           ((*(byte *)(ppbVar4 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_009784c5;
      }
      cVar9 = HELPER_0040a5d0_AnimationPredicateC(local_44,1);
      if (cVar9 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        FUN_009704a0();
        *(undefined *)(param_1 + 0x117) = 0;
        goto LAB_0097858b;
      }
    }
  }
  else if (iVar12 == 0x44) {
    iVar12 = param_1[0xef];
    if ((((iVar12 != 0) && (*(int *)(iVar12 + 0x28) == 0x44)) && (*(int *)(iVar12 + 0x2c) == 1)) &&
       (*(int *)(iVar12 + 0x30) == 1)) goto LAB_0097821e;
  }
  else if ((iVar12 == 0x3b6) && (param_1[0xb] == 1)) {
    uStack_1c = 0;
    uStack_18 = 0xf;
    local_2c = (undefined4 *)0x0;
    local_2c = (undefined4 *)FUN_0040cf00();
    uVar8 = s_gfx_007_001_Static_Laser_anm2_00b7cccc._12_4_;
    uVar7 = s_gfx_007_001_Static_Laser_anm2_00b7cccc._8_4_;
    uVar14 = s_gfx_007_001_Static_Laser_anm2_00b7cccc._4_4_;
    uStack_1c = 0x1d;
    uStack_18 = 0x1f;
    *local_2c = s_gfx_007_001_Static_Laser_anm2_00b7cccc._0_4_;
    local_2c[1] = uVar14;
    local_2c[2] = uVar7;
    local_2c[3] = uVar8;
    *(undefined8 *)(local_2c + 4) = s_gfx_007_001_Static_Laser_anm2_00b7cccc._16_8_;
    local_2c[6] = s_gfx_007_001_Static_Laser_anm2_00b7cccc._24_4_;
    *(char *)(local_2c + 7) = s_gfx_007_001_Static_Laser_anm2_00b7cccc[0x1c];
    *(undefined *)((int)local_2c + 0x1d) = 0;
    local_8 = 1;
    FUN_0040bd50(&local_2c,1);
    local_8 = 0xffffffff;
    if (0xf < uStack_18) {
      uVar10 = uStack_18 + 1;
      puVar17 = local_2c;
      if (0xfff < uVar10) {
        puVar17 = (undefined4 *)local_2c[-1];
        uVar10 = uStack_18 + 0x24;
        if (0x1f < (uint)((int)local_2c + (-4 - (int)puVar17))) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(puVar17,uVar10);
    }
    local_44 = (byte **)(param_1 + 0x18);
    if (0xf < (uint)param_1[0x1d]) {
      local_44 = (byte **)*local_44;
    }
    ppbVar4 = (byte **)param_1[0x1f];
    if (ppbVar4 == (byte **)0x0) {
LAB_009784a4:
      cVar9 = HELPER_0040a5d0_AnimationPredicateC(local_44,1);
      if (cVar9 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar13 = ppbVar4;
      ppbVar16 = local_44;
      if (&DAT_0000000f < ppbVar4[5]) {
        ppbVar13 = (byte **)*ppbVar4;
      }
      do {
        bVar2 = *(byte *)ppbVar13;
        bVar18 = bVar2 < *(byte *)ppbVar16;
        if (bVar2 != *(byte *)ppbVar16) {
LAB_00978480:
          uVar10 = -(uint)bVar18 | 1;
          goto LAB_00978485;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar13 + 1);
        bVar18 = bVar2 < *(byte *)((int)ppbVar16 + 1);
        if (bVar2 != *(byte *)((int)ppbVar16 + 1)) goto LAB_00978480;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        ppbVar16 = (byte **)((int)ppbVar16 + 2);
      } while (bVar2 != 0);
      uVar10 = 0;
LAB_00978485:
      if ((uVar10 != 0) || ((*(byte *)(ppbVar4 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_009784a4;
    }
    param_1[0x56] = param_1[0x56] | 0x20;
  }
LAB_009784c5:
  FUN_009704a0();
  *(undefined *)(param_1 + 0x117) = 0;
LAB_0097858b:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

