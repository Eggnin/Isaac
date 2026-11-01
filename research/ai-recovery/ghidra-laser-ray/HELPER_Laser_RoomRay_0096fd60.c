/* Local J460 decompiler output.
 * VA: 0x0096fd60
 * Entry: 0096fd60
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Native endpoint wall intersection
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Native endpoint wall intersection */

float * HELPER_Laser_RoomRay
                  (float *param_1,float *param_2,float *param_3,float *param_4,int param_5,
                  float param_6)

{
  int iVar1;
  int iVar2;
  short sVar3;
  int *piVar4;
  int *piVar5;
  int **ppiVar6;
  int iVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float local_48;
  float local_44;
  float local_30;
  uint local_2c;
  undefined auStack_28 [36];
  
  iVar7 = DAT_00c71678;
  fVar14 = DAT_00baabd4;
  iVar2 = *(int *)(DAT_00c71678 + 0x26584);
  iVar1 = *(int *)(DAT_00c71678 + 0x18300);
  local_30 = DAT_00baabd4;
  fVar10 = (*(float *)(iVar1 + 0x14) - *param_4) - param_6;
  fVar8 = (*(float *)(iVar1 + 0x20) - param_4[1]) + param_6;
  fVar11 = (*(float *)(iVar1 + 0x18) - param_4[1]) - param_6;
  fVar12 = (*(float *)(iVar1 + 0x1c) - *param_4) + param_6;
  local_48 = *param_2;
  local_44 = param_2[1];
  *param_1 = *param_3 * DAT_00baabd4 + local_48;
  param_1[1] = param_3[1] * fVar14 + local_44;
  if ((iVar2 == 0x1e) &&
     ((param_5 == 0 || ((*(int *)(param_5 + 0x28) != 1 && (*(int *)(param_5 + 0x28) != 3)))))) {
    ppiVar6 = (int **)(iVar7 + 0x1baa8);
    local_2c = 0;
    iVar7 = DAT_00c71678;
    if (*(int *)(iVar7 + 0x1baac) - (int)*ppiVar6 >> 2 != 0) {
      do {
        piVar5 = ppiVar6[1];
        if ((int)piVar5 - (int)*ppiVar6 >> 2 == 0) {
          FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
          piVar5 = ppiVar6[1];
        }
        piVar4 = *ppiVar6;
        if (local_2c < (uint)((int)piVar5 - (int)piVar4 >> 2)) {
          piVar4 = piVar4 + local_2c;
        }
        local_48 = *param_2;
        local_44 = param_2[1];
        fVar13 = *(float *)(*piVar4 + 0x33c) - local_48;
        fVar9 = *(float *)(*piVar4 + 0x340) - local_44;
        fVar14 = *param_3;
        fVar16 = fVar13 * fVar14 + fVar9 * param_3[1];
        fVar15 = param_3[1];
        if ((((float)((uint)(fVar13 * fVar15 - fVar9 * fVar14) & DAT_00bacb40) < param_6) &&
            (0.0 < fVar16)) && (fVar16 < local_30)) {
          *param_1 = fVar14 * fVar16 + local_48;
          param_1[1] = fVar15 * fVar16 + local_44;
          local_30 = fVar16;
        }
        local_2c = local_2c + 1;
        ppiVar6 = (int **)(DAT_00c71678 + 0x1baa8);
        iVar7 = DAT_00c71678;
      } while (local_2c < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - (int)*ppiVar6 >> 2));
    }
  }
  sVar3 = _fdclass(param_6);
  if (sVar3 < 1) {
    fVar14 = *param_1 - local_48;
    fVar15 = param_1[1] - local_44;
    if (fVar10 < local_48) {
      fVar9 = fVar10 - local_48;
      fVar13 = fVar14 * fVar9 + fVar15 * 0.0;
      fVar9 = fVar9 * fVar9 + 0.0;
      if (fVar9 <= fVar13) {
        fVar9 = fVar9 / fVar13;
        fVar15 = fVar15 * fVar9;
        fVar14 = fVar14 * fVar9;
      }
    }
    if (local_48 < fVar12) {
      fVar9 = fVar12 - local_48;
      fVar13 = fVar14 * fVar9 + fVar15 * 0.0;
      fVar9 = fVar9 * fVar9 + 0.0;
      if (fVar9 <= fVar13) {
        fVar9 = fVar9 / fVar13;
        fVar14 = fVar14 * fVar9;
        fVar15 = fVar15 * fVar9;
      }
    }
    if (fVar11 < local_44) {
      fVar9 = fVar11 - local_44;
      fVar13 = fVar15 * fVar9 + fVar14 * 0.0;
      fVar9 = fVar9 * fVar9 + 0.0;
      if (fVar9 <= fVar13) {
        fVar9 = fVar9 / fVar13;
        fVar14 = fVar14 * fVar9;
        fVar15 = fVar15 * fVar9;
      }
    }
    if (local_44 < fVar8) {
      fVar9 = fVar8 - local_44;
      fVar13 = fVar15 * fVar9 + fVar14 * 0.0;
      fVar9 = fVar9 * fVar9 + 0.0;
      if (fVar9 <= fVar13) {
        fVar9 = fVar9 / fVar13;
        fVar14 = fVar14 * fVar9;
        fVar15 = fVar15 * fVar9;
      }
    }
    iVar1 = *(int *)(*(int *)(iVar7 + 0x18300) + 4);
    *param_1 = fVar14 + local_48;
    param_1[1] = fVar15 + local_44;
    if (*(int *)(*(int *)(iVar1 + 0x10) + 0x48) - 9U < 4) {
      local_48 = local_48 - (fVar14 + local_48);
      local_44 = local_44 - (fVar15 + local_44);
      HELPER_LRoomRectangles(auStack_28);
      iVar1 = *(int *)(*(int *)(iVar7 + 0x18300) + 4);
      if ((iVar1 != 0) && (iVar1 = *(int *)(iVar1 + 0x10), iVar1 != 0)) {
        switch(*(undefined4 *)(iVar1 + 0x48)) {
        case 9:
          if ((*param_1 < fVar10 + _DAT_00baab80) &&
             (fVar11 = fVar11 + DAT_00baaaf8, param_1[1] <= fVar11 && fVar11 != param_1[1])) {
            fVar14 = (fVar10 + _DAT_00baab80) - *param_1;
            fVar8 = fVar14 * fVar14 + 0.0;
            fVar14 = fVar14 * local_48 + local_44 * 0.0;
            if (fVar8 <= fVar14) {
              fVar8 = fVar8 / fVar14;
              local_44 = fVar8 * local_44;
              local_48 = fVar8 * local_48;
            }
            fVar11 = fVar11 - param_1[1];
            fVar14 = local_44 * fVar11 + local_48 * 0.0;
            fVar8 = fVar11 * fVar11 + 0.0;
            if (fVar8 <= fVar14) {
              fVar8 = fVar8 / fVar14;
              local_48 = local_48 * fVar8;
              local_44 = local_44 * fVar8;
            }
          }
          break;
        case 10:
          if ((fVar12 - _DAT_00baab80 < *param_1) &&
             (fVar11 = fVar11 + DAT_00baaaf8, param_1[1] <= fVar11 && fVar11 != param_1[1])) {
            fVar14 = (fVar12 - _DAT_00baab80) - *param_1;
            fVar8 = fVar14 * fVar14 + 0.0;
            fVar14 = fVar14 * local_48 + local_44 * 0.0;
            if (fVar8 <= fVar14) {
              fVar8 = fVar8 / fVar14;
              local_44 = fVar8 * local_44;
              local_48 = fVar8 * local_48;
            }
            fVar11 = fVar11 - param_1[1];
            fVar14 = local_44 * fVar11 + local_48 * 0.0;
            fVar8 = fVar11 * fVar11 + 0.0;
            if (fVar8 <= fVar14) {
              fVar8 = fVar8 / fVar14;
              local_48 = local_48 * fVar8;
              local_44 = local_44 * fVar8;
            }
          }
          break;
        case 0xb:
          if ((*param_1 < fVar10 + _DAT_00baab80) && (fVar8 - DAT_00baaaf8 < param_1[1])) {
            fVar14 = (fVar10 + _DAT_00baab80) - *param_1;
            fVar10 = fVar14 * fVar14 + 0.0;
            fVar14 = fVar14 * local_48 + local_44 * 0.0;
            if (fVar10 <= fVar14) {
              fVar10 = fVar10 / fVar14;
              local_44 = fVar10 * local_44;
              local_48 = fVar10 * local_48;
            }
            fVar8 = (fVar8 - DAT_00baaaf8) - param_1[1];
            fVar14 = local_44 * fVar8 + local_48 * 0.0;
            fVar8 = fVar8 * fVar8 + 0.0;
            if (fVar8 <= fVar14) {
              fVar8 = fVar8 / fVar14;
              local_48 = local_48 * fVar8;
              local_44 = local_44 * fVar8;
            }
          }
          break;
        case 0xc:
          if ((fVar12 - _DAT_00baab80 < *param_1) && (fVar8 - DAT_00baaaf8 < param_1[1])) {
            fVar14 = (fVar12 - _DAT_00baab80) - *param_1;
            fVar10 = fVar14 * fVar14 + 0.0;
            fVar14 = fVar14 * local_48 + local_44 * 0.0;
            if (fVar10 <= fVar14) {
              fVar10 = fVar10 / fVar14;
              local_44 = fVar10 * local_44;
              local_48 = fVar10 * local_48;
            }
            fVar8 = (fVar8 - DAT_00baaaf8) - param_1[1];
            fVar14 = local_44 * fVar8 + local_48 * 0.0;
            fVar8 = fVar8 * fVar8 + 0.0;
            if (fVar8 <= fVar14) {
              fVar8 = fVar8 / fVar14;
              local_48 = local_48 * fVar8;
              local_44 = local_44 * fVar8;
            }
          }
        }
      }
      fVar8 = *param_2 - (local_48 + *param_1);
      fVar14 = param_2[1] - (local_44 + param_1[1]);
      if (DAT_00baa06c < fVar14 * fVar14 + fVar8 * fVar8) {
        *param_1 = local_48 + *param_1;
        param_1[1] = local_44 + param_1[1];
        return param_1;
      }
    }
  }
  return param_1;
}

