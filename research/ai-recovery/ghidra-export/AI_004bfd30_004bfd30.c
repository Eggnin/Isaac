/* Local J460 decompiler output.
 * VA: 0x004bfd30
 * Entry: 004bfd30
 * Dispatcher: 0x006c2990
 * Types: 407
 * Identities: 407.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004c1c02; instructions=1846
 */

/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=407; identities=407.0.0; dispatcher=0x006c2990;
   end=0x004c1c02; instructions=1846 */

void __fastcall AI_004bfd30(int param_1)

{
  code *pcVar1;
  undefined *puVar2;
  char cVar3;
  uint uVar4;
  byte **ppbVar5;
  byte **ppbVar6;
  uint uVar7;
  int iVar8;
  byte *pbVar9;
  int *piVar10;
  uint **ppuVar11;
  undefined4 uVar12;
  byte bVar13;
  byte bVar15;
  char *pcVar16;
  byte *pbVar17;
  uint **ppuVar18;
  int iVar19;
  undefined4 *puVar20;
  uint **ppuVar21;
  uint *puVar22;
  uint uVar23;
  float *pfVar24;
  undefined8 *puVar25;
  bool bVar26;
  float fVar27;
  float fVar28;
  int *piVar29;
  undefined4 *puVar30;
  undefined auVar31 [16];
  float fVar32;
  float fVar33;
  float fVar34;
  uint **ppuVar35;
  undefined8 uVar36;
  double dVar37;
  undefined4 uVar38;
  TypeDescriptor *pTVar39;
  undefined4 local_2b80;
  undefined4 uStack_2b7c;
  undefined4 uStack_2b78;
  undefined4 uStack_2b74;
  undefined4 local_2b54;
  undefined4 uStack_2b50;
  undefined4 uStack_2b4c;
  undefined4 uStack_2b48;
  undefined4 local_2b28;
  undefined4 uStack_2b24;
  undefined4 uStack_2b20;
  undefined4 uStack_2b1c;
  undefined local_2b0c [8];
  undefined local_2b04 [8];
  undefined local_2afc [8];
  undefined local_2af4 [8];
  undefined local_2aec [16];
  undefined local_2adc [24];
  char local_2ac4 [12];
  uint local_2ab8;
  char local_2ab4 [12];
  uint local_2aa8;
  char local_2aa4 [12];
  uint local_2a98;
  undefined local_2a94 [8];
  undefined4 local_2a8c;
  undefined4 local_2a88;
  undefined4 local_2a84;
  undefined4 local_2a80;
  uint **local_2a7c;
  uint *local_2a78;
  uint **local_2a74;
  uint *local_2a70;
  undefined4 local_2a6c;
  undefined4 local_2a68;
  char local_2a64 [12];
  uint local_2a58;
  undefined4 local_2a54;
  undefined4 local_2a50;
  undefined4 local_2a4c;
  undefined4 local_2a48;
  undefined4 local_2a44;
  undefined4 local_2a40;
  float local_2a3c;
  float local_2a38;
  undefined4 local_2a34;
  undefined4 local_2a30;
  float local_2a2c [2];
  undefined4 *local_2a24;
  uint local_2a20;
  undefined4 local_2a1c;
  undefined4 local_2a18;
  undefined4 local_2a14;
  undefined4 local_2a10;
  undefined4 local_2a0c;
  undefined4 local_2a08;
  undefined4 local_2a04;
  undefined4 local_2a00;
  float local_29fc;
  float local_29f8;
  undefined4 local_29f4;
  undefined4 local_29f0;
  float local_29ec;
  float local_29e8;
  undefined4 local_29e4;
  undefined4 local_29e0;
  undefined4 local_29dc;
  undefined4 local_29d8;
  undefined4 local_29d4;
  float local_29d0;
  float local_29cc;
  float local_29c8;
  float local_29c4;
  float local_29c0;
  float local_29bc;
  float local_29b8;
  undefined4 local_29b4;
  undefined4 local_29b0;
  undefined4 local_29ac;
  undefined4 local_29a8;
  undefined4 local_29a4;
  undefined4 local_29a0;
  undefined4 local_299c;
  undefined4 local_2998;
  undefined4 local_2994;
  undefined4 local_2990;
  undefined4 local_298c;
  undefined4 local_2988;
  undefined4 local_2984;
  undefined4 local_2980;
  undefined4 local_297c;
  undefined4 local_2978;
  char local_2974 [4];
  int local_2970;
  int local_2968;
  float local_2964;
  char local_2960 [4];
  int local_295c;
  uint local_2954;
  char local_2950 [4];
  int local_294c;
  uint local_2944;
  float local_2940;
  undefined4 *local_293c;
  float local_2938;
  float local_2934;
  float local_2930;
  float local_292c;
  uint **local_2928;
  uint **local_2924;
  uint **local_2920;
  uint *local_291c;
  int *local_2918;
  undefined4 *local_2914;
  undefined4 *local_2910;
  uint *local_290c;
  uint **local_2908;
  int *local_2904;
  uint *local_2900;
  uint **local_28fc;
  uint *local_28f8;
  uint *local_28f4;
  int local_28f0;
  uint *local_28ec;
  uint **local_28e8;
  uint **local_28e4;
  uint **local_28e0;
  uint **local_28dc;
  int local_28d8;
  undefined4 *local_28d4;
  undefined4 *local_28d0;
  int *local_28cc;
  char local_28c5;
  uint **local_28c4;
  undefined local_28c0 [4];
  float local_28bc;
  undefined4 local_28b8;
  undefined4 local_28b4;
  undefined4 local_28ac;
  undefined4 local_2868;
  undefined4 local_2864;
  undefined4 local_2830;
  undefined local_2818 [8];
  undefined4 local_2810;
  undefined4 local_280c;
  undefined4 local_2804;
  undefined4 local_27c0;
  undefined4 local_27bc;
  undefined4 local_27b8;
  undefined4 local_27b4;
  uint local_279c;
  undefined4 local_2788;
  undefined local_2770 [12];
  undefined4 local_2764;
  undefined4 local_275c;
  undefined4 local_2750;
  undefined4 local_274c;
  uint local_2718;
  uint local_2714;
  float local_2710;
  float local_270c;
  int local_26f4;
  uint local_26f0;
  uint local_26ec;
  uint *local_26e4;
  undefined4 local_26e0;
  undefined4 local_26dc;
  undefined local_26c8 [4];
  undefined4 local_26c4;
  undefined4 local_26c0;
  undefined4 local_26bc;
  undefined4 local_26b8;
  undefined4 local_26b4;
  undefined4 local_26b0;
  undefined4 local_26ac;
  undefined4 local_26a8;
  undefined4 local_26a4;
  undefined4 local_26a0;
  undefined4 local_269c;
  undefined4 uStack_2698;
  undefined4 uStack_2694;
  undefined4 uStack_2690;
  undefined4 local_268c;
  undefined4 uStack_2688;
  undefined4 uStack_2684;
  undefined4 uStack_2680;
  undefined8 local_267c;
  undefined4 local_2674;
  undefined4 local_2670;
  undefined4 local_266c;
  float local_2668;
  float local_2664;
  float local_2660;
  float local_265c;
  undefined4 local_2658;
  undefined4 local_2654;
  undefined4 local_2650;
  undefined4 local_264c;
  undefined4 local_2648;
  undefined4 local_2644;
  undefined4 local_2640;
  undefined4 local_263c;
  undefined4 local_2638;
  undefined4 local_2634;
  undefined local_2630;
  undefined4 local_262c;
  undefined4 local_2628;
  undefined local_2624;
  uint *local_2620 [12];
  uint *apuStack_25f0 [13];
  undefined8 uStack_25bc;
  uint auStack_25b0 [20];
  int local_2560 [2352];
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  uint *local_7c;
  undefined4 local_78;
  undefined4 local_74;
  uint *local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64 [4];
  undefined4 local_54;
  undefined4 local_50;
  int *piStack_4c;
  uint local_48;
  undefined8 uStack_44;
  uint **ppuStack_3c;
  undefined8 local_38;
  undefined4 *local_30;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  byte bVar14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3638;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_28f0 = param_1;
  local_24 = uVar4;
  if (*(int *)(param_1 + 0xb64) == 0) {
    fVar28 = *(float *)(param_1 + 0x340);
    if (*(float *)(param_1 + 0x340) <= DAT_00baaaec) {
      fVar28 = DAT_00baaaec;
    }
    *(float *)(param_1 + 0x340) = fVar28;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(undefined4 *)(param_1 + 0x410) = 0;
    *(undefined4 *)(param_1 + 0xbc0) = 3;
    *(undefined4 *)(param_1 + 0xb64) = 2;
    ppbVar6 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar6 == (byte **)0x0) {
LAB_004bfe2e:
      puStack_20 = &stack0xfffffffc;
      cVar3 = FUN_0040a5d0("Appear",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar5 = ppbVar6;
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar5 = (byte **)*ppbVar6;
      }
      pcVar16 = "Appear";
      do {
        bVar15 = *(byte *)ppbVar5;
        bVar26 = bVar15 < (byte)*pcVar16;
        if (bVar15 != *pcVar16) {
LAB_004bfe10:
          uVar4 = -(uint)bVar26 | 1;
          goto LAB_004bfe15;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar5 + 1);
        bVar26 = bVar15 < ((byte *)pcVar16)[1];
        if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004bfe10;
        ppbVar5 = (byte **)((int)ppbVar5 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004bfe15:
      if ((uVar4 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar6 + 0xd) != 0 &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')))) goto LAB_004bfe2e;
    }
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    *(undefined4 *)(param_1 + 0x188) = 3;
    *(undefined4 *)(param_1 + 0x35c) = 0;
    *(undefined *)(param_1 + 0x3b0) = 1;
    *(undefined4 *)(param_1 + 0x354) = 8000;
    local_28c4 = (uint **)0x1a7;
    FUN_00956780();
    FUN_0092dc30(local_28c4,0x3f800000,2,0,0x3f800000,0);
    goto LAB_004c5814;
  }
  puVar2 = &stack0xfffffffc;
  if (*(int *)(param_1 + 0xb64) == 2) {
    ppbVar6 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar6 == (byte **)0x0) {
LAB_004bff2d:
      cVar3 = FUN_0040a5d0("Appear",1);
      puVar2 = puStack_20;
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
        puVar2 = puStack_20;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar6 = (byte **)*ppbVar6;
      }
      pcVar16 = "Appear";
      do {
        bVar15 = *(byte *)ppbVar6;
        bVar26 = bVar15 < (byte)*pcVar16;
        if (bVar15 != *pcVar16) {
LAB_004bff15:
          uVar7 = -(uint)bVar26 | 1;
          goto LAB_004bff1a;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar6 + 1);
        bVar26 = bVar15 < ((byte *)pcVar16)[1];
        if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004bff15;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar15 != 0);
      uVar7 = 0;
LAB_004bff1a:
      if ((uVar7 != 0) ||
         ((puVar2 = &stack0xfffffffc, *(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' &&
          (puVar2 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')))) goto LAB_004bff2d;
    }
    puStack_20 = puVar2;
    local_28cc = *(int **)(*(int *)(DAT_00c71678 + 0x18300) + 0x11f8);
    if (*(byte *)(local_28cc + 0x23) == 0) {
      FUN_00945130();
      *(byte *)(local_28cc + 0x23) = 1;
    }
    puVar2 = puStack_20;
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
      ppbVar6 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar6 != (byte **)0x0) {
        if (&DAT_0000000f < ppbVar6[5]) {
          ppbVar6 = (byte **)*ppbVar6;
        }
        pbVar17 = &DAT_00b1bc54;
        do {
          bVar15 = *(byte *)ppbVar6;
          bVar26 = bVar15 < *pbVar17;
          if (bVar15 != *pbVar17) {
LAB_004bffe0:
            uVar7 = -(uint)bVar26 | 1;
            goto LAB_004bffe5;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar6 + 1);
          bVar26 = bVar15 < pbVar17[1];
          if (bVar15 != pbVar17[1]) goto LAB_004bffe0;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pbVar17 = pbVar17 + 2;
        } while (bVar15 != 0);
        uVar7 = 0;
LAB_004bffe5:
        if ((uVar7 == 0) &&
           ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0' ||
            (*(char *)(param_1 + 0x8c) != '\0')))) goto LAB_004c0016;
      }
      cVar3 = FUN_0040a5d0(&DAT_00b1bc54,1);
      puVar2 = puStack_20;
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
        puVar2 = puStack_20;
      }
    }
  }
LAB_004c0016:
  puStack_20 = puVar2;
  if (*(char *)(param_1 + 0x173) != '\0') {
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    FUN_006ae630(uVar4);
    FUN_00703670();
    iVar8 = FUN_006eef60();
    local_28c4 = (uint **)0x1a7;
    local_28cc = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4);
    FUN_00956780();
    FUN_0092dc30(local_28c4,0x3f800000,0x3c,0,local_28cc,0);
    iVar8 = FUN_006eef60();
    local_28c4 = (uint **)0x1a5;
    local_28cc = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4);
    FUN_00956780();
    FUN_0092dc30(local_28c4,0x3f800000,0x3c,0,local_28cc,0);
    iVar8 = FUN_006eef60();
    local_28c4 = (uint **)0x1a6;
    local_28cc = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4);
    FUN_00956780();
    FUN_0092dc30(local_28c4,0x3f800000,0x3c,0,local_28cc,0);
    cVar3 = (*(uint *)(param_1 + 0x16c) & 0x10000000) != 0;
    local_28ec = (uint *)0x0;
    local_28cc = *(int **)(DAT_00c71678 + 0x18300);
    local_28c5 = cVar3;
    if (local_28cc[0x499] != 0) {
      do {
        ppuVar18 = *(uint ***)(local_28cc[0x497] + (int)local_28ec * 4);
        local_28c4 = ppuVar18;
        if ((cVar3 == '\0') ||
           ((((uint)ppuVar18[0x5b] & 0x10000000) != 0 && (ppuVar18[10] != (uint *)0x12a)))) {
          cVar3 = FUN_006a8f20();
          if (cVar3 != '\0') {
            pcVar1 = (code *)(*ppuVar18)[9];
            FUN_00431310();
            (*pcVar1)();
            ppuVar18 = local_28c4;
          }
          cVar3 = local_28c5;
          if (ppuVar18[10] == (uint *)0x9) {
            *(undefined *)((int)ppuVar18 + 0x173) = 1;
          }
        }
        local_28ec = (uint *)((int)local_28ec + 1);
      } while (local_28ec < (uint *)local_28cc[0x499]);
    }
  }
  AI_0041af60(local_2a64,0x129,0xffffffff,0xffffffff,0,0);
  local_14 = 0;
  AI_0041af60(local_2ac4,0x12a,0xffffffff,0xffffffff,0,0);
  local_14._0_1_ = 1;
  FUN_0041a790(local_2974,(float *)(param_1 + 0x33c),0xffffffff);
  local_14._0_1_ = 2;
  AI_0041af60(local_2960,1000,0x60,0xffffffff,0,0);
  local_14._0_1_ = 3;
  AI_0041af60(local_2950,1000,0x65,0xffffffff,0,0);
  local_14 = CONCAT31(local_14._1_3_,4);
  fVar28 = *(float *)(param_1 + 0x33c);
  local_28e8 = (uint **)(fVar28 - DAT_00baaa00);
  local_2904 = (int *)(fVar28 + _DAT_00baaa28);
  local_28f4 = (uint *)(*(float *)(param_1 + 0x340) - _DAT_00baaa3c);
  local_28cc = (int *)(*(float *)(param_1 + 0x340) + _DAT_00baa978);
  AI_0041af60(&local_48,9,0xffffffff,0xffffffff,0,0);
  fVar28 = DAT_00baa87c;
  ppuVar18 = (uint **)0x0;
  if (ppuStack_3c != (uint **)0x0) {
    do {
      iVar8 = *(int *)((int)uStack_44 + (int)ppuVar18 * 4);
      fVar27 = 0.0;
      fVar33 = *(float *)(iVar8 + 0x340);
      if (fVar33 < *(float *)(param_1 + 0x340)) {
        fVar34 = *(float *)(iVar8 + 0x33c) + *(float *)(iVar8 + 0x34c);
        fVar32 = fVar33 + *(float *)(iVar8 + 0x350);
        if (((((float)local_28e8 <= fVar34) && (fVar34 <= (float)local_2904)) &&
            ((float)local_28f4 <= fVar32)) && (fVar32 <= (float)local_28cc)) {
          fVar27 = (*(float *)(param_1 + 0x340) - fVar33) + fVar28;
        }
      }
      ppuVar18 = (uint **)((int)ppuVar18 + 1);
      *(float *)(iVar8 + 0x358) = fVar27;
    } while (ppuVar18 < ppuStack_3c);
  }
  if ((char)local_48 == '\0') {
    local_38 = 0;
    if (DAT_00c7de78 == 0) {
      puVar22 = &DAT_00c7f618;
    }
    else {
      puVar22 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if ((int)uStack_44 != 0) {
      uVar7 = *(uint *)((int)uStack_44 + -4);
      uVar4 = *puVar22;
      *puVar22 = *puVar22 - uVar7;
      puVar22[1] = puVar22[1] - (uint)(uVar4 < uVar7);
      free((void *)((int)uStack_44 + -4));
    }
    local_14 = CONCAT31(local_14._1_3_,4);
  }
  iVar8 = local_295c;
  if ((*(int *)(param_1 + 0xb64) != 400) || (*(char *)(param_1 + 0x173) != '\0')) {
    uVar4 = 0;
    if (local_2954 != 0) {
      do {
        local_2a8c = 0;
        local_2a88 = 0;
        local_2a84 = 0;
        local_2a80 = 0;
        local_2a7c = DAT_00c7b640;
        local_2a78 = DAT_00c7b644;
        local_2a74 = DAT_00c7b640;
        local_2a70 = DAT_00c7b644;
        local_2a6c = 0;
        local_2a68 = 0;
        (**(code **)(**(int **)(iVar8 + uVar4 * 4) + 0x24))();
        uVar4 = uVar4 + 1;
        param_1 = local_28f0;
      } while (uVar4 < local_2954);
    }
    if (*(char *)(param_1 + 0x173) == '\0') goto LAB_004c05dd;
    goto LAB_004c5765;
  }
LAB_004c05dd:
  iVar8 = *(int *)(param_1 + 0xb64);
  if (((iVar8 == 0x10) || (iVar8 == 700)) || ((iVar8 == 0x2c6 || (iVar8 == 0x2d0)))) {
    *(undefined4 *)(param_1 + 0x35c) = 0;
    *(undefined *)(param_1 + 0x3b0) = 1;
    *(undefined4 *)(param_1 + 0x354) = 8000;
  }
  else if (iVar8 != 2) {
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
      ppbVar6 = *(byte ***)(param_1 + 0x7c);
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar6 = (byte **)*ppbVar6;
      }
      pcVar16 = "BecomeConvex";
      do {
        bVar15 = *(byte *)ppbVar6;
        bVar26 = bVar15 < (byte)*pcVar16;
        if (bVar15 != *pcVar16) {
LAB_004c0650:
          uVar4 = -(uint)bVar26 | 1;
          goto LAB_004c0655;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar6 + 1);
        bVar26 = bVar15 < ((byte *)pcVar16)[1];
        if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c0650;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004c0655:
      if (uVar4 == 0) goto LAB_004c0691;
    }
    *(undefined4 *)(param_1 + 0x35c) = 2;
    *(undefined *)(param_1 + 0x3b0) = 0;
    *(undefined4 *)(param_1 + 0x354) = 0;
  }
