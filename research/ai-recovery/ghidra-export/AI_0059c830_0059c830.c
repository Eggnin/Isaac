/* Local J460 decompiler output.
 * VA: 0x0059c830
 * Entry: 0059c830
 * Dispatcher: 0x006c2990
 * Types: 918
 * Identities: 918.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0059e250; instructions=1529
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=918; identities=918.0.0; dispatcher=0x006c2990;
   end=0x0059e250; instructions=1529 */

void __fastcall AI_0059c830(int **param_1)

{
  int **ppiVar1;
  int *piVar2;
  double dVar3;
  byte bVar4;
  int iVar5;
  int **ppiVar6;
  undefined *puVar7;
  char cVar8;
  uint uVar9;
  uint uVar10;
  undefined4 uVar11;
  byte **ppbVar12;
  float *pfVar13;
  byte **ppbVar14;
  int *piVar15;
  int **ppiVar16;
  int iVar17;
  int iVar18;
  uint *puVar19;
  int **ppiVar20;
  bool bVar21;
  float fVar22;
  float fVar23;
  undefined auVar24 [16];
  float fVar25;
  int *piVar26;
  int **ppiVar27;
  float fVar28;
  float fVar29;
  char *pcVar30;
  uint local_74;
  float local_70;
  int **local_60;
  int *local_5c;
  int **local_58;
  int **local_54;
  int *local_4c;
  int *local_48;
  int *local_44;
  int *local_40;
  int *local_3c;
  int *local_38;
  int *local_34;
  int *local_30;
  uint local_2c;
  int **local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  ppiVar20 = DAT_00baa2d0;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af577d;
  local_1c = ExceptionList;
  uVar9 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar9;
  if (param_1[0x2dd] == (int *)0x1) {
    ppiVar27 = (int **)((float)param_1[0xe0] - (float)param_1[5]);
    ppiVar20 = param_1;
    do {
      ppiVar1 = ppiVar20 + 0xe0;
      ppiVar16 = ppiVar20 + 5;
      ppiVar20 = (int **)ppiVar20[0xf0];
      ppiVar6 = (int **)((float)*ppiVar1 - (float)*ppiVar16);
      if ((float)ppiVar27 <= (float)(int **)((float)*ppiVar1 - (float)*ppiVar16)) {
        ppiVar6 = ppiVar27;
      }
      ppiVar27 = ppiVar6;
      ppiVar16 = param_1;
      local_54 = ppiVar27;
      puStack_20 = &stack0xfffffffc;
    } while (ppiVar20 != (int **)0x0);
    do {
      if ((float)ppiVar27 < (float)ppiVar16[0xe0] - (float)ppiVar16[5]) {
        local_3c = param_1[0xcf];
        local_38 = param_1[0xd0];
        local_4c = param_1[10];
        local_48 = param_1[0xb];
        local_44 = param_1[0xd];
        local_40 = param_1[0xe];
        local_34 = param_1[0xd8];
        local_30 = param_1[0xd9];
        local_74 = (uint)(((uint)param_1[0x5a] & 0x100) != 0);
        if (((uint)param_1[0x5a] & 0x20000000) == 0) {
          uVar9 = 0;
        }
        else {
          uVar9 = 2;
        }
        if (((uint)param_1[0x5b] & 0x400000) == 0) {
          uVar10 = 0;
        }
        else {
          uVar10 = 4;
        }
        local_2c = uVar10 | uVar9 | local_74;
        local_28 = param_1;
        (*(code *)(*ppiVar16)[8])
                  (((float)ppiVar16[0xe0] - (float)ppiVar16[5]) - (float)ppiVar27,0x2000,0,&local_4c
                   ,0x1e);
        ppiVar27 = local_54;
      }
      ppiVar20 = ppiVar16 + 0xf0;
      ppiVar16 = (int **)*ppiVar20;
    } while ((int **)*ppiVar20 != (int **)0x0);
    goto LAB_0059e201;
  }
  if (param_1[0x2d9] == (int *)0x0) {
switchD_0059ca05_caseD_0:
    puStack_20 = &stack0xfffffffc;
    AI_0041af60(&local_34,param_1[10],param_1[0xb],0xffffffff,0,0);
    local_14 = 0;
    piVar15 = local_30;
    ppiVar20 = local_28;
joined_r0x0059dfc7:
    ppiVar20 = (int **)((int)ppiVar20 + -1);
    if (-1 < (int)ppiVar20) {
      ppiVar27 = (int **)piVar15[(int)ppiVar20];
      if (((ppiVar27 != param_1) && ((int **)ppiVar27[0xef] != param_1)) &&
         (ppiVar27[0xf0] == (int *)0x0)) {
        fVar23 = ((float)param_1[0xd0] - (float)ppiVar27[0xd0]) *
                 ((float)param_1[0xd0] - (float)ppiVar27[0xd0]) +
                 ((float)param_1[0xcf] - (float)ppiVar27[0xcf]) *
                 ((float)param_1[0xcf] - (float)ppiVar27[0xcf]);
        FUN_00435a50();
        ppiVar16 = ppiVar27;
        piVar15 = local_30;
        if (fVar23 < DAT_00baa908) {
          do {
            if (ppiVar16 == param_1) goto joined_r0x0059dfc7;
            ppiVar16 = (int **)ppiVar16[0xef];
          } while ((ppiVar16 != (int **)0x0) && (ppiVar16 != ppiVar27));
          if (param_1[0xef] != (int *)0x0) {
            local_58 = param_1 + 0xef;
            FUN_004cf210(&local_58);
          }
          param_1[0xef] = (int *)ppiVar27;
          FUN_004cdcf0(param_1 + 0xef);
          piVar15 = local_30;
        }
      }
      goto joined_r0x0059dfc7;
    }
    piVar15 = param_1[0xef];
    if (piVar15 != (int *)0x0) {
      ppiVar20 = (int **)(piVar15 + 0xf0);
      if (piVar15[0xf0] != 0) {
        local_58 = ppiVar20;
        FUN_004cf210(&local_58);
      }
      *ppiVar20 = (int *)param_1;
      FUN_004cdcf0(ppiVar20);
    }
    local_14 = 0xffffffff;
    if ((char)local_34 == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar19 = &DAT_00c7f618;
      }
      else {
        puVar19 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_30 != (int *)0x0) {
        uVar10 = local_30[-1];
        uVar9 = *puVar19;
        *puVar19 = *puVar19 - uVar10;
        puVar19[1] = puVar19[1] - (uint)(uVar9 < uVar10);
        free(local_30 + -1);
      }
    }
    local_14 = 0xffffffff;
    iVar18 = FUN_006eef60();
    param_1[0x2ec] =
         (int *)((float)((double)iVar18 + (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) * DAT_00ba9ff4
                * DAT_00baab30);
    FUN_0040a940("HeadWalkOverlay",0);
    param_1[0x2d9] = (int *)&DAT_00000004;
    uVar11 = FUN_00456240(0,0,0,0xff,0x41,0x29,0x23);
    FUN_004071f0(uVar11);
    piVar15 = (int *)((float)param_1[0xe1] * DAT_00baa3e0);
    param_1[0x3c6] = (int *)0x1;
    param_1[0x2ef] = piVar15;
    if ((param_1[0xef] == (int *)0x0) || (FUN_00499190(param_1 + 0xcf), param_1[0xef] == (int *)0x0)
       ) {
      piVar15 = param_1[8];
      do {
        param_1[799] = piVar15;
        param_1 = (int **)param_1[0xf0];
      } while (param_1 != (int **)0x0);
    }
    for (iVar18 = FUN_006a8990(); iVar18 != 0; iVar18 = *(int *)(iVar18 + 0x3c0)) {
      FUN_0059c5d0();
    }
    goto LAB_0059e201;
  }
  if ((param_1[0xef] == (int *)0x0) && (param_1[0xf0] == (int *)0x0)) {
    puStack_20 = &stack0xfffffffc;
    uVar11 = FUN_00435c70();
    (*(code *)(*param_1)[9])(uVar11);
    goto LAB_0059e201;
  }
  puVar7 = &stack0xfffffffc;
  local_60 = param_1;
  switch(param_1[0x2d9]) {
  case (int *)0x0:
    goto switchD_0059ca05_caseD_0;
  case (int *)0x4:
    if (param_1[0xef] == (int *)0x0) {
      puStack_20 = &stack0xfffffffc;
      if (*(char *)(param_1 + 100) != '\0') {
        piVar15 = param_1[0xd9];
        puStack_20 = &stack0xfffffffc;
        FUN_00499d60();
        param_1[0x2ec] = (int *)((float)piVar15 * DAT_00baa948);
      }
      FUN_006bec40(&local_5c,0);
      fVar25 = DAT_00baaa00;
      fVar23 = DAT_00baa454;
      if (DAT_00baaa00 <= (float)param_1[0x2ee]) {
        fVar28 = ((float)param_1[0x2ee] - DAT_00baaa00) / DAT_00baa9a0;
        if (fVar28 <= DAT_00ba9fe4) {
          fVar28 = DAT_00ba9fe4;
        }
        if (DAT_00baa454 <= fVar28) {
          fVar28 = DAT_00baa454;
        }
        fVar28 = DAT_00baa454 - fVar28;
        param_1[0xcd] =
             (int *)(((float)local_5c - (float)param_1[0xcd]) * fVar28 + (float)param_1[0xcd]);
        ppiVar20 = (int **)(((float)local_58 - (float)param_1[0xce]) * fVar28 + (float)param_1[0xce]
                           );
      }
      else {
        param_1[0xcd] = local_5c;
        ppiVar20 = local_58;
      }
      param_1[0xce] = (int *)ppiVar20;
      piVar15 = param_1[0x2ee];
      fVar28 = ((float)piVar15 - fVar25) / DAT_00baaa44;
      if (fVar28 <= DAT_00ba9fe4) {
        fVar28 = DAT_00ba9fe4;
      }
      if (fVar23 <= fVar28) {
        fVar28 = fVar23;
      }
      fVar25 = fVar28 * DAT_00baa904 + fVar25;
      fVar23 = (float)param_1[0xd0] - (float)param_1[0xce];
      FUN_00499d60();
      local_54 = (int **)(fVar23 * DAT_00baa948 - fVar25);
      local_28 = (int **)(fVar23 * DAT_00baa948 + fVar25);
      FUN_006827a0();
      FUN_006827a0();
      piVar2 = param_1[0xe7];
      piVar26 = param_1[0x2ec];
      FUN_00682a50();
      param_1[0x2ed] = (int *)0x3f99999a;
      local_54 = (int **)((float)param_1[0xdb] * DAT_00baa3c4);
      param_1[0x2ec] = piVar26;
      fVar25 = (float)piVar26 * DAT_00baa088;
      param_1[0xdb] = (int *)local_54;
      fVar23 = fVar25;
      FUN_0041d540();
      local_28 = (int **)(fVar23 * DAT_00baa4b0);
      FUN_0041d520();
      fVar25 = fVar25 * DAT_00baa4b0;
      if ((NAN((float)local_54) || NAN(DAT_00ba9fe4)) == ((float)local_54 == DAT_00ba9fe4)) {
        param_1[0xd8] =
             (int *)(((float)local_28 * (float)piVar2) / (float)local_54 + (float)param_1[0xd8]);
        param_1[0xd9] = (int *)((fVar25 * (float)piVar2) / (float)local_54 + (float)param_1[0xd9]);
        piVar15 = param_1[0x2ee];
      }
      if (((((float)param_1[0xce] - (float)param_1[0xd0]) *
            ((float)param_1[0xce] - (float)param_1[0xd0]) +
            ((float)param_1[0xcd] - (float)param_1[0xcf]) *
            ((float)param_1[0xcd] - (float)param_1[0xcf]) < DAT_00baabb8) &&
          (DAT_00baaaf4 < (float)piVar15)) && (uVar9 = FUN_006eef60(), uVar9 % 5 == 0)) {
        param_1[0x2d9] = (int *)&DAT_00000008;
        FUN_0040a940("HeadChargeOverlay",0);
        param_1[0xf0][0x2f0] = 2;
      }
      iVar18 = FUN_006eef60();
      param_1[0x2ee] =
           (int *)(((float)((double)iVar18 + (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) *
                    DAT_00ba9ff4 + DAT_00baa454) * (float)param_1[0xe7] + (float)param_1[0x2ee]);
    }
    else {
      piVar15 = (int *)((float)param_1[0xdb] * DAT_00baa3c4);
      param_1[0x2ed] = (int *)0x3f800000;
      param_1[0xdb] = piVar15;
      puStack_20 = &stack0xfffffffc;
      if ((0 < (int)param_1[0x2f0]) &&
         (piVar15 = (int *)(((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) +
                           (int)param_1[0x2f0]), param_1[0x2f0] = piVar15,
         puStack_20 = &stack0xfffffffc, (int)piVar15 < 0)) {
        puStack_20 = &stack0xfffffffc;
        FUN_0040a940("HeadChargeOverlay",0);
        if (param_1[0xf0] != (int *)0x0) {
          param_1[0xf0][0x2f0] = 2;
        }
      }
    }
    goto LAB_0059cf9b;
  case (int *)0x6:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa444);
    param_1[0x2ee] = (int *)((float)param_1[0xe7] + (float)param_1[0x2ee]);
    puStack_20 = &stack0xfffffffc;
    if (*(char *)(param_1 + 100) != '\0') {
      piVar15 = param_1[0xd8];
      piVar2 = param_1[0x65];
      local_54 = (int **)((float)param_1[0xd9] - (float)param_1[0x66]);
      puStack_20 = &stack0xfffffffc;
      iVar18 = FUN_006a8990(uVar9);
      ppiVar20 = DAT_00baa2d0;
      for (; DAT_00baa2d0 = ppiVar20, iVar18 != 0; iVar18 = *(int *)(iVar18 + 0x3c0)) {
        if (*(char *)(iVar18 + 400) == '\0') {
          *(undefined *)(iVar18 + 400) = *(undefined *)(param_1 + 100);
          *(int **)(iVar18 + 0x194) = param_1[0x65];
          *(int **)(iVar18 + 0x198) = param_1[0x66];
          *(int **)(iVar18 + 0x19c) = param_1[0x67];
          *(int **)(iVar18 + 0x1a0) = param_1[0x68];
          *(float *)(iVar18 + 0x364) =
               *(float *)(iVar18 + 0x39c) * (float)local_54 + *(float *)(iVar18 + 0x364);
          *(float *)(iVar18 + 0x360) =
               *(float *)(iVar18 + 0x39c) * ((float)piVar15 - (float)piVar2) +
               *(float *)(iVar18 + 0x360);
        }
        ppiVar20 = DAT_00baa2d0;
      }
    }
    piVar15 = param_1[0xef];
    piVar2 = param_1[0xf0];
    if (piVar15 == (int *)0x0) {
      if (piVar2 != (int *)0x0) {
        fVar23 = (float)param_1[0xd0] - (float)piVar2[0xd0];
        FUN_00499d60();
        param_1[0x2ec] = (int *)(fVar23 * DAT_00baa948);
        fVar23 = (float)piVar2[0xe3] + (float)piVar2[0xe5];
        local_54 = (int **)((float)piVar2[0xe4] + (float)piVar2[0xe6]);
LAB_0059d1f5:
        local_5c = (int *)(((float)param_1[0xe3] + (float)param_1[0xe5]) - fVar23);
        local_58 = (int **)(((float)param_1[0xe4] + (float)param_1[0xe6]) - (float)local_54);
        pfVar13 = (float *)FUN_00a10100(&local_2c,0x41c00000);
        piVar26 = (int *)((((fVar23 + *pfVar13) - (float)param_1[0xcf]) - (float)param_1[0xd8]) *
                          (float)DAT_00baa2d0 + (float)param_1[0xd8]);
        param_1[0xd9] =
             (int *)(((((float)local_54 + pfVar13[1]) - (float)param_1[0xd0]) - (float)param_1[0xd9]
                     ) * (float)DAT_00baa2d0 + (float)param_1[0xd9]);
        goto LAB_0059d2a0;
      }
    }
    else {
      if (piVar2 == (int *)0x0) {
        fVar23 = (float)piVar15[0xe3] + (float)piVar15[0xe5];
        local_54 = (int **)((float)piVar15[0xe4] + (float)piVar15[0xe6]);
        goto LAB_0059d1f5;
      }
      piVar26 = (int *)(((((float)piVar15[0xe3] + (float)piVar15[0xe5] + (float)piVar2[0xe3] +
                          (float)piVar2[0xe5]) * (float)ppiVar20 - (float)param_1[0xcf]) -
                        (float)param_1[0xd8]) * (float)ppiVar20 + (float)param_1[0xd8]);
      param_1[0xd9] =
           (int *)(((((float)piVar15[0xe4] + (float)piVar15[0xe6] + (float)piVar2[0xe4] +
                     (float)piVar2[0xe6]) * (float)ppiVar20 - (float)param_1[0xd0]) -
                   (float)param_1[0xd9]) * (float)ppiVar20 + (float)param_1[0xd9]);
LAB_0059d2a0:
      param_1[0xd8] = piVar26;
    }
    iVar17 = 0;
    iVar18 = FUN_006a8990(uVar9);
    fVar23 = 0.0;
    fVar25 = fVar23;
    for (; iVar18 != 0; iVar18 = *(int *)(iVar18 + 0x3c0)) {
      fVar23 = fVar23 + *(float *)(iVar18 + 0x38c);
      fVar25 = fVar25 + *(float *)(iVar18 + 0x390);
      iVar17 = iVar17 + 1;
    }
    fVar29 = 0.0;
    fVar28 = 0.0;
    fVar23 = fVar23 / (float)iVar17;
    fVar25 = fVar25 / (float)iVar17;
    local_70 = 0.0;
    ppiVar27 = (int **)param_1[0xef];
    ppiVar20 = param_1;
    while (ppiVar16 = ppiVar27, ppiVar16 != (int **)0x0) {
      ppiVar20 = ppiVar16;
      ppiVar27 = (int **)ppiVar16[0xef];
    }
    do {
      fVar28 = fVar28 + (float)ppiVar20[0xe5];
      fVar29 = fVar29 + (float)ppiVar20[0xe6];
      local_28 = (int **)((float)ppiVar20[0xe3] - fVar23);
      local_54 = (int **)((float)ppiVar20[0xe4] - fVar25);
      local_58 = (int **)((float)local_28 * (float)local_28 + (float)local_54 * (float)local_54);
      ppiVar27 = local_58;
      FUN_00435a50();
      if (DAT_00baa454 <= (float)ppiVar27) {
        ppiVar27 = local_58;
        FUN_00435a50();
        if (DAT_00ba9fe4 < (float)ppiVar27) {
          local_28 = (int **)((DAT_00baa454 / (float)ppiVar27) * (float)local_28);
          local_54 = (int **)((float)local_54 * (DAT_00baa454 / (float)ppiVar27));
        }
        ppiVar27 = DAT_00baa54c;
        FUN_0041d540();
        local_58 = ppiVar27;
        ppiVar27 = DAT_00baa54c;
        FUN_0041d520();
        local_70 = ((float)local_54 * (float)local_58 + (float)ppiVar27 * (float)local_28) *
                   (float)ppiVar20[0xe6] +
                   ((float)local_58 * (float)local_28 - (float)ppiVar27 * (float)local_54) *
                   (float)ppiVar20[0xe5] + local_70;
      }
      ppiVar20 = (int **)ppiVar20[0xf0];
    } while (ppiVar20 != (int **)0x0);
    fVar22 = (float)iVar17;
    local_70 = local_70 / fVar22;
    fVar28 = fVar28 / fVar22;
    fVar29 = fVar29 / fVar22;
    fVar22 = ((float)param_1[0x2ee] - DAT_00baa950) / DAT_00baa9b4;
    if (fVar22 <= DAT_00ba9fe4) {
      fVar22 = DAT_00ba9fe4;
    }
    if (DAT_00baa454 <= fVar22) {
      fVar22 = DAT_00baa454;
    }
    local_28 = (int **)(DAT_00baa454 - fVar22);
    local_54 = (int **)((float)local_28 * DAT_00baa81c);
    if (iVar17 < 4) {
      local_54 = (int **)((float)local_54 * _DAT_00baa4f0);
    }
    local_58 = (int **)(fVar29 * fVar29 + fVar28 * fVar28);
    ppiVar27 = local_58;
    FUN_00435a50();
    ppiVar20 = DAT_00baa2d0;
    if (((float)DAT_00baa2d0 < (float)local_54) && ((float)ppiVar27 < (float)local_54)) {
      ppiVar16 = local_58;
      FUN_00435a50();
      ppiVar20 = DAT_00baa2d0;
      if (0.0 < (float)ppiVar16) {
        fVar22 = (((float)local_54 - (float)ppiVar27) * DAT_00baa198) / (float)ppiVar16;
        fVar28 = fVar28 * fVar22;
        fVar29 = fVar22 * fVar29;
      }
      param_1[0xd8] = (int *)((float)param_1[0xe7] * fVar28 + (float)param_1[0xd8]);
      param_1[0xd9] = (int *)((float)param_1[0xe7] * fVar29 + (float)param_1[0xd9]);
    }
    fVar28 = (float)local_28 * (float)local_28 * DAT_00baa7a4;
    if (((float)ppiVar20 < fVar28) && ((float)((uint)local_70 & DAT_00bacb40) < fVar28)) {
      local_58 = (int **)((float)param_1[0xe3] - fVar23);
      fVar25 = (float)param_1[0xe4] - fVar25;
      if (local_70 <= 0.0) {
        fVar28 = (float)((uint)fVar28 ^ DAT_00bacb70);
      }
      local_28 = (int **)(fVar28 - local_70);
      if ((float)(int **)(fVar28 - local_70) <= (float)DAT_00baad2c) {
        local_28 = DAT_00baad2c;
      }
      if ((float)ppiVar20 <= (float)local_28) {
        local_28 = ppiVar20;
      }
      ppiVar20 = DAT_00baa54c;
      FUN_0041d540();
      local_54 = ppiVar20;
      ppiVar20 = DAT_00baa54c;
      FUN_0041d520();
      fVar23 = ((float)local_58 * (float)local_54 - fVar25 * (float)ppiVar20) * (float)local_28 *
               DAT_00baa0d0;
      param_1[0xd9] =
           (int *)(((float)local_58 * (float)ppiVar20 + fVar25 * (float)local_54) * (float)local_28
                   * DAT_00baa0d0 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      param_1[0xd8] = (int *)(fVar23 * (float)param_1[0xe7] + (float)param_1[0xd8]);
    }
    if (param_1[0xef] == (int *)0x0) {
      puVar7 = puStack_20;
      if ((DAT_00baaa44 < (float)param_1[0x2ee]) && ((float)ppiVar27 < DAT_00baa6fc)) {
        do {
          local_54 = local_60 + 0x12;
          ppbVar14 = (byte **)local_60[0x27];
          if (ppbVar14 == (byte **)0x0) {
LAB_0059d74b:
            cVar8 = FUN_0040aaf0("HeadChargeEndOverlay",1);
            if (cVar8 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(local_60 + 0x2b) = 1;
            }
          }
          else {
            ppbVar12 = ppbVar14;
            if (&DAT_0000000f < ppbVar14[5]) {
              ppbVar12 = (byte **)*ppbVar14;
            }
            pcVar30 = "HeadChargeEndOverlay";
            do {
              bVar4 = *(byte *)ppbVar12;
              bVar21 = bVar4 < (byte)*pcVar30;
              if (bVar4 != *pcVar30) {
LAB_0059d730:
                uVar9 = -(uint)bVar21 | 1;
                goto LAB_0059d735;
              }
              if (bVar4 == 0) break;
              bVar4 = *(byte *)((int)ppbVar12 + 1);
              bVar21 = bVar4 < ((byte *)pcVar30)[1];
              if (bVar4 != ((byte *)pcVar30)[1]) goto LAB_0059d730;
              ppbVar12 = (byte **)((int)ppbVar12 + 2);
              pcVar30 = (char *)((byte *)pcVar30 + 2);
            } while (bVar4 != 0);
            uVar9 = 0;
LAB_0059d735:
            if ((uVar9 != 0) ||
               ((*(byte *)(ppbVar14 + 0xd) != 0 && (*(char *)(local_60 + 0x2b) == '\0'))))
            goto LAB_0059d74b;
          }
          local_60 = (int **)local_60[0xf0];
        } while (local_60 != (int **)0x0);
        local_60 = param_1;
        if ((param_1[0x27] == (int *)0x0) ||
           (puVar7 = puStack_20, *(char *)(param_1 + 0x2b) == '\0')) {
          do {
            local_58 = local_60 + 0x12;
            ppbVar14 = (byte **)local_60[0x27];
            if (ppbVar14 == (byte **)0x0) {
LAB_0059d7f2:
              cVar8 = FUN_0040aaf0("HeadWalkOverlay",1);
              ppiVar20 = local_58;
              if (cVar8 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(ppiVar20 + 0x19) = 1;
              }
            }
            else {
              if (&DAT_0000000f < ppbVar14[5]) {
                ppbVar14 = (byte **)*ppbVar14;
              }
              pcVar30 = "HeadWalkOverlay";
              do {
                bVar4 = *(byte *)ppbVar14;
                bVar21 = bVar4 < (byte)*pcVar30;
                if (bVar4 != *pcVar30) {
LAB_0059d7d2:
                  uVar9 = -(uint)bVar21 | 1;
                  goto LAB_0059d7d7;
                }
                if (bVar4 == 0) break;
                bVar4 = *(byte *)((int)ppbVar14 + 1);
                bVar21 = bVar4 < ((byte *)pcVar30)[1];
                if (bVar4 != ((byte *)pcVar30)[1]) goto LAB_0059d7d2;
                ppbVar14 = (byte **)((int)ppbVar14 + 2);
                pcVar30 = (char *)((byte *)pcVar30 + 2);
              } while (bVar4 != 0);
              uVar9 = 0;
LAB_0059d7d7:
              if ((uVar9 != 0) ||
                 ((*(char *)(local_60[0x27] + 0xd) != '\0' && (*(char *)(local_60 + 0x2b) == '\0')))
                 ) goto LAB_0059d7f2;
            }
            local_60[0x2d9] = (int *)&DAT_00000004;
            local_60[0x2ee] = (int *)0x0;
            FUN_00499380();
            local_60 = (int **)local_60[0xf0];
          } while (local_60 != (int **)0x0);
          local_28 = (int **)param_1[0xf0];
          puVar7 = puStack_20;
          if (local_28 != (int **)0x0) {
            do {
              piVar15 = local_28[0xef];
              piVar2 = local_28[0xcf];
              piVar26 = local_28[0xd0];
              local_54 = (int **)piVar15[0x304];
              if ((((uint)local_54 & 1) == 0) && ((uint)piVar15[0x303] <= piVar15[0x305] + 2U >> 1))
              {
                FUN_00499410(local_28);
                local_54 = (int **)piVar15[0x304];
              }
              uVar9 = piVar15[0x303] * 2;
              uVar10 = uVar9 - 1 & (uint)local_54;
              piVar15[0x304] = uVar10;
              if (uVar10 == 0) {
                uVar10 = uVar9;
              }
              local_58 = (int **)(uVar10 - 1);
              uVar9 = piVar15[0x303] - 1U & (uint)local_58 >> 1;
              if (*(int *)(piVar15[0x302] + uVar9 * 4) == 0) {
                uVar11 = FUN_00a0f4c0(0x10);
                *(undefined4 *)(piVar15[0x302] + uVar9 * 4) = uVar11;
              }
              iVar18 = *(int *)(piVar15[0x302] + uVar9 * 4);
              *(int **)(iVar18 + ((uint)local_58 & 1) * 8) = piVar2;
              *(int **)(iVar18 + 4 + ((uint)local_58 & 1) * 8) = piVar26;
              piVar15[0x305] = piVar15[0x305] + 1;
              piVar15[0x304] = (int)local_58;
              local_28 = (int **)local_28[0xf0];
            } while (local_28 != (int **)0x0);
            local_28 = (int **)0x0;
            puVar7 = puStack_20;
          }
        }
      }
      break;
    }
    goto LAB_0059de35;
  case (int *)0x8:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3c4);
    puStack_20 = &stack0xfffffffc;
    if ((param_1[0xef] == (int *)0x0) &&
       ((param_1[0x27] == (int *)0x0 ||
        (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x2b) == '\0')))) {
      puStack_20 = &stack0xfffffffc;
      FUN_006d6ba0(0x39,0x3f800000,2,0,0x3f800000);
      auVar24 = ZEXT816(0);
      ppiVar20 = param_1;
      do {
        auVar24._0_4_ = auVar24._0_4_ + (float)ppiVar20[0xd0];
        ppiVar20 = (int **)ppiVar20[0xf0];
      } while (ppiVar20 != (int **)0x0);
      local_54 = (int **)auVar24._0_4_;
      FUN_006bec40(&local_5c,0);
      FUN_00a10100(&local_5c,0x41400000);
      local_54 = param_1;
      ppiVar20 = local_58;
      piVar15 = local_5c;
      do {
        ppiVar27 = local_54;
        ppbVar14 = (byte **)local_54[0x27];
        if (ppbVar14 == (byte **)0x0) {
LAB_0059cf3b:
          cVar8 = FUN_0040aaf0("HeadChargeLoopOverlay",1);
          ppiVar20 = local_58;
          piVar15 = local_5c;
          if (cVar8 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(ppiVar27 + 0x2b) = 1;
            ppiVar20 = local_58;
            piVar15 = local_5c;
          }
        }
        else {
          ppbVar12 = ppbVar14;
          if (&DAT_0000000f < ppbVar14[5]) {
            ppbVar12 = (byte **)*ppbVar14;
          }
          pcVar30 = "HeadChargeLoopOverlay";
          do {
            bVar4 = *(byte *)ppbVar12;
            bVar21 = bVar4 < (byte)*pcVar30;
            if (bVar4 != *pcVar30) {
LAB_0059cf20:
              uVar9 = -(uint)bVar21 | 1;
              goto LAB_0059cf25;
            }
            if (bVar4 == 0) break;
            bVar4 = *(byte *)((int)ppbVar12 + 1);
            bVar21 = bVar4 < ((byte *)pcVar30)[1];
            if (bVar4 != ((byte *)pcVar30)[1]) goto LAB_0059cf20;
            ppbVar12 = (byte **)((int)ppbVar12 + 2);
            pcVar30 = (char *)((byte *)pcVar30 + 2);
          } while (bVar4 != 0);
          uVar9 = 0;
LAB_0059cf25:
          if ((uVar9 != 0) ||
             ((*(byte *)(ppbVar14 + 0xd) != 0 && (*(char *)(local_54 + 0x2b) == '\0'))))
          goto LAB_0059cf3b;
        }
        local_54[0x2d9] = (int *)0x6;
        local_54[0xd8] = piVar15;
        local_54[0xd9] = (int *)ppiVar20;
        local_54[0x2ee] = (int *)0x0;
        local_54 = (int **)local_54[0xf0];
      } while (local_54 != (int **)0x0);
    }
LAB_0059cf9b:
    FUN_006d7df0(1);
    puVar7 = puStack_20;
    break;
  case (int *)0x10:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3c4);
    FUN_006d7df0(1);
    if ((param_1[0x1f] == (int *)0x0) || (puVar7 = puStack_20, *(char *)(param_1 + 0x23) == '\0')) {
      if (param_1[0xef] != (int *)0x0) goto LAB_0059de35;
      piVar15 = param_1[0xe1];
      local_54 = (int **)((float)piVar15 * DAT_00baa120 + (float)param_1[0xe0]);
      if ((float)piVar15 <= (float)local_54) {
        local_54 = (int **)piVar15;
      }
      ppiVar20 = (int **)0x0;
      do {
        local_58 = local_60 + 0x12;
        local_60[0xe0] = (int *)local_54;
        ppiVar20 = (int **)((int)ppiVar20 + 1);
        ppbVar14 = (byte **)local_60[0x27];
        if (ppbVar14 == (byte **)0x0) {
LAB_0059da15:
          cVar8 = FUN_0040aaf0("HeadWalkOverlay",1);
          ppiVar27 = local_58;
          if (cVar8 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(ppiVar27 + 0x19) = 1;
          }
        }
        else {
          if (&DAT_0000000f < ppbVar14[5]) {
            ppbVar14 = (byte **)*ppbVar14;
          }
          pcVar30 = "HeadWalkOverlay";
          do {
            bVar4 = *(byte *)ppbVar14;
            bVar21 = bVar4 < (byte)*pcVar30;
            if (bVar4 != *pcVar30) {
LAB_0059d9f5:
              uVar9 = -(uint)bVar21 | 1;
              goto LAB_0059d9fa;
            }
            if (bVar4 == 0) break;
            bVar4 = *(byte *)((int)ppbVar14 + 1);
            bVar21 = bVar4 < ((byte *)pcVar30)[1];
            if (bVar4 != ((byte *)pcVar30)[1]) goto LAB_0059d9f5;
            ppbVar14 = (byte **)((int)ppbVar14 + 2);
            pcVar30 = (char *)((byte *)pcVar30 + 2);
          } while (bVar4 != 0);
          uVar9 = 0;
LAB_0059d9fa:
          if ((uVar9 != 0) ||
             ((*(char *)(local_60[0x27] + 0xd) != '\0' && (*(char *)(local_60 + 0x2b) == '\0'))))
          goto LAB_0059da15;
        }
        local_60[0x2d9] = (int *)&DAT_00000004;
        iVar18 = FUN_006eef60();
        local_60[0x5a] = (int *)((uint)local_60[0x5a] & 0xfffffffe);
        local_60[0x62] = (int *)&DAT_00000004;
        *(undefined *)(local_60 + 0xec) = 0;
        dVar3 = (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)];
        local_60[0x5b] = local_60[0x5b];
        local_60[0x2ee] = (int *)((float)((double)iVar18 + dVar3) * _DAT_00baacd8 * DAT_00baaa00);
        local_60 = (int **)local_60[0xf0];
      } while (local_60 != (int **)0x0);
      iVar17 = 0;
      iVar18 = (int)ppiVar20 / 2;
      ppiVar27 = param_1;
      if (0 < iVar18) {
        do {
          if (ppiVar27 == (int **)0x0) break;
          ppiVar27 = (int **)ppiVar27[0xf0];
          iVar17 = iVar17 + 1;
        } while (iVar17 < iVar18);
      }
      local_60 = (int **)ppiVar27[0xcf];
      local_54 = (int **)ppiVar27[0xd0];
      piVar15 = ppiVar27[0xef];
      if (iVar18 * 2 < (int)ppiVar20) {
        local_28 = (int **)(piVar15 + 0xf0);
        local_58 = ppiVar20;
        if (piVar15[0xf0] != 0) {
          local_58 = local_28;
          FUN_004cf210(&local_58);
        }
        *local_28 = (int *)0x0;
        local_28 = (int **)(ppiVar27[0xf0] + 0xef);
        if (*local_28 != (int *)0x0) {
          local_58 = local_28;
          FUN_004cf210(&local_58);
        }
        *local_28 = (int *)0x0;
        (*(code *)(*ppiVar27)[10])();
      }
      else {
        local_58 = (int **)(piVar15 + 0xf0);
        local_60 = (int **)(((float)local_60 + (float)piVar15[0xcf]) * (float)DAT_00baa2d0);
        local_54 = (int **)(((float)local_54 + (float)piVar15[0xd0]) * (float)DAT_00baa2d0);
        local_28 = local_58;
        if (piVar15[0xf0] != 0) {
          FUN_004cf210(&local_58);
        }
        local_58 = ppiVar27 + 0xef;
        *local_28 = (int *)0x0;
        if (*local_58 != (int *)0x0) {
          FUN_004cf210(&local_58);
        }
        ppiVar27[0xef] = (int *)0x0;
      }
      local_58 = (int **)param_1[0xcf];
      local_28 = (int **)param_1[0xd0];
      ppiVar27[0xcf] = (int *)local_60;
      ppiVar27[0xd0] = (int *)local_54;
      FUN_006b45c0();
      ppiVar27[0xcf] = (int *)local_58;
      ppiVar27[0xd0] = (int *)local_28;
      puVar7 = puStack_20;
    }
  }
  puStack_20 = puVar7;
  if (param_1[0xef] == (int *)0x0) {
    iVar18 = 0;
    ppiVar20 = param_1;
    do {
      ppiVar20 = (int **)ppiVar20[0xf0];
      iVar18 = iVar18 + 1;
    } while (ppiVar20 != (int **)0x0);
    if ((3 < iVar18) &&
       ((*(char *)((int)param_1 + 0x173) != '\0' ||
        (fVar23 = (float)(iVar18 / 2) * DAT_00baa120 * (float)param_1[0xe1],
        (float)param_1[0xe0] <= fVar23 && fVar23 != (float)param_1[0xe0])))) {
      param_1[0x5a] = (int *)((uint)param_1[0x5a] | 1);
      *(undefined *)((int)param_1 + 0x173) = 0;
      param_1[0x62] = (int *)0x0;
      param_1[0x2d9] = (int *)0x10;
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0x5b] = param_1[0x5b];
      ppiVar20 = param_1;
      do {
        *(undefined *)((int)ppiVar20 + 0x173) = 0;
        ppiVar20[0x62] = (int *)0x0;
        ppiVar20[0x2d9] = (int *)0x10;
        FUN_00408830(0);
        if (ppiVar20[0xef] == (int *)0x0) {
          pcVar30 = "DeathHead";
        }
        else {
          FUN_00420a80(&local_44,"DeathBody%02d",0);
          pcVar30 = (char *)&local_44;
        }
        FUN_0040a380(pcVar30,0);
        ppiVar20[0x2ee] = (int *)0x0;
        ppiVar20[0x2ef] = (int *)0x0;
        FUN_00499380();
        ppiVar20 = (int **)ppiVar20[0xf0];
      } while (ppiVar20 != (int **)0x0);
      for (piVar15 = param_1[0xf0]; piVar15 != (int *)0x0; piVar15 = (int *)piVar15[0xf0]) {
        iVar18 = piVar15[0xef];
        local_28 = (int **)piVar15[0xcf];
        iVar17 = piVar15[0xd0];
        local_54 = *(int ***)(iVar18 + 0xc10);
        if ((((uint)local_54 & 1) == 0) &&
           (*(uint *)(iVar18 + 0xc0c) <= *(int *)(iVar18 + 0xc14) + 2U >> 1)) {
          FUN_00499410(piVar15);
          local_54 = *(int ***)(iVar18 + 0xc10);
        }
        uVar9 = *(int *)(iVar18 + 0xc0c) * 2;
        uVar10 = uVar9 - 1 & (uint)local_54;
        *(uint *)(iVar18 + 0xc10) = uVar10;
        if (uVar10 == 0) {
          uVar10 = uVar9;
        }
        local_58 = (int **)(uVar10 - 1);
        uVar9 = (uint)local_58 >> 1 & *(int *)(iVar18 + 0xc0c) - 1U;
        if (*(int *)(*(int *)(iVar18 + 0xc08) + uVar9 * 4) == 0) {
          uVar11 = FUN_00a0f4c0(0x10);
          *(undefined4 *)(*(int *)(iVar18 + 0xc08) + uVar9 * 4) = uVar11;
        }
        iVar5 = *(int *)(*(int *)(iVar18 + 0xc08) + uVar9 * 4);
        *(int ***)(iVar5 + ((uint)local_58 & 1) * 8) = local_28;
        *(int *)(iVar5 + 4 + ((uint)local_58 & 1) * 8) = iVar17;
        *(int *)(iVar18 + 0xc14) = *(int *)(iVar18 + 0xc14) + 1;
        *(int ***)(iVar18 + 0xc10) = local_58;
      }
    }
  }
