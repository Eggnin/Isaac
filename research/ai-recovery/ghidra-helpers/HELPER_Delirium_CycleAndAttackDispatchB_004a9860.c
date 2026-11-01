/* Local J460 decompiler output.
 * VA: 0x004a9860
 * Entry: 004a9860
 * Dispatcher: 0x006c2990
 * Types: 412
 * Identities: delirium.cycle_id_dispatch
 * Evidence: Reads CycleID fields and AttackID; called from Delirium AI
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=412; identities=delirium.cycle_id_dispatch; Reads
   CycleID fields and AttackID; called from Delirium AI */

void __fastcall HELPER_Delirium_CycleAndAttackDispatchB(int param_1)

{
  double dVar1;
  uint uVar2;
  int iVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  float fVar11;
  float fVar12;
  double dVar13;
  char *pcVar14;
  float local_24;
  uint local_1c;
  uint local_18;
  uint local_14;
  float local_10;
  float local_c;
  
  if (NAN(*(float *)(param_1 + 0x380)) != (*(float *)(param_1 + 0x380) == 0.0)) {
    return;
  }
  uVar2 = *(uint *)(param_1 + 0xbe0);
  uVar10 = uVar2 >> 7 & 0xff;
  uVar8 = uVar2 >> 0x19 | (*(uint *)(param_1 + 0xbe4) & 7) << 7;
  if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
    FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
  }
  local_1c = FUN_00aefca0();
  local_c = *(float *)(param_1 + 0x360);
  local_10 = *(float *)(param_1 + 0x364);
  local_18 = local_1c + 1;
  uVar7 = 3 - local_1c;
  uVar9 = local_1c;
  if (uVar10 != 0) {
    uVar9 = 3;
  }
  uVar5 = uVar10 - 1;
  if (uVar10 == 0) {
    uVar5 = 0;
  }
  iVar6 = *(int *)(param_1 + 0x28);
  iVar3 = (int)uVar9 >> 0x1f;
  if (0x193 < iVar6) {
    switch(iVar6) {
    case 0x194:
      fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
      local_c = local_c * fVar11;
      local_10 = local_10 * fVar11;
      break;
    case 0x195:
switchD_004a998d_caseD_14:
      fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
      local_c = local_c * DAT_00baa27c * fVar11;
      local_10 = local_10 * DAT_00baa27c * fVar11;
    default:
      goto LAB_004aa3d4;
    case 0x197:
switchD_004aa2e2_caseD_197:
      if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
      }
      goto LAB_004aa3bf;
    case 0x19a:
      fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
      local_c = local_c * DAT_00baa304 * fVar11;
      local_10 = local_10 * DAT_00baa304 * fVar11;
    }
    if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
    }
    goto LAB_004aa3bf;
  }
  if (iVar6 == 0x193) {
switchD_004a998d_caseD_45:
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * fVar11;
    local_10 = local_10 * fVar11;
    goto LAB_004aa3d4;
  }
  switch(iVar6) {
  case 0x13:
  case 0x1c:
  case 0x61:
  case 99:
  case 100:
  case 0xed:
  case 0x10b:
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * _DAT_00baa1a0 * fVar11;
    local_10 = local_10 * _DAT_00baa1a0 * fVar11;
    break;
  case 0x14:
  case 0x52:
    goto switchD_004a998d_caseD_14;
  case 0x24:
  case 0x2b:
  case 0x4e:
  case 0x106:
    if (uVar8 < 0x1e) {
      if (*(int *)(param_1 + 0xb64) == 8) {
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
    else if (*(int *)(param_1 + 0xb64) != 8) goto LAB_004a9b6d;
    if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
    }
    uVar9 = FUN_00aefca0();
    local_18 = uVar9 + 1;
    local_1c = uVar9;
    goto LAB_004a9b6d;
  case 0x2d:
    if ((0x3c < uVar8) && (iVar6 = FUN_0067f010(), iVar6 == 0)) {
      *(undefined4 *)(param_1 + 0xba0) = 0;
    }
    if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
    }
    goto LAB_004a9d83;
  case 0x3e:
    fVar11 = DAT_00baa630;
    if (*(int *)(param_1 + 0x2c) == 0) {
      fVar11 = DAT_00baa4b0;
    }
    fVar12 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * (fVar11 - DAT_00baa454) * fVar12;
    local_10 = local_10 * (fVar11 - DAT_00baa454) * fVar12;
    break;
  case 0x3f:
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * DAT_00baa528 * fVar11;
    local_10 = local_10 * DAT_00baa528 * fVar11;
    break;
  case 0x41:
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    if (*(int *)(param_1 + 0x2c) == 10) {
      local_c = local_c * 0.0 * fVar11;
      local_10 = local_10 * 0.0 * fVar11;
      break;
    }
    fVar12 = DAT_00baa528;
    if (*(int *)(param_1 + 0x2c) == 1) goto LAB_004a9b8f;
    goto LAB_004a9b9f;
  case 0x43:
    if (*(int *)(param_1 + 0x2c) != 1) break;
LAB_004a9b6d:
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-((int)uVar9 >> 0x1f)]) / DAT_00baa6fc;
LAB_004a9b8f:
    fVar12 = DAT_00baa27c;
