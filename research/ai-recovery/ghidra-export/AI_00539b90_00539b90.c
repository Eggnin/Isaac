/* Local J460 decompiler output.
 * VA: 0x00539b90
 * Entry: 00539b90
 * Dispatcher: 0x006c2990
 * Types: 228,251
 * Identities: 228.0.0,228.10.0,251.0.0,251.10.0
 * Evidence: dispatcher=0x006c2990; end=0x0053ab40; instructions=871
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=228,251; identities=228.0.0,228.10.0,251.0.0,251.10.0;
   dispatcher=0x006c2990; end=0x0053ab40; instructions=871 */

void __fastcall AI_00539b90(int *param_1)

{
  float *pfVar1;
  int **ppiVar2;
  byte bVar3;
  int iVar4;
  byte **ppbVar5;
  int iVar6;
  undefined *puVar7;
  char cVar8;
  uint uVar9;
  uint uVar10;
  undefined4 uVar11;
  int *piVar12;
  float *pfVar13;
  byte **ppbVar14;
  byte *pbVar15;
  int iVar16;
  int iVar17;
  bool bVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  undefined4 uVar27;
  TypeDescriptor *pTVar28;
  TypeDescriptor *pTVar29;
  undefined4 uVar30;
  undefined4 uVar31;
  int local_160 [8];
  undefined4 local_140;
  undefined4 uStack_13c;
  undefined4 local_138;
  undefined local_134 [8];
  float local_12c;
  float local_128;
  float local_124;
  int *local_120;
  float local_11c;
  int *local_118;
  char local_111;
  undefined local_68 [12];
  float local_5c;
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2a65;
  local_1c = ExceptionList;
  uVar9 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar16 = param_1[0x2d9];
  local_118 = param_1;
  local_24 = uVar9;
  if (iVar16 == 0) {
    param_1[0x2d9] = 3;
    if (param_1[0xb] == 0) {
      param_1[0x104] = 0;
      puStack_20 = &stack0xfffffffc;
      cVar8 = FUN_0040aaf0("Awaken",1);
      if ((cVar8 != '\0') && (param_1[0x27] != 0)) {
        FUN_00408e00();
      }
      iVar16 = DAT_00c71678;
      fVar20 = DAT_00baa904;
      if (((param_1[0xd] == 0x109) && (param_1[0xe] == 1)) && (param_1[10] == 0xfb)) {
        param_1[0x2f1] = 1;
      }
      else {
        pfVar13 = (float *)(param_1 + 0xcf);
        param_1[0x2f1] = 0;
        param_1[0x2f0] = -1;
        uVar9 = DAT_00bacb40;
        iVar17 = *(int *)(iVar16 + 0x18300);
        fVar22 = *pfVar13;
        fVar23 = *(float *)(iVar17 + 0x14) - DAT_00baa87c;
        fVar26 = *(float *)(iVar17 + 0x18) + 0.0;
        fVar24 = *(float *)(iVar17 + 0x1c) + DAT_00baa87c;
        fVar25 = *(float *)(iVar17 + 0x20) + fVar20;
        fVar19 = (float)((uint)(fVar23 - fVar22) & DAT_00bacb40);
        fVar21 = DAT_00baac34;
        if (fVar19 < DAT_00baac34) {
          param_1[0xcd] = (int)fVar23;
          param_1[0xce] = param_1[0xd0];
          fVar22 = (float)param_1[0xcf];
          fVar21 = fVar19;
        }
        fVar19 = (float)((uint)(fVar24 - fVar22) & uVar9);
        if (fVar19 < fVar21) {
          param_1[0xcd] = (int)fVar24;
          param_1[0xce] = param_1[0xd0];
          fVar22 = (float)param_1[0xcf];
          fVar21 = fVar19;
        }
        fVar19 = (float)param_1[0xd0];
        if ((float)((uint)(fVar26 - fVar19) & uVar9) < fVar21) {
          param_1[0xcd] = (int)fVar22;
          fVar21 = fVar26 - DAT_00baa87c;
          param_1[0xce] = (int)fVar26;
          fVar22 = (float)param_1[0xcf];
          fVar21 = fVar21 - fVar19;
          fVar19 = (float)param_1[0xd0];
          fVar21 = (float)((uint)fVar21 & uVar9);
        }
        if ((float)((uint)(fVar25 - fVar19) & uVar9) < fVar21) {
          param_1[0xcd] = (int)fVar22;
          fVar22 = fVar25 - DAT_00baa87c;
          param_1[0xce] = (int)fVar25;
          fVar21 = (float)((uint)(fVar22 - fVar19) & uVar9);
        }
        if (fVar20 < fVar21) {
          local_11c = *(float *)(iVar16 + 0x18300);
          uVar9 = 0;
          pfVar1 = (float *)(param_1 + 0xd0);
          do {
            iVar17 = (int)(((*pfVar13 + *(float *)((int)&DAT_00c5c82c + uVar9)) - fVar20) / fVar20 +
                          DAT_00baa2d0);
            iVar16 = (int)(((*pfVar1 + *(float *)((int)&DAT_00c5c830 + uVar9)) - DAT_00baaa00) /
                           fVar20 + DAT_00baa2d0);
            if ((((-1 < iVar17) &&
                 (iVar4 = *(int *)((int)local_11c + 0xc), param_1 = local_118, iVar17 < iVar4)) &&
                ((-1 < iVar16 &&
                 ((iVar16 < *(int *)((int)local_11c + 0x10) &&
                  (uVar10 = iVar4 * iVar16 + iVar17, uVar10 < 0x1c0)))))) &&
               ((iVar16 = *(int *)((int)local_11c + 0x24 + uVar10 * 4), iVar16 != 0 &&
                (*(int *)(iVar16 + 0x3c) == 3)))) {
              fVar22 = (float)(*(int *)(iVar16 + 0x24) / iVar4) * fVar20 + DAT_00baaa00;
              local_118[0xcd] = (int)((float)(*(int *)(iVar16 + 0x24) % iVar4) * fVar20 + fVar20);
              local_118[0xce] = (int)fVar22;
              local_118[0x2f0] = *(int *)(iVar16 + 0x24);
              break;
            }
            uVar9 = uVar9 + 8;
          } while (uVar9 < 0x20);
          pfVar13 = (float *)(param_1 + 0xcf);
        }
        local_118 = (int *)((float)param_1[0xce] - pfVar13[1]);
        local_120 = (int *)((float)param_1[0xcd] - *pfVar13);
        fVar20 = (float)local_118 * (float)local_118 + (float)local_120 * (float)local_120;
        FUN_00435a50();
        if (DAT_00baa9d0 < fVar20) {
          fVar20 = (DAT_00baa9d0 / fVar20 - DAT_00baa454) * DAT_00baa06c;
          param_1[0xd8] =
               (int)((float)local_120 * fVar20 * (float)param_1[0xe7] + (float)param_1[0xd8]);
          param_1[0xd9] =
               (int)((float)local_118 * fVar20 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        }
        local_11c = 0.0;
        local_118 = (int *)0x7;
        do {
          if ((param_1[0x2f0] < 0) || (local_11c != 0.0)) {
            uVar11 = FUN_006eef60();
            uVar30 = 0;
            pTVar29 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
            pTVar28 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar27 = 0;
            uVar11 = FUN_00428b20(param_1[10],10,pfVar13,&DAT_00c7b640,param_1,0,uVar11);
            piVar12 = (int *)__RTDynamicCast(uVar11,uVar27,pTVar28,pTVar29,uVar30);
            if (piVar12[0xef] != 0) {
              local_120 = piVar12 + 0xef;
              FUN_004cf210(&local_120);
            }
            piVar12[0xef] = (int)param_1;
            FUN_004cdcf0(piVar12 + 0xef);
            piVar12[0xcd] = param_1[0xcd];
            iVar16 = param_1[0xce];
            piVar12[0x5a] = piVar12[0x5a] & 0xfffffffb;
            piVar12[0xce] = iVar16;
            fVar20 = (float)(int)local_11c / DAT_00baa7b8;
            piVar12[0x5b] = piVar12[0x5b];
            piVar12[0x2ed] = (int)fVar20;
            if (-1 < param_1[0x2f0]) {
              piVar12[0x37] = 0;
              piVar12[0x38] = (int)((float)(int)local_118 + (float)(int)local_118);
            }
            (**(code **)(*piVar12 + 0xc))();
            pfVar13 = (float *)(param_1 + 0xcf);
          }
          local_118 = (int *)((int)local_118 + -1);
          local_11c = (float)((int)local_11c + 1);
        } while (local_118 < (int *)0x80000000);
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (param_1[0xb] == 10) {
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380("UmbilicalCord",0);
        param_1[0x5a] = param_1[0x5a] | 0x40000;
        param_1[0xd5] = -1000;
        param_1[0x62] = 0;
        param_1[0x61] = 0;
        param_1[0x5b] = param_1[0x5b];
      }
    }
    iVar6 = _UNK_00babf4c;
    iVar4 = _UNK_00babf48;
    iVar17 = _UNK_00babf44;
    iVar16 = _DAT_00babf40;
    if (param_1[10] == 0xfb) {
      local_140 = 0;
      uStack_13c = 0;
      local_138 = 0;
      if (param_1 + 0x79 != local_160) {
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x81) = 0;
        param_1[0x79] = iVar16;
        param_1[0x7a] = iVar17;
        param_1[0x7b] = iVar4;
        param_1[0x7c] = iVar6;
        param_1[0x83] = 0;
      }
    }
    goto LAB_0053ab18;
  }
  if (iVar16 == 3) {
    if (param_1[0xb] == 0) {
      puStack_20 = &stack0xfffffffc;
      if (param_1[0x104] == 0) {
        puStack_20 = &stack0xfffffffc;
        cVar8 = FUN_0040aaf0("Awaken",1);
        if (cVar8 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x2b) = 1;
        }
        param_1[0x104] = param_1[0x104] + 1;
      }
      puVar7 = puStack_20;
      if ((param_1[0x27] == 0) || (*(char *)(param_1 + 0x2b) == '\0')) {
        param_1[0x2d9] = 4;
        param_1[0x104] = 0;
      }
    }
    else {
      puVar7 = &stack0xfffffffc;
      if (param_1[0xb] == 10) {
        iVar16 = param_1[0xef];
        if ((iVar16 == 0) || (*(int *)(iVar16 + 0xb64) == 8)) {
          puStack_20 = &stack0xfffffffc;
          if (param_1[10] == 0xe4) {
            puStack_20 = &stack0xfffffffc;
            uVar11 = FUN_006eef60();
            pfVar13 = (float *)FUN_0067f070(&local_12c);
            iVar16 = FUN_006eef60();
            param_1 = local_118;
            uVar30 = 0;
            pTVar29 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            pTVar28 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar27 = 0;
            fVar20 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa87c;
            local_120 = (int *)(fVar20 * pfVar13[1] + (float)local_118[0xd0]);
            local_124 = fVar20 * *pfVar13 + (float)local_118[0xcf];
            uVar11 = FUN_00428b20(1000,0x16,&local_124,&DAT_00c7b640,local_118,0,uVar11);
            iVar16 = __RTDynamicCast(uVar11,uVar27,pTVar28,pTVar29,uVar30);
            iVar17 = FUN_006eef60();
            fVar22 = (float)((double)iVar17 + (double)(&DAT_00bacb00)[-(iVar17 >> 0x1f)]) *
                     DAT_00ba9ff4 + DAT_00baa1d4;
            fVar20 = fVar22 * DAT_00c3793c;
            *(float *)(iVar16 + 0xe8) = fVar22 * DAT_00c37940;
            *(float *)(iVar16 + 0xe4) = fVar20;
          }
          (**(code **)(*param_1 + 0x28))();
          puVar7 = puStack_20;
        }
        else {
          fVar20 = (float)param_1[0x2ed];
          fVar22 = *(float *)(iVar16 + 0x340);
          fVar21 = (float)((uint)(fVar20 - DAT_00baa2d0) & DAT_00bacb40);
          fVar21 = fVar21 + fVar21;
          fVar21 = (DAT_00baa454 - fVar21 * fVar21) * DAT_00baa81c;
          param_1[0xcf] =
               (int)(((*(float *)(iVar16 + 0x33c) - (float)param_1[0x37]) - (float)param_1[0xcd]) *
                     fVar20 + (float)param_1[0xcd] + 0.0);
          param_1[0xd0] =
               (int)(fVar21 + ((fVar22 - (float)param_1[0x38]) - (float)param_1[0xce]) * fVar20 +
                     (float)param_1[0xce] + DAT_00baa7b8);
          param_1[0xdb] = 0;
          puVar7 = &stack0xfffffffc;
        }
      }
    }
  }
  else if (iVar16 == 4) {
    ppbVar5 = (byte **)param_1[0x27];
    if (ppbVar5 == (byte **)0x0) {
LAB_0053a41e:
      puStack_20 = &stack0xfffffffc;
      cVar8 = FUN_0040aaf0(&DAT_00b5fed4,1);
      if (cVar8 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x2b) = 1;
      }
    }
    else {
      ppbVar14 = ppbVar5;
      if (&DAT_0000000f < ppbVar5[5]) {
        ppbVar14 = (byte **)*ppbVar5;
      }
      pbVar15 = &DAT_00b5fed4;
      do {
        bVar3 = *(byte *)ppbVar14;
        bVar18 = bVar3 < *pbVar15;
        if (bVar3 != *pbVar15) {
LAB_0053a400:
          uVar10 = -(uint)bVar18 | 1;
          goto LAB_0053a405;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar14 + 1);
        bVar18 = bVar3 < pbVar15[1];
        if (bVar3 != pbVar15[1]) goto LAB_0053a400;
        ppbVar14 = (byte **)((int)ppbVar14 + 2);
        pbVar15 = pbVar15 + 2;
      } while (bVar3 != 0);
      uVar10 = 0;
LAB_0053a405:
      if ((uVar10 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar5 + 0xd) != 0 &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x2b) == '\0')))) goto LAB_0053a41e;
    }
    if (((param_1[0xd] == 0x109) && (param_1[0xe] == 1)) && (param_1[10] == 0xfb)) {
      param_1[0x2d9] = 8;
      puVar7 = puStack_20;
    }
    else {
      if (((param_1[0x5a] & 0x1000800U) == 0) || (param_1[0x3c7] != -1)) {
        uVar31 = 1;
        uVar30 = 0;
        uVar27 = 0x3fc00000;
        uVar11 = FUN_006bec40(&local_12c,0);
        FUN_007e33c0(uVar11,uVar27,uVar30,uVar31);
      }
      else {
        iVar16 = FUN_006be840(uVar9);
        local_124 = *(float *)(iVar16 + 0x33c);
        local_120 = *(int **)(iVar16 + 0x340);
        FUN_007e4940(&local_124,0);
        if (0 < param_1[0x2d4]) {
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
        }
      }
      local_118 = (int *)param_1[0xcf];
      local_11c = (float)param_1[0xd8];
      local_120 = (int *)param_1[0xcd];
      local_111 = '\0';
      fVar22 = ((float)local_118 + local_11c) - (float)local_120;
      fVar20 = ((float)param_1[0xd9] + (float)param_1[0xd0]) - (float)param_1[0xce];
      if (DAT_00baac34 < fVar20 * fVar20 + fVar22 * fVar22) {
        local_12c = (float)local_118 - (float)local_120;
        if (param_1[0x3c7] == -1) {
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa198);
          local_128 = (float)param_1[0xd0] - (float)param_1[0xce];
          pfVar13 = (float *)FUN_00a10030(local_134);
          fVar20 = pfVar13[1] * DAT_00baa9d0;
          param_1[0xcf] = (int)(*pfVar13 * DAT_00baa9d0 + (float)local_120);
          param_1[0xd0] = (int)(fVar20 + (float)param_1[0xce]);
        }
        else {
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3c4);
          local_128 = (float)param_1[0xd0] - (float)param_1[0xce];
          pfVar13 = (float *)FUN_00a10030(local_134);
          fVar20 = (((float)local_120 + *pfVar13 * DAT_00baa9d0) - (float)local_118) * DAT_00baa3a4;
          param_1[0xd9] =
               (int)(((pfVar13[1] * DAT_00baa9d0 + (float)param_1[0xce]) - (float)param_1[0xd0]) *
                     DAT_00baa3a4 * (float)param_1[0xe7] + (float)param_1[0xd9]);
          param_1[0xd8] = (int)(local_11c + fVar20 * (float)param_1[0xe7]);
        }
        local_111 = '\x01';
      }
      cVar8 = FUN_006d8290(9);
      if (((cVar8 != '\0') && (local_111 != '\0')) && (uVar9 = FUN_006eef60(), (uVar9 & 3) == 0)) {
        param_1[0x2f1] = 1;
      }
      iVar16 = param_1[0x104];
      param_1[0x104] = iVar16 + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
      if ((local_111 == '\0') ||
         (((((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x35 ||
             (uVar9 = FUN_006eef60(), iVar16 <= (int)(uVar9 % 0x1e + 0x3c))) ||
            (cVar8 = FUN_006ac710(0x1e,param_1[8]), cVar8 == '\0')) ||
           (uVar9 = FUN_006eef60(), uVar9 % 5 != 0)) && (param_1[0x2f1] < 1)))) {
        iVar16 = param_1[0x2f0];
        puVar7 = puStack_20;
        if (iVar16 < 0) goto LAB_0053a9ee;
        iVar17 = *(int *)(DAT_00c71678 + 0x18300);
        piVar12 = *(int **)(*(int *)(iVar17 + 4) + 0x10);
        if (((piVar12 == (int *)0x0) || (piVar12[2] != 0x10)) || (*piVar12 != 0x23)) {
          iVar4 = *(int *)(iVar17 + 0x24 + iVar16 * 4);
          if (iVar4 == 0) {
            iVar16 = *(int *)(iVar17 + 0x76c + iVar16 * 4);
            if (iVar16 < 3000) {
              if (iVar16 < 1000) goto LAB_0053a7d1;
            }
            else if (iVar16 < 4000) goto LAB_0053a7d1;
            goto LAB_0053a9ee;
          }
          if (1 < *(int *)(iVar4 + 0x3c)) goto LAB_0053a9ee;
        }
      }
