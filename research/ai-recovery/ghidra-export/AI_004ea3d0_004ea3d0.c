/* Local J460 decompiler output.
 * VA: 0x004ea3d0
 * Entry: 004ea3d0
 * Dispatcher: 0x006c2990
 * Types: 886
 * Identities: 886.0.0,886.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004ec240; instructions=1642
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=886; identities=886.0.0,886.1.0; dispatcher=0x006c2990;
   end=0x004ec240; instructions=1642 */

void __fastcall AI_004ea3d0(int param_1)

{
  undefined *puVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  float *pfVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int *piVar8;
  int iVar9;
  char *pcVar10;
  uint uVar11;
  uint uVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  float local_cc;
  int *local_c8;
  float local_c4;
  float local_c0;
  byte local_b9;
  float local_b8;
  float local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  float local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  undefined local_68 [24];
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3d55;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar3;
  if (*(int *)(param_1 + 0x2c) != 1) {
    puStack_20 = &stack0xfffffffc;
    if ((*(int *)(param_1 + 0xb74) == 1) &&
       (((*(char *)(param_1 + 0x173) != '\0' ||
         (puStack_20 = &stack0xfffffffc, *(int *)(param_1 + 0x3c0) == 0)) &&
        (puStack_20 = &stack0xfffffffc, *(int *)(param_1 + 0xbc0) == 0)))) {
      *(undefined4 *)(param_1 + 0xbc0) = 1;
      local_ac = 0.0;
      puStack_20 = &stack0xfffffffc;
      puVar1 = &stack0xfffffffc;
      if (*(int *)(param_1 + 0xc14) != 0) {
        do {
          puStack_20 = puVar1;
          local_b4 = *(float *)(param_1 + 0xc10);
          local_30 = 0;
          local_2c = 0;
          uVar11 = (int)local_b4 + (int)local_ac & 1;
          local_28 = 0;
          iVar9 = *(int *)(*(int *)(param_1 + 0xc08) +
                          (*(int *)(param_1 + 0xc0c) - 1U &
                          (uint)((int)local_b4 + (int)local_ac) >> 1) * 4);
          local_a8 = *(float *)(iVar9 + uVar11 * 8);
          local_a4 = *(float *)(iVar9 + 4 + uVar11 * 8);
          uVar11 = (int)local_ac + 2 + (int)local_b4;
          local_9c = *(float *)(*(int *)(*(int *)(param_1 + 0xc08) +
                                        (*(int *)(param_1 + 0xc0c) - 1U & uVar11 >> 1) * 4) +
                               (uVar11 & 1) * 8);
          local_50 = _DAT_00bac7b0;
          uStack_4c = _UNK_00bac7b4;
          uStack_48 = _UNK_00bac7b8;
          uStack_44 = _UNK_00bac7bc;
          local_40 = ZEXT816(0);
          uVar7 = FUN_006eef60(uVar3);
          piVar8 = (int *)FUN_00428b20(1000,2,&local_a8,&DAT_00c7b640,0,1,uVar7);
          (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
          piVar8[0x37] = 0;
          piVar8[0x38] = (int)local_9c;
          piVar8[0xd6] = 0x41200000;
          uVar7 = FUN_006eef60();
          piVar8 = (int *)FUN_00428b20(1000,7,&local_a8,&DAT_00c7b640,param_1,0,uVar7);
          piVar8[0x39] = 0x3ecccccd;
          piVar8[0x3a] = 0x3ecccccd;
          (**(code **)(*piVar8 + 0xc))();
          local_ac = (float)((int)local_ac + 3);
          puVar1 = puStack_20;
        } while ((uint)local_ac < (uint)*(float *)(param_1 + 0xc14));
      }
      FUN_00499380();
    }
    iVar9 = *(int *)(param_1 + 0xb74);
    if (iVar9 == 1) {
      fVar16 = (*(float *)(param_1 + 0x14) + *(float *)(param_1 + 0xbb4)) -
               *(float *)(param_1 + 0x39c) * DAT_00baa08c;
      if (fVar16 <= DAT_00ba9fe4) {
        fVar16 = DAT_00ba9fe4;
      }
      *(float *)(param_1 + 0xbb4) = fVar16;
      if (*(int *)(param_1 + 0x3c0) != 0) {
        pfVar5 = (float *)(*(int *)(param_1 + 0x3c0) + 0x33c);
        local_b9 = (*pfVar5 <= *(float *)(param_1 + 0x33c) && *(float *)(param_1 + 0x33c) != *pfVar5
                   ) ^ *(byte *)(param_1 + 0x148);
        iVar9 = FUN_0040b220(2);
        *(byte *)(iVar9 + 0x32) = local_b9;
      }
    }
    else if (iVar9 != 2) {
      if (iVar9 == 3) {
        if ((*(int *)(*(int *)(param_1 + 0xb7c) + 0x28) == 0x376) &&
           (*(int *)(*(int *)(param_1 + 0xb7c) + 0x2c) == 1)) {
          *(undefined4 *)(param_1 + 0xb80) = 0;
        }
      }
      else {
        if ((*(int *)(param_1 + 0xb64) == 4) && (*(int *)(param_1 + 0x3c0) == 0)) {
          *(undefined4 *)(param_1 + 0xb64) = 0x10;
          *(undefined4 *)(param_1 + 0xba4) = 0;
          FUN_006d6ba0(0x138,0x3f4ccccd,2,0,0x3f800000);
          FUN_0040a380("RageStart",0);
          iVar9 = FUN_006be840();
          fVar16 = DAT_00baa36c;
          if (0.0 < *(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c)) {
            fVar16 = DAT_00baad3c;
          }
          fVar13 = DAT_00baa36c;
          if (0.0 < *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340)) {
            fVar13 = DAT_00baad3c;
          }
          *(float *)(param_1 + 0x334) = fVar16;
          *(float *)(param_1 + 0x338) = fVar13;
          FUN_00499d60();
          fVar16 = fVar13 * DAT_00baa948 + DAT_00baaa78;
          uVar7 = FUN_004238f0(0x3f4ccccd);
          local_9c = fVar16 * DAT_00baa088;
          fVar16 = local_9c;
          FUN_0041d520();
          local_a4 = fVar16;
          local_a0 = local_9c;
          FUN_0041d540();
          local_9c = local_a4;
          local_a8 = 0.0;
          local_a4 = -20.0;
          FUN_0060b890(&local_a0,0x1e,uVar7,0x40800000);
          fVar16 = *(float *)(param_1 + 900);
          if (*(float *)(param_1 + 0x380) < fVar16) {
            local_9c = fVar16 * DAT_00baa1d4 + *(float *)(param_1 + 0x380);
            pfVar5 = &local_9c;
            if (fVar16 < local_9c) {
              pfVar5 = (float *)(param_1 + 900);
            }
            *(float *)(param_1 + 0x380) = *pfVar5;
          }
        }
        uVar3 = FUN_006eef60(uVar3);
        if (uVar3 % 10 == 0) {
          iVar9 = FUN_006eef60();
          FUN_006b64d0((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
        }
        switch(*(undefined4 *)(param_1 + 0xb64)) {
        case 0:
          if (*(int *)(param_1 + 0x30) == 0) {
            uVar7 = FUN_007e90f0();
            iVar9 = FUN_006eef60();
            local_a0 = ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) + *(float *)(param_1 + 0x33c);
            local_9c = *(float *)(param_1 + 0x340) + DAT_00baa87c;
            uVar7 = FUN_00428b20(0x376,1,&local_a0,&DAT_00c7b640,param_1,0,uVar7);
            FUN_006a92e0(uVar7);
            FUN_006a92a0(param_1);
            *(undefined4 *)(param_1 + 0x30) = 1;
          }
          *(undefined4 *)(param_1 + 0xb64) = 4;
          FUN_0040a380("WalkVert",0);
          FUN_0040a940(&DAT_00b1d20c,0);
          iVar9 = FUN_0040b220(2);
          *(undefined *)(iVar9 + 0x74) = 0;
          if (*(int *)(param_1 + 0x3c0) != 0) {
            uVar3 = 0;
            do {
              fVar16 = (float)((double)uVar3 + (double)(&DAT_00bacb00)[-((int)uVar3 >> 0x1f)]) /
                       DAT_00baa784;
              local_9c = (*(float *)(*(int *)(param_1 + 0x3c0) + 0x340) -
                         *(float *)(param_1 + 0x340)) * fVar16 + *(float *)(param_1 + 0x340);
              local_a0 = (*(float *)(*(int *)(param_1 + 0x3c0) + 0x33c) -
                         *(float *)(param_1 + 0x33c)) * fVar16 + *(float *)(param_1 + 0x33c);
              FUN_004b0f50(&local_a0);
              local_a8 = 0.0;
              local_a4 = 0.0;
              FUN_004b0f50(&local_a8);
              local_cc = -20.0;
              local_c8 = (int *)0x0;
              FUN_004b0f50(&local_cc);
              uVar3 = uVar3 + 1;
            } while (uVar3 < 6);
            FUN_004b0e40(param_1 + 0xc04);
            iVar9 = 10;
            do {
              FUN_004e8fa0(0);
              iVar9 = iVar9 + -1;
            } while (iVar9 != 0);
          }
          *(uint *)(param_1 + 0xf18) = *(uint *)(param_1 + 0xf18) | 7;
          break;
        case 4:
          FUN_0040c340("WalkVert");
          local_14 = 0;
          FUN_0040c340("WalkHori");
          local_14 = CONCAT31(local_14._1_3_,1);
          FUN_006c1330(local_68,local_40 + 4,0x3dcccccd);
          FUN_0040d040();
          local_14 = 0xffffffff;
          FUN_0040d040();
          cVar2 = FUN_00417430(0x1000800,0);
          if (cVar2 == '\0') {
            uVar21 = 1;
            uVar20 = 900;
            uVar19 = 0x3e99999a;
            uVar7 = FUN_006bec40(&local_b8,0);
            FUN_007e33c0(uVar7,uVar19,uVar20,uVar21);
            iVar9 = FUN_004567e0();
            if (((iVar9 != 0) && (iVar9 = FUN_004567e0(), *(int *)(iVar9 + 0xb64) == 8)) &&
               ((iVar9 = FUN_004567e0(), 0x1a < *(int *)(iVar9 + 0xba0) &&
                ((uVar3 = FUN_006eef60(), uVar3 % 7 == 0 ||
                 (DAT_00baa7b8 < *(float *)(param_1 + 0xbb4))))))) {
              *(undefined4 *)(param_1 + 0xbb4) = 0;
              *(undefined4 *)(param_1 + 0xb64) = 8;
              FUN_006d6ba0(0xa7,0x3f800000,2,0,0x3f800000);
              FUN_0040c340("AttackVert");
              local_14 = 2;
              FUN_0040c340("AttackHori");
              local_14 = CONCAT31(local_14._1_3_,3);
              FUN_006c1330(local_40 + 4,local_68,0);
              FUN_0040d040();
              local_14 = 0xffffffff;
              FUN_0040d040();
            }
          }
          else {
            iVar9 = FUN_006be840();
            local_a0 = *(float *)(iVar9 + 0x33c);
            local_9c = *(float *)(iVar9 + 0x340);
            FUN_007e4940(&local_a0,0);
            fVar16 = DAT_00baa3a4;
            fVar13 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
            *(float *)(param_1 + 0x36c) = fVar13;
            if (0 < *(int *)(param_1 + 0xb50)) {
              *(float *)(param_1 + 0x36c) = fVar13 * fVar16;
            }
          }
          if ((*(char *)(param_1 + 0xb40) != '\0') && (uVar3 = FUN_006eef60(), uVar3 % 3 == 0)) {
            FUN_006d6ba0(0x74,0x3f800000,0x3c,0,0x3f800000);
          }
          break;
        case 8:
          *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
          cVar2 = FUN_0040b030("Shoot");
          if (cVar2 != '\0') {
            iVar9 = param_1 + 0x33c;
            FUN_00704360(iVar9,0x42f00000,param_1,0,0);
            uVar7 = FUN_006eef60();
            piVar8 = (int *)FUN_00428b20(1000,0x22,iVar9,&DAT_00c7b640,0,0,uVar7);
            local_30 = 0;
            local_50 = _DAT_00bac7b0;
            uStack_4c = _UNK_00bac7b4;
            uStack_48 = _UNK_00bac7b8;
            uStack_44 = _UNK_00bac7bc;
            local_40 = _DAT_00babf90;
            local_2c = 0;
            local_28 = 0;
            (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
            uVar7 = FUN_006eef60();
            piVar8 = (int *)FUN_00428b20(1000,0x16,iVar9,&DAT_00c7b640,param_1,0,uVar7);
            fVar16 = DAT_00c37940 * DAT_00baa630;
            piVar8[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
            piVar8[0x117] = 0x96;
            piVar8[0x3a] = (int)fVar16;
            piVar8[0x118] = 0x96;
            (**(code **)(*piVar8 + 0xc))();
            *(undefined4 *)(param_1 + 0xbb0) = 0x3fc00000;
            iVar9 = FUN_004567e0();
            if (((iVar9 != 0) && (*(int *)(iVar9 + 0xb64) == 8)) && (0 < *(int *)(iVar9 + 0xba0))) {
              *(int *)(iVar9 + 0xba0) = *(int *)(iVar9 + 0xba0) + 0xf;
            }
            *(undefined4 *)(param_1 + 0xba4) = 1;
          }
          cVar2 = FUN_0040a550(&DAT_00b1a4ec);
          if (cVar2 != '\0') {
            *(undefined4 *)(param_1 + 0xb64) = 4;
          }
          break;
        case 0x10:
          cVar2 = FUN_0040a550(&DAT_00b1a4ec);
          if (cVar2 != '\0') {
            FUN_0040a380("RageDown",0);
          }
          cVar2 = FUN_004073b0();
          if (cVar2 == '\0') {
            *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
          }
          else {
            *(undefined4 *)(param_1 + 0x184) = 3;
            fVar16 = *(float *)(*(int *)(param_1 + 0x330) + 0x44) * DAT_00baa7a4;
            *(undefined4 *)(param_1 + 0x36c) = 0x3f733333;
            *(float *)(param_1 + 0x37c) = fVar16;
            local_a0 = *(float *)(param_1 + 0x334) * DAT_00baa2e4;
            local_9c = *(float *)(param_1 + 0x338) * DAT_00baa2e4;
            FUN_00431450(&local_a0,0);
            pcVar10 = "RageUp";
            if (*(float *)(param_1 + 0x338) <= DAT_00ba9fe4) {
              pcVar10 = "RageDown";
            }
            FUN_0040a380(pcVar10,0);
            *(bool *)(param_1 + 0x148) = *(float *)(param_1 + 0x334) < 0.0;
            fVar16 = *(float *)(param_1 + 0x338);
            FUN_00499d60();
            local_c8 = *(int **)(param_1 + 0xbec);
            local_a4 = fVar16 * DAT_00baa948 + DAT_00baaa78;
            if ((local_c8 == (int *)0x0) || (local_c8[10] != 7)) {
              local_a0 = 0.0;
              local_9c = -31.0;
              piVar8 = (int *)FUN_0096f310(1,param_1 + 0x33c,local_a4,10,&local_a0,param_1,0);
              local_c8 = piVar8;
              FUN_006d0c20(piVar8);
              *(undefined *)((int)piVar8 + 0x45d) = 1;
              (**(code **)(*piVar8 + 0xc))();
            }
            cVar2 = FUN_006ac710(2,0);
            if (cVar2 != '\0') {
              iVar9 = FUN_006eef60();
              local_98 = ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa87c + (local_a4 - DAT_00baa81c)) * DAT_00baa088;
              iVar9 = FUN_006eef60();
              local_ac = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa784;
              fVar16 = local_98;
              FUN_0041d540();
              local_b8 = fVar16 * local_ac + *(float *)(param_1 + 0x360);
              local_9c = local_b8;
              FUN_0041d520();
              local_b4 = local_98 * local_ac + *(float *)(param_1 + 0x364);
              local_98 = local_b4;
              uVar7 = FUN_006eef60();
              local_b0 = local_9c + *(float *)(param_1 + 0x33c);
              local_ac = local_98 + *(float *)(param_1 + 0x340);
              iVar9 = FUN_00428b20(1000,0x6f,&local_b0,&local_b8,0,0,uVar7);
              iVar4 = FUN_006eef60();
              fVar16 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa304;
              fVar13 = fVar16 * DAT_00c37940;
              fVar16 = fVar16 * DAT_00c3793c;
              *(undefined4 *)(iVar9 + 0x34c) = 0;
              *(float *)(iVar9 + 0xe8) = fVar13;
              *(undefined4 *)(iVar9 + 0x350) = 0xc1f80000;
              *(float *)(iVar9 + 0xe4) = fVar16;
            }
            piVar8 = local_c8;
            if ((NAN((float)local_c8[0x107]) || NAN(local_a4)) ==
                ((float)local_c8[0x107] == local_a4)) {
              fVar16 = local_a4;
              FUN_0096f4e0();
              FUN_0096ce90(fVar16);
              (**(code **)(*piVar8 + 0xc))();
            }
            piVar8[0x116] = 10;
            if (*(float *)(param_1 + 0x338) <= DAT_00baa2d0) {
              piVar8[0xd6] = DAT_00baabfc;
            }
            else {
              piVar8[0xd6] = DAT_00baadc0;
            }
          }
          uVar3 = DAT_00bacb70;
          fVar13 = DAT_00baad0c;
          fVar16 = DAT_00baa198;
          if (*(char *)(param_1 + 400) != '\0') {
            fVar18 = *(float *)(param_1 + 0x334);
            if (((0.0 < fVar18) && (DAT_00baa198 < *(float *)(param_1 + 0x19c))) ||
               ((fVar18 < 0.0 &&
                (*(float *)(param_1 + 0x19c) <= DAT_00baad0c &&
                 DAT_00baad0c != *(float *)(param_1 + 0x19c))))) {
              *(uint *)(param_1 + 0x334) = (uint)fVar18 ^ DAT_00bacb70;
            }
            fVar18 = *(float *)(param_1 + 0x338);
            if (((0.0 < fVar18) && (fVar16 < *(float *)(param_1 + 0x1a0))) ||
               ((fVar18 < 0.0 &&
                (*(float *)(param_1 + 0x1a0) <= fVar13 && fVar13 != *(float *)(param_1 + 0x1a0)))))
            {
              *(uint *)(param_1 + 0x338) = (uint)fVar18 ^ uVar3;
            }
            fVar16 = *(float *)(param_1 + 0x194) * *(float *)(param_1 + 0x194) +
                     *(float *)(param_1 + 0x198) * *(float *)(param_1 + 0x198);
            FUN_00435a50();
            FUN_00a100b0(fVar16);
          }
        }
        if ((0.0 < *(float *)(param_1 + 0xbb0)) && (*(int *)(param_1 + 0xba4) < 1)) {
          fVar16 = *(float *)(param_1 + 0xbb0) - *(float *)(param_1 + 0x39c) * DAT_00baa0a0;
          if (fVar16 <= 0.0) {
            fVar16 = 0.0;
          }
          *(float *)(param_1 + 0xbb0) = fVar16;
        }
        if ((*(int *)(param_1 + 0x3c0) != 0) && (0 < *(int *)(param_1 + 0xba4))) {
          fVar16 = (float)((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
          local_98 = 0.0;
          local_ac = fVar16;
          if (0 < (int)fVar16) {
            do {
              *(int *)(param_1 + 0xba4) = *(int *)(param_1 + 0xba4) + 1;
              if ((*(byte *)(param_1 + 0xba4) & 1) == 0) {
                FUN_006d6ba0(0xb9,0x3f4ccccd,2,0,0x3f800000);
                fVar16 = (float)(*(int *)(param_1 + 0xba4) / 2);
                local_9c = (float)(*(uint *)(param_1 + 0xc14) / 3);
                if ((uint)local_9c <= (uint)fVar16) {
                  *(undefined4 *)(param_1 + 0xba4) = 0;
                  break;
                }
                local_a4 = (float)((int)fVar16 * 3);
                uVar3 = *(int *)(param_1 + 0xc10) + (int)local_a4;
                uVar11 = uVar3 & 1;
                iVar9 = *(int *)(*(int *)(param_1 + 0xc08) +
                                (*(int *)(param_1 + 0xc0c) - 1U & uVar3 >> 1) * 4);
                local_c4 = *(float *)(iVar9 + uVar11 * 8);
                local_c0 = *(float *)(iVar9 + 4 + uVar11 * 8);
                if (fVar16 == (float)((int)local_9c - 1U)) {
                  uVar7 = FUN_006eef60();
                  piVar8 = (int *)FUN_00428b20(1000,0x16,&local_c4,&DAT_00c7b640,param_1,0,uVar7);
                  fVar16 = DAT_00c37940 * DAT_00baa528;
                  piVar8[0x39] = (int)(DAT_00c3793c * DAT_00baa528);
                  piVar8[0x117] = 0x5a;
                  piVar8[0x3a] = (int)fVar16;
                  piVar8[0x118] = 0x5a;
                  (**(code **)(*piVar8 + 0xc))();
                  uVar7 = FUN_00407170();
                  local_9c = *(float *)(param_1 + 0xc10);
                  uVar3 = (int)local_a4 + 2 + (int)local_9c;
                  local_b8 = 0.0;
                  local_b4 = *(float *)(*(int *)(*(int *)(param_1 + 0xc08) +
                                                (uVar3 >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4) +
                                       (uVar3 & 1) * 8);
                  pfVar5 = &local_b8;
                }
                else {
                  uVar7 = FUN_006eef60();
                  piVar8 = (int *)FUN_00428b20(1000,0x16,&local_c4,&DAT_00c7b640,param_1,0,uVar7);
                  fVar16 = DAT_00c37940 * DAT_00baa2d0;
                  piVar8[0x39] = (int)(DAT_00c3793c * DAT_00baa2d0);
                  piVar8[0x117] = 0x3c;
                  piVar8[0x3a] = (int)fVar16;
                  piVar8[0x118] = 0x3c;
                  (**(code **)(*piVar8 + 0xc))();
                  uVar7 = FUN_00407170();
                  local_9c = *(float *)(param_1 + 0xc10);
                  uVar3 = (int)local_a4 + 2 + (int)local_9c;
                  local_cc = 0.0;
                  local_c8 = *(int **)(*(int *)(*(int *)(param_1 + 0xc08) +
                                               (*(int *)(param_1 + 0xc0c) - 1U & uVar3 >> 1) * 4) +
                                      (uVar3 & 1) * 8);
                  pfVar5 = &local_cc;
                }
                iVar9 = FUN_006d7cf0(pfVar5,uVar7,&DAT_00c7b640);
                *(undefined4 *)(iVar9 + 0x358) = 0x42700000;
                fVar16 = local_ac;
              }
              local_98 = (float)((int)local_98 + 1);
            } while ((int)local_98 < (int)fVar16);
          }
        }
      }
      goto LAB_004ec1d1;
    }
    if (*(int *)(param_1 + 0x3c0) != 0) {
      FUN_006b6af0(&local_b8,"CordPos");
      uVar3 = *(uint *)(param_1 + 0xc10) & 1;
      fVar16 = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
      iVar9 = *(int *)(*(int *)(param_1 + 0xc08) +
                      (*(uint *)(param_1 + 0xc10) >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4);
      *(float *)(iVar9 + uVar3 * 8) = local_b8 + *(float *)(param_1 + 0x33c);
      *(float *)(iVar9 + 4 + uVar3 * 8) = fVar16;
      uVar3 = *(int *)(param_1 + 0xc10) + 1;
      uVar11 = uVar3 & 1;
      iVar9 = *(int *)(*(int *)(param_1 + 0xc08) + (uVar3 >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4
                      );
      *(undefined4 *)(iVar9 + uVar11 * 8) = *(undefined4 *)(param_1 + 0x360);
      *(undefined4 *)(iVar9 + 4 + uVar11 * 8) = *(undefined4 *)(param_1 + 0x364);
      local_c0 = *(float *)(param_1 + 0xc10);
      uVar3 = (int)local_c0 + 2U & 1;
      iVar9 = *(int *)(*(int *)(param_1 + 0xc08) +
                      ((int)local_c0 + 2U >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4);
      *(float *)(iVar9 + uVar3 * 8) = local_b4;
      *(undefined4 *)(iVar9 + 4 + uVar3 * 8) = 0;
      uVar3 = *(int *)(param_1 + 0xc14) + -3 + *(int *)(param_1 + 0xc10);
      uVar7 = *(undefined4 *)(*(int *)(param_1 + 0x3c0) + 0x340);
      uVar11 = uVar3 & 1;
      iVar9 = *(int *)(*(int *)(param_1 + 0xc08) + (uVar3 >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4
                      );
      *(undefined4 *)(iVar9 + uVar11 * 8) = *(undefined4 *)(*(int *)(param_1 + 0x3c0) + 0x33c);
      *(undefined4 *)(iVar9 + 4 + uVar11 * 8) = uVar7;
      uVar3 = *(int *)(param_1 + 0xc14) + -2 + *(int *)(param_1 + 0xc10);
      uVar11 = uVar3 & 1;
      iVar9 = *(int *)(*(int *)(param_1 + 0xc08) + (*(int *)(param_1 + 0xc0c) - 1U & uVar3 >> 1) * 4
                      );
      fVar16 = *(float *)(*(int *)(param_1 + 0x3c0) + 0x364) * DAT_00baa198;
      *(float *)(iVar9 + uVar11 * 8) = *(float *)(*(int *)(param_1 + 0x3c0) + 0x360) * DAT_00baa198;
      fVar13 = DAT_00baadec;
      *(float *)(iVar9 + 4 + uVar11 * 8) = fVar16;
      uVar3 = *(int *)(param_1 + 0xc14) + -1 + *(int *)(param_1 + 0xc10);
      uVar11 = uVar3 & 1;
      iVar9 = *(int *)(*(int *)(param_1 + 0xc08) + (*(int *)(param_1 + 0xc0c) - 1U & uVar3 >> 1) * 4
                      );
      *(undefined4 *)(iVar9 + uVar11 * 8) = 0xc1a00000;
      *(undefined4 *)(iVar9 + 4 + uVar11 * 8) = 0;
      fVar16 = DAT_00baa784;
      if ((**(char **)(DAT_00c71678 + 0x18300) == '\0') ||
         (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0) <
          2)) {
        local_98 = 1.401298e-45;
        local_ac = 4.203895e-45;
        do {
          uVar3 = *(uint *)(param_1 + 0xc10);
          uVar11 = uVar3 & 1;
          fVar18 = *(float *)(*(int *)(param_1 + 0x3c0) + 0x340);
          iVar9 = *(int *)(*(int *)(param_1 + 0xc08) +
                          (uVar3 >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4);
          fVar14 = *(float *)(iVar9 + 4 + uVar11 * 8);
          fVar17 = (float)((double)(int)local_98 + (double)(&DAT_00bacb00)[-((int)local_98 >> 0x1f)]
                          ) / fVar16;
          fVar15 = *(float *)(iVar9 + 4 + uVar11 * 8);
          uVar12 = (int)local_ac + uVar3 & 1;
          iVar4 = *(int *)(*(int *)(param_1 + 0xc08) +
                          (*(int *)(param_1 + 0xc0c) - 1U & (int)local_ac + uVar3 >> 1) * 4);
          *(float *)(iVar4 + uVar12 * 8) =
               (*(float *)(*(int *)(param_1 + 0x3c0) + 0x33c) - *(float *)(iVar9 + uVar11 * 8)) *
               fVar17 + *(float *)(iVar9 + uVar11 * 8);
          *(float *)(iVar4 + 4 + uVar12 * 8) = (fVar18 - fVar14) * fVar17 + fVar15;
          uVar3 = (int)local_ac + 1 + *(int *)(param_1 + 0xc10);
          uVar11 = uVar3 & 1;
          iVar9 = *(int *)(*(int *)(param_1 + 0xc08) +
                          (uVar3 >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4);
          *(undefined4 *)(iVar9 + uVar11 * 8) = 0;
          *(undefined4 *)(iVar9 + 4 + uVar11 * 8) = 0;
          uVar3 = *(int *)(param_1 + 0xc10) + 2;
          uVar11 = uVar3 & 1;
          iVar9 = *(int *)(*(int *)(param_1 + 0xc08) +
                          (uVar3 >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4);
          uVar3 = (int)local_ac + 2 + *(int *)(param_1 + 0xc10);
          uVar12 = uVar3 & 1;
          local_98 = (float)((int)local_98 + 1);
          iVar4 = *(int *)(*(int *)(param_1 + 0xc08) +
                          (uVar3 >> 1 & *(int *)(param_1 + 0xc0c) - 1U) * 4);
          *(float *)(iVar4 + uVar12 * 8) =
               (fVar13 - *(float *)(iVar9 + uVar11 * 8)) * fVar17 + *(float *)(iVar9 + uVar11 * 8);
          *(undefined4 *)(iVar4 + 4 + uVar12 * 8) = 0;
          local_ac = (float)((int)local_ac + 3);
        } while ((uint)local_ac < 0x12);
        FUN_004b0e40(param_1 + 0xc04);
      }
      else {
        FUN_004e8fa0(*(int *)(param_1 + 0xb74) == 2);
      }
      iVar9 = *(int *)(param_1 + 0x3c0);
      local_a4 = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
      local_9c = *(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c);
      fVar13 = local_a4 * local_a4 + local_9c * local_9c;
      FUN_00435a50();
      fVar16 = DAT_00baa1f8;
      if ((((*(int *)(DAT_00c71678 + 0x26614) < 2) || (*(int *)(iVar9 + 0x28) != 1)) &&
          (0x3dd < *(int *)(iVar9 + 0x28) - 10U)) || (*(int *)(iVar9 + 0xb64) != 8)) {
        fVar14 = (*(float *)(param_1 + 0xbb0) + DAT_00baa454) * DAT_00baa98c;
        fVar18 = DAT_00baa120;
      }
      else {
        fVar14 = (*(float *)(param_1 + 0xbb0) + DAT_00baa454) * DAT_00baa9e4;
        fVar18 = DAT_00baa1f8;
      }
      if (fVar14 < fVar13) {
        fVar15 = (local_9c / fVar13) * (fVar13 - fVar14) * fVar18;
        fVar18 = (local_a4 / fVar13) * (fVar13 - fVar14) * fVar18;
        *(float *)(param_1 + 0x360) =
             fVar15 * DAT_00baa1f8 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             fVar18 * fVar16 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
        iVar9 = *(int *)(param_1 + 0x3c0);
        *(float *)(iVar9 + 0x360) = *(float *)(iVar9 + 0x360) - *(float *)(iVar9 + 0x39c) * fVar15;
        *(float *)(iVar9 + 0x364) = *(float *)(iVar9 + 0x364) - *(float *)(iVar9 + 0x39c) * fVar18;
      }
    }
    goto LAB_004ec1d1;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  puVar1 = &stack0xfffffffc;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380("Walk01",0);
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0xba0) = 0xf;
    puVar1 = puStack_20;
    break;
  case 4:
    if ((*(int *)(param_1 + 0x7c) == 0) ||
       (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380("Walk01",0);
    }
    if (*(int *)(param_1 + 0x3bc) == 0) {
      FUN_0040a380(&DAT_00b1e11c,0);
      fVar16 = *(float *)(param_1 + 900);
      *(undefined4 *)(param_1 + 0xb64) = 7;
      puVar1 = puStack_20;
      if (*(float *)(param_1 + 0x380) < fVar16) {
        fVar13 = fVar16 * DAT_00baa1d4 + *(float *)(param_1 + 0x380);
        if (fVar13 <= fVar16) {
          fVar16 = fVar13;
        }
        *(float *)(param_1 + 0x380) = fVar16;
      }
    }
    else {
      pfVar5 = (float *)FUN_006bec40(&local_b8,0);
      local_ac = *pfVar5 - *(float *)(param_1 + 0x33c);
      local_a4 = pfVar5[1] - *(float *)(param_1 + 0x340);
      local_a8 = local_ac;
      local_9c = local_a4;
      iVar9 = FUN_006be840();
      pfVar5 = (float *)FUN_00a10100(&local_b8,0x3f4ccccd);
      fVar16 = pfVar5[1];
      *(float *)(param_1 + 0x360) =
           *(float *)(param_1 + 0x39c) * *pfVar5 + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           fVar16 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
      fVar16 = *(float *)(*(int *)(param_1 + 0x3bc) + 0x340) - *(float *)(iVar9 + 0x340);
      fVar13 = *(float *)(*(int *)(param_1 + 0x3bc) + 0x33c) - *(float *)(iVar9 + 0x33c);
      local_98 = fVar16 * fVar16 + fVar13 * fVar13;
      FUN_00435a50();
      puVar1 = puStack_20;
      if (((*(int *)(param_1 + 0xba0) < 1) &&
          (cVar2 = FUN_00417430(0x1000a00,0), puVar1 = puStack_20, cVar2 == '\0')) &&
         (((local_98 < DAT_00baac64 && (uVar3 = FUN_006eef60(), uVar3 % 5 == 0)) ||
          (((iVar4 = FUN_00447770(), puVar1 = puStack_20, DAT_00baa7b8 < *(float *)(iVar4 + 0xbb4)
            && (local_98 < DAT_00baac8c)) &&
           (uVar3 = FUN_006eef60(), puVar1 = puStack_20, uVar3 % 3 == 0)))))) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        FUN_0040a380(&DAT_00b1e11c,0);
        local_a4 = *(float *)(iVar9 + 0x33c);
        local_c8 = *(int **)(iVar9 + 0x340);
        fVar13 = *(float *)(param_1 + 0x33c) - local_a4;
        fVar16 = *(float *)(param_1 + 0x340) - (float)local_c8;
        fVar16 = fVar16 * fVar16 + fVar13 * fVar13;
        FUN_00435a50();
        local_a8 = (*(float *)(iVar9 + 0x360) * fVar16 * DAT_00baa198 + local_a4) -
                   *(float *)(param_1 + 0x33c);
        local_a4 = (*(float *)(iVar9 + 0x364) * fVar16 * DAT_00baa198 + (float)local_c8) -
                   *(float *)(param_1 + 0x340);
        puVar6 = (undefined4 *)FUN_00a10030(&local_b8);
        *(undefined4 *)(param_1 + 0x334) = *puVar6;
        *(undefined4 *)(param_1 + 0x338) = puVar6[1];
        uVar3 = FUN_006eef60();
        fVar18 = (float)((uint)local_9c & DAT_00bacb40);
        fVar13 = (float)((uint)local_ac & DAT_00bacb40);
        *(uint *)(param_1 + 0xba0) = uVar3 % 0xf + 0x1e;
        fVar16 = local_ac;
        puVar1 = puStack_20;
        if (fVar18 < fVar13) goto LAB_004eaad1;
      }
    }
    break;
  case 7:
    if ((*(int *)(param_1 + 0x7c) == 0) ||
       (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(&DAT_00b1e114,0);
    }
    pfVar5 = (float *)FUN_006bec40(&local_b8,0);
    fVar16 = *(float *)(param_1 + 0x39c);
    local_98 = *pfVar5 - *(float *)(param_1 + 0x33c);
    local_ac = pfVar5[1] - *(float *)(param_1 + 0x340);
    fVar13 = DAT_00baa4a4;
    if ((NAN(fVar16) || NAN(DAT_00baa454)) == (fVar16 == DAT_00baa454)) {
      fVar13 = DAT_00baa4a4 / ((fVar16 + DAT_00baa4a4) - fVar16 * DAT_00baa4a4);
    }
    local_9c = fVar13 * *(float *)(param_1 + 0x360);
    *(float *)(param_1 + 0x364) = fVar13 * *(float *)(param_1 + 0x364);
    *(float *)(param_1 + 0x360) = local_9c;
    fVar18 = local_98 * local_98 + local_ac * local_ac;
    FUN_00435a50();
    fVar16 = local_98;
    fVar13 = local_ac;
    if (0.0 < fVar18) {
      fVar16 = local_98 * (DAT_00baa2d0 / fVar18);
      fVar13 = local_ac * (DAT_00baa2d0 / fVar18);
    }
    fVar18 = *(float *)(param_1 + 0x36c);
    if (NAN(fVar18) == (fVar18 == 0.0)) {
      *(float *)(param_1 + 0x360) = (fVar16 * *(float *)(param_1 + 0x39c)) / fVar18 + local_9c;
      *(float *)(param_1 + 0x364) =
           (fVar13 * *(float *)(param_1 + 0x39c)) / fVar18 + *(float *)(param_1 + 0x364);
    }
    fVar18 = (float)((uint)local_ac & DAT_00bacb40);
    fVar13 = (float)((uint)local_98 & DAT_00bacb40);
    *(undefined4 *)(param_1 + 0x37c) = 0x41000000;
    fVar16 = local_98;
    puVar1 = puStack_20;
    if (fVar18 < fVar13) {
LAB_004eaad1:
      *(bool *)(param_1 + 0x148) = fVar16 < 0.0;
      puVar1 = puStack_20;
    }
    break;
  case 8:
    if (*(int *)(param_1 + 0x3bc) == 0) {
      *(undefined4 *)(param_1 + 0xb64) = 7;
      puVar1 = &stack0xfffffffc;
    }
    else {
      cVar2 = FUN_0040b030("Shoot");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x92,0x3f800000,2,0,0x3f800000);
      }
      iVar9 = *(int *)(param_1 + 0xba0);
      if (iVar9 < 1) {
        FUN_0040a380("RageEnd",0);
        uVar3 = FUN_006eef60();
        *(undefined4 *)(param_1 + 0xb64) = 4;
        *(uint *)(param_1 + 0xba0) = uVar3 % 0x1e + 0x3c;
        puVar1 = puStack_20;
      }
      else {
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          FUN_0040a380(&DAT_00b1e114,0);
          iVar9 = *(int *)(param_1 + 0xba0);
        }
        if (iVar9 < 0x14) {
          pfVar5 = (float *)FUN_006bec40(&local_b8,0);
          local_c4 = *pfVar5 - *(float *)(*(int *)(param_1 + 0x3bc) + 0x33c);
          local_c0 = pfVar5[1] - *(float *)(*(int *)(param_1 + 0x3bc) + 0x340);
          pfVar5 = (float *)FUN_00a10030(&local_b8);
          local_c4 = *pfVar5 * DAT_00baa2d0 * *(float *)(param_1 + 0x39c) +
                     *(float *)(param_1 + 0x334);
          local_c0 = pfVar5[1] * DAT_00baa2d0 * *(float *)(param_1 + 0x39c) +
                     *(float *)(param_1 + 0x338);
          puVar6 = (undefined4 *)FUN_00a10030(&local_a0);
          *(undefined4 *)(param_1 + 0x334) = *puVar6;
          *(undefined4 *)(param_1 + 0x338) = puVar6[1];
        }
        fVar16 = *(float *)(param_1 + 0x338) * DAT_00baa6c8;
        *(float *)(param_1 + 0x360) =
             *(float *)(param_1 + 0x334) * DAT_00baa6c8 * *(float *)(param_1 + 0x39c) +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             fVar16 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
        puVar1 = puStack_20;
      }
    }
  }
  puStack_20 = puVar1;
  if (0 < *(int *)(param_1 + 0xba0)) {
    *(int *)(param_1 + 0xba0) =
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
         *(int *)(param_1 + 0xba0);
  }
LAB_004ec1d1:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

