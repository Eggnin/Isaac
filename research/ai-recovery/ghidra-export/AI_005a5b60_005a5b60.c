/* Local J460 decompiler output.
 * VA: 0x005a5b60
 * Entry: 005a5b60
 * Dispatcher: 0x006c2990
 * Types: 294
 * Identities: 294.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005a6b80; instructions=1139
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=294; identities=294.0.0; dispatcher=0x006c2990;
   end=0x005a6b80; instructions=1139 */

void __fastcall AI_005a5b60(int *param_1)

{
  byte bVar1;
  uint uVar2;
  byte **ppbVar3;
  byte **ppbVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int *piVar7;
  uint uVar8;
  char *pcVar9;
  byte *pbVar10;
  uint *puVar11;
  int **ppiVar12;
  uint uVar13;
  uint uVar14;
  int iVar15;
  int *piVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  undefined4 uVar22;
  TypeDescriptor *pTVar23;
  TypeDescriptor *pTVar24;
  undefined4 uVar25;
  undefined local_d4 [32];
  undefined4 local_b4;
  undefined4 uStack_b0;
  undefined4 local_ac;
  char local_a8 [4];
  int **local_a4;
  int local_9c;
  char local_98 [4];
  int local_94;
  undefined4 local_90;
  uint local_8c;
  undefined local_88 [4];
  float local_84;
  undefined local_80 [4];
  uint local_7c;
  undefined local_78 [4];
  float local_74;
  float local_70;
  float local_6c;
  uint local_68;
  uint local_64;
  undefined4 local_60;
  int *local_5c;
  int *local_58;
  int *local_54;
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
  puStack_18 = &LAB_00af593b;
  local_1c = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar2;
  AI_0041af60(local_a8,0x196,0xffffffff,0xffffffff,0,0);
  local_14 = 0;
  AI_0041af60(local_98,0x126,0xffffffff,0xffffffff,1,0);
  local_14 = CONCAT31(local_14._1_3_,1);
  iVar15 = param_1[0x2d9];
  if (iVar15 == 0) {
    param_1[0x2d9] = 2;
    if ((undefined (*) [16])(param_1 + 0x79) != (undefined (*) [16])local_d4) {
      *(undefined8 *)(param_1 + 0x81) = 0;
      *(undefined (*) [16])(param_1 + 0x79) = ZEXT816(0);
      param_1[0x83] = 0;
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
    }
    fVar20 = DAT_00baa904;
    param_1[0x5b] = param_1[0x5b];
    iVar15 = DAT_00c71678;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x11;
    uVar8 = 0xffffffff;
    param_1[0x62] = 0;
    param_1[0x61] = 0;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0xd7] = 1;
    local_54 = *(int **)(iVar15 + 0x18300);
    local_68 = 0xffffffff;
    local_6c = DAT_00c7b640;
    local_70 = DAT_00c7b644;
    local_7c = 0;
    local_64 = 1;
    local_58 = (int *)0x744;
    local_b4 = 0;
    uStack_b0 = 0;
    local_ac = 0;
    fVar21 = DAT_00c7b644;
    fVar18 = DAT_00c7b640;
    do {
      uVar14 = local_7c;
      if ((local_7c < 8) &&
         (uVar8 = local_68,
         (*(uint *)(*(int *)(*(int *)((int)local_54 + 4) + 0x10) + 0x38 + (local_7c >> 5) * 4) &
         local_64) != 0)) {
        local_84 = (float)(*(int *)((int)local_58 + (int)local_54) % *(int *)((int)local_54 + 0xc))
                   * fVar20 + fVar20;
        local_74 = (float)(*(int *)((int)local_58 + (int)local_54) / *(int *)((int)local_54 + 0xc))
                   * fVar20 + DAT_00baaa00;
        if (local_68 != 0xffffffff) {
          piVar7 = (int *)(((float)param_1[0xd0] - local_74) * ((float)param_1[0xd0] - local_74) +
                          ((float)param_1[0xcf] - local_84) * ((float)param_1[0xcf] - local_84));
          FUN_00435a50(uVar2);
          local_5c = piVar7;
          fVar19 = ((float)param_1[0xd0] - local_70) * ((float)param_1[0xd0] - local_70) +
                   ((float)param_1[0xcf] - local_6c) * ((float)param_1[0xcf] - local_6c);
          FUN_00435a50();
          uVar8 = local_68;
          fVar21 = local_70;
          fVar20 = DAT_00baa904;
          fVar18 = local_6c;
          if (fVar19 <= (float)local_5c) goto LAB_005a5e5f;
        }
        uVar13 = 0;
        if (local_8c != 0) {
          do {
            iVar15 = *(int *)(local_94 + uVar13 * 4);
            fVar21 = *(float *)(iVar15 + 0x33c) - local_84;
            fVar20 = *(float *)(iVar15 + 0x340) - local_74;
            fVar19 = fVar20 * fVar20 + fVar21 * fVar21;
            FUN_00435a50();
            uVar8 = local_68;
            uVar14 = local_7c;
            fVar21 = local_70;
            fVar20 = DAT_00baa904;
            fVar18 = local_6c;
            if (fVar19 < DAT_00baa9a0) goto LAB_005a5e5f;
            uVar13 = uVar13 + 1;
          } while (uVar13 < local_8c);
        }
        local_68 = local_7c;
        local_6c = local_84;
        local_70 = local_74;
        uVar8 = local_7c;
        uVar14 = local_7c;
        fVar21 = local_74;
        fVar20 = DAT_00baa904;
        fVar18 = local_84;
      }
LAB_005a5e5f:
      local_58 = local_58 + 1;
      local_64 = local_64 << 1 | (uint)((int)local_64 < 0);
      local_7c = uVar14 + 1;
    } while ((int)local_58 < 0x764);
    if (uVar8 != 0xffffffff) {
      param_1[0x2f0] = uVar8;
      param_1[0xcf] = (int)fVar18;
      param_1[0xd0] = (int)fVar21;
    }
    local_5c = (int *)((float)param_1[0x2f0] * DAT_00baa9b4 * DAT_00baa088);
    param_1[0x3b] = (int)((float)param_1[0x2f0] * DAT_00baa9b4 - DAT_00baa9b4);
    piVar7 = local_5c;
    FUN_0041d520();
    local_54 = piVar7;
    piVar7 = local_5c;
    FUN_0041d540();
    fVar20 = (float)piVar7 * _DAT_00baa890 + (float)param_1[0xcf];
    fVar21 = (float)local_54 * _DAT_00baa890 + (float)param_1[0xd0];
    param_1[0xcf] = (int)fVar20;
    param_1[0xcd] = (int)fVar20;
    param_1[0xd0] = (int)fVar21;
    param_1[0xce] = (int)fVar21;
    goto LAB_005a6ae5;
  }
  local_58 = param_1 + 0x12;
  if (iVar15 == 2) {
    FUN_0040a380("Closed",0);
    param_1[0x2d9] = 3;
    iVar15 = 3;
  }
  if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
    ppbVar3 = (byte **)param_1[0x1f];
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar3 = (byte **)*ppbVar3;
    }
    pcVar9 = "Close";
    do {
      bVar1 = *(byte *)ppbVar3;
      bVar17 = bVar1 < (byte)*pcVar9;
      if (bVar1 != *pcVar9) {
LAB_005a5f94:
        uVar2 = -(uint)bVar17 | 1;
        goto LAB_005a5f99;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar3 + 1);
      bVar17 = bVar1 < ((byte *)pcVar9)[1];
      if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a5f94;
      ppbVar3 = (byte **)((int)ppbVar3 + 2);
      pcVar9 = (char *)((byte *)pcVar9 + 2);
    } while (bVar1 != 0);
    uVar2 = 0;