LAB_004c0691:
  if (*(int *)(param_1 + 0x7c) != 0) {
    cVar3 = FUN_0040add0();
    if (cVar3 != '\0') {
      *(undefined4 *)(param_1 + 0x188) = 4;
      *(undefined4 *)(param_1 + 0x35c) = 2;
      *(undefined *)(param_1 + 0x3b0) = 0;
      *(undefined4 *)(param_1 + 0x354) = 0;
      local_28c4 = (uint **)0x13a;
      FUN_00956780();
      FUN_0092dc30(local_28c4,0x3f800000,2,0,0x3f800000,0);
      FUN_00703670();
      local_28ec = (uint *)0x0;
      if (0 < local_2968) {
        do {
          piVar10 = *(int **)(local_2970 + (int)local_28ec * 4);
          local_28c4 = (uint **)((float)piVar10[0xcf] - *(float *)(param_1 + 0x33c));
          local_28e0 = (uint **)((float)piVar10[0xd0] - *(float *)(param_1 + 0x340));
          fVar28 = (float)local_28c4 * (float)local_28c4 + (float)local_28e0 * (float)local_28e0;
          local_28cc = piVar10;
          FUN_00435a50();
          ppuVar35 = local_28e0;
          ppuVar18 = local_28c4;
          if (0.0 < fVar28) {
            ppuVar18 = (uint **)((float)local_28c4 * (DAT_00baa454 / fVar28));
            ppuVar35 = (uint **)((float)local_28e0 * (DAT_00baa454 / fVar28));
          }
          iVar8 = piVar10[10];
          if (iVar8 == 0x12a) {
            pcVar1 = *(code **)(*piVar10 + 0x24);
            FUN_00431310();
            (*pcVar1)();
            cVar3 = FUN_00417430(0,0x10000000);
            if (cVar3 == '\0') {
              fVar28 = *(float *)(*(int *)(local_2970 + (int)local_28ec * 4) + 900);
              local_2964 = fVar28 + fVar28 + *(float *)(param_1 + 0x380);
              pfVar24 = &local_2964;
              if (*(float *)(param_1 + 900) <= local_2964) {
                pfVar24 = (float *)(param_1 + 900);
              }
              *(float *)(param_1 + 0x380) = *pfVar24;
            }
          }
          else {
            fVar28 = DAT_00baa87c;
            if ((iVar8 == 1) || (fVar28 = DAT_00baa6fc, iVar8 == 0x129)) {
              fVar33 = (float)piVar10[0xdb];
              if (NAN(fVar33) == (fVar33 == 0.0)) {
                piVar10[0xd8] =
                     (int)(((float)ppuVar18 * fVar28 * (float)piVar10[0xe7]) / fVar33 +
                          (float)piVar10[0xd8]);
                piVar10[0xd9] =
                     (int)(((float)ppuVar35 * fVar28 * (float)piVar10[0xe7]) / fVar33 +
                          (float)piVar10[0xd9]);
              }
            }
          }
          local_28ec = (uint *)((int)local_28ec + 1);
        } while ((int)local_28ec < local_2968);
      }
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0(), cVar3 != '\0')) {
      local_28c4 = (uint **)0x13a;
      FUN_00956780();
      FUN_0092dc30(local_28c4,0x3f800000,2,0,0x3f800000,0);
      FUN_00703670();
    }
  }
  iVar8 = FUN_00703950();
  local_28c4 = *(uint ***)(param_1 + 0x39c);
  fVar28 = *(float *)(param_1 + 0x33c) - *(float *)(iVar8 + 0x33c);
  fVar33 = *(float *)(param_1 + 0x340) - *(float *)(iVar8 + 0x340);
  fVar33 = fVar28 * fVar28 + fVar33 * fVar33;
  FUN_00435a50();
  fVar28 = DAT_00baa454;
  if (fVar33 <= DAT_00baab54) {
    fVar33 = DAT_00baa44c;
    if ((NAN((float)local_28c4) || NAN(DAT_00baa454)) == ((float)local_28c4 == DAT_00baa454)) {
      fVar33 = DAT_00baa44c /
               (((float)local_28c4 + DAT_00baa44c) - (float)local_28c4 * DAT_00baa44c);
    }
    *(float *)(param_1 + 0xbb0) = fVar33 * *(float *)(param_1 + 0xbb0);
  }
  else {
    *(float *)(param_1 + 0xbb0) = (float)local_28c4 / DAT_00baa8d0 + *(float *)(param_1 + 0xbb0);
  }
  local_28e0 = (uint **)(*(float *)(param_1 + 0x380) / *(float *)(param_1 + 900));
  fVar33 = *(float *)(param_1 + 0xbb4);
  if ((DAT_00baa3a4 - fVar33 * DAT_00baa198 < (float)local_28e0) || (DAT_00baa75c <= fVar33)) {
    local_28ec = (uint *)(int)fVar33;
  }
  else {
    local_28ec = (uint *)(int)(fVar33 + fVar28);
    *(float *)(param_1 + 0xbb4) = fVar33 + fVar28;
    *(undefined4 *)(param_1 + 0xb64) = 0x10;
    ppbVar6 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar6 == (byte **)0x0) {
LAB_004c0ad2:
      cVar3 = FUN_0040a5d0("TurnConcave",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar5 = ppbVar6;
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar5 = (byte **)*ppbVar6;
      }
      pcVar16 = "TurnConcave";
      do {
        bVar15 = *(byte *)ppbVar5;
        bVar26 = bVar15 < (byte)*pcVar16;
        if (bVar15 != *pcVar16) {
LAB_004c0ab4:
          uVar4 = -(uint)bVar26 | 1;
          goto LAB_004c0ab9;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar5 + 1);
        bVar26 = bVar15 < ((byte *)pcVar16)[1];
        if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c0ab4;
        ppbVar5 = (byte **)((int)ppbVar5 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004c0ab9:
      if ((uVar4 != 0) || ((*(byte *)(ppbVar6 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_004c0ad2;
    }
    local_28c4 = (uint **)0x1a6;
    FUN_00956780();
    FUN_0092dc30(local_28c4,0x3f800000,2,0,0x3f800000,0);
    *(undefined4 *)(param_1 + 0x410) = 0;
  }
  fVar28 = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = fVar28;
  fVar28 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) + fVar28 * fVar28;
  local_2900 = local_28ec;
  FUN_00435a50();
  if ((DAT_00baa630 < fVar28) && (0.0 < fVar28)) {
    fVar28 = DAT_00baa630 / fVar28;
    *(float *)(param_1 + 0x360) = fVar28 * *(float *)(param_1 + 0x360);
    *(float *)(param_1 + 0x364) = fVar28 * *(float *)(param_1 + 0x364);
  }
  fVar28 = DAT_00baa630;
  iVar8 = *(int *)(param_1 + 0xb64);
  if (iVar8 == 3) {
    if (0 < *(int *)(param_1 + 0x410)) {
      iVar19 = ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
               *(int *)(param_1 + 0x410);
      iVar8 = 0;
      if (0 < iVar19) {
        iVar8 = iVar19;
      }
      *(int *)(param_1 + 0x410) = iVar8;
    }
    pbVar17 = PTR_s_FaceAppearDown_00b60168;
    puVar30 = *(undefined4 **)(param_1 + 0x7c);
    if (puVar30 == (undefined4 *)0x0) {
      puVar20 = (undefined4 *)&DAT_00b1a4ec;
    }
    else {
      puVar20 = puVar30;
      if (&DAT_0000000f < (undefined *)puVar30[5]) {
        puVar20 = (undefined4 *)*puVar30;
      }
    }
    pbVar9 = (&PTR_s_FaceVanishFromLeft_00b6013c)[*(int *)(param_1 + 0xbc0)];
    do {
      bVar15 = *(byte *)puVar20;
      bVar26 = bVar15 < *pbVar9;
      if (bVar15 != *pbVar9) {
LAB_004c0c70:
        uVar4 = -(uint)bVar26 | 1;
        goto LAB_004c0c75;
      }
      if (bVar15 == 0) break;
      bVar15 = *(byte *)((int)puVar20 + 1);
      bVar26 = bVar15 < pbVar9[1];
      if (bVar15 != pbVar9[1]) goto LAB_004c0c70;
      puVar20 = (undefined4 *)((int)puVar20 + 2);
      pbVar9 = pbVar9 + 2;
    } while (bVar15 != 0);
    uVar4 = 0;
LAB_004c0c75:
    if (uVar4 == 0) {
      if ((puVar30 != (undefined4 *)0x0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_004c0f2f;
      *(undefined4 *)(param_1 + 0xbc0) = 3;
      ppbVar6 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar6 == (byte **)0x0) {
        uVar36 = CONCAT44(1,pbVar17);
      }
      else {
        ppbVar5 = ppbVar6;
        if (&DAT_0000000f < ppbVar6[5]) {
          ppbVar5 = (byte **)*ppbVar6;
        }
        do {
          bVar15 = *(byte *)ppbVar5;
          bVar26 = bVar15 < *pbVar17;
          if (bVar15 != *pbVar17) {
LAB_004c0cd0:
            uVar4 = -(uint)bVar26 | 1;
            goto LAB_004c0cd5;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar5 + 1);
          bVar26 = bVar15 < pbVar17[1];
          if (bVar15 != pbVar17[1]) goto LAB_004c0cd0;
          ppbVar5 = (byte **)((int)ppbVar5 + 2);
          pbVar17 = pbVar17 + 2;
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004c0cd5:
        if (uVar4 == 0) {
          if ((*(byte *)(ppbVar6 + 0xd) == 0) || (*(char *)(param_1 + 0x8c) != '\0'))
          goto LAB_004c0f2f;
          uVar36 = CONCAT44(1,PTR_s_FaceAppearDown_00b60168);
        }
        else {
          uVar36 = CONCAT44(1,PTR_s_FaceAppearDown_00b60168);
        }
      }
LAB_004c0f18:
      cVar3 = FUN_0040a5d0(uVar36);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      if ((puVar30 == (undefined4 *)0x0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        if (local_2900 == (uint *)0x1) {
          local_28cc = *(int **)(param_1 + 0x338);
          iVar8 = FUN_00812d00();
          if ((float)local_28cc < *(float *)(iVar8 + 4)) {
            ppbVar6 = *(byte ***)(param_1 + 0x7c);
            if (ppbVar6 != (byte **)0x0) {
              ppbVar5 = ppbVar6;
              if (&DAT_0000000f < ppbVar6[5]) {
                ppbVar5 = (byte **)*ppbVar6;
              }
              pcVar16 = "Moving";
              do {
                bVar15 = *(byte *)ppbVar5;
                bVar26 = bVar15 < (byte)*pcVar16;
                if (bVar15 != *pcVar16) {
LAB_004c0e87:
                  uVar4 = -(uint)bVar26 | 1;
                  goto LAB_004c0e8c;
                }
                if (bVar15 == 0) break;
                bVar15 = *(byte *)((int)ppbVar5 + 1);
                bVar26 = bVar15 < ((byte *)pcVar16)[1];
                if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c0e87;
                ppbVar5 = (byte **)((int)ppbVar5 + 2);
                pcVar16 = (char *)((byte *)pcVar16 + 2);
              } while (bVar15 != 0);
              uVar4 = 0;
LAB_004c0e8c:
              if (uVar4 == 0) {
                if ((*(byte *)(ppbVar6 + 0xd) != 0) && (*(char *)(param_1 + 0x8c) == '\0')) {
                  uVar36 = 0x100b600b0;
                  goto LAB_004c0f18;
                }
                goto LAB_004c0f2f;
              }
            }
            uVar36 = 0x100b600b0;
            goto LAB_004c0f18;
          }
        }
        ppbVar6 = *(byte ***)(param_1 + 0x7c);
        if (ppbVar6 != (byte **)0x0) {
          ppbVar5 = ppbVar6;
          if (&DAT_0000000f < ppbVar6[5]) {
            ppbVar5 = (byte **)*ppbVar6;
          }
          pcVar16 = "Wiggle";
          do {
            bVar15 = *(byte *)ppbVar5;
            bVar26 = bVar15 < (byte)*pcVar16;
            if (bVar15 != *pcVar16) goto LAB_004c0ef3;
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar5 + 1);
            bVar26 = bVar15 < ((byte *)pcVar16)[1];
            if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c0ef3;
            ppbVar5 = (byte **)((int)ppbVar5 + 2);
            pcVar16 = (char *)((byte *)pcVar16 + 2);
          } while (bVar15 != 0);
LAB_004c0eef:
          uVar4 = 0;
          goto LAB_004c0ef8;
        }
LAB_004c0f11:
        uVar36 = 0x100b600b8;
        goto LAB_004c0f18;
      }
      puVar30 = *(undefined4 **)(param_1 + 0x7c);
      if (puVar30 == (undefined4 *)0x0) {
        puVar30 = (undefined4 *)&DAT_00b1a4ec;
      }
      else if (&DAT_0000000f < (undefined *)puVar30[5]) {
        puVar30 = (undefined4 *)*puVar30;
      }
      pcVar16 = "Moving";
      do {
        bVar15 = *(byte *)puVar30;
        bVar26 = bVar15 < (byte)*pcVar16;
        if (bVar15 != *pcVar16) {
LAB_004c0d70:
          uVar4 = -(uint)bVar26 | 1;
          goto LAB_004c0d75;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)puVar30 + 1);
        bVar26 = bVar15 < ((byte *)pcVar16)[1];
        if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c0d70;
        puVar30 = (undefined4 *)((int)puVar30 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004c0d75:
      if (uVar4 == 0) {
        local_28cc = (int *)(*(float *)(param_1 + 0x338) + fVar28);
        *(int **)(param_1 + 0x338) = local_28cc;
        iVar8 = FUN_00812d00();
        if (*(float *)(iVar8 + 4) <= (float)local_28cc) {
          ppbVar6 = *(byte ***)(param_1 + 0x7c);
          if (ppbVar6 != (byte **)0x0) {
            ppbVar5 = ppbVar6;
            if (&DAT_0000000f < ppbVar6[5]) {
              ppbVar5 = (byte **)*ppbVar6;
            }
            pcVar16 = "Wiggle";
            do {
              bVar15 = *(byte *)ppbVar5;
              bVar26 = bVar15 < (byte)*pcVar16;
              if (bVar15 != *pcVar16) goto LAB_004c0ef3;
              if (bVar15 == 0) goto LAB_004c0eef;
              bVar15 = *(byte *)((int)ppbVar5 + 1);
              bVar26 = bVar15 < ((byte *)pcVar16)[1];
              if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c0ef3;
              ppbVar5 = (byte **)((int)ppbVar5 + 2);
              pcVar16 = (char *)((byte *)pcVar16 + 2);
            } while (bVar15 != 0);
            uVar4 = 0;
            goto LAB_004c0ef8;
          }
          goto LAB_004c0f11;
        }
      }
    }
LAB_004c0f2f:
    if ((((*(int *)(param_1 + 0x410) < 1) || ((float)local_28e0 < DAT_00baa054)) &&
        (*(int *)(param_1 + 0x7c) != 0)) && (*(char *)(param_1 + 0x8c) != '\0')) {
      ppbVar6 = *(byte ***)(param_1 + 0x7c);
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar6 = (byte **)*ppbVar6;
      }
      pcVar16 = "Wiggle";
      do {
        bVar15 = *(byte *)ppbVar6;
        bVar26 = bVar15 < (byte)*pcVar16;
        if (bVar15 != *pcVar16) {
LAB_004c0f94:
          uVar4 = -(uint)bVar26 | 1;
          goto LAB_004c0f99;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar6 + 1);
        bVar26 = bVar15 < ((byte *)pcVar16)[1];
        if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c0f94;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004c0f99:
      if (uVar4 == 0) {
        local_28cc = *(int **)(param_1 + 0x88);
        dVar37 = floor((double)(float)local_28cc);
        local_28cc = (int *)(float)dVar37;
        if (((int)dVar37 == 0) &&
           ((uVar4 = FUN_006eef60(), (uVar4 & 1) == 0 || ((float)local_28e0 < DAT_00baa054)))) {
          local_28d8 = 0;
          local_28d4 = (undefined4 *)0x0;
          local_28d0 = (undefined4 *)0x0;
          local_14 = CONCAT31(local_14._1_3_,6);
          local_28f0 = *(int *)(param_1 + 0xbc4);
          local_28c5 = (*(uint *)(param_1 + 0x16c) & 0x10000000) != 0;
          if (local_28ec < (uint *)0x3) {
            if (((local_28f0 == 600) || (local_28f0 == 0x2c6)) || (local_28f0 == 0x2d0)) {
              local_2984 = 600;
              puVar30 = &local_2984;
              local_2980 = 0x19;
            }
            else {
              local_297c = 600;
              puVar30 = &local_297c;
              local_2978 = 200;
            }
            FUN_004a11c0(0,puVar30);
          }
          if (((byte *)((int)local_2900 + -1) < (byte *)0x3) && (local_28c5 == '\0')) {
            uVar4 = 0;
            uVar7 = (int)local_28d4 - local_28d8 >> 3;
            if (local_28f0 == 100) {
              if (uVar7 != 0) {
LAB_004c10e6:
                if (*(int *)(local_28d8 + uVar4 * 8) != 100) goto code_r0x004c10ec;
                piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                *piVar10 = *piVar10 + 0x32;
LAB_004c1133:
                if (*(int *)(local_28d8 + 4 + uVar4 * 8) < 0) {
                  *(undefined4 *)(local_28d8 + 4 + uVar4 * 8) = 0;
                }
                goto LAB_004c11d6;
              }
LAB_004c10f1:
              local_298c = 100;
              local_2988 = 0x32;
              if (local_28d4 == local_28d0) {
                puVar30 = &local_298c;
LAB_004c11bd:
                FUN_004a11c0(local_28d4,puVar30);
              }
              else {
                *local_28d4 = 100;
                local_28d4[1] = 0x32;
                local_28d4 = local_28d4 + 2;
              }
            }
            else {
              if (uVar7 != 0) {
                do {
                  if (*(int *)(local_28d8 + uVar4 * 8) == 100) {
                    piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                    *piVar10 = *piVar10 + 200;
                    goto LAB_004c1133;
                  }
                  uVar4 = uVar4 + 1;
                } while (uVar4 < uVar7);
              }
              local_2994 = 100;
              local_2990 = 200;
              if (local_28d4 == local_28d0) {
                puVar30 = &local_2994;
                goto LAB_004c11bd;
              }
              *local_28d4 = 100;
              local_28d4[1] = 200;
              local_28d4 = local_28d4 + 2;
            }
          }
LAB_004c11d6:
          if (1 < (int)local_2900) {
            if (local_28f0 == 300) {
LAB_004c12a6:
              if ((local_28f0 == 0x2d0) || (2 < local_2a58)) goto LAB_004c12b6;
            }
            else {
              uVar4 = 0;
              uVar7 = (int)local_28d4 - local_28d8 >> 3;
              if (uVar7 != 0) {
                do {
                  if (*(int *)(local_28d8 + uVar4 * 8) == 300) {
                    piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                    *piVar10 = *piVar10 + 200;
                    if (*(int *)(local_28d8 + 4 + uVar4 * 8) < 0) {
                      *(undefined4 *)(local_28d8 + 4 + uVar4 * 8) = 0;
                    }
                    goto LAB_004c128d;
                  }
                  uVar4 = uVar4 + 1;
                } while (uVar4 < uVar7);
              }
              local_299c = 300;
              local_2998 = 200;
              if (local_28d4 == local_28d0) {
                FUN_004a11c0(local_28d4,&local_299c);
              }
              else {
                *local_28d4 = 300;
                local_28d4[1] = 200;
                local_28d4 = local_28d4 + 2;
              }
LAB_004c128d:
              if (((local_28f0 != 0xd) && (local_28f0 != 700)) && (local_28f0 != 0x2c6))
              goto LAB_004c12a6;
LAB_004c12b6:
              if (local_28c5 == '\0') goto LAB_004c137c;
            }
            if (((*(uint *)(param_1 + 0x16c) & 0x10000000) == 0) || (local_2a58 == 0)) {
              uVar4 = 0;
              uVar7 = (int)local_28d4 - local_28d8 >> 3;
              if (uVar7 != 0) {
                do {
                  if (*(int *)(local_28d8 + uVar4 * 8) == 0xd) {
                    piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                    *piVar10 = *piVar10 + 100;
                    if (*(int *)(local_28d8 + 4 + uVar4 * 8) < 0) {
                      *(undefined4 *)(local_28d8 + 4 + uVar4 * 8) = 0;
                    }
                    goto LAB_004c137c;
                  }
                  uVar4 = uVar4 + 1;
                } while (uVar4 < uVar7);
              }
              local_29a4 = 0xd;
              local_29a0 = 100;
              if (local_28d4 == local_28d0) {
                FUN_004a11c0(local_28d4,&local_29a4);
              }
              else {
                *local_28d4 = 0xd;
                local_28d4[1] = 100;
                local_28d4 = local_28d4 + 2;
              }
            }
          }
LAB_004c137c:
          if (2 < (int)local_2900) {
            if ((local_28f0 == 0x2c6) || (local_28f0 == 0x2d0)) {
              uVar7 = 0;
              uVar4 = (int)local_28d4 - local_28d8 >> 3;
              if (uVar4 != 0) {
                do {
                  if (*(int *)(local_28d8 + uVar7 * 8) == 0x2c6) {
                    piVar10 = (int *)(local_28d8 + 4 + uVar7 * 8);
                    *piVar10 = *piVar10 + 0x19;
                    goto LAB_004c1400;
                  }
                  uVar7 = uVar7 + 1;
                } while (uVar7 < uVar4);
              }
              local_29b4 = 0x2c6;
              local_29b0 = 0x19;
              if (local_28d4 == local_28d0) {
                puVar30 = &local_29b4;
                goto LAB_004c148d;
              }
              *local_28d4 = 0x2c6;
              local_28d4[1] = 0x19;
              local_28d4 = local_28d4 + 2;
            }
            else {
              uVar7 = 0;
              uVar4 = (int)local_28d4 - local_28d8 >> 3;
              if (uVar4 != 0) {
LAB_004c13b0:
                if (*(int *)(local_28d8 + uVar7 * 8) != 0x2c6) goto code_r0x004c13b9;
                piVar10 = (int *)(local_28d8 + 4 + uVar7 * 8);
                *piVar10 = *piVar10 + 100;
LAB_004c1400:
                if (*(int *)(local_28d8 + 4 + uVar7 * 8) < 0) {
                  *(undefined4 *)(local_28d8 + 4 + uVar7 * 8) = 0;
                }
                goto LAB_004c14a6;
              }
LAB_004c13be:
              local_29ac = 0x2c6;
              local_29a8 = 100;
              if (local_28d4 == local_28d0) {
                puVar30 = &local_29ac;
LAB_004c148d:
                FUN_004a11c0(local_28d4,puVar30);
              }
              else {
                *local_28d4 = 0x2c6;
                local_28d4[1] = 100;
                local_28d4 = local_28d4 + 2;
              }
            }
LAB_004c14a6:
            if (DAT_00baa834 < *(float *)(param_1 + 0xbb0)) {
              uVar4 = 0;
              uVar7 = (int)local_28d4 - local_28d8 >> 3;
              if (uVar7 != 0) {
                do {
                  if (*(int *)(local_28d8 + uVar4 * 8) == 0x2d0) {
                    piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                    *piVar10 = *piVar10 + 0xa2c2a;
                    if (*(int *)(local_28d8 + 4 + uVar4 * 8) < 0) {
                      *(undefined4 *)(local_28d8 + 4 + uVar4 * 8) = 0;
                    }
                    goto LAB_004c155c;
                  }
                  uVar4 = uVar4 + 1;
                } while (uVar4 < uVar7);
              }
              local_29e4 = 0x2d0;
              local_29e0 = 0xa2c2a;
              if (local_28d4 == local_28d0) {
                FUN_004a11c0(local_28d4,&local_29e4);
              }
              else {
                *local_28d4 = 0x2d0;
                local_28d4[1] = 0xa2c2a;
                local_28d4 = local_28d4 + 2;
              }
            }
LAB_004c155c:
            uVar7 = 0;
            uVar4 = (int)local_28d4 - local_28d8 >> 3;
            if (local_28f0 == 200) {
              if (uVar4 != 0) {
LAB_004c1575:
                if (*(int *)(local_28d8 + uVar7 * 8) != 200) goto code_r0x004c157e;
                piVar10 = (int *)(local_28d8 + 4 + uVar7 * 8);
                *piVar10 = *piVar10 + 0x19;
LAB_004c15c5:
                if (*(int *)(local_28d8 + 4 + uVar7 * 8) < 0) {
                  *(undefined4 *)(local_28d8 + 4 + uVar7 * 8) = 0;
                }
                goto LAB_004c1666;
              }
LAB_004c1583:
              local_2a54 = 200;
              local_2a50 = 0x19;
              if (local_28d4 == local_28d0) {
                puVar30 = &local_2a54;
LAB_004c164d:
                FUN_004a11c0(local_28d4,puVar30);
              }
              else {
                *local_28d4 = 200;
                local_28d4[1] = 0x19;
                local_28d4 = local_28d4 + 2;
              }
            }
            else {
              if (uVar4 != 0) {
                do {
                  if (*(int *)(local_28d8 + uVar7 * 8) == 200) {
                    piVar10 = (int *)(local_28d8 + 4 + uVar7 * 8);
                    *piVar10 = *piVar10 + 100;
                    goto LAB_004c15c5;
                  }
                  uVar7 = uVar7 + 1;
                } while (uVar7 < uVar4);
              }
              local_2a4c = 200;
              local_2a48 = 100;
              if (local_28d4 == local_28d0) {
                puVar30 = &local_2a4c;
                goto LAB_004c164d;
              }
              *local_28d4 = 200;
              local_28d4[1] = 100;
              local_28d4 = local_28d4 + 2;
            }
          }
LAB_004c1666:
          if ((3 < (int)local_2900) && (local_28c5 == '\0')) {
            uVar4 = 0;
            uVar7 = (int)local_28d4 - local_28d8 >> 3;
            if (local_28f0 == 400) {
              if (uVar7 != 0) {
LAB_004c16a0:
                if (*(int *)(local_28d8 + uVar4 * 8) != 400) goto code_r0x004c16a9;
                piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                *piVar10 = *piVar10 + 0x32;
LAB_004c17ea:
                if (*(int *)(local_28d8 + 4 + uVar4 * 8) < 0) {
                  *(undefined4 *)(local_28d8 + 4 + uVar4 * 8) = 0;
                }
                goto LAB_004c1814;
              }
LAB_004c16ae:
              local_2a44 = 400;
              local_2a40 = 0x32;
              if (local_28d4 == local_28d0) {
                uVar36 = CONCAT44(&local_2a44,local_28d4);
LAB_004c1809:
                FUN_004a11c0(uVar36);
              }
              else {
                *local_28d4 = 400;
                local_28d4[1] = 0x32;
                local_28d4 = local_28d4 + 2;
              }
            }
            else {
              if (uVar7 != 0) {
                do {
                  if (*(int *)(local_28d8 + uVar4 * 8) == 400) {
                    piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                    *piVar10 = *piVar10 + 0xfa;
                    if (*(int *)(local_28d8 + 4 + uVar4 * 8) < 0) {
                      *(undefined4 *)(local_28d8 + 4 + uVar4 * 8) = 0;
                    }
                    goto LAB_004c178c;
                  }
                  uVar4 = uVar4 + 1;
                } while (uVar4 < uVar7);
              }
              local_2a34 = 400;
              local_2a30 = 0xfa;
              if (local_28d4 == local_28d0) {
                FUN_004a11c0(local_28d4,&local_2a34);
              }
              else {
                *local_28d4 = 400;
                local_28d4[1] = 0xfa;
                local_28d4 = local_28d4 + 2;
              }
LAB_004c178c:
              if (local_28f0 == 0x10) {
                uVar4 = 0;
                uVar7 = (int)local_28d4 - local_28d8 >> 3;
                if (uVar7 != 0) {
                  do {
                    if (*(int *)(local_28d8 + uVar4 * 8) == 400) {
                      piVar10 = (int *)(local_28d8 + 4 + uVar4 * 8);
                      *piVar10 = *piVar10 + 2000;
                      goto LAB_004c17ea;
                    }
                    uVar4 = uVar4 + 1;
                  } while (uVar4 < uVar7);
                }
                local_2a1c = 400;
                local_2a18 = 2000;
                if (local_28d4 == local_28d0) {
                  uVar36 = CONCAT44(&local_2a1c,local_28d4);
                  goto LAB_004c1809;
                }
                *local_28d4 = 400;
                local_28d4[1] = 2000;
                local_28d4 = local_28d4 + 2;
              }
            }
          }
LAB_004c1814:
          local_48 = FUN_006eef60();
          local_48 = local_48 | 1;
          ppuStack_3c = DAT_00b1f674;
          uStack_44._0_4_ = (int)DAT_00b1f66c;
          uVar12 = (int)uStack_44;
          uStack_44._4_4_ = (undefined4)((ulonglong)DAT_00b1f66c >> 0x20);
          uVar38 = uStack_44._4_4_;
          uStack_44 = DAT_00b1f66c;
          iVar8 = FUN_0049cbf0(local_48,uVar12,uVar38,DAT_00b1f674);
          *(int *)(param_1 + 0xb64) = iVar8;
          if (iVar8 == 100) {
            ppbVar6 = *(byte ***)(param_1 + 0x7c);
            if (ppbVar6 == (byte **)0x0) {
LAB_004c18ae:
              cVar3 = FUN_0040a5d0(&DAT_00b6009c,1);
              if (cVar3 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(param_1 + 0x8c) = 1;
              }
            }
            else {
              ppbVar5 = ppbVar6;
              if (&DAT_0000000f < ppbVar6[5]) {
                ppbVar5 = (byte **)*ppbVar6;
              }
              pbVar17 = &DAT_00b6009c;
              do {
                bVar15 = *(byte *)ppbVar5;
                bVar26 = bVar15 < *pbVar17;
                if (bVar15 != *pbVar17) {
LAB_004c1890:
                  uVar4 = -(uint)bVar26 | 1;
                  goto LAB_004c1895;
                }
                if (bVar15 == 0) break;
                bVar15 = *(byte *)((int)ppbVar5 + 1);
                bVar26 = bVar15 < pbVar17[1];
                if (bVar15 != pbVar17[1]) goto LAB_004c1890;
                ppbVar5 = (byte **)((int)ppbVar5 + 2);
                pbVar17 = pbVar17 + 2;
              } while (bVar15 != 0);
              uVar4 = 0;
LAB_004c1895:
              if ((uVar4 != 0) ||
                 ((*(byte *)(ppbVar6 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
              goto LAB_004c18ae;
            }
            uVar4 = FUN_006eef60();
            *(uint *)(param_1 + 0xbc4) = uVar4 | 1;
          }
          else if ((iVar8 == 0x2c6) || (iVar8 == 0x2d0)) {
            FUN_0040a380("TurnConcave",0);
            puVar30 = (undefined4 *)
                      FUN_0081e9d0(local_2b0c,*(float *)(param_1 + 0x370) * DAT_00baa4cc);
            *(undefined4 *)(param_1 + 0x334) = *puVar30;
            *(undefined4 *)(param_1 + 0x338) = puVar30[1];
            uVar4 = FUN_006eef60();
            *(uint *)(param_1 + 0xbc4) = uVar4 & 0xfffffff0 | 0x10;
            if (*(int *)(param_1 + 0xb64) == 0x2d0) {
              uVar4 = FUN_006eef60();
              uVar4 = (uVar4 & 1) + 1;
            }
            else {
              uVar4 = FUN_006eef60();
              uVar4 = uVar4 % 3;
            }
            *(int *)(param_1 + 0xbc4) = *(int *)(param_1 + 0xbc4) + uVar4;
            local_28c4 = (uint **)0x1a6;
LAB_004c1b11:
            FUN_00956780();
            FUN_0092dc30(local_28c4,0x3f800000,2,0,0x3f800000,0);
          }
          else {
            if (iVar8 == 200) {
              FUN_0040a380(&DAT_00b1d47c,0);
              local_28c4 = (uint **)0x1a5;
              goto LAB_004c1b11;
            }
            if (iVar8 == 300) {
              FUN_0040a380((&PTR_s_FaceVanishFromLeft_00b6013c)[*(int *)(param_1 + 0xbc0)],0);
              iVar8 = FUN_006eef60();
              FUN_009568e0(0x1a7,2,0,
                           (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4);
              uVar4 = FUN_006eef60();
              *(uint *)(param_1 + 0xbc4) = uVar4 % 3 + 1;
            }
            else if (iVar8 == 600) {
              FUN_0040a380((&PTR_s_FaceVanishFromLeft_00b6013c)[*(int *)(param_1 + 0xbc0)],0);
              uVar4 = FUN_006eef60();
              *(uint *)(param_1 + 0xbc4) = uVar4 | 1;
              iVar8 = FUN_006eef60();
              FUN_009568e0(0x1a7,2,0,
                           (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4);
            }
            else if (iVar8 == 400) {
              FUN_0040a380("LaserStart",0);
            }
            else if (iVar8 == 0xd) {
              FUN_0040a380("OpenMouth",0);
            }
            else if (iVar8 == 500) {
              FUN_0040a380("Puffed",0);
            }
          }
          local_14 = CONCAT31(local_14._1_3_,4);
          if (local_28d8 != 0) {
            deallocate(local_28d8,(int)local_28d0 - local_28d8 >> 3);
            local_28d8 = 0;
            local_28d4 = (undefined4 *)0x0;
            local_28d0 = (undefined4 *)0x0;
          }
        }
      }
    }
    goto LAB_004c5097;
  }
  bVar15 = (byte)DAT_00b1f674;
  bVar13 = (byte)DAT_00b1f66c;
  bVar14 = (byte)((ulonglong)DAT_00b1f66c >> 0x20);
  if ((((iVar8 == 600) || (iVar8 == 700)) || (iVar8 == 0x2c6)) || (iVar8 == 0x2d0)) {
    local_48 = *(uint *)(param_1 + 0xbc4);
    local_28c4 = DAT_00b1f674;
    ppuStack_3c = DAT_00b1f674;
    iVar8 = *(int *)(param_1 + 0xbc0);
    uStack_44 = DAT_00b1f66c;
    local_28ec = (uint *)(&PTR_s_FaceVanishFromLeft_00b6013c)[iVar8];
    local_2904 = (int *)(&PTR_s_FaceAppearLeft_00b6015c)[iVar8];
    local_28cc = (int *)(&PTR_s_AttackLoopLeft_00b6014c)[iVar8];
    if (local_48 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      pcVar1 = (code *)swi(3);
      (*pcVar1)();
      return;
    }
    local_48 = local_48 >> (bVar13 & 0x1f) ^ local_48;
    local_48 = local_48 << (bVar14 & 0x1f) ^ local_48;
    local_48 = local_48 >> (bVar15 & 0x1f) ^ local_48;
    local_28fc = (uint **)(local_48 % 3 + 1);
    if (local_48 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      pcVar1 = (code *)swi(3);
      (*pcVar1)();
      return;
    }
    iVar8 = 0x30;
    local_48 = local_48 >> (bVar13 & 0x1f) ^ local_48;
    local_48 = local_48 << (bVar14 & 0x1f) ^ local_48;
    local_48 = local_48 >> (bVar15 & 0x1f) ^ local_48;
    local_2924 = (uint **)(local_48 % 3);
    ppuVar18 = local_2620;
    do {
      *ppuVar18 = (uint *)0x1;
      ppuVar18[1] = (uint *)0x5;
      ppuVar18[2] = (uint *)0x7;
      ppuVar18[3] = (uint *)0x0;
      ppuVar18[4] = (uint *)0x40a00000;
      AI_0043ef30();
      param_1 = local_28f0;
      ppuVar18[0x30] = (uint *)0xffffffff;
      ppuVar18[9] = (uint *)0xbdb851ec;
      ppuVar18[8] = (uint *)0xc0000000;
      ppuVar18[0xb] = (uint *)0x3f99999a;
      ppuVar18[0x2d] = (uint *)0x40000000;
      iVar8 = iVar8 + -1;
      ppuVar18 = ppuVar18 + 0x32;
    } while (iVar8 != 0);
    iVar8 = FUN_006be840();
    local_290c = (uint *)(*(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0x33c));
    local_2908 = (uint **)(*(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340));
    ppuVar18 = local_2908;
    FUN_00499d60();
    local_2928 = ppuVar18;
    local_28dc = (uint **)0x0;
    local_28e4 = (uint **)0x0;
    do {
      if (local_28e4 == (uint **)0x0) {
        iVar8 = *(int *)(param_1 + 0x7c);
joined_r0x004c3d00:
        if (iVar8 != 0) {
LAB_004c3d08:
          pfVar24 = (float *)FUN_0040ac70();
          if (pfVar24 != (float *)0x0) {
            iVar8 = FUN_006be840();
            local_290c = (uint *)(*(float *)(iVar8 + 0x33c) -
                                 (*pfVar24 / DAT_00baa324 + *(float *)(param_1 + 0x33c) +
                                 DAT_00ba9fe4));
            local_2908 = (uint **)(*(float *)(iVar8 + 0x340) -
                                  (pfVar24[1] / DAT_00baa324 + *(float *)(param_1 + 0x340) +
                                  DAT_00baa88c));
            ppuVar18 = local_2908;
            FUN_00499d60();
            local_2928 = ppuVar18;
          }
        }
      }
      else {
        if (local_28e4 == (uint **)0x1) {
          iVar8 = *(int *)(param_1 + 0x7c);
          goto joined_r0x004c3d00;
        }
        if ((local_28e4 == (uint **)0x2) && (*(int *)(param_1 + 0x7c) != (int)local_28e4 + -2))
        goto LAB_004c3d08;
      }
      ppuVar18 = local_28e4;
      ppuVar35 = local_2620 + (int)local_28e4 * 800;
      local_28c4 = ppuVar35;
      if (local_28fc == (uint **)0x1) {
        if (local_28e4 == local_2924) goto LAB_004c3de3;
      }
      else if (local_28fc == (uint **)0x2) {
        if (local_28e4 != local_2924) {
LAB_004c3de3:
          local_28e0 = (uint **)0x0;
          if (local_2900 == (uint *)0x1) {
            local_28e0 = (uint **)0x1;
          }
          else if (local_2900 == (uint *)0x2) {
            local_28e0 = (uint **)0x3;
          }
          iVar8 = FUN_007e9020();
          iVar8 = iVar8 + (int)local_28e0;
          local_2560[(int)ppuVar18 * 800] = iVar8;
          if (iVar8 == 0) {
            local_28e0 = (uint **)0x0;
            puVar22 = (uint *)(6 - (int)local_28fc);
            *ppuVar35 = puVar22;
            local_28f4 = (uint *)((int)puVar22 / 2);
            if (0 < (int)puVar22) {
              local_28e8 = (uint **)((int)local_28fc * 2 + 2);
              local_28f8 = auStack_25b0 + (int)ppuVar18 * 800;
              puVar22 = local_28f4;
              do {
                local_28f8[-0x10] = (uint)local_2928;
                local_28f8[-0x1b] = 1;
                local_28f8[-0x18] = 0x40e00000;
                if (local_28e4 == (uint **)0x0) {
                  *local_28f8 = *local_28f8 | 0x8000000;
LAB_004c3eb2:
                  local_28f8[1] = local_28f8[1];
                }
                else if (local_28e4 == (uint **)0x1) {
                  *local_28f8 = *local_28f8 | 0x10000000;
                  goto LAB_004c3eb2;
                }
                uVar7 = ((int)*ppuVar35 + (int)puVar22) * (int)local_28e8;
                local_28f8[-0x1a] = uVar7;
                uVar4 = ((int)uVar7 / (int)local_28fc) * (int)local_28dc;
                local_28f8[-0x19] = uVar4;
                iVar8 = ((int)uVar7 / ((int)*local_28c4 + (int)local_28f4)) * (int)local_28e0;
                local_28e0 = (uint **)((int)local_28e0 + 1);
                local_28f8[-0x19] = iVar8 + uVar4;
                local_28f8 = local_28f8 + 0x32;
                puVar22 = local_28f4;
                ppuVar35 = local_28c4;
                param_1 = local_28f0;
              } while ((int)local_28e0 < (int)*local_28c4);
            }
          }
          else if (iVar8 == 1) {
            ppuVar21 = apuStack_25f0 + (int)ppuVar18 * 800;
            *ppuVar35 = (uint *)&DAT_00000004;
            local_28e0 = ppuVar21;
            local_28c4 = local_28e4;
            *ppuVar21 = (uint *)((((float)((double)(int)local_28e4 +
                                          (double)(&DAT_00bacb00)[-((int)local_28e4 >> 0x1f)]) +
                                  (float)((double)(int)local_28e4 +
                                         (double)(&DAT_00bacb00)[-((int)local_28e4 >> 0x1f)])) *
                                 (float)DAT_00baa708) / (float)(int)local_28fc +
                                ((float)*(int *)(param_1 + 0x410) * _DAT_00baa768) / DAT_00baa8d0);
            if (local_28e4 == (uint **)0x2) {
              local_28f8 = (uint *)0x4;
              if (local_48 == 0) {
                FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                pcVar1 = (code *)swi(3);
                (*pcVar1)();
                return;
              }
              local_48 = local_48 >> ((byte)uStack_44 & 0x1f) ^ local_48;
              local_48 = local_48 << ((byte)((ulonglong)uStack_44 >> 0x20) & 0x1f) ^ local_48;
              local_48 = local_48 >> ((byte)ppuStack_3c & 0x1f) ^ local_48;
              local_28c4 = (uint **)(local_48 & 1);
            }
            local_28f4 = (uint *)0x0;
            ppuVar18 = local_2620 + (int)ppuVar18 * 800 + 1;
            local_28e8 = (uint **)((int)local_28fc * 10);
            ppuVar11 = local_28e8;
            do {
              if (0 < (int)local_28f4) {
                ppuVar18[0xb] = (uint *)((float)ppuVar18[-0x27] - _DAT_00baa0e8);
              }
              ppuVar18[1] = (uint *)ppuVar11;
              if (local_28fc == (uint **)0x1) {
                *ppuVar18 = (uint *)0x4;
                ppuVar11 = (uint **)&DAT_00000014;
                ppuVar18[1] = (uint *)0x14;
              }
              else if (local_28fc == (uint **)0x2) {
                *ppuVar18 = (uint *)0x3;
                ppuVar11 = (uint **)0x19;
                ppuVar18[1] = (uint *)0x19;
              }
              else if (local_28fc == (uint **)0x3) {
                *ppuVar18 = (uint *)0x2;
                ppuVar11 = (uint **)0x1e;
                ppuVar18[1] = (uint *)0x1e;
              }
              iVar8 = (int)local_28f4 * 2;
              local_28f4 = (uint *)((int)local_28f4 + 1);
              ppuVar18[2] = (uint *)(((int)ppuVar11 / (int)local_28fc) * (int)local_28dc + iVar8);
              ppuVar18 = ppuVar18 + 0x32;
              local_28f8 = *ppuVar35;
              ppuVar11 = local_28e8;
            } while ((int)local_28f4 < (int)local_28f8);
            iVar8 = 0;
            param_1 = local_28f0;
            if (0 < (int)local_28f8) {
              do {
                if (local_28c4 == (uint **)0x1) {
                  *ppuVar21 = (uint *)((float)*ppuVar21 * DAT_00baad50);
                }
                iVar8 = iVar8 + 1;
                ppuVar21 = ppuVar21 + 0x32;
              } while (iVar8 < (int)*ppuVar35);
            }
          }
          else if (iVar8 == 3) {
            local_28e8 = (uint **)((int)(0x3c / (longlong)(int)local_28fc) * (int)local_28dc);
            *ppuVar35 = (uint *)0x2;
            local_28f8 = (uint *)0x0;
            do {
              if (local_28fc == (uint **)0x1) {
                ppuVar35[(int)local_28f8 * 0x32 + 1] = (uint *)0x14;
              }
              else if (local_28fc == (uint **)0x2) {
                ppuVar35[(int)local_28f8 * 0x32 + 1] = (uint *)0x10;
              }
              else if (local_28fc == (uint **)0x3) {
                ppuVar35[(int)local_28f8 * 0x32 + 1] = (uint *)0xc;
              }
              local_28f4 = (uint *)0x40000;
              local_28e0 = (uint **)((int)local_28f8 * 200);
              *(float *)((int)(local_28e0 + 0xc) + (int)ppuVar35) =
                   ((float)*(int *)(param_1 + 0x410) * DAT_00baa208) / DAT_00baa8d0;
              if (local_28f8 != (uint *)0x0) {
                local_28f4 = (uint *)0x80000;
              }
              local_28c4 = (uint **)0x0;
              *(undefined4 *)((int)(local_28e0 + 0xe) + (int)ppuVar35) = 0x3b449ba6;
              *(uint *)((int)(local_28e0 + 0x1c) + (int)ppuVar35) =
                   (uint)local_28f4 | *(uint *)((int)(local_28e0 + 0x1c) + (int)ppuVar35) | 0x2000;
              *(undefined4 *)((int)(local_28e0 + 0x1d) + (int)ppuVar35) =
                   *(undefined4 *)((int)(local_28e0 + 0x1d) + (int)ppuVar35);
              *(undefined4 *)((int)(local_28e0 + 4) + (int)ppuVar35) = 0x40800000;
              *(undefined4 *)((int)(local_28e0 + 9) + (int)ppuVar35) = 0xbdae147b;
              *(undefined4 *)((int)(local_28e0 + 2) + (int)ppuVar35) = 0x3c;
              *(uint *)((int)(local_28e0 + 3) + (int)ppuVar35) =
                   (-(uint)(local_28f8 != (uint *)0x0) & 0x1e) + (int)local_28e8;
              local_28f8 = (uint *)((int)local_28f8 + 1);
              param_1 = local_28f0;
            } while ((int)local_28f8 < (int)*ppuVar35);
            local_2900 = local_2900;
          }
          else if (iVar8 == 6) {
            if (local_28fc == (uint **)0x1) {
              *ppuVar35 = (uint *)0x10;
            }
            else if (local_28fc == (uint **)0x2) {
              *ppuVar35 = (uint *)0xc;
            }
            else if (local_28fc == (uint **)0x3) {
              *ppuVar35 = (uint *)&DAT_00000008;
            }
            local_28e8 = (uint **)0x0;
            if (0 < (int)*ppuVar35) {
              local_28f4 = auStack_25b0 + (int)ppuVar18 * 800;
              ppuVar18 = (uint **)((float)local_2928 + (float)DAT_00baa708);
              iVar8 = 0;
              local_28e0 = ppuVar18;
              local_28f8 = (uint *)((int)(0x5a / (longlong)(int)local_28fc) * (int)local_28dc);
              do {
                local_28f4[-0x1b] = 1;
                local_28e8 = (uint **)(float)iVar8;
                fVar28 = (float)(uint **)(float)iVar8 * (float)DAT_00baa708;
                local_28f4[-0x10] =
                     (uint)((fVar28 + fVar28) / (float)(int)*ppuVar35 + (float)ppuVar18);
                *local_28f4 = *local_28f4 | 0x40000;
                local_28f4[1] = local_28f4[1];
                local_28c4 = (uint **)(float)(int)*ppuVar35;
                if (NAN((float)local_28c4) != ((float)local_28c4 == 0.0)) {
                  FUN_00a112c0(0x10);
                  ppuVar18 = local_28e0;
                }
                iVar8 = iVar8 + 1;
                fVar28 = ((float)local_28e8 - 0.0) / ((float)local_28c4 - 0.0);
                if (fVar28 <= 0.0) {
                  fVar28 = 0.0;
                }
                if (DAT_00baa454 <= fVar28) {
                  fVar28 = DAT_00baa454;
                }
                local_28f4[-0xe] = (uint)(fVar28 * DAT_00baa08c - DAT_00baa06c);
                *local_28f4 = *local_28f4 | 0x2000;
                local_28f4[1] = local_28f4[1];
                local_28f4[-0x18] = 0x40c00000;
                local_28f4[-0x13] = 0xbd8f5c29;
                local_28f4[-0x1a] = 0x5a;
                local_28f4[-0x19] = (uint)local_28f8;
                local_28f4 = local_28f4 + 0x32;
                param_1 = local_28f0;
              } while (iVar8 < (int)*ppuVar35);
            }
          }
          else if (iVar8 == 2) {
            if (local_28fc == (uint **)0x1) {
              *ppuVar35 = (uint *)0x10;
            }
            else if (local_28fc == (uint **)0x2) {
              *ppuVar35 = (uint *)0xc;
            }
            else if (local_28fc == (uint **)0x3) {
              *ppuVar35 = (uint *)&DAT_00000008;
            }
            local_28f4 = (uint *)0x0;
            if (0 < (int)*ppuVar35) {
              ppuVar18 = apuStack_25f0 + (int)ppuVar18 * 800;
              local_28f8 = (uint *)((int)(0x5a / (longlong)(int)local_28fc) * (int)local_28dc);
              puVar22 = *ppuVar35;
              do {
                fVar28 = (float)(int)local_28f4 / (float)((int)puVar22 + -1);
                fVar28 = (fVar28 + fVar28) - DAT_00baa454;
                local_28e8 = (uint **)(fVar28 + DAT_00ba9fe4);
                local_28c4 = (uint **)((DAT_00baa454 - fVar28 * fVar28) + DAT_00baa7b8);
                ppuVar21 = local_28e8;
                FUN_00499d60();
                local_28e0 = ppuVar21;
                puVar22 = (uint *)((float)local_28e8 * (float)local_28e8 +
                                  (float)local_28c4 * (float)local_28c4);
                FUN_00435a50();
                local_28f4 = (uint *)((int)local_28f4 + 1);
                ppuVar18[-8] = puVar22;
                *ppuVar18 = (uint *)((float)local_28e0 + (float)local_2928);
                ppuVar18[-0xb] = (uint *)0x1;
                ppuVar18[-10] = (uint *)0x5a;
                ppuVar18[-9] = local_28f8;
                ppuVar18 = ppuVar18 + 0x32;
                puVar22 = *ppuVar35;
                param_1 = local_28f0;
              } while ((int)local_28f4 < (int)puVar22);
            }
          }
          else if (iVar8 == 4) {
            ppuVar18 = local_2620 + (int)ppuVar18 * 800 + 1;
            local_28e8 = (uint **)((int)(0xf / (longlong)(int)local_28fc) * (int)local_28dc);
            *ppuVar35 = (uint *)0x1;
            local_28f4 = (uint *)0x0;
            do {
              if (local_28fc == (uint **)0x1) {
                *ppuVar18 = (uint *)0x5;
              }
              else if (local_28fc == (uint **)0x2) {
                *ppuVar18 = (uint *)0x4;
              }
              else if (local_28fc == (uint **)0x3) {
                *ppuVar18 = (uint *)0x3;
              }
              ppuVar18[0xb] =
                   (uint *)(((float)*(int *)(param_1 + 0x410) * DAT_00baa34c) / DAT_00baa8d0);
              ppuVar18[0xe] = (uint *)0x3f83d70a;
              ppuVar18[3] = (uint *)0x40c00000;
              ppuVar18[0x1b] = (uint *)((uint)ppuVar18[0x1b] | 0x10000000);
              ppuVar18[0x1c] = (uint *)((uint)ppuVar18[0x1c] | 3);
              ppuVar18[0x28] = (uint *)0x69;
              ppuVar18[0x25] = (uint *)0x40000;
              ppuVar18[0x26] = (uint *)0x0;
              ppuVar18[0x27] = (uint *)0x40c00000;
              ppuVar18[0xd] = (uint *)0x3b449ba6;
              ppuVar18[1] = (uint *)0xf;
              ppuVar18[2] = (uint *)local_28e8;
              ppuVar18 = ppuVar18 + 0x32;
              local_28f4 = (uint *)((int)local_28f4 + 1);
            } while ((int)local_28f4 < (int)*ppuVar35);
          }
          else if (iVar8 == 5) {
            *ppuVar35 = (uint *)0x1;
            local_28f4 = (uint *)0x0;
            auVar31 = ZEXT416((uint)((float)local_290c * (float)local_290c +
                                    (float)local_2908 * (float)local_2908));
            FUN_00435a50();
            ppuVar18 = local_2620 + (int)ppuVar18 * 800 + 1;
            local_28e8 = auVar31._0_4_;
            do {
              *ppuVar18 = (uint *)0x3c;
              if (local_28fc == (uint **)0x1) {
                ppuVar18[1] = (uint *)0x50;
              }
              else if (local_28fc == (uint **)0x2) {
                ppuVar18[1] = (uint *)0x78;
              }
              else if (local_28fc == (uint **)0x3) {
                ppuVar18[1] = (uint *)0xa0;
              }
              local_28f8 = (uint *)0xa;
              local_28e0 = ppuVar18;
              do {
                puVar22 = local_290c;
                ppuVar35 = local_2908;
                if (DAT_00ba9fe4 < auVar31._0_4_) {
                  fVar28 = DAT_00baad50 / auVar31._0_4_;
                  puVar22 = (uint *)((float)local_290c * fVar28);
                  ppuVar35 = (uint **)((float)local_2908 * fVar28);
                }
                ppuVar18[0x21] = puVar22;
                ppuVar18[0x22] = (uint *)ppuVar35;
                iVar8 = FUN_006eef60();
                local_293c = (undefined4 *)
                             (((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                               DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa9b4 * DAT_00baa088);
                puVar30 = local_293c;
                FUN_0041d540();
                local_30 = puVar30;
                puVar30 = local_293c;
                FUN_0041d520();
                local_28f8 = (uint *)((int)local_28f8 + -1);
                puVar22 = (uint *)((float)ppuVar18[0x22] * (float)local_30 +
                                  (float)ppuVar18[0x21] * (float)puVar30);
                ppuVar18[0x21] =
                     (uint *)((float)ppuVar18[0x21] * (float)local_30 -
                             (float)ppuVar18[0x22] * (float)puVar30);
                ppuVar18[0x22] = puVar22;
                fVar28 = *(float *)(param_1 + 0x370) + DAT_00baaa00;
                local_29c8 = (float)puVar22 * fVar28 * DAT_00baad50 + *(float *)(param_1 + 0x340);
                local_29cc = fVar28 * (float)ppuVar18[0x21] * DAT_00baad50 +
                             *(float *)(param_1 + 0x33c);
                cVar3 = FUN_00813360(&local_29cc,0x41a00000);
              } while ((cVar3 == '\0') && (auVar31 = ZEXT416(local_28e8), 0 < (int)local_28f8));
              if (local_28f8 == (uint *)0x0) {
                *local_28e0 = (uint *)0x0;
              }
              local_28e0[0x23] = (uint *)0xbf70a3d7;
              local_28e0[3] = (uint *)0x40800000;
              auVar31 = ZEXT416(local_28e8);
              local_28e0[2] = (uint *)(((int)local_28e0[1] / (int)local_28fc) * (int)local_28dc);
              ppuVar18 = local_28e0 + 0x32;
              local_28f4 = (uint *)((int)local_28f4 + 1);
              local_28e0 = ppuVar18;
            } while ((int)local_28f4 < (int)*local_28c4);
          }
          local_28dc = (uint **)((int)local_28dc + 1);
        }
      }
      else if (local_28fc == (uint **)0x3) goto LAB_004c3de3;
      local_28e4 = (uint **)((int)local_28e4 + 1);
    } while (local_28e4 < (uint **)0x3);
    ppbVar6 = *(byte ***)(param_1 + 0x7c);
    if ((ppbVar6 == (byte **)0x0) || (*(char *)(param_1 + 0x8c) == '\0')) {
LAB_004c4ea2:
      if (*(int *)(param_1 + 0xb64) == 600) {
        if (ppbVar6 == (byte **)0x0) {
          bVar26 = *(byte *)local_28ec == 0;
LAB_004c4f0b:
          if (!bVar26) {
LAB_004c500a:
            if (*(int *)(param_1 + 0xb64) == 600) {
              if (ppbVar6 == (byte **)0x0) {
                bVar26 = *(byte *)local_2904 == 0;
LAB_004c507b:
                if (bVar26) {
LAB_004c507d:
                  FUN_0040a380(local_28cc,0);
                  *(undefined4 *)(param_1 + 0x410) = 0;
                }
              }
              else if (*(char *)(param_1 + 0x8c) == '\0') {
                if (*(byte *)local_2904 != 0) {
                  puVar30 = *(undefined4 **)(param_1 + 0x7c);
                  piVar10 = local_2904;
                  if (puVar30 == (undefined4 *)0x0) {
                    puVar30 = (undefined4 *)&DAT_00b1a4ec;
                  }
                  else if (&DAT_0000000f < (undefined *)puVar30[5]) {
                    puVar30 = (undefined4 *)*puVar30;
                  }
                  do {
                    bVar15 = *(byte *)puVar30;
                    bVar26 = bVar15 < *(byte *)piVar10;
                    if (bVar15 != *(byte *)piVar10) {
LAB_004c5074:
                      uVar4 = -(uint)bVar26 | 1;
                      goto LAB_004c5079;
                    }
                    if (bVar15 == 0) break;
                    bVar15 = *(byte *)((int)puVar30 + 1);
                    bVar26 = bVar15 < *(byte *)((int)piVar10 + 1);
                    if (bVar15 != *(byte *)((int)piVar10 + 1)) goto LAB_004c5074;
                    puVar30 = (undefined4 *)((int)puVar30 + 2);
                    piVar10 = (int *)((int)piVar10 + 2);
                  } while (bVar15 != 0);
                  uVar4 = 0;
LAB_004c5079:
                  bVar26 = uVar4 == 0;
                  goto LAB_004c507b;
                }
                goto LAB_004c507d;
              }
            }
            goto LAB_004c5097;
          }
        }
        else {
          if (*(char *)(param_1 + 0x8c) != '\0') goto LAB_004c500a;
          if (*(byte *)local_28ec != 0) {
            ppbVar5 = ppbVar6;
            puVar22 = local_28ec;
            if (&DAT_0000000f < ppbVar6[5]) {
              ppbVar5 = (byte **)*ppbVar6;
            }
            do {
              bVar15 = *(byte *)ppbVar5;
              bVar26 = bVar15 < *(byte *)puVar22;
              if (bVar15 != *(byte *)puVar22) {
LAB_004c4f04:
                uVar4 = -(uint)bVar26 | 1;
                goto LAB_004c4f09;
              }
              if (bVar15 == 0) break;
              bVar15 = *(byte *)((int)ppbVar5 + 1);
              bVar26 = bVar15 < *(byte *)((int)puVar22 + 1);
              if (bVar15 != *(byte *)((int)puVar22 + 1)) goto LAB_004c4f04;
              ppbVar5 = (byte **)((int)ppbVar5 + 2);
              puVar22 = (uint *)((int)puVar22 + 2);
            } while (bVar15 != 0);
            uVar4 = 0;
LAB_004c4f09:
            bVar26 = uVar4 == 0;
            goto LAB_004c4f0b;
          }
        }
        iVar8 = FUN_006be840();
        fVar33 = *(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0x33c);
        fVar28 = *(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340);
        if ((float)((uint)fVar33 & DAT_00bacb40) <= (float)((uint)fVar28 & DAT_00bacb40)) {
          iVar8 = (uint)(0.0 <= fVar28) * 2 + 1;
        }
        else {
          iVar8 = 2;
          if (fVar33 < 0.0) {
            iVar8 = 0;
          }
        }
        local_28e8 = (uint **)(&PTR_s_FaceAppearLeft_00b6015c)[iVar8];
        *(int *)(param_1 + 0xbc0) = iVar8;
        ppbVar6 = *(byte ***)(param_1 + 0x7c);
        if (ppbVar6 != (byte **)0x0) {
          ppbVar5 = ppbVar6;
          ppuVar18 = local_28e8;
          if (&DAT_0000000f < ppbVar6[5]) {
            ppbVar5 = (byte **)*ppbVar6;
          }
          do {
            bVar15 = *(byte *)ppbVar5;
            bVar26 = bVar15 < *(byte *)ppuVar18;
            if (bVar15 != *(byte *)ppuVar18) {
LAB_004c4fb6:
              uVar4 = -(uint)bVar26 | 1;
              goto LAB_004c4fbb;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar5 + 1);
            bVar26 = bVar15 < *(byte *)((int)ppuVar18 + 1);
            if (bVar15 != *(byte *)((int)ppuVar18 + 1)) goto LAB_004c4fb6;
            ppbVar5 = (byte **)((int)ppbVar5 + 2);
            ppuVar18 = (uint **)((int)ppuVar18 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004c4fbb:
          if ((uVar4 == 0) &&
             ((*(byte *)(ppbVar6 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
          goto LAB_004c5097;
        }
        cVar3 = FUN_0040a5d0(local_28e8,1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
    }
    else {
      if (*(byte *)local_28cc != 0) {
        ppbVar5 = ppbVar6;
        piVar10 = local_28cc;
        if (&DAT_0000000f < ppbVar6[5]) {
          ppbVar5 = (byte **)*ppbVar6;
        }
        do {
          bVar15 = *(byte *)ppbVar5;
          bVar26 = bVar15 < *(byte *)piVar10;
          if (bVar15 != *(byte *)piVar10) {
LAB_004c4940:
            uVar4 = -(uint)bVar26 | 1;
            goto LAB_004c4945;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar5 + 1);
          bVar26 = bVar15 < *(byte *)((int)piVar10 + 1);
          if (bVar15 != *(byte *)((int)piVar10 + 1)) goto LAB_004c4940;
          ppbVar5 = (byte **)((int)ppbVar5 + 2);
          piVar10 = (int *)((int)piVar10 + 2);
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004c4945:
        if (uVar4 != 0) {
          ppbVar5 = ppbVar6;
          if (&DAT_0000000f < ppbVar6[5]) {
            ppbVar5 = (byte **)*ppbVar6;
          }
          pcVar16 = "MovingConcaveEyesOpen";
          do {
            bVar15 = *(byte *)ppbVar5;
            bVar26 = bVar15 < (byte)*pcVar16;
            if (bVar15 != *pcVar16) {
LAB_004c4978:
              uVar4 = -(uint)bVar26 | 1;
              goto LAB_004c497d;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar5 + 1);
            bVar26 = bVar15 < ((byte *)pcVar16)[1];
            if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c4978;
            ppbVar5 = (byte **)((int)ppbVar5 + 2);
            pcVar16 = (char *)((byte *)pcVar16 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004c497d:
          if (uVar4 != 0) goto LAB_004c4ea2;
        }
      }
      if ((int)*(float *)(param_1 + 0x3a4) != (int)*(float *)(param_1 + 0x3a0) &&
          -1 < (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)) {
        local_28c4 = (uint **)0x0;
        do {
          ppuVar18 = local_28c4;
          local_28e0 = (uint **)((int)local_28c4 * 0xc80);
          if (local_2560[(int)local_28c4 * 800] != -1) {
            local_28dc = (uint **)0x0;
            if (local_28c4 == (uint **)0x0) {
              if (*(int *)(param_1 + 0x7c) == 0) {
                ppuVar35 = (uint **)0x0;
              }
              else {
LAB_004c4a06:
                ppuVar35 = (uint **)FUN_0040ac70();
              }
LAB_004c4a0e:
              local_28dc = ppuVar35;
            }
            else {
              if (local_28c4 == (uint **)0x1) {
                if (*(int *)(param_1 + 0x7c) != 0) goto LAB_004c4a06;
                ppuVar35 = (uint **)0x0;
                goto LAB_004c4a0e;
              }
              if (local_28c4 == (uint **)0x2) {
                ppuVar35 = (uint **)0x0;
                if (*(int *)(param_1 + 0x7c) != 0) goto LAB_004c4a06;
                goto LAB_004c4a0e;
              }
            }
            local_28e8 = (uint **)0x0;
            if (0 < *(int *)((int)local_2620 + (int)local_28e0)) {
              puVar25 = (undefined8 *)((int)&uStack_25bc + (int)local_28e0);
              ppuVar35 = local_28e0;
              do {
                if ((*(int *)(param_1 + 0x410) - *(int *)(puVar25 + -0xb)) %
                    *(int *)((int)puVar25 + -0x5c) == 0) {
                  local_26c8[0] = *(undefined *)((int)puVar25 + -0x4c);
                  local_26c4 = *(undefined4 *)(puVar25 + -9);
                  local_26c0 = *(undefined4 *)((int)puVar25 + -0x44);
                  local_26bc = *(undefined4 *)(puVar25 + -8);
                  local_26b8 = *(undefined4 *)((int)puVar25 + -0x3c);
                  local_26b4 = *(undefined4 *)(puVar25 + -7);
                  local_26b0 = *(undefined4 *)((int)puVar25 + -0x34);
                  local_26ac = *(undefined4 *)(puVar25 + -6);
                  local_26a8 = *(undefined4 *)((int)puVar25 + -0x2c);
                  local_26a4 = *(undefined4 *)(puVar25 + -5);
                  local_26a0 = *(undefined4 *)((int)puVar25 + -0x24);
                  local_269c = *(undefined4 *)(puVar25 + -4);
                  uStack_2698 = *(undefined4 *)((int)puVar25 + -0x1c);
                  uStack_2694 = *(undefined4 *)(puVar25 + -3);
                  uStack_2690 = *(undefined4 *)((int)puVar25 + -0x14);
                  local_268c = *(undefined4 *)(puVar25 + -2);
                  uStack_2688 = *(undefined4 *)((int)puVar25 + -0xc);
                  uStack_2684 = *(undefined4 *)(puVar25 + -1);
                  uStack_2680 = *(undefined4 *)((int)puVar25 + -4);
                  local_267c = *puVar25;
                  local_2674 = *(undefined4 *)(puVar25 + 1);
                  local_2670 = *(undefined4 *)((int)puVar25 + 0xc);
                  local_266c = *(undefined4 *)(puVar25 + 2);
                  local_2668 = *(float *)((int)puVar25 + 0x14);
                  local_2664 = *(float *)(puVar25 + 3);
                  local_2660 = *(float *)((int)puVar25 + 0x1c);
                  local_265c = *(float *)(puVar25 + 4);
                  local_2658 = *(undefined4 *)((int)puVar25 + 0x24);
                  local_2654 = *(undefined4 *)(puVar25 + 5);
                  local_2650 = *(undefined4 *)((int)puVar25 + 0x2c);
                  local_264c = *(undefined4 *)(puVar25 + 6);
                  local_2648 = *(undefined4 *)((int)puVar25 + 0x34);
                  local_2644 = *(undefined4 *)(puVar25 + 7);
                  local_2640 = *(undefined4 *)((int)puVar25 + 0x3c);
                  local_263c = *(undefined4 *)(puVar25 + 8);
                  local_2638 = *(undefined4 *)((int)puVar25 + 0x44);
                  local_2634 = *(undefined4 *)(puVar25 + 9);
                  local_2630 = *(undefined *)((int)puVar25 + 0x4c);
                  local_262c = *(undefined4 *)(puVar25 + 10);
                  local_2628 = *(undefined4 *)((int)puVar25 + 0x54);
                  local_2624 = *(undefined *)(puVar25 + 0xb);
                  local_2634 = 6;
                  if (local_28c4 == (uint **)0x0) {
                    FUN_00682ed0();
                    local_269c = _DAT_00bac7b0;
                    uStack_2698 = _UNK_00bac7b4;
                    uStack_2694 = _UNK_00bac7b8;
                    uStack_2690 = _UNK_00bac7bc;
                    local_2674 = 0;
                    local_268c = local_2b80;
                    uStack_2688 = uStack_2b7c;
                    uStack_2684 = uStack_2b78;
                    uStack_2680 = uStack_2b74;
                    fVar28 = DAT_00baa280;
LAB_004c4cd7:
                    local_267c = CONCAT44(DAT_00baa198,fVar28);
                    _DAT_00bac7b0 = local_269c;
                    _UNK_00bac7b4 = uStack_2698;
                    _UNK_00bac7b8 = uStack_2694;
                    _UNK_00bac7bc = uStack_2690;
                  }
                  else {
                    if (local_28c4 == (uint **)0x1) {
                      FUN_00682ed0();
                      local_269c = _DAT_00bac7b0;
                      uStack_2698 = _UNK_00bac7b4;
                      uStack_2694 = _UNK_00bac7b8;
                      uStack_2690 = _UNK_00bac7bc;
                      local_2674 = 0x3ecccccd;
                      local_268c = local_2b28;
                      uStack_2688 = uStack_2b24;
                      uStack_2684 = uStack_2b20;
                      uStack_2680 = uStack_2b1c;
                      fVar28 = 0.0;
                      goto LAB_004c4cd7;
                    }
                    if (local_28c4 == (uint **)0x2) {
                      FUN_00682ed0();
                      local_269c = _DAT_00bac7b0;
                      uStack_2698 = _UNK_00bac7b4;
                      uStack_2694 = _UNK_00bac7b8;
                      uStack_2690 = _UNK_00bac7bc;
                      local_2674 = 0;
                      local_268c = local_2b54;
                      uStack_2688 = uStack_2b50;
                      uStack_2684 = uStack_2b4c;
                      uStack_2680 = uStack_2b48;
                      fVar28 = DAT_00baa198;
                      goto LAB_004c4cd7;
                    }
                  }
                  ppuVar35 = local_28e0;
                  if (local_28dc != (uint **)0x0) {
                    local_2668 = (float)*local_28dc / DAT_00baa324 + 0.0;
                    local_2664 = (float)local_28dc[1] / DAT_00baa324 + DAT_00baa88c;
                    local_2638 = 0x41f00000;
                    if (*(int *)(param_1 + 0xbc0) != 1) {
                      local_2638 = 0x41a00000;
                    }
                    local_265c = local_2664 + *(float *)(param_1 + 0x340);
                    local_2660 = local_2668 + *(float *)(param_1 + 0x33c);
                    local_29d4 = *(undefined4 *)((int)puVar25 + -0x54);
                    local_29d0 = (float)*(int *)(puVar25 + -0xc);
                    FUN_006cb2e0(param_1 + 0x33c,&local_29d4,9,local_26c8);
                    ppuVar35 = local_28e0;
                  }
                }
                puVar25 = puVar25 + 0x19;
                local_28e8 = (uint **)((int)local_28e8 + 1);
                ppuVar18 = local_28c4;
              } while ((int)local_28e8 < *(int *)((int)local_2620 + (int)ppuVar35));
            }
          }
          local_28c4 = (uint **)((int)ppuVar18 + 1);
        } while ((int)(uint **)((int)ppuVar18 + 1) < 3);
        iVar8 = *(int *)(param_1 + 0x410) +
                ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
        *(int *)(param_1 + 0x410) = iVar8;
        if ((0x96 < iVar8) && (*(int *)(param_1 + 0xb64) == 600)) {
          ppbVar6 = *(byte ***)(param_1 + 0x7c);
          if (ppbVar6 == (byte **)0x0) {
LAB_004c4e7a:
            cVar3 = FUN_0040a5d0(local_28ec,1);
            if (cVar3 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x8c) = 1;
            }
          }
          else {
            ppbVar5 = ppbVar6;
            puVar22 = local_28ec;
            if (&DAT_0000000f < ppbVar6[5]) {
              ppbVar5 = (byte **)*ppbVar6;
            }
            do {
              bVar15 = *(byte *)ppbVar5;
              bVar26 = bVar15 < *(byte *)puVar22;
              if (bVar15 != *(byte *)puVar22) {
LAB_004c4e54:
                uVar4 = -(uint)bVar26 | 1;
                goto LAB_004c4e59;
              }
              if (bVar15 == 0) break;
              bVar15 = *(byte *)((int)ppbVar5 + 1);
              bVar26 = bVar15 < *(byte *)((int)puVar22 + 1);
              if (bVar15 != *(byte *)((int)puVar22 + 1)) goto LAB_004c4e54;
              ppbVar5 = (byte **)((int)ppbVar5 + 2);
              puVar22 = (uint *)((int)puVar22 + 2);
            } while (bVar15 != 0);
            uVar4 = 0;
LAB_004c4e59:
            if ((uVar4 != 0) ||
               ((*(byte *)(ppbVar6 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
            goto LAB_004c4e7a;
          }
LAB_004c35fb:
          *(undefined4 *)(param_1 + 0xbc4) = *(undefined4 *)(param_1 + 0xb64);
          *(undefined4 *)(param_1 + 0xb64) = 3;
          *(undefined4 *)(param_1 + 0x410) = 0x1e;
        }
      }
    }
    goto LAB_004c5097;
  }
  if (iVar8 == 100) {
    uVar4 = *(uint *)(param_1 + 0xbc4);
    uStack_44 = DAT_00b1f66c;
    local_28fc = DAT_00b1f674;
    ppuStack_3c = DAT_00b1f674;
    if (uVar4 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      pcVar1 = (code *)swi(3);
      (*pcVar1)();
      return;
    }
    uVar4 = uVar4 >> (bVar13 & 0x1f) ^ uVar4;
    uVar4 = uVar4 << (bVar14 & 0x1f) ^ uVar4;
    uVar4 = uVar4 >> (bVar15 & 0x1f) ^ uVar4;
    local_28ec = (uint *)(uVar4 / 0xffffffff + uVar4);
    local_48 = uVar4;
    FUN_006d0dd0(local_2ab4,1);
    local_28e4 = (uint **)0x0;
    local_2918 = (int *)0x0;
    local_28c4 = (uint **)0x0;
    local_2914 = (undefined4 *)0x0;
    local_2910 = (undefined4 *)0x0;
    local_14 = CONCAT31(local_14._1_3_,8);
    if (local_2aa8 < 10) {
      local_2a14 = 0;
      local_2a10 = 100;
      FUN_004a11c0(0,&local_2a14);
      local_28c4 = (uint **)local_2914;
      local_28e4 = (uint **)local_2918;
    }
    uVar7 = 0;
    uVar23 = (int)local_28c4 - (int)local_28e4 >> 3;
    piVar10 = (int *)local_28e4;
    local_2914 = local_28c4;
    if (uVar23 != 0) {
      do {
        if (*piVar10 == 1) {
          local_28e4[uVar7 * 2 + 1] = (uint *)((int)local_28e4[uVar7 * 2 + 1] + 100);
          local_28dc = local_28e4;
          if ((int)local_28e4[uVar7 * 2 + 1] < 0) {
            local_28e4[uVar7 * 2 + 1] = (uint *)0x0;
          }
          goto LAB_004c1d6b;
        }
        uVar7 = uVar7 + 1;
        piVar10 = piVar10 + 2;
      } while (uVar7 < uVar23);
    }
    local_2a0c = 1;
    local_2a08 = 100;
    if (local_28c4 == (uint **)local_2910) {
      local_2918 = (int *)local_28e4;
      FUN_004a11c0(local_28c4,&local_2a0c);
      local_28dc = (uint **)local_2918;
    }
    else {
      *local_28c4 = (uint *)0x1;
      local_28c4[1] = (uint *)0x64;
      local_2914 = local_28c4 + 2;
      local_28dc = local_28e4;
    }
LAB_004c1d6b:
    uVar7 = 0;
    local_28cc = (int *)((int)local_2914 - (int)local_28dc >> 3);
    piVar10 = (int *)local_28dc;
    local_2918 = (int *)local_28dc;
    if (local_28cc != (int *)0x0) {
      do {
        if (*piVar10 == 2) {
          local_28dc[uVar7 * 2 + 1] = (uint *)((int)local_28dc[uVar7 * 2 + 1] + 100);
          if ((int)local_28dc[uVar7 * 2 + 1] < 0) {
            local_28dc[uVar7 * 2 + 1] = (uint *)0x0;
          }
          goto LAB_004c1e00;
        }
        uVar7 = uVar7 + 1;
        piVar10 = piVar10 + 2;
      } while (uVar7 < local_28cc);
    }
    local_2a04 = 2;
    local_2a00 = 100;
    if (local_2914 == local_2910) {
      FUN_004a11c0(local_2914,&local_2a04);
    }
    else {
      *local_2914 = 2;
      local_2914[1] = 100;
      local_2914 = local_2914 + 2;
    }
LAB_004c1e00:
    uVar7 = *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328) & 0x80000001;
    if ((int)uVar7 < 0) {
      uVar7 = (uVar7 - 1 | 0xfffffffe) + 1;
    }
    uVar23 = local_48;
    if (uVar7 == 1) {
      local_28c4 = (uint **)0x0;
      do {
        if (uVar4 == 0) {
          FUN_00a112c0(0x10,"RNG Seed is zero!\n");
          pcVar1 = (code *)swi(3);
          (*pcVar1)();
          return;
        }
        uVar4 = uVar4 >> ((byte)uStack_44 & 0x1f) ^ uVar4;
        uVar4 = uVar4 << ((byte)((ulonglong)uStack_44 >> 0x20) & 0x1f) ^ uVar4;
        uVar4 = uVar4 >> ((byte)local_28fc & 0x1f) ^ uVar4;
        local_28c4 = (uint **)((int)local_28c4 + 1);
        uVar23 = uVar4;
      } while ((int)local_28c4 < 10);
    }
    local_48 = uVar23;
    local_2904 = (int *)FUN_0049cbf0(local_48,(int)uStack_44,uStack_44._4_4_,ppuStack_3c);
    local_2908 = (uint **)&DAT_00000050;
    iVar8 = FUN_006be840();
    local_28dc = (uint **)(*(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340));
    local_28e4 = (uint **)(*(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0x33c));
    fVar28 = (float)local_28dc * (float)local_28dc + (float)local_28e4 * (float)local_28e4;
    FUN_00435a50();
    if (DAT_00ba9fe4 < fVar28) {
      local_28e4 = (uint **)((DAT_00baa630 / fVar28) * (float)local_28e4);
      local_28dc = (uint **)((float)local_28dc * (DAT_00baa630 / fVar28));
    }
    uVar7 = *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328) & 0x80000001;
    if ((int)uVar7 < 0) {
      uVar7 = (uVar7 - 1 | 0xfffffffe) + 1;
    }
    if (uVar7 == 1) {
      piVar10 = DAT_00baa240;
      FUN_0041d540();
      local_28cc = piVar10;
      piVar10 = DAT_00baa240;
    }
    else {
      piVar10 = DAT_00baad1c;
      FUN_0041d540();
      local_28cc = piVar10;
      piVar10 = DAT_00baad1c;
    }
    FUN_0041d520();
    param_1 = local_28f0;
    local_2900 = (uint *)((float)piVar10 * (float)local_28e4 + (float)local_28cc * (float)local_28dc
                         );
    local_28dc = (uint **)((float)local_28cc * (float)local_28e4 -
                          (float)piVar10 * (float)local_28dc);
    if (uVar4 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      pcVar1 = (code *)swi(3);
      (*pcVar1)();
      return;
    }
    uVar4 = uVar4 >> ((byte)uStack_44 & 0x1f) ^ uVar4;
    bVar15 = (byte)((ulonglong)uStack_44 >> 0x20);
    uVar4 = uVar4 << (bVar15 & 0x1f) ^ uVar4;
    uVar4 = uVar4 >> ((byte)local_28fc & 0x1f) ^ uVar4;
    local_28c4 = (uint **)(uVar4 % 6 + 1);
    if (uVar4 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      pcVar1 = (code *)swi(3);
      (*pcVar1)();
      return;
    }
    uVar4 = uVar4 >> ((byte)uStack_44 & 0x1f) ^ uVar4;
    uVar4 = uVar4 << (bVar15 & 0x1f) ^ uVar4;
    local_28e0 = (uint **)((uVar4 >> ((byte)local_28fc & 0x1f) ^ uVar4) % 6 + 1);
    local_290c = (uint *)0x0;
    if (local_2904 == (int *)0x0) {
      local_28c4 = (uint **)0x2;
      local_28e0 = (uint **)0x6;
      local_2908 = (uint **)(int)(*(float *)(local_28f0 + 0x370) + DAT_00baa904);
      local_28dc = DAT_00c7b640;
      local_2900 = DAT_00c7b644;
      local_28ec = (uint *)0x1;
    }
    else {
      local_290c = (uint *)(uint)(local_2904 == (int *)0x2);
    }
    FUN_006d0dd0(local_2aa4,local_28ec);
    local_14 = CONCAT31(local_14._1_3_,9);
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) != '\0')) {
LAB_004c216c:
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        FUN_0040a380(&DAT_00b1bc54,0);
        *(undefined4 *)(param_1 + 0xbc4) = *(undefined4 *)(param_1 + 0xb64);
        *(undefined4 *)(param_1 + 0xb64) = 3;
        *(undefined4 *)(param_1 + 0x410) = 0x1e;
      }
      else {
        uVar36 = FUN_00407380();
        do {
          pbVar9 = (byte *)((ulonglong)uVar36 >> 0x20);
          pbVar17 = (byte *)uVar36;
          bVar15 = *pbVar17;
          bVar26 = bVar15 < *pbVar9;
          if (bVar15 != *pbVar9) {
LAB_004c21b3:
            uVar4 = -(uint)bVar26 | 1;
            goto LAB_004c21b8;
          }
          if (bVar15 == 0) break;
          bVar15 = pbVar17[1];
          bVar26 = bVar15 < pbVar9[1];
          if (bVar15 != pbVar9[1]) goto LAB_004c21b3;
          uVar36 = CONCAT44(pbVar9 + 2,pbVar17 + 2);
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004c21b8:
        if (((uVar4 == 0) && (uVar4 = FUN_006eef60(), uVar4 % 3 == 0)) && (local_2a98 < 0x14)) {
          FUN_009568e0(0x9e,0x1e,0,0x3e99999a);
          uVar4 = FUN_006eef60();
          iVar8 = 0;
          local_2924 = (uint **)((uVar4 & 3) + 1);
          local_28e4 = (uint **)0x0;
          if (local_2924 != (uint **)0x0) {
            do {
              uVar12 = FUN_006eef60();
              local_28e8 = (uint **)(*(float *)(param_1 + 0x33c) + DAT_00ba9fe4);
              local_28f4 = (uint *)(*(float *)(param_1 + 0x340) - DAT_00baa81c);
              iVar8 = FUN_006eef60();
              fVar28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              local_28cc = (int *)(fVar28 + fVar28);
              piVar10 = local_28cc;
              FUN_0041d520();
              local_2904 = piVar10;
              piVar10 = local_28cc;
              FUN_0041d540();
              local_29ec = (float)piVar10 * _DAT_00baa80c + (float)local_28e8;
              uVar36 = 0xc5d6ac;
              local_29e8 = (float)local_2904 * _DAT_00baa80c + (float)local_28f4;
              pTVar39 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              uVar38 = 0;
              uVar12 = FUN_00428b20(0x128,0,&local_29ec,&DAT_00c7b640,param_1,0,uVar12);
              piVar10 = (int *)__RTDynamicCast(uVar12,uVar38,pTVar39,uVar36);
              (&piStack_4c)[(int)local_28e4] = piVar10;
              iVar8 = (int)local_28e4 + 1;
              local_28e4 = (uint **)iVar8;
            } while (iVar8 < (int)local_2924);
          }
          ppuVar18 = (uint **)(iVar8 + -1);
          local_28e4 = ppuVar18;
          if (-1 < (int)ppuVar18) {
            ppuVar35 = (uint **)((float)local_28dc * (float)local_28dc +
                                (float)local_2900 * (float)local_2900);
            FUN_00435a50();
            local_28e8 = ppuVar35;
            do {
              piVar10 = (&piStack_4c)[(int)ppuVar18];
              piVar10[0x5a] = piVar10[0x5a] & 0xfffffffb;
              piVar10[0x5b] = piVar10[0x5b];
              piVar10[0x62] = 2;
              iVar8 = FUN_006eef60();
              fVar28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              local_28cc = (int *)(fVar28 + fVar28);
              piVar29 = local_28cc;
              FUN_0041d520();
              local_2904 = piVar29;
              piVar29 = local_28cc;
              FUN_0041d540();
              fVar28 = (float)local_2904 * DAT_00baa8d0;
              piVar10[0xd8] = (int)((float)piVar29 * DAT_00baa8d0);
              piVar10[0xd9] = (int)fVar28;
              if (piVar10[0xef] != 0) {
                local_28cc = piVar10 + 0xef;
                FUN_004cf210();
              }
              piVar10[0xef] = param_1;
              FUN_004cdcf0();
              (**(code **)(*piVar10 + 0xc))();
              puVar22 = local_2900;
              ppuVar18 = local_28dc;
              if (DAT_00ba9fe4 < (float)local_28e8) {
                fVar28 = *(float *)(param_1 + 0x370) / (float)local_28e8;
                puVar22 = (uint *)(fVar28 * (float)local_2900);
                ppuVar18 = (uint **)(fVar28 * (float)local_28dc);
              }
              fVar28 = *(float *)(param_1 + 0x340);
              fVar33 = *(float *)(param_1 + 0x33c);
              piVar10[799] = (int)local_28ec;
              piVar10[0x2ec] = (int)((float)ppuVar18 + fVar33);
              piVar10[0x2ed] = (int)((float)puVar22 + fVar28);
              piVar10[0x2ee] = (int)local_28dc;
              piVar10[0x2ef] = (int)local_2900;
              *(char *)(piVar10 + 0x2f1) = (char)local_28c4;
              *(char *)((int)piVar10 + 0xbc5) = (char)local_28e0;
              *(char *)((int)piVar10 + 0xbc6) = (char)local_2908;
              *(char *)((int)piVar10 + 0xbc7) = (char)local_290c;
              ppuVar18 = (uint **)((int)local_28e4 + -1);
              local_28e4 = ppuVar18;
            } while (-1 < (int)ppuVar18);
          }
        }
      }
    }
    else {
      ppbVar6 = *(byte ***)(param_1 + 0x7c);
      if (&DAT_0000000f < ppbVar6[5]) {
        ppbVar6 = (byte **)*ppbVar6;
      }
      pbVar17 = &DAT_00b6009c;
      do {
        bVar15 = *(byte *)ppbVar6;
        bVar26 = bVar15 < *pbVar17;
        if (bVar15 != *pbVar17) {
LAB_004c2150:
          uVar4 = -(uint)bVar26 | 1;
          goto LAB_004c2155;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar6 + 1);
        bVar26 = bVar15 < pbVar17[1];
        if (bVar15 != pbVar17[1]) goto LAB_004c2150;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pbVar17 = pbVar17 + 2;
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004c2155:
      if (uVar4 != 0) goto LAB_004c216c;
      FUN_0040a380("SpawnFlies",0);
    }
    if (local_2aa4[0] == '\0') {
      local_14 = CONCAT31(local_14._1_3_,10);
      FUN_00a648b0(0,0);
    }
    if (local_2918 != (int *)0x0) {
      deallocate(local_2918,(int)local_2910 - (int)local_2918 >> 3);
      local_2918 = (int *)0x0;
      local_2914 = (undefined4 *)0x0;
      local_2910 = (undefined4 *)0x0;
    }
    local_14 = CONCAT31(local_14._1_3_,4);
    if (local_2ab4[0] == '\0') {
      local_14._0_1_ = 0xb;
      FUN_00a648b0(0,0);
      local_14 = CONCAT31(local_14._1_3_,4);
    }
    goto LAB_004c5097;
  }
  if (iVar8 == 200) {
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      FUN_0040a380(&DAT_00b1bc54,0);
      *(undefined4 *)(param_1 + 0xbc4) = *(undefined4 *)(param_1 + 0xb64);
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined4 *)(param_1 + 0x410) = 0x3c;
    }
    else {
      iVar8 = FUN_0040a780();
      if (iVar8 == 10) {
        AI_0043ef30();
        pfVar24 = (float *)0x0;
        local_28ac = 0x40400000;
        local_28b4 = 0xbe4ccccd;
        local_28b8 = 0x404ccccd;
        local_2830 = 0x41a00000;
        local_28e4 = (uint **)0x0;
        do {
          if (local_28e4 == (uint **)0x0) {
            if (*(int *)(param_1 + 0x7c) != 0) goto LAB_004c269b;
LAB_004c267d:
            pfVar24 = (float *)0x0;
            local_64[0] = _DAT_00bacbc0;
            local_64[1] = _UNK_00bacbc4;
            local_64[2] = _UNK_00bacbc8;
            local_64[3] = _UNK_00bacbcc;
            local_54 = 0;
            local_50 = 0x3f800000;
          }
          else {
            if (local_28e4 == (uint **)0x1) {
              if (*(int *)(param_1 + 0x7c) == 0) goto LAB_004c267d;
LAB_004c269b:
              pfVar24 = (float *)FUN_0040ac70();
            }
            else if (local_28e4 == (uint **)0x2) {
              if (*(int *)(param_1 + 0x7c) != (int)local_28e4 + -2) goto LAB_004c269b;
              local_64[0] = _DAT_00bacbc0;
              local_64[1] = _UNK_00bacbc4;
              local_64[2] = _UNK_00bacbc8;
              local_64[3] = _UNK_00bacbcc;
              local_54 = 0;
              local_50 = 0x3f800000;
              break;
            }
            local_54 = 0;
            local_50 = 0x3f800000;
            local_64[0] = _DAT_00bacbc0;
            local_64[1] = _UNK_00bacbc4;
            local_64[2] = _UNK_00bacbc8;
            local_64[3] = _UNK_00bacbcc;
            if (pfVar24 != (float *)0x0) {
              local_2868 = 0x20000000;
              local_2864 = 0;
              local_28bc = pfVar24[1] / DAT_00baa324 + DAT_00baa88c;
              local_29f8 = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
              local_29fc = *pfVar24 / DAT_00baa324 + *(float *)(param_1 + 0x33c);
              FUN_006cb2e0(&local_29fc,local_64 + (int)local_28e4 * 2,0,local_28c0);
            }
          }
          local_28e4 = (uint **)((int)local_28e4 + 1);
        } while ((int)local_28e4 < 3);
      }
    }
    goto LAB_004c5097;
  }
  if (iVar8 == 400) {
    cVar3 = FUN_0040a4d0();
    if ((cVar3 != '\0') && (iVar8 = FUN_0040a780(), iVar8 == 3)) {
      FUN_00703670();
      FUN_009568e0(0x1a9,0x1e,0,0x3f800000);
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) == '\0')) {
      uVar36 = FUN_00407380();
      do {
        pbVar9 = (byte *)((ulonglong)uVar36 >> 0x20);
        pbVar17 = (byte *)uVar36;
        bVar15 = *pbVar17;
        bVar26 = bVar15 < *pbVar9;
        if (bVar15 != *pbVar9) {
LAB_004c2851:
          uVar4 = -(uint)bVar26 | 1;
          goto LAB_004c2856;
        }
        if (bVar15 == 0) break;
        bVar15 = pbVar17[1];
        bVar26 = bVar15 < pbVar9[1];
        if (bVar15 != pbVar9[1]) goto LAB_004c2851;
        uVar36 = CONCAT44(pbVar9 + 2,pbVar17 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004c2856:
      if (uVar4 == 0) {
        FUN_0040a380("LaserLoop",0);
        uVar4 = FUN_006eef60();
        *(uint *)(param_1 + 0x410) = -10 - uVar4 % 10;
        local_28c4 = (uint **)0x0;
        do {
          iVar8 = (int)local_28c4;
          if ((*(int *)(param_1 + 0x7c) != 0) &&
             (local_28cc = (int *)FUN_0040ac70(), local_28cc != (int *)0x0)) {
            uVar12 = FUN_006eef60();
            piVar10 = (int *)FUN_00428b20(1000,0x65,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar12);
            piVar10[0x37] = *local_28cc;
            piVar10[0x38] = local_28cc[1];
            piVar10[0xd6] = 0x447a0000;
            piVar10[0x117] = -1;
            piVar10[0x118] = -1;
            if (piVar10[0xef] != 0) {
              local_28cc = piVar10 + 0xef;
              FUN_004cf210();
            }
            piVar10[0xef] = param_1;
            FUN_004cdcf0();
            (**(code **)(*piVar10 + 0xc))();
            iVar8 = (int)local_28c4;
          }
          local_28c4 = (uint **)(iVar8 + 1);
        } while ((int)local_28c4 < 2);
        local_28c4 = (uint **)0x1a5;
        FUN_00956780();
        FUN_0092dc30(local_28c4,0x3f800000,2,0,0x3f800000,0);
        FUN_00703670();
        goto LAB_004c5097;
      }
    }
    cVar3 = FUN_0040a4d0();
    if (cVar3 == '\0') {
      cVar3 = FUN_0040a550();
      if (cVar3 != '\0') {
        *(undefined4 *)(param_1 + 0xbc4) = *(undefined4 *)(param_1 + 0xb64);
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
    else {
      iVar8 = FUN_006ac760();
      if ((iVar8 != 0) && (puVar30 = (undefined4 *)FUN_0040b1a0(), puVar30 != (undefined4 *)0x0)) {
        AI_0043ef30();
        local_2804 = 0x3fc00000;
        local_280c = 0xbd99999a;
        local_2810 = 0xc04ccccd;
        local_2788 = 0x42700000;
        local_27c0 = 0x400000;
        local_27bc = 0;
        local_279c = FUN_006eef60();
        local_279c = local_279c % 0xf;
        local_27b8 = *puVar30;
        local_27b4 = puVar30[1];
        local_29f4 = 0x40400000;
        local_29f0 = 0x40a00000;
        FUN_006cb2e0(param_1 + 0x33c,&local_29f4,9,local_2818);
      }
      uVar7 = 0;
      uVar4 = local_2944;
      if (local_2944 != 0) {
        do {
          if ((*(int *)(param_1 + 0x7c) != 0) &&
             (puVar30 = (undefined4 *)FUN_0040ac70(), uVar4 = local_2944,
             puVar30 != (undefined4 *)0x0)) {
            iVar8 = *(int *)(local_294c + uVar7 * 4);
            *(undefined4 *)(iVar8 + 0xdc) = *puVar30;
            *(undefined4 *)(iVar8 + 0xe0) = puVar30[1];
          }
          uVar7 = uVar7 + 1;
        } while (uVar7 < uVar4);
      }
      iVar8 = *(int *)(param_1 + 0x410);
      if (iVar8 < 1) {
        if (((iVar8 < 0) &&
            (iVar8 = iVar8 + ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)),
            *(int *)(param_1 + 0x410) = iVar8, iVar8 == 0)) && (local_2954 == 0)) {
          uVar4 = FUN_006eef60();
          *(uint *)(param_1 + 0x410) = uVar4 % 0x78 + 0x3c;
          local_28e8 = (uint **)FUN_006be840();
          fVar28 = (float)local_28e8[0xcf] - *(float *)(param_1 + 0x33c);
          local_30 = (undefined4 *)((float)local_28e8[0xd0] - *(float *)(param_1 + 0x340));
          local_38 = CONCAT44(fVar28,(undefined4)local_38);
          piVar10 = (int *)(fVar28 * fVar28 + (float)local_30 * (float)local_30);
          FUN_00435a50();
          local_28cc = piVar10;
          FUN_00a10030();
          local_2a2c[1] = local_2940;
          local_2a24 = local_293c;
          local_28c4 = (uint **)0x0;
          local_2a2c[0] = (float)((uint)local_293c ^ DAT_00bacb70);
          local_2a20 = (uint)local_2940 ^ DAT_00bacb70;
          local_28f4 = (uint *)(local_2940 * DAT_00baa2d0);
          local_2924 = (uint **)((float)local_293c * DAT_00baa2d0);
          do {
            local_2a38 = (float)local_28cc *
                         ((float)local_2924 + local_2a2c[(int)local_28c4 * 2 + 1] * DAT_00baa2d0) +
                         *(float *)(param_1 + 0x340);
            local_2a3c = (float)local_28cc *
                         ((float)local_28f4 + local_2a2c[(int)local_28c4 * 2] * DAT_00baa2d0) +
                         *(float *)(param_1 + 0x33c);
            FUN_00812f50(local_2a94,&local_2a3c,0,0,0);
            uVar12 = FUN_006eef60();
            piVar10 = (int *)FUN_00428b20(1000,0x60,local_2a94,&DAT_00c7b640,param_1,0,uVar12);
            piVar10[0x117] = -1;
            piVar10[0x118] = -1;
            if (piVar10[0xef] != 0) {
              local_2904 = piVar10 + 0xef;
              FUN_004cf210();
            }
            piVar10[0xef] = param_1;
            FUN_004cdcf0();
            if (piVar10[0xf1] != 0) {
              local_2904 = piVar10 + 0xf1;
              FUN_004cf210();
            }
            piVar10[0xf1] = (int)local_28e8;
            FUN_004cdcf0();
            (**(code **)(*piVar10 + 0xc))();
            local_28c4 = (uint **)((int)local_28c4 + 1);
          } while ((int)local_28c4 < 2);
        }
      }
      else {
        iVar8 = iVar8 - ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
        *(int *)(param_1 + 0x410) = iVar8;
        if (iVar8 == 10) {
          uVar4 = 0;
          if (local_2944 != 0) {
            do {
              iVar8 = uVar4 * 4;
              uVar4 = uVar4 + 1;
              *(undefined *)(*(int *)(local_294c + iVar8) + 0x173) = 1;
              param_1 = local_28f0;
            } while (uVar4 < local_2944);
          }
        }
        else if (iVar8 == 0) {
          if (local_2954 != 0) {
            uVar4 = 0;
            do {
              iVar8 = uVar4 * 4;
              uVar4 = uVar4 + 1;
              *(undefined *)(*(int *)(local_295c + iVar8) + 0x173) = 1;
              param_1 = local_28f0;
            } while (uVar4 < local_2954);
          }
          FUN_0040a380("LaserEnd",0);
        }
      }
    }
    goto LAB_004c5097;
  }
  if (iVar8 == 0xd) {
    cVar3 = FUN_0040a4d0();
    if ((cVar3 != '\0') && (cVar3 = FUN_0040b030(), cVar3 != '\0')) {
      FUN_009568e0(0x1a5,2,0,0x3f800000);
    }
    cVar3 = FUN_0040a550();
    if (cVar3 != '\0') {
      FUN_0040a380("OpenMouthLoop",0);
      uVar4 = FUN_006eef60();
      *(uint *)(param_1 + 0xbc4) = (uVar4 & 0xf) + 0xc;
    }
    cVar3 = FUN_0040a4d0();
    if (((cVar3 == '\0') ||
        ((int)*(float *)(param_1 + 0x3a4) == (int)*(float *)(param_1 + 0x3a0) ||
         (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0) < 0)) ||
       (uVar4 = FUN_006eef60(), (uVar4 & 3) != 0)) {
      cVar3 = FUN_0040a550();
      if (cVar3 != '\0') {
        *(undefined4 *)(param_1 + 0xb64) = 700;
        FUN_0040a380("TurnConcave",0);
        puVar30 = (undefined4 *)FUN_0081e9d0(local_2adc,*(float *)(param_1 + 0x370) * DAT_00baa4cc);
        *(undefined4 *)(param_1 + 0x334) = *puVar30;
        *(undefined4 *)(param_1 + 0x338) = puVar30[1];
        uVar4 = FUN_006eef60();
        *(uint *)(param_1 + 0xbc4) = uVar4 | 1;
      }
    }
    else {
      iVar8 = FUN_006eef60();
      local_2934 = *(float *)(param_1 + 0x340) + 0.0;
      fVar28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 -
               0.0;
      if (fVar28 <= 0.0) {
        fVar28 = 0.0;
      }
      if (DAT_00baa454 <= fVar28) {
        fVar28 = DAT_00baa454;
      }
      local_2938 = (fVar28 * DAT_00baa7e8 - DAT_00baa6fc) / DAT_00baa324 +
                   *(float *)(param_1 + 0x33c);
      pfVar24 = (float *)FUN_00813520(local_2b04,&local_2938,0,1,0,0);
      local_2938 = *pfVar24;
      local_2934 = pfVar24[1];
      iVar8 = FUN_006be840();
      local_29bc = *(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0x33c);
      local_29b8 = *(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340);
      pfVar24 = (float *)FUN_00a10030();
      local_30 = (undefined4 *)(pfVar24[1] * DAT_00baa6fc);
      local_38 = CONCAT44(*pfVar24 * DAT_00baa6fc,(undefined4)local_38);
      uVar12 = FUN_006eef60();
      local_28ec = (uint *)FUN_00428b20(0x129,3,&local_2938,(int)&local_38 + 4,param_1,0,uVar12);
      iVar8 = FUN_006eef60();
      fVar28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 -
               0.0;
      if (fVar28 <= 0.0) {
        fVar28 = 0.0;
      }
      if (DAT_00baa454 <= fVar28) {
        fVar28 = DAT_00baa454;
      }
      local_30 = (undefined4 *)((*(float *)(param_1 + 0x340) + _DAT_00baa964) - local_2934);
      local_38 = CONCAT44(((fVar28 * _DAT_00baa8c0 - DAT_00baa860) / DAT_00baa324 +
                          *(float *)(param_1 + 0x33c)) - local_2938,(undefined4)local_38);
      cVar3 = FUN_00417430(0,0x10000000);
      if (cVar3 != '\0') {
        local_28ec[0xe0] = 0x41200000;
        local_28ec[0xe1] = 0x41200000;
      }
      local_28ec[0x62] = 0;
      (**(code **)(*local_28ec + 0xc))();
      puVar22 = (uint *)FUN_00a10100(local_2afc,0x40e00000);
      local_28ec[0xd8] = *puVar22;
      local_28ec[0xd9] = puVar22[1];
      iVar8 = *(int *)(param_1 + 0xbc4);
      if (iVar8 < 1) {
        FUN_0040a380("CloseMouth",0);
        iVar8 = *(int *)(param_1 + 0xbc4);
      }
LAB_004c3175:
      *(int *)(param_1 + 0xbc4) = iVar8 + -1;
    }
    goto LAB_004c5097;
  }
  if (iVar8 == 300) {
    iVar8 = *(int *)(param_1 + 0xbc0);
    local_2908 = (uint **)(&PTR_s_FaceVanishFromLeft_00b6013c)[iVar8];
    puVar2 = (&PTR_s_AttackLoopLeft_00b6014c)[iVar8];
    local_28cc = (int *)(&PTR_s_FaceAppearLeft_00b6015c)[iVar8];
    cVar3 = FUN_0040a4d0();
    if (cVar3 == '\0') {
      cVar3 = FUN_0040a550();
      if (cVar3 == '\0') {
        cVar3 = FUN_0040a550();
        if (cVar3 != '\0') {
          FUN_0040a380(puVar2,0);
          uVar4 = FUN_006eef60();
          *(uint *)(param_1 + 0x410) = uVar4 % 0x78 + 0x3c;
        }
      }
      else {
        if (*(int *)(param_1 + 0xbc4) == 0) {
          iVar8 = FUN_006be840();
          local_30 = (undefined4 *)(*(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340));
          local_38 = CONCAT44(*(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0x33c),
                              (undefined4)local_38);
          uVar4 = FUN_0067f260();
        }
        else {
          uVar4 = FUN_006eef60();
          uVar4 = uVar4 & 3;
        }
        puVar2 = (&PTR_s_FaceAppearLeft_00b6015c)[uVar4];
        *(uint *)(param_1 + 0xbc0) = uVar4;
        FUN_0040a380(puVar2,0);
      }
    }
    else {
      iVar8 = FUN_006ac760();
      if (iVar8 != 0) {
        AI_0043ef30();
        if ((*(int *)(param_1 + 0xbc0) == 0) ||
           (local_2764 = 0xbe2e147b, *(int *)(param_1 + 0xbc0) == 2)) {
          local_2764 = 0xbe3851ec;
        }
        local_26dc = 6;
        local_2718 = 0x48000000;
        local_2714 = 0;
        local_274c = 0x3f80c49c;
        FUN_00435a80();
        FUN_004071f0();
        local_275c = 0x3fc00000;
        iVar8 = 0;
        do {
          if (iVar8 == 0) {
            iVar19 = *(int *)(param_1 + 0x7c);
joined_r0x004c331a:
            if (iVar19 != 0) {
LAB_004c3322:
              local_28e8 = (uint **)FUN_0040ac70();
              iVar19 = local_28f0;
              if (local_28e8 != (uint **)0x0) {
                local_a0 = 0xbf860a92;
                local_38 = CONCAT44(&local_94,&local_a0);
                local_30 = &local_88;
                local_9c = 0x3f860a92;
                local_98 = 0;
                local_94 = 0xbf567750;
                local_90 = 0x3f567750;
                local_8c = 0x3e0efa35;
                local_88 = 0xbf1c61ab;
                local_84 = 0x3f1c61ab;
                local_80 = 0xbe0efa35;
                local_28ec = (uint *)(((*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328)
                                       ) / 7) % 3);
                local_28e0 = *(uint ***)(param_1 + 0xbc0);
                uVar4 = local_2714 & 0xfffffffe;
                local_2718 = local_2718 & 0xfff3ffff;
                piVar10 = (int *)((float)((int)local_28e0 + -2) * (float)DAT_00baa54c +
                                 *(float *)(*(int *)((int)&local_38 + (int)local_28ec * 4) +
                                           iVar8 * 4));
                local_28cc = (int *)((uint)local_28e0 & 1);
                uVar12 = DAT_00baa028;
                if (local_28cc == (int *)0x0) {
                  uVar12 = DAT_00baa038;
                }
                local_7c = (uint *)0x34;
                local_28c4 = &local_7c;
                if (local_28cc != (int *)0x0) {
                  local_28c4 = &local_70;
                }
                local_78 = 0x28;
                local_74 = 0x20;
                local_70 = (uint *)&DAT_00000050;
                local_6c = 0x44;
                local_68 = 0x38;
                if (iVar8 == 1) {
                  uVar7 = local_2718 | 0x40000;
LAB_004c34a4:
                  local_26f0 = local_2718 | 0x400000;
                  local_26e4 = local_28c4[(int)local_28ec];
                  local_26f4 = -(int)local_26e4;
                  local_2750 = uVar12;
                  local_2718 = uVar7;
                  local_2714 = uVar4 | 1;
                  local_26ec = uVar4;
                }
                else {
                  local_2714 = uVar4;
                  if (iVar8 == 0) {
                    uVar7 = local_2718 | 0x80000;
                    goto LAB_004c34a4;
                  }
                }
                local_2904 = piVar10;
                FUN_0041d520();
                local_28cc = piVar10;
                piVar10 = local_2904;
                FUN_0041d540();
                local_26e0 = 0x41f00000;
                local_2710 = (float)*local_28e8 / DAT_00baa324 + DAT_00ba9fe4;
                local_270c = (float)local_28e8[1] / DAT_00baa324 + DAT_00baa88c;
                if (local_28e0 != (uint **)0x1) {
                  local_26e0 = 0x41a00000;
                }
                local_29c4 = (float)piVar10 * DAT_00baa7a4;
                local_29c0 = (float)local_28cc * DAT_00baa7a4;
                FUN_006cb2e0(iVar19 + 0x33c,&local_29c4,0,local_2770);
                param_1 = iVar19;
              }
            }
          }
          else {
            if (iVar8 == 1) {
              iVar19 = *(int *)(param_1 + 0x7c);
              goto joined_r0x004c331a;
            }
            if (iVar8 == 2) {
              if (*(int *)(param_1 + 0x7c) != iVar8 + -2) goto LAB_004c3322;
              break;
            }
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < 3);
      }
      iVar8 = *(int *)(param_1 + 0x410) -
              ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
      *(int *)(param_1 + 0x410) = iVar8;
      if (iVar8 < 1) {
        FUN_0040a380(local_2908,0);
        iVar8 = *(int *)(param_1 + 0xbc4);
        if (0 < iVar8) goto LAB_004c3175;
        goto LAB_004c35fb;
      }
    }
    goto LAB_004c5097;
  }
  if (iVar8 != 500) goto LAB_004c5097;
  cVar3 = FUN_0040a550();
  if (cVar3 != '\0') {
    *(undefined4 *)(param_1 + 0xbc4) = 500;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0x1e;
    goto LAB_004c5097;
  }
  iVar8 = FUN_0040a780();
  if ((iVar8 < 4) || (iVar8 = FUN_0040a780(), 0x14 < iVar8)) goto LAB_004c5097;
  FUN_009568e0(0x136,0x14,0,0x3f800000);
  iVar8 = *(int *)(DAT_00c71678 + 0x18300);
  local_2908 = *(uint ***)(iVar8 + 0x14);
  local_28ec = *(uint **)(iVar8 + 0x18);
  local_28e0 = *(uint ***)(iVar8 + 0x1c);
  local_290c = *(uint **)(iVar8 + 0x20);
  local_2920 = DAT_00c7b640;
  local_291c = DAT_00c7b644;
  local_28dc = (uint **)0x0;
  local_28e4 = (uint **)0x0;
  uVar4 = FUN_006eef60();
  switch(uVar4 & 3) {
  case 0:
    iVar8 = FUN_006eef60();
    local_2920 = local_2908;
    local_28dc = DAT_00baad60;
    local_291c = (uint *)(((float)local_290c - (float)local_28ec) *
                          (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                          DAT_00ba9ff4 + (float)local_28ec);
    local_28e4 = DAT_00baa54c;
    break;
  case 1:
    iVar8 = FUN_006eef60();
    local_291c = local_28ec;
    fVar28 = ((float)local_28e0 - (float)local_2908) *
             (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4;
    local_28dc = (uint **)0x0;
    local_28e4 = DAT_00baa708;
    goto LAB_004c3982;
  case 2:
    iVar8 = FUN_006eef60();
    local_2920 = local_28e0;
    local_291c = (uint *)(((float)local_290c - (float)local_28ec) *
                          (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                          DAT_00ba9ff4 + (float)local_28ec);
    local_28dc = DAT_00baa54c;
    local_28e4 = DAT_00baa77c;
    break;
  case 3:
    iVar8 = FUN_006eef60();
    fVar28 = ((float)local_28e0 - (float)local_2908) *
             (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4;
    local_291c = local_290c;
    local_28dc = DAT_00baa708;
    local_28e4 = DAT_00baa7a8;
LAB_004c3982:
    local_2920 = (uint **)(fVar28 + (float)local_2908);
  }
  iVar8 = FUN_006eef60();
  local_28cc = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * ((float)local_28e4 - (float)local_28dc) + (float)local_28dc);
  piVar10 = local_28cc;
  FUN_0041d520();
  local_2904 = piVar10;
  FUN_0041d540();
  iVar8 = FUN_006eef60();
  fVar28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4;
  local_2920 = (uint **)((float)local_2920 + fVar28 * (float)local_28cc * DAT_00baa950);
  local_291c = (uint *)((float)local_291c + fVar28 * (float)local_2904 * DAT_00baa950);
  uVar12 = FUN_006eef60();
  piVar10 = (int *)FUN_00428b20(1000,0x16,&local_2920,&DAT_00c7b640,param_1,0,uVar12);
  iVar8 = FUN_006eef60();
  pcVar1 = *(code **)(*piVar10 + 0xc);
  fVar28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 +
           DAT_00baa630;
  fVar33 = fVar28 * DAT_00c37940;
  piVar10[0x39] = (int)(fVar28 * DAT_00c3793c);
  piVar10[0x3a] = (int)fVar33;
  (*pcVar1)();
  FUN_00703670();
LAB_004c5097:
  iVar8 = *(int *)(param_1 + 0xb64);
  if ((((iVar8 != 0x10) && (iVar8 != 700)) && (iVar8 != 0x2c6)) && (iVar8 != 0x2d0))
  goto LAB_004c5765;
  local_28cc = (int *)(param_1 + 0x48);
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
LAB_004c5113:
    local_28c5 = '\x01';
  }
  else {
    ppbVar6 = *(byte ***)(param_1 + 0x7c);
    if (&DAT_0000000f < ppbVar6[5]) {
      ppbVar6 = (byte **)*ppbVar6;
    }
    pcVar16 = "TurnConcave";
    do {
      bVar15 = *(byte *)ppbVar6;
      bVar26 = bVar15 < (byte)*pcVar16;
      if (bVar15 != *pcVar16) {
LAB_004c5103:
        uVar4 = -(uint)bVar26 | 1;
        goto LAB_004c5108;
      }
      if (bVar15 == 0) break;
      bVar15 = *(byte *)((int)ppbVar6 + 1);
      bVar26 = bVar15 < ((byte *)pcVar16)[1];
      if (bVar15 != ((byte *)pcVar16)[1]) goto LAB_004c5103;
      ppbVar6 = (byte **)((int)ppbVar6 + 2);
      pcVar16 = (char *)((byte *)pcVar16 + 2);
    } while (bVar15 != 0);
    uVar4 = 0;
LAB_004c5108:
    local_28c5 = '\0';
    if (uVar4 != 0) goto LAB_004c5113;
  }
  uVar4 = 0;
  if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
    do {
      iVar8 = FUN_009b92c0();
      local_30 = (undefined4 *)
                 (*(float *)(param_1 + 0x370) * DAT_00baa380 + *(float *)(iVar8 + 0x370));
      iVar8 = FUN_009b92c0();
      fVar33 = *(float *)(param_1 + 0x33c) - *(float *)(iVar8 + 0x33c);
      fVar28 = *(float *)(param_1 + 0x340) - *(float *)(iVar8 + 0x340);
      if (fVar28 * fVar28 + fVar33 * fVar33 < (float)local_30 * (float)local_30) {
        if (local_28c5 != '\0') {
          FUN_0040a380("BecomeConvex",0);
          *(undefined4 *)(param_1 + 0xbc4) = *(undefined4 *)(param_1 + 0xb64);
          goto LAB_004c55ec;
        }
        break;
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2
                           ));
  }
  iVar8 = *(int *)(param_1 + 0xb64);
  if (iVar8 == 0x10) {
    *(int *)(param_1 + 0x410) =
         *(int *)(param_1 + 0x410) +
         ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
LAB_004c5233:
    uVar4 = 0;
    local_28c4 = (uint **)0x0;
    local_30 = *(undefined4 **)(DAT_00c71678 + 0x18300);
    if (local_30[0x499] != 0) {
      do {
        iVar8 = *(int *)(local_30[0x497] + uVar4 * 4);
        if (((*(int *)(iVar8 + 0x28) == 9) && (*(int *)(iVar8 + 0x34) == *(int *)(param_1 + 0x28)))
           && (*(char *)(iVar8 + 0x173) == '\0')) {
          local_29dc = *(undefined4 *)(iVar8 + 0x33c);
          local_29d8 = *(undefined4 *)(iVar8 + 0x340);
          cVar3 = FUN_00813360(&local_29dc,0);
          if (cVar3 != '\0') {
            local_28c4 = (uint **)((int)local_28c4 + 1);
          }
        }
        uVar4 = uVar4 + 1;
      } while (uVar4 < (uint)local_30[0x499]);
    }
    uVar4 = FUN_006eef60();
    if ((((local_28c4 == (uint **)(uVar4 % 10) || (int)local_28c4 - (int)(uint **)(uVar4 % 10) < 0)
         && (local_28c5 != '\0')) && (0x1e < *(int *)(param_1 + 0x410))) ||
       (0xb4 < *(int *)(param_1 + 0x410))) {
LAB_004c55dd:
      FUN_0040a380("BecomeConvex",0);
LAB_004c55ec:
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined4 *)(param_1 + 0x410) = 0x1e;
      *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
      *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    }
  }
  else {
    if (((iVar8 != 700) && (iVar8 != 0x2c6)) && (iVar8 != 0x2d0)) goto LAB_004c5233;
    cVar3 = FUN_006ac710(10,0);
    if ((cVar3 != '\0') && (uVar4 = FUN_006eef60(), (uVar4 & 7) == 0)) {
      fVar28 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
               *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
      FUN_00435a50();
      if ((DAT_00baa2d0 < fVar28) && (local_2ab8 < 10)) {
        if (fVar28 <= DAT_00ba9fe4) {
          local_2930 = *(float *)(param_1 + 0x360);
          local_292c = *(float *)(param_1 + 0x364);
        }
        else {
          fVar28 = ((*(float *)(param_1 + 0x370) + DAT_00baa8d0) * DAT_00baad50) / fVar28;
          local_292c = fVar28 * *(float *)(param_1 + 0x364);
          local_2930 = fVar28 * *(float *)(param_1 + 0x360);
        }
        iVar8 = FUN_006eef60();
        fVar28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 -
                 0.0;
        if (fVar28 <= 0.0) {
          fVar28 = 0.0;
        }
        if (DAT_00baa454 <= fVar28) {
          fVar28 = DAT_00baa454;
        }
        puVar30 = (undefined4 *)((fVar28 * DAT_00baa9b4 - DAT_00baa910) * DAT_00baa088);
        local_30 = puVar30;
        FUN_0041d540();
        local_293c = puVar30;
        puVar30 = local_30;
        FUN_0041d520();
        fVar28 = local_2930 * (float)puVar30;
        local_2930 = (local_2930 * (float)local_293c - local_292c * (float)puVar30) +
                     *(float *)(param_1 + 0x33c);
        local_292c = local_292c * (float)local_293c + fVar28 + *(float *)(param_1 + 0x340);
        uVar12 = FUN_006eef60();
        uVar36 = 0xc5d5ac;
        pTVar39 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar38 = 0;
        uVar12 = FUN_00428b20(1000,0xf,&local_2930,&DAT_00c7b640,0,3,uVar12);
        __RTDynamicCast(uVar12,uVar38,pTVar39,uVar36);
        FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
        uVar12 = FUN_006eef60();
        FUN_00428b20(0x12a,0,&local_2930,&DAT_00c7b640,param_1,0,uVar12);
      }
    }
    iVar8 = *(int *)(param_1 + 0xb64);
    if (iVar8 == 0x2d0) {
      puVar30 = (undefined4 *)FUN_006bec40(local_2aec,0);
      *(undefined4 *)(param_1 + 0x334) = *puVar30;
      *(undefined4 *)(param_1 + 0x338) = puVar30[1];
      *(undefined4 *)(param_1 + 0xbb0) = 0;
      iVar8 = *(int *)(param_1 + 0xb64);
    }
    if (iVar8 == 700) {
      fVar28 = *(float *)(param_1 + 0x340) - *(float *)(param_1 + 0x338);
      fVar33 = *(float *)(param_1 + 0x33c) - *(float *)(param_1 + 0x334);
      fVar28 = fVar28 * fVar28 + fVar33 * fVar33;
      FUN_00435a50();
      if ((DAT_00baa81c <= fVar28) &&
         (iVar19 = FUN_0041b690(0x129,0xffffffff,0xffffffff), 2 < iVar19)) {
LAB_004c566c:
        if (local_28c5 != '\0') {
          if ((iVar8 == 0x2c6) || (iVar8 == 0x2d0)) {
            uVar36 = 0xb600c0;
          }
          else {
            uVar36 = 0xb6012c;
          }
          FUN_0040a380(uVar36);
        }
        goto LAB_004c5765;
      }
      goto LAB_004c55dd;
    }
    if (iVar8 == 0x2c6) {
      fVar28 = *(float *)(param_1 + 0x340) - *(float *)(param_1 + 0x338);
      fVar33 = *(float *)(param_1 + 0x33c) - *(float *)(param_1 + 0x334);
      fVar28 = fVar28 * fVar28 + fVar33 * fVar33;
      FUN_00435a50();
      if (DAT_00baa81c <= fVar28) {
        iVar19 = *(int *)(param_1 + 0x410);
        goto joined_r0x004c56ac;
      }
    }
    else {
      if (iVar8 != 0x2d0) goto LAB_004c566c;
      iVar19 = *(int *)(param_1 + 0x410);
joined_r0x004c56ac:
      if (iVar19 < 0x5b) goto LAB_004c566c;
    }
    if ((*(uint *)(param_1 + 0xbc4) & 0xf) == 0) {
      *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
      *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
      FUN_0040a380("BecomeConvex",0);
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined4 *)(param_1 + 0x410) = 0x1e;
    }
    else {
      *(uint *)(param_1 + 0xbc4) = *(uint *)(param_1 + 0xbc4) - 1;
      uVar4 = FUN_006eef60();
      *(uint *)(param_1 + 0xbc4) = uVar4 & 0xfffffff0 ^ *(uint *)(param_1 + 0xbc4) | 0x10;
      puVar30 = (undefined4 *)FUN_0081e9d0(local_2af4,*(float *)(param_1 + 0x370) * DAT_00baa4cc);
      *(undefined4 *)(param_1 + 0x334) = *puVar30;
      *(undefined4 *)(param_1 + 0x338) = puVar30[1];
    }
  }
LAB_004c5765:
  if (local_2950[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,0xc);
    FUN_00a648b0(0,0);
  }
  if (local_2960[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,0xd);
    FUN_00a648b0(0,0);
  }
  if (local_2974[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,0xe);
    FUN_00a648b0(0,0);
  }
  if (local_2ac4[0] == '\0') {
    local_14 = CONCAT31(local_14._1_3_,0xf);
    FUN_00a648b0(0,0);
  }
  local_14 = 0xffffffff;
  if (local_2a64[0] == '\0') {
    local_14 = 0x10;
    FUN_00a648b0(0,0);
  }
LAB_004c5814:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
LAB_004c0ef3:
  uVar4 = -(uint)bVar26 | 1;
LAB_004c0ef8:
  if ((uVar4 != 0) || ((*(byte *)(ppbVar6 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
  goto LAB_004c0f11;
  goto LAB_004c0f2f;
code_r0x004c10ec:
  uVar4 = uVar4 + 1;
  if (uVar7 <= uVar4) goto LAB_004c10f1;
  goto LAB_004c10e6;
code_r0x004c13b9:
  uVar7 = uVar7 + 1;
  if (uVar4 <= uVar7) goto LAB_004c13be;
  goto LAB_004c13b0;
code_r0x004c157e:
  uVar7 = uVar7 + 1;
  if (uVar4 <= uVar7) goto LAB_004c1583;
  goto LAB_004c1575;
code_r0x004c16a9:
  uVar4 = uVar4 + 1;
  if (uVar7 <= uVar4) goto LAB_004c16ae;
  goto LAB_004c16a0;
}