LAB_0053a7d1:
      param_1[0x2d9] = 8;
      ppiVar2 = (int **)(param_1 + 0xcd);
      if (param_1[0x2f0] < 0) {
        piVar12 = (int *)FUN_00812f50(local_134,ppiVar2,0x41f00000,0,0x41200000);
        param_1[0xcd] = *piVar12;
        param_1[0xce] = piVar12[1];
      }
      else {
        local_120 = *ppiVar2;
        local_12c = (float)param_1[0xcf] - (float)local_120;
        local_128 = (float)param_1[0xd0] - (float)param_1[0xce];
        pfVar13 = (float *)FUN_00a10100(local_134,0x42700000);
        param_1[0xcd] = (int)((float)local_120 + *pfVar13);
        param_1[0xce] = (int)(pfVar13[1] + (float)param_1[0xce]);
      }
      uVar11 = AI_0043ef30();
      local_12c = 10.0;
      local_128 = 6.0;
      FUN_006cb2e0(ppiVar2,&local_12c,9,uVar11);
      iVar16 = DAT_00c71678;
      puVar7 = puStack_20;
      if (param_1[10] == 0xfb) {
        *(undefined4 *)(DAT_00c71678 + 0x2651c) = 0x3f800000;
        *(undefined4 *)(iVar16 + 0x26514) = 0x96;
      }
    }
  }
  else {
    puVar7 = &stack0xfffffffc;
    if (iVar16 == 8) {
      puVar7 = &stack0xfffffffc;
      if (param_1[10] == 0xfb) {
        FUN_004071c0(param_1 + 0x3c);
        local_5c = local_5c - DAT_00baa120;
        FUN_004073d0(local_68);
        *(bool *)((int)param_1 + 0x171) = 0.0 < local_5c;
        puVar7 = puStack_20;
      }
      puStack_20 = puVar7;
      cVar8 = FUN_00417430(0x1000800,0);
      if (cVar8 == '\0') {
        uVar31 = 1;
        uVar30 = 900;
        uVar27 = 0x40000000;
        uVar11 = FUN_006bec40(local_134,0);
        FUN_007e33c0(uVar11,uVar27,uVar30,uVar31);
        puVar7 = puStack_20;
      }
      else {
        iVar16 = FUN_006be840();
        local_12c = *(float *)(iVar16 + 0x33c);
        local_128 = *(float *)(iVar16 + 0x340);
        FUN_007e4940(&local_12c,0);
        puVar7 = puStack_20;
        if (0 < param_1[0x2d4]) {
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
        }
      }
    }
  }