LAB_005a5f99:
    if (uVar2 == 0) {
      FUN_0040a380("Closed",0);
      iVar15 = param_1[0x2d9];
    }
  }
  if (iVar15 == 3) {
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_005a6049:
      FUN_0040a380("Close",0);
      local_54 = (int *)&DAT_00000023;
      FUN_00956780();
      FUN_0092dc30(local_54,0x3f000000,0x14,0,0x3f800000,0);
    }
    else {
      ppbVar3 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar3 = (byte **)*ppbVar3;
      }
      pcVar9 = "Close";
      do {
        bVar1 = *(byte *)ppbVar3;
        bVar17 = bVar1 < (byte)*pcVar9;
        if (bVar1 != *pcVar9) {
LAB_005a6001:
          uVar2 = -(uint)bVar17 | 1;
          goto LAB_005a6006;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar3 + 1);
        bVar17 = bVar1 < ((byte *)pcVar9)[1];
        if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a6001;
        ppbVar3 = (byte **)((int)ppbVar3 + 2);
        pcVar9 = (char *)((byte *)pcVar9 + 2);
      } while (bVar1 != 0);
      uVar2 = 0;
LAB_005a6006:
      if (uVar2 != 0) {
        ppbVar3 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar3 = (byte **)*ppbVar3;
        }
        pcVar9 = "Closed";
        do {
          bVar1 = *(byte *)ppbVar3;
          bVar17 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_005a6040:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a6045;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar3 + 1);
          bVar17 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a6040;
          ppbVar3 = (byte **)((int)ppbVar3 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a6045:
        if (uVar2 != 0) goto LAB_005a6049;
      }
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
      ppbVar3 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar3 = (byte **)*ppbVar3;
      }
      pcVar9 = "Close";
      do {
        bVar1 = *(byte *)ppbVar3;
        bVar17 = bVar1 < (byte)*pcVar9;
        if (bVar1 != *pcVar9) {
LAB_005a60d8:
          uVar2 = -(uint)bVar17 | 1;
          goto LAB_005a60dd;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar3 + 1);
        bVar17 = bVar1 < ((byte *)pcVar9)[1];
        if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a60d8;
        ppbVar3 = (byte **)((int)ppbVar3 + 2);
        pcVar9 = (char *)((byte *)pcVar9 + 2);
      } while (bVar1 != 0);
      uVar2 = 0;
