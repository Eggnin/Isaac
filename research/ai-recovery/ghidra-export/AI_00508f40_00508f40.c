/* Local J460 decompiler output.
 * VA: 0x00508f40
 * Entry: 00508f40
 * Dispatcher: 0x006c2990
 * Types: 10,208,252,257,284,302,807
 * Identities: 10.0.0,10.1.0,10.2.0,10.3.0,10.3.1,10.3.2,10.3.3,10.3.4,10.3.5,208.0.0,208.1.0,208.2.0,252.0.0,257.0.0,257.1.0,284.0.0,302.0.0,302.10.0,807.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0050a6b0; instructions=1356
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=10,208,252,257,284,302,807;
   identities=10.0.0,10.1.0,10.2.0,10.3.0,10.3.1,10.3.2,10.3.3,10.3.4,10.3.5,208.0.0,208.1.0,208.2.0,252.0.0,257.0.0,257.1.0,284.0.0,302.0.0,302.10.0,807.0.0;
   dispatcher=0x006c2990; end=0x0050a6b0; instructions=1356 */

void __fastcall AI_00508f40(int param_1)

{
  undefined auVar1 [16];
  undefined4 uVar2;
  char cVar3;
  uint uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  int *piVar10;
  char *pcVar11;
  float *extraout_ECX;
  uint uVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  TypeDescriptor *pTVar17;
  TypeDescriptor *pTVar18;
  undefined *puVar19;
  undefined4 uVar20;
  undefined4 local_218 [8];
  undefined4 local_1f8;
  undefined4 uStack_1f4;
  undefined4 local_1f0;
  undefined4 local_1ec;
  undefined4 local_1e8;
  undefined4 local_1e4;
  float local_1e0;
  float local_1dc;
  float local_1d8;
  float local_1d4;
  float local_1d0;
  float local_1cc;
  float local_1c8;
  float local_1c4;
  float local_1c0;
  undefined4 *local_1bc;
  undefined local_1b8 [4];
  undefined4 local_1b4;
  undefined4 local_1ac;
  undefined local_110 [20];
  undefined4 local_fc;
  uint local_b8;
  uint local_68 [4];
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined auStack_3b [11];
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af41c5;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar4;
  if ((*(int *)(param_1 + 0x28) == 10) && (*(int *)(param_1 + 0x2c) == 3)) {
    puStack_20 = &stack0xfffffffc;
    FUN_004da590();
    goto LAB_0050a68f;
  }
  if ((0.0 < *(float *)(param_1 + 0x14)) &&
     (puVar5 = *(undefined4 **)(param_1 + 8), puVar5 != *(undefined4 **)(param_1 + 0xc))) {
    do {
      if (puVar5[6] == *(int *)(param_1 + 0x28)) {
        *puVar5 = 0;
      }
      puVar5 = puVar5 + 0xe;
    } while (puVar5 != *(undefined4 **)(param_1 + 0xc));
  }
  puVar19 = &stack0xfffffffc;
  if (*(int *)(param_1 + 0xb64) == 0) {
    iVar6 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x410) = 0;
    if (iVar6 == 0x12e) {
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
      *(uint *)(param_1 + 0x16c) = *(uint *)(param_1 + 0x16c) | 8;
      *(undefined *)(param_1 + 0x3b0) = 1;
      puVar19 = &stack0xfffffffc;
    }
    else {
      puVar19 = &stack0xfffffffc;
      if ((iVar6 != 0xd0) && (puVar19 = &stack0xfffffffc, iVar6 != 0x101)) {
        if ((iVar6 == 10) && (*(int *)(param_1 + 0x2c) == 2)) {
          puStack_20 = &stack0xfffffffc;
          FUN_0040a940(&DAT_00b5fed4,0);
          puVar19 = puStack_20;
        }
        else {
          cVar3 = FUN_0040aaf0(&DAT_00b5fed4,1);
          puVar19 = puStack_20;
          if ((cVar3 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
            FUN_00408e00();
            puVar19 = puStack_20;
          }
        }
      }
    }
    puStack_20 = puVar19;
    if ((*(int *)(param_1 + 0x28) == 0xd0) && (*(int *)(param_1 + 0x2c) == 2)) {
      *(undefined *)(param_1 + 0xb8) = 1;
      FUN_0040a940(&DAT_00b60d60,0);
    }
    cVar3 = FUN_0040a5d0("WalkVert",1);
    if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    uVar2 = _UNK_00babf4c;
    uVar20 = _UNK_00babf48;
    uVar8 = _UNK_00babf44;
    uVar7 = _DAT_00babf40;
    puVar19 = puStack_20;
    if (*(int *)(param_1 + 0x28) == 0xfc) {
      local_1f8 = 0;
      uStack_1f4 = 0;
      local_1f0 = 0;
      if ((undefined4 *)(param_1 + 0x1e4) != local_218) {
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x204) = 0;
        *(undefined4 *)(param_1 + 0x1e4) = uVar7;
        *(undefined4 *)(param_1 + 0x1e8) = uVar8;
        *(undefined4 *)(param_1 + 0x1ec) = uVar20;
        *(undefined4 *)(param_1 + 0x1f0) = uVar2;
        *(undefined4 *)(param_1 + 0x20c) = 0;
      }
    }
    else if (*(int *)(param_1 + 0x28) == 0x12e) {
      *(undefined4 *)(param_1 + 0x188) = 2;
      puVar5 = (undefined4 *)FUN_00407170();
      if ((undefined4 *)(param_1 + 0x1e4) != puVar5) {
        uVar7 = puVar5[1];
        uVar8 = puVar5[2];
        uVar20 = puVar5[3];
        *(undefined4 *)(param_1 + 0x1e4) = *puVar5;
        *(undefined4 *)(param_1 + 0x1e8) = uVar7;
        *(undefined4 *)(param_1 + 0x1ec) = uVar8;
        *(undefined4 *)(param_1 + 0x1f0) = uVar20;
        uVar7 = puVar5[5];
        uVar8 = puVar5[6];
        uVar20 = puVar5[7];
        *(undefined4 *)(param_1 + 500) = puVar5[4];
        *(undefined4 *)(param_1 + 0x1f8) = uVar7;
        *(undefined4 *)(param_1 + 0x1fc) = uVar8;
        *(undefined4 *)(param_1 + 0x200) = uVar20;
        *(undefined8 *)(param_1 + 0x204) = *(undefined8 *)(puVar5 + 8);
        *(undefined4 *)(param_1 + 0x20c) = puVar5[10];
      }
      *(undefined4 *)(param_1 + 500) = 0x3f800000;
      *(undefined4 *)(param_1 + 0x1f8) = 0x3f800000;
      *(undefined4 *)(param_1 + 0x1fc) = 0x3f800000;
      *(undefined4 *)(param_1 + 0x200) = 0x3f800000;
      uVar12 = FUN_006eef60();
      *(uint *)(param_1 + 0xbc0) = uVar12 % 0x3c + 0x5a;
      puVar19 = puStack_20;
      if (((*(int *)(param_1 + 0x2c) == 10) &&
          (FUN_0040a940("HeadIdle",0), puVar19 = puStack_20, *(int *)(param_1 + 0x7c) != 0)) &&
         (local_1bc = (undefined4 *)FUN_0040ac70(2), puVar19 = puStack_20,
         local_1bc != (undefined4 *)0x0)) {
        iVar6 = FUN_0040b220(1);
        *(undefined4 *)(iVar6 + 0x40) = *local_1bc;
        *(undefined4 *)(iVar6 + 0x44) = local_1bc[1];
        iVar6 = FUN_0040b220(1);
        *(undefined4 *)(iVar6 + 0x34) = local_1bc[4];
        *(undefined4 *)(iVar6 + 0x38) = local_1bc[5];
        puVar19 = puStack_20;
      }
    }
  }
  puStack_20 = puVar19;
  if (((*(int *)(param_1 + 0x28) == 0xd0) && (*(int *)(param_1 + 0x2c) == 2)) &&
     ((*(int *)(param_1 + 0x7c) != 0 &&
      (((puVar5 = (undefined4 *)FUN_0040ace0("FirePos"), puVar5 != (undefined4 *)0x0 &&
        (*(char *)(puVar5 + 3) != '\0')) && (iVar6 = FUN_0040b430(&DAT_00b60d60), iVar6 != 0)))))) {
    *(undefined4 *)(iVar6 + 0x40) = *puVar5;
    *(undefined4 *)(iVar6 + 0x44) = puVar5[1];
    *(undefined4 *)(iVar6 + 0x34) = puVar5[4];
    *(undefined4 *)(iVar6 + 0x38) = puVar5[5];
  }
  iVar6 = *(int *)(param_1 + 0xb64);
  if (iVar6 == 0) goto LAB_0050a68f;
  if (*(char *)(param_1 + 0x173) != '\0') {
    if ((DAT_00baae00 < *(float *)(param_1 + 0x380)) && (uVar4 = FUN_006eef60(), (uVar4 & 1) == 0))
    {
      iVar6 = *(int *)(param_1 + 0x28);
      if (iVar6 == 10) {
        uVar4 = FUN_006eef60();
        if ((uVar4 % 3 == 0) && (*(int *)(param_1 + 0x2c) != 2)) {
          uVar7 = 1;
        }
        else {
          uVar7 = 0;
        }
        FUN_006c0f30(0xb,uVar7,0,0xffffffff);
        *(undefined *)(param_1 + 0x173) = 0;
        uVar4 = FUN_006eef60();
        *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
        *(uint *)(param_1 + 0xba0) = uVar4 % 0x14 + 0x14;
      }
      else if (iVar6 == 0xd0) {
        if (*(int *)(param_1 + 0x2c) == 1) {
          FUN_006c0f30(0xd2,0,0,0xffffffff);
          *(undefined *)(param_1 + 0x173) = 0;
          *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
        }
        else if (*(int *)(param_1 + 0x2c) == 2) {
          uVar7 = FUN_006eef60();
          iVar6 = FUN_00428b20(0x21,10,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
          *(undefined4 *)(iVar6 + 0x334) = *(undefined4 *)(iVar6 + 0x33c);
          *(undefined4 *)(iVar6 + 0x338) = *(undefined4 *)(iVar6 + 0x340);
        }
      }
      else if ((iVar6 == 0x101) && (*(int *)(param_1 + 0x2c) == 0)) {
        FUN_006c0f30(0xd0,0,0,0xffffffff);
        *(undefined *)(param_1 + 0x173) = 0;
        *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
      }
    }
    goto LAB_0050a68f;
  }
  iVar9 = *(int *)(param_1 + 0x28);
  if ((iVar9 == 0xd0) || (iVar9 == 0x101)) {
    if (iVar6 == 4) {
      if (*(int *)(param_1 + 0x410) < 100) {
        *(int *)(param_1 + 0x410) =
             *(int *)(param_1 + 0x410) +
             ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
      }
      iVar6 = FUN_006be840(uVar4);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        cVar3 = FUN_006d7d60(iVar6);
        if (((cVar3 == '\0') ||
            (fVar15 = *(float *)(iVar6 + 0x33c) - *(float *)(param_1 + 0x33c),
            fVar14 = *(float *)(iVar6 + 0x340) - *(float *)(param_1 + 0x340),
            DAT_00baac5c <= fVar14 * fVar14 + fVar15 * fVar15)) ||
           (uVar4 = FUN_006eef60(), uVar4 % 0x78 != 0)) goto LAB_00509511;
      }
      else {
        cVar3 = FUN_006d8260(9);
        if (cVar3 == '\0') {
          FUN_006d85a0(&local_1cc);
          cVar3 = FUN_00a10630(&DAT_00c7b640);
          if (cVar3 == '\0') goto LAB_00509511;
        }
      }
      if (99 < *(int *)(param_1 + 0x410)) {
        FUN_006d6ba0(0xa7,0x3f800000,5,0,0x3f800000);
        fVar15 = *(float *)(param_1 + 0x360);
        fVar14 = *(float *)(param_1 + 0x364);
        fVar16 = (float)((uint)fVar15 & DAT_00bacb40);
        fVar13 = (float)((uint)fVar14 & DAT_00bacb40);
        *(undefined4 *)(param_1 + 0xb64) = 8;
        *(undefined4 *)(param_1 + 0x410) = 0;
        if ((fVar16 <= fVar13) || (fVar15 * fVar15 + fVar14 * fVar14 <= DAT_00baa06c)) {
          FUN_0040a380("AttackVert",0);
          FUN_006d9050(1);
        }
        else {
          FUN_0040a380("AttackHori",0);
          *(bool *)(param_1 + 0x148) =
               *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
          FUN_006d9050(1);
        }
        goto LAB_0050a68f;
      }
    }
    else if (iVar6 == 8) {
      FUN_006d9050(0);
      if ((*(int *)(param_1 + 0x28) == 0x101) && (*(int *)(param_1 + 0x2c) == 0)) {
        cVar3 = FUN_0040b030("Target");
        if (cVar3 != '\0') {
          iVar6 = FUN_006be840();
          local_1c4 = *(float *)(iVar6 + 0x33c) - *(float *)(param_1 + 0x33c);
          local_1c0 = *(float *)(iVar6 + 0x340) - *(float *)(param_1 + 0x340);
          puVar5 = (undefined4 *)FUN_00a10030(&local_1cc);
          *(undefined4 *)(param_1 + 0x334) = *puVar5;
          *(undefined4 *)(param_1 + 0x338) = puVar5[1];
        }
        cVar3 = FUN_0040b030("Shoot");
        if (((cVar3 != '\0') && (*(int *)(param_1 + 0xf1c) != -1)) &&
           (cVar3 = FUN_00a10630(&DAT_00c7b640), cVar3 != '\0')) {
          puVar5 = (undefined4 *)FUN_00a10030(&local_1d4);
          *(undefined4 *)(param_1 + 0x334) = *puVar5;
          *(undefined4 *)(param_1 + 0x338) = puVar5[1];
        }
        cVar3 = FUN_0040b090("Shoot");
        if ((cVar3 != '\0') && (cVar3 = FUN_0040b090(&DAT_00b1d6f4), cVar3 == '\0')) {
          iVar6 = *(int *)(param_1 + 0x410);
          if (iVar6 == 0) {
            local_1bc = (undefined4 *)0xd4;
            FUN_00956780();
            FUN_0092dc30(local_1bc,0x3f333333,2,0,0x3f800000,0);
            local_1bc = (undefined4 *)0x25;
            FUN_00956780();
            FUN_0092dc30(local_1bc,0x3f800000,2,0,0x3f800000,0);
            iVar6 = *(int *)(param_1 + 0x410);
          }
          local_1c0 = (float)iVar6 * DAT_00baa8a0 * *(float *)(param_1 + 0x338) +
                      *(float *)(param_1 + 0x340);
          local_1c4 = (float)iVar6 * DAT_00baa8a0 * *(float *)(param_1 + 0x334) +
                      *(float *)(param_1 + 0x33c);
          uVar7 = FUN_006eef60();
          piVar10 = (int *)FUN_00428b20(1000,0x17,&local_1c4,&DAT_00c7b640,param_1,0,uVar7);
          iVar6 = *(int *)(param_1 + 0x410);
          piVar10[0x117] = 0xf;
          piVar10[0x118] = 0xf;
          local_1bc = (undefined4 *)((float)iVar6 * DAT_00baa0f4 + DAT_00baa3e0);
          piVar10[0x39] = (int)local_1bc;
          piVar10[0x3a] = (int)local_1bc;
          (**(code **)(*piVar10 + 0xc))();
          cVar3 = FUN_00813360(&local_1c4,0);
          if (cVar3 != '\0') {
            iVar6 = FUN_006eef60();
            local_30 = 0x3da3d70a;
            local_2c = 0x3f000000;
            local_28 = 0x3c23d70a;
            local_1e4 = 0;
            local_1dc = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                        DAT_00ba9ff4;
            local_1d8 = local_1dc * *(float *)(param_1 + 0x338);
            local_1dc = local_1dc * *(float *)(param_1 + 0x334);
            local_1d8 = local_1d8 + local_1d8;
            local_1dc = local_1dc + local_1dc;
            _local_40 = ZEXT416(0);
            local_50 = _DAT_00babf20;
            uStack_4c = _UNK_00babf24;
            uStack_48 = _UNK_00babf28;
            uStack_44 = _UNK_00babf2c;
            iVar6 = FUN_006eef60();
            local_1e0 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baaddc;
            local_1cc = local_1c4 - *(float *)(param_1 + 0x334) * DAT_00baa784;
            local_1c8 = local_1c0 - *(float *)(param_1 + 0x338) * DAT_00baa784;
            iVar6 = FUN_006d7cf0(&local_1e4,&local_50,&local_1dc);
            iVar9 = FUN_006eef60();
            *(float *)(iVar6 + 0xec) =
                 (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baab30;
            uVar7 = FUN_006eef60();
            piVar10 = (int *)FUN_00428b20(1000,7,&local_1c4,&DAT_00c7b640,0,0,uVar7);
            local_30 = 0x3da3d70a;
            piVar10[0xdd] = (int)local_1bc;
            piVar10[0xde] = (int)local_1bc;
            _local_40 = ZEXT816(0);
            local_50 = _DAT_00babbb0;
            uStack_4c = _UNK_00babbb4;
            uStack_48 = _UNK_00babbb8;
            uStack_44 = _UNK_00babbbc;
            local_2c = 0x3f000000;
            local_28 = 0x3c23d70a;
            (**(code **)(*piVar10 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
            (**(code **)(*piVar10 + 0xc))();
          }
          *(int *)(param_1 + 0x410) =
               *(int *)(param_1 + 0x410) +
               ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
        }
LAB_00509e31:
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
        goto LAB_00509e40;
      }
      else {
        if (*(int *)(param_1 + 0x7c) != 0) {
          cVar3 = FUN_0040add0("Shoot");
          if (cVar3 != '\0') {
            if (*(int *)(param_1 + 0x28) == 0x101) {
              local_1bc = (undefined4 *)0xd5;
              FUN_00956780();
              FUN_0092dc30(local_1bc,0x3f800000,2,0,0x3f800000,0);
              AI_0043ef30();
              local_b8 = local_b8 | 3;
              local_fc = 0x3fc00000;
              iVar6 = FUN_006be840();
              local_1c4 = *(float *)(iVar6 + 0x33c) - *(float *)(param_1 + 0x33c);
              local_1c0 = *(float *)(iVar6 + 0x340) - *(float *)(param_1 + 0x340);
              if ((*(int *)(param_1 + 0xf1c) != -1) &&
                 (cVar3 = FUN_00a10630(&DAT_00c7b640), cVar3 != '\0')) {
                local_1c4 = *extraout_ECX;
                local_1c0 = extraout_ECX[1];
              }
              puVar19 = local_110;
              uVar8 = 0;
              uVar7 = FUN_00a10100(&local_1cc,0x40e00000);
              FUN_006cb2e0((float *)(param_1 + 0x33c),uVar7,uVar8,puVar19);
            }
            else {
              iVar6 = param_1 + 0x33c;
              FUN_00704360(iVar6,0x42f00000,param_1,1,0);
              if (*(int *)(param_1 + 0x2c) == 1) {
                uVar7 = AI_0043ef30();
                local_1cc = 8.0;
                local_1c8 = 6.0;
                FUN_006cb2e0(iVar6,&local_1cc,9,uVar7);
              }
              else if (*(int *)(param_1 + 0x2c) == 2) {
                uVar7 = FUN_006eef60();
                iVar6 = FUN_00428b20(0x21,10,iVar6,&DAT_00c7b640,param_1,0,uVar7);
                *(undefined4 *)(iVar6 + 0x334) = *(undefined4 *)(iVar6 + 0x33c);
                *(undefined4 *)(iVar6 + 0x338) = *(undefined4 *)(iVar6 + 0x340);
              }
            }
          }
          goto LAB_00509e31;
        }
LAB_00509e40:
        *(undefined4 *)(param_1 + 0xb64) = 4;
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa280;
      goto LAB_0050a68f;
    }
  }
  else if ((iVar9 == 0x11c) && (iVar6 == 8)) {
    FUN_006d9050(0);
    cVar3 = FUN_0040add0("Shoot");
    if (cVar3 != '\0') {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        iVar6 = FUN_006be840();
        local_1c4 = *(float *)(iVar6 + 0x33c) - *(float *)(param_1 + 0x33c);
        local_1c0 = *(float *)(iVar6 + 0x340) - *(float *)(param_1 + 0x340);
      }
      else {
        local_1c4 = *(float *)(param_1 + 0xf20);
        local_1c0 = *(float *)(param_1 + 0xf24);
      }
      uVar7 = AI_0043ef30();
      uVar8 = FUN_00a10100(&local_1cc,0x40e00000);
      FUN_006cb2e0(param_1 + 0x33c,uVar8,0,uVar7);
    }
    if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
      *(undefined4 *)(param_1 + 0x410) = 0;
      FUN_0040abf0(&DAT_00b5fed4,0);
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa280;
  }
LAB_00509511:
  if ((*(int *)(param_1 + 0x28) != 0x12e) || (iVar6 = 0x12e, *(int *)(param_1 + 0xb64) != 0x10)) {
    uVar4 = local_40._0_4_;
    auVar1._8_8_ = 0;
    auVar1._0_8_ = auStack_3b._3_8_;
    _local_40 = auVar1 << 0x40;
    local_2c = 0;
    local_28 = 0xf;
    local_40[4] = 0;
    local_40 = (undefined  [5])CONCAT14(local_40[4],uVar4);
    FUN_0040ccd0("WalkVert",8);
    local_14 = 0;
    local_58 = 0;
    local_54 = 0xf;
    local_68[0] = 0;
    FUN_0040ccd0("WalkHori",8);
    local_14._0_1_ = 1;
    FUN_006c1330(local_68,local_40 + 4,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_54) {
      uVar12 = local_54 + 1;
      uVar4 = local_68[0];
      if (0xfff < uVar12) {
        uVar4 = *(uint *)(local_68[0] - 4);
        uVar12 = local_54 + 0x24;
        if (0x1f < (local_68[0] - uVar4) - 4) goto LAB_0050961d;
      }
      FUN_00aef15c(uVar4,uVar12);
    }
    local_14 = -1;
    local_58 = 0;
    local_54 = 0xf;
    local_68[0] = local_68[0] & 0xffffff00;
    if (0xf < local_28) {
      uVar4 = local_28 + 1;
      iVar6 = stack0xffffffc4;
      if (0xfff < uVar4) {
        iVar6 = *(int *)(stack0xffffffc4 + -4);
        uVar4 = local_28 + 0x24;
        if (0x1f < (stack0xffffffc4 - iVar6) - 4U) {
LAB_0050961d:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar6,uVar4);
    }
    iVar6 = *(int *)(param_1 + 0x28);
  }
  *(undefined4 *)(param_1 + 0xc34) = 0x3f19999a;
  if ((iVar6 == 0xd0) || (iVar6 == 0x101)) {
    *(undefined4 *)(param_1 + 0xc34) = 0x3e99999a;
    if ((iVar6 == 0xd0) && (*(int *)(param_1 + 0x2c) == 2)) {
      *(undefined4 *)(param_1 + 0xc34) = 0x3ea8f5c3;
    }
  }
  else if (iVar6 == 0x12e) {
    if (*(int *)(param_1 + 0x2c) == 10) {
      *(undefined4 *)(param_1 + 0xc34) = 0x3ef5c290;
    }
  }
  else if (iVar6 == 0xfc) {
    *(undefined4 *)(param_1 + 0xc34) = 0x3f666667;
  }
  else if ((*(int *)(param_1 + 0x2c) == 1) || (iVar6 == 0x11c)) {
    *(undefined4 *)(param_1 + 0xc34) = 0x3efef9db;
  }
  else if (*(int *)(param_1 + 0x2c) == 2) {
    *(undefined4 *)(param_1 + 0xc34) = 0x3f0c3c9f;
    FUN_0040a940(&DAT_00b5fed4,0);
  }
  else {
    iVar6 = FUN_0040ac50();
    if (0 < iVar6) {
      *(undefined4 *)(param_1 + 0xc34) = 0x3f3851ec;
    }
  }
  if ((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) {
    local_1bc = *(undefined4 **)(param_1 + 0xc34);
    uVar7 = 900;
    if (*(int *)(param_1 + 0x28) == 0x12e) {
      uVar7 = 100;
    }
    uVar8 = FUN_006bec40(&local_1cc,0);
    FUN_007e33c0(uVar8,local_1bc,uVar7,1);
  }
  else {
    iVar6 = FUN_006be840();
    local_1cc = *(float *)(iVar6 + 0x33c);
    local_1c8 = *(float *)(iVar6 + 0x340);
    FUN_007e4940(&local_1cc,0);
    fVar15 = DAT_00baa3a4;
    fVar14 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    *(float *)(param_1 + 0x36c) = fVar14;
    if (((*(int *)(param_1 + 0x28) == 0xd0) || (*(int *)(param_1 + 0x28) == 0x101)) &&
       (0 < *(int *)(param_1 + 0xb50))) {
      *(float *)(param_1 + 0x36c) = fVar14 * fVar15;
    }
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
    uVar7 = FUN_006be840();
    cVar3 = FUN_006d7d60(uVar7);
    if (((cVar3 != '\0') && (*(char *)(param_1 + 0xb40) != '\0')) &&
       (uVar4 = FUN_006eef60(), uVar4 % 3 == 0)) goto LAB_0050a077;
  }
  else {
    cVar3 = FUN_006d8290(10);
    if (cVar3 != '\0') {
LAB_0050a077:
      iVar6 = *(int *)(param_1 + 0x28);
      if ((iVar6 == 0xd0) || (iVar6 == 0x101)) {
        fVar15 = 1.0;
        uVar8 = 0x3c;
        uVar7 = 0x74;
      }
      else if (iVar6 == 0x12e) {
        if ((*(int *)(param_1 + 0xb64) == 0x10) || (*(int *)(param_1 + 0x2c) == 10))
        goto LAB_0050a131;
        iVar6 = FUN_006eef60();
        fVar15 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa120 + DAT_00baa3e0;
        uVar8 = 0x3c;
        uVar7 = 0x32;
      }
      else {
        fVar15 = 1.0;
        uVar8 = 0x28;
        uVar7 = 0xa5;
      }
      FUN_006d6ba0(uVar7,0x3f800000,uVar8,0,fVar15);
    }
  }
LAB_0050a131:
  if (((((*(int *)(param_1 + 0x2c) == 0) && (*(char *)(param_1 + 0xb40) != '\0')) &&
       (iVar6 = *(int *)(param_1 + 0x28), iVar6 != 0xd0)) && ((iVar6 != 0x101 && (iVar6 != 0x12e))))
     && (iVar6 = FUN_0040ac50(), iVar6 < 1)) {
    FUN_0040a940(&DAT_00b5fed4,1);
  }
  if (*(int *)(param_1 + 0x28) == 0x11c) {
    iVar6 = FUN_006ac760();
    if (iVar6 != 0) {
      uVar7 = FUN_006eef60();
      uVar20 = 0;
      pTVar18 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTVar17 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar8 = 0;
      uVar7 = FUN_00428b20(1000,0x16,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
      piVar10 = (int *)__RTDynamicCast(uVar7,uVar8,pTVar17,pTVar18,uVar20);
      iVar6 = FUN_006eef60();
      piVar10[0x117] = 0x14;
      piVar10[0x118] = 0x14;
      fVar15 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa1f8 + DAT_00baa198;
      piVar10[0x39] = (int)fVar15;
      piVar10[0x3a] = (int)fVar15;
      (**(code **)(*piVar10 + 0xc))();
    }
    if ((*(int *)(param_1 + 0xb64) == 4) && (*(int *)(param_1 + 0xba0) < 1)) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        if (((*(char *)(param_1 + 0xb40) != '\0') && (uVar4 = FUN_006eef60(), uVar4 % 0x1e == 0)) &&
           (iVar6 = FUN_006be840(), fVar14 = *(float *)(param_1 + 0x33c) - *(float *)(iVar6 + 0x33c)
           , fVar15 = *(float *)(param_1 + 0x340) - *(float *)(iVar6 + 0x340),
           fVar15 * fVar15 + fVar14 * fVar14 < DAT_00baac5c)) {
          *(undefined4 *)(param_1 + 0xba0) = 0x3c;
          goto LAB_0050a310;
        }
      }
      else {
        FUN_006d9050(1);
        cVar3 = FUN_00a10630(&DAT_00c7b640);
        if (cVar3 != '\0') {
          *(undefined4 *)(param_1 + 0xba0) = 0x2d;
LAB_0050a310:
          *(undefined4 *)(param_1 + 0xb64) = 8;
          FUN_0040a940("Attack",0);
        }
      }
    }
    if (0 < *(int *)(param_1 + 0xba0)) {
      *(int *)(param_1 + 0xba0) =
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
           *(int *)(param_1 + 0xba0);
    }
  }
  if (*(int *)(param_1 + 0x28) != 0x12e) goto LAB_0050a68f;
  iVar6 = FUN_006d6c20();
  if ((iVar6 < 1) &&
     ((*(char *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7229) == '\0' ||
      (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec) < 9)))) {
    iVar6 = *(int *)(param_1 + 0xb64);
    if (iVar6 == 0x12) goto LAB_0050a421;
    *(undefined4 *)(param_1 + 0xb64) = 0x12;
    *(undefined4 *)(param_1 + 0x410) = 0;
    *(undefined4 *)(param_1 + 0x188) = 0;
    if (*(int *)(param_1 + 0x2c) != 10) goto LAB_0050a68f;
    FUN_00408830(0);
    iVar6 = FUN_0040b220(1);
    *(undefined4 *)(iVar6 + 0x40) = DAT_00c7b640;
    *(undefined4 *)(iVar6 + 0x44) = DAT_00c7b644;
    iVar6 = FUN_0040b220(1);
    *(undefined4 *)(iVar6 + 0x34) = DAT_00c3793c;
    *(undefined4 *)(iVar6 + 0x38) = DAT_00c37940;
  }
  else {
    iVar6 = *(int *)(param_1 + 0xb64);
LAB_0050a421:
    if (iVar6 == 4) {
      if (*(int *)(param_1 + 0x2c) == 10) {
        pcVar11 = "ShootAndRotate1";
        if (*(int *)(param_1 + 0xbc4) != 1) {
          pcVar11 = "ShootAndRotate2";
        }
        FUN_0040a940(pcVar11,0);
        cVar3 = FUN_0040add0("Shoot");
        if (cVar3 != '\0') {
          FUN_006d6ba0(0x106,0x3f800000,0,0,0x3f800000);
          AI_0043ef30();
          local_1b4 = 0xc1700000;
          local_1ac = 0x3e99999a;
          local_1d4 = *(float *)(param_1 + 0x360) + *(float *)(param_1 + 0x360) +
                      *(float *)(param_1 + 0x33c);
          local_1ec = 0x41200000;
          local_1e8 = 0;
          local_1d0 = *(float *)(param_1 + 0x364) + *(float *)(param_1 + 0x364) +
                      *(float *)(param_1 + 0x340);
          FUN_006cb2e0(&local_1d4,&local_1ec,(*(int *)(param_1 + 0xbc4) != 1) + '\x06',local_1b8);
        }
        if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
          *(int *)(param_1 + 0xbc4) = 1 - *(int *)(param_1 + 0xbc4);
        }
      }
      else if ((*(int *)(param_1 + 0xbc0) < 1) ||
              (iVar6 = *(int *)(param_1 + 0xbc0) +
                       ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)),
              *(int *)(param_1 + 0xbc0) = iVar6, iVar6 < 1)) {
        *(undefined4 *)(param_1 + 0xb64) = 0x10;
        FUN_0040a380(&DAT_00b1e10c,0);
        uVar4 = FUN_006eef60();
        *(uint *)(param_1 + 0xbc0) = ((uVar4 & 3) + 2) * 0x15;
      }
    }
    else if (iVar6 == 0x10) {
      *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x360) * 0.0;
      *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x364) * 0.0;
      iVar6 = *(int *)(param_1 + 0xbc0);
      if (0 < iVar6) {
        iVar6 = iVar6 + ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
        *(int *)(param_1 + 0xbc0) = iVar6;
      }
      if (iVar6 < 1) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        uVar4 = FUN_006eef60();
        *(uint *)(param_1 + 0xbc0) = uVar4 % 0x3c + 0x5a;
      }
    }
  }
  if ((*(int *)(param_1 + 0x2c) == 10) && (*(int *)(param_1 + 0xb64) != 0x12)) {
    puVar5 = (undefined4 *)FUN_0040b1a0(2);
    if ((puVar5 == (undefined4 *)0x0) || (*(char *)(puVar5 + 3) == '\0')) {
      iVar6 = FUN_0040b220(1);
      *(undefined *)(iVar6 + 0x74) = 0;
    }
    else {
      iVar6 = FUN_0040b220(1);
      *(undefined *)(iVar6 + 0x74) = 1;
      iVar6 = FUN_0040b220(1);
      *(undefined4 *)(iVar6 + 0x40) = *puVar5;
      *(undefined4 *)(iVar6 + 0x44) = puVar5[1];
      iVar6 = FUN_0040b220(1);
      *(undefined4 *)(iVar6 + 0x34) = puVar5[4];
      *(undefined4 *)(iVar6 + 0x38) = puVar5[5];
    }
  }
LAB_0050a68f:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

