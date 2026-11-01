/* Local J460 decompiler output.
 * VA: 0x0051b570
 * Entry: 0051b570
 * Dispatcher: 0x006c2990
 * Types: 88
 * Identities: 88.0.0,88.1.0,88.2.0
 * Evidence: dispatcher=0x006c2990; end=0x0051c040; instructions=628
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=88; identities=88.0.0,88.1.0,88.2.0;
   dispatcher=0x006c2990; end=0x0051c040; instructions=628 */

void __fastcall AI_0051b570(float param_1)

{
  float fVar1;
  byte bVar2;
  byte **ppbVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  char cVar9;
  uint uVar10;
  undefined4 *puVar11;
  int iVar12;
  byte **ppbVar13;
  undefined4 uVar14;
  int *piVar15;
  float *pfVar16;
  char *pcVar17;
  undefined4 extraout_ECX;
  uint uVar18;
  bool bVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  undefined *puVar24;
  undefined4 uVar25;
  TypeDescriptor *pTVar26;
  TypeDescriptor *pTVar27;
  undefined4 uVar28;
  undefined local_194 [8];
  undefined4 local_18c [8];
  undefined4 local_16c;
  undefined4 uStack_168;
  undefined4 local_164;
  undefined4 local_160 [8];
  undefined4 local_140;
  undefined4 uStack_13c;
  undefined4 local_138;
  undefined local_134 [8];
  float local_12c;
  float local_128;
  float local_124;
  float local_120;
  float local_11c;
  char local_111;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  uint uStack_4c;
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
  local_14 = -1;
  puStack_18 = &LAB_00af44c5;
  local_1c = ExceptionList;
  uVar10 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_12c = param_1;
  local_24 = uVar10;
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    uVar8 = _UNK_00bac2ec;
    uVar7 = _UNK_00bac2e8;
    uVar6 = _UNK_00bac2e4;
    uVar5 = _DAT_00bac2e0;
    uVar4 = _UNK_00babf2c;
    uVar28 = _UNK_00babf28;
    uVar25 = _UNK_00babf24;
    uVar14 = _DAT_00babf20;
    if (*(int *)((int)param_1 + 0x2c) == 1) {
      local_140 = 0;
      uStack_13c = 0x3f000000;
      local_138 = 0;
      puStack_20 = &stack0xfffffffc;
      if ((undefined4 *)((int)param_1 + 0x1e4) != local_160) {
        *(undefined8 *)((int)param_1 + 0x204) = 0x3f00000000000000;
        *(undefined4 *)((int)param_1 + 0x1e4) = uVar5;
        *(undefined4 *)((int)param_1 + 0x1e8) = uVar6;
        *(undefined4 *)((int)param_1 + 0x1ec) = uVar7;
        *(undefined4 *)((int)param_1 + 0x1f0) = uVar8;
        *(undefined4 *)((int)param_1 + 0x20c) = 0;
        *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
        puStack_20 = &stack0xfffffffc;
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (*(int *)((int)param_1 + 0x2c) == 2) {
        local_16c = 0x3f800000;
        uStack_168 = 0x3f800000;
        local_164 = 0x3f800000;
        puStack_20 = &stack0xfffffffc;
        if ((undefined4 *)((int)param_1 + 0x1e4) != local_18c) {
          *(undefined8 *)((int)param_1 + 0x204) = 0x3f8000003f800000;
          *(undefined4 *)((int)param_1 + 0x1e4) = uVar14;
          *(undefined4 *)((int)param_1 + 0x1e8) = uVar25;
          *(undefined4 *)((int)param_1 + 0x1ec) = uVar28;
          *(undefined4 *)((int)param_1 + 0x1f0) = uVar4;
          *(undefined4 *)((int)param_1 + 0x20c) = 0x3f800000;
          *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
          puStack_20 = &stack0xfffffffc;
        }
      }
    }
    goto LAB_0051c016;
  }
  if ((0.0 < *(float *)((int)param_1 + 0x14)) &&
     (puVar11 = *(undefined4 **)((int)param_1 + 8), puVar11 != *(undefined4 **)((int)param_1 + 0xc))
     ) {
    do {
      local_11c = (float)puVar11[3];
      if (((puVar11[2] & 4) != 0) &&
         ((((((uint)puVar11[0xc] >> 1 & 1) == 0 && (puVar11[4] != 1)) && (puVar11[6] != 1)) &&
          ((puVar11[6] != 3 && ((puVar11[2] & 0x1000) == 0)))))) {
        *puVar11 = 0;
      }
      puVar11 = puVar11 + 0xe;
    } while (puVar11 != *(undefined4 **)((int)param_1 + 0xc));
  }
  *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa380;
  iVar12 = FUN_006be840(uVar10);
  fVar20 = *(float *)(iVar12 + 0x340) - *(float *)((int)param_1 + 0x340);
  fVar23 = *(float *)(iVar12 + 0x33c) - *(float *)((int)param_1 + 0x33c);
  local_124 = fVar20 * fVar20 + fVar23 * fVar23;
  FUN_00435a50();
  if (*(int *)((int)param_1 + 0xb64) == 4) {
    if (((*(uint *)((int)param_1 + 0x168) & 0x1000800) == 0) ||
       (*(int *)((int)param_1 + 0xf1c) != -1)) {
      FUN_007e6300(0);
    }
    else {
      iVar12 = FUN_006be840(uVar10);
      local_120 = *(float *)(iVar12 + 0x33c);
      local_11c = *(float *)(iVar12 + 0x340);
      FUN_007e4940(&local_120,0);
      *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
    }
    local_40 = 0xf;
    local_44 = 8;
    uStack_54._0_1_ = s_WalkVert_00b1dd18[0];
    uStack_54._1_1_ = s_WalkVert_00b1dd18[1];
    uStack_54._2_1_ = s_WalkVert_00b1dd18[2];
    uStack_54._3_1_ = s_WalkVert_00b1dd18[3];
    uStack_50._0_1_ = s_WalkVert_00b1dd18[4];
    uStack_50._1_1_ = s_WalkVert_00b1dd18[5];
    uStack_50._2_1_ = s_WalkVert_00b1dd18[6];
    uStack_50._3_1_ = s_WalkVert_00b1dd18[7];
    uStack_4c = uStack_4c & 0xffffff00;
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
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&uStack_54,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar18 = local_28 + 1;
      uVar10 = local_3c;
      if (0xfff < uVar18) {
        uVar10 = *(uint *)(local_3c - 4);
        uVar18 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar10) - 4) goto LAB_0051b8ad;
      }
      FUN_00aef15c(uVar10,uVar18);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar10 = local_40 + 1;
      iVar12 = uStack_54;
      if (0xfff < uVar10) {
        iVar12 = *(int *)(uStack_54 + -4);
        uVar10 = local_40 + 0x24;
        if (0x1f < (uStack_54 - iVar12) - 4U) {
LAB_0051b8ad:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar12,uVar10);
    }
    if (*(int *)((int)param_1 + 0xf1c) == -1) {
      uVar10 = FUN_006eef60();
      cVar9 = uVar10 % 0x32 == 0;
    }
    else {
      cVar9 = FUN_006cae60(0,7);
    }
    if ((((cVar9 != '\0') && ((*(uint *)((int)param_1 + 0x168) & 0x1000a00) == 0)) &&
        ((*(int *)((int)param_1 + 0xf1c) != -1 ||
         ((local_124 < DAT_00baaac0 || (uVar10 = FUN_006eef60(), (uVar10 & 3) == 0)))))) &&
       ((*(int *)((int)param_1 + 0x2c) != 2 ||
        ((iVar12 = FUN_006d6c20(), iVar12 < 8 && (iVar12 = FUN_0067f010(), iVar12 == 0)))))) {
      if (*(int *)((int)param_1 + 0xf1c) == -1) {
        *(float *)((int)param_1 + 0xf20) = DAT_00c7b640;
        fVar20 = DAT_00c7b644;
      }
      else {
        FUN_006d85a0(&local_120);
        *(float *)((int)param_1 + 0xf20) = local_120;
        fVar20 = local_11c;
      }
      *(float *)((int)param_1 + 0xf24) = fVar20;
      *(undefined4 *)((int)param_1 + 0xb64) = 8;
    }
    *(undefined4 *)((int)param_1 + 0xba0) = 0;
    goto LAB_0051c016;
  }
  if (*(int *)((int)param_1 + 0xf1c) == -1) {
    *(float *)((int)param_1 + 0xf20) = DAT_00c7b640;
    fVar20 = DAT_00c7b644;
LAB_0051ba2e:
    *(float *)((int)param_1 + 0xf24) = fVar20;
  }
  else {
    FUN_006d85a0(&local_120);
    if (((NAN(local_120) || NAN(DAT_00c7b640)) == (local_120 == DAT_00c7b640)) ||
       ((NAN(local_11c) || NAN(DAT_00c7b644)) == (local_11c == DAT_00c7b644))) {
      *(float *)((int)param_1 + 0xf20) = local_120;
      fVar20 = local_11c;
      goto LAB_0051ba2e;
    }
  }
  ppbVar3 = *(byte ***)((int)param_1 + 0x7c);
  if (ppbVar3 == (byte **)0x0) {
LAB_0051ba8e:
    cVar9 = FUN_0040a5d0("Shoot",1);
    if (cVar9 != '\0') {
      FUN_0040a1b0();
      *(undefined *)((int)param_1 + 0x8c) = 1;
    }
  }
  else {
    ppbVar13 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar13 = (byte **)*ppbVar3;
    }
    pcVar17 = "Shoot";
    do {
      bVar2 = *(byte *)ppbVar13;
      bVar19 = bVar2 < (byte)*pcVar17;
      if (bVar2 != *pcVar17) {
LAB_0051ba70:
        uVar10 = -(uint)bVar19 | 1;
        goto LAB_0051ba75;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar13 + 1);
      bVar19 = bVar2 < ((byte *)pcVar17)[1];
      if (bVar2 != ((byte *)pcVar17)[1]) goto LAB_0051ba70;
      ppbVar13 = (byte **)((int)ppbVar13 + 2);
      pcVar17 = (char *)((byte *)pcVar17 + 2);
    } while (bVar2 != 0);
    uVar10 = 0;