LAB_005a60dd:
      if (uVar2 == 0) {
        FUN_0040a380("Closed",0);
      }
    }
  }
  if (param_1[0x2d9] == 0xd) {
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_005a6199:
      FUN_0040a380(&DAT_00b1d644,0);
      param_1[0x104] = 0;
      local_54 = (int *)0x24;
      FUN_00956780();
      FUN_0092dc30(local_54,0x3f000000,0x14,0,0x3f800000,0);
    }
    else {
      ppbVar3 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar3 = (byte **)*ppbVar3;
      }
      pbVar10 = &DAT_00b1d644;
      do {
        bVar1 = *(byte *)ppbVar3;
        bVar17 = bVar1 < *pbVar10;
        if (bVar1 != *pbVar10) {
LAB_005a6150:
          uVar2 = -(uint)bVar17 | 1;
          goto LAB_005a6155;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar3 + 1);
        bVar17 = bVar1 < pbVar10[1];
        if (bVar1 != pbVar10[1]) goto LAB_005a6150;
        ppbVar3 = (byte **)((int)ppbVar3 + 2);
        pbVar10 = pbVar10 + 2;
      } while (bVar1 != 0);
      uVar2 = 0;
LAB_005a6155:
      if (uVar2 != 0) {
        ppbVar3 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar3 = (byte **)*ppbVar3;
        }
        pcVar9 = "Opened";
        do {
          bVar1 = *(byte *)ppbVar3;
          bVar17 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_005a6190:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a6195;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar3 + 1);
          bVar17 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a6190;
          ppbVar3 = (byte **)((int)ppbVar3 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a6195:
        if (uVar2 != 0) goto LAB_005a6199;
      }
    }
    ppbVar3 = (byte **)param_1[0x1f];
    if (ppbVar3 != (byte **)0x0) {
      if (*(char *)(param_1 + 0x23) == '\0') {
        ppbVar4 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar4 = (byte **)*ppbVar3;
        }
        pbVar10 = &DAT_00b1d644;
        do {
          bVar1 = *(byte *)ppbVar4;
          bVar17 = bVar1 < *pbVar10;
          if (bVar1 != *pbVar10) {
LAB_005a6235:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a623a;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar4 + 1);
          bVar17 = bVar1 < pbVar10[1];
          if (bVar1 != pbVar10[1]) goto LAB_005a6235;
          ppbVar4 = (byte **)((int)ppbVar4 + 2);
          pbVar10 = pbVar10 + 2;
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a623a:
        if (uVar2 == 0) {
          FUN_0040a380("Opened",0);
          ppbVar3 = (byte **)param_1[0x1f];
        }
      }
      if ((ppbVar3 != (byte **)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
        puVar5 = (undefined4 *)param_1[0x1f];
        if (puVar5 == (undefined4 *)0x0) {
          puVar5 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar5[5]) {
          puVar5 = (undefined4 *)*puVar5;
        }
        pcVar9 = "Opened";
        do {
          bVar1 = *(byte *)puVar5;
          bVar17 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_005a62a0:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a62a5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)puVar5 + 1);
          bVar17 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a62a0;
          puVar5 = (undefined4 *)((int)puVar5 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a62a5:
        if (uVar2 == 0) {
          iVar15 = param_1[0x104];
          param_1[0x104] = iVar15 + 1;
          if ((iVar15 + 1) % 10 == 0) {
            uVar6 = FUN_0081e9d0(&local_60,0);
            FUN_00813520(local_88,uVar6,0,0,0,0);
            uVar6 = FUN_006eef60();
            uVar25 = 0;
            pTVar24 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
            pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar22 = 0;
            uVar6 = FUN_00428b20(299,0,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar6);
            piVar7 = (int *)__RTDynamicCast(uVar6,uVar22,pTVar23,pTVar24,uVar25);
            if (piVar7 != (int *)0x0) {
              (**(code **)(*piVar7 + 0xc))();
            }
          }
          if (0x50 < param_1[0x104]) {
            param_1[0x2d9] = 3;
          }
        }
      }
    }
  }
  if ((param_1[0x2d9] == 8) || (param_1[0x2d9] == 9)) {
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_005a63fc:
      FUN_0040a380(&DAT_00b1d644,0);
      param_1[0x104] = 0;
      local_54 = (int *)0x24;
      FUN_00956780();
      FUN_0092dc30(local_54,0x3f000000,0x14,0,0x3f800000,0);
    }
    else {
      ppbVar3 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar3 = (byte **)*ppbVar3;
      }
      pbVar10 = &DAT_00b1d644;
      do {
        bVar1 = *(byte *)ppbVar3;
        bVar17 = bVar1 < *pbVar10;
        if (bVar1 != *pbVar10) {
LAB_005a63b6:
          uVar2 = -(uint)bVar17 | 1;
          goto LAB_005a63bb;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar3 + 1);
        bVar17 = bVar1 < pbVar10[1];
        if (bVar1 != pbVar10[1]) goto LAB_005a63b6;
        ppbVar3 = (byte **)((int)ppbVar3 + 2);
        pbVar10 = pbVar10 + 2;
      } while (bVar1 != 0);
      uVar2 = 0;
