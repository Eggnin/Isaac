/* Local J460 decompiler output.
 * VA: 0x004e8fa0
 * Entry: 004e8fa0
 * Dispatcher: 0x006c2990
 * Types: 886
 * Identities: vis_fatty.attack_helper
 * Evidence: Called from Entity 886 cord/child update
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=886; identities=vis_fatty.attack_helper; Called from
   Entity 886 cord/child update */

void __thiscall HELPER_004e8fa0_VisFattyCordCandidate(int param_1_00,char param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  uint uVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float local_30;
  float local_2c;
  float local_20;
  uint local_1c;
  uint local_c;
  
  if (param_1 == '\0') {
    local_20 = DAT_00baa454;
  }
  else {
    local_20 = DAT_00baa2d0;
  }
  fVar18 = DAT_00baa85c;
  if (*(int *)(param_1_00 + 0x28) != 0x3b6) {
    if (*(int *)(param_1_00 + 0x28) == 0x361) {
      fVar18 = *(float *)(param_1_00 + 0xc34);
    }
    else {
      fVar18 = (*(float *)(param_1_00 + 0xbb0) + DAT_00baa454) * DAT_00baa81c;
    }
  }
  uVar10 = *(uint *)(param_1_00 + 0xc14);
  if (*(uint *)(param_1_00 + 0xc28) < uVar10) {
    FUN_004f83a0(uVar10);
    uVar10 = *(uint *)(param_1_00 + 0xc14);
  }
  local_c = 0;
  local_1c = uVar10;
  if (uVar10 != 0) {
    do {
      iVar1 = *(int *)(param_1_00 + 0xc10);
      local_2c = 0.0;
      local_30 = 0.0;
      fVar19 = DAT_00baa280;
      if (local_c != 0) {
        uVar6 = (local_c - 1) + iVar1;
        uVar10 = local_c + 2 + iVar1;
        uVar14 = iVar1 + local_c & 1;
        iVar9 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (*(int *)(param_1_00 + 0xc0c) - 1U & iVar1 + local_c >> 1) * 4);
        uVar7 = iVar1 + (local_c - 3);
        uVar8 = uVar7 & 1;
        iVar2 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (*(int *)(param_1_00 + 0xc0c) - 1U & uVar7 >> 1) * 4);
        fVar20 = *(float *)(iVar9 + 4 + uVar14 * 8) - *(float *)(iVar2 + 4 + uVar8 * 8);
        fVar23 = *(float *)(iVar9 + uVar14 * 8) - *(float *)(iVar2 + uVar8 * 8);
        uVar14 = uVar10 & 1;
        uVar10 = uVar10 >> 1;
        uVar11 = uVar6 >> 1;
        uVar6 = uVar6 & 1;
        fVar21 = *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                    (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10) * 4) + uVar14 * 8)
                 - *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                      (*(int *)(param_1_00 + 0xc0c) - 1U & uVar11) * 4) + uVar6 * 8)
        ;
        fVar19 = fVar20 * fVar20 + fVar23 * fVar23 + fVar21 * fVar21;
        FUN_00435a50();
        fVar22 = fVar19 - fVar18;
        uVar7 = local_c + iVar1 + 1;
        uVar15 = uVar7 & 1;
        iVar9 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (*(int *)(param_1_00 + 0xc0c) - 1U & uVar7 >> 1) * 4);
        uVar7 = local_c + iVar1 + -2;
        uVar8 = uVar7 & 1;
        iVar2 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (*(int *)(param_1_00 + 0xc0c) - 1U & uVar7 >> 1) * 4);
        local_2c = (0.0 - (fVar23 / fVar19) * fVar22 * DAT_00baa1f8) -
                   (*(float *)(iVar9 + uVar15 * 8) - *(float *)(iVar2 + uVar8 * 8)) * DAT_00baa1f8;
        local_30 = (0.0 - (fVar20 / fVar19) * fVar22 * DAT_00baa1f8) -
                   (*(float *)(iVar9 + 4 + uVar15 * 8) - *(float *)(iVar2 + 4 + uVar8 * 8)) *
                   DAT_00baa1f8;
        fVar19 = (DAT_00baa280 - (fVar21 / fVar19) * fVar22 * DAT_00baa1f8) -
                 (*(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                     (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10) * 4) + 4 +
                            uVar14 * 8) -
                 *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                    (*(int *)(param_1_00 + 0xc0c) - 1U & uVar11) * 4) + 4 +
                           uVar6 * 8)) * DAT_00baa1f8;
        uVar10 = local_1c;
      }
      uVar6 = local_c + 3;
      if (uVar6 < uVar10) {
        uVar7 = local_c + 5 + iVar1;
        uVar10 = local_c + 2 + iVar1;
        uVar11 = iVar1 + local_c & 1;
        iVar9 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (iVar1 + local_c >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
        uVar8 = iVar1 + local_c + 3;
        uVar14 = uVar8 & 1;
        iVar2 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (uVar8 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
        fVar21 = *(float *)(iVar9 + uVar11 * 8) - *(float *)(iVar2 + uVar14 * 8);
        fVar24 = *(float *)(iVar9 + 4 + uVar11 * 8) - *(float *)(iVar2 + 4 + uVar14 * 8);
        uVar11 = uVar10 & 1;
        uVar10 = uVar10 >> 1;
        uVar15 = uVar7 >> 1;
        uVar7 = uVar7 & 1;
        fVar22 = *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                    (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10) * 4) + uVar11 * 8)
                 - *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                      (*(int *)(param_1_00 + 0xc0c) - 1U & uVar15) * 4) + uVar7 * 8)
        ;
        fVar20 = fVar21 * fVar21 + fVar24 * fVar24 + fVar22 * fVar22;
        FUN_00435a50();
        fVar23 = fVar20 - fVar18;
        uVar8 = local_c + iVar1 + 1;
        uVar16 = uVar8 & 1;
        iVar9 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (*(int *)(param_1_00 + 0xc0c) - 1U & uVar8 >> 1) * 4);
        uVar8 = local_c + iVar1 + 4;
        uVar14 = uVar8 & 1;
        iVar1 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (uVar8 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
        local_2c = (local_2c - (fVar21 / fVar20) * fVar23 * DAT_00baa1f8) -
                   (*(float *)(iVar9 + uVar16 * 8) - *(float *)(iVar1 + uVar14 * 8)) * DAT_00baa1f8;
        local_30 = (local_30 - (fVar24 / fVar20) * fVar23 * DAT_00baa1f8) -
                   (*(float *)(iVar9 + 4 + uVar16 * 8) - *(float *)(iVar1 + 4 + uVar14 * 8)) *
                   DAT_00baa1f8;
        fVar19 = (fVar19 - (fVar22 / fVar20) * fVar23 * DAT_00baa1f8) -
                 (*(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                     (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10) * 4) + 4 +
                            uVar11 * 8) -
                 *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                    (*(int *)(param_1_00 + 0xc0c) - 1U & uVar15) * 4) + 4 +
                           uVar7 * 8)) * DAT_00baa1f8;
      }
      uVar10 = *(int *)(param_1_00 + 0xc10) + local_c;
      uVar14 = uVar10 & 1;
      iVar1 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                      (uVar10 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
      uVar10 = *(int *)(param_1_00 + 0xc10) + local_c + 1;
      uVar7 = uVar10 & 1;
      iVar9 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                      (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10 >> 1) * 4);
      fVar20 = *(float *)(iVar9 + 4 + uVar7 * 8);
      fVar21 = *(float *)(iVar1 + 4 + uVar14 * 8);
      uVar10 = *(int *)(param_1_00 + 0xc24) + local_c;
      uVar8 = uVar10 & 1;
      iVar2 = *(int *)(*(int *)(param_1_00 + 0xc1c) +
                      (*(int *)(param_1_00 + 0xc20) - 1U & uVar10 >> 1) * 4);
      *(float *)(iVar2 + uVar8 * 8) =
           local_20 * *(float *)(iVar9 + uVar7 * 8) + *(float *)(iVar1 + uVar14 * 8);
      *(float *)(iVar2 + 4 + uVar8 * 8) = local_20 * fVar20 + fVar21;
      fVar20 = DAT_00baa418;
      uVar10 = local_c + 1 + *(int *)(param_1_00 + 0xc10);
      uVar7 = uVar10 & 1;
      iVar1 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                      (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10 >> 1) * 4);
      uVar10 = local_c + 1 + *(int *)(param_1_00 + 0xc24);
      uVar8 = uVar10 & 1;
      fVar21 = (local_30 * local_20 + *(float *)(iVar1 + 4 + uVar7 * 8)) * DAT_00baa418;
      iVar9 = *(int *)(*(int *)(param_1_00 + 0xc1c) +
                      (uVar10 >> 1 & *(int *)(param_1_00 + 0xc20) - 1U) * 4);
      *(float *)(iVar9 + uVar8 * 8) =
           (local_2c * local_20 + *(float *)(iVar1 + uVar7 * 8)) * DAT_00baa418;
      *(float *)(iVar9 + 4 + uVar8 * 8) = fVar21;
      uVar10 = local_c + 2 + *(int *)(param_1_00 + 0xc10);
      uVar8 = uVar10 & 1;
      uVar7 = local_c + 2 + *(int *)(param_1_00 + 0xc24);
      uVar10 = uVar10 >> 1;
      *(float *)(*(int *)(*(int *)(param_1_00 + 0xc1c) +
                         (*(int *)(param_1_00 + 0xc20) - 1U & uVar7 >> 1) * 4) + (uVar7 & 1) * 8) =
           local_20 *
           *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                              (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10) * 4) + 4 + uVar8 * 8) +
           *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                              (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10) * 4) + uVar8 * 8);
      uVar10 = local_c + 2 + *(int *)(param_1_00 + 0xc10);
      uVar7 = local_c + 2 + *(int *)(param_1_00 + 0xc24);
      *(float *)(*(int *)(*(int *)(param_1_00 + 0xc1c) +
                         (uVar7 >> 1 & *(int *)(param_1_00 + 0xc20) - 1U) * 4) + 4 + (uVar7 & 1) * 8
                ) = (fVar19 * local_20 +
                    *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                       (uVar10 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4) + 4 +
                              (uVar10 & 1) * 8)) * fVar20;
      uVar10 = local_c + 2 + *(int *)(param_1_00 + 0xc24);
      uVar7 = uVar10 & 1;
      uVar10 = uVar10 >> 1;
      if (0.0 < *(float *)(*(int *)(*(int *)(param_1_00 + 0xc1c) +
                                   (*(int *)(param_1_00 + 0xc20) - 1U & uVar10) * 4) + uVar7 * 8)) {
        *(undefined4 *)
         (*(int *)(*(int *)(param_1_00 + 0xc1c) + (*(int *)(param_1_00 + 0xc20) - 1U & uVar10) * 4)
         + uVar7 * 8) = 0;
        uVar10 = local_c + 2 + *(int *)(param_1_00 + 0xc24);
        *(undefined4 *)
         (*(int *)(*(int *)(param_1_00 + 0xc1c) +
                  (uVar10 >> 1 & *(int *)(param_1_00 + 0xc20) - 1U) * 4) + 4 + (uVar10 & 1) * 8) = 0
        ;
        uVar10 = local_c + 1 + *(int *)(param_1_00 + 0xc24);
        uVar7 = uVar10 & 1;
        iVar1 = *(int *)(*(int *)(param_1_00 + 0xc1c) +
                        (uVar10 >> 1 & *(int *)(param_1_00 + 0xc20) - 1U) * 4);
        *(float *)(iVar1 + uVar7 * 8) = *(float *)(iVar1 + uVar7 * 8) * DAT_00baa3c4;
        *(float *)(iVar1 + 4 + uVar7 * 8) = *(float *)(iVar1 + 4 + uVar7 * 8) * DAT_00baa3c4;
      }
      uVar10 = *(uint *)(param_1_00 + 0xc10);
      local_1c = *(uint *)(param_1_00 + 0xc14);
      uVar7 = uVar10 + (local_1c - 3);
      iVar1 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                      (uVar10 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
      uVar8 = uVar7 & 1;
      iVar9 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                      (uVar7 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
      fVar19 = *(float *)(iVar9 + 4 + uVar8 * 8) - *(float *)(iVar1 + 4 + (uVar10 & 1) * 8);
      fVar20 = *(float *)(iVar9 + uVar8 * 8) - *(float *)(iVar1 + (uVar10 & 1) * 8);
      fVar19 = fVar19 * fVar19 + fVar20 * fVar20;
      FUN_00435a50();
      fVar19 = (fVar19 - DAT_00baa9b4) / DAT_00baa9ec;
      if (fVar19 <= 0.0) {
        fVar19 = 0.0;
      }
      if (DAT_00baa454 <= fVar19) {
        fVar19 = DAT_00baa454;
      }
      fVar19 = fVar19 + 0.0;
      if (fVar19 <= 0.0) {
        uVar10 = *(uint *)(param_1_00 + 0xc14);
      }
      else {
        uVar10 = *(uint *)(param_1_00 + 0xc10);
        iVar9 = *(uint *)(param_1_00 + 0xc14) / 3 - 1;
        iVar1 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (uVar10 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
        fVar26 = (float)((double)(local_c / 3) + DAT_00bacb00) /
                 (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]);
        fVar25 = DAT_00baa454 - fVar26;
        uVar8 = *(int *)(param_1_00 + 0xc14) + -3 + uVar10;
        uVar7 = (uVar10 - 1) + *(int *)(param_1_00 + 0xc14);
        uVar14 = uVar8 & 1;
        iVar9 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (*(int *)(param_1_00 + 0xc0c) - 1U & uVar8 >> 1) * 4);
        uVar12 = local_c + 2 + uVar10;
        uVar11 = uVar10 + local_c & 1;
        iVar2 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (uVar10 + local_c >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4);
        uVar8 = uVar12 >> 1;
        uVar12 = uVar12 & 1;
        uVar15 = local_c + 1 + uVar10;
        uVar16 = uVar15 & 1;
        fVar24 = ((fVar25 * *(float *)(iVar1 + 4 + (uVar10 & 1) * 8) +
                  fVar26 * *(float *)(iVar9 + 4 + uVar14 * 8)) - *(float *)(iVar2 + 4 + uVar11 * 8))
                 * DAT_00baa3a4;
        iVar3 = *(int *)(*(int *)(param_1_00 + 0xc08) +
                        (*(int *)(param_1_00 + 0xc0c) - 1U & uVar15 >> 1) * 4);
        fVar23 = *(float *)(iVar3 + 4 + uVar16 * 8) * DAT_00baa3a4;
        uVar13 = local_c + 2 + *(int *)(param_1_00 + 0xc24);
        uVar17 = local_c + 1 + *(int *)(param_1_00 + 0xc24);
        uVar15 = uVar17 >> 1;
        uVar17 = uVar17 & 1;
        iVar4 = *(int *)(*(int *)(param_1_00 + 0xc1c) +
                        (*(int *)(param_1_00 + 0xc20) - 1U & uVar15) * 4);
        fVar20 = *(float *)(iVar4 + 4 + uVar17 * 8);
        fVar27 = ((fVar26 * *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                               (uVar7 >> 1 & *(int *)(param_1_00 + 0xc0c) - 1U) * 4)
                                      + (uVar7 & 1) * 8) +
                  fVar25 * *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                              (*(int *)(param_1_00 + 0xc0c) - 1U & uVar10 + 2 >> 1)
                                              * 4) + (uVar10 + 2 & 1) * 8)) -
                 *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                    (*(int *)(param_1_00 + 0xc0c) - 1U & uVar8) * 4) + uVar12 * 8))
                 * DAT_00baa3a4;
        fVar22 = *(float *)(*(int *)(*(int *)(param_1_00 + 0xc08) +
                                    (*(int *)(param_1_00 + 0xc0c) - 1U & uVar8) * 4) + 4 +
                           uVar12 * 8) * DAT_00baa3a4;
        fVar21 = *(float *)(*(int *)(*(int *)(param_1_00 + 0xc1c) +
                                    (*(int *)(param_1_00 + 0xc20) - 1U & uVar13 >> 1) * 4) + 4 +
                           (uVar13 & 1) * 8);
        iVar5 = *(int *)(*(int *)(param_1_00 + 0xc1c) +
                        (*(int *)(param_1_00 + 0xc20) - 1U & uVar15) * 4);
        *(float *)(iVar5 + uVar17 * 8) =
             *(float *)(iVar4 + uVar17 * 8) +
             (((fVar25 * *(float *)(iVar1 + (uVar10 & 1) * 8) +
               fVar26 * *(float *)(iVar9 + uVar14 * 8)) - *(float *)(iVar2 + uVar11 * 8)) *
              DAT_00baa3a4 - *(float *)(iVar3 + uVar16 * 8) * DAT_00baa3a4) * fVar19 * local_20;
        *(float *)(iVar5 + 4 + uVar17 * 8) = fVar20 + (fVar24 - fVar23) * fVar19 * local_20;
        uVar10 = local_c + 2 + *(int *)(param_1_00 + 0xc24);
        *(float *)(*(int *)(*(int *)(param_1_00 + 0xc1c) +
                           (*(int *)(param_1_00 + 0xc20) - 1U & uVar10 >> 1) * 4) + 4 +
                  (uVar10 & 1) * 8) = (fVar27 - fVar22) * fVar19 * local_20 + fVar21;
        uVar10 = *(uint *)(param_1_00 + 0xc14);
        local_1c = uVar10;
      }
      local_c = uVar6;
    } while (uVar6 < uVar10);
  }
  if (param_1 == '\0') {
    FUN_004b0e40(param_1_00 + 0xc18);
  }
  return;
}