LAB_0053a9ee:
  puStack_20 = puVar7;
  fVar20 = DAT_00baa3a4;
  if ((param_1[0x5a] & 0x200U) != 0) {
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  }
  if (param_1[0xb] == 0) {
    local_40 = 0xf;
    local_44 = 8;
    local_4c = 0;
    param_1[0xdb] = (int)((float)param_1[0xdb] * fVar20);
    local_54._0_1_ = s_WalkVert_00b1dd18[0];
    local_54._1_1_ = s_WalkVert_00b1dd18[1];
    local_54._2_1_ = s_WalkVert_00b1dd18[2];
    local_54._3_1_ = s_WalkVert_00b1dd18[3];
    local_50._0_1_ = s_WalkVert_00b1dd18[4];
    local_50._1_1_ = s_WalkVert_00b1dd18[5];
    local_50._2_1_ = s_WalkVert_00b1dd18[6];
    local_50._3_1_ = s_WalkVert_00b1dd18[7];
    local_28 = 0xf;
    local_2c = 8;
    local_3c._0_1_ = s_WalkHori_00b1dd30[0];
    local_3c._1_1_ = s_WalkHori_00b1dd30[1];
    local_3c._2_1_ = s_WalkHori_00b1dd30[2];
    local_3c._3_1_ = s_WalkHori_00b1dd30[3];
    local_38._0_1_ = s_WalkHori_00b1dd30[4];
    local_38._1_1_ = s_WalkHori_00b1dd30[5];
    local_38._2_1_ = s_WalkHori_00b1dd30[6];
    local_38._3_1_ = s_WalkHori_00b1dd30[7];
    local_34 = 0;
    local_14 = 1;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    if (0xf < local_28) {
      uVar10 = local_28 + 1;
      uVar9 = local_3c;
      if (0xfff < uVar10) {
        uVar9 = *(uint *)(local_3c - 4);
        uVar10 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar9) - 4) goto LAB_0053ab08;
      }
      FUN_00aef15c(uVar9,uVar10);
    }
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar9 = local_40 + 1;
      iVar16 = local_54;
      if (0xfff < uVar9) {
        iVar16 = *(int *)(local_54 + -4);
        uVar9 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar16) - 4U) {
LAB_0053ab08:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar16,uVar9);
    }
  }
LAB_0053ab18:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