LAB_005a63bb:
      if (uVar2 != 0) {
        ppbVar3 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar3 = (byte **)*ppbVar3;
        }
        pcVar9 = "Opened";
        do {
          bVar1 = *(byte *)ppbVar3;
          bVar17 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_005a63f3:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a63f8;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar3 + 1);
          bVar17 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a63f3;
          ppbVar3 = (byte **)((int)ppbVar3 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a63f8:
        if (uVar2 != 0) goto LAB_005a63fc;
      }
    }
    ppbVar3 = (byte **)param_1[0x1f];
    if (ppbVar3 != (byte **)0x0) {
      if (*(char *)(param_1 + 0x23) == '\0') {
        ppbVar4 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar4 = (byte **)*ppbVar3;
        }
        pbVar10 = &DAT_00b1d644;
        do {
          bVar1 = *(byte *)ppbVar4;
          bVar17 = bVar1 < *pbVar10;
          if (bVar1 != *pbVar10) {
LAB_005a64a0:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a64a5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar4 + 1);
          bVar17 = bVar1 < pbVar10[1];
          if (bVar1 != pbVar10[1]) goto LAB_005a64a0;
          ppbVar4 = (byte **)((int)ppbVar4 + 2);
          pbVar10 = pbVar10 + 2;
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a64a5:
        if (uVar2 == 0) {
          FUN_0040a380("Opened",0);
          ppbVar3 = (byte **)param_1[0x1f];
        }
      }
      if ((ppbVar3 != (byte **)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
        puVar5 = (undefined4 *)param_1[0x1f];
        if (puVar5 == (undefined4 *)0x0) {
          puVar5 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar5[5]) {
          puVar5 = (undefined4 *)*puVar5;
        }
        pcVar9 = "Opened";
        do {
          bVar1 = *(byte *)puVar5;
          bVar17 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_005a6510:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a6515;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)puVar5 + 1);
          bVar17 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a6510;
          puVar5 = (undefined4 *)((int)puVar5 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a6515:
        if (uVar2 == 0) {
          iVar15 = param_1[0x104];
          param_1[0x104] = iVar15 + 1;
          if ((param_1[0x2d9] == 8) && (iVar15 + 1 == 0xf)) {
            FUN_00812f50(local_80,param_1 + 0xcf,0xc1200000,0xc1200000,0xc1200000);
            local_54 = param_1;
            if (local_9c != 0) {
              local_54 = *local_a4;
            }
            local_60 = 0;
            local_5c = (int *)0xc0a00000;
            piVar7 = (int *)FUN_0096f310(3,local_80,(float)param_1[0x2f0] * DAT_00baa9b4,0xf,
                                         &local_60,param_1,0);
            if (piVar7 != (int *)0x0) {
              local_40 = ZEXT816(0);
              local_30 = 0x3f19999a;
              local_2c = 0x3e99999a;
              local_50 = _DAT_00bac240;
              uStack_4c = _UNK_00bac244;
              uStack_48 = _UNK_00bac248;
              uStack_44 = _UNK_00bac24c;
              local_28 = 0x3dcccccd;
              FUN_004073d0(&local_50);
              if (piVar7[0xf2] != 0) {
                local_5c = piVar7 + 0xf2;
                FUN_004cf210(&local_5c);
              }
              piVar7[0xf2] = (int)local_54;
              if (local_54 != (int *)0x0) {
                FUN_004cdcf0(piVar7 + 0xf2);
              }
              (**(code **)(*piVar7 + 0xc))();
            }
          }
          if (0x24 < param_1[0x104]) {
            param_1[0x2d9] = 3;
          }
        }
      }
    }
  }
  if (param_1[0x2d9] == 10) {
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_005a66f9:
      FUN_0040a380(&DAT_00b1d644,0);
      param_1[0x104] = -1;
      local_54 = (int *)0x24;
      FUN_00956780();
      FUN_0092dc30(local_54,0x3f000000,0x14,0,0x3f800000,0);
    }
    else {
      ppbVar3 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar3 = (byte **)*ppbVar3;
      }
      pbVar10 = &DAT_00b1d644;
      do {
        bVar1 = *(byte *)ppbVar3;
        bVar17 = bVar1 < *pbVar10;
        if (bVar1 != *pbVar10) {
LAB_005a66b0:
          uVar2 = -(uint)bVar17 | 1;
          goto LAB_005a66b5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar3 + 1);
        bVar17 = bVar1 < pbVar10[1];
        if (bVar1 != pbVar10[1]) goto LAB_005a66b0;
        ppbVar3 = (byte **)((int)ppbVar3 + 2);
        pbVar10 = pbVar10 + 2;
      } while (bVar1 != 0);
      uVar2 = 0;
