/* Local J460 decompiler output.
 * VA: 0x0045e050
 * Entry: 0045e050
 * Dispatcher: 0x006c2990
 * Types: 268
 * Identities: 268.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0045ef20; instructions=924
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=268; identities=268.0.0; dispatcher=0x006c2990;
   end=0x0045ef20; instructions=924 */

void __fastcall AI_0045e050(int param_1)

{
  float fVar1;
  char cVar2;
  byte bVar3;
  int iVar4;
  float *pfVar5;
  undefined4 *puVar6;
  byte **ppbVar7;
  uint uVar8;
  undefined4 uVar9;
  int *piVar10;
  byte **ppbVar11;
  byte *pbVar12;
  undefined4 extraout_ECX;
  int iVar13;
  int iVar14;
  bool bVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  int *piVar20;
  char *pcVar21;
  undefined auStack_78 [3];
  char local_75;
  int *local_74;
  float local_70;
  int *local_6c;
  int *local_68;
  int *local_64;
  int local_60;
  undefined local_5c [8];
  int *local_54;
  int *local_50;
  uint local_48;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_78;
  iVar13 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  local_60 = param_1;
  iVar4 = FUN_006be840();
  local_64 = (int *)(*(float *)(iVar4 + 0x33c) - *(float *)(param_1 + 0x33c));
  local_70 = *(float *)(iVar4 + 0x340) - *(float *)(param_1 + 0x340);
  pfVar5 = (float *)FUN_006bec40(local_5c,0);
  fVar19 = DAT_00ba9fe4;
  local_74 = (int *)(*pfVar5 - *(float *)(param_1 + 0x33c));
  local_6c = (int *)(pfVar5[1] - *(float *)(param_1 + 0x340));
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x410) = 0;
    FUN_00aef12b();
    return;
  }
  *(undefined4 *)(param_1 + 0x36c) = 0x3f59999a;
  if (((fVar19 < *(float *)(param_1 + 0x14)) && ((*(uint *)(param_1 + 0x18) & 4) != 0)) &&
     (puVar6 = *(undefined4 **)(param_1 + 8), puVar6 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      if (puVar6[4] == *(int *)(param_1 + 0x28)) {
        *puVar6 = 0;
      }
      puVar6 = puVar6 + 0xe;
    } while (puVar6 != *(undefined4 **)(param_1 + 0xc));
  }
  if (0 < *(int *)(param_1 + 0xbc4)) {
    *(int *)(param_1 + 0xbc4) = *(int *)(param_1 + 0xbc4) - iVar13;
  }
  iVar4 = *(int *)(param_1 + 0xb64);
  if (iVar4 == 4) {
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + iVar13;
    ppbVar7 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar7 == (byte **)0x0) {
LAB_0045e1cf:
      cVar2 = FUN_0040a5d0(&DAT_00b1dce4,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar7[5]) {
        ppbVar7 = (byte **)*ppbVar7;
      }
      pbVar12 = &DAT_00b1dce4;
      do {
        bVar3 = *(byte *)ppbVar7;
        bVar15 = bVar3 < *pbVar12;
        if (bVar3 != *pbVar12) {
LAB_0045e1b7:
          uVar8 = -(uint)bVar15 | 1;
          goto LAB_0045e1bc;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar7 + 1);
        bVar15 = bVar3 < pbVar12[1];
        if (bVar3 != pbVar12[1]) goto LAB_0045e1b7;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pbVar12 = pbVar12 + 2;
      } while (bVar3 != 0);
      uVar8 = 0;
LAB_0045e1bc:
      if ((uVar8 != 0) ||
         ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' && (*(char *)(param_1 + 0x8c) == '\0')
          ))) goto LAB_0045e1cf;
    }
    FUN_007e6650(0);
    if (((*(uint *)(param_1 + 0x16c) & 0x10000000) != 0) &&
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0))
    goto LAB_0045eea5;
    local_50 = *(int **)(param_1 + 0x340);
    local_54 = *(int **)(param_1 + 0x33c);
    local_75 = FUN_00944a40(&local_54);
    local_74 = (int *)0x1e;
    if (*(float *)(param_1 + 0x380) / *(float *)(param_1 + 900) < DAT_00baa1f8) {
      local_74 = (int *)&DAT_0000000f;
    }
    if (((((*(uint *)(param_1 + 0x168) & 0x4000) == 0) && (cVar2 = FUN_006fd350(), cVar2 == '\0'))
        && ((*(int *)(DAT_00c71678 + 0x264f8) + *(int *)(param_1 + 0x20)) % ((int)local_74 * 2) == 0
           )) && (bVar3 = FUN_006eef60(), (bVar3 & 3) < 3)) {
      bVar15 = true;
    }
    else {
      bVar15 = false;
    }
    if ((((*(uint *)(param_1 + 0x168) & 0x1000800) != 0) || (bVar15)) &&
       (*(float *)(DAT_00c71678 + 0x26518) <= 0.0)) {
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      *(undefined4 *)(param_1 + 0x410) = 0;
      goto LAB_0045eea5;
    }
    if (((local_75 == '\0') ||
        (cVar2 = FUN_006ac710(local_74,*(undefined4 *)(param_1 + 0x20)), cVar2 == '\0')) ||
       ((uVar8 = FUN_006eef60(), uVar8 % 3 != 0 || (0 < *(int *)(param_1 + 0xbc4))))) {
      iVar13 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
               *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
      iVar4 = 0;
      if (0 < iVar13) {
        iVar4 = iVar13;
      }
      if (((iVar4 < 3) &&
          (cVar2 = FUN_006ac710(local_74,*(undefined4 *)(param_1 + 0x20)), cVar2 != '\0')) &&
         (uVar8 = FUN_006eef60(), uVar8 % 3 == 0)) {
        FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
        *(undefined4 *)(param_1 + 0xb64) = 0xd;
        goto LAB_0045eea5;
      }
      if (((((*(uint *)(param_1 + 0x168) & 0x4000) != 0) || (cVar2 = FUN_006fd350(), cVar2 != '\0'))
          || ((*(int *)(DAT_00c71678 + 0x264f8) + *(int *)(param_1 + 0x20)) % (int)local_74 != 0))
         || (uVar8 = FUN_006eef60(), uVar8 % 3 != 0)) goto LAB_0045eea5;
      *(undefined4 *)(param_1 + 0xb64) = 6;
      ppbVar7 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar7 == (byte **)0x0) {
LAB_0045e678:
        cVar2 = FUN_0040a5d0(&DAT_00b1ddc0,1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        if (&DAT_0000000f < ppbVar7[5]) {
          ppbVar7 = (byte **)*ppbVar7;
        }
        pbVar12 = &DAT_00b1ddc0;
        do {
          bVar3 = *(byte *)ppbVar7;
          bVar15 = bVar3 < *pbVar12;
          if (bVar3 != *pbVar12) {
LAB_0045e660:
            uVar8 = -(uint)bVar15 | 1;
            goto LAB_0045e665;
          }
          if (bVar3 == 0) break;
          bVar3 = *(byte *)((int)ppbVar7 + 1);
          bVar15 = bVar3 < pbVar12[1];
          if (bVar3 != pbVar12[1]) goto LAB_0045e660;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar3 != 0);
        uVar8 = 0;
LAB_0045e665:
        if ((uVar8 != 0) ||
           ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' &&
            (*(char *)(param_1 + 0x8c) == '\0')))) goto LAB_0045e678;
      }
      *(undefined4 *)(param_1 + 0x410) = 0;
      FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
      goto LAB_0045eea5;
    }
    *(undefined4 *)(param_1 + 0xb64) = 8;
    *(undefined4 *)(param_1 + 0x410) = 0;
    FUN_006d6ba0(0x76,0x3f800000,2,0,0x3f800000);
    if ((float)((uint)local_70 & DAT_00bacb40) <= (float)((uint)local_64 & DAT_00bacb40)) {
      if (0.0 <= (float)local_64) {
        *(undefined4 *)(param_1 + 0xbc0) = 2;
        fVar19 = 0.0;
        local_54 = (int *)0x41f00000;
      }
      else {
        *(undefined4 *)(param_1 + 0xbc0) = 0;
        local_54 = (int *)0xc1f00000;
        fVar19 = DAT_00baaa78;
      }
LAB_0045e444:
      local_50 = (int *)&DAT_c1c80000;
    }
    else {
      *(uint *)(param_1 + 0xbc0) = (uint)(0.0 <= local_70) * 2 + 1;
      switch(0.0 <= local_70) {
      case false:
        local_54 = (int *)0x0;
        fVar19 = DAT_00baaaf4;
        goto LAB_0045e444;
      case true:
        local_54 = (int *)0x0;
        local_50 = (int *)0xc0a00000;
        fVar19 = DAT_00baa9b4;
      }
    }
    uVar9 = FUN_004238f0(0x3f4ccccd);
    piVar20 = (int *)(fVar19 * DAT_00baa088);
    local_64 = piVar20;
    FUN_0041d540();
    piVar10 = local_64;
    local_6c = piVar20;
    FUN_0041d520();
    local_68 = piVar10;
    FUN_0060b890(&local_6c,0x1c,uVar9,0x40800000);
    cVar2 = FUN_004567b0();
    if (cVar2 == '\0') {
      FUN_006d0c60(&local_54,*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c));
      uVar8 = 0;
      if (local_48 != 0) {
        do {
          iVar4 = local_50[uVar8];
          if (((iVar4 != 0) &&
              (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)(iVar4 + 0x28) == 1)) ||
               (*(int *)(iVar4 + 0x28) - 10U < 0x3de)))) &&
             ((*(char *)(iVar4 + 0x173) == '\0' && ((*(uint *)(iVar4 + 0x168) & 0x20000000) == 0))))
          {
            *(undefined4 *)(iVar4 + 0xbc4) = 0x5a;
          }
          uVar8 = uVar8 + 1;
          param_1 = local_60;
        } while (uVar8 < local_48);
      }
      FUN_004175b0();
    }
    goto LAB_0045eea5;
  }
  if (iVar4 == 8) {
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + iVar13;
    switch(*(undefined4 *)(param_1 + 0xbc0)) {
    case 0:
      pcVar21 = "Attack2Left";
      break;
    case 1:
      pcVar21 = "Attack2Up";
      break;
    case 2:
      pcVar21 = "Attack2Right";
      break;
    case 3:
      pcVar21 = "Attack2Down";
      break;
    default:
      goto LAB_0045e70d;
    }
    FUN_0040a380(pcVar21,0);
LAB_0045e70d:
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        fVar18 = 0.0;
        fVar19 = DAT_00c7b640;
        fVar17 = DAT_00c7b644;
        switch(*(undefined4 *)(param_1 + 0xbc0)) {
        case 0:
          fVar19 = DAT_00baae14;
          fVar17 = DAT_00baae00;
          fVar18 = DAT_00baaa78;
          break;
        case 1:
          fVar19 = 0.0;
          fVar17 = DAT_00baae00;
          fVar18 = DAT_00baaaf4;
          break;
        case 2:
          fVar19 = DAT_00baa8d0;
          fVar17 = DAT_00baae00;
          break;
        case 3:
          fVar19 = 0.0;
          fVar17 = DAT_00baada0;
          fVar18 = DAT_00baa9b4;
        }
        local_6c = (int *)(fVar19 + *(float *)(param_1 + 0x33c));
        local_68 = (int *)(fVar17 + *(float *)(param_1 + 0x340));
        local_54 = (int *)0x0;
        local_50 = (int *)&DAT_c1c80000;
        piVar10 = (int *)FUN_0096f310(1,&local_6c,fVar18,10,&local_54,param_1,0);
        piVar10[0x135] = 2;
        if (*(int *)(param_1 + 0xbc0) == 3) {
          piVar10[0xd6] = 0x41200000;
        }
        (**(code **)(*piVar10 + 0xc))();
      }
