/* Local J460 decompiler output.
 * VA: 0x009704a0
 * Entry: 009704a0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Laser Update tail call
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Laser Update tail call */

void __fastcall HELPER_Laser_UpdateGeometry(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  int iVar5;
  int iVar6;
  float *pfVar7;
  float *pfVar8;
  undefined4 extraout_ECX;
  int iVar9;
  uint uVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float local_78;
  int local_68;
  int local_60;
  int local_5c;
  float local_58;
  float local_54;
  float local_30;
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  uint local_10;
  uint local_c;
  
  FUN_0096f880();
  fVar13 = *(float *)(param_1 + 0x41c) * DAT_00baa088;
  if (*(int *)(param_1 + 0x2c) == 4) {
    *(float *)(param_1 + 0xec) = *(float *)(param_1 + 0x41c);
    *(undefined4 *)(param_1 + 0x460) = 0x43960000;
    fVar11 = fVar13;
    FUN_0041d540();
    fVar16 = *(float *)(param_1 + 0x33c);
    fVar11 = fVar11 * DAT_00baab08;
    fVar15 = *(float *)(param_1 + 0x34c);
    FUN_0041d520();
    fVar13 = fVar13 * DAT_00baab08;
    *(float *)(param_1 + 0x4d8) = fVar11 + fVar16 + fVar15;
    *(float *)(param_1 + 0x4dc) = fVar13 + *(float *)(param_1 + 0x350) + *(float *)(param_1 + 0x340)
    ;
    *(undefined *)(param_1 + 0x45d) = 0;
    return;
  }
  local_30 = fVar13;
  FUN_0041d540();
  local_2c = fVar13;
  FUN_0041d520();
  if ((float)((uint)local_30 & DAT_00bacb40) < DAT_00baa010) {
    local_30 = 0.0;
  }
  if ((float)((uint)local_2c & DAT_00bacb40) < DAT_00baa010) {
    local_2c = 0.0;
  }
  *(byte *)(param_1 + 0x148) = (byte)((uint)*(undefined4 *)(param_1 + 0x3ec) >> 8) & 1;
  FUN_0097fc10();
  FUN_0097f820(extraout_ECX);
  cVar4 = *(char *)(param_1 + 0x45d);
  if (cVar4 < '\0') {
    iVar1 = *(int *)(param_1 + 0x3bc);
    if (iVar1 == 0) {
LAB_00970730:
      cVar4 = '\0';
    }
    else {
      iVar2 = *(int *)(iVar1 + 0x28);
      if (((iVar2 != 1) && (*(int *)(param_1 + 0x34) != 1)) && (iVar2 != 0x3e)) {
        if (iVar2 == 1000) {
          if (*(int *)(iVar1 + 0x2c) != 0xb2) goto LAB_009706c5;
        }
        else if (((iVar2 != 0x107) && (iVar2 != 0x10c)) && (iVar2 != 0x19a)) {
          if (iVar2 == 0x104) {
            if (*(int *)(iVar1 + 0x30) != 2) {
LAB_009706c5:
              if ((*(char *)(param_1 + 0x4c0) == '\0') && (cVar4 = FUN_00435f50(), cVar4 == '\0')) {
                local_18 = (float)(*(uint *)(param_1 + 0x428) & DAT_00c34b70);
                local_14 = (float)(*(uint *)(param_1 + 0x42c) & DAT_00c34b74);
                local_10 = *(uint *)(param_1 + 0x430) & DAT_00c34b78;
                local_c = *(uint *)(param_1 + 0x434) & DAT_00c34b7c;
                cVar4 = FUN_004171b0();
                if (cVar4 == '\0') goto LAB_00970730;
              }
            }
          }
          else {
            if (iVar2 != 3) goto LAB_009706c5;
            if ((*(int *)(iVar1 + 0x2c) != 0x50) && (*(int *)(iVar1 + 0x2c) != 0x78)) {
              local_18 = (float)(*(uint *)(param_1 + 0x428) & DAT_00c34ba0);
              local_14 = (float)(*(uint *)(param_1 + 0x42c) & DAT_00c34ba4);
              local_10 = *(uint *)(param_1 + 0x430) & DAT_00c34ba8;
              local_c = *(uint *)(param_1 + 0x434) & DAT_00c34bac;
              cVar4 = FUN_004171b0();
              if (cVar4 == '\0') goto LAB_009706c5;
            }
          }
        }
      }
      if (*(int *)(param_1 + 0x2c) == 7) goto LAB_00970730;
      cVar4 = '\x01';
    }
    *(char *)(param_1 + 0x45d) = cVar4;
  }
  if (cVar4 != '\0') {
    FUN_0096f4e0();
    iVar1 = *(int *)(param_1 + 0x30);
    if (((iVar1 == 1) || (iVar1 == 2)) || (iVar1 == 3)) {
      FUN_0097baa0();
      return;
    }
    goto LAB_00970ca5;
  }
  fVar16 = *(float *)(param_1 + 0x34c) + *(float *)(param_1 + 0x33c);
  fVar13 = *(float *)(param_1 + 0x350) + *(float *)(param_1 + 0x340);
  local_20 = fVar16;
  local_1c = fVar13;
  if (*(int *)(param_1 + 0x184) == 6) {
    local_18 = local_30 * DAT_00baac34 + fVar16;
    fVar11 = fVar16 - local_30 * DAT_00baa75c;
    iVar3 = *(int *)(DAT_00c71678 + 0x18300);
    local_14 = local_2c * DAT_00baac34 + fVar13;
    fVar15 = fVar13 - local_2c * DAT_00baa75c;
    local_28 = fVar11;
    fVar18 = local_18 - fVar11;
    fVar17 = local_14 - fVar15;
    local_24 = fVar15;
    iVar5 = (int)((fVar11 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    local_60 = (int)((fVar15 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    iVar1 = (uint)(0.0 < fVar18) * 2 + -1;
    local_78 = 0.0;
    iVar2 = (uint)(0.0 < fVar17) * 2 + -1;
    if (((NAN(fVar18) || NAN(DAT_00c7b640)) == (fVar18 == DAT_00c7b640)) ||
       (fVar14 = 0.0, (NAN(fVar17) || NAN(DAT_00c7b644)) == (fVar17 == DAT_00c7b644))) {
      local_5c = local_60 * 0x28;
      local_68 = iVar5 * 0x28;
      local_58 = fVar11;
      local_54 = fVar15;
      do {
        local_28 = local_58;
        local_24 = local_54;
        if (((iVar5 < 0) || (*(int *)(iVar3 + 0xc) <= iVar5)) ||
           ((local_60 < 0 || (*(int *)(iVar3 + 0x10) <= local_60)))) {
          iVar6 = FUN_007f0800(0xffffffff);
LAB_0097095e:
          iVar9 = 0;
        }
        else {
          uVar10 = local_60 * *(int *)(iVar3 + 0xc) + iVar5;
          iVar6 = FUN_007f0800(uVar10);
          if (0x1bf < uVar10) goto LAB_0097095e;
          iVar9 = *(int *)(iVar3 + 0x24 + uVar10 * 4);
        }
        if (((((iVar6 == 2) || (iVar6 == 3)) || (iVar6 == 4)) || (iVar6 == 5)) &&
           ((fVar14 = local_78, iVar9 == 0 ||
            ((*(int *)(iVar9 + 4) != 0xf && (*(int *)(iVar9 + 4) != 0x10)))))) break;
        fVar14 = DAT_00baacd0;
        if (NAN(fVar18) == (fVar18 == 0.0)) {
          fVar14 = ((float)(local_68 + (iVar1 * 5 + 10) * 4) - local_58) / fVar18;
        }
        fVar12 = DAT_00baacd0;
        if (NAN(fVar17) == (fVar17 == 0.0)) {
          fVar12 = ((float)(local_5c + (iVar2 * 5 + 0x1e) * 4) - local_54) / fVar17;
        }
        if (fVar12 <= fVar14) {
          local_60 = local_60 + iVar2;
          local_5c = local_5c + iVar2 * 0x28;
        }
        else {
          iVar5 = iVar5 + iVar1;
          local_68 = local_68 + iVar1 * 0x28;
          fVar12 = fVar14;
        }
        local_78 = fVar12 + local_78;
        local_54 = fVar17 * local_78 + fVar15;
        local_58 = fVar18 * local_78 + fVar11;
        local_24 = local_54;
        local_28 = local_58;
        fVar14 = local_78;
      } while (local_78 < DAT_00baa454);
    }
    fVar15 = DAT_00baa454;
    if ((float *)(param_1 + 0x4d8) != (float *)0x0) {
      pfVar7 = &local_18;
      if (fVar14 < DAT_00baa454) {
        pfVar7 = &local_28;
      }
      *(float *)(param_1 + 0x4d8) = *pfVar7;
      *(float *)(param_1 + 0x4dc) = pfVar7[1];
    }
    if (fVar15 <= fVar14) {
      pfVar7 = (float *)FUN_0096fc70(&local_18,&local_20,&local_30);
      fVar15 = *(float *)(param_1 + 0x34c) + *pfVar7;
      fVar11 = *(float *)(param_1 + 0x350) + pfVar7[1];
LAB_00970af5:
      *(float *)(param_1 + 0x4d8) = fVar15;
      *(float *)(param_1 + 0x4dc) = fVar11;
    }
  }
  else {
    if (*(int *)(param_1 + 0x184) == 3) {
      pfVar7 = (float *)FUN_0096fc70(&local_18,&local_20,&local_30);
      fVar15 = *(float *)(param_1 + 0x34c) + *pfVar7;
      fVar11 = *(float *)(param_1 + 0x350) + pfVar7[1];
      goto LAB_00970af5;
    }
    fVar15 = local_2c * DAT_00baabc4;
    *(float *)(param_1 + 0x4d8) = local_30 * DAT_00baabc4 + fVar16;
    *(float *)(param_1 + 0x4dc) = fVar15 + fVar13;
  }
  pfVar7 = (float *)(param_1 + 0x4d8);
  fVar15 = *(float *)(param_1 + 0x4d0);
  if (0.0 < fVar15) {
    fVar11 = fVar16 - *pfVar7;
    fVar17 = fVar13 - *(float *)(param_1 + 0x4dc);
    if (fVar15 * fVar15 < fVar17 * fVar17 + fVar11 * fVar11) {
      local_18 = *pfVar7 - fVar16;
      local_14 = *(float *)(param_1 + 0x4dc) - fVar13;
      pfVar8 = (float *)FUN_00a10100(&local_20,fVar15);
      fVar15 = pfVar8[1];
      *pfVar7 = fVar16 + *pfVar8;
      *(float *)(param_1 + 0x4dc) = fVar13 + fVar15;
    }
  }
  fVar13 = *(float *)(param_1 + 0x4dc) - fVar13;
  fVar13 = fVar13 * fVar13 + (*pfVar7 - fVar16) * (*pfVar7 - fVar16);
  FUN_00435a50();
  *(float *)(param_1 + 0x460) = fVar13;
  if ((*(int *)(param_1 + 0x2c) == 6) || (*(int *)(param_1 + 0x2c) == 0xf)) {
    if (*(int *)(param_1 + 0x34) == 0x19a) {
      fVar16 = DAT_00baa9b0;
      if (DAT_00baa9b0 <= fVar13) {
        fVar16 = fVar13;
      }
      *(float *)(param_1 + 0x460) = fVar16;
    }
    else {
      *(float *)(param_1 + 0x460) = fVar13 + DAT_00baa9d0;
    }
  }
  *(float *)(param_1 + 0xec) = *(float *)(param_1 + 0x41c) - DAT_00baa9b4;
LAB_00970ca5:
  FUN_00973c60();
  return;
}

