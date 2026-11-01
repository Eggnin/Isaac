/* Local J460 decompiler output.
 * VA: 0x00486db0
 * Entry: 00486db0
 * Dispatcher: 0x006c2990
 * Types: 270
 * Identities: 270.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004878a0; instructions=707
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=270; identities=270.0.0; dispatcher=0x006c2990;
   end=0x004878a0; instructions=707 */

void __fastcall AI_00486db0(float param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  uint uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  int *piVar8;
  int *piVar9;
  byte **ppbVar10;
  int iVar11;
  byte *pbVar12;
  uint *puVar13;
  uint uVar14;
  bool bVar15;
  float fVar16;
  double dVar17;
  undefined4 uVar18;
  TypeDescriptor *pTVar19;
  undefined8 uVar20;
  undefined auStack_ec [8];
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float local_d8;
  undefined auStack_d4 [20];
  undefined4 uStack_c0;
  uint uStack_7c;
  int iStack_2c;
  char local_24 [4];
  int local_20;
  undefined auStack_1c [4];
  uint local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af2ccd;
  local_10 = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  *(undefined4 *)((int)param_1 + 0x360) = DAT_00c7b640;
  *(undefined4 *)((int)param_1 + 0x364) = DAT_00c7b644;
  if ((0.0 < *(float *)((int)param_1 + 0x14)) &&
     (puVar5 = *(undefined4 **)((int)param_1 + 8), puVar5 != *(undefined4 **)((int)param_1 + 0xc)))
  {
    do {
      local_e0 = (float)puVar5[3];
      if (((puVar5[2] & 4) != 0) &&
         ((((puVar5[4] != 1 && (puVar5[6] != 1)) && (puVar5[6] != 3)) && ((puVar5[2] & 0x1000) == 0)
          ))) {
        *puVar5 = 0;
      }
      puVar5 = puVar5 + 0xe;
    } while (puVar5 != *(undefined4 **)((int)param_1 + 0xc));
  }
  local_d8 = param_1;
  local_14 = uVar4;
  switch(*(undefined4 *)((int)param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    uVar4 = FUN_006eef60(uVar4);
    *(undefined4 *)((int)param_1 + 0x184) = 5;
    *(uint *)((int)param_1 + 0x410) = uVar4 % 0x1e + 0x1e;
    *(undefined4 *)((int)param_1 + 0xbb0) = *(undefined4 *)((int)param_1 + 0x33c);
    *(undefined4 *)((int)param_1 + 0xbb4) = *(undefined4 *)((int)param_1 + 0x340);
    FUN_006c04b0();
    break;
  case 3:
    if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
      FUN_0040a380(&DAT_00b1bc54,0);
    }
    if ((((*(uint *)((int)param_1 + 0x16c) & 0x10000000) == 0) ||
        ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
       (iVar11 = *(int *)((int)param_1 + 0x410), *(int *)((int)param_1 + 0x410) = iVar11 + -1,
       iVar11 < 0)) {
      iVar11 = FUN_006eef60(uVar4);
      fVar16 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4;
      if (DAT_00baa280 <= fVar16) {
        if (DAT_00baa330 <= fVar16) {
          bVar15 = false;
          AI_0041af60(local_24,0xe4,0xffffffff,0xffffffff,0,0);
          iVar11 = local_20;
          uVar4 = 0;
          local_8 = 0;
          if (local_18 != 0) {
            do {
              iVar6 = __RTDynamicCast(*(undefined4 *)(iVar11 + uVar4 * 4),0,
                                      &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor);
              param_1 = local_d8;
              if ((iVar6 != 0) && (*(int *)(iVar6 + 0xb64) == 4)) {
                bVar15 = true;
              }
              uVar4 = uVar4 + 1;
            } while (uVar4 < local_18);
            if ((bVar15) && (uVar4 = FUN_006eef60(), 0x1e < uVar4 % 100)) {
              *(undefined4 *)((int)param_1 + 0xb64) = 0x10;
              FUN_0040a380(&DAT_00b1d20c,0);
              local_8 = 0xffffffff;
              FUN_004175b0();
              break;
            }
          }
          iVar11 = AI_0041af60(auStack_ec,0x3b,0xffffffff,0xffffffff,0,0);
          uVar4 = *(uint *)(iVar11 + 0xc);
          FUN_004175b0();
          if (uVar4 < 4) {
            *(undefined4 *)((int)param_1 + 0xb64) = 0xd;
            FUN_0040a380(&UNK_00b1d874,0);
            local_8 = 0xffffffff;
            FUN_004175b0();
          }
          else {
            *(undefined4 *)((int)param_1 + 0xb64) = 8;
            FUN_0040a380("Dissapear",0);
            uVar4 = FUN_006eef60();
            local_8 = 0xffffffff;
            *(uint *)((int)param_1 + 0x410) = uVar4 % 0x1e + 0xf;
            FUN_004175b0();
          }
        }
        else {
          *(undefined4 *)((int)param_1 + 0xb64) = 9;
          FUN_0040a380("Squirt",0);
        }
      }
      else {
        *(undefined4 *)((int)param_1 + 0xb64) = 8;
        FUN_0040a380("Dissapear",0);
        uVar4 = FUN_006eef60();
        *(uint *)((int)param_1 + 0x410) = uVar4 % 0x1e + 0xf;
      }
    }
    break;
  case 8:
    FUN_00452bf0();
    cVar3 = FUN_0040cae0("Dissapear");
    if (0xf < local_18) {
      iVar11 = iStack_2c;
      if ((0xfff < local_18 + 1) &&
         (iVar11 = *(int *)(iStack_2c + -4), 0x1f < (iStack_2c - iVar11) - 4U)) {
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
      FUN_00aef15c(iVar11);
    }
    iVar11 = FUN_0040a780();
    if (cVar3 != '\0') {
      if (iVar11 == 1) {
        FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
      }
      if ((*(int *)((int)param_1 + 0x188) != 0) &&
         (((*(int *)((int)param_1 + 0x7c) == 0 || (iVar11 = FUN_0040ace0(), iVar11 == 0)) ||
          (*(char *)(iVar11 + 0xc) == '\0')))) {
        *(undefined *)((int)param_1 + 0x3b0) = 1;
        *(undefined4 *)((int)param_1 + 0x188) = 0;
      }
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        iVar11 = *(int *)((int)param_1 + 0x410);
        *(undefined *)((int)param_1 + 0x171) = 0;
        *(int *)((int)param_1 + 0x410) = iVar11 + -1;
        if (iVar11 < 0) {
          *(undefined *)((int)param_1 + 0x171) = 1;
          FUN_0040a380("Appear",0);
        }
      }
      break;
    }
    if (iVar11 == 1) {
      FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
    }
    if (((*(int *)((int)param_1 + 0x188) == 0) && (*(int *)((int)param_1 + 0x7c) != 0)) &&
       ((iVar11 = FUN_0040ace0(), iVar11 != 0 && (*(char *)(iVar11 + 0xc) != '\0')))) {
      *(undefined *)((int)param_1 + 0x3b0) = 0;
      *(undefined4 *)((int)param_1 + 0x188) = 4;
    }
    iVar11 = FUN_0040a780();
    if (iVar11 == 5) {
      uVar7 = AI_0043ef30();
      fStack_dc = 8.0;
      local_d8 = 0.0;
      FUN_006cb2e0((int)param_1 + 0x33c,&fStack_dc,8,uVar7);
      break;
    }
    if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0')) break;
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    FUN_0040a380(&DAT_00b1bc54,0);
    goto code_r0x0048730e;
  case 9:
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      local_d8 = *(float *)((int)param_1 + 0x88);
      dVar17 = floor((double)local_d8);
      local_d8 = (float)dVar17;
      if (((int)dVar17 != 1) ||
         (FUN_006d6ba0(0x6c,0x3f800000,2,0,0x3f800000), *(int *)((int)param_1 + 0x7c) != 0)) {
        local_d8 = *(float *)((int)param_1 + 0x88);
        dVar17 = floor((double)local_d8);
        local_d8 = (float)dVar17;
        if ((int)dVar17 == 0xf) {
          FUN_006d6ba0(0xe,0x3f800000,2,0,0x3f800000);
          AI_0043ef30();
          uStack_7c = uStack_7c | 0x500;
          uStack_c0 = 0x40000000;
          fStack_dc = 10.0;
          local_d8 = 0.0;
          FUN_006cb2e0((int)param_1 + 0x33c,&fStack_dc,6,auStack_d4);
          break;
        }
        goto code_r0x0048743e;
      }
    }
    goto code_r0x0048744b;
  case 0xd:
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      local_d8 = *(float *)((int)param_1 + 0x88);
      dVar17 = floor((double)local_d8);
      local_d8 = (float)dVar17;
      if ((int)dVar17 == 8) {
        uVar4 = *(uint *)((int)param_1 + 0x16c) & 0x10000000;
        if ((uVar4 == 0) || (uVar4 = FUN_006ac7e0(0x3b,0,uVar4,0), uVar4 < 3)) {
          FUN_006d6ba0(0x10,0x3f800000,2,0,0x3f800000);
          uVar7 = FUN_006eef60();
          fStack_dc = *(float *)((int)param_1 + 0x33c) - DAT_00baa854;
          local_d8 = *(float *)((int)param_1 + 0x340) + DAT_00baa454;
          uVar20 = 0xc5d6ac;
          pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar18 = 0;
          uVar7 = FUN_00428b20(0x3b,0,&fStack_dc,&DAT_00c7b640,param_1,0,uVar7);
          piVar8 = (int *)__RTDynamicCast(uVar7,uVar18,pTVar19,uVar20);
          fStack_e4 = *(float *)((int)param_1 + 0x33c) - DAT_00baa9d0;
          local_e0 = *(float *)((int)param_1 + 0x340) + 0.0;
          piVar9 = (int *)FUN_00813520(auStack_1c,&fStack_e4,0,0,0,0);
          piVar8[0xcd] = *piVar9;
          piVar8[0xce] = piVar9[1];
          FUN_0040a380("JumpDownHead",0);
          piVar8[0x2d9] = 6;
          (**(code **)(*piVar8 + 0xc))();
        }
        break;
      }
code_r0x0048743e:
      if (*(char *)((int)param_1 + 0x8c) != '\0') break;
    }
code_r0x0048744b:
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
code_r0x0048730e:
    uVar4 = FUN_006eef60(uVar4);
    *(uint *)((int)param_1 + 0x410) = uVar4 % 0x1e + 0x1e;
    break;
  case 0x10:
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      local_d8 = *(float *)((int)param_1 + 0x88);
      dVar17 = floor((double)local_d8);
      local_d8 = (float)dVar17;
      if ((((int)dVar17 != 1) ||
          (FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000), *(int *)((int)param_1 + 0x7c) != 0)) &&
         (*(char *)((int)param_1 + 0x8c) != '\0')) break;
    }
    AI_0041af60(local_24,0xe4,0xffffffff,0xffffffff,0,0);
    uVar4 = local_18;
    local_8 = 1;
    uVar14 = 0;
    if (local_18 != 0) {
      do {
        iVar11 = __RTDynamicCast(*(undefined4 *)(local_20 + uVar14 * 4),0,
                                 &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                 &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor);
        if ((iVar11 != 0) && (*(int *)(iVar11 + 0xb64) == 4)) {
          *(undefined4 *)(iVar11 + 0xbc4) = 1;
          break;
        }
        uVar14 = uVar14 + 1;
      } while (uVar14 < uVar4);
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    uVar4 = FUN_006eef60();
    *(uint *)((int)param_1 + 0x410) = uVar4 % 0x1e + 0x1e;
    ppbVar2 = *(byte ***)((int)param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
code_r0x00487726:
      cVar3 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)((int)param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar10 = (byte **)*ppbVar2;
      }
      pbVar12 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar15 = bVar1 < *pbVar12;
        if (bVar1 != *pbVar12) {
code_r0x00487710:
          uVar4 = -(uint)bVar15 | 1;
          goto code_r0x00487715;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar15 = bVar1 < pbVar12[1];
        if (bVar1 != pbVar12[1]) goto code_r0x00487710;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar12 = pbVar12 + 2;
      } while (bVar1 != 0);
      uVar4 = 0;
code_r0x00487715:
      if ((uVar4 != 0) ||
         ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
      goto code_r0x00487726;
    }
    local_8 = 0xffffffff;
    if (local_24[0] == '\0') {
      local_8 = 2;
      FUN_00a648b0(0);
      local_8 = 0xffffffff;
    }
  }
  *(undefined4 *)((int)param_1 + 0x33c) = *(undefined4 *)((int)param_1 + 0xbb0);
  *(undefined4 *)((int)param_1 + 0x340) = *(undefined4 *)((int)param_1 + 0xbb4);
  if (0 < *(int *)((int)param_1 + 0xbc0)) {
    *(undefined4 *)((int)param_1 + 0xbc0) = 0;
    AI_0041af60(local_24,0xe4,0xffffffff,0xffffffff,0,0);
    local_8 = 3;
    uVar4 = 0;
    if (local_18 != 0) {
      do {
        iVar11 = __RTDynamicCast(*(undefined4 *)(local_20 + uVar4 * 4),0,
                                 &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                 &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor);
        if ((iVar11 != 0) && (*(int *)(iVar11 + 0x410) < 0x96)) {
          *(undefined4 *)(iVar11 + 0x410) = 0;
          *(int *)((int)param_1 + 0xbc0) = *(int *)((int)param_1 + 0xbc0) + 1;
        }
        uVar4 = uVar4 + 1;
      } while (uVar4 < local_18);
    }
    if (local_24[0] == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar13 = &DAT_00c7f618;
      }
      else {
        puVar13 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_20 != 0) {
        uVar14 = *(uint *)(local_20 + -4);
        uVar4 = *puVar13;
        *puVar13 = *puVar13 - uVar14;
        puVar13[1] = puVar13[1] - (uint)(uVar4 < uVar14);
        free((void *)(local_20 + -4));
      }
    }
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

