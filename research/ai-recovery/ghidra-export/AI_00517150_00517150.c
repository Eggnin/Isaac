/* Local J460 decompiler output.
 * VA: 0x00517150
 * Entry: 00517150
 * Dispatcher: 0x006c2990
 * Types: 30
 * Identities: 30.0.0,30.1.0,30.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00517de0; instructions=745
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=30; identities=30.0.0,30.1.0,30.2.0;
   dispatcher=0x006c2990; end=0x00517de0; instructions=745 */

void __fastcall AI_00517150(int param_1)

{
  float fVar1;
  byte bVar2;
  byte **ppbVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  char cVar11;
  int iVar12;
  uint uVar13;
  byte **ppbVar14;
  int *piVar15;
  float *pfVar16;
  undefined4 extraout_ECX;
  undefined4 uVar17;
  undefined4 extraout_ECX_00;
  char *pcVar18;
  undefined4 extraout_ECX_01;
  bool bVar19;
  float fVar20;
  float fVar21;
  undefined auVar22 [16];
  float fVar23;
  float fVar24;
  undefined auStack_15c [3];
  char local_159;
  float local_158;
  float local_154;
  float local_14c;
  float local_148;
  undefined local_144 [8];
  undefined4 local_13c [8];
  undefined4 local_11c;
  undefined4 uStack_118;
  undefined4 local_114;
  undefined4 local_110 [8];
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 local_e8;
  undefined4 local_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_15c;
  if (*(int *)(param_1 + 0xb64) == 0) {
    if ((*(int *)(DAT_00c71678 + 0x269c8) == 1) ||
       (fVar24 = DAT_00baa7b8, *(int *)(DAT_00c71678 + 0x269c8) == 3)) {
      iVar12 = FUN_006eef60();
      fVar24 = *(float *)(param_1 + 900) * DAT_00baa3a4;
      if (fVar24 <= DAT_00baa7b8) {
        fVar24 = DAT_00baa7b8;
      }
      fVar24 = (fVar24 - DAT_00baa7b8) *
               (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * DAT_00ba9ff4 +
               DAT_00baa7b8;
    }
    *(float *)(param_1 + 0x380) = fVar24;
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(undefined4 *)(param_1 + 0xb64) = 3;
    uVar10 = _UNK_00bac2ec;
    uVar9 = _UNK_00bac2e8;
    uVar8 = _UNK_00bac2e4;
    uVar7 = _DAT_00bac2e0;
    uVar6 = _UNK_00babf2c;
    uVar5 = _UNK_00babf28;
    uVar4 = _UNK_00babf24;
    uVar17 = _DAT_00babf20;
    if (*(int *)(param_1 + 0x2c) == 1) {
      local_11c = 0;
      uStack_118 = 0x3f000000;
      local_114 = 0;
      if ((undefined4 *)(param_1 + 0x1e4) != local_13c) {
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x204) = 0x3f00000000000000;
        *(undefined4 *)(param_1 + 0x1e4) = uVar7;
        *(undefined4 *)(param_1 + 0x1e8) = uVar8;
        *(undefined4 *)(param_1 + 0x1ec) = uVar9;
        *(undefined4 *)(param_1 + 0x1f0) = uVar10;
        *(undefined4 *)(param_1 + 0x20c) = 0;
        FUN_00aef12b();
        return;
      }
    }
    else if (*(int *)(param_1 + 0x2c) == 2) {
      local_f0 = 0x3f800000;
      uStack_ec = 0x3f800000;
      local_e8 = 0x3f800000;
      if ((undefined4 *)(param_1 + 0x1e4) != local_110) {
        *(undefined8 *)(param_1 + 0x204) = 0x3f8000003f800000;
        *(undefined4 *)(param_1 + 0x1e4) = uVar17;
        *(undefined4 *)(param_1 + 0x1e8) = uVar4;
        *(undefined4 *)(param_1 + 0x1ec) = uVar5;
        *(undefined4 *)(param_1 + 0x1f0) = uVar6;
        *(undefined4 *)(param_1 + 0x20c) = 0x3f800000;
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        FUN_00aef12b();
        return;
      }
    }
    goto LAB_00517dc4;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  if (0.0 < *(float *)(param_1 + 0x14)) {
    pfVar16 = *(float **)(param_1 + 8);
    auVar22 = ZEXT816(0);
    if (pfVar16 != *(float **)(param_1 + 0xc)) {
      do {
        local_154 = pfVar16[3];
        if ((((((uint)pfVar16[2] & 4) == 0) || (((uint)pfVar16[0xc] >> 1 & 1) != 0)) ||
            (pfVar16[4] == 1.401298e-45)) ||
           (((pfVar16[6] == 1.401298e-45 || (pfVar16[6] == 4.203895e-45)) ||
            (((uint)pfVar16[2] & 0x1000) != 0)))) {
          auVar22._0_4_ = auVar22._0_4_ + *pfVar16;
        }
        else {
          *pfVar16 = 0.0;
        }
        pfVar16 = pfVar16 + 0xe;
      } while (pfVar16 != *(float **)(param_1 + 0xc));
      if (0.0 < auVar22._0_4_) {
        *(undefined4 *)(param_1 + 0xbb0) = 0;
      }
    }
  }
  iVar12 = FUN_006be840();
  fVar24 = *(float *)(iVar12 + 0x340) - *(float *)(param_1 + 0x340);
  fVar23 = *(float *)(iVar12 + 0x33c) - *(float *)(param_1 + 0x33c);
  local_14c = fVar24 * fVar24 + fVar23 * fVar23;
  FUN_00435a50();
  fVar24 = *(float *)(param_1 + 900);
  if (*(float *)(param_1 + 0x380) < fVar24) {
    fVar23 = *(float *)(param_1 + 0x39c);
    fVar20 = *(float *)(param_1 + 0xbb0) * DAT_00baa4b0 * fVar23 + *(float *)(param_1 + 0x380);
    *(float *)(param_1 + 0x380) = fVar20;
    pfVar16 = (float *)(param_1 + 0x380);
    if (fVar24 < fVar20) {
      pfVar16 = (float *)(param_1 + 900);
    }
    *(float *)(param_1 + 0x380) = *pfVar16;
    fVar24 = DAT_00baa08c;
    if (*(int *)(param_1 + 0x34) == 0x24) {
      fVar24 = DAT_00baa06c;
    }
    *(float *)(param_1 + 0xbb0) = fVar23 * fVar24 + *(float *)(param_1 + 0xbb0);
    fVar24 = DAT_00baa454;
    if (*(int *)(param_1 + 0x2c) == 2) {
      fVar20 = DAT_00baa3a4;
      if ((NAN(fVar23) || NAN(DAT_00baa454)) == (fVar23 == DAT_00baa454)) {
        fVar20 = DAT_00baa3a4 / ((fVar23 + DAT_00baa3a4) - fVar23 * DAT_00baa3a4);
      }
      *(float *)(param_1 + 0xbb0) = fVar20 * *(float *)(param_1 + 0xbb0);
    }
    fVar20 = DAT_00baa3a4;
    if ((NAN(fVar23) || NAN(fVar24)) == (fVar23 == fVar24)) {
      fVar20 = DAT_00baa3a4 / ((fVar23 + DAT_00baa3a4) - fVar23 * DAT_00baa3a4);
    }
    *(float *)(param_1 + 0xbb0) = fVar20 * *(float *)(param_1 + 0xbb0);
    FUN_00aefca0();
    cVar11 = FUN_0040a5d0("Shrink",1);
    if (((cVar11 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
LAB_00517d8a:
    *(undefined4 *)(param_1 + 0xb64) = 3;
  }
  else if ((*(int *)(param_1 + 0xb64) == 3) && ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0)) {
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar13 = FUN_006eef60();
      uVar17 = 0x32;
      if ((uVar13 % 0x32 != 0) ||
         ((DAT_00baaac0 <= local_14c &&
          (uVar13 = FUN_006eef60(), uVar17 = extraout_ECX_00, (uVar13 & 3) != 0)))) {
        local_159 = '\0';
      }
      else {
        local_159 = '\x01';
      }
    }
    else {
      local_159 = FUN_006cae60(0,7);
      uVar17 = extraout_ECX;
    }
    if ((*(int *)(param_1 + 0xf1c) == -1) ||
       (cVar11 = FUN_00956110(10,*(int *)(param_1 + 0xf1c),param_1,uVar17), cVar11 == '\0')) {
      if (local_159 != '\0') {
        if ((*(int *)(param_1 + 0x2c) == 2) &&
           ((iVar12 = FUN_006d6c20(), 7 < iVar12 || (iVar12 = FUN_0067f010(), iVar12 != 0))))
        goto LAB_00517491;
        *(undefined4 *)(param_1 + 0xb64) = 8;
        FUN_006d9050(1);
      }
    }
    else {
LAB_00517491:
      *(undefined4 *)(param_1 + 0xb64) = 9;
    }
    cVar11 = FUN_0040a5d0("Shrink",1);
    if (((cVar11 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
  }
  else {
    ppbVar3 = *(byte ***)(param_1 + 0x7c);
    if (*(int *)(param_1 + 0xb64) == 8) {
      if (ppbVar3 == (byte **)0x0) {
LAB_00517549:
        cVar11 = FUN_0040a5d0("Shoot",1);
        if (cVar11 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar14 = ppbVar3;
        if (&DAT_0000000f < ppbVar3[5]) {
          ppbVar14 = (byte **)*ppbVar3;
        }
        pcVar18 = "Shoot";
        do {
          bVar2 = *(byte *)ppbVar14;
          bVar19 = bVar2 < (byte)*pcVar18;
          if (bVar2 != *pcVar18) {
LAB_00517533:
            uVar13 = -(uint)bVar19 | 1;
            goto LAB_00517538;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)ppbVar14 + 1);
          bVar19 = bVar2 < ((byte *)pcVar18)[1];
          if (bVar2 != ((byte *)pcVar18)[1]) goto LAB_00517533;
          ppbVar14 = (byte **)((int)ppbVar14 + 2);
          pcVar18 = (char *)((byte *)pcVar18 + 2);
        } while (bVar2 != 0);
        uVar13 = 0;
LAB_00517538:
        if ((uVar13 != 0) ||
           ((*(char *)(ppbVar3 + 0xd) != '\0' && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_00517549;
      }
      if (*(int *)(param_1 + 0xf1c) == -1) {
        *(float *)(param_1 + 0xf20) = DAT_00c7b640;
        fVar24 = DAT_00c7b644;
LAB_005175d0:
        *(float *)(param_1 + 0xf24) = fVar24;
      }
      else {
        FUN_006d85a0(&local_158);
        if (((NAN(local_158) || NAN(DAT_00c7b640)) == (local_158 == DAT_00c7b640)) ||
           ((NAN(local_154) || NAN(DAT_00c7b644)) == (local_154 == DAT_00c7b644))) {
          *(float *)(param_1 + 0xf20) = local_158;
          fVar24 = local_154;
          goto LAB_005175d0;
        }
      }
      if (*(int *)(param_1 + 0x7c) == 0) goto LAB_00517d8a;
      cVar11 = FUN_0040add0("Shoot");
      if (cVar11 != '\0') {
        iVar12 = FUN_006eef60();
        if ((DAT_00baaae0 -
             (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa87c <= local_14c) || (local_159 = '\x01', *(int *)(param_1 + 0x34) == 0x24)) {
          local_159 = '\0';
        }
        if (*(int *)(param_1 + 0x2c) == 0) {
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          if (local_159 == '\0') {
            local_14c = DAT_00c7b640;
            local_148 = DAT_00c7b644;
          }
          else {
            iVar12 = FUN_006be840();
            local_14c = *(float *)(iVar12 + 0x33c);
            local_148 = *(float *)(iVar12 + 0x340);
          }
          local_158 = local_14c;
          local_154 = local_148;
          if (((NAN(*(float *)(param_1 + 0xf20)) || NAN(DAT_00c7b640)) ==
               (*(float *)(param_1 + 0xf20) == DAT_00c7b640)) ||
             ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
              (*(float *)(param_1 + 0xf24) == DAT_00c7b644))) {
            local_158 = local_14c * DAT_00baa9d0 + *(float *)(param_1 + 0x33c);
            local_154 = local_148 * DAT_00baa9d0 + *(float *)(param_1 + 0x340);
          }
          uVar17 = AI_0043ef30();
          uVar13 = FUN_006eef60();
          FUN_006ccdd0((uVar13 & 1) + 3,&local_158,0x41200000,uVar17);
        }
        else if (*(int *)(param_1 + 0x2c) == 1) {
          FUN_006d6ba0(0xd5,0x3f333333,2,0,0x3f800000);
          *(undefined4 *)(param_1 + 0xba0) = 0xffffffce;
          if (local_159 == '\0') {
            local_14c = DAT_00c7b640;
            local_148 = DAT_00c7b644;
          }
          else {
            iVar12 = FUN_006be840();
            local_14c = *(float *)(iVar12 + 0x33c);
            local_148 = *(float *)(iVar12 + 0x340);
          }
          local_158 = local_14c;
          local_154 = local_148;
          if (((NAN(*(float *)(param_1 + 0xf20)) || NAN(DAT_00c7b640)) ==
               (*(float *)(param_1 + 0xf20) == DAT_00c7b640)) ||
             ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
              (*(float *)(param_1 + 0xf24) == DAT_00c7b644))) {
            local_158 = local_14c * DAT_00baa9d0 + *(float *)(param_1 + 0x33c);
            local_154 = local_148 * DAT_00baa9d0 + *(float *)(param_1 + 0x340);
          }
          uVar17 = AI_0043ef30();
          piVar15 = (int *)FUN_006ccdd0(1,&local_158,0x41200000,uVar17);
          fVar23 = (float)piVar15[0xd8] * DAT_00baa2e4;
          piVar15[0x10e] = piVar15[0x10e] | 2;
          fVar24 = (float)piVar15[0xd9] * DAT_00baa2e4;
          piVar15[0x10f] = piVar15[0x10f];
          piVar15[0x108] = 0x3fcccccd;
          local_158 = fVar24;
          local_14c = fVar23;
          if (local_159 != '\0') {
            iVar12 = FUN_006eef60();
            fVar24 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                     DAT_00ba9ff4 + DAT_00baa304;
            fVar23 = local_14c * fVar24;
            fVar24 = local_158 * fVar24;
          }
          fVar20 = (float)piVar15[0x106] - DAT_00baa1f8;
          piVar15[0xd8] = (int)fVar23;
          piVar15[0xd9] = (int)fVar24;
          piVar15[0x106] = (int)fVar20;
          piVar15[0x105] = (int)((float)piVar15[0x105] * DAT_00baa354 - DAT_00baa83c);
          FUN_00435a80();
          local_d4 = _DAT_00bac500;
          uStack_d0 = _UNK_00bac504;
          uStack_cc = _UNK_00bac508;
          uStack_c8 = _UNK_00bac50c;
          (**(code **)(*piVar15 + 0x3c))(extraout_ECX_01,0xffffffff,0xff,0,1);
        }
        else {
          FUN_006d6ba0(0xb5,0x3f800000,2,0,0x3f800000);
          fVar24 = *(float *)(param_1 + 0xf20);
          if (((NAN(fVar24) || NAN(DAT_00c7b640)) == (fVar24 == DAT_00c7b640)) ||
             ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
              (*(float *)(param_1 + 0xf24) == DAT_00c7b644))) {
            local_14c = fVar24 * DAT_00baa9a0 + *(float *)(param_1 + 0x33c);
            local_148 = *(float *)(param_1 + 0xf24) * DAT_00baa9a0 + *(float *)(param_1 + 0x340);
            pfVar16 = &local_14c;
            uVar17 = 0;
          }
          else {
            pfVar16 = (float *)(param_1 + 0x33c);
            if (local_159 == '\0') {
              uVar17 = 0x42c80000;
            }
            else {
              iVar12 = FUN_006be840();
              uVar17 = 0x428c0000;
              local_14c = (*(float *)(iVar12 + 0x33c) + *pfVar16) * DAT_00baa2d0;
              local_148 = (*(float *)(iVar12 + 0x340) + *(float *)(param_1 + 0x340)) * DAT_00baa2d0;
              pfVar16 = &local_14c;
            }
          }
          pfVar16 = (float *)FUN_00813520(local_144,pfVar16,uVar17,0,0,0);
          local_158 = *pfVar16;
          local_154 = pfVar16[1];
          uVar17 = FUN_006eef60();
          uVar17 = FUN_006fe410(0x55,0,&local_158,&DAT_00c7b640,param_1,0,uVar17,0);
          iVar12 = __RTDynamicCast(uVar17,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
          uVar17 = FUN_00812c90(&local_158);
          FUN_004565e0(uVar17,900);
          fVar24 = *(float *)(iVar12 + 0x33c);
          fVar21 = *(float *)(iVar12 + 0x350) - DAT_00baa81c;
          *(float *)(iVar12 + 0x334) = fVar24;
          fVar23 = *(float *)(iVar12 + 0x340);
          *(float *)(iVar12 + 0x338) = fVar23;
          fVar20 = *(float *)(param_1 + 0x33c);
          *(float *)(iVar12 + 0x33c) = fVar20;
          fVar1 = *(float *)(param_1 + 0x340);
          *(float *)(iVar12 + 0x340) = fVar1;
          *(float *)(iVar12 + 0x350) = fVar21;
          *(undefined4 *)(iVar12 + 0xb64) = 6;
          fVar20 = (fVar24 - fVar20) * DAT_00baa0bc;
          *(undefined4 *)(iVar12 + 0xbbc) = 0xc1000000;
          fVar24 = (fVar23 - fVar1) * DAT_00baa0bc;
          *(float *)(iVar12 + 0x360) = fVar20;
          *(float *)(iVar12 + 0xbb0) = fVar20;
          *(float *)(iVar12 + 0x364) = fVar24;
          *(float *)(iVar12 + 0xbb4) = fVar24;
        }
      }
    }
    else if (ppbVar3 == (byte **)0x0) {
LAB_00517c1a:
      cVar11 = FUN_0040a5d0("Shake",1);
      if (cVar11 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar14 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar14 = (byte **)*ppbVar3;
      }
      pcVar18 = "Shake";
      do {
        bVar2 = *(byte *)ppbVar14;
        bVar19 = bVar2 < (byte)*pcVar18;
        if (bVar2 != *pcVar18) {
LAB_00517c04:
          uVar13 = -(uint)bVar19 | 1;
          goto LAB_00517c09;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar14 + 1);
        bVar19 = bVar2 < ((byte *)pcVar18)[1];
        if (bVar2 != ((byte *)pcVar18)[1]) goto LAB_00517c04;
        ppbVar14 = (byte **)((int)ppbVar14 + 2);
        pcVar18 = (char *)((byte *)pcVar18 + 2);
      } while (bVar2 != 0);
      uVar13 = 0;
LAB_00517c09:
      if ((uVar13 != 0) ||
         ((*(char *)(ppbVar3 + 0xd) != '\0' && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00517c1a;
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) goto LAB_00517d8a;
  }
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
LAB_00517dc4:
  FUN_00aef12b();
  return;
}