LAB_0045edef:
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_0045eea5;
    }
  }
  else {
    if (iVar4 != 0xd) {
      if (iVar4 != 6) {
        if (iVar4 == 0x10) {
          FUN_0040a380("Scream",0);
          *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + iVar13;
          cVar2 = FUN_0040b030("Scream");
          if (cVar2 != '\0') {
            FUN_006d6ba0(0x7a,0x3f800000,2,0,0x3f800000);
          }
          iVar4 = DAT_00c71678;
          if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
            *(undefined4 *)(param_1 + 0xb64) = 4;
            *(undefined4 *)(param_1 + 0x410) = 0;
            *(undefined4 *)(iVar4 + 0x2651c) = 0x3f800000;
            *(undefined4 *)(iVar4 + 0x26514) = 0xb4;
          }
        }
        goto LAB_0045eea5;
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + iVar13;
      FUN_00452bf0(&local_54);
      local_75 = FUN_0040cae0(&DAT_00b1ddc0,5);
      if (0xf < local_40) {
        uVar8 = local_40 + 1;
        piVar10 = local_54;
        if (0xfff < uVar8) {
          piVar10 = (int *)local_54[-1];
          uVar8 = local_40 + 0x24;
          if ((undefined *)0x1f < (undefined *)((int)local_54 + (-4 - (int)piVar10))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(piVar10,uVar8);
      }
      if (local_75 != '\0') {
        cVar2 = FUN_0040b090(&DAT_00b1de04);
        if (cVar2 != '\0') {
          local_54 = local_74;
          local_50 = local_6c;
          FUN_00a0ffc0();
          *(float *)(param_1 + 0x360) =
               (float)local_54 * DAT_00baa4cc * *(float *)(param_1 + 0x39c) +
               *(float *)(param_1 + 0x360);
          *(float *)(param_1 + 0x364) =
               (float)local_50 * DAT_00baa4cc * *(float *)(param_1 + 0x39c) +
               *(float *)(param_1 + 0x364);
        }
        *(undefined4 *)(param_1 + 0x188) = 0;
        if (((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) &&
           (FUN_006d6ba0(0x74,0x3f4ccccd,0x3c,0,0x3f800000), 0x4b < *(int *)(param_1 + 0x410))) {
          FUN_0040a380("FlyDown",0);
        }
        goto LAB_0045eea5;
      }
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        *(undefined4 *)(param_1 + 0x188) = 4;
        uVar9 = FUN_006eef60();
        iVar4 = FUN_006fe410(1000,0x3d,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar9,0);
        *(undefined4 *)(iVar4 + 0x45c) = 0x14;
        piVar10 = (int *)(iVar4 + 0x3bc);
        *(undefined4 *)(iVar4 + 0x460) = 0x14;
        fVar19 = *(float *)(param_1 + 0x370);
        *(float *)(iVar4 + 0x454) = fVar19;
        *(float *)(iVar4 + 0x458) = fVar19 + DAT_00baa98c;
        if (*(int *)(iVar4 + 0x3bc) != 0) {
          local_6c = piVar10;
          FUN_004cf210(&local_6c);
        }
        *piVar10 = param_1;
        FUN_004cdcf0(piVar10);
        FUN_00703670(0xf);
        FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
        FUN_006ff2a0((int **)(param_1 + 0x33c),0x42480000,*(undefined4 *)(param_1 + 0x370),0,param_1
                     ,DAT_00c79100,DAT_00c79104,DAT_00c79108,DAT_00c7910c,0x1000000,0,0);
        FUN_00456570();
        local_54 = *(int **)(param_1 + 0x33c);
        local_50 = *(int **)(param_1 + 0x340);
        iVar4 = *(int *)(DAT_00c71678 + 0x18300);
        local_3c = 0xd;
        local_44 = 0x3ccccccd;
        local_48 = 0x3d23d70a;
        piVar10 = (int *)(iVar4 + 0x70fc);
        *piVar10 = *piVar10 + 1;
        uVar8 = *(uint *)(iVar4 + 0x70fc) & 0x80000001;
        if ((int)uVar8 < 0) {
          uVar8 = (uVar8 - 1 | 0xfffffffe) + 1;
        }
        FUN_0081df10(uVar8,&local_54);
      }
      goto LAB_0045edef;
    }
    ppbVar7 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar7 == (byte **)0x0) {
LAB_0045e86e:
      cVar2 = FUN_0040a5d0(&DAT_00b1d2cc,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar11 = ppbVar7;
      if (&DAT_0000000f < ppbVar7[5]) {
        ppbVar11 = (byte **)*ppbVar7;
      }
      pbVar12 = &DAT_00b1d2cc;
      do {
        bVar3 = *(byte *)ppbVar11;
        bVar15 = bVar3 < *pbVar12;
        if (bVar3 != *pbVar12) {
LAB_0045e850:
          uVar8 = -(uint)bVar15 | 1;
          goto LAB_0045e855;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar11 + 1);
        bVar15 = bVar3 < pbVar12[1];
        if (bVar3 != pbVar12[1]) goto LAB_0045e850;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pbVar12 = pbVar12 + 2;
      } while (bVar3 != 0);
      uVar8 = 0;
LAB_0045e855:
      if ((uVar8 != 0) || ((*(byte *)(ppbVar7 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_0045e86e;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Skin Pull");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x13a,0x3f800000,2,0,0x3f800000);
      }
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar2 = FUN_0040add0("Shoot");
        if (cVar2 != '\0') {
          FUN_006d6ba0(0x109,0x3f333333,2,0,0x3f800000);
          iVar13 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                   *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
          iVar4 = 0;
          if (0 < iVar13) {
            iVar4 = iVar13;
          }
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            iVar4 = FUN_006ac7e0(0x55,0,extraout_ECX,0);
          }
          if (-1 < -iVar4 + 3) {
            local_70 = (float)(-iVar4 + 4);
            do {
              FUN_00813520(&local_54,param_1 + 0x33c,0x42c80000,0,0,0);
              uVar9 = FUN_006eef60();
              uVar9 = FUN_006fe410(0x55,0,&local_54,&DAT_00c7b640,param_1,0,uVar9,0);
              local_60 = __RTDynamicCast(uVar9,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                         &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
              local_74 = (int *)(DAT_00c71678 + 0x18300);
              iVar4 = *local_74;
              iVar14 = (int)(((float)local_54 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
              iVar13 = (int)(((float)local_50 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
              if (((((-1 < iVar14) && (iVar14 < *(int *)(iVar4 + 0xc))) && (-1 < iVar13)) &&
                  ((iVar13 < *(int *)(iVar4 + 0x10) &&
                   (uVar8 = iVar13 * *(int *)(iVar4 + 0xc) + iVar14, uVar8 < 0x1c0)))) &&
                 (*(int *)(iVar4 + 0x76c + uVar8 * 4) < 0x3b7)) {
                *(undefined4 *)(iVar4 + 0x76c + uVar8 * 4) = 900;
              }
              local_70 = (float)((int)local_70 + -1);
              fVar19 = *(float *)(local_60 + 0x33c);
              fVar16 = *(float *)(local_60 + 0x350) - DAT_00baa81c;
              *(float *)(local_60 + 0x334) = fVar19;
              fVar17 = *(float *)(local_60 + 0x340);
              *(float *)(local_60 + 0x338) = fVar17;
              fVar18 = *(float *)(param_1 + 0x33c);
              *(float *)(local_60 + 0x33c) = fVar18;
              fVar1 = *(float *)(param_1 + 0x340);
              *(float *)(local_60 + 0x340) = fVar1;
              *(float *)(local_60 + 0x350) = fVar16;
              *(undefined4 *)(local_60 + 0xb64) = 6;
              fVar18 = (fVar19 - fVar18) * DAT_00baa0bc;
              *(undefined4 *)(local_60 + 0xbbc) = 0xc1000000;
              fVar19 = (fVar17 - fVar1) * DAT_00baa0bc;
              *(float *)(local_60 + 0x360) = fVar18;
              *(float *)(local_60 + 0xbb0) = fVar18;
              *(float *)(local_60 + 0x364) = fVar19;
              *(float *)(local_60 + 0xbb4) = fVar19;
            } while (local_70 != 0.0);
            local_70 = 0.0;
          }
        }
        goto LAB_0045edef;
      }
    }
  }
  *(undefined4 *)(param_1 + 0xb64) = 4;
  *(undefined4 *)(param_1 + 0x410) = 0;
LAB_0045eea5:
  if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
     (*(float *)(param_1 + 0x340) <= DAT_00baab14 && DAT_00baab14 != *(float *)(param_1 + 0x340))) {
    *(undefined4 *)(param_1 + 0x340) = 0x43a00000;
  }
  FUN_00aef12b();
  return;
}

