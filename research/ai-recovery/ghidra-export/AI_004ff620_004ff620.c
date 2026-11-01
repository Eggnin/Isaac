/* Local J460 decompiler output.
 * VA: 0x004ff620
 * Entry: 004ff620
 * Dispatcher: 0x006c2990
 * Types: 824
 * Identities: 824.0.0,824.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00500990; instructions=1062
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=824; identities=824.0.0,824.1.0; dispatcher=0x006c2990;
   end=0x00500990; instructions=1062 */

void __fastcall AI_004ff620(int param_1)

{
  byte bVar1;
  char ***pppcVar2;
  undefined auVar3 [16];
  undefined4 uVar4;
  undefined4 uVar5;
  char cVar6;
  undefined uVar7;
  int iVar8;
  float *pfVar9;
  undefined4 uVar10;
  int iVar11;
  int *piVar12;
  char ****ppppcVar13;
  byte **ppbVar14;
  undefined4 *puVar15;
  uint uVar16;
  char *pcVar17;
  int *piVar18;
  bool bVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  double dVar26;
  undefined auStack_e8 [3];
  char cStack_e5;
  int *local_e4;
  int local_e0;
  int *local_dc;
  int *local_d8;
  int *local_d4;
  int local_d0;
  int *local_cc;
  int *local_c8;
  int local_c4;
  int *local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_b0 [8];
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined auStack_84 [32];
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined local_48 [16];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  char ****ppppcStack_2c;
  char *pcStack_28;
  undefined *puStack_24;
  char *pcStack_20;
  undefined *puStack_1c;
  char *pcStack_18;
  undefined1 *puStack_14;
  char *pcStack_10;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_e8;
  local_e4 = (int *)0x0;
  piVar18 = (int *)0x0;
  local_d8 = *(int **)(DAT_00c71678 + 0x18300);
  local_d4 = (int *)0x0;
  local_c0 = DAT_00baa454;
  FUN_006d8e40();
  iVar8 = *(int *)(param_1 + 0xb64);
  if (iVar8 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    *(undefined4 *)(param_1 + 0x410) = 0;
    iVar8 = FUN_006eef60();
    fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baab30;
    if (DAT_00baab30 < (float)((uint)fVar20 & DAT_00bacb40)) {
      FUN_00499d20();
    }
    if (fVar20 <= DAT_00baaa78) {
      if (fVar20 < DAT_00baae7c) {
        fVar20 = fVar20 + DAT_00baab30;
      }
    }
    else {
      fVar20 = fVar20 - DAT_00baab30;
    }
    *(float *)(param_1 + 0xbb0) = fVar20;
    *(undefined4 *)(param_1 + 0xbb4) = 0;
    *(undefined4 *)(param_1 + 0xbc4) = 0;
    *(undefined4 *)(param_1 + 0xba0) = 0;
    uVar5 = _UNK_00babf2c;
    uVar4 = _UNK_00babf28;
    uVar10 = _UNK_00babf24;
    if (*(int *)(param_1 + 0x2c) == 1) {
      local_90 = 0x3e109091;
      uStack_8c = 0x3df8f8f9;
      local_88 = 0x3de0e0e1;
      if ((undefined4 *)(param_1 + 0x1e4) != local_b0) {
        *(undefined4 *)(param_1 + 0x1e4) = _DAT_00babf20;
        *(undefined4 *)(param_1 + 0x1e8) = uVar10;
        *(undefined4 *)(param_1 + 0x1ec) = uVar4;
        *(undefined4 *)(param_1 + 0x1f0) = uVar5;
        *(undefined8 *)(param_1 + 0x204) = 0x3df8f8f93e109091;
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        *(undefined4 *)(param_1 + 0x20c) = 0x3de0e0e1;
      }
    }
  }
  else if (iVar8 == 4) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    if ((((*(uint *)(param_1 + 0x168) & 0x1000b00) == 0) &&
        (piVar18 = (int *)(param_1 + 0xf1c), *(int *)(param_1 + 0xf1c) == -1)) &&
       (*(int *)(param_1 + 0xf38) == 0)) {
      if (0 < *(int *)(param_1 + 0x410)) goto LAB_004ffbfb;
      iVar8 = ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)) +
              *(int *)(param_1 + 0x410);
      *(int *)(param_1 + 0x410) = iVar8;
      if (-1 < iVar8) {
        local_cc = (int *)FUN_006be840();
        local_e4 = (int *)local_cc[0xcf];
        local_e0 = local_cc[0xd0];
        cVar6 = FUN_007f0df0(param_1 + 0x33c,&local_e4,0,0,0,0,0);
        if ((cVar6 == '\0') || (uVar16 = FUN_006eef60(), uVar16 % 3 != 0)) {
          iVar8 = FUN_006eef60();
          fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baab30;
          FUN_00682740();
        }
        else {
          fVar20 = (float)local_cc[0xd0] - *(float *)(param_1 + 0x340);
          FUN_00499d60();
          fVar20 = fVar20 * DAT_00baa948;
        }
        *(float *)(param_1 + 0xbb4) = fVar20;
        uVar16 = FUN_006eef60();
        iVar8 = uVar16 % 0x28 + 10;
        goto LAB_00500130;
      }
    }
    else {
      *(undefined4 *)(param_1 + 0x410) = 10;
LAB_004ffbfb:
      piVar18 = (int *)(param_1 + 0xf1c);
      local_cc = DAT_00baa454;
      local_dc = piVar18;
      if (*piVar18 == -1) {
        cVar6 = FUN_00417430(0x200,0);
        if (cVar6 == '\0') {
          cVar6 = FUN_00417430(0x100,0);
          if ((cVar6 == '\0') && (*(int *)(param_1 + 0xf38) == 0)) {
            cVar6 = FUN_00417430(0x1000800,0);
            if (cVar6 != '\0') {
              iVar8 = FUN_006be840();
              fVar20 = *(float *)(param_1 + 0x340) - *(float *)(iVar8 + 0x340);
              FUN_00499d60();
              *(float *)(param_1 + 0xbb4) = fVar20 * DAT_00baa948;
            }
          }
          else {
            local_d4 = (int *)FUN_006be840();
            cVar6 = FUN_006ac710(5,*(undefined4 *)(param_1 + 0x20));
            if (cVar6 != '\0') {
              local_bc = *(undefined4 *)(param_1 + 0x33c);
              local_b8 = *(undefined4 *)(param_1 + 0x340);
              local_b4 = *(undefined4 *)(param_1 + 0x360);
              local_c8 = *(int **)(param_1 + 0x364);
              local_e4 = *(int **)(param_1 + 0x36c);
              FUN_007e3260();
              local_d0 = local_d4[0xd0];
              local_d4 = (int *)local_d4[0xcf];
              FUN_007e33c0(&local_d4,0x3f800000,900,1);
              fVar20 = *(float *)(param_1 + 0x364);
              FUN_00499d60();
              *(float *)(param_1 + 0xbb4) = fVar20 * DAT_00baa948;
              *(undefined4 *)(param_1 + 0x33c) = local_bc;
              *(undefined4 *)(param_1 + 0x340) = local_b8;
              *(undefined4 *)(param_1 + 0x360) = local_b4;
              *(int **)(param_1 + 0x364) = local_c8;
              *(int **)(param_1 + 0x36c) = local_e4;
              piVar18 = local_dc;
            }
          }
        }
        else {
          uVar16 = FUN_006eef60();
          if (uVar16 % 5 == 0) {
            iVar8 = FUN_006eef60();
            fVar20 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baab30;
            FUN_00682740();
            *(float *)(param_1 + 0xbb4) = fVar20;
          }
        }
      }
      else {
        pfVar9 = (float *)FUN_006d82d0();
        if (((NAN(*pfVar9) || NAN(DAT_00c7b640)) == (*pfVar9 == DAT_00c7b640)) ||
           ((NAN(pfVar9[1]) || NAN(DAT_00c7b644)) == (pfVar9[1] == DAT_00c7b644))) {
          iVar8 = FUN_006d82d0();
          fVar20 = *(float *)(iVar8 + 4);
          FUN_00499d60();
          *(float *)(param_1 + 0xbb4) = fVar20 * DAT_00baa948;
        }
        pfVar9 = (float *)FUN_006d82d0();
        piVar12 = (int *)(*pfVar9 * *pfVar9 + pfVar9[1] * pfVar9[1]);
        FUN_00435a50();
        local_cc = piVar12;
      }
      *(int *)(param_1 + 0x410) =
           *(int *)(param_1 + 0x410) +
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
      local_e4 = (int *)(*(float *)(param_1 + 0xbb0) * DAT_00baa088);
      piVar12 = local_e4;
      FUN_0041d540();
      local_d4 = piVar12;
      FUN_0041d520();
      *(float *)(param_1 + 0x360) =
           (float)local_d4 * DAT_00baa4b0 * (float)local_cc * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           (float)local_e4 * DAT_00baa4b0 * (float)local_cc * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x364);
      uVar10 = *(undefined4 *)(param_1 + 0xbb0);
      FUN_00682a50();
      *(undefined4 *)(param_1 + 0xbb0) = uVar10;
      if ((*(char *)(param_1 + 400) != '\0') && (uVar16 = FUN_006eef60(), (uVar16 & 3) == 0)) {
        fVar20 = *(float *)(param_1 + 0x1a0);
        fVar20 = (float)local_e4 -
                 (fVar20 + fVar20) *
                 (fVar20 * (float)local_e4 + *(float *)(param_1 + 0x19c) * (float)local_d4);
        FUN_00499d60();
        *(float *)(param_1 + 0xbb4) = fVar20 * DAT_00baa948;
      }
      piVar12 = local_dc;
      if ((*(int *)(param_1 + 0x410) < 1) && (piVar18 = local_dc, *(int *)(param_1 + 0x2c) == 0)) {
        uVar16 = FUN_006eef60();
        iVar8 = -(uVar16 % 0x1e);
        piVar18 = piVar12;
LAB_00500130:
        *(int *)(param_1 + 0x410) = iVar8;
      }
    }
    fVar20 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
             *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
    FUN_00435a50();
    if (fVar20 <= DAT_00baa120) {
      local_d4 = (int *)&DAT_00b1bc54;
    }
    else {
      local_d4 = (int *)&DAT_00b1dce4;
      local_c0 = (int *)(fVar20 * DAT_00baa2d0);
      if ((float)(int *)(fVar20 * DAT_00baa2d0) <= 0.0) {
        local_c0 = (int *)0x0;
      }
      if ((float)DAT_00baa454 <= (float)local_c0) {
        local_c0 = DAT_00baa454;
      }
    }
    if (*(int *)(param_1 + 0xbc4) < 0) {
      *(int *)(param_1 + 0xbc4) =
           ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)) +
           *(int *)(param_1 + 0xbc4);
    }
    else if ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0) {
      local_e4 = (int *)FUN_006be840();
      if (*piVar18 == -1) {
        local_c8 = (int *)local_e4[0xcf];
        local_c4 = local_e4[0xd0];
        cVar6 = FUN_007f0df0(param_1 + 0x33c,&local_c8,0,0,0,0,0);
      }
      else {
        cVar6 = FUN_006d8260();
      }
      if (cVar6 != '\0') {
        local_dc = (int *)((float)local_e4[0xcf] - *(float *)(param_1 + 0x33c));
        local_cc = (int *)((float)local_e4[0xd0] - *(float *)(param_1 + 0x340));
        local_e4 = (int *)(*(float *)(param_1 + 0xbb0) * DAT_00baa088);
        piVar12 = local_e4;
        FUN_0041d540();
        local_d8 = piVar12;
        piVar12 = local_e4;
        FUN_0041d520();
        if (*piVar18 != -1) {
          local_dc = local_d8;
          local_cc = piVar12;
        }
        if ((DAT_00baa354 < (float)piVar12 * (float)local_cc + (float)local_d8 * (float)local_dc) &&
           ((*piVar18 != -1 || (uVar16 = FUN_006eef60(), uVar16 % 0xe == 0)))) {
          piVar18 = local_cc;
          FUN_00499d60();
          fVar20 = (float)piVar18 * DAT_00baa948;
          *(float *)(param_1 + 0xbb0) = fVar20;
          *(float *)(param_1 + 0xbb4) = fVar20;
          *(undefined4 *)(param_1 + 0xb64) = 8;
          FUN_006d6ba0(0x12d,0x3f800000,0x1e,0,0x3f800000);
          uVar10 = 0x3c;
          *(float *)(param_1 + 0x360) = DAT_00c7b640;
          *(float *)(param_1 + 0x364) = DAT_00c7b644;
          if (*(int *)(param_1 + 0x2c) == 1) {
            uVar10 = 0x50;
          }
          *(undefined4 *)(param_1 + 0xbc4) = uVar10;
        }
      }
    }
    uVar16 = FUN_006eef60();
    piVar18 = local_d4;
    if (uVar16 % 6 == 0) {
      FUN_006eef60();
      piVar12 = (int *)FUN_006b64d0();
      piVar18 = local_d4;
      if (*(int *)(param_1 + 0x2c) == 1) {
        local_58 = _DAT_00babf20;
        uStack_54 = _UNK_00babf24;
        uStack_50 = _UNK_00babf28;
        uStack_4c = _UNK_00babf2c;
        local_48 = ZEXT816(0);
        local_38 = 0x3e109091;
        local_34 = 0x3df8f8f9;
        local_30 = 0x3de0e0e1;
        (**(code **)(*piVar12 + 0x3c))(&local_58,0xffffffff,0xff,0);
        piVar18 = local_d4;
      }
    }
  }
  else if (iVar8 == 8) {
    local_d4 = (int *)&DAT_00b1dd28;
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa428;
    local_d8 = (int *)(*(float *)(param_1 + 0xbb0) * DAT_00baa088);
    local_dc = local_d8;
    FUN_0041d540();
    FUN_0041d520();
    fVar20 = *(float *)(param_1 + 0x39c);
    if (*(int *)(param_1 + 0x2c) == 1) {
      *(float *)(param_1 + 0x360) = (float)local_dc * fVar20 + *(float *)(param_1 + 0x360);
      piVar18 = local_d8;
    }
    else {
      *(float *)(param_1 + 0x360) =
           (float)local_dc * DAT_00baa3e0 * fVar20 + *(float *)(param_1 + 0x360);
      piVar18 = (int *)((float)local_d8 * DAT_00baa3e0);
    }
    *(float *)(param_1 + 0x364) = (float)piVar18 * fVar20 + *(float *)(param_1 + 0x364);
    iVar8 = FUN_006be840();
    fVar20 = *(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340);
    FUN_00499d60();
    *(float *)(param_1 + 0xbb4) = fVar20 * DAT_00baa948;
    if (*(int *)(param_1 + 0xf1c) != -1) {
      pfVar9 = (float *)FUN_006d82d0();
      if (((NAN(*pfVar9) || NAN(DAT_00c7b640)) == (*pfVar9 == DAT_00c7b640)) ||
         ((NAN(pfVar9[1]) || NAN(DAT_00c7b644)) == (pfVar9[1] == DAT_00c7b644))) {
        iVar8 = FUN_006d82d0();
        fVar20 = *(float *)(iVar8 + 4);
        FUN_00499d60();
        *(float *)(param_1 + 0xbb4) = fVar20 * DAT_00baa948;
      }
      FUN_006d82d0();
      FUN_00435a50();
    }
    uVar10 = *(undefined4 *)(param_1 + 0xbb0);
    FUN_00682a50();
    *(undefined4 *)(param_1 + 0xbb0) = uVar10;
    if (*(char *)(param_1 + 400) != '\0') {
      fVar20 = *(float *)(param_1 + 0x1a0);
      fVar23 = *(float *)(param_1 + 0x19c) * (float)local_dc + (float)local_d8 * fVar20;
      if (DAT_00baa280 <= fVar23) {
        if ((*(int *)(param_1 + 0x2c) != 1) && (10 < *(int *)(param_1 + 0xbc4))) {
          *(undefined4 *)(param_1 + 0xbc4) = 10;
        }
        FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
        fVar20 = *(float *)(param_1 + 0x198);
        fVar23 = *(float *)(param_1 + 0x194);
        fVar22 = fVar20 * *(float *)(param_1 + 0x1a0);
        fVar25 = *(float *)(param_1 + 0x1a0) * DAT_00baa500;
        fVar21 = fVar23 * *(float *)(param_1 + 0x19c);
        fVar24 = *(float *)(param_1 + 0x19c) * DAT_00baa500;
      }
      else {
        fVar20 = (float)local_d8 - (fVar20 + fVar20) * fVar23;
        FUN_00499d60();
        *(float *)(param_1 + 0xbb0) = fVar20 * DAT_00baa948;
        FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
        fVar20 = *(float *)(param_1 + 0x198);
        fVar23 = *(float *)(param_1 + 0x194);
        fVar22 = fVar20 * *(float *)(param_1 + 0x1a0);
        fVar25 = *(float *)(param_1 + 0x1a0) * DAT_00baa5b4;
        fVar21 = fVar23 * *(float *)(param_1 + 0x19c);
        fVar24 = *(float *)(param_1 + 0x19c) * DAT_00baa5b4;
      }
      *(float *)(param_1 + 0x364) = fVar20 - fVar25 * (fVar22 + fVar21);
      *(float *)(param_1 + 0x360) = fVar23 - fVar24 * (fVar22 + fVar21);
    }
    *(int *)(param_1 + 0xbc4) =
         *(int *)(param_1 + 0xbc4) +
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
    if ((*(int *)(param_1 + 0xbc4) < 1) || (cVar6 = FUN_00417430(0x1000a00,0), cVar6 != '\0')) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar16 = FUN_006eef60();
        uVar16 = uVar16 % 0x1e;
      }
      else {
        uVar16 = 0;
      }
      *(uint *)(param_1 + 0xbc4) = -0x1e - uVar16;
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
    piVar18 = (int *)&DAT_00b1dd28;
    if (((*(int *)(param_1 + 0x2c) == 1) &&
        (cVar6 = FUN_006ac710(4,*(undefined4 *)(param_1 + 0x20)), cVar6 != '\0')) &&
       (uVar16 = FUN_006eef60(), (uVar16 & 3) == 0)) {
      uVar10 = FUN_006eef60();
      iVar8 = FUN_006fe410(0x21,10,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar10,0);
      iVar11 = FUN_006eef60();
      *(float *)(iVar8 + 0x380) =
           ((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
            DAT_00baa198 + DAT_00baa280) * *(float *)(iVar8 + 0x380);
      *(undefined4 *)(iVar8 + 0x334) = *(undefined4 *)(iVar8 + 0x33c);
      *(undefined4 *)(iVar8 + 0x338) = *(undefined4 *)(iVar8 + 0x340);
      piVar18 = local_d4;
    }
    uVar16 = FUN_006eef60();
    if (uVar16 % 3 == 0) {
      FUN_006eef60();
      piVar12 = (int *)FUN_006b64d0();
      if (*(int *)(param_1 + 0x2c) == 1) {
        local_58 = _DAT_00babf20;
        uStack_54 = _UNK_00babf24;
        uStack_50 = _UNK_00babf28;
        uStack_4c = _UNK_00babf2c;
        local_48 = ZEXT816(0);
        local_38 = 0x3e109091;
        local_34 = 0x3df8f8f9;
        local_30 = 0x3de0e0e1;
        (**(code **)(*piVar12 + 0x3c))(&local_58,0xffffffff,0xff,0);
      }
    }
  }
  if ((0.0 < *(float *)(param_1 + 0x14)) && (*(int *)(param_1 + 0xba0) < 1)) {
    uVar10 = 10;
    if (*(int *)(param_1 + 0xf1c) != -1) {
      uVar10 = 5;
    }
    *(undefined4 *)(param_1 + 0xba0) = uVar10;
  }
  iVar8 = *(int *)(param_1 + 0xba0);
  if (0 < iVar8) {
    if (7 < iVar8) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    }
    *(int *)(param_1 + 0xba0) =
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) + iVar8;
  }
  if (piVar18 == (int *)0x0) goto LAB_005008bc;
  pcVar17 = (char *)((int)piVar18 + 1);
  do {
    cVar6 = *(char *)piVar18;
    piVar18 = (int *)((int)piVar18 + 1);
  } while (cVar6 != '\0');
  if (*(int *)(param_1 + 0x7c) == 0) {
    ppppcStack_2c = (char ****)0x0;
    pcStack_18 = (char *)0xf;
    puStack_1c = (undefined *)0x0;
  }
  else {
    FUN_0040cf50();
  }
  ppppcVar13 = (char ****)&ppppcStack_2c;
  if ((char *)0xf < pcStack_18) {
    ppppcVar13 = ppppcStack_2c;
  }
  iVar8 = strncmp((char *)ppppcVar13,(char *)local_d4,(int)piVar18 - (int)pcVar17);
  cStack_e5 = iVar8 == 0;
  if ((char *)0xf < pcStack_18) {
    pcVar17 = pcStack_18 + 1;
    ppppcVar13 = ppppcStack_2c;
    if ((char *)0xfff < pcVar17) {
      ppppcVar13 = (char ****)ppppcStack_2c[-1];
      pcVar17 = pcStack_18 + 0x24;
      if ((char *)0x1f < (char *)((int)ppppcStack_2c + (-4 - (int)ppppcVar13))) {
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(ppppcVar13,pcVar17);
  }
  if ((cStack_e5 == '\0') || (*(int *)(param_1 + 0x7c) == 0)) {
    iVar8 = -1;
  }
  else {
    dVar26 = floor((double)*(float *)(param_1 + 0x88));
    iVar8 = (int)dVar26;
  }
  local_e4 = (int *)(*(float *)(param_1 + 0xbb0) / DAT_00baa910 + DAT_00baa2d0);
  dVar26 = floor((double)(float)local_e4);
  local_e4 = (int *)(float)dVar26;
  uVar16 = (int)dVar26 + 8U & 0x80000007;
  if ((int)uVar16 < 0) {
    uVar16 = (uVar16 - 1 | 0xfffffff8) + 1;
  }
  ppppcStack_2c = (char ****)&DAT_00b1cdf0;
  pcStack_28 = "LeftDown";
  puStack_24 = &DAT_00b1cddc;
  pcStack_20 = "LeftDown";
  puStack_1c = &DAT_00b1cdf0;
  pcStack_18 = "LeftUp";
  puStack_14 = &DAT_00b1cde4;
  pcStack_10 = "LeftUp";
  pppcVar2 = (char ***)(&ppppcStack_2c)[uVar16];
  *(uint *)(param_1 + 0xbc0) = uVar16;
  FUN_00420a80(&local_58,&DAT_00b60c28,local_d4,pppcVar2);
  if ((*(float *)(param_1 + 0xbb0) < DAT_00baae50) || (DAT_00baa9b4 < *(float *)(param_1 + 0xbb0)))
  {
    uVar7 = 0;
  }
  else {
    uVar7 = 1;
  }
  *(undefined *)(param_1 + 0x148) = uVar7;
  bVar19 = false;
  if (*(int *)(param_1 + 0x7c) == 0) {
LAB_005007f3:
    cStack_e5 = '\x01';
    if (bVar19) goto LAB_005007fc;
LAB_00500841:
    FUN_0040a380(&local_58,0);
    if ((-1 < iVar8) && (*(int *)(param_1 + 0x7c) != 0)) {
      FUN_00408e00();
    }
  }
  else {
    ppbVar14 = (byte **)FUN_00452bf0();
    local_e4 = (int *)0x3;
    if (&DAT_0000000f < ppbVar14[5]) {
      ppbVar14 = (byte **)*ppbVar14;
    }
    puVar15 = &local_58;
    do {
      bVar1 = *(byte *)ppbVar14;
      bVar19 = bVar1 < *(byte *)puVar15;
      if (bVar1 != *(byte *)puVar15) {
LAB_005007e0:
        uVar16 = -(uint)bVar19 | 1;
        goto LAB_005007e5;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar14 + 1);
      bVar19 = bVar1 < *(byte *)((int)puVar15 + 1);
      if (bVar1 != *(byte *)((int)puVar15 + 1)) goto LAB_005007e0;
      ppbVar14 = (byte **)((int)ppbVar14 + 2);
      puVar15 = (undefined4 *)((int)puVar15 + 2);
    } while (bVar1 != 0);
    uVar16 = 0;
LAB_005007e5:
    if (uVar16 != 0) {
      bVar19 = true;
      goto LAB_005007f3;
    }
    cStack_e5 = '\0';
LAB_005007fc:
    if ((char *)0xf < pcStack_18) {
      pcVar17 = pcStack_18 + 1;
      ppppcVar13 = ppppcStack_2c;
      if ((char *)0xfff < pcVar17) {
        ppppcVar13 = (char ****)ppppcStack_2c[-1];
        pcVar17 = pcStack_18 + 0x24;
        if ((char *)0x1f < (char *)((int)ppppcStack_2c + (-4 - (int)ppppcVar13))) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(ppppcVar13,pcVar17);
    }
    if (cStack_e5 != '\0') goto LAB_00500841;
  }
  *(int **)(param_1 + 0x14c) = local_c0;
  local_e4 = (int *)(*(float *)(param_1 + 0xbb0) * DAT_00baa088);
  piVar18 = local_e4;
  FUN_0041d540();
  local_c8 = piVar18;
  piVar18 = local_e4;
  FUN_0041d520();
  *(int **)(param_1 + 0xf30) = local_c8;
  *(int **)(param_1 + 0xf34) = piVar18;
LAB_005008bc:
  pfVar9 = *(float **)(param_1 + 8);
  if (pfVar9 != *(float **)(param_1 + 0xc)) {
    do {
      if (((uint)pfVar9[2] & 2) != 0) {
        *(float *)(param_1 + 0x14) = *(float *)(param_1 + 0x14) - *pfVar9;
        *pfVar9 = 0.0;
        cVar6 = FUN_00417220(0x338,0,0xffffffff);
        if (cVar6 != '\0') {
          FUN_006c0f30(0x338,1,0,0xffffffff);
          auVar3._4_4_ = _UNK_00babf24;
          auVar3._0_4_ = _DAT_00babf20;
          auVar3._8_4_ = _UNK_00babf28;
          auVar3._12_4_ = _UNK_00babf2c;
          uStack_64 = 0x3e109091;
          uStack_60 = 0x3df8f8f9;
          uStack_5c = 0x3de0e0e1;
          if ((undefined (*) [16])(param_1 + 0x1e4) != (undefined (*) [16])auStack_84) {
            *(undefined (*) [16])(param_1 + 0x1e4) = auVar3;
            *(undefined8 *)(param_1 + 0x204) = 0x3df8f8f93e109091;
            *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
            *(undefined4 *)(param_1 + 0x20c) = 0x3de0e0e1;
          }
        }
      }
      pfVar9 = pfVar9 + 0xe;
    } while (pfVar9 != *(float **)(param_1 + 0xc));
  }
  FUN_00aef12b();
  return;
}