LAB_0059de35:
  uVar9 = FUN_006eef60();
  if ((uVar9 & 7) == 0) {
    iVar18 = FUN_006eef60();
    piVar15 = (int *)FUN_006b64d0((float)((double)iVar18 +
                                         (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) * DAT_00ba9ff4
                                  * (float)DAT_00baa2d0 + DAT_00baa198);
    (**(code **)(*piVar15 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
  }
  if (((((uint)param_1[0x5a] & 0x4000) == 0) && (cVar8 = FUN_006fd350(), cVar8 == '\0')) &&
     ((int)(((float)param_1[0xe8] + 0.0) * _DAT_00baad00) !=
      (int)(((float)param_1[0xe9] + 0.0) * _DAT_00baad00))) {
    uVar11 = FUN_006eef60();
    piVar15 = (int *)FUN_006fe410(1000,0x5e,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar11,0);
    iVar18 = FUN_006eef60();
    fVar25 = (float)((double)iVar18 + (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa1d4 + DAT_00baa380;
    fVar23 = fVar25 * DAT_00c3793c;
    piVar15[0x3a] = (int)(fVar25 * DAT_00c37940);
    piVar15[0x39] = (int)fVar23;
    (**(code **)(*piVar15 + 0xc))();
  }
  FUN_0059c5d0();
LAB_0059e201:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

