/* Local J460 decompiler output.
 * VA: 0x00483710
 * Entry: 00483710
 * Dispatcher: 0x006c2990
 * Types: 273
 * Identities: 273.0.0,273.10.0
 * Evidence: dispatcher=0x006c2990; end=0x004855b0; instructions=1957
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=273; identities=273.0.0,273.10.0;
   dispatcher=0x006c2990; end=0x004855b0; instructions=1957 */

void __fastcall AI_00483710(int param_1)

{
  byte bVar1;
  undefined4 uVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  byte **ppbVar8;
  byte **ppbVar9;
  float *pfVar10;
  char *pcVar11;
  byte *pbVar12;
  float *extraout_ECX;
  int iVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined4 *puVar18;
  undefined4 uVar19;
  TypeDescriptor *pTVar20;
  TypeDescriptor *pTVar21;
  undefined4 uVar22;
  undefined4 local_2d4 [8];
  undefined4 local_2b4;
  undefined4 uStack_2b0;
  undefined4 local_2ac;
  undefined local_2a8;
  undefined4 *local_2a4;
  float local_2a0;
  float local_29c;
  char local_294 [8];
  float local_28c;
  undefined4 *local_288;
  undefined4 local_284;
  undefined4 *local_280;
  float local_27c;
  undefined4 *local_278;
  float local_274;
  float local_270;
  float local_26c;
  undefined4 *local_268;
  char local_261;
  undefined local_260 [60];
  undefined4 local_224;
  undefined4 uStack_220;
  undefined4 uStack_21c;
  undefined4 uStack_218;
  undefined local_1b8 [20];
  undefined4 local_1a4;
  uint local_160;
  undefined local_110 [60];
  undefined4 local_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  uint local_b8;
  int local_68 [5];
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  puStack_18 = &LAB_00af2c30;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_278 = (undefined4 *)0x0;
  local_268 = (undefined4 *)0x0;
  local_2a8 = 0;
  local_2a4 = (undefined4 *)0x0;
  local_2a0 = 0.0;
  local_29c = 0.0;
  local_14 = 0;
  local_24 = uVar4;
  iVar5 = AI_0041af60(local_294,0x111,0,0xffffffff,0,0);
  local_2a8 = 1;
  local_2a0 = *(float *)(iVar5 + 8);
  local_2a4 = *(undefined4 **)(iVar5 + 4);
  local_29c = *(float *)(iVar5 + 0xc);
  local_280 = local_2a4;
  local_270 = local_29c;
  if (local_294[0] == '\0') {
    local_14._0_1_ = 1;
    FUN_00a648b0(0,0,uVar4);
    local_14 = (uint)local_14._1_3_ << 8;
  }
  if (local_270 != 0.0) {
    local_268 = (undefined4 *)
                __RTDynamicCast(*local_280,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
  }
  iVar5 = AI_0041af60(local_294,0x111,10,0xffffffff,0,0);
  local_2a8 = 1;
  local_2a4 = *(undefined4 **)(iVar5 + 4);
  local_2a0 = *(float *)(iVar5 + 8);
  local_29c = *(float *)(iVar5 + 0xc);
  local_280 = local_2a4;
  local_270 = local_29c;
  if (local_294[0] == '\0') {
    local_14._0_1_ = 2;
    FUN_00a648b0(0,0,uVar4);
    local_14 = (uint)local_14._1_3_ << 8;
  }
  fVar15 = 0.0;
  if (local_270 != 0.0) {
    local_270 = (float)__RTDynamicCast(*local_280,0,
                                       &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                       &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
    fVar15 = local_270;
  }
  local_270 = (float)((uint)local_270 & 0xffffff00);
  local_14 = 0xffffffff;
  if (fVar15 != 0.0) {
    local_270 = (float)(uint)(DAT_00baa784 < *(float *)((int)fVar15 + 0xbbc));
  }
  if (((*(int *)(param_1 + 0x2c) == 0) && (*(int *)(param_1 + 0xbc0) == 1)) &&
     (fVar15 = *(float *)(param_1 + 900) * DAT_00baa2d0,
     *(float *)(param_1 + 0x380) <= fVar15 && fVar15 != *(float *)(param_1 + 0x380))) {
    *(undefined4 *)(param_1 + 0xbc0) = 2;
    *(undefined4 *)(param_1 + 0xb64) = 0x10;
    cVar3 = FUN_0040a5d0("Death",1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
    uVar6 = FUN_006eef60();
    FUN_00428b20(0x111,10,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar6);
    *(undefined *)(param_1 + 0x3b0) = 1;
    FUN_006d6ba0(0x7a,0x3f800000,0x3c,0,0x3f800000);
    *(undefined *)(param_1 + 0x173) = 0;
    fVar15 = *(float *)(param_1 + 0x380);
    if (fVar15 <= 0.0) {
      fVar15 = 0.0;
    }
    *(float *)(param_1 + 0x380) = fVar15;
  }
  iVar5 = *(int *)(param_1 + 0xb64);
  if (iVar5 == 0) {
    if (*(int *)(param_1 + 0x2c) == 10) {
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
      *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
      *(undefined4 *)(param_1 + 0xdc) = 0xc0800000;
      *(undefined4 *)(param_1 + 0xe0) = 0;
      uVar6 = FUN_006eef60();
      local_274 = *(float *)(param_1 + 0x33c) + DAT_00baa75c;
      uVar22 = 0;
      pTVar21 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTVar20 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar19 = 0;
      local_270 = *(float *)(param_1 + 0x340) + DAT_00baa630;
      uVar6 = FUN_00428b20(1000,10,&local_274,&DAT_00c7b640,param_1,0,uVar6);
      piVar7 = (int *)__RTDynamicCast(uVar6,uVar19,pTVar20,pTVar21,uVar22);
      local_30 = 0;
      local_2c = 0;
      local_40 = ZEXT816(0);
      local_28 = 0x3f800000;
      local_50 = _DAT_00babc30;
      uStack_4c = _UNK_00babc34;
      uStack_48 = _UNK_00babc38;
      uStack_44 = _UNK_00babc3c;
      (**(code **)(*piVar7 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
      (**(code **)(*piVar7 + 0x40))(0);
      (**(code **)(*piVar7 + 0xc))();
      if (*(int *)(param_1 + 0x3c0) != 0) {
        local_268 = (undefined4 *)(param_1 + 0x3c0);
        FUN_004cf210(&local_268);
      }
      *(int **)(param_1 + 0x3c0) = piVar7;
      FUN_004cdcf0((int **)(param_1 + 0x3c0));
      ppbVar9 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar9 != (byte **)0x0) {
        ppbVar8 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar8 = (byte **)*ppbVar9;
        }
        pbVar12 = &DAT_00b1d734;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar14 = bVar1 < *pbVar12;
          if (bVar1 != *pbVar12) {
LAB_00483b66:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00483b6b;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar14 = bVar1 < pbVar12[1];
          if (bVar1 != pbVar12[1]) goto LAB_00483b66;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00483b6b:
        if ((uVar4 == 0) && ((*(byte *)(ppbVar9 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0')))
           ) goto LAB_00483bd9;
      }
      cVar3 = FUN_0040a5d0(&DAT_00b1d734,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      *(undefined4 *)(param_1 + 0xb64) = 4;
      *(undefined4 *)(param_1 + 0xc34) = 0x40000000;
      uVar4 = FUN_006eef60();
      *(undefined4 *)(param_1 + 0xbc0) = 1;
      *(uint *)(param_1 + 0x410) = uVar4 % 0x1e + 0x3c;
    }
LAB_00483bd9:
    uVar2 = _UNK_00babf2c;
    uVar22 = _UNK_00babf28;
    uVar19 = _UNK_00babf24;
    uVar6 = _DAT_00babf20;
    *(undefined4 *)(param_1 + 3000) = *(undefined4 *)(param_1 + 0x380);
    local_2b4 = 0x3dcccccd;
    uStack_2b0 = 0x3dcccccd;
    local_2ac = 0x3e19999a;
    if ((undefined4 *)(param_1 + 0x1e4) != local_2d4) {
      *(undefined8 *)(param_1 + 0x204) = 0x3dcccccd3dcccccd;
      *(undefined4 *)(param_1 + 0x1e4) = uVar6;
      *(undefined4 *)(param_1 + 0x1e8) = uVar19;
      *(undefined4 *)(param_1 + 0x1ec) = uVar22;
      *(undefined4 *)(param_1 + 0x1f0) = uVar2;
      *(undefined4 *)(param_1 + 0x20c) = 0x3e19999a;
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
    }
    goto LAB_0048558a;
  }
  if (iVar5 == 4) {
    ppbVar9 = *(byte ***)(param_1 + 0x7c);
    if (*(int *)(param_1 + 0xbc0) == 1) {
      if (ppbVar9 == (byte **)0x0) {
LAB_00483cb5:
        cVar3 = FUN_0040a5d0(&DAT_00b1bc54,1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else if (*(char *)(param_1 + 0x8c) == '\0') {
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pbVar12 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < *pbVar12;
          if (bVar1 != *pbVar12) {
LAB_00483ca3:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00483ca8;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < pbVar12[1];
          if (bVar1 != pbVar12[1]) goto LAB_00483ca3;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00483ca8:
        if ((uVar4 != 0) || (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0')) goto LAB_00483cb5;
      }
      pfVar10 = (float *)FUN_006bec40(&local_26c,0);
      local_270 = *pfVar10 - *(float *)(param_1 + 0x33c);
      local_278 = (undefined4 *)(pfVar10[1] - *(float *)(param_1 + 0x340));
      fVar16 = local_270 * local_270 + (float)local_278 * (float)local_278;
      FUN_00435a50();
      puVar18 = local_278;
      fVar15 = local_270;
      if (DAT_00ba9fe4 < fVar16) {
        fVar15 = local_270 * (DAT_00baa454 / fVar16);
        puVar18 = (undefined4 *)((float)local_278 * (DAT_00baa454 / fVar16));
      }
      *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0xc34) * (float)puVar18;
      *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0xc34) * fVar15;
      iVar5 = *(int *)(param_1 + 0x410);
      *(int *)(param_1 + 0x410) = iVar5 + -1;
      if (iVar5 < 1) {
        uVar4 = FUN_006eef60();
        if (uVar4 % 100 < 0x32) {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          FUN_0040a380("Charge",0);
        }
        else {
          *(undefined4 *)(param_1 + 0xb64) = 10;
          *(undefined4 *)(param_1 + 0x410) = 0;
          FUN_0040a380("Charge",0);
        }
      }
    }
    else {
      if (ppbVar9 == (byte **)0x0) {
LAB_00483e3a:
        cVar3 = FUN_0040a5d0("HeadIdle",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else if (*(char *)(param_1 + 0x8c) == '\0') {
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar11 = "HeadIdle";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_00483e28:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00483e2d;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00483e28;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00483e2d:
        if ((uVar4 != 0) || (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0')) goto LAB_00483e3a;
      }
      pfVar10 = (float *)FUN_006bec40(&local_26c,0);
      local_288 = (undefined4 *)(*pfVar10 - *(float *)(param_1 + 0x33c));
      local_280 = (undefined4 *)(pfVar10[1] - *(float *)(param_1 + 0x340));
      fVar15 = (float)local_288 * (float)local_288 + (float)local_280 * (float)local_280;
      local_278 = local_288;
      local_268 = local_280;
      FUN_00435a50();
      if (0.0 < fVar15) {
        local_288 = (undefined4 *)((float)local_278 * (DAT_00baa454 / fVar15));
        local_268 = (undefined4 *)((float)local_280 * (DAT_00baa454 / fVar15));
      }
      *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0xc34) * (float)local_268;
      *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0xc34) * (float)local_288;
      iVar5 = *(int *)(param_1 + 0x410);
      *(int *)(param_1 + 0x410) = iVar5 + -1;
      if (iVar5 < 1) {
        uVar4 = FUN_006eef60();
        uVar4 = uVar4 % 99;
        if (uVar4 < 0x19) {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          FUN_0040a380("HeadCharge",0);
        }
        else if (uVar4 < 0x32) {
          *(undefined4 *)(param_1 + 0xb64) = 10;
          *(undefined4 *)(param_1 + 0x410) = 0;
          FUN_0040a380("HeadCharge",0);
        }
        else if (uVar4 < 0x4b) {
          *(undefined4 *)(param_1 + 0xb64) = 0xb;
          FUN_0040a380("HeadCharge",0);
        }
        else {
          cVar3 = FUN_00417430(0x1000a00,0);
          if (cVar3 == '\0') {
            uVar4 = FUN_006eef60();
            uVar4 = uVar4 % 6;
            local_288 = DAT_00baa7c8;
            if ((((uVar4 != 0) && (local_288 = DAT_00baa81c, uVar4 != 1)) &&
                (local_288 = DAT_00baa834, uVar4 != 2)) && (local_288 = local_268, 2 < uVar4)) {
              local_288 = (undefined4 *)0x0;
            }
            fVar15 = (float)((uint)local_278 & DAT_00bacb40);
            if ((fVar15 < DAT_00baa87c) ||
               ((SUB41(local_270,0) != '\0' && (fVar15 < (float)((uint)local_280 & DAT_00bacb40)))))
            {
              *(undefined4 *)(param_1 + 0xb64) = 9;
              if (0.0 <= (float)local_280) {
                pcVar11 = "HeadDashDown";
              }
              else {
                local_288 = (undefined4 *)((uint)local_288 ^ DAT_00bacb70);
                pcVar11 = "HeadDashUp";
              }
              FUN_0040a380(pcVar11,0);
              *(undefined4 *)(param_1 + 0xbb0) = 0;
              *(undefined4 **)(param_1 + 0xbb4) = local_288;
LAB_0048411d:
              *(undefined4 *)(param_1 + 0x410) = 0x1e;
            }
            else if (((float)((uint)local_280 & DAT_00bacb40) < DAT_00baa87c) ||
                    ((SUB41(local_270,0) != '\0' &&
                     ((float)((uint)local_280 & DAT_00bacb40) < fVar15)))) {
              *(undefined4 *)(param_1 + 0xb64) = 9;
              FUN_0040a380("HeadDashSide",0);
              puVar18 = local_288;
              if ((float)local_278 < 0.0) {
                puVar18 = (undefined4 *)((uint)local_288 ^ DAT_00bacb70);
              }
              *(undefined4 **)(param_1 + 0xbb0) = puVar18;
              *(undefined4 *)(param_1 + 0xbb4) = 0;
              goto LAB_0048411d;
            }
            cVar3 = FUN_00a10600(&DAT_00c7b640);
            if (cVar3 != '\0') {
              iVar5 = FUN_006be840();
              fVar16 = (float)local_280 * DAT_00baa2d0;
              fVar15 = *(float *)(iVar5 + 0x340);
              *(float *)(param_1 + 0x334) =
                   (float)local_278 * DAT_00baa2d0 + *(float *)(iVar5 + 0x33c);
              *(float *)(param_1 + 0x338) = fVar16 + fVar15;
              *(undefined4 *)(param_1 + 0x410) = 8;
            }
          }
        }
      }
    }
    goto LAB_004853d4;
  }
  if (iVar5 == 8) {
    *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
    *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
      ppbVar9 = *(byte ***)(param_1 + 0x7c);
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar11 = "Charge";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar14 = bVar1 < (byte)*pcVar11;
        if (bVar1 != *pcVar11) {
LAB_00484205:
          uVar4 = -(uint)bVar14 | 1;
          goto LAB_0048420a;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar14 = bVar1 < ((byte *)pcVar11)[1];
        if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484205;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_0048420a:
      if (uVar4 != 0) {
        ppbVar9 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar11 = "HeadCharge";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_00484240:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00484245;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484240;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00484245:
        if (uVar4 != 0) goto LAB_00484266;
      }
      FUN_006d6ba0(0x6c,0x3f800000,0x3c,0,0x3f800000);
    }
LAB_00484266:
    if (*(int *)(param_1 + 0xbc0) == 1) {
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        FUN_00452bf0(local_68);
        local_278 = (undefined4 *)0x1;
        cVar3 = FUN_0040cae0("Charge",6);
        local_261 = '\x01';
        if (cVar3 == '\0') goto LAB_004842bf;
      }
      else {
LAB_004842bf:
        local_261 = '\0';
      }
      if ((((uint)local_278 & 1) != 0) && (0xf < local_54)) {
        uVar4 = local_54 + 1;
        iVar5 = local_68[0];
        if (0xfff < uVar4) {
          iVar5 = *(int *)(local_68[0] + -4);
          uVar4 = local_54 + 0x24;
          if (0x1f < (local_68[0] - iVar5) - 4U) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar5,uVar4);
      }
      if (local_261 == '\0') {
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          pcVar11 = "Idle";
          goto LAB_0048528b;
        }
      }
      else {
        FUN_0040a380("Swarm",0);
        AI_0043ef30();
        local_b8 = local_b8 | 2;
        local_d4._0_1_ = s_333_333__00bac770[0];
        local_d4._1_1_ = s_333_333__00bac770[1];
        local_d4._2_1_ = s_333_333__00bac770[2];
        local_d4._3_1_ = s_333_333__00bac770[3];
        uStack_d0._0_1_ = s_333_333__00bac770[4];
        uStack_d0._1_1_ = s_333_333__00bac770[5];
        uStack_d0._2_1_ = s_333_333__00bac770[6];
        uStack_d0._3_1_ = s_333_333__00bac770[7];
        uStack_cc = ram0x00bac778;
        uStack_c8 = _UNK_00bac77c;
        FUN_006d6ba0(0xb,0x3f800000,0x3c,0,0x3f800000);
        FUN_006ccdd0(0xc,&DAT_00c7b640,0,local_110);
      }
    }
    else {
      if (*(int *)(param_1 + 0x2c) != 0) {
        if (*(int *)(param_1 + 0x2c) == 10) {
          FUN_0040a380("BodyAttack",0);
          cVar3 = FUN_0040b030("Shoot");
          if (cVar3 != '\0') {
            AI_0043ef30();
            local_224._0_1_ = s_333_333__00bac770[0];
            local_224._1_1_ = s_333_333__00bac770[1];
            local_224._2_1_ = s_333_333__00bac770[2];
            local_224._3_1_ = s_333_333__00bac770[3];
            uStack_220._0_1_ = s_333_333__00bac770[4];
            uStack_220._1_1_ = s_333_333__00bac770[5];
            uStack_220._2_1_ = s_333_333__00bac770[6];
            uStack_220._3_1_ = s_333_333__00bac770[7];
            uStack_21c = ram0x00bac778;
            uStack_218 = _UNK_00bac77c;
            FUN_006ccdd0(0xc,&DAT_00c7b640,0,local_260);
            FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
            uVar4 = FUN_006eef60();
            for (local_268 = (undefined4 *)(uVar4 % 5); local_268 != (undefined4 *)0x0;
                local_268 = (undefined4 *)((int)local_268 + -1)) {
              uVar6 = FUN_006eef60();
              iVar5 = FUN_006eef60();
              local_270 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa704;
              local_270 = local_270 + local_270;
              fVar15 = local_270;
              FUN_0041d540();
              local_27c = fVar15 * (float)DAT_00baa81c;
              fVar15 = local_270;
              FUN_0041d520();
              local_278 = (undefined4 *)(fVar15 * (float)DAT_00baa81c);
              FUN_00428b20(0x12,0,param_1 + 0x33c,&local_27c,param_1,0,uVar6);
            }
          }
          if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
            *(undefined4 *)(param_1 + 0xb64) = 0x10;
          }
        }
        goto LAB_004853d4;
      }
      *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
      *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        FUN_00452bf0(local_40 + 4);
        local_278 = (undefined4 *)0x2;
        cVar3 = FUN_0040cae0("HeadCharge",10);
        local_261 = '\x01';
        if (cVar3 == '\0') goto LAB_00484420;
      }
      else {
LAB_00484420:
        local_261 = '\0';
      }
      if ((((uint)local_278 & 2) != 0) && (0xf < local_28)) {
        uVar4 = local_28 + 1;
        iVar5 = local_40._4_4_;
        if (0xfff < uVar4) {
          iVar5 = *(int *)(local_40._4_4_ + -4);
          uVar4 = local_28 + 0x24;
          if (0x1f < (local_40._4_4_ - iVar5) - 4U) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar5,uVar4);
      }
      if (local_261 == '\0') {
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
LAB_00485284:
          pcVar11 = "HeadIdle";
          goto LAB_0048528b;
        }
      }
      else {
        FUN_0040a380("HeadShoot",0);
        AI_0043ef30();
        local_160 = local_160 | 1;
        local_1a4 = 0x3fc00000;
        FUN_006d6ba0(0xb,0x3f800000,0x3c,0,0x3f800000);
        iVar5 = FUN_006be840();
        local_26c = *(float *)(iVar5 + 0x33c);
        local_268 = *(undefined4 **)(iVar5 + 0x340);
        FUN_006ccdd0(0xf,&local_26c,0,local_1b8);
      }
    }
  }
  else {
    if (iVar5 == 9) {
      *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
      *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
      if (*(int *)(param_1 + 0xbc0) != 1) {
        iVar5 = *(int *)(param_1 + 0x410);
        *(int *)(param_1 + 0x410) = iVar5 + -1;
        if ((iVar5 < 1) || (cVar3 = FUN_00417430(0x1000a00,0), cVar3 != '\0')) {
          *(undefined4 *)(param_1 + 0x188) = 4;
          goto LAB_00485284;
        }
        FUN_006d6ba0(0x77,0x3f800000,0x32,0,0x3f800000);
        cVar3 = FUN_00a10630(&DAT_00c7b640);
        if (cVar3 == '\0') {
          *(undefined4 *)(param_1 + 0x188) = 0;
          *(bool *)(param_1 + 0x148) =
               *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
          if (*(char *)(param_1 + 400) != '\0') {
            *(undefined4 *)(param_1 + 0x410) = 0;
          }
          fVar15 = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
          *(float *)(param_1 + 0x360) = fVar15;
          *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
          fVar16 = (float)*(int *)(param_1 + 0x410);
          if (NAN(fVar16) == (fVar16 == 0.0)) {
            *(float *)(param_1 + 0x360) = fVar15 / fVar16;
            *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x364) / fVar16;
          }
        }
        else {
          fVar15 = *extraout_ECX;
          *(float *)(param_1 + 0x360) = fVar15;
          *(float *)(param_1 + 0x364) = extraout_ECX[1];
          if (*(char *)(param_1 + 400) != '\0') {
            *(undefined4 *)(param_1 + 0x410) = 0;
          }
          *(bool *)(param_1 + 0x148) = fVar15 < 0.0;
          pfVar10 = (float *)FUN_006bec40(&local_274,0);
          local_26c = *pfVar10 - *(float *)(param_1 + 0x33c);
          local_268 = (undefined4 *)(pfVar10[1] - *(float *)(param_1 + 0x340));
          pfVar10 = (float *)FUN_00a10030(&local_274);
          fVar15 = *(float *)(param_1 + 0xc34) * *pfVar10;
          fVar16 = *(float *)(param_1 + 0xc34) * pfVar10[1];
          *(float *)(param_1 + 0x360) =
               (fVar15 + fVar15) * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
          *(float *)(param_1 + 0x364) =
               (fVar16 + fVar16) * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
        }
      }
      goto LAB_004853d4;
    }
    if (iVar5 == 10) {
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
        ppbVar9 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar11 = "Charge";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_004848f7:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_004848fc;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_004848f7;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_004848fc:
        if (uVar4 != 0) {
          ppbVar9 = *(byte ***)(param_1 + 0x7c);
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar11 = "HeadCharge";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar14 = bVar1 < (byte)*pcVar11;
            if (bVar1 != *pcVar11) {
LAB_00484930:
              uVar4 = -(uint)bVar14 | 1;
              goto LAB_00484935;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar14 = bVar1 < ((byte *)pcVar11)[1];
            if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484930;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar11 = (char *)((byte *)pcVar11 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_00484935:
          if (uVar4 != 0) goto LAB_00484956;
        }
        FUN_006d6ba0(0x6a,0x3f800000,0x3c,0,0x3f800000);
      }
LAB_00484956:
      *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
      *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
      if (*(int *)(param_1 + 0x7c) == 0) {
LAB_00484b29:
        cVar3 = FUN_0040b090("Shoot");
        if (cVar3 != '\0') goto LAB_00484b3d;
      }
      else {
        if (*(char *)(param_1 + 0x8c) == '\0') {
          ppbVar9 = *(byte ***)(param_1 + 0x7c);
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar11 = "Charge";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar14 = bVar1 < (byte)*pcVar11;
            if (bVar1 != *pcVar11) {
LAB_004849c0:
              uVar4 = -(uint)bVar14 | 1;
              goto LAB_004849c5;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar14 = bVar1 < ((byte *)pcVar11)[1];
            if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_004849c0;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar11 = (char *)((byte *)pcVar11 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_004849c5:
          if (uVar4 != 0) {
            ppbVar9 = *(byte ***)(param_1 + 0x7c);
            if (&DAT_0000000f < ppbVar9[5]) {
              ppbVar9 = (byte **)*ppbVar9;
            }
            pcVar11 = "HeadCharge";
            do {
              bVar1 = *(byte *)ppbVar9;
              bVar14 = bVar1 < (byte)*pcVar11;
              if (bVar1 != *pcVar11) {
LAB_00484a00:
                uVar4 = -(uint)bVar14 | 1;
                goto LAB_00484a05;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar9 + 1);
              bVar14 = bVar1 < ((byte *)pcVar11)[1];
              if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484a00;
              ppbVar9 = (byte **)((int)ppbVar9 + 2);
              pcVar11 = (char *)((byte *)pcVar11 + 2);
            } while (bVar1 != 0);
            uVar4 = 0;
LAB_00484a05:
            if (uVar4 != 0) {
              ppbVar9 = *(byte ***)(param_1 + 0x7c);
              if (&DAT_0000000f < ppbVar9[5]) {
                ppbVar9 = (byte **)*ppbVar9;
              }
              pcVar11 = "Swarm2Start";
              do {
                bVar1 = *(byte *)ppbVar9;
                bVar14 = bVar1 < (byte)*pcVar11;
                if (bVar1 != *pcVar11) {
LAB_00484a40:
                  uVar4 = -(uint)bVar14 | 1;
                  goto LAB_00484a45;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar9 + 1);
                bVar14 = bVar1 < ((byte *)pcVar11)[1];
                if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484a40;
                ppbVar9 = (byte **)((int)ppbVar9 + 2);
                pcVar11 = (char *)((byte *)pcVar11 + 2);
              } while (bVar1 != 0);
              uVar4 = 0;
LAB_00484a45:
              if (uVar4 == 0) {
                if (*(int *)(param_1 + 0xbc0) == 1) {
                  FUN_0040a380("Swarm2Loop",0);
                }
                else {
                  FUN_0040a380("HeadShoot2Loop",0);
                }
              }
              goto LAB_00484a9f;
            }
          }
          pcVar11 = "HeadShoot2Start";
          if (*(int *)(param_1 + 0xbc0) == 1) {
            pcVar11 = "Swarm2Start";
          }
          FUN_0040a380(pcVar11,0);
          uVar4 = FUN_006eef60();
          *(uint *)(param_1 + 0xbc4) = uVar4 % 10;
        }
LAB_00484a9f:
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
        goto LAB_00484b29;
        ppbVar9 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar11 = "Swarm2Loop";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_00484ae6:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00484aeb;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484ae6;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00484aeb:
        if (uVar4 != 0) {
          ppbVar9 = *(byte ***)(param_1 + 0x7c);
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar11 = "HeadShoot2Loop";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar14 = bVar1 < (byte)*pcVar11;
            if (bVar1 != *pcVar11) {
LAB_00484b20:
              uVar4 = -(uint)bVar14 | 1;
              goto LAB_00484b25;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar14 = bVar1 < ((byte *)pcVar11)[1];
            if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484b20;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar11 = (char *)((byte *)pcVar11 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_00484b25:
          if (uVar4 != 0) goto LAB_00484b29;
        }
LAB_00484b3d:
        if (*(int *)(param_1 + 0xbc4) < 4) {
          pfVar10 = (float *)FUN_006bec40(&local_274,0);
          local_26c = *pfVar10 - *(float *)(param_1 + 0x33c);
          local_268 = (undefined4 *)(pfVar10[1] - *(float *)(param_1 + 0x340));
          pfVar10 = (float *)FUN_00a10030(&local_2a0);
          iVar5 = DAT_00c71678;
          fVar15 = *(float *)(param_1 + 0xc34) * pfVar10[1] * _DAT_00baa224;
          *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0xc34) * *pfVar10 * _DAT_00baa224;
          *(float *)(param_1 + 0x364) = fVar15;
          iVar5 = *(int *)(iVar5 + 0x18300);
          local_268 = (undefined4 *)(*(int *)(iVar5 + 0x12c4) + *(int *)(iVar5 + 0x12c0));
          iVar5 = *(int *)(iVar5 + 0x12cc) + *(int *)(iVar5 + 0x12c8);
          if (((*(int *)(param_1 + 0xbc0) == 1) && (*(int *)(param_1 + 0x410) % 0x1e == 0)) &&
             (uVar4 = FUN_006eef60(), (uVar4 & 1) == 0)) {
            iVar13 = 0;
            if (0 < iVar5) {
              iVar13 = iVar5;
            }
            puVar18 = (undefined4 *)0x0;
            if (0 < (int)local_268) {
              puVar18 = local_268;
            }
            if ((int)puVar18 - iVar13 < 0xf) {
              uVar6 = FUN_006eef60();
              pfVar10 = (float *)FUN_0067f070(&local_274);
              local_26c = *pfVar10 * (float)DAT_00baa81c + *(float *)(param_1 + 0x360);
              local_268 = (undefined4 *)
                          (pfVar10[1] * (float)DAT_00baa81c + *(float *)(param_1 + 0x364));
              iVar5 = FUN_00428b20(0x12,0,param_1 + 0x33c,&local_26c,param_1,0,uVar6);
              *(uint *)(iVar5 + 0x168) = *(uint *)(iVar5 + 0x168) & 0xfffffffb;
              *(undefined4 *)(iVar5 + 0x16c) = *(undefined4 *)(iVar5 + 0x16c);
            }
          }
        }
        FUN_004830e0(*(undefined4 *)(param_1 + 0xbc4),*(undefined4 *)(param_1 + 0x410));
        if (0x78 < *(int *)(param_1 + 0x410)) {
          if (*(int *)(param_1 + 0xbc0) == 1) {
            pcVar11 = "Swarm2End";
          }
          else {
            pcVar11 = "HeadShoot2End";
          }
          FUN_0040a380(pcVar11,0);
        }
        *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_004853d4;
      ppbVar9 = *(byte ***)(param_1 + 0x7c);
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar11 = "Swarm2End";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar14 = bVar1 < (byte)*pcVar11;
        if (bVar1 != *pcVar11) {
LAB_00484d54:
          uVar4 = -(uint)bVar14 | 1;
          goto LAB_00484d59;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar14 = bVar1 < ((byte *)pcVar11)[1];
        if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484d54;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_00484d59:
      if (uVar4 != 0) {
        ppbVar9 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar11 = "HeadShoot2End";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_00484d90:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00484d95;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484d90;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00484d95:
        if (uVar4 != 0) goto LAB_004853d4;
      }
      pcVar11 = "HeadIdle";
      if (*(int *)(param_1 + 0xbc0) == 1) {
        pcVar11 = "Idle";
      }
LAB_0048528b:
      *(undefined4 *)(param_1 + 0xb64) = 4;
      FUN_0040a380(pcVar11,0);
    }
    else {
      if (iVar5 != 0xb) {
        if (iVar5 == 0x10) {
          if (*(int *)(param_1 + 0x2c) == 0) {
            if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
              *(undefined *)(param_1 + 0x3b0) = 0;
              goto LAB_00485284;
            }
          }
          else if (*(int *)(param_1 + 0x2c) == 10) {
            FUN_0040a380(&DAT_00b1d734,0);
            *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
            *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
            iVar5 = *(int *)(param_1 + 0x3c0);
            if (iVar5 != 0) {
              fVar15 = *(float *)(param_1 + 0x340) + DAT_00baa630;
              *(float *)(iVar5 + 0x33c) = *(float *)(param_1 + 0x33c) + DAT_00baa75c;
              *(float *)(iVar5 + 0x340) = fVar15;
            }
            if (((((DAT_00ba9fe4 < *(float *)(param_1 + 0x380)) &&
                  (*(int *)(param_1 + 0x410) % 0xf == 0)) &&
                 ((uVar4 = FUN_006eef60(), (uVar4 & 7) == 0 ||
                  ((local_270._0_1_ != '\0' && (uVar4 = FUN_006eef60(), (uVar4 & 1) == 0)))))) &&
                (cVar3 = FUN_00417430(0x1000a00,0), cVar3 == '\0')) &&
               ((local_268 == (undefined4 *)0x0 || (local_268[0x2d9] == 4)))) {
              *(undefined4 *)(param_1 + 0xb64) = 8;
              if (local_270._0_1_ != '\0') {
                *(float *)(param_1 + 0xbbc) = *(float *)(param_1 + 0xbbc) - DAT_00baa75c;
              }
            }
            *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
          }
        }
        goto LAB_004853d4;
      }
      *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
      *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
      ppbVar9 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar9 == (byte **)0x0) {
LAB_00484ea1:
        ppbVar9 = *(byte ***)(param_1 + 0x7c);
        if ((ppbVar9 != (byte **)0x0) && (*(char *)(param_1 + 0x8c) == '\0')) {
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar11 = "HeadShoot2Start";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar14 = bVar1 < (byte)*pcVar11;
            if (bVar1 != *pcVar11) {
LAB_00484ee0:
              uVar4 = -(uint)bVar14 | 1;
              goto LAB_00484ee5;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar14 = bVar1 < ((byte *)pcVar11)[1];
            if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484ee0;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar11 = (char *)((byte *)pcVar11 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_00484ee5:
          if (uVar4 == 0) {
            pcVar11 = "HeadShoot2Loop";
            goto LAB_00484eef;
          }
        }
      }
      else {
        if (*(char *)(param_1 + 0x8c) == '\0') {
          ppbVar8 = ppbVar9;
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar8 = (byte **)*ppbVar9;
          }
          pcVar11 = "Charge2";
          do {
            bVar1 = *(byte *)ppbVar8;
            bVar14 = bVar1 < (byte)*pcVar11;
            if (bVar1 != *pcVar11) {
LAB_00484e27:
              uVar4 = -(uint)bVar14 | 1;
              goto LAB_00484e2c;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar8 + 1);
            bVar14 = bVar1 < ((byte *)pcVar11)[1];
            if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484e27;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar11 = (char *)((byte *)pcVar11 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_00484e2c:
          if (uVar4 == 0) {
            FUN_0040a380("Blast",0);
            ppbVar9 = *(byte ***)(param_1 + 0x7c);
          }
        }
        if ((ppbVar9 == (byte **)0x0) || (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_00484ea1;
        puVar18 = *(undefined4 **)(param_1 + 0x7c);
        if (puVar18 == (undefined4 *)0x0) {
          puVar18 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar18[5]) {
          puVar18 = (undefined4 *)*puVar18;
        }
        pcVar11 = "HeadCharge";
        do {
          bVar1 = *(byte *)puVar18;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_00484e90:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_00484e95;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)puVar18 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00484e90;
          puVar18 = (undefined4 *)((int)puVar18 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00484e95:
        if (uVar4 != 0) goto LAB_00484ea1;
        pcVar11 = "HeadShoot2Start";
LAB_00484eef:
        FUN_0040a380(pcVar11,0);
      }
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        uVar4 = FUN_006eef60();
        local_270 = (float)(uVar4 % 3);
        uVar4 = FUN_006eef60();
        uVar4 = uVar4 % 0x1e;
        cVar3 = FUN_00813360(param_1 + 0x33c,0x428c0000);
        if (cVar3 == '\0') {
          local_270 = 0.0;
LAB_00484f6c:
          local_278 = (undefined4 *)0x5a;
        }
        else {
          local_278 = (undefined4 *)(uVar4 + 0x3c);
          if (local_270 == 0.0) goto LAB_00484f6c;
        }
        *(int *)(param_1 + 0x410) = (int)local_278 + -0xf;
        local_268 = (undefined4 *)0x0;
        local_284 = 0;
        local_280 = (undefined4 *)0xc1a00000;
        do {
          local_28c = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
          local_288 = (undefined4 *)(*(float *)(param_1 + 0x340) - DAT_00baa8d0);
          piVar7 = (int *)FUN_0096f310(1,&local_28c,
                                       (float)(int)local_268 * DAT_00baa9b4 - DAT_00baaa78,local_278
                                       ,&local_284,param_1,0);
          piVar7[0xd6] = 0x447a0000;
          if (local_270 == 1.401298e-45) {
            piVar7[0x132] = 0x42b40000;
            piVar7[0x133] = 0x40000000;
            piVar7[0x116] = uVar4 + 0x3d;
LAB_00485061:
            piVar7[0x131] = uVar4 + 0xf;
            *(undefined *)(piVar7 + 0x130) = 1;
          }
          else if (local_270 == 2.802597e-45) {
            piVar7[0x132] = -0x3d4c0000;
            piVar7[0x133] = -0x40000000;
            piVar7[0x116] = uVar4 + 0x3d;
            goto LAB_00485061;
          }
          (**(code **)(*piVar7 + 0xc))();
          local_268 = (undefined4 *)((int)local_268 + 1);
        } while ((int)local_268 < 4);
        goto LAB_004853d4;
      }
      if (*(int *)(param_1 + 0x7c) == 0) goto LAB_004853d4;
      if (*(char *)(param_1 + 0x8c) == '\0') {
LAB_0048518c:
        ppbVar9 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar11 = "HeadShoot2End";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_004851c0:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_004851c5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_004851c0;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_004851c5:
        if (uVar4 != 0) goto LAB_004853d4;
      }
      else {
        ppbVar9 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar11 = "Blast";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar14 = bVar1 < (byte)*pcVar11;
          if (bVar1 != *pcVar11) {
LAB_004850e0:
            uVar4 = -(uint)bVar14 | 1;
            goto LAB_004850e5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar14 = bVar1 < ((byte *)pcVar11)[1];
          if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_004850e0;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar11 = (char *)((byte *)pcVar11 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_004850e5:
        if (uVar4 != 0) {
          if (*(char *)(param_1 + 0x8c) != '\0') {
            ppbVar9 = *(byte ***)(param_1 + 0x7c);
            if (&DAT_0000000f < ppbVar9[5]) {
              ppbVar9 = (byte **)*ppbVar9;
            }
            pcVar11 = "HeadShoot2Loop";
            do {
              bVar1 = *(byte *)ppbVar9;
              bVar14 = bVar1 < (byte)*pcVar11;
              if (bVar1 != *pcVar11) {
LAB_00485130:
                uVar4 = -(uint)bVar14 | 1;
                goto LAB_00485135;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar9 + 1);
              bVar14 = bVar1 < ((byte *)pcVar11)[1];
              if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00485130;
              ppbVar9 = (byte **)((int)ppbVar9 + 2);
              pcVar11 = (char *)((byte *)pcVar11 + 2);
            } while (bVar1 != 0);
            uVar4 = 0;
LAB_00485135:
            if (uVar4 == 0) goto LAB_004851cd;
            if (*(char *)(param_1 + 0x8c) != '\0') {
              ppbVar9 = *(byte ***)(param_1 + 0x7c);
              if (&DAT_0000000f < ppbVar9[5]) {
                ppbVar9 = (byte **)*ppbVar9;
              }
              pcVar11 = "HeadShoot2End";
              do {
                bVar1 = *(byte *)ppbVar9;
                bVar14 = bVar1 < (byte)*pcVar11;
                if (bVar1 != *pcVar11) {
LAB_00485176:
                  uVar4 = -(uint)bVar14 | 1;
                  goto LAB_0048517b;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar9 + 1);
                bVar14 = bVar1 < ((byte *)pcVar11)[1];
                if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00485176;
                ppbVar9 = (byte **)((int)ppbVar9 + 2);
                pcVar11 = (char *)((byte *)pcVar11 + 2);
              } while (bVar1 != 0);
              uVar4 = 0;
LAB_0048517b:
              if (uVar4 == 0) goto LAB_004851cd;
              if (*(char *)(param_1 + 0x8c) != '\0') goto LAB_004853d4;
            }
          }
          goto LAB_0048518c;
        }
      }
LAB_004851cd:
      iVar5 = *(int *)(param_1 + 0x410);
      *(int *)(param_1 + 0x410) = iVar5 + -1;
      if (0 < iVar5) goto LAB_004853d4;
      if (*(int *)(param_1 + 0xbc0) != 1) {
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) == '\0')) {
          ppbVar9 = *(byte ***)(param_1 + 0x7c);
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar11 = "HeadShoot2End";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar14 = bVar1 < (byte)*pcVar11;
            if (bVar1 != *pcVar11) {
LAB_00485230:
              uVar4 = -(uint)bVar14 | 1;
              goto LAB_00485235;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar14 = bVar1 < ((byte *)pcVar11)[1];
            if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_00485230;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar11 = (char *)((byte *)pcVar11 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_00485235:
          if (uVar4 == 0) goto LAB_0048524d;
        }
        FUN_0040a380("HeadShoot2End",0);
        goto LAB_004853d4;
      }
LAB_0048524d:
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
    uVar4 = FUN_006eef60();
    *(uint *)(param_1 + 0x410) = uVar4 % 0x1e + 0x3c;
  }
LAB_004853d4:
  iVar5 = DAT_00c71678;
  if ((*(int *)(param_1 + 0x2c) == 10) && (*(char *)(param_1 + 0x173) != '\0')) {
    *(undefined4 *)(DAT_00c71678 + 0x2651c) = 0x3f800000;
    *(undefined4 *)(iVar5 + 0x26514) = 600;
    *(undefined4 *)(param_1 + 0x388) = 0;
    *(undefined *)(param_1 + 0x173) = 0;
    *(undefined *)(param_1 + 0x3b0) = 1;
    *(undefined2 *)(param_1 + 0xc3c) = 0;
    *(undefined4 *)(param_1 + 0x380) = 0;
    *(undefined4 *)(param_1 + 0x188) = 1;
    FUN_006ae630();
    local_29c = *(float *)(param_1 + 0x16c);
    uVar4 = *(uint *)(param_1 + 0x168);
    *(float *)(param_1 + 0x16c) = local_29c;
    iVar5 = DAT_00c71678;
    *(uint *)(param_1 + 0x168) = uVar4 | 1;
    iVar13 = *(int *)(*(int *)(iVar5 + 0x18300) + 0x12cc) +
             *(int *)(*(int *)(iVar5 + 0x18300) + 0x12c8);
    iVar5 = 0;
    if (0 < iVar13) {
      iVar5 = iVar13;
    }
    if ((0 < iVar5) && ((uVar4 & 0x100000) == 0)) {
      FUN_007fec00(param_1);
    }
    uVar6 = FUN_006eef60();
    local_2a0 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
    local_29c = *(float *)(param_1 + 0x340) - (float)DAT_00baa81c;
    FUN_00428b20(1000,0xf,&local_2a0,&DAT_00c7b640,param_1,0,uVar6);
    FUN_006d6ba0(0x105,0x3f59999a,2,0,0x3f800000);
    if (*(int **)(param_1 + 0x3c0) != (int *)0x0) {
      (**(code **)(**(int **)(param_1 + 0x3c0) + 0x28))();
    }
  }
  fVar16 = DAT_00baa8ec;
  fVar15 = *(float *)(param_1 + 0x380);
  if ((fVar15 < *(float *)(param_1 + 3000)) &&
     (fVar17 = (*(float *)(param_1 + 3000) - fVar15) + *(float *)(param_1 + 0xbbc),
     *(float *)(param_1 + 0xbbc) = fVar17, fVar16 < fVar17)) {
    *(undefined4 *)(param_1 + 0xbbc) = 0x420c0000;
  }
  fVar16 = *(float *)(param_1 + 0xbbc) - DAT_00baa1d4;
  *(float *)(param_1 + 0xbbc) = fVar16;
  if (fVar16 < 0.0) {
    *(undefined4 *)(param_1 + 0xbbc) = 0;
  }
  *(float *)(param_1 + 3000) = fVar15;
LAB_0048558a:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

