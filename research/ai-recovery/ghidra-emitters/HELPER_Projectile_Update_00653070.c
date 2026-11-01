/* Local J460 decompiler output.
 * VA: 0x00653070
 * Entry: 00653070
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: native vtable+0xc
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; native vtable+0xc */

void __fastcall HELPER_Projectile_Update(int *param_1)

{
  char cVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  int **ppiVar7;
  float *pfVar8;
  undefined4 *puVar9;
  code *pcVar10;
  int iVar11;
  uint uVar12;
  float10 fVar13;
  float in_XMM0_Da;
  float fVar14;
  double dVar15;
  undefined auVar17 [16];
  ulonglong uVar16;
  undefined auVar18 [16];
  undefined auVar19 [16];
  undefined auVar21 [12];
  undefined auVar20 [16];
  float fVar22;
  int iStack_47c;
  int iStack_478;
  int iStack_434;
  int iStack_418;
  int iStack_410;
  float fStack_40c;
  int iStack_408;
  int iStack_404;
  undefined4 uStack_400;
  float *pfStack_3fc;
  int iStack_3f4;
  int iStack_3f0;
  float fStack_3ec;
  uint uStack_3dc;
  float fStack_3d8;
  char cStack_3d1;
  int *piStack_3d0;
  undefined4 uStack_3cc;
  float *pfStack_3c8;
  float fStack_3c4;
  char cStack_3bd;
  float fStack_3bc;
  int iStack_3a8;
  uint uStack_3a4;
  int iStack_3a0;
  int iStack_39c;
  int *piStack_398;
  undefined4 uStack_394;
  undefined4 uStack_390;
  int *piStack_384;
  float fStack_380;
  int *piStack_37c;
  int *piStack_378;
  int *piStack_374;
  int *piStack_368;
  int *piStack_364;
  undefined4 uStack_360;
  int *piStack_35c;
  float *pfStack_358;
  int *piStack_354;
  int *piStack_350;
  int *piStack_34c;
  uint auStack_d8 [37];
  uint uStack_44;
  uint uStack_40;
  int aiStack_3c [2];
  int iStack_34;
  uint uStack_30;
  int iStack_2c;
  int iStack_28;
  uint uStack_24;
  undefined *puStack_20;
  void *pvStack_1c;
  undefined *puStack_18;
  undefined4 uStack_14;
  
  puStack_20 = &stack0xfffffffc;
  uStack_14 = 0xffffffff;
  puStack_18 = &UNK_00af75f6;
  pvStack_1c = ExceptionList;
  uStack_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &pvStack_1c;
  piStack_368 = (int *)0x0;
  pfStack_3c8 = (float *)(param_1 + 0xe7);
  piStack_350 = param_1;
  FUN_00652df0();
  param_1[0xe7] = (int)in_XMM0_Da;
  if (0 < param_1[199]) {
    param_1[199] = param_1[199] + -1;
  }
  if ((param_1[0x10e] & 0x40003810U) != 0) {
    *(undefined *)(param_1 + 100) = 0;
  }
  if (((param_1[0x5a] & 0x20U) != 0) && (param_1[0x86] < 1)) {
    FUN_006eef60();
    cVar1 = FUN_006ac710();
    if (cVar1 == '\0') goto LAB_00653175;
    param_1[0x5a] = param_1[0x5a] & 0xffffffdf;
    param_1[0x5b] = param_1[0x5b];
    param_1[0x118] = DAT_00c7b640;
    param_1[0x119] = (int)DAT_00c7b644;
    goto LAB_00653169;
  }
LAB_00653175:
  if (((param_1[0x5a] & 0x20U) != 0) && (*(char *)((int)param_1 + 0x173) == '\0')) {
    param_1[0xd8] = DAT_00c7b640;
    param_1[0xd9] = (int)DAT_00c7b644;
    FUN_006ae820();
    goto LAB_0065ace4;
  }
  iVar2 = param_1[0xb];
  if ((((iVar2 == 0) || (iVar2 == 3)) || (iVar2 == 4)) || (iVar2 == 6)) {
    iVar11 = (int)((float)param_1[0x108] * DAT_00baa6fc + DAT_00baa6fc);
    iVar2 = 0xd;
    if (iVar11 < 0xd) {
      iVar2 = iVar11;
    }
    if (param_1[0x111] != iVar2) {
      if (param_1[0xd] == 0x3b6) {
        FUN_0041e420();
        param_1[0xd6] = 0x43960000;
        param_1[0x56] = param_1[0x56] | 0x20;
      }
      else {
        FUN_0041e420();
      }
      HELPER_0040a380_AnimationActionA();
      param_1[0x111] = iVar2;
    }
  }
  else if (iVar2 == 1) {
    if (param_1[0x111] != 100) {
      if ((param_1[0x10f] & 0x2000U) != 0) {
        FUN_0040c340();
        uStack_14 = 0;
        FUN_0040bf30();
        uStack_14 = 0xffffffff;
        FUN_0040d040();
        FUN_0040c000();
      }
      HELPER_0040a380_AnimationActionA();
      if (param_1[0x1f] != 0) {
        FUN_00408e00();
      }
      param_1[0x111] = 100;
    }
  }
  else if (iVar2 == 2) {
    if (param_1[0x111] != 200) {
      HELPER_0040a380_AnimationActionA();
      FUN_0041e460();
      FUN_00440e30();
      FUN_0040c3a0();
      FUN_0040a720();
      FUN_00a114d0();
      FUN_0040b200();
      FUN_00a115c0();
      param_1[0x111] = 200;
      *(undefined *)((int)param_1 + 0x176) = 0;
    }
    piStack_34c = DAT_00baa120;
    FUN_0042f2a0();
LAB_0065334c:
    FUN_00a104e0();
    FUN_0040b200();
    FUN_007dd3b0();
  }
  else if (iVar2 == 5) {
    if (param_1[0x111] != 300) {
      FUN_0067f010();
      FUN_0041e420();
      HELPER_0040a380_AnimationActionA();
      param_1[0x111] = 300;
    }
  }
  else {
    if (iVar2 == 7) {
      if (param_1[0x111] != 400) {
        HELPER_0040a380_AnimationActionA();
        FUN_0041e460();
        FUN_00440e30();
        FUN_0040c3a0();
        FUN_0040a720();
        param_1[0x111] = 400;
      }
      FUN_00456230();
      FUN_0043ee80();
      piStack_354 = (int *)((float)param_1[0x108] / DAT_00baa6e4);
      goto LAB_0065334c;
    }
    if ((iVar2 == 0xc) && (param_1[0x111] != 700)) {
      HELPER_0040a380_AnimationActionA();
      param_1[0x111] = 700;
    }
  }
  fVar14 = DAT_00baa6fc;
  pfStack_358 = (float *)(param_1 + 0x108);
  fVar22 = (float)param_1[0x108] * *(float *)(param_1[0xcc] + 0x24);
  iVar2 = param_1[0xb];
  param_1[0x57] = (int)fVar22;
  if (iVar2 == 8) {
    param_1[0x57] = (int)(fVar22 + fVar22);
  }
  else if (iVar2 == 9) {
    if (param_1[0x111] != 500) {
      FUN_0041e420();
      HELPER_0040a380_AnimationActionA();
      param_1[0x111] = 500;
    }
  }
  else if (iVar2 == 0xb) {
    if (param_1[0x111] != 600) {
      HELPER_0040a380_AnimationActionA();
      FUN_0041e460();
      FUN_00440e30();
      FUN_0040c3a0();
      FUN_0040a720();
      piStack_350[0x111] = 600;
      param_1 = piStack_350;
    }
  }
  else {
    if (iVar2 == 0xd) {
      piStack_35c = param_1 + 0x12;
      if (param_1[0x111] != 800) {
        HELPER_0040a380_AnimationActionA();
        FUN_0040c3a0();
        FUN_00505b50();
        FUN_0041e460();
        FUN_00440e30();
        FUN_0040c3a0();
        FUN_0040a720();
        param_1 = piStack_350;
        piStack_350[0x111] = 800;
        FUN_005cd460();
LAB_00653797:
        FUN_00a104e0();
        FUN_00420170();
      }
    }
    else {
      if (iVar2 != 0xe) {
        if (iVar2 == 0xf) {
          if (param_1[0x111] != 1000) {
            HELPER_0040a380_AnimationActionA();
            param_1 = piStack_350;
            FUN_0040c3a0();
            FUN_00435c60();
            iVar2 = FUN_007e9020();
            piStack_35c = (int *)((float)((double)iVar2 + (&DAT_00bacb00)[-(iVar2 >> 0x1f)]) *
                                 DAT_00baa91c);
            iVar2 = FUN_0040b200();
            *(int **)(iVar2 + 0x90) = piStack_35c;
            FUN_0067efe0();
            FUN_0043ee80();
            param_1[0x111] = 1000;
            FUN_00a104e0();
            FUN_00420170();
          }
        }
        else if (iVar2 == 0x10) {
          fStack_3c4 = 1.821688e-44;
          piStack_35c = (int *)(int)((float)param_1[0x108] * fVar14 + fVar14);
          piVar3 = (int *)FUN_0041cb60();
          piStack_35c = (int *)(*piVar3 + 0x44c);
          if ((int *)param_1[0x111] != piStack_35c) {
            FUN_0041e420();
            HELPER_0040a380_AnimationActionA();
            param_1[0x111] = (int)piStack_35c;
          }
          fVar13 = (float10)FUN_00a10390();
          piStack_35c = (int *)(float)fVar13;
          if (((float)piStack_35c < DAT_00baae50) || (DAT_00baa9b4 < (float)piStack_35c)) {
            piStack_364 = (int *)(DAT_00baaa78 - (float)piStack_35c);
            uStack_360 = (int *)CONCAT31(uStack_360._1_3_,1);
          }
          else {
            uStack_360 = (int *)((uint)uStack_360._1_3_ << 8);
            piStack_364 = piStack_35c;
          }
          FUN_00435c60();
          FUN_0043ee80();
          if (param_1[0xf0] == 0) {
            FUN_006eef60();
            piVar3 = (int *)HELPER_Entity_SpawnRelay();
            FUN_00435dd0();
            FUN_004238f0();
            FUN_004073d0();
            FUN_00a114d0();
            FUN_00435dd0();
            FUN_0040b200();
            FUN_00a115c0();
            FUN_00435dd0();
            piStack_35c = (int *)(*pfStack_358 + *pfStack_358);
            FUN_004171d0();
            FUN_00420170();
            FUN_00435ef0();
            FUN_006a92a0();
            (**(code **)(*piVar3 + 0xc))();
            param_1 = piStack_350;
            FUN_006a92e0();
            if (param_1[0xf0] == 0) goto LAB_00653bc5;
          }
          if (*(char *)((int)param_1 + 0x171) == '\0') {
            FUN_00435dd0();
            FUN_00407410();
            FUN_00407280();
          }
          else {
            FUN_00435dd0();
            FUN_00407410();
            FUN_00407410();
            fVar13 = (float10)FUN_00407270();
            piStack_35c = (int *)(float)(fVar13 * (float10)DAT_00baa2d0);
            FUN_00407280();
            FUN_00a10420();
            FUN_004288f0();
            FUN_00428910();
          }
        }
        goto LAB_00653bc5;
      }
      piStack_35c = param_1 + 0x12;
      if (param_1[0x111] != 900) {
        HELPER_0040a380_AnimationActionA();
        FUN_0040c3a0();
        FUN_00505b50();
        FUN_0041e460();
        FUN_00440e30();
        FUN_0040c3a0();
        FUN_0040a720();
        piStack_350[0x111] = 900;
        param_1 = piStack_350;
        goto LAB_00653797;
      }
    }
    fVar14 = (float)param_1[0xd9];
    FUN_00456230();
    piStack_35c = (int *)(fVar14 * DAT_00baa948);
    FUN_00407430();
    FUN_0043ee80();
  }
LAB_00653bc5:
  FUN_00407480();
  cStack_3d1 = FUN_007ea190();
  if ((cStack_3d1 != '\0') && (iVar2 = FUN_006a9c10(), iVar2 == 1)) {
    if (DAT_00ba9fe4 < (float)param_1[0x106]) {
      piStack_34c = (int *)param_1[0xd9];
      fVar14 = (float)param_1[0xd8];
      FUN_0041d510();
      if ((float)piStack_34c < fVar14) {
        param_1[0xd9] = (int)((float)param_1[0x105] * DAT_00baa2d0 + (float)piStack_34c);
      }
    }
    FUN_00407480();
    cVar1 = FUN_008279a0();
    if (cVar1 == '\0') {
      if ((param_1[0x10e] & 2U) != 0) {
        param_1[0x10f] = param_1[0x10f];
        param_1[0x10e] = param_1[0x10e] & 0xffffdfef;
      }
    }
  }
  FUN_006ae820();
  iVar2 = FUN_006a9c10();
  if (iVar2 == 1) {
    uVar12 = param_1[0x10f];
    if ((((uVar12 & 0x98) == 0) &&
        ((((param_1[0x10e] & 2U) == 0 || (param_1[0xd] != 0x389)) && ((uVar12 & 0x2000) == 0)))) &&
       ((uVar12 & 0x800000) == 0)) {
      if ((uVar12 & 0x8000) != 0) {
        FUN_006eef60();
        piVar3 = (int *)HELPER_Entity_SpawnRelay();
        FUN_00a104e0();
        FUN_0042d9b0();
        FUN_006a92a0();
        (**(code **)(*piVar3 + 0xc))();
      }
    }
    else {
      FUN_00a0f690();
      FUN_0060af70();
    }
    if (((param_1[0x10f] & 0x200000U) != 0) &&
       (piStack_35c = (int *)param_1[0xc], (undefined *)((int)piStack_35c + -1) < (undefined *)0x3e7
       )) {
      fStack_380 = (float)param_1[0x108];
      uStack_360 = piStack_35c;
      if (100 < (int)piStack_35c) {
        uStack_360 = piStack_35c + -0x19;
      }
      piVar3 = uStack_360;
      if (0 < (int)uStack_360) {
        do {
          piStack_374 = piVar3;
          FUN_006eef60();
          piVar3 = (int *)HELPER_Entity_SpawnRelay();
          piStack_354 = piVar3;
          FUN_006a9320();
          FUN_006a92a0();
          FUN_00407410();
          FUN_004071c0();
          iVar2 = FUN_0067f010();
          piStack_364 = DAT_00baa75c;
          if (iVar2 != 0) {
            piStack_364 = DAT_00baa454;
          }
          FUN_005cd370();
          FUN_005cd380();
          piVar4 = piStack_364;
          FUN_005cd3a0();
          (**(code **)(*piVar3 + 0x3c))();
          FUN_00447740();
          FUN_0067efe0();
          fVar14 = (float)piVar4 * DAT_00baab30;
          FUN_00565de0();
          FUN_00a0fe90();
          FUN_004171d0();
          FUN_0067efe0();
          piStack_34c = (int *)(fVar14 * DAT_00baa198 + DAT_00baa3a4);
          FUN_00a104e0();
          FUN_00435d60();
          FUN_0067efe0();
          FUN_004508a0();
          if (100 < (int)piStack_35c) {
            FUN_00435cd0();
          }
          piVar3 = (int *)((int)piStack_374 + -1);
        } while ((int *)((int)piStack_374 + -1) != (int *)0x0);
        piStack_374 = (int *)0x0;
      }
      FUN_00407410();
      FUN_00407280();
      param_1[0xc] = 1000;
    }
  }
  iStack_408 = param_1[0x10e];
  if ((param_1[0x10f] & 0x40U) != 0) {
    fVar14 = DAT_00baa910;
    if (((param_1[0xc] == 0) && (param_1[0xd] == 0x3d)) && (param_1[0xe] == 7)) {
      fVar14 = DAT_00baa81c;
    }
    if (fVar14 < (float)param_1[0xe9]) {
      *(undefined *)((int)param_1 + 0x173) = 1;
    }
  }
  if ((((param_1[0x10f] & 0x200000U) != 0) && (param_1[0xf1] != 0)) &&
     (cVar1 = FUN_00431540(), cVar1 != '\0')) {
    FUN_00a10350();
    FUN_004171d0();
    FUN_00a10350();
    FUN_004171d0();
    iVar2 = FUN_004074b0();
    uStack_360 = (int *)(((float)((double)((uint)(iVar2 + param_1[0xfb]) % 0x1e) + DAT_00bacb00) *
                         DAT_00baa7a8) / DAT_00baa8d0);
    FUN_00417290();
    piVar3 = uStack_360;
    FUN_00417150();
    piStack_34c = piVar3;
    FUN_004171d0();
    FUN_00a10420();
    piVar3 = uStack_360;
    FUN_00417160();
    piStack_354 = piVar3;
    FUN_004171d0();
    FUN_00a10420();
    FUN_00a10480();
    FUN_007dd3b0();
    param_1[0xdb] = 0x3f800000;
    param_1[0x105] = 0;
    param_1[0x104] = -0x3e480000;
  }
  if (((param_1[0x10f] & 0x2000U) == 0) ||
     (fVar14 = DAT_00baa630, iVar2 = FUN_006ac760(), iVar2 == 0)) {
    if ((param_1[0xd] == 0x33c) &&
       ((param_1[0xb] == 1 && (fVar14 = DAT_00baa630, iVar2 = FUN_006ac760(), iVar2 != 0)))) {
      FUN_006eef60();
      piStack_34c = (int *)0x3f000000;
      FUN_00a104e0();
      piVar3 = (int *)HELPER_Entity_SpawnRelay();
      FUN_00a114d0();
      FUN_00435dd0();
      FUN_0040b200();
      FUN_00a115c0();
      FUN_00a0fe90();
      FUN_00a10420();
      FUN_004172f0();
      FUN_0067efe0();
      piStack_354 = (int *)(fVar14 * (float)DAT_00baa354 + DAT_00baa1f8);
      FUN_004238f0();
      FUN_00682fe0();
      piStack_354 = (int *)0x3f28f5c3;
      FUN_004171d0();
      FUN_0042d9b0();
      goto LAB_0065453a;
    }
  }
  else {
    FUN_006eef60();
    piStack_34c = (int *)0x3f000000;
    FUN_00a104e0();
    piVar3 = (int *)HELPER_Entity_SpawnRelay();
    FUN_00a114d0();
    FUN_00435dd0();
    FUN_0040b200();
    FUN_00a115c0();
    FUN_00a0fe90();
    FUN_00a10420();
    FUN_004172f0();
    FUN_0067efe0();
    piStack_354 = (int *)(fVar14 * (float)DAT_00baa354 + DAT_00baa1f8);
    FUN_004238f0();
    FUN_00682fe0();
LAB_0065453a:
    (**(code **)(*piVar3 + 0x3c))();
    FUN_00435cf0();
    (**(code **)(*piVar3 + 0xc))();
    param_1 = piStack_350;
  }
  if (((param_1[0x10f] & 0x800000U) != 0) && (iVar2 = FUN_006ac760(), iVar2 != 0)) {
    FUN_00a102e0();
    uStack_360 = (int *)0x0;
    do {
      piVar3 = uStack_360;
      piStack_35c = (int *)FUN_006eef60();
      piStack_34c = (int *)0x3e19999a;
      FUN_00a104e0();
      piStack_354 = DAT_00baad50;
      if (piVar3 != (int *)0x0) {
        piStack_354 = DAT_00baa454;
      }
      FUN_00a104e0();
      piVar3 = (int *)HELPER_Entity_SpawnRelay();
      FUN_006a9360();
      FUN_004316b0();
      FUN_004b7070();
      (**(code **)(*piVar3 + 0x3c))();
      FUN_00450880();
      FUN_00447740();
      FUN_00444c90();
      FUN_004aad70();
      (**(code **)(*piVar3 + 0xc))();
      uStack_360 = (int *)((int)uStack_360 + 1);
    } while ((int)uStack_360 < 2);
  }
  if ((param_1[0xb] == 0xe) && (iVar2 = FUN_006ac760(), iVar2 != 0)) {
    auVar17 = ZEXT416((uint)DAT_00baa904);
    if (((float)param_1[0xe9] <= DAT_00baa904 && DAT_00baa904 != (float)param_1[0xe9]) &&
       (FUN_0067efe0(), auVar17._0_4_ < (DAT_00baa924 - (float)param_1[0xe9]) / DAT_00baa904)) {
      FUN_006eef60();
      piStack_34c = (int *)0x3f000000;
      FUN_00a104e0();
      piVar3 = (int *)HELPER_Entity_SpawnRelay();
      FUN_00a0fe90();
      FUN_00a10420();
      FUN_004172f0();
      piStack_354 = (int *)0x3fc00000;
      FUN_004171d0();
      FUN_0042d9b0();
      FUN_0067efe0();
      auVar17._0_4_ = auVar17._0_4_ * DAT_00baa81c + DAT_00baa630;
      FUN_00435eb0();
      FUN_0067f010();
      FUN_00435e90();
      pcVar10 = *(code **)(*piVar3 + 0x3c);
      FUN_004238f0();
      (*pcVar10)();
      pcVar10 = *(code **)(*piVar3 + 0x3c);
      FUN_004238f0();
      (*pcVar10)();
      FUN_00435cf0();
      (**(code **)(*piVar3 + 0xc))();
    }
    piVar3 = auVar17._0_4_;
    piStack_35c = (int *)FUN_006eef60();
    piStack_34c = (int *)0x3f000000;
    fStack_3c4 = (float)FUN_00a104e0();
    FUN_0067f070();
    FUN_004171d0();
    FUN_0067efe0();
    piStack_354 = piVar3;
    piVar3 = piStack_354;
    FUN_00a104e0();
    FUN_00a10420();
    piVar4 = (int *)HELPER_Entity_SpawnRelay();
    FUN_00a0fe90();
    FUN_00a10420();
    FUN_004172f0();
    FUN_0067efe0();
    piStack_35c = (int *)((float)piVar3 * (float)DAT_00baa354 + DAT_00baa1f8);
    FUN_004238f0();
    fVar14 = (float)piStack_35c;
    FUN_00682fe0();
    FUN_0067efe0();
    piStack_35c = (int *)(fVar14 + (float)DAT_00baa454);
    FUN_004171d0();
    FUN_0042d9b0();
    pcVar10 = *(code **)(*piVar4 + 0x3c);
    FUN_00435b50();
    (*pcVar10)();
    pcVar10 = *(code **)(*piVar4 + 0x3c);
    FUN_0067f010();
    (*pcVar10)();
    FUN_00440e90();
    FUN_00435dd0();
    FUN_00440e50();
    (**(code **)(*piVar4 + 0xc))();
    param_1 = piStack_350;
  }
  if (((((param_1[0x10e] & 2U) != 0) && (param_1[0xd] == 0x3b7)) && (param_1[0xe] == 0x14)) &&
     (iVar2 = FUN_006ac760(), iVar2 != 0)) {
    FUN_006eef60();
    piStack_34c = (int *)0x3f000000;
    FUN_00a104e0();
    piVar3 = (int *)HELPER_Entity_SpawnRelay();
    FUN_00a0fe90();
    FUN_00a10420();
    FUN_004172f0();
    FUN_0067efe0();
    FUN_00435b50();
    (**(code **)(*piVar3 + 0x3c))();
    FUN_00440e90();
    (**(code **)(*piVar3 + 0xc))();
    param_1 = piStack_350;
  }
  auVar20 = ZEXT416(DAT_00baae4c);
  piStack_364 = DAT_00baae4c;
  if (((param_1[0x10f] & 0x200000U) != 0) && (param_1[0xc] == 1000)) {
    if (*(char *)((int)param_1 + 0x173) == '\0') {
      if (param_1[0xd] != 0x390) {
        if ((param_1[0xf1] == 0) && (iVar2 = FUN_00703ab0(), iVar2 != 0)) {
          FUN_006a9320();
        }
        if (param_1[0xf1] != 0) {
          FUN_00417290();
          FUN_00a10480();
          FUN_00a10030();
          fVar13 = (float10)FUN_00a10180();
          piStack_34c = (int *)(float)fVar13;
          auVar20 = ZEXT416(piStack_34c);
          if (DAT_00ba9fe4 < (float)piStack_34c) {
            fVar13 = (float10)FUN_00a0fea0();
            piStack_34c = (int *)(float)fVar13;
            FUN_00a104e0();
            FUN_00a10450();
            auVar20 = ZEXT416(piStack_34c);
            FUN_00a100b0();
          }
        }
      }
      iVar2 = FUN_006ac760();
      if (iVar2 != 0) {
        FUN_00407480();
        FUN_00428a60();
        AI_0041af60();
        uStack_14 = 3;
        uVar12 = 0;
        iVar2 = FUN_004176f0();
        if (iVar2 != 0) {
          do {
            FUN_00417620();
            FUN_004aad40();
            piVar3 = (int *)FUN_004b7080();
            if (piVar3 == param_1) goto LAB_006555d5;
            uVar12 = uVar12 + 1;
            uVar5 = FUN_004176f0();
          } while (uVar12 < uVar5);
        }
        (**(code **)(*param_1 + 0x28))();
LAB_006555d5:
        uStack_14 = 0xffffffff;
        FUN_004175b0();
      }
    }
    else {
      param_1[0xc] = 0;
      FUN_009568e0();
      FUN_006eef60();
      piStack_354 = param_1 + 0xcf;
      piVar3 = (int *)HELPER_Entity_SpawnRelay();
      piStack_34c = (int *)0x3fc00000;
      FUN_004171d0();
      FUN_0042d9b0();
      FUN_00a0fe90();
      FUN_004172f0();
      FUN_00435cf0();
      pcVar10 = *(code **)(*piVar3 + 0x3c);
      FUN_00435b50();
      (*pcVar10)();
      FUN_00424510();
      uStack_14 = 1;
      FUN_00407480();
      FUN_00428a60();
      AI_0041af60();
      uStack_14 = CONCAT31(uStack_14._1_3_,2);
      uVar12 = 0;
      iVar2 = FUN_004176f0();
      piVar3 = piStack_350;
      if (iVar2 != 0) {
        do {
          FUN_00417620();
          piStack_34c = (int *)FUN_004aad40();
          if ((piStack_34c != (int *)0x0) && (piVar4 = (int *)FUN_004b7080(), piVar4 == piVar3)) {
            FUN_0042c850();
          }
          uVar12 = uVar12 + 1;
          uVar5 = FUN_004176f0();
        } while (uVar12 < uVar5);
      }
      piVar3 = piStack_350;
      FUN_00a10030();
      FUN_00a10660();
      piStack_374 = (int *)DAT_00baa9a0;
      cVar1 = FUN_00a10600();
      if (cVar1 != '\0') {
        FUN_0067f070();
        FUN_007dd3b0();
        piStack_364 = DAT_00baae7c;
        piStack_374 = (int *)DAT_00baaa78;
      }
      uVar12 = FUN_00417840();
      if (uVar12 < 2) {
        uVar16 = 0;
        piStack_374 = (int *)0x0;
        piStack_364 = (int *)0x0;
      }
      else {
        piStack_374 = (int *)((float)piStack_374 - (float)piStack_364);
        iVar2 = FUN_00417840();
        dVar15 = (double)(iVar2 + -1);
        fVar14 = (float)(dVar15 + (&DAT_00bacb00)[-(iVar2 + -1 >> 0x1f)]);
        uVar16 = CONCAT44((float)(int)((ulonglong)dVar15 >> 0x20),fVar14);
        piStack_374 = (int *)((float)piStack_374 / fVar14);
      }
      auVar19._8_8_ = 0;
      auVar19._0_8_ = uVar16;
      iVar2 = FUN_00417840();
      if (iVar2 != 0) {
        uVar12 = 0;
        do {
          FUN_0042c810();
          auVar18._4_4_ = (float)(int)((ulonglong)(double)uVar12 >> 0x20);
          auVar18._0_4_ =
               (float)((double)uVar12 + (&DAT_00bacb00)[-((int)uVar12 >> 0x1f)]) *
               (float)piStack_374 + (float)piStack_364;
          auVar18._8_8_ = 0;
          FUN_00a102e0();
          piStack_34c = (int *)0x40c00000;
          FUN_00a104e0();
          FUN_00a10420();
          FUN_004288f0();
          FUN_0067efe0();
          auVar19._4_12_ = auVar18._4_12_;
          auVar19._0_4_ = (int *)(auVar18._0_4_ * DAT_00baa6fc + DAT_00baa804);
          piStack_35c = auVar19._0_4_;
          FUN_00a104e0();
          FUN_00428910();
          FUN_00447740();
          iVar2 = FUN_00417280();
          if (iVar2 == 1000) {
            FUN_00417830();
            FUN_00447740();
          }
          FUN_0044bfa0();
          FUN_00444c90();
          FUN_006a9320();
          FUN_0067f010();
          FUN_00444cb0();
          uVar12 = uVar12 + 1;
          uVar5 = FUN_00417840();
          piVar3 = piStack_350;
        } while (uVar12 < uVar5);
      }
      FUN_00407480();
      FUN_00812f50();
      FUN_007dd3b0();
      if (piVar3[0xd] != 0x390) {
        uStack_360 = (int *)0x6;
        do {
          FUN_0067f070();
          FUN_0067efe0();
          piStack_34c = auVar19._0_4_;
          FUN_00a104e0();
          piStack_354 = (int *)0x42a00000;
          FUN_00a104e0();
          FUN_00a10420();
          FUN_00407480();
          iVar2 = FUN_007f0780();
          if (0 < iVar2) {
            FUN_00407480();
            FUN_0081e520();
            FUN_0067efe0();
            auVar21 = auVar19._4_12_;
            piVar3 = (int *)(auVar19._0_4_ * DAT_00baa8fc - DAT_00baa870);
            piStack_35c = piVar3;
            FUN_0067efe0();
            auVar19._0_4_ = (int *)((float)piVar3 * DAT_00baa8fc - DAT_00baa870);
            auVar19._4_12_ = auVar21;
            FUN_00a0fe90();
            FUN_00a10420();
            FUN_007dd3b0();
          }
          FUN_00a10480();
          FUN_00a10030();
          FUN_0067efe0();
          auVar21 = auVar19._4_12_;
          piVar3 = (int *)(auVar19._0_4_ * DAT_00baa854 - DAT_00baa8d0);
          piStack_35c = piVar3;
          FUN_0067efe0();
          auVar19._0_4_ = (int *)((float)piVar3 * DAT_00baa854);
          auVar19._4_12_ = auVar21;
          fStack_3c4 = (float)auVar19._0_4_;
          FUN_004171d0();
          FUN_00a10420();
          FUN_004d8910();
          uStack_360 = (int *)((int)uStack_360 + -1);
        } while (uStack_360 != (int *)0x0);
        FUN_006eef60();
        HELPER_Entity_SpawnRelay(1000);
        piStack_34c = (int *)0x3fc00000;
        FUN_004171d0();
        FUN_0042d9b0();
      }
      FUN_0067efe0();
      auVar20._4_12_ = auVar19._4_12_;
      auVar20._0_4_ = (int *)((auVar19._0_4_ * DAT_00baa2d0 + DAT_00baa2d0) * DAT_00baa528);
      piVar3 = (int *)FUN_006b64d0();
      pcVar10 = *(code **)(*piVar3 + 0x3c);
      FUN_00435b50(0x3f800000,0);
      (*pcVar10)();
      (**(code **)(*piVar3 + 0xc))();
      FUN_00703670();
      FUN_004175b0();
      uStack_14 = 0xffffffff;
      FID_conflict__Tidy();
      param_1 = piStack_350;
    }
  }
  if (param_1[0xb] == 0xe) {
    *(undefined *)((int)param_1 + 0x173) = 0;
  }
  if ((((param_1[0xd] == 0x390) && (param_1[0xe] == 0)) && (param_1[0xc] == 1)) &&
     (iVar2 = FUN_006ac760(), iVar2 != 0)) {
    FUN_006eef60();
    piStack_34c = (int *)0x3e4ccccd;
    FUN_00a104e0();
    piVar3 = (int *)HELPER_Entity_SpawnRelay();
    FUN_006a9360();
    FUN_004316b0();
    FUN_004b7070();
    (**(code **)(*piVar3 + 0x3c))();
    FUN_00444c70();
    FUN_00444c90();
    (**(code **)(*piVar3 + 0xc))();
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    cVar1 = FUN_00417430();
    if (cVar1 != '\0') goto LAB_00653169;
    piStack_374 = (int *)0x0;
    piStack_368 = (int *)0xa;
    if ((param_1[0x10e] & 2U) == 0) {
      iVar2 = param_1[0xb];
      if (((((iVar2 == 0) || (iVar2 == 3)) || ((iVar2 == 4 || ((iVar2 == 5 || (iVar2 == 6)))))) ||
          (iVar2 == 0xc)) || ((iVar2 == 0xd || (iVar2 == 0x10)))) {
        fStack_380 = (float)param_1[0x104];
        piStack_368 = (int *)0x96;
        fVar14 = (float)param_1[0x108];
        uStack_360 = (int *)(fVar14 * DAT_00baa3a4);
        if (DAT_00baada0 < fStack_380) {
          piStack_368 = (int *)0x102;
        }
        piStack_364 = DAT_00baa454;
        if (iVar2 == 4) {
          if (DAT_00baa280 <= fVar14) {
            if (DAT_00baa3a4 <= fVar14) {
            }
            else {
              piStack_364 = DAT_00baa3c4;
              uStack_360 = (int *)0x3f800000;
            }
          }
          else {
            piStack_364 = DAT_00baa354;
            uStack_360 = (int *)0x3f800000;
          }
        }
        else if (iVar2 == 5) {
          FUN_00407410();
          FUN_0067efe0();
          FUN_00703330();
        }
        else if (iVar2 != 6) {
          FUN_00652a90();
        }
        FUN_006eef60();
        HELPER_Entity_SpawnRelay();
        piStack_374 = (int *)__RTDynamicCast();
        FUN_004172f0();
        FUN_00a104e0();
        FUN_0042d9b0();
        iVar2 = FUN_0067f010();
        auVar20._4_4_ = (float)(int)((ulonglong)(double)iVar2 >> 0x20);
        auVar20._0_4_ =
             (int *)((float)((double)iVar2 + (&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00baa9b4);
        auVar20._8_8_ = 0;
        FUN_0043eea0();
        FUN_00407480();
        cVar1 = FUN_00813360();
        if (cVar1 != '\0') {
          FUN_00956940();
        }
      }
      else if (iVar2 == 1) {
        fStack_380 = (float)param_1[0x104];
        auVar17 = ZEXT416((uint)fStack_380);
        FUN_00407410();
        FUN_0067efe0();
        auVar20._4_12_ = auVar17._4_12_;
        auVar20._0_4_ = (int *)(auVar17._0_4_ * DAT_00baa630 + (float)DAT_00baa454);
        FUN_00703330();
      }
      else if (iVar2 == 2) {
        FUN_006eef60();
        FUN_00417290();
        FUN_00a0fe90();
        FUN_00a10420();
        piVar3 = (int *)HELPER_Entity_SpawnRelay();
        param_1 = piStack_350;
        FUN_00407410();
        FUN_004071c0();
        FUN_00407270();
        FUN_00407280();
        (**(code **)(*piVar3 + 0x3c))();
      }
      else if (iVar2 == 7) {
        FUN_006eef60();
        FUN_00417290();
        FUN_00a0fe90();
        FUN_00a10420();
        piVar3 = (int *)HELPER_Entity_SpawnRelay();
        pcVar10 = *(code **)(*piVar3 + 0x3c);
        FUN_00435ad0();
        (*pcVar10)();
        fStack_380 = (float)piStack_350[0x104];
        fVar14 = fStack_380;
        FUN_00407410();
        FUN_0067efe0();
        piStack_368 = (int *)(fVar14 * DAT_00baa6fc + DAT_00baa630);
        FUN_0067f010();
        auVar17 = ZEXT416(piStack_368);
        FUN_00703330();
        FUN_0067efe0();
        auVar20._4_12_ = auVar17._4_12_;
        auVar20._0_4_ = (int *)(auVar17._0_4_ * DAT_00baa2d0 + DAT_00baa630);
        FUN_00956940();
        param_1 = piStack_350;
      }
      else if (iVar2 == 8) {
        FUN_00407170();
        FUN_004073d0();
        FUN_004f88a0();
        uStack_44 = (uint)param_1[0xc] >> 0x10;
        uStack_40 = param_1[0xc] & 0xffff;
        iStack_34 = param_1[0xfb];
        cVar1 = FUN_00417430();
        aiStack_3c[0] = (int)(float)param_1[0xe0];
        uStack_30 = (uint)(cVar1 != '\0');
        FUN_0070c000();
      }
      else if (iVar2 == 9) {
        FUN_00407170();
        FUN_00682f50();
        FUN_00407410();
        FUN_006831c0();
        FUN_006eef60();
        uStack_360 = param_1 + 0xcf;
        piVar3 = (int *)HELPER_Entity_SpawnRelay();
        piStack_384 = piStack_350 + 0xd3;
        FUN_004172f0();
        (**(code **)(*piVar3 + 0x3c))();
        (**(code **)(*piVar3 + 0xc))();
        FUN_00435dd0();
        FUN_00a104e0();
        FUN_00420170();
        FUN_00435dd0();
        FUN_0043ee80();
        FUN_00407480();
        cVar1 = FUN_00813360();
        param_1 = piStack_350;
        if (cVar1 != '\0') {
          FUN_00956940();
          piStack_34c = (int *)0x10;
          fStack_380 = 1.401298e-45;
          FUN_0067efe0();
          auVar20._0_4_ = (int *)(auVar20._0_4_ * DAT_00baa2d0 + (float)DAT_00baa454);
          piStack_368 = (int *)(int)(*pfStack_358 * (float)DAT_00baa75c * (float)auVar20._0_4_);
          FUN_0041cb80();
          ppiVar7 = (int **)FUN_0041cb60();
          piVar3 = *ppiVar7;
          param_1 = piStack_350;
          piStack_354 = piVar3;
          if (0 < (int)piVar3) {
            piStack_35c = piStack_350 + 0xdc;
            do {
              FUN_0067efe0();
              auVar21 = auVar20._4_12_;
              fVar14 = auVar20._0_4_ * DAT_00baab30;
              FUN_00a10350();
              FUN_0067efe0();
              auVar20._0_4_ = (int *)(fVar14 * DAT_00baa630 + (float)DAT_00baa454);
              auVar20._4_12_ = auVar21;
              fStack_3c4 = (float)auVar20._0_4_;
              FUN_0067efe0();
              piStack_354 = auVar20._0_4_;
              FUN_00a104e0();
              FUN_00a104e0();
              FUN_00a10420();
              FUN_006eef60();
              FUN_00a104e0();
              piVar4 = (int *)HELPER_Entity_SpawnRelay();
              FUN_004172f0();
              (**(code **)(*piVar4 + 0x3c))();
              (**(code **)(*piVar4 + 0xc))();
              piVar3 = (int *)((int)piVar3 + -1);
              param_1 = piStack_350;
            } while (piVar3 != (int *)0x0);
          }
        }
      }
      else if (iVar2 == 0xb) {
        FUN_006eef60();
        piStack_34c = param_1 + 0xcf;
        HELPER_Entity_SpawnRelay();
        FUN_004172f0();
        FUN_00956940();
        FUN_00407480();
        iStack_3f0 = param_1[0xcf];
        fStack_3ec = (float)param_1[0xd0];
        auVar20 = ZEXT416((uint)fStack_3ec);
        iVar2 = FUN_007f0780();
        if (iVar2 == 0) {
          FUN_006eef60();
          fStack_380 = 0.1;
          FUN_00a104e0();
          HELPER_Entity_SpawnRelay();
          FUN_00417400();
          FUN_00435d20();
          FUN_00435dd0();
          HELPER_0040a380_AnimationActionA();
          FUN_00440ed0();
          param_1 = piStack_350;
          cVar1 = FUN_00417430();
          if (cVar1 != '\0') {
            FUN_00431310();
            FUN_006b5c10();
          }
        }
      }
      if ((param_1[0x10e] & 0x4000U) != 0) {
        FUN_006eef60();
        HELPER_Entity_SpawnRelay();
        piVar3 = (int *)__RTDynamicCast();
        (**(code **)(*piVar3 + 0xc))();
        FUN_00435e90();
      }
    }
    else {
      FUN_006eef60();
      pfStack_358 = (float *)(param_1 + 0xcf);
      piStack_374 = (int *)HELPER_Entity_SpawnRelay();
      auVar20 = _DAT_00c79100;
      FUN_006ff2a0(param_1 + 0xcf);
      param_1[0x10e] = param_1[0x10e] & 0xfffffffd;
      param_1[0x10f] = param_1[0x10f];
      iVar2 = param_1[0xd];
      if (iVar2 == 0x389) {
        uStack_360 = (int *)0x0;
        do {
          auVar20 = ZEXT416((uint)((float)(int)uStack_360 * DAT_00baa950 + DAT_00ba9fe4));
          FUN_00a10350();
          fStack_380 = 8.0;
          FUN_004171d0();
          FUN_006eef60();
          piVar3 = (int *)HELPER_Entity_SpawnRelay();
          FUN_004316b0();
          FUN_004b7070();
          FUN_00444c90();
          (**(code **)(*piVar3 + 0x3c))();
          uStack_360 = (int *)((int)uStack_360 + 1);
        } while ((int)uStack_360 < 6);
        iVar2 = param_1[0xd];
      }
      if ((iVar2 == 0x3b7) && (param_1[0xe] == 0x14)) {
        FUN_00703670();
        uStack_360 = (int *)0x0;
        do {
          piVar3 = uStack_360;
          FUN_006eef60();
          piStack_368 = (int *)piStack_350[0xf2];
          auVar21 = ZEXT812(0);
          fVar14 = (float)(int)piVar3 * DAT_00baa7b8;
          FUN_00a0fe90();
          FUN_0067f070();
          fStack_380 = 10.0;
          FUN_00a104e0();
          FUN_00a10420();
          piVar3 = (int *)HELPER_Entity_SpawnRelay();
          FUN_004316b0();
          FUN_004b7070();
          FUN_0067efe0();
          piVar4 = (int *)(fVar14 * DAT_00baa1f8 + DAT_00baa4b0);
          piStack_34c = piVar4;
          FUN_00a104e0();
          FUN_0042d9b0();
          (**(code **)(*piVar3 + 0xc))();
          FUN_00435e90();
          FUN_006eef60();
          FUN_0067efe0();
          fVar14 = (float)piVar4 * DAT_00baa8c8;
          FUN_00a0fe90();
          FUN_0067efe0();
          piVar3 = (int *)(fVar14 * DAT_00baa87c - DAT_00baa81c);
          piStack_368 = piVar3;
          FUN_0067efe0();
          fVar14 = (float)piVar3 * DAT_00baa950 - DAT_00baa8d0;
          FUN_00a0fe90();
          FUN_00a10420();
          piVar3 = (int *)HELPER_Entity_SpawnRelay();
          FUN_0067efe0();
          auVar20._0_4_ = (int *)(fVar14 * (float)DAT_00baa354 + (float)DAT_00baa454);
          auVar20._4_12_ = auVar21;
          FUN_004508a0();
          param_1 = piStack_350;
          FUN_006a9360();
          FUN_004316b0();
          FUN_004b7070();
          (**(code **)(*piVar3 + 0x3c))();
          FUN_00444c70();
          FUN_00444c90();
          (**(code **)(*piVar3 + 0xc))();
          uStack_360 = (int *)((int)uStack_360 + 1);
        } while ((int)uStack_360 < 0xe);
        FUN_00407480();
        FUN_008279c0();
        fVar14 = (float)param_1[0xd0];
        if (auVar20._0_4_ <= fVar14) {
          iStack_3f0 = param_1[0xcf];
          auVar20 = ZEXT416((uint)fVar14);
          fStack_3ec = fVar14;
          FUN_00407480();
          FUN_008279c0();
          fStack_3ec = auVar20._0_4_;
          FUN_0060af00();
          FUN_006a9360();
          FUN_004316b0();
          FUN_004b7070();
          FUN_004288f0();
          FUN_00435e60();
        }
      }
    }
    iStack_434 = param_1[0x10f];
    uVar12 = param_1[0x10e];
    if ((uVar12 & 0x104) != 0) {
      FUN_006eef60();
      HELPER_Entity_SpawnRelay();
      piVar3 = (int *)__RTDynamicCast();
      FUN_004316b0();
      if ((param_1[0x10e] & 0x10U) == 0) {
        piStack_354 = (int *)0x40400000;
        FUN_00a104e0();
        FUN_0042d9b0();
      }
      else {
        piStack_354 = (int *)0x3fc00000;
        FUN_00a104e0();
        FUN_0042d9b0();
        FUN_00435e90();
      }
      (**(code **)(*piVar3 + 0xc))();
      FUN_006eef60();
      HELPER_Entity_SpawnRelay();
      piVar3 = (int *)__RTDynamicCast();
      FUN_0067efe0();
      auVar20._0_4_ = (int *)(auVar20._0_4_ + DAT_00baa3a4);
      piStack_354 = auVar20._0_4_;
      FUN_00a104e0();
      FUN_0042d9b0();
      pcVar10 = *(code **)(*piVar3 + 0x3c);
      FUN_00407410();
      (*pcVar10)();
      (**(code **)(*piVar3 + 0xc))();
      iStack_434 = piStack_350[0x10f];
      uVar12 = piStack_350[0x10e];
      param_1 = piStack_350;
    }
    piVar3 = auVar20._0_4_;
    if ((uVar12 & 8) != 0) {
      iVar2 = param_1[0xd];
      if (iVar2 == 0x3e) {
        FUN_006eef60();
        HELPER_Entity_SpawnRelay();
        piVar4 = (int *)__RTDynamicCast();
        piStack_354 = (int *)0x40000000;
        FUN_00a104e0();
        FUN_0042d9b0();
        (**(code **)(*piVar4 + 0xc))();
        FUN_009568e0();
      }
      else {
        if ((iVar2 == 0x133) || (iVar2 == 0x22)) {
          FUN_006eef60();
          HELPER_Entity_SpawnRelay();
          piVar4 = (int *)__RTDynamicCast();
          FUN_00435e90();
          piStack_354 = (int *)0x40000000;
        }
        else {
          FUN_006eef60();
          HELPER_Entity_SpawnRelay();
          piVar4 = (int *)__RTDynamicCast();
          piStack_354 = (int *)0x40400000;
        }
        FUN_00a104e0();
        FUN_0042d9b0();
        (**(code **)(*piVar4 + 0xc))();
      }
    }
    if ((param_1[0x10e] & 0x10000U) != 0) {
      if (param_1[0xd] == 0x3e) {
        fVar13 = (float10)FUN_00a0fea0();
        piStack_354 = (int *)(float)fVar13;
        FUN_00a0fe90();
        iVar2 = FUN_0067f010();
        if (iVar2 == 0) {
          FUN_00a102e0();
          FUN_007dd3b0();
        }
        fVar13 = (float10)FUN_00a0fed0();
        piStack_354 = (int *)(float)fVar13;
        if (DAT_00baa8a0 <= (float)piStack_354) {
          uStack_400 = uStack_3cc;
          pfStack_3fc = pfStack_3c8;
        }
        else {
          piStack_35c = (int *)0x3fcccccd;
          FUN_00a104e0();
        }
        FUN_007dd3b0();
        piStack_364 = param_1 + 0x12;
        pfStack_358 = (float *)0x4;
        do {
          FUN_006eef60();
          FUN_00a10480();
          HELPER_Entity_SpawnRelay();
          piVar6 = (int *)__RTDynamicCast();
          piVar4 = piStack_350;
          FUN_004316b0();
          FUN_004b7070();
          piStack_354 = (int *)((float)piVar4[0x104] * DAT_00baa304);
          piStack_384 = (int *)0xc1b80000;
          FUN_0040c780();
          FUN_00450880();
          piStack_354 = (int *)((float)piVar4[0x108] - _DAT_00baa338);
          piStack_384 = (int *)0x3f800000;
          ppiVar7 = (int **)FUN_0041cb70();
          piVar3 = *ppiVar7;
          FUN_004508a0();
          uVar12 = piVar4[0x10e];
          piVar6[0x10f] = piVar4[0x10f];
          piVar6[0x10e] = uVar12 & 0xfffeffff;
          piVar6[0x106] = 0x3dcccccd;
          pcVar10 = *(code **)(*piVar6 + 0x3c);
          piVar6[0x105] = -0x3fc00000;
          FUN_00407410();
          (*pcVar10)();
          FUN_006a92a0();
          (**(code **)(*piVar6 + 0xc))();
          FUN_00a0fe90();
          FUN_007dd3b0();
          pfStack_358 = (float *)((int)pfStack_358 + -1);
        } while (pfStack_358 != (float *)0x0);
        pfStack_358 = (float *)0x0;
        param_1 = piStack_350;
      }
      else if ((param_1[0xd] == 0x38f) && (param_1[0xe] == 2)) {
        piStack_354 = param_1 + 0xcf;
        pfStack_358 = (float *)0xffffffff;
        do {
          pfVar8 = pfStack_358;
          FUN_006eef60();
          piStack_35c = (int *)piStack_350[0xf2];
          FUN_0067efe0();
          FUN_00a155c0();
          FUN_00a0fe90();
          piVar3 = (int *)((float)(int)pfVar8 * DAT_00baa8d0);
          FUN_00a102e0();
          FUN_00a0fe90();
          FUN_00a10420();
          piVar4 = (int *)HELPER_Entity_SpawnRelay();
          FUN_00447740();
          FUN_004aad90();
          FUN_004aadd0();
          param_1 = piStack_350;
          FUN_004316b0();
          FUN_004b7070();
          FUN_00444c90();
          (**(code **)(*piVar4 + 0x3c))();
          pfStack_358 = (float *)((int)pfStack_358 + 2);
        } while ((int)pfStack_358 < 2);
      }
      else {
        FUN_0067f070();
        piStack_35c = param_1 + 0xd8;
        fVar13 = (float10)FUN_00a0fea0();
        piStack_354 = (int *)(float)fVar13;
        FUN_00a10540();
        piStack_384 = param_1 + 0xcf;
        pfStack_358 = (float *)0x0;
        piStack_364 = param_1 + 0x12;
        do {
          FUN_00a0fe80();
          if ((float *)0x1 < pfStack_358) {
            FUN_00a0fe90();
          }
          FUN_007dd3b0();
          if (((uint)pfStack_358 & 1) != 0) {
            FUN_00a10660();
            FUN_007dd3b0();
          }
          FUN_006eef60();
          FUN_00a10480();
          piVar3 = piStack_350;
          HELPER_Entity_SpawnRelay();
          piVar4 = (int *)__RTDynamicCast();
          FUN_00450880();
          piVar4[0x106] = piVar3[0x106];
          FUN_0067efe0();
          FUN_00444c70();
          (**(code **)(*piVar4 + 0x40))();
          iVar2 = piVar3[0x10f];
          piVar4[0x10e] = piVar3[0x10e] & 0xfffeffff;
          piVar4[0x10f] = iVar2;
          piVar3 = (int *)((float)piVar3[0x108] * DAT_00baa304);
          FUN_004508a0();
          pcVar10 = *(code **)(*piVar4 + 0x3c);
          FUN_00407410();
          (*pcVar10)();
          FUN_006a92a0();
          (**(code **)(*piVar4 + 0xc))();
          pfStack_358 = (float *)((int)pfStack_358 + 1);
          param_1 = piStack_350;
        } while ((int)pfStack_358 < 4);
      }
    }
    if ((param_1[0x10f] & 8U) != 0) {
      FUN_00956940();
      iVar2 = 0;
      do {
        FUN_006eef60();
        pfStack_358 = (float *)HELPER_Entity_SpawnRelay();
        FUN_006a92a0();
        piVar3 = (int *)((float)iVar2 * DAT_00baa9b4 + DAT_00ba9fe4);
        FUN_00435eb0();
        cVar1 = FUN_00417430();
        if ((cVar1 != '\0') || ((param_1[0x10e] & 0x80000000U) != 0)) {
          FUN_004173e0();
        }
        iVar2 = iVar2 + 1;
      } while (iVar2 < 4);
    }
    if ((param_1[0x10f] & 0x10U) != 0) {
      FUN_00956940();
      pfStack_358 = (float *)0x0;
      do {
        FUN_006eef60();
        HELPER_Entity_SpawnRelay();
        FUN_006a92a0();
        FUN_004316b0();
        FUN_004b7070();
        piVar3 = (int *)((float)(int)pfStack_358 * DAT_00baa9b4 + DAT_00baa910);
        FUN_00435eb0();
        cVar1 = FUN_00417430();
        if ((cVar1 != '\0') || ((param_1[0x10e] & 0x80000000U) != 0)) {
          FUN_004173e0();
        }
        pfStack_358 = (float *)((int)pfStack_358 + 1);
      } while ((int)pfStack_358 < 4);
    }
    uVar12 = param_1[0x10f];
    iStack_418 = param_1[0x10e];
    if ((uVar12 & 0x40) != 0) {
      piStack_384 = (int *)0x40000000;
      piStack_398 = param_1 + 0xcf;
      FUN_00a104e0();
      FUN_00a104b0();
      FUN_00956940();
      FUN_006eef60();
      HELPER_Entity_SpawnRelay();
      piStack_364 = (int *)&DAT_00000008;
      if ((param_1[0xd] == 0x3d) && (piStack_364 = (int *)&DAT_00000008, param_1[0xe] == 7)) {
        piStack_364 = (int *)0x6;
      }
      piStack_37c = (int *)(float)(int)piStack_364;
      pfStack_358 = (float *)0x0;
      do {
        piVar3 = (int *)(((float)(int)pfStack_358 * DAT_00baab30) / (float)piStack_37c +
                        DAT_00ba9fe4);
        FUN_00a10350();
        piStack_384 = (int *)0x41200000;
        FUN_00a104e0();
        FUN_006eef60();
        FUN_00a10420();
        HELPER_Entity_SpawnRelay();
        param_1 = piStack_350;
        FUN_004316b0();
        FUN_004b7070();
        if (param_1[0xc] != 0) {
          piVar3 = (int *)((float)param_1[0x108] * DAT_00baa328);
          FUN_004508a0();
          FUN_00435cd0();
        }
        FUN_00447740();
        pfStack_358 = (float *)((int)pfStack_358 + 1);
      } while ((int)pfStack_358 < (int)piStack_364);
      iStack_418 = param_1[0x10e];
      uVar12 = param_1[0x10f];
    }
    if ((uVar12 & 0x400000) != 0) {
      FUN_00a10030();
      FUN_00a10660();
      piStack_398 = param_1 + 0xcf;
      pfStack_358 = (float *)0xffffffff;
      do {
        piVar3 = (int *)((float)(int)pfStack_358 * DAT_00baa89c);
        FUN_00a102e0();
        piStack_37c = (int *)0x41200000;
        FUN_00a104e0();
        FUN_006eef60();
        FUN_00a10420();
        HELPER_Entity_SpawnRelay();
        param_1 = piStack_350;
        FUN_004316b0();
        FUN_004b7070();
        FUN_00444c90();
        FUN_00447740();
        pfStack_358 = (float *)((int)pfStack_358 + 2);
      } while ((int)pfStack_358 < 2);
      iStack_418 = param_1[0x10e];
      uVar12 = param_1[0x10f];
    }
    if ((uVar12 & 0x20000) != 0) {
      FUN_00956940();
      FUN_006eef60();
      piVar3 = (int *)HELPER_Entity_SpawnRelay();
      pcVar10 = *(code **)(*piVar3 + 0x3c);
      FUN_00435b50();
      (*pcVar10)();
      param_1 = piStack_350;
      if ((piStack_350[0xd] == 0x38f) && (piStack_350[0xe] == 2)) {
        piStack_364 = (int *)piStack_350[0x10e];
        piStack_398 = (int *)(piStack_350[0x10f] & 0xfffdffff);
        pfStack_358 = (float *)0x0;
        piStack_37c = (int *)((uint)piStack_398 | 0x401);
        do {
          FUN_0067efe0();
          FUN_00a155c0();
          FUN_00a0fe90();
          fVar14 = (float)(int)pfStack_358;
          FUN_00a15640();
          FUN_00a102e0();
          FUN_006eef60();
          HELPER_Entity_SpawnRelay();
          FUN_00447740();
          FUN_004aad90();
          FUN_004aadd0();
          FUN_004316b0();
          FUN_004b7070();
          FUN_00444c90();
          FUN_0067efe0();
          piVar3 = (int *)(fVar14 * DAT_00baa304 + DAT_00baa3a4);
          FUN_004508a0();
          pfStack_358 = (float *)((int)pfStack_358 + 1);
        } while ((int)pfStack_358 < 0xd);
      }
      else {
        pfStack_358 = (float *)0x10;
        do {
          FUN_0067efe0();
          FUN_00a155c0();
          FUN_00a0fe90();
          FUN_0067efe0();
          fVar14 = DAT_00baae44;
          FUN_00a155c0();
          FUN_00a102e0();
          FUN_006eef60();
          piVar3 = (int *)HELPER_Entity_SpawnRelay();
          (**(code **)(*piVar3 + 0x3c))();
          FUN_00447740();
          FUN_004316b0();
          FUN_004b7070();
          FUN_00444c90();
          FUN_0067efe0();
          piVar3 = (int *)(fVar14 * DAT_00baa304 + DAT_00baa3e0);
          FUN_004508a0();
          pfStack_358 = (float *)((int)pfStack_358 + -1);
        } while (pfStack_358 != (float *)0x0);
      }
    }
    if ((param_1[0x10f] & 0x2000U) != 0) {
      if (param_1[0xb] == 1) {
        FUN_00956940();
      }
      FUN_00407480();
      cVar1 = FUN_00813360();
      if (cVar1 != '\0') {
        FUN_006eef60();
        piVar4 = (int *)HELPER_Entity_SpawnRelay();
        pcVar10 = *(code **)(*piVar4 + 0x3c);
        piVar3 = DAT_00baa454;
        FUN_00435b50();
        (*pcVar10)();
        (**(code **)(*piVar4 + 0xc))();
        param_1 = piStack_350;
        cVar1 = FUN_00417430();
        if ((cVar1 == '\0') && ((param_1[0x10e] & 0x80000000U) == 0)) {
          FUN_006eef60();
          HELPER_Entity_SpawnRelay();
          FUN_00435d60();
          fVar13 = (float10)FUN_00417370();
          piStack_398 = (int *)(float)fVar13;
          FUN_0067efe0();
          piStack_37c = (int *)((float)piVar3 * DAT_00baa198 + DAT_00baa304);
          piVar3 = piStack_37c;
          FUN_00435d20();
        }
        else {
          FUN_006eef60();
          piVar4 = (int *)HELPER_Entity_SpawnRelay();
          FUN_004316b0();
          FUN_004b7070();
          FUN_0067efe0();
          piVar3 = (int *)((float)piVar3 * DAT_00baa198 + DAT_00baa304);
          FUN_00435ed0();
          (**(code **)(*piVar4 + 0x40))();
          FUN_00435e90();
        }
        FUN_00956940();
      }
    }
    if ((param_1[0x10f] & 0x80U) != 0) {
      FUN_006eef60();
      pfStack_358 = (float *)HELPER_Entity_SpawnRelay();
      FUN_004316b0();
      FUN_004b7070();
      cVar1 = FUN_00417430();
      if ((cVar1 != '\0') || ((param_1[0x10e] & 0x80000000U) != 0)) {
        FUN_004173e0();
      }
      iVar2 = FUN_0067f010();
      if (iVar2 == 0) {
        FUN_00407480();
        cVar1 = FUN_00813360();
        if (cVar1 != '\0') {
          cVar1 = FUN_00417430();
          if ((cVar1 == '\0') && ((param_1[0x10e] & 0x80000000U) == 0)) {
            FUN_006eef60();
            HELPER_Entity_SpawnRelay();
            FUN_00435d60();
            fVar13 = (float10)FUN_00417370();
            piStack_398 = (int *)(float)fVar13;
            FUN_0067efe0();
            piStack_37c = (int *)((float)piVar3 * DAT_00baa198 + DAT_00baa280);
            FUN_00435d20();
          }
          else {
            FUN_006eef60();
            piVar3 = (int *)HELPER_Entity_SpawnRelay();
            FUN_0067efe0();
            FUN_00435ed0();
            (**(code **)(*piVar3 + 0x40))();
            FUN_0067f010();
            FUN_00435e90();
          }
        }
      }
    }
    uVar12 = param_1[0x10e];
    if ((param_1[0x10f] & 0x4000U) != 0) {
      if (param_1[0xf1] == 0) {
        iStack_3f4 = param_1[0x10f];
        if (param_1[0xf2] == 0) {
LAB_00657ca1:
          if ((uVar12 & 0x80000000) != 0) goto LAB_00657cca;
          FUN_007069a0();
        }
        else {
          cVar1 = FUN_00417430();
          if (cVar1 == '\0') {
            iStack_3f4 = param_1[0x10f];
            uVar12 = param_1[0x10e];
            goto LAB_00657ca1;
          }
LAB_00657cca:
          FUN_00707370();
        }
        FUN_006a9320();
      }
      FUN_006eef60();
      pfStack_358 = (float *)HELPER_Entity_SpawnRelay();
      FUN_00435dd0();
      FUN_00435b50();
      FUN_004073d0();
      if (param_1[0xf1] == 0) {
        FUN_00a10030();
        FUN_00a10660();
      }
      else {
        FUN_00417290();
        FUN_00a10480();
        FUN_00a10030();
      }
      pfVar8 = pfStack_358;
      FUN_00435d60();
      (**(code **)((int)*pfVar8 + 0xc))();
    }
    if ((param_1[0x10f] & 0x800000U) != 0) {
      FUN_00a10030();
      FUN_00a10660();
      FUN_006b6470();
      FUN_006eef60();
      piStack_398 = param_1 + 0xcf;
      piVar3 = (int *)HELPER_Entity_SpawnRelay();
      (**(code **)(*piVar3 + 0xc))();
      pfStack_358 = (float *)0xfffffffe;
      do {
        FUN_006eef60();
        FUN_00a102e0();
        piStack_37c = (int *)0x41200000;
        FUN_00a104e0();
        piVar3 = (int *)HELPER_Entity_SpawnRelay();
        param_1 = piStack_350;
        FUN_006a9320();
        FUN_006a92a0();
        (**(code **)(*piVar3 + 0x3c))();
        (**(code **)(*piVar3 + 0xc))();
        pfStack_358 = (float *)((int)pfStack_358 + 1);
      } while ((int)pfStack_358 < 3);
    }
    if (param_1[0xb] == 0xf) {
      FUN_006eef60();
      piVar3 = (int *)HELPER_Entity_SpawnRelay();
      (**(code **)(*piVar3 + 0x3c))();
      (**(code **)(*piVar3 + 0xc))();
      param_1 = piStack_350;
      FUN_006b6470();
      FUN_00557b50();
      FUN_006b31b0();
    }
    if (piStack_374 != (int *)0x0) {
      pcVar10 = *(code **)(*piStack_374 + 0x3c);
      FUN_00407410();
      (*pcVar10)();
      if (param_1[0xb] == 3) {
        pcVar10 = *(code **)(*piStack_374 + 0x3c);
        FUN_00435ad0();
      }
      else {
        if (param_1[0xb] != 0xc) goto LAB_006580b1;
        pcVar10 = *(code **)(*piStack_374 + 0x3c);
        FUN_004238f0();
      }
      (*pcVar10)();
    }
LAB_006580b1:
    (**(code **)(*param_1 + 0x28))();
    if ((param_1[0xb] == 2) && (param_1[0xd] == 0x3b7)) {
      FUN_006b6470();
    }
    goto LAB_0065ace4;
  }
  iStack_408 = param_1[0x10e];
  if ((param_1[0x10f] & 4U) != 0) {
    if ((param_1[0xef] == 0) ||
       ((((param_1[0x10f] & 1U) != 0 && (iVar2 = FUN_006a9c10(), 0 < iVar2)) &&
        ((param_1[0x117] < 1 || (iVar2 = FUN_006ac760(), iVar2 != 0)))))) {
      FUN_00a10350();
      FUN_004171d0();
      FUN_007dd3b0();
      param_1[0x10a] = 0x3c75c28f;
      goto LAB_006583c3;
    }
    pfStack_358 = (float *)(param_1 + 0xd8);
    FUN_00a10420();
    FUN_004172b0();
    FUN_00a10480();
    fVar13 = (float10)FUN_00a0fea0();
    uStack_360 = (int *)(float)fVar13;
    if ((NAN((float)uStack_360) || NAN(DAT_00ba9fe4)) == ((float)uStack_360 == DAT_00ba9fe4)) {
      FUN_00a105a0();
      fVar13 = (float10)FUN_00a10390();
      param_1[0x10a] = (int)(float)fVar13;
      FUN_00a104b0();
      piStack_37c = (int *)((DAT_00baa924 - (float)uStack_360) * (float)DAT_00baa120);
      FUN_00a104e0();
      FUN_00a101c0();
      FUN_004172d0();
      FUN_00a10420();
      FUN_007dd3b0();
      FUN_004172d0();
      FUN_007dd3b0();
      param_1 = piStack_350;
    }
    iVar2 = param_1[0x104];
    FUN_00a155c0();
    param_1[0x104] = iVar2;
    FUN_0065b500();
    cVar1 = FUN_006ac710();
    if (cVar1 != '\0') {
      pcVar10 = *(code **)(*param_1 + 0x3c);
      FUN_0042cfd0();
      FUN_004071c0(piStack_350 + 0x6e);
      FUN_004072e0();
      (*pcVar10)();
    }
    goto LAB_0065acd8;
  }
LAB_006583c3:
  if ((code *)param_1[0x11c] != (code *)0x0) {
    (*(code *)param_1[0x11c])();
  }
  uVar12 = param_1[0x10f];
  uVar5 = param_1[0x10e];
  if ((uVar12 & 0x10000) == 0) {
    if ((uVar5 & 1) != 0) {
      cVar1 = FUN_006ac710();
      if (cVar1 != '\0') {
        FUN_006a9320();
      }
      if (param_1[0xf1] == 0) {
        if (((param_1[0xf2] == 0) || (cVar1 = FUN_00417430(), cVar1 == '\0')) &&
           ((param_1[0x10e] & 0x80000000U) == 0)) {
          FUN_007069a0();
        }
        else {
          FUN_00707370();
        }
        FUN_006a9320();
        if (param_1[0xf1] != 0) goto LAB_00658602;
      }
      else {
LAB_00658602:
        FUN_00417290();
        FUN_004172d0();
        fStack_3bc = 0.5;
        FUN_00a104e0();
        FUN_00a10420();
        FUN_00a10480();
        fVar13 = (float10)FUN_00a0fea0();
        fStack_3bc = (float)fVar13;
        if (fStack_3bc < DAT_00baa9d0) {
          FUN_00a10480();
          FUN_007dd3b0();
          FUN_00a10030();
          fStack_3bc = 1.4;
          FUN_00a104e0();
          FUN_00a104e0();
          FUN_00a104e0();
          FUN_00a10450();
          fStack_3bc = (float)param_1[0xe7];
          piStack_37c = DAT_00baa454;
          FUN_00a155c0();
          FUN_00684cb0();
          FUN_00a10540();
        }
      }
      FUN_00505b60();
      fVar13 = (float10)FUN_00407240();
      fStack_3bc = (float)fVar13;
      if ((NAN(fStack_3bc) || NAN((float)DAT_00baa454)) != (fStack_3bc == (float)DAT_00baa454)) {
        FUN_00407170();
        FUN_00682fb0();
        FUN_00682fe0();
        (**(code **)(*param_1 + 0x3c))();
      }
    }
  }
  else {
    if (param_1[0xf1] == 0) {
      uStack_3a4 = uVar12;
      if (param_1[0xf2] == 0) {
LAB_00658433:
        if ((uVar5 & 0x80000000) != 0) goto LAB_00658462;
        FUN_007069a0();
      }
      else {
        cVar1 = FUN_00417430();
        if (cVar1 == '\0') {
          uStack_3a4 = param_1[0x10f];
          uVar5 = param_1[0x10e];
          goto LAB_00658433;
        }
LAB_00658462:
        FUN_00707370();
      }
      FUN_006a9320();
      if (param_1[0xf1] == 0) goto LAB_00658802;
    }
    FUN_00417290();
    FUN_00a10480();
    piStack_37c = (int *)0x3dcccccd;
    FUN_00a104e0();
    FUN_00a10420();
    fVar13 = (float10)FUN_00a0fea0();
    fStack_3bc = 0.001;
    piStack_398 = (int *)(float)fVar13;
    FUN_0041cb70();
    FUN_00a10100();
    FUN_007dd3b0();
  }
LAB_00658802:
  uVar12 = param_1[0x10e];
  iStack_39c = param_1[0x10f];
  if (((uVar12 & 0x10) != 0) && (param_1[0xd] != 0x11d)) {
    pcVar10 = *(code **)(*param_1 + 0x3c);
    FUN_00435ad0();
    (*pcVar10)();
    iStack_39c = param_1[0x10f];
    uVar12 = param_1[0x10e];
  }
  if (((uVar12 & 0x400) != 0) && (cVar1 = FUN_006ac710(), cVar1 != '\0')) {
    FUN_006eef60();
    HELPER_Entity_SpawnRelay();
    if (param_1[0xd] != 0x10e) {
      FUN_00435e90();
    }
  }
  if (((param_1[0x10e] & 0x4000U) != 0) && (iVar2 = FUN_006ac760(), iVar2 != 0)) {
    FUN_006eef60();
    HELPER_Entity_SpawnRelay();
    piVar3 = (int *)__RTDynamicCast();
    (**(code **)(*piVar3 + 0xc))();
    FUN_00435e90();
  }
  if ((param_1[0x10e] & 0x40000000U) == 0) goto LAB_00658b5a;
  FUN_00407480();
  FUN_00652ab0();
  FUN_007dd3b0();
  cVar1 = FUN_006ac710();
  if (cVar1 == '\0') goto LAB_00658b5a;
  fVar14 = (float)param_1[0xe9] * DAT_00baa2d0;
  FUN_00407170();
  switch((int)fVar14 % 9) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    FUN_00682f20();
    goto LAB_00658b41;
  case 6:
    break;
  case 7:
    break;
  case 8:
    break;
  default:
    goto LAB_00658b41;
  }
  FUN_00682fb0();
LAB_00658b41:
  (**(code **)(*param_1 + 0x3c))();
LAB_00658b5a:
  if ((param_1[0x10e] & 0x1800U) != 0) {
    if (((param_1[0x10f] & 0x1000000U) == 0) || (param_1[0xef] == 0)) {
      FUN_00a10480();
      FUN_00a0fe90();
      if ((param_1[0x10e] & 0x1000U) != 0) {
        FUN_00a10660();
        FUN_007dd3b0();
      }
      if ((float)param_1[0x10c] <= DAT_00ba9fe4) {
        piStack_34c = (int *)0x3f000000;
      }
      else {
        fVar13 = (float10)FUN_00a0fea0();
        piStack_34c = (int *)(float)((float10)1 - fVar13 / (float10)(float)param_1[0x10c]);
        piVar3 = DAT_00baad50;
        FUN_0042f2a0();
        piStack_354 = (int *)((float)piVar3 * DAT_00baa2d0);
      }
      FUN_00a10540();
      FUN_00a10420();
      FUN_00a10030();
      FUN_00a0fea0();
      FUN_00a104e0();
      FUN_007dd3b0();
      param_1 = piStack_350;
    }
    else {
      FUN_00a104b0();
      FUN_00417290();
      FUN_00a10480();
      FUN_00a0fe90();
      if ((param_1[0x10e] & 0x1000U) != 0) {
        FUN_00a10660();
        FUN_007dd3b0();
      }
      if ((float)param_1[0x10c] <= DAT_00ba9fe4) {
        piStack_34c = (int *)0x3f000000;
      }
      else {
        fVar13 = (float10)FUN_00a0fea0();
        piStack_34c = (int *)(float)((float10)1 - fVar13 / (float10)(float)param_1[0x10c]);
        piVar3 = DAT_00baad50;
        FUN_0042f2a0();
        piStack_354 = (int *)((float)piVar3 * DAT_00baa2d0);
      }
      FUN_00a10540();
      FUN_00a10420();
      FUN_00a10030();
      fVar13 = (float10)FUN_00a0fea0();
      piStack_34c = (int *)(float)fVar13;
      FUN_00a104e0();
      FUN_007dd3b0();
      FUN_004172d0();
      FUN_00a10450();
      FUN_004172d0();
      FUN_007dd3b0();
      FUN_00417290();
      FUN_007dd3b0();
    }
  }
  piStack_364 = param_1 + 0xd8;
  if ((param_1[0x10e] & 0xc0000U) != 0) {
    fVar13 = (float10)FUN_00a0fea0();
    piStack_374 = (int *)(float)fVar13;
    FUN_00a0fe90();
    if ((param_1[0x10e] & 0x40000U) != 0) {
      FUN_00a10660();
      FUN_007dd3b0();
    }
    FUN_00a104e0();
    FUN_00a104e0();
    FUN_00a104e0();
    FUN_00a10450();
    FUN_00a100b0();
  }
  piStack_364 = param_1 + 0xd8;
  if ((param_1[0x10e] & 0x100000U) != 0) {
    iVar11 = 0;
    iVar2 = FUN_004178d0();
    if (0 < iVar2) {
      do {
        FUN_00417870();
        FUN_00417290();
        FUN_00a10480();
        FUN_00a0fe90();
        FUN_00a10030();
        fVar13 = (float10)FUN_00a10180();
        piStack_34c = (int *)(float)fVar13;
        if (((float)piStack_34c < DAT_00baa0d0) && (DAT_00baad24 < (float)piStack_34c)) {
          FUN_00407480();
          pfVar8 = (float *)FUN_00421800();
          if (*pfVar8 - DAT_00baaa00 < (float)param_1[0xcf]) {
            FUN_00407480();
            pfVar8 = (float *)FUN_0042cc70();
            if ((float)param_1[0xcf] <= *pfVar8 + DAT_00baaa00 &&
                *pfVar8 + DAT_00baaa00 != (float)param_1[0xcf]) {
              FUN_00a0fe90();
              fVar13 = (float10)FUN_00a0fea0();
              piStack_34c = (int *)(float)fVar13;
              FUN_00a104e0();
              piStack_354 = (int *)0x40000000;
              FUN_00a104e0();
              fVar13 = (float10)FUN_00a10180();
              piStack_34c = (int *)(float)fVar13;
              if ((float)piStack_34c <= DAT_00ba9fe4) {
                FUN_00a10660();
              }
              FUN_007dd3b0();
              param_1[0x10e] = param_1[0x10e] & 0xffefffff;
              param_1[0x10f] = param_1[0x10f];
              break;
            }
          }
        }
        iVar11 = iVar11 + 1;
        iVar2 = FUN_004178d0();
      } while (iVar11 < iVar2);
    }
  }
  uVar12 = param_1[0x10f];
  uVar5 = param_1[0x10e];
  if ((uVar12 & 0x200) != 0) {
    if (param_1[0xf2] == 0) {
LAB_006592f6:
      FUN_00444c60();
      uVar5 = param_1[0x10e];
      param_1[0x10f] = param_1[0x10f] & 0xfffffdff;
      param_1[0x10e] = uVar5;
    }
    else {
      FUN_004aad30();
      cVar1 = FUN_00a10630();
      if (cVar1 == '\0') goto LAB_006592f6;
      FUN_00417290();
      puVar9 = (undefined4 *)FUN_004aad30();
      uStack_394 = *puVar9;
      uStack_390 = puVar9[1];
      fVar13 = (float10)FUN_00a0fea0();
      piStack_384 = (int *)(float)fVar13;
      FUN_00a105d0();
      FUN_00a10480();
      fVar13 = (float10)FUN_00a0fea0();
      pfStack_358 = (float *)(float)fVar13;
      fVar13 = (float10)FUN_00a10180();
      piStack_34c = (int *)(float)fVar13;
      if ((float)piStack_34c < 0.0) {
        pfStack_358 = (float *)((float)pfStack_358 * (float)DAT_00baad50);
      }
      FUN_00a0fea0();
      if (((float)pfStack_358 < DAT_00ba9fe4) || ((float)piStack_384 < (float)pfStack_358))
      goto LAB_006592f6;
      FUN_004171d0();
      FUN_00a10420();
      FUN_007dd3b0();
      FUN_004171d0();
      FUN_007dd3b0();
      uVar5 = param_1[0x10e];
    }
    uVar12 = param_1[0x10f];
  }
  if ((uVar12 & 0x40000) != 0) {
    FUN_007e8f90();
    uStack_14 = 4;
    fVar13 = (float10)FUN_007e9080();
    piStack_34c = (int *)(float)fVar13;
    FUN_00a155c0();
    fVar13 = (float10)FUN_007e9080();
    fStack_3d8 = (float)param_1[0xce];
    uStack_3dc = param_1[0xcd];
    piStack_34c = (int *)((float)param_1[0xe9] / DAT_00baa9d0 + (float)fVar13);
    fVar13 = (float10)FUN_00a0fea0();
    uStack_360 = (int *)(float)fVar13;
    FUN_00a105d0();
    FUN_00a102e0();
    fVar13 = (float10)FUN_00a10180();
    fStack_3c4 = (float)fVar13;
    FUN_00a104e0();
    FUN_00a104e0();
    piVar3 = (int *)(((float)piStack_34c + (float)piStack_34c) * DAT_00baa708);
    FUN_00417160();
    piStack_354 = piVar3;
    FUN_00a104e0();
    if (fStack_3c4 < (float)uStack_360) {
      FUN_00a104e0();
      piStack_34c = (int *)0x3bf5c28f;
      FUN_00a104e0();
      FUN_00a10450();
    }
    FUN_00a10420();
    FUN_007dd3b0();
    uStack_14 = 0xffffffff;
    _guard_check_icall();
    uVar5 = param_1[0x10e];
    uVar12 = param_1[0x10f];
  }
  if ((uVar5 & 0x200000) != 0) {
    FUN_00417160();
    FUN_00a104e0();
    FUN_00a10450();
    uVar5 = param_1[0x10e];
    uVar12 = param_1[0x10f];
  }
  piStack_364 = param_1 + 0xcf;
  if ((uVar5 & 0x20) != 0) {
    FUN_00a0fe90();
    FUN_00a0ffc0();
    FUN_00417150();
    FUN_00a104e0();
    FUN_00a10450();
    uVar5 = param_1[0x10e];
    uVar12 = param_1[0x10f];
  }
  uStack_3a4 = uVar12;
  if ((uVar5 & 0x400000) != 0) {
    FUN_00a0fe90();
    FUN_00a0ffc0();
    piStack_34c = (int *)0x40800000;
    piStack_354 = (int *)(((float)param_1[0x112] + (float)param_1[0xe9]) * DAT_00baa0bc);
    pfVar8 = (float *)FUN_0040c780();
    piStack_34c = (int *)(*pfVar8 + DAT_00baa6fc);
    FUN_00417150();
    FUN_00a104e0();
    FUN_00a10450();
    uStack_3a4 = param_1[0x10f];
    uVar5 = param_1[0x10e];
  }
  if ((uVar5 & 0x800000) != 0) {
    fVar14 = DAT_00baa630;
    FUN_00435a50();
    piStack_34c = (int *)(fVar14 * DAT_00baa8d0);
    fVar14 = DAT_00baa630;
    FUN_00435a50();
    piStack_34c = (int *)(int)((float)piStack_34c / (fVar14 + (float)DAT_00baa454));
    iVar2 = FUN_006a9c10();
    if ((iVar2 == 1) ||
       ((iVar2 = FUN_00435db0(), 0 < iVar2 &&
        (((int *)((int)(float)param_1[0xe9] % 0x1e) == piStack_34c ||
         ((int *)((int)(float)param_1[0xe9] % 0x1e) == (int *)0x0)))))) {
      FUN_00a102e0();
      FUN_007dd3b0();
    }
  }
  if ((param_1[0x10e] & 0x2000000U) != 0) {
    fVar14 = DAT_00baa630;
    FUN_00435a50();
    piStack_34c = (int *)(fVar14 * DAT_00baa854);
    fVar14 = DAT_00baa630;
    FUN_00435a50();
    piStack_34c = (int *)(int)((float)piStack_34c / (fVar14 + (float)DAT_00baa454));
    iVar2 = FUN_006a9c10();
    if ((iVar2 == 1) ||
       ((iVar2 = FUN_00435db0(), 0 < iVar2 &&
        (((int *)((int)(float)param_1[0xe9] % 0xf) == piStack_34c ||
         ((int *)((int)(float)param_1[0xe9] % 0xf) == (int *)0x0)))))) {
      FUN_00a102e0();
      FUN_007dd3b0();
    }
  }
  if (((param_1[0x10e] & 0x4000000U) != 0) && (param_1[0xef] != 0)) {
    FUN_00417290();
    FUN_00a10480();
    FUN_00a0fea0();
    FUN_00a10100();
    FUN_007dd3b0();
    fVar13 = (float10)FUN_00a0fed0();
    piStack_354 = (int *)(float)fVar13;
    fVar13 = (float10)FUN_00a0fed0();
    piStack_34c = (int *)(float)fVar13;
    if ((float)piStack_354 < (float)piStack_34c) {
LAB_00653169:
      (**(code **)(*param_1 + 0x28))();
      goto LAB_0065ace4;
    }
  }
  if ((param_1[0x10f] & 0x100000U) != 0) {
    FUN_00a10480();
    fVar13 = (float10)FUN_00a0fea0();
    piStack_35c = (int *)(float)fVar13;
    if (DAT_00baa81c <= (float)piStack_35c) {
      FUN_00a105d0();
      FUN_00a104e0();
      FUN_00431450();
      if ((float)param_1[0xe9] <= DAT_00baaa44 && DAT_00baaa44 != (float)param_1[0xe9]) {
        param_1[0x105] = 0;
        param_1[0x104] = -0x3e900000;
      }
    }
    else {
      FUN_00444c60();
    }
  }
  if ((param_1[0x10e] & 0x8000000U) != 0) {
    FUN_00684cb0();
    FUN_00a10540();
    if (param_1[0xd] == 0x197) {
      fVar13 = (float10)FUN_00a0fea0();
      piStack_34c = (int *)(float)fVar13;
      if (DAT_00baa804 < (float)piStack_34c) {
        fStack_40c = DAT_00baa804 / (float)piStack_34c;
LAB_00659b08:
        FUN_00a10540();
      }
    }
    else if (param_1[0xd] == 0x378) {
      fVar13 = (float10)FUN_00a0fea0();
      fStack_40c = (float)fVar13;
      if (DAT_00baa81c < fStack_40c) goto LAB_00659b08;
    }
  }
  uVar5 = param_1[0x10e];
  uVar12 = param_1[0x10f];
  if ((uVar5 & 0x10000000) != 0) {
    FUN_00684cb0();
    FUN_00a10540();
    uVar5 = param_1[0x10e];
    uVar12 = param_1[0x10f];
  }
  uStack_3a4 = uVar12;
  if ((uVar12 & 0x20) != 0) {
    piStack_34c = (int *)((float)param_1[0xe9] / DAT_00baa87c);
    piStack_354 = (int *)0x3f800000;
    FUN_0040c780();
    piStack_364 = (int *)param_1[0xe7];
    FUN_00a155c0();
    FUN_00684cb0();
    FUN_00a10540();
    uStack_3a4 = param_1[0x10f];
    uVar5 = param_1[0x10e];
  }
  if ((((uVar5 & 0x20000000) != 0) && (DAT_00baa87c < (float)param_1[0xe9])) &&
     (((iVar2 = FUN_00435db0(), 0 < iVar2 && (iVar2 = FUN_0067f010(), iVar2 == 0)) ||
      (param_1[0xd] == 0x3e)))) {
    FUN_00a0fe90();
    FUN_00a0fe90();
    iStack_2c = param_1[0xd8];
    piVar3 = aiStack_3c;
    iStack_28 = param_1[0xd9];
    auStack_d8[0] = 0x40000;
    auStack_d8[1] = 0x80000;
    auStack_d8[2] = 0x200000;
    piStack_364 = (int *)0x0;
    do {
      piStack_34c = piVar3;
      fVar13 = (float10)FUN_00a0fed0();
      piStack_354 = (int *)(float)fVar13;
      if (DAT_00baa8a0 <= (float)fVar13) {
        iStack_478 = piVar3[1];
        piVar4 = &iStack_47c;
        iStack_47c = *piVar3;
      }
      else {
        iStack_410 = 0x3fcccccd;
        piVar4 = (int *)FUN_00a104e0();
      }
      iStack_3a8 = *piVar4;
      uStack_3a4 = piVar4[1];
      FUN_006eef60();
      FUN_00a10480();
      HELPER_Entity_SpawnRelay();
      piVar3 = (int *)__RTDynamicCast();
      piStack_354 = piVar3;
      FUN_004316b0();
      FUN_004b7070();
      piStack_3d0 = (int *)((float)param_1[0x104] * DAT_00baa304);
      piStack_378 = (int *)0xc1b80000;
      FUN_0040c780();
      FUN_00450880();
      piStack_378 = (int *)((float)param_1[0x108] - _DAT_00baa338);
      piStack_3d0 = (int *)0x3f800000;
      FUN_0041cb70();
      FUN_004508a0();
      if ((float)DAT_00baa454 < (float)param_1[0x108]) {
        piVar3[0x106] = param_1[0x106];
        FUN_0067efe0();
      }
      else {
        param_1[0x10e] = param_1[0x10e] & 0xdfffffff;
        param_1[0x10f] = param_1[0x10f];
        piVar3[0x106] = 0x3dcccccd;
        piVar3[0x105] = -0x3fc00000;
      }
      uVar12 = param_1[0x10e];
      piVar3[0x10f] = param_1[0x10f];
      piVar3[0x10e] = auStack_d8[(int)piStack_364] | uVar12 & 0xffd3ffff;
      pcVar10 = *(code **)(*piVar3 + 0x3c);
      FUN_00407410();
      (*pcVar10)();
      piVar3 = piStack_354;
      FUN_006a92a0();
      (**(code **)(*piVar3 + 0xc))();
      piStack_364 = (int *)((int)piStack_364 + 1);
      piVar3 = piStack_34c + 2;
    } while ((int)piStack_364 < 3);
    pcVar10 = *(code **)(*param_1 + 0x24);
    piStack_34c = piVar3;
    FUN_00435c70();
    (*pcVar10)();
  }
  FUN_00417860();
  cVar1 = FUN_004f8940();
  if (cVar1 == '\0') {
LAB_00659f8a:
    cStack_3bd = '\0';
  }
  else {
    FUN_007e8f90();
    uStack_14 = 5;
    piStack_368 = (int *)0x1;
    uVar12 = FUN_007e9020();
    cStack_3bd = '\x01';
    if (0x20 < uVar12) goto LAB_00659f8a;
  }
  uStack_14 = 0xffffffff;
  if (((uint)piStack_368 & 1) != 0) {
    _guard_check_icall();
  }
  if (cStack_3bd != '\0') {
    FUN_00407480();
    FUN_00428a60();
    AI_0041af60();
    uStack_14 = 6;
    piVar3 = (int *)0x0;
    piStack_34c = (int *)0x0;
    iVar2 = FUN_004176f0();
    if (iVar2 != 0) {
      do {
        FUN_00417620();
        piStack_368 = (int *)__RTDynamicCast();
        fVar13 = (float10)FUN_0060cea0();
        piStack_378 = (int *)(float)fVar13;
        FUN_00417290();
        fVar13 = (float10)FUN_00a0ff90();
        piStack_3d0 = (int *)(float)fVar13;
        if ((float)piStack_3d0 < (float)piStack_378 * (float)piStack_378) {
          (**(code **)(*param_1 + 0x28))();
          piVar3 = (int *)FUN_004174a0();
          uStack_360 = piVar3;
          if (piVar3 == (int *)0x0) {
LAB_0065a0e7:
            FUN_005cd690();
          }
          else {
            cVar1 = FUN_004173b0();
            if (cVar1 == '\0') {
              piVar3 = (int *)0x0;
            }
            uStack_360 = piVar3;
            if (piVar3 == (int *)0x0) goto LAB_0065a0e7;
            FUN_0067f010();
            FUN_007bf6c0();
          }
          FUN_0065b490();
          FUN_006eef60();
          FUN_00a10660();
          HELPER_Entity_SpawnRelay();
          piVar3 = (int *)__RTDynamicCast();
          FUN_00675fc0();
          FUN_00444c70();
          (**(code **)(*piVar3 + 0x40))();
          FUN_00676150();
          FUN_00676120();
          FUN_00444c90();
          FUN_00435ad0();
          (**(code **)(*piVar3 + 0x3c))();
          FUN_006a92a0();
          (**(code **)(*piVar3 + 0xc))();
          piVar3 = piStack_34c;
        }
        piVar3 = (int *)((int)piVar3 + 1);
        piStack_34c = piVar3;
        piVar4 = (int *)FUN_004176f0();
      } while (piVar3 < piVar4);
    }
    uStack_14 = 0xffffffff;
    FUN_004175b0();
  }
  fVar22 = DAT_00baa3e0;
  FUN_00684cb0();
  fVar14 = (float)param_1[0xe7];
  fVar22 = fVar14 * (float)param_1[0x106] +
           fVar14 * (float)DAT_00baa120 + fVar22 * (float)param_1[0x105];
  param_1[0x105] = (int)fVar22;
  fVar14 = fVar22 * fVar14 + (float)param_1[0x104];
  param_1[0x104] = (int)fVar14;
  if (param_1[0xb] == 0xf) {
    FUN_00431290();
    FUN_004312b0();
    piStack_378 = (int *)(fVar22 * DAT_00baa630);
    fVar13 = (float10)FUN_00417210();
    piStack_378 = (int *)(float)(fVar13 + (float10)(float)piStack_378);
    FUN_00682740();
    FUN_0043ee80();
    fVar14 = (float)param_1[0x104];
  }
  piStack_368 = param_1 + 0xd8;
  if (cStack_3d1 != '\0') {
    if ((float)param_1[0x106] < DAT_00baa020) {
      if (DAT_00baadc0 < fVar14) {
        fVar14 = (float)param_1[0xe7] * DAT_00baa2d0;
        goto LAB_0065a376;
      }
    }
    else {
      fVar14 = (float)param_1[0x106] * (float)param_1[0xe7];
LAB_0065a376:
      param_1[0xd9] = (int)(fVar14 + (float)param_1[0xd9]);
    }
    FUN_00407480();
    FUN_00812f50();
    cVar1 = FUN_00a10630();
    if (cVar1 != '\0') {
      FUN_00a10480();
      fVar13 = (float10)FUN_00a10180();
      piStack_378 = (int *)(float)fVar13;
      if ((float)piStack_378 < 0.0) {
        (**(code **)(*param_1 + 0x28))();
      }
    }
    FUN_00407480();
    cVar1 = FUN_008279a0();
    if (((cVar1 != '\0') && (iVar2 = FUN_006a9c10(), 2 < iVar2)) &&
       (fVar14 = (float)param_1[0xd9], DAT_00ba9fe4 < fVar14)) {
      FUN_00407480();
      FUN_008279c0();
      if (fVar14 < (float)param_1[0xd0]) {
        if ((param_1[0x10e] & 2U) == 0) {
          (**(code **)(*param_1 + 0x28))();
          piStack_368 = (int *)0x42;
          if ((param_1[0xb] == 0xe) && (param_1[0xd] == 0x3b7)) {
            FUN_006b6470();
            piStack_368 = (int *)&DAT_00000043;
          }
          FUN_006eef60();
          piVar3 = (int *)HELPER_Entity_SpawnRelay();
          (**(code **)(*piVar3 + 0xc))();
        }
        else {
          *(undefined *)((int)param_1 + 0x173) = 1;
        }
      }
    }
  }
  iStack_404 = param_1[0x10f];
  if ((param_1[0x10e] & 0x1000000U) == 0) {
    if ((param_1[0x10e] & 0x80000080U) == 0x80000080) {
      FUN_00407480();
      cVar1 = FUN_00456710();
      if (cVar1 != '\0') goto LAB_0065a5c5;
    }
    else if ((param_1[0xef] == 0) || (cVar1 = FUN_00417430(), cVar1 == '\0')) {
      FUN_00407480();
      FUN_004360d0();
      cVar1 = FUN_009305f0();
      if (cVar1 == '\0') {
        FUN_00407480();
        FUN_004360d0();
        cVar1 = FUN_009305f0();
        if (cVar1 == '\0') {
          FUN_00407480();
          iVar2 = FUN_0081edd0();
          if (iVar2 != 1) goto LAB_0065a621;
        }
      }
      goto LAB_0065a5c5;
    }
  }
  else {
LAB_0065a5c5:
    piVar3 = piStack_350;
    pcVar10 = *(code **)(*param_1 + 0x3c);
    FUN_00435ad0(0x3f800000,0x28,0x28,0x28);
    FUN_004072e0();
    (*pcVar10)();
    param_1 = piVar3;
  }
LAB_0065a621:
  if (((param_1[0x10f] & 2U) != 0) &&
     ((((param_1[0x117] < 1 || (iVar2 = FUN_006ac760(), iVar2 != 0)) &&
       (iVar2 = FUN_006a9c10(), 0 < iVar2)) && (FUN_00a100b0(), (param_1[0x115] & 3U) != 3)))) {
    param_1[0x10f] = param_1[0x10f] & 0xfffffffd;
    param_1[0x10e] = param_1[0x10e];
  }
  if ((param_1[0x10f] & 0x800U) != 0) {
    FUN_00407480();
    iStack_3a0 = param_1[0xcf];
    iStack_39c = param_1[0xd0];
    iVar2 = FUN_007f0780();
    fVar14 = DAT_00baae30;
    if ((((iVar2 == 2) || (iVar2 == 3)) || (fVar14 = DAT_00baada0, iVar2 == 0)) &&
       ((fVar14 < (float)param_1[0x104] && (DAT_00baa630 < (float)param_1[0x105])))) {
      fVar22 = (float)param_1[0x105] * DAT_00baad74;
      param_1[0x104] = (int)fVar14;
      param_1[0x105] = (int)fVar22;
    }
  }
  if ((param_1[0x10f] & 0x400U) != 0) {
    piStack_3d0 = param_1 + 0xcf;
    uStack_3dc = DAT_00c7b640;
    fStack_3d8 = DAT_00c7b644;
    uVar12 = 0;
    iStack_410 = (uint)((float)param_1[0x104] < DAT_00baae30) * 2 + 2;
    piStack_378 = param_1 + 0x5e;
    iVar2 = FUN_0042f160();
    if (iVar2 != 0) {
      do {
        FUN_0042f150();
        FUN_00a10420();
        FUN_00407480();
        FUN_007f0780();
        FUN_00407480();
        iVar2 = FUN_007f0780();
        if (iStack_410 <= iVar2) {
          FUN_0042f150();
          FUN_00a10450();
        }
        uVar12 = uVar12 + 1;
        uVar5 = FUN_0042f160();
        param_1 = piStack_350;
      } while (uVar12 < uVar5);
    }
    cVar1 = FUN_00a10630();
    if (cVar1 != '\0') {
      FUN_00a0ffc0();
      piStack_378 = (int *)((float)(uStack_3dc ^ DAT_00bacb70) * (float)param_1[0xd8] -
                           fStack_3d8 * (float)param_1[0xd9]);
      if ((float)piStack_378 < 0.0) {
        FUN_00a104e0();
        piStack_3d0 = (int *)0x40000000;
        FUN_00a104e0();
        FUN_00a10450();
        FUN_00a10450();
      }
    }
  }
  if ((((param_1[0x10f] & 1U) != 0) && (iVar2 = FUN_006a9c10(), 0 < iVar2)) &&
     ((param_1[0x117] < 1 || (iVar2 = FUN_006ac760(), iVar2 != 0)))) {
    iVar2 = param_1[0x10e];
    iVar11 = param_1[0x10f];
    param_1[0x10e] = param_1[0x114];
    param_1[0x10f] = param_1[0x115];
    param_1[0x114] = iVar2;
    param_1[0x115] = iVar11;
  }
  FUN_0065b500();
  iVar2 = FUN_00435db0();
  if ((0 < iVar2) && (iVar2 = FUN_0067f010(), iVar2 == 0)) {
    FUN_00417860();
    cVar1 = FUN_004f8940();
    if (cVar1 != '\0') {
      uVar12 = 0;
      uStack_360 = DAT_00baacb8;
      piStack_34c = (int *)0x0;
      iVar2 = FUN_004178d0();
      if (iVar2 != 0) {
        do {
          piStack_368 = (int *)FUN_00417870();
          cVar1 = FUN_007706e0();
          if (cVar1 != '\0') {
            FUN_00417290();
            fVar13 = (float10)FUN_00a0ff90();
            piStack_378 = (int *)(float)fVar13;
            if ((float)piStack_378 < (float)uStack_360) {
              piStack_34c = piStack_368;
              uStack_360 = piStack_378;
            }
          }
          uVar12 = uVar12 + 1;
          uVar5 = FUN_004178d0();
        } while (uVar12 < uVar5);
        if ((piStack_34c != (int *)0x0) && ((float)uStack_360 < DAT_00baac24)) {
          piVar3 = uStack_360;
          FUN_00435a50();
          piStack_378 = piVar3;
          FUN_00417290();
          FUN_00a10480();
          FUN_0067efe0();
          FUN_00a10100();
          FUN_00a10450();
        }
      }
    }
  }
  if ((DAT_00baada0 < (float)param_1[0x104]) ||
     ((*(char *)(param_1 + 100) != '\0' && (DAT_00baae30 <= (float)param_1[0x104])))) {
    *(undefined *)((int)param_1 + 0x173) = 1;
  }
  FUN_00417860();
  cVar1 = FUN_004f8940();
  if (cVar1 != '\0') {
    FUN_00417860();
    FUN_009bea40();
    iStack_478 = 0x32;
    FUN_0041cb80();
    iVar2 = FUN_0067f010();
    if ((iVar2 == 0) && (*(char *)((int)param_1 + 0x173) == '\0')) {
      FUN_007dd3b0();
      FUN_004173e0();
      FUN_007dd3b0();
    }
  }
  if ((param_1[0x10f] & 0x2000000U) != 0) {
    param_1[0x62] = 0;
    FUN_00407410();
    FUN_00407410();
    fVar13 = (float10)FUN_00407270();
    pfStack_3c8 = (float *)(float)(fVar13 - (float10)(*pfStack_3c8 * (float)DAT_00baa120));
    FUN_00407280();
    FUN_00407410();
    fVar13 = (float10)FUN_00407270();
    param_1 = piStack_350;
    pfStack_3c8 = (float *)(float)fVar13;
    if ((float)pfStack_3c8 <= 0.0) {
      (**(code **)(*piStack_350 + 0x28))();
    }
  }
  if ((param_1[0x10f] & 0x100U) != 0) {
    iVar2 = param_1[0x104];
    FUN_00a155c0();
    param_1[0x104] = iVar2;
    fVar14 = (float)param_1[0xe9] * DAT_00baa198;
    param_1[0x105] = 0;
    FUN_00417160();
    param_1[0xd4] = (int)(fVar14 * DAT_00baa630 + (float)param_1[0x104]);
    if (param_1[0xef] == 0) {
      FUN_00444c60();
    }
  }
LAB_0065acd8:
  FUN_00862590();
LAB_0065ace4:
  ExceptionList = pvStack_1c;
  FUN_00aef12b();
  return;
}

