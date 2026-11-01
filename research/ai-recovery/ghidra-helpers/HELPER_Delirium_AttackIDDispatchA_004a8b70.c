/* Local J460 decompiler output.
 * VA: 0x004a8b70
 * Entry: 004a8b70
 * Dispatcher: 0x006c2990
 * Types: 412
 * Identities: delirium.attack_id_dispatch
 * Evidence: Decodes AttackID low/mid/high bytes and is called from Delirium AI
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=412; identities=delirium.attack_id_dispatch; Decodes
   AttackID low/mid/high bytes and is called from Delirium AI */

void __fastcall HELPER_Delirium_AttackIDDispatchA(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  byte **ppbVar6;
  uint uVar7;
  int iVar8;
  char *pcVar9;
  uint uVar10;
  uint uVar11;
  int iVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  undefined auVar16 [16];
  undefined auVar17 [16];
  undefined auVar18 [16];
  int local_188;
  uint local_184;
  uint local_17c;
  float local_174;
  float local_170;
  undefined8 local_16c;
  float local_164;
  uint local_160;
  int local_15c;
  float local_158;
  uint local_154;
  float local_150;
  float local_14c;
  float local_148;
  uint local_144;
  uint local_140;
  uint local_13c;
  char local_135;
  undefined local_134 [4];
  undefined4 local_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  float local_120;
  float local_11c;
  undefined4 local_118;
  undefined4 uStack_114;
  undefined4 uStack_110;
  undefined4 uStack_10c;
  undefined4 local_108;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  undefined local_f8 [8];
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined8 local_dc;
  undefined4 local_d4;
  undefined4 local_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined8 local_b4;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined local_9c;
  undefined *local_98;
  undefined4 local_94;
  undefined local_90;
  float local_8c [16];
  int local_4c [17];
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if ((*(int *)(param_1 + 0x28) == 0x2d) ||
     ((*(int *)(param_1 + 0xbc8) == 0x54 && (*(int *)(param_1 + 0xbcc) == 10)))) goto LAB_004a9816;
  uVar10 = *(uint *)(param_1 + 0xbd8);
  local_17c = uVar10 & 0xff;
  local_140 = uVar10 >> 8;
  local_184 = uVar10 >> 0x10 & 0xff;
  local_13c = (uint)*(byte *)(param_1 + 0xbdc);
  uVar11 = local_140 & 0xff;
  local_160 = uVar11;
  if (local_17c == 0xff) {
    local_17c = FUN_006eef60();
    local_17c = local_17c % 0xb;
  }
  fVar15 = DAT_00baa454;
  iVar4 = 0;
  local_150 = 0.0;
  local_144 = 6;
  local_15c = 4;
  local_174 = 3.0;
  local_170 = 0.0;
  local_135 = '\0';
  local_164 = 1.261169e-44;
  local_158 = DAT_00baa454;
  local_148 = DAT_00baa454;
  local_14c = DAT_00baa280;
  if (DAT_00c7162c < 2) {
    iVar8 = 0;
    do {
      local_4c[iVar4] = iVar8;
      iVar8 = iVar8 + 5;
      local_8c[iVar4] = (float)iVar4 * DAT_00baa708;
      iVar4 = iVar4 + 1;
    } while (iVar8 < 0x50);
  }
  else {
    iVar4 = 0;
    auVar18 = ZEXT416(1);
    do {
      iVar8 = iVar4 + 4;
      auVar17._0_4_ = iVar4 + _DAT_00bab240;
      auVar17._4_4_ = iVar4 + _UNK_00bab244;
      auVar17._8_4_ = iVar4 + _UNK_00bab248;
      auVar17._12_4_ = iVar4 + _UNK_00bab24c;
      auVar16 = pmulld(auVar17,_DAT_00bab470);
      local_8c[iVar4] = (float)auVar17._0_4_ * _DAT_00baca50;
      local_8c[iVar4 + 1] = (float)auVar17._4_4_ * _UNK_00baca54;
      local_8c[iVar4 + 2] = (float)auVar17._8_4_ * _UNK_00baca58;
      local_8c[iVar4 + 3] = (float)auVar17._12_4_ * _UNK_00baca5c;
      local_4c[iVar4] =
           (int)((-(uint)(auVar16._0_4_ < 0) & _DAT_00bab140) + auVar16._0_4_) >> auVar18;
      local_4c[iVar4 + 1] =
           (int)((-(uint)(auVar16._4_4_ < 0) & _UNK_00bab144) + auVar16._4_4_) >> auVar18;
      local_4c[iVar4 + 2] =
           (int)((-(uint)(auVar16._8_4_ < 0) & _UNK_00bab148) + auVar16._8_4_) >> auVar18;
      local_4c[iVar4 + 3] =
           (int)((-(uint)(auVar16._12_4_ < 0) & _UNK_00bab14c) + auVar16._12_4_) >> auVar18;
      auVar16._0_4_ = iVar8 + _DAT_00bab240;
      auVar16._4_4_ = iVar8 + _UNK_00bab244;
      auVar16._8_4_ = iVar8 + _UNK_00bab248;
      auVar16._12_4_ = iVar8 + _UNK_00bab24c;
      auVar17 = pmulld(auVar16,_DAT_00bab470);
      local_8c[iVar4 + 4] = (float)auVar16._0_4_ * _DAT_00baca50;
      local_8c[iVar4 + 5] = (float)auVar16._4_4_ * _UNK_00baca54;
      local_8c[iVar4 + 6] = (float)auVar16._8_4_ * _UNK_00baca58;
      local_8c[iVar4 + 7] = (float)auVar16._12_4_ * _UNK_00baca5c;
      local_4c[iVar4 + 4] =
           (int)((-(uint)(auVar17._0_4_ < 0) & _DAT_00bab140) + auVar17._0_4_) >> auVar18;
      local_4c[iVar4 + 5] =
           (int)((-(uint)(auVar17._4_4_ < 0) & _UNK_00bab144) + auVar17._4_4_) >> auVar18;
      local_4c[iVar4 + 6] =
           (int)((-(uint)(auVar17._8_4_ < 0) & _UNK_00bab148) + auVar17._8_4_) >> auVar18;
      local_4c[iVar4 + 7] =
           (int)((-(uint)(auVar17._12_4_ < 0) & _UNK_00bab14c) + auVar17._12_4_) >> auVar18;
      iVar4 = iVar4 + 8;
    } while (iVar4 < 0x10);
  }
  local_16c = 0;
  cVar3 = (char)local_140;
  switch(local_17c) {
  case 0:
    local_188 = 0x12;
    local_144 = 0x14;
    local_15c = 1;
    if (uVar11 == 0xff) {
      uVar11 = 2;
    }
    local_174 = 2.5;
    local_135 = '\x01';
    local_148 = DAT_00baa630;
    local_14c = DAT_00baa630;
    local_150 = DAT_00baa630;
    local_154 = 0x8000000;
    local_158 = DAT_00baa6fc;
    local_160 = uVar11;
    break;
  case 1:
    local_188 = 0x19;
    local_144 = 8;
    local_15c = 1;
    local_174 = 4.0;
    local_148 = DAT_00baa630;
    local_14c = DAT_00baa6ec;
    local_150 = DAT_00baa630;
    local_154 = 2;
    goto LAB_004a9349;
  case 2:
    local_188 = 5;
    local_144 = 6;
    local_174 = 4.5;
    local_15c = 1;
    local_4c[0] = 0;
    local_8c[0] = 0.3926991;
    local_148 = DAT_00baa6c8;
    local_14c = DAT_00baa6c8;
    local_150 = DAT_00baa6c8;
    local_154 = 0x800000;
    goto LAB_004a9349;
  case 3:
    iVar12 = 0;
    local_144 = 1;
    local_188 = 0x19;
    iVar8 = 0;
    local_174 = 4.0;
    local_15c = 0xc;
    iVar4 = 0;
    do {
      *(int *)((int)local_4c + iVar8) = iVar12;
      *(int *)((int)local_4c + iVar8 + 0xc) = iVar12;
      iVar12 = iVar12 + 10;
      *(undefined4 *)((int)local_4c + iVar8 + 0x18) = *(undefined4 *)((int)local_4c + iVar8);
      fVar15 = (float)iVar4 * DAT_00baa478;
      *(undefined4 *)((int)local_4c + iVar8 + 0x24) = *(undefined4 *)((int)local_4c + iVar8);
      *(float *)((int)local_8c + iVar8) = fVar15;
      *(float *)((int)local_8c + iVar8 + 0xc) = fVar15 + DAT_00baa708;
      *(float *)((int)local_8c + iVar8 + 0x18) = fVar15 + DAT_00baa54c;
      *(float *)((int)local_8c + iVar8 + 0x24) = fVar15 + DAT_00baa708 + DAT_00baa54c;
      iVar8 = iVar8 + 4;
      iVar4 = iVar4 + 1;
    } while (iVar8 < 0xc);
    if (cVar3 == -1) {
      uVar11 = 3;
    }
    local_148 = DAT_00baa720;
    local_14c = DAT_00baa720;
    local_150 = DAT_00baa720;
    local_154 = 0;
    local_160 = uVar11;
    break;
  case 4:
    local_188 = 0x14;
    local_13c = local_13c + 3;
    local_144 = 0x14;
    local_15c = 1;
    if (cVar3 == -1) {
      uVar11 = 4;
    }
    local_174 = 5.0;
    local_148 = DAT_00baa6b4;
    local_14c = DAT_00baa6b4;
    local_150 = DAT_00baa6b4;
    local_154 = 0x20;
    local_160 = uVar11;
    break;
  case 5:
    local_13c = local_13c + 2;
    local_188 = 0x14;
    local_144 = 10;
    if (cVar3 == -1) {
      uVar11 = 2;
    }
    local_15c = 1;
    local_135 = '\x01';
    local_148 = DAT_00baa734;
    local_14c = DAT_00baa734;
    local_150 = DAT_00baa734;
    local_154 = 0x400000;
    local_158 = DAT_00baa698;
    local_160 = uVar11;
    break;
  case 6:
    local_154 = 0x800;
    local_150 = DAT_00baa754;
    goto LAB_004a9111;
  case 7:
    local_154 = 0x1000;
    local_150 = DAT_00baa75c;
LAB_004a9111:
    uVar7 = 2;
    local_174 = 5.0;
    local_144 = 0xe;
    local_188 = 0x19;
LAB_004a912d:
    local_15c = 1;
    if (cVar3 == -1) {
      uVar11 = uVar7;
    }
    local_160 = uVar11;
    local_14c = local_150;
    local_148 = local_150;
    break;
  case 8:
    local_13c = local_13c + 4;
    local_188 = 10;
    local_144 = 10;
    local_174 = 4.0;
    uVar7 = 3;
    local_154 = 0x200000;
    local_150 = DAT_00baa6c8;
    goto LAB_004a912d;
  case 9:
    local_188 = 0x1e;
    local_13c = local_13c + 2;
    local_144 = 0xe;
    local_174 = 4.0;
    local_148 = DAT_00baa6c8;
    local_14c = DAT_00baa6c8;
    local_150 = DAT_00baa6c8;
    goto LAB_004a933d;
  case 10:
    local_15c = 1;
    local_188 = 0x12;
    iVar4 = FUN_006be840();
    local_158 = *(float *)(iVar4 + 0x340) - *(float *)(param_1 + 0x340);
    local_164 = *(float *)(iVar4 + 0x33c) - *(float *)(param_1 + 0x33c);
    fVar14 = local_158 * local_158 + local_164 * local_164;
    FUN_00435a50();
    if (DAT_00ba9fe4 < fVar14) {
      local_158 = local_158 * (DAT_00baa454 / fVar14);
      local_164 = local_164 * (DAT_00baa454 / fVar14);
    }
    local_174 = local_164 * DAT_00baa75c;
    if ((char)local_140 == -1) {
      uVar11 = 4;
    }
    local_164 = 7.006492e-45;
    local_170 = local_158 * DAT_00baa75c;
    local_148 = DAT_00baa734;
    local_14c = DAT_00baa734;
    local_150 = DAT_00baa734;
    local_158 = fVar15;
    local_154 = 0;
    local_160 = uVar11;
    break;
  default:
    local_188 = 10;
LAB_004a933d:
    local_154 = 0;
LAB_004a9349:
    local_135 = '\0';
    local_164 = 1.261169e-44;
    if (uVar11 == 0xff) {
      local_135 = '\0';
      local_164 = 1.261169e-44;
      local_160 = 1;
    }
  }
  iVar4 = local_144;
  fVar15 = local_158;
  local_140 = 0;
  iVar8 = 4;
  if (*(int *)(param_1 + 0x28) == 0x19c) {
    iVar8 = 1;
  }
  bVar13 = false;
  iVar12 = 0;
  local_16c = (ulonglong)(uint)(((float)local_13c / DAT_00baaae4) * DAT_00baa7a8) << 0x20;
  do {
    iVar5 = (uVar10 >> 0x18) - local_4c[iVar12];
    local_144 = iVar5 / (iVar8 * local_188);
    if (iVar5 % (iVar8 * local_188) == 0) {
      local_134[0] = 1;
      local_130 = _DAT_00babf20;
      uStack_12c = _UNK_00babf24;
      uStack_128 = _UNK_00babf28;
      uStack_124 = _UNK_00babf2c;
      local_120 = 1.0;
      iVar5 = FUN_006eef60();
      local_e8 = 0;
      local_e4 = 0;
      local_e0 = 0;
      local_bc = 0xc47a0000;
      local_b8 = 0;
      local_ac = 0;
      local_d4 = DAT_00c7b640;
      local_cc = DAT_00c7b640;
      local_c4 = DAT_00c7b640;
      local_a8 = 0x1e;
      local_a4 = 0;
      local_a0 = 0;
      local_9c = 0;
      local_98 = &DAT_bf800000;
      local_94 = 0;
      local_90 = 0;
      local_130 = 0x40a00000;
      local_11c = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa708;
      local_118 = _DAT_00bac820;
      uStack_114 = _UNK_00bac824;
      uStack_110 = _UNK_00bac828;
      uStack_10c = _UNK_00bac82c;
      local_108 = _DAT_00bac7b0;
      uStack_104 = _UNK_00bac7b4;
      uStack_100 = _UNK_00bac7b8;
      uStack_fc = _UNK_00bac7bc;
      _local_f8 = ZEXT816(0);
      local_dc = 0;
      local_d0 = DAT_00c7b644;
      local_c8 = DAT_00c7b644;
      local_c0 = DAT_00c7b644;
      local_b4 = 0;
      uVar11 = FUN_006eef60();
      uStack_128 = 0xbd75c28f;
      uStack_12c = 0xc04ccccd;
      local_dc._0_4_ = (uint)local_dc | local_154;
      local_120 = (float)((double)(uVar11 % 0xffffffff) +
                         (double)(&DAT_00bacb00)[-((int)(uVar11 % 0xffffffff) >> 0x1f)]) *
                  DAT_00ba9ff4 + DAT_00baa528;
      local_cc = *(undefined4 *)(param_1 + 0x33c);
      local_c8 = *(undefined4 *)(param_1 + 0x340);
      local_11c = local_16c._4_4_ + local_8c[iVar12];
      local_f8._4_4_ = local_14c;
      local_f8._0_4_ = local_148;
      uStack_f0 = local_150;
      uStack_ec = 0x3f800000;
      if (local_135 != '\0') {
        if ((local_144 & 1) == 0) {
          local_dc._0_4_ = (uint)local_dc | 0x80000;
          local_f8._4_4_ = local_158;
          local_f8._0_4_ = fVar15;
          uStack_f0 = local_158;
          uStack_ec = 0x3f800000;
        }
        else {
          local_dc._0_4_ = (uint)local_dc | 0x40000;
        }
      }
      local_dc = CONCAT44(local_dc._4_4_ | local_140,(uint)local_dc);
      if (local_164 == 1.261169e-44) {
        local_170 = (float)iVar4;
      }
      HELPER_Entity_NPC_FireProjectiles
                ((undefined4 *)(param_1 + 0x33c),&local_174,local_164,local_134);
      bVar13 = true;
    }
    uVar11 = local_160;
    iVar12 = iVar12 + 1;
  } while (iVar12 < local_15c);
  if (bVar13) {
    if (*(int *)(param_1 + 0x28) == 0x19c) {
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 != (byte **)0x0) {
        ppbVar6 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar6 = (byte **)*ppbVar2;
        }
        pcVar9 = "Blink";
        do {
          bVar1 = *(byte *)ppbVar6;
          bVar13 = bVar1 < (byte)*pcVar9;
          if (bVar1 != *pcVar9) {
LAB_004a9717:
            uVar7 = -(uint)bVar13 | 1;
            goto LAB_004a971c;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar6 + 1);
          bVar13 = bVar1 < ((byte *)pcVar9)[1];
          if (bVar1 != ((byte *)pcVar9)[1]) goto LAB_004a9717;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pcVar9 = (char *)((byte *)pcVar9 + 2);
        } while (bVar1 != 0);
        uVar7 = 0;
LAB_004a971c:
        if ((uVar7 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0')))
           ) goto LAB_004a9753;
      }
      cVar3 = HELPER_0040a5d0_AnimationPredicateC("Blink",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
LAB_004a9753:
    uVar11 = uVar11 - 1;
    if ((int)uVar11 < 1) {
      uVar11 = FUN_006eef60();
      if (uVar11 % 100 < local_184) {
        local_184 = local_184 - 10;
      }
      else {
        do {
          uVar11 = FUN_006eef60();
        } while (uVar11 % 0xb == local_17c);
        local_184 = 0x1e;
        local_13c = FUN_006eef60();
        local_13c = local_13c % 0xff;
        local_17c = uVar11 % 0xb;
      }
      uVar11 = 0xff;
    }
  }
  uVar10 = (((local_13c & 0xff) << 8 | (uVar10 >> 0x18) + 1 & 0xff) << 8 | local_184 & 0xff) << 8;
  *(uint *)(param_1 + 0xbdc) = uVar10 >> 0x18;
  *(uint *)(param_1 + 0xbd8) = (uVar10 | uVar11 & 0xff) << 8 | local_17c;
LAB_004a9816:
  FUN_00aef12b();
  return;
}