LAB_0051ba75:
    if ((uVar10 != 0) ||
       ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
    goto LAB_0051ba8e;
  }
  if (*(int *)((int)param_1 + 0x7c) != 0) {
    cVar9 = FUN_0040add0("Shoot");
    if (cVar9 != '\0') {
      iVar12 = FUN_006eef60();
      if ((DAT_00baaae0 -
           (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * DAT_00ba9ff4 *
           DAT_00baa87c <= local_124) || (*(int *)((int)param_1 + 0x34) == 0x24)) {
        local_111 = '\0';
        local_128 = DAT_00c7b640;
        local_124 = DAT_00c7b644;
      }
      else {
        local_111 = '\x01';
        iVar12 = FUN_006be840();
        local_128 = *(float *)(iVar12 + 0x33c);
        local_124 = *(float *)(iVar12 + 0x340);
      }
      local_120 = local_128;
      local_11c = local_124;
      if ((*(int *)((int)param_1 + 0xf1c) != -1) &&
         ((fVar20 = *(float *)((int)param_1 + 0xf20),
          (NAN(fVar20) || NAN(DAT_00c7b640)) == (fVar20 == DAT_00c7b640) ||
          ((NAN(*(float *)((int)param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
           (*(float *)((int)param_1 + 0xf24) == DAT_00c7b644))))) {
        local_11c = *(float *)((int)param_1 + 0xf24) * DAT_00baaa44 +
                    *(float *)((int)param_1 + 0x340);
        local_120 = fVar20 * DAT_00baaa44 + *(float *)((int)param_1 + 0x33c);
      }
      if (*(int *)((int)param_1 + 0x2c) == 0) {
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
        uVar14 = AI_0043ef30();
        uVar10 = FUN_006eef60();
        FUN_006ccdd0((uVar10 & 1) + 3,&local_120,0x41200000,uVar14);
      }
      else if (*(int *)((int)param_1 + 0x2c) == 1) {
        FUN_006d6ba0(0xd5,0x3f333333,2,0,0x3f800000);
        uVar14 = AI_0043ef30();
        piVar15 = (int *)FUN_006ccdd0(1,&local_120,0x41200000,uVar14);
        fVar23 = (float)piVar15[0xd8] * DAT_00baa2e4;
        piVar15[0x10e] = piVar15[0x10e] | 2;
        fVar20 = (float)piVar15[0xd9] * DAT_00baa2e4;
        piVar15[0x10f] = piVar15[0x10f];
        piVar15[0x108] = 0x3fcccccd;
        local_12c = fVar23;
        local_124 = fVar20;
        if (local_111 != '\0') {
          iVar12 = FUN_006eef60();
          fVar20 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                   DAT_00ba9ff4 + DAT_00baa304;
          fVar23 = local_12c * fVar20;
          fVar20 = local_124 * fVar20;
        }
        fVar21 = (float)piVar15[0x106] - DAT_00baa1f8;
        piVar15[0xd8] = (int)fVar23;
        piVar15[0xd9] = (int)fVar20;
        piVar15[0x106] = (int)fVar21;
        piVar15[0x105] = (int)((float)piVar15[0x105] * DAT_00baa354 - DAT_00baa83c);
        FUN_00435a80();
        local_58 = _DAT_00bac500;
        uStack_54 = _UNK_00bac504;
        uStack_50._0_1_ = UNK_00bac508;
        uStack_50._1_1_ = UNK_00bac509;
        uStack_50._2_1_ = UNK_00bac50a;
        uStack_50._3_1_ = UNK_00bac50b;
        uStack_4c = _UNK_00bac50c;
        (**(code **)(*piVar15 + 0x3c))(extraout_ECX,0xffffffff,0xff,0,1);
      }
      else {
        FUN_006d6ba0(0xb5,0x3f800000,2,0,0x3f800000);
        pfVar16 = (float *)((int)param_1 + 0x33c);
        if (*(int *)((int)param_1 + 0xf1c) == -1) {
          if (local_111 == '\0') {
            uVar14 = 0x42c80000;
            puVar24 = local_194;
          }
          else {
            iVar12 = FUN_006be840();
            pfVar16 = &local_120;
            uVar14 = 0x428c0000;
            local_120 = (*(float *)(iVar12 + 0x33c) + *(float *)((int)param_1 + 0x33c)) *
                        DAT_00baa2d0;
            puVar24 = local_134;
            local_11c = (*(float *)(iVar12 + 0x340) + *(float *)((int)param_1 + 0x340)) *
                        DAT_00baa2d0;
          }
        }
        else {
          local_120 = *(float *)((int)param_1 + 0xf20) * DAT_00baa9a0 + *pfVar16;
          uVar14 = 0;
          local_11c = *(float *)((int)param_1 + 0xf24) * DAT_00baa9a0 +
                      *(float *)((int)param_1 + 0x340);
          pfVar16 = &local_120;
          puVar24 = local_134;
        }
        pfVar16 = (float *)FUN_00813520(puVar24,pfVar16,uVar14,0,0,0);
        local_128 = *pfVar16;
        local_124 = pfVar16[1];
        uVar14 = FUN_006eef60();
        uVar28 = 0;
        pTVar27 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar25 = 0;
        uVar14 = FUN_00428b20(0x55,0,&local_128,&DAT_00c7b640,param_1,0,uVar14);
        iVar12 = __RTDynamicCast(uVar14,uVar25,pTVar26,pTVar27,uVar28);
        uVar14 = FUN_00812c90(&local_128);
        FUN_004565e0(uVar14,900);
        fVar20 = *(float *)(iVar12 + 0x33c);
        fVar22 = *(float *)(iVar12 + 0x350) - DAT_00baa8d0;
        *(float *)(iVar12 + 0x334) = fVar20;
        fVar23 = *(float *)(iVar12 + 0x340);
        *(float *)(iVar12 + 0x338) = fVar23;
        fVar21 = *(float *)((int)local_12c + 0x33c);
        *(float *)(iVar12 + 0x33c) = fVar21;
        fVar1 = *(float *)((int)local_12c + 0x340);
        *(float *)(iVar12 + 0x340) = fVar1;
        *(float *)(iVar12 + 0x350) = fVar22;
        *(undefined4 *)(iVar12 + 0xb64) = 6;
        fVar21 = (fVar20 - fVar21) * DAT_00baa0bc;
        *(undefined4 *)(iVar12 + 0xbbc) = 0xc1000000;
        fVar20 = (fVar23 - fVar1) * DAT_00baa0bc;
        *(float *)(iVar12 + 0x360) = fVar21;
        *(float *)(iVar12 + 0xbb0) = fVar21;
        *(float *)(iVar12 + 0x364) = fVar20;
        *(float *)(iVar12 + 0xbb4) = fVar20;
        param_1 = local_12c;
      }
    }
    if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
    goto LAB_0051c016;
  }
  *(undefined4 *)((int)param_1 + 0xb64) = 4;
LAB_0051c016:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