LAB_004a9b9f:
    local_c = local_c * fVar12 * fVar11;
    local_10 = local_10 * fVar12 * fVar11;
    break;
  case 0x44:
    if (*(int *)(param_1 + 0x2c) != 1) break;
    iVar6 = *(int *)(param_1 + 0xb64);
    if (uVar8 < 0x1e) {
      if ((iVar6 == 9) || (iVar6 == 10)) {
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
    else if ((iVar6 != 9) && (iVar6 != 10)) break;
    if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
    }
LAB_004a9d83:
    uVar9 = FUN_00aefca0();
    local_18 = uVar9 + 1;
    local_1c = uVar9;
    break;
  case 0x45:
    goto switchD_004a998d_caseD_45;
  case 0x4a:
    goto switchD_004a998d_caseD_4a;
  case 0x4f:
    fVar11 = DAT_00baa4b0;
    if (*(int *)(param_1 + 0x2c) == 2) {
      fVar11 = DAT_00baa490;
    }
    fVar12 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * (fVar11 - DAT_00baa454) * fVar12;
    local_10 = local_10 * (fVar11 - DAT_00baa454) * fVar12;
    break;
  case 0x51:
    *(undefined4 *)(param_1 + 900) = *(undefined4 *)(param_1 + 0x380);
    goto switchD_004a998d_caseD_4a;
  case 0x54:
    if (*(int *)(param_1 + 0x2c) == 10) {
      iVar6 = FUN_0067f010();
      if (iVar6 == 0) {
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
      fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
      local_c = local_c * _DAT_00baa1a0 * fVar11;
      local_10 = local_10 * _DAT_00baa1a0 * fVar11;
      if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
      }
    }
    else {
      fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
      local_c = local_c * 0.0 * fVar11;
      local_10 = local_10 * 0.0 * fVar11;
      if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
      }
    }
    goto LAB_004aa3bf;
  case 0x65:
    local_1c = 0;
    break;
  case 0x66:
    if (NAN(*(float *)(param_1 + 900)) != (*(float *)(param_1 + 900) == 0.0)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
    }
    uVar9 = FUN_00aefca0();
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-((int)uVar9 >> 0x1f)]) / DAT_00baa6fc;
    local_c = local_c * DAT_00baa304 * fVar11;
    local_10 = local_10 * DAT_00baa304 * fVar11;
    goto LAB_004aa3cc;
  case 0x105:
    local_18 = 2;
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * _DAT_00baa1a0 * fVar11;
    local_10 = local_10 * _DAT_00baa1a0 * fVar11;
    break;
  case 0x107:
    local_c = local_c * DAT_00baad50;
    dVar1 = (double)(&DAT_00bacb00)[-iVar3];
    local_10 = local_10 * DAT_00baad50;
    *(undefined4 *)(param_1 + 0x33c) = *(undefined4 *)(param_1 + 0x334);
    *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
    fVar11 = (float)((double)uVar9 + dVar1) / DAT_00baa6fc;
    local_c = local_c * fVar11;
    local_10 = local_10 * fVar11;
    break;
  case 0x109:
    if (*(int *)(param_1 + 0xb64) != 6) break;
    goto switchD_004aa2e2_caseD_197;
  case 0x10c:
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * _DAT_00baa1a0 * fVar11;
    local_10 = local_10 * _DAT_00baa1a0 * fVar11;
    fVar11 = *(float *)(param_1 + 900);
    if (*(int *)(param_1 + 0xb64) == 8) {
      if (NAN(fVar11) != (fVar11 == 0.0)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
      }
    }
    else if (NAN(fVar11) != (fVar11 == 0.0)) {
      FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
    }