LAB_005a66b5:
      if (uVar2 != 0) {
        ppbVar3 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar3 = (byte **)*ppbVar3;
        }
        pcVar9 = "Opened";
        do {
          bVar1 = *(byte *)ppbVar3;
          bVar17 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_005a66f0:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a66f5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar3 + 1);
          bVar17 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a66f0;
          ppbVar3 = (byte **)((int)ppbVar3 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a66f5:
        if (uVar2 != 0) goto LAB_005a66f9;
      }
    }
    ppbVar3 = (byte **)param_1[0x1f];
    if (ppbVar3 != (byte **)0x0) {
      if (*(char *)(param_1 + 0x23) == '\0') {
        ppbVar4 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar4 = (byte **)*ppbVar3;
        }
        pbVar10 = &DAT_00b1d644;
        do {
          bVar1 = *(byte *)ppbVar4;
          bVar17 = bVar1 < *pbVar10;
          if (bVar1 != *pbVar10) {
LAB_005a6796:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a679b;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar4 + 1);
          bVar17 = bVar1 < pbVar10[1];
          if (bVar1 != pbVar10[1]) goto LAB_005a6796;
          ppbVar4 = (byte **)((int)ppbVar4 + 2);
          pbVar10 = pbVar10 + 2;
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a679b:
        if (uVar2 == 0) {
          FUN_0040a380("Opened",0);
          ppbVar3 = (byte **)param_1[0x1f];
        }
      }
      if ((ppbVar3 != (byte **)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
        puVar5 = (undefined4 *)param_1[0x1f];
        if (puVar5 == (undefined4 *)0x0) {
          puVar5 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar5[5]) {
          puVar5 = (undefined4 *)*puVar5;
        }
        pcVar9 = "Opened";
        do {
          bVar1 = *(byte *)puVar5;
          bVar17 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_005a6800:
            uVar2 = -(uint)bVar17 | 1;
            goto LAB_005a6805;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)puVar5 + 1);
          bVar17 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_005a6800;
          puVar5 = (undefined4 *)((int)puVar5 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar2 = 0;
LAB_005a6805:
        if (uVar2 == 0) {
          local_64 = FUN_006be840();
          local_54 = (int *)FUN_0059e630(param_1,1,local_94,local_90,local_8c);
          if ((local_54 == (int *)0x0) || (local_64 == 0)) {
LAB_005a68e6:
            iVar15 = param_1[0x2f0];
            piVar7 = local_54;
            piVar16 = param_1;
            if (local_64 != 0) goto LAB_005a68fe;
          }
          else {
            fVar20 = *(float *)(local_64 + 0x340) - (float)local_54[0xd0];
            fVar21 = *(float *)(local_64 + 0x33c) - (float)local_54[0xcf];
            piVar7 = (int *)(fVar20 * fVar20 + fVar21 * fVar21);
            FUN_00435a50();
            local_5c = piVar7;
            fVar20 = *(float *)(local_64 + 0x340) - (float)param_1[0xd0];
            fVar21 = *(float *)(local_64 + 0x33c) - (float)param_1[0xcf];
            fVar20 = fVar20 * fVar20 + fVar21 * fVar21;
            FUN_00435a50();
            if ((float)local_5c <= fVar20) goto LAB_005a68e6;
            iVar15 = param_1[0x2f0];
            piVar7 = param_1;
            piVar16 = local_54;
LAB_005a68fe:
            if (iVar15 % 0xb4 == 0) {
              fVar20 = *(float *)(local_64 + 0x340) - (float)param_1[0xd0];
            }
            else {
              fVar20 = *(float *)(local_64 + 0x33c) - (float)param_1[0xcf];
            }
            if ((float)((uint)fVar20 & DAT_00bacb40) < DAT_00baa8d0) {
              if (piVar16 != (int *)0x0) {
                piVar16[0x104] = 0;
                piVar16[0x2f1] = 0;
              }
              if (piVar7 != (int *)0x0) {
                piVar7[0x104] = 0;
                piVar16[0x2f1] = 1;
              }
            }
          }
          local_5c = (int *)0xb4;
          iVar15 = param_1[0x104];
          if (-1 < iVar15) {
            iVar15 = iVar15 + 1;
            param_1[0x104] = iVar15;
          }
          if (iVar15 == 5) {
            FUN_00812f50(local_78,param_1 + 0xcf,0xc1200000,0xc1200000,0xc1200000);
            local_54 = param_1;
            if (local_9c != 0) {
              local_54 = *local_a4;
            }
            if (param_1[0x2f1] == 0) {
              local_60 = 0;
              local_5c = (int *)0xc0a00000;
              piVar7 = (int *)FUN_0096f310(3,local_78,(float)param_1[0x2f0] * DAT_00baa9b4,0xf,
                                           &local_60,param_1,0);
              if (piVar7 != (int *)0x0) {
                local_40 = ZEXT816(0);
                local_30 = 0x3f19999a;
                local_2c = 0x3e99999a;
                local_50 = _DAT_00bac240;
                uStack_4c = _UNK_00bac244;
                uStack_48 = _UNK_00bac248;
                uStack_44 = _UNK_00bac24c;
                local_28 = 0x3dcccccd;
                FUN_004073d0(&local_50);
                if (piVar7[0xf2] != 0) {
                  local_5c = piVar7 + 0xf2;
                  FUN_004cf210(&local_5c);
                }
                piVar7[0xf2] = (int)local_54;
                if (local_54 != (int *)0x0) {
                  FUN_004cdcf0(piVar7 + 0xf2);
                }
                (**(code **)(*piVar7 + 0xc))();
              }
            }
          }
          if (0x1a < param_1[0x104]) {
            param_1[0x2d9] = 3;
          }
        }
      }
    }
  }
  param_1[0xd8] = (int)DAT_00c7b640;
  param_1[0xd9] = (int)DAT_00c7b644;
  param_1[0xcf] = param_1[0xcd];
  param_1[0xd0] = param_1[0xce];
LAB_005a6ae5:
  if (local_98[0] == '\0') {
    puVar11 = (uint *)(DAT_00c7de78 + 0x30);
    if (DAT_00c7de78 == 0) {
      puVar11 = &DAT_00c7f618;
    }
    if (local_94 != 0) {
      uVar8 = *(uint *)(local_94 + -4);
      uVar2 = *puVar11;
      *puVar11 = *puVar11 - uVar8;
      puVar11[1] = puVar11[1] - (uint)(uVar2 < uVar8);
      free((void *)(local_94 + -4));
    }
  }
  if (local_a8[0] == '\0') {
    ppiVar12 = (int **)(DAT_00c7de78 + 0x30);
    if (DAT_00c7de78 == 0) {
      ppiVar12 = (int **)&DAT_00c7f618;
    }
    if (local_a4 != (int **)0x0) {
      piVar16 = local_a4[-1];
      piVar7 = *ppiVar12;
      *ppiVar12 = (int *)((int)*ppiVar12 - (int)piVar16);
      ppiVar12[1] = (int *)((int)ppiVar12[1] - (uint)(piVar7 < piVar16));
      free(local_a4 + -1);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