LAB_004aa3bf:
    uVar9 = FUN_00aefca0();
LAB_004aa3cc:
    local_18 = uVar9 + 1;
    local_1c = uVar9;
    break;
  case 0x10f:
  case 0x110:
  case 0x111:
    local_18 = 1;
    fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
    local_c = local_c * _DAT_00baa1a0 * fVar11;
    local_10 = local_10 * _DAT_00baa1a0 * fVar11;
  }
LAB_004aa3d4:
  dVar1 = DAT_00baa6c0;
  if (uVar9 * 4 < uVar8) {
    local_14 = 0;
    do {
      switch(*(undefined4 *)(param_1 + 0x28)) {
      case 0x14:
      case 0x2b:
        if ((*(int *)(param_1 + 0xb64) == 3) &&
           ((uVar7 == 0 || (uVar10 = FUN_006eef60(), uVar10 % uVar7 == 0)))) {
          uVar10 = FUN_006eef60();
          local_24 = DAT_00baa454;
          if ((uVar10 & 1) == 0) {
            *(undefined4 *)(param_1 + 0xb64) = 8;
            pcVar14 = "Taunt";
          }
          else {
            if ((uVar10 & 1) != 1) break;
            *(undefined4 *)(param_1 + 0xb64) = 6;
            fVar11 = DAT_00baa528;
            if ((*(int *)(param_1 + 0xc64) == 0x12) ||
               (fVar11 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
              local_24 = fVar11;
            }
            FUN_00956780();
            FUN_0092dc30(0xe,0x3f800000,2,0,local_24,0);
            pcVar14 = "JumpUp";
          }
LAB_004aa517:
          cVar4 = HELPER_0040a5d0_AnimationPredicateC(pcVar14,1);
          if (cVar4 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
        break;
      case 0x1c:
        if ((((*(int *)(param_1 + 0x2c) == 0) && (*(int *)(param_1 + 0xb64) == 4)) &&
            ((uVar7 == 0 || (uVar10 = FUN_006eef60(), uVar10 % uVar7 == 0)))) &&
           (*(int *)(param_1 + 0x410) == 0)) {
          *(undefined4 *)(param_1 + 0xb64) = 0xd;
        }
        break;
      case 0x40:
        if (*(int *)(param_1 + 0xb64) == 4) {
          dVar13 = dVar1;
          _libm_sse2_pow_precise();
          if (((int)dVar13 == 0) || (uVar10 = FUN_006eef60(), uVar10 % (uint)(int)dVar13 == 0)) {
            uVar10 = FUN_006eef60();
            *(undefined4 *)(param_1 + 0x410) = 0;
            if ((uVar10 & 1) == 0) {
              *(undefined4 *)(param_1 + 0xb64) = 0xd;
              pcVar14 = "Attack2";
              if (*(int *)(param_1 + 0xbc0) != 0) {
                pcVar14 = "HeadlessAttack2";
              }
            }
            else {
              *(undefined4 *)(param_1 + 0xb64) = 8;
              pcVar14 = "Attack1";
              if (*(int *)(param_1 + 0xbc0) != 0) {
                pcVar14 = "HeadlessAttack1";
              }
            }
            goto LAB_004aa517;
          }
        }
        break;
      case 0x41:
        if ((*(int *)(param_1 + 0xb64) == 4) && (*(int *)(param_1 + 0x2c) != 10)) {
          dVar13 = dVar1;
          _libm_sse2_pow_precise();
          if (((int)dVar13 == 0) || (uVar10 = FUN_006eef60(), uVar10 % (uint)(int)dVar13 == 0)) {
            uVar10 = FUN_006eef60();
            if ((uVar10 & 1) == 0) {
              *(undefined4 *)(param_1 + 0xb64) = 8;
              *(undefined4 *)(param_1 + 0x410) = 0;
              pcVar14 = "Attack1";
            }
            else {
              uVar10 = FUN_006eef60();
              local_24 = DAT_00baa454;
              fVar11 = DAT_00baa528;
              if ((*(int *)(param_1 + 0xc64) == 0x12) ||
                 (fVar11 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
                local_24 = fVar11;
              }
              FUN_00956780();
              FUN_0092dc30((uVar10 & 3) + 0x73,0x3f800000,2,0,local_24,0);
              *(undefined4 *)(param_1 + 0xb64) = 6;
              *(undefined4 *)(param_1 + 0x410) = 0;
              pcVar14 = "Attack2";
            }
            goto LAB_004aa517;
          }
        }
        break;
      case 0x42:
        if ((*(int *)(param_1 + 0xb64) == 4) && (*(int *)(param_1 + 0x2c) != 10)) {
          dVar13 = dVar1;
          _libm_sse2_pow_precise();
          if (((int)dVar13 == 0) || (uVar10 = FUN_006eef60(), uVar10 % (uint)(int)dVar13 == 0)) {
            if (*(int *)(param_1 + 0x2c) == 0x1e) {
LAB_004aa7f9:
              *(undefined4 *)(param_1 + 0xb64) = 0xd;
            }
            else {
              uVar10 = FUN_006eef60();
              uVar10 = uVar10 % 3;
              if (uVar10 == 0) goto LAB_004aa7f9;
              if (uVar10 == 1) {
                *(undefined4 *)(param_1 + 0xb64) = 8;
              }
              else if (uVar10 == 2) {
                *(undefined4 *)(param_1 + 0xb64) = 0xe;
              }
            }
            *(undefined4 *)(param_1 + 0x410) = 0;
          }
        }
        break;
      case 0x4a:
        if (*(int *)(param_1 + 0xb64) == 0x10) {
          *(undefined4 *)(param_1 + 0xb64) = 3;
        }
      }
      if (local_14 != 0) {
        if ((local_14 <= local_1c) && (*(char *)(param_1 + 0x151) != '\0')) {
          FUN_00409030();
          FUN_00409030();
        }
        *(float *)(param_1 + 0x33c) = local_c + *(float *)(param_1 + 0x33c);
        *(float *)(param_1 + 0x340) = local_10 + *(float *)(param_1 + 0x340);
      }
      if (local_14 < local_18) {
        HELPER_Entity_NPC_Update_dispatcher();
      }
      local_14 = local_14 + 1;
    } while (local_14 <= uVar9);
    *(undefined4 *)(param_1 + 0xbe4) = 0;
    *(uint *)(param_1 + 0xbe0) =
         ((uVar2 >> 0xf & 0x3ff | uVar8 << 10) << 8 | uVar5 & 0xff) << 7 | uVar2 & 0x7f;
  }
  else if (*(char *)(param_1 + 0x151) != '\0') {
    FUN_00409030();
    FUN_00409030();
    return;
  }
  return;
switchD_004a998d_caseD_4a:
  fVar11 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-iVar3]) / DAT_00baa6fc;
  local_c = local_c * DAT_00baa304 * fVar11;
  local_10 = local_10 * DAT_00baa304 * fVar11;
  goto LAB_004aa3d4;
}

