/* Local J460 decompiler output.
 * VA: 0x005a7b20
 * Entry: 005a7b20
 * Dispatcher: 0x006c2990
 * Types: 903
 * Identities: 903.0.0,903.1.0,903.10.0,903.20.0
 * Evidence: dispatcher=0x006c2990; end=0x005aae10; instructions=2694
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=903; identities=903.0.0,903.1.0,903.10.0,903.20.0;
   dispatcher=0x006c2990; end=0x005aae10; instructions=2694 */

void __fastcall AI_005a7b20(int **param_1)

{
  float fVar1;
  code *pcVar2;
  char cVar3;
  float *pfVar4;
  int ***pppiVar5;
  float *pfVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  int iVar12;
  int **ppiVar13;
  int *piVar14;
  bool bVar15;
  bool bVar16;
  bool bVar17;
  int *piVar18;
  float fVar19;
  float fVar20;
  int **ppiVar21;
  float fVar22;
  int *piVar23;
  int **ppiVar24;
  int **ppiStack_358;
  int **ppiStack_354;
  int **local_350 [2];
  int **ppiStack_348;
  float fStack_344;
  int **local_340;
  int **ppiStack_33c;
  char cStack_335;
  int **appiStack_334 [2];
  int **appiStack_32c [2];
  int **local_324 [2];
  int **local_31c [2];
  int **appiStack_314 [2];
  undefined auStack_30c [8];
  undefined auStack_304 [8];
  undefined auStack_2fc [16];
  undefined auStack_2ec [8];
  undefined auStack_2e4 [8];
  int *local_2dc;
  int *local_2d8;
  int *local_2d4;
  int *local_2d0;
  int *local_2cc;
  int *local_2c8;
  int *local_2c4;
  int *local_2c0;
  uint local_2bc;
  int **local_2b8;
  undefined auStack_2b0 [4];
  float fStack_2ac;
  undefined4 uStack_21c;
  undefined auStack_208 [4];
  float fStack_204;
  undefined4 uStack_174;
  undefined auStack_160 [4];
  float fStack_15c;
  undefined4 uStack_cc;
  undefined auStack_b8 [4];
  float fStack_b4;
  uint local_c;
  
  uVar10 = DAT_00c798e4;
  local_c = DAT_00bf93b4 ^ (uint)&ppiStack_358;
  ppiVar13 = (int **)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  ppiVar21 = DAT_00baa2d0;
  local_350[0] = param_1;
  local_340 = ppiVar13;
  switch(param_1[0x2d9]) {
  case (int *)0x0:
    iVar9 = FUN_0040b220(1);
    uVar8 = 1;
    if ((uVar10 & 4) == 0) {
      uVar8 = 6;
    }
    *(undefined4 *)(iVar9 + 0x7c) = uVar8;
    *(undefined4 *)(iVar9 + 0x78) = 0;
    *(undefined4 *)(iVar9 + 0x80) = 1;
    *(undefined4 *)(iVar9 + 0x84) = 1;
    *(undefined4 *)(iVar9 + 0x88) = 1;
    param_1[0x2d9] = (int *)0x64;
    *(undefined *)(param_1 + 0xec) = 1;
    FUN_004071f0(&DAT_00c34c70);
    param_1[0x5a] = (int *)((uint)param_1[0x5a] | 0x11);
    param_1[0x5b] = param_1[0x5b];
    param_1[0x2ec] = (int *)0x0;
    FUN_006d81c0();
    local_350[0] = (int **)0x0;
    FUN_004b6a90(local_350);
    param_1[0x2ed] = (int *)0x43160000;
    uVar8 = FUN_006eef60();
    ppiStack_358 = (int **)((float)param_1[0xcf] + DAT_00ba9fe4);
    ppiStack_354 = (int **)((float)param_1[0xd0] + DAT_00baa8b8);
    local_340 = (int **)FUN_006fe410(0x387,1,&ppiStack_358,&DAT_00c7b640,0,0,uVar8,0);
    ppiVar21 = local_340 + 0xef;
    if (local_340[0xef] != (int *)0x0) {
      local_350[0] = ppiVar21;
      FUN_004cf210(local_350);
    }
    *ppiVar21 = (int *)param_1;
    FUN_004cdcf0(ppiVar21);
    ppiVar21 = param_1 + 0xf0;
    if (param_1[0xf0] != (int *)0x0) {
      local_350[0] = ppiVar21;
      FUN_004cf210(local_350);
    }
    *ppiVar21 = (int *)local_340;
    FUN_004cdcf0(ppiVar21);
    FUN_005a7310();
    ppiVar21 = DAT_00baa2d0;
    break;
  case (int *)0x64:
    FUN_0040a380(&DAT_00b601c4,0);
    FUN_007e6650(0);
    iVar9 = DAT_00c71678;
    fVar22 = DAT_00baa904;
    ppiVar21 = DAT_00baa2d0;
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
    iVar9 = *(int *)(iVar9 + 0x18300);
    iVar7 = (int)(((float)param_1[0xcf] - fVar22) / fVar22 + (float)ppiVar21);
    iVar12 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / fVar22 + (float)ppiVar21);
    if ((((-1 < iVar7) && (iVar7 < *(int *)(iVar9 + 0xc))) &&
        ((-1 < iVar12 &&
         (((iVar12 < *(int *)(iVar9 + 0x10) &&
           (iVar7 = *(int *)(iVar9 + 0xc) * iVar12 + iVar7, -1 < iVar7)) && (iVar7 < 0x1c0)))))) &&
       (*(int *)(iVar9 + 0x76c + iVar7 * 4) < 0x3b7)) {
      *(undefined4 *)(iVar9 + 0x76c + iVar7 * 4) = 900;
    }
    if ((param_1[0x2d9] <= &DAT_00000068) && (piVar14 = param_1[0xf0], piVar14 != (int *)0x0)) {
      local_340 = (int **)((float)piVar14[0xd0] - (float)param_1[0xd0]);
      local_350[0] = (int **)((float)piVar14[0xcf] - (float)param_1[0xcf]);
      local_324[0] = (int **)((float)local_340 * (float)local_340 +
                             (float)local_350[0] * (float)local_350[0]);
      ppiVar21 = local_324[0];
      FUN_00435a50();
      appiStack_314[0] = DAT_00baa854;
      if ((float)(int **)((float)ppiVar21 - (float)param_1[0x2ed]) <= (float)DAT_00baa854) {
        appiStack_314[0] = (int **)((float)ppiVar21 - (float)param_1[0x2ed]);
      }
      ppiVar21 = DAT_00baa2d0;
      if (0.0 < (float)appiStack_314[0]) {
        ppiVar24 = local_324[0];
        FUN_00435a50();
        ppiVar13 = local_350[0];
        ppiVar21 = local_340;
        if (0.0 < (float)ppiVar24) {
          ppiVar13 = (int **)((float)local_350[0] * (DAT_00baa454 / (float)ppiVar24));
          ppiVar21 = (int **)((float)local_340 * (DAT_00baa454 / (float)ppiVar24));
        }
        piVar14 = param_1[0xdb];
        fVar22 = (float)ppiVar21 * (float)appiStack_314[0] * DAT_00baa198;
        ppiVar21 = DAT_00baa2d0;
        if (NAN((float)piVar14) == ((float)piVar14 == 0.0)) {
          param_1[0xd8] =
               (int *)(((float)ppiVar13 * (float)appiStack_314[0] * DAT_00baa198 *
                       (float)param_1[0xe7]) / (float)piVar14 + (float)param_1[0xd8]);
          param_1[0xd9] =
               (int *)((fVar22 * (float)param_1[0xe7]) / (float)piVar14 + (float)param_1[0xd9]);
          ppiVar21 = DAT_00baa2d0;
        }
      }
    }
    break;
  case (int *)0x65:
    FUN_0040a380("Unwind",0);
    cVar3 = FUN_0040b090(&DAT_00b62850);
    if (cVar3 != '\0') {
      piVar14 = param_1[0xf0];
      param_1[0x2ed] = (int *)((float)param_1[0x2ed] + DAT_00baa87c);
      if (piVar14 != (int *)0x0) {
        fVar22 = (float)piVar14[0xce] * DAT_00baa3a4;
        param_1[0xd8] = (int *)((float)param_1[0xd8] - (float)piVar14[0xcd] * DAT_00baa3a4);
        param_1[0xd9] = (int *)((float)param_1[0xd9] - fVar22);
      }
    }
    if ((param_1[0x1f] == (int *)0x0) ||
       (ppiVar21 = DAT_00baa2d0, *(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = (int *)0x64;
      ppiVar21 = DAT_00baa2d0;
    }
    break;
  case (int *)0x66:
    FUN_0040a380("Rewind",0);
    cVar3 = FUN_0040b030(&DAT_00b62850);
    if (cVar3 != '\0') {
      FUN_0092dc30(0x1f7,0x3f4ccccd,2,1,0x3f800000,0);
    }
    cVar3 = FUN_0040b090(&DAT_00b62850);
    if (((cVar3 == '\0') && (param_1[0x1f] != (int *)0x0)) && (*(char *)(param_1 + 0x23) != '\0')) {
      piVar14 = param_1[0x2ed];
    }
    else {
      piVar14 = (int *)((float)param_1[0x2ed] - DAT_00baa8d0);
      if ((float)(int *)((float)param_1[0x2ed] - DAT_00baa8d0) <= (float)DAT_00baa8ec) {
        piVar14 = DAT_00baa8ec;
      }
      param_1[0x2ed] = piVar14;
    }
    ppiVar21 = DAT_00baa2d0;
    if ((float)piVar14 < DAT_00baa904) {
      FUN_0092e230(0x1f7);
      param_1[0x2ed] = (int *)0x43160000;
      if (param_1[0xf0] != (int *)0x0) {
        param_1[0xf0][0x2d9] = 100;
      }
      param_1[0x2d9] = (int *)0x64;
      ppiVar21 = DAT_00baa2d0;
    }
    break;
  case (int *)0x67:
  case (int *)0x68:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa120);
    FUN_0040a380("Transition",0);
    if (param_1[0x1f] != (int *)0x0) {
      cVar3 = FUN_0040add0("Break");
      if (cVar3 != '\0') {
        uVar8 = FUN_004238f0(0x3f800000);
        iVar9 = FUN_006eef60();
        local_350[0] = (int **)((float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                               DAT_00ba9ff4);
        uVar10 = FUN_006eef60();
        FUN_00703330(param_1 + 0xcf,0x23,(uVar10 & 3) + 3,
                     (float)local_350[0] + (float)local_350[0] + DAT_00baa6fc,uVar8,0x47c35000,0);
        FUN_006d6ba0(0x89,0x3f800000,2,0,0x3f800000);
        param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xffffffee);
        param_1[0x2d9] = (int *)&DAT_00000068;
        *(undefined *)(param_1 + 0xec) = 0;
        param_1[0x5b] = param_1[0x5b];
      }
      if ((param_1[0x1f] != (int *)0x0) &&
         (ppiVar21 = DAT_00baa2d0, *(char *)(param_1 + 0x23) != '\0')) break;
    }
    param_1[0x2d9] = (int *)0x69;
    ppiVar21 = DAT_00baa2d0;
    if (param_1[0x2fb] == (int *)0x0) {
      FUN_005a7310();
      ppiVar21 = DAT_00baa2d0;
    }
    break;
  case (int *)0x69:
    FUN_0040a380(&DAT_00b1d428,0);
    if (0 < (int)param_1[0x2e8]) {
      param_1[0x2e8] = (int *)((int)param_1[0x2e8] - (int)ppiVar13);
    }
    if ((param_1[0xf0] == (int *)0x0) || (param_1[0xf0][0x2d9] == 0x6d)) {
      param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
      FUN_007e6650(0);
      if (((int)param_1[0x2e8] < 1) && (uVar10 = FUN_006eef60(), uVar10 % 0x28 == 0)) {
LAB_005a83be:
        if (param_1[0x2fb] != (int *)0x0) {
          param_1[0x2d9] = (int *)0x6a;
        }
      }
    }
    else {
      param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
      FUN_006be840();
      uVar10 = FUN_006eef60();
      if ((uVar10 % 0x14 == 0) ||
         ((DAT_00ba9fe4 < (float)param_1[5] && (uVar10 = FUN_006eef60(), (uVar10 & 3) == 0)))) {
        FUN_005a7920();
      }
      ppiStack_358 = (int **)((float)param_1[0xcd] - (float)param_1[0xcf]);
      ppiStack_354 = (int **)((float)param_1[0xce] - (float)param_1[0xd0]);
      local_350[0] = ppiStack_354;
      local_324[0] = ppiStack_358;
      pfVar6 = (float *)FUN_00a10030(&ppiStack_348);
      appiStack_314[0] = (int **)0x40000000;
      fVar20 = (float)local_350[0] * (float)local_350[0] + (float)local_324[0] * (float)local_324[0]
      ;
      FUN_00435a50();
      fVar22 = pfVar6[1];
      local_350[0] = (int **)(fVar20 * DAT_00baa120);
      pppiVar5 = appiStack_314;
      if ((float)(int **)(fVar20 * DAT_00baa120) <= DAT_00baa630) {
        pppiVar5 = local_350;
      }
      ppiVar21 = *pppiVar5;
      param_1[0xd8] = (int *)((float)*pppiVar5 * *pfVar6 + (float)param_1[0xd8]);
      param_1[0xd9] = (int *)(fVar22 * (float)ppiVar21 + (float)param_1[0xd9]);
      if (((int)param_1[0x2e8] < 1) && (uVar10 = FUN_006eef60(), uVar10 % 0x14 == 0)) {
        fVar22 = (float)param_1[0xd0] - (float)param_1[0xf0][0xd0];
        fVar20 = (float)param_1[0xcf] - (float)param_1[0xf0][0xcf];
        fVar22 = fVar22 * fVar22 + fVar20 * fVar20;
        FUN_00435a50();
        if (DAT_00baaae8 < fVar22) goto LAB_005a83be;
      }
    }
    cVar3 = FUN_00a10600(&DAT_00c7b640);
    if (cVar3 == '\0') {
      fVar22 = ((float)param_1[0x2ef] - (float)param_1[0xd0]) *
               ((float)param_1[0x2ef] - (float)param_1[0xd0]) +
               ((float)param_1[0x2ee] - (float)param_1[0xcf]) *
               ((float)param_1[0x2ee] - (float)param_1[0xcf]);
      FUN_00435a50();
      if (fVar22 <= DAT_00baa9a0) {
        param_1[0x2e9] = (int *)((int)param_1[0x2e9] + (int)local_340);
        ppiVar21 = DAT_00baa2d0;
        break;
      }
    }
    param_1[0x2ee] = param_1[0xcf];
    param_1[0x2ef] = param_1[0xd0];
    param_1[0x2e9] = (int *)0x0;
    ppiVar21 = DAT_00baa2d0;
    break;
  case (int *)0x6a:
    piVar14 = (int *)((float)param_1[0xdb] * (float)DAT_00baa2d0);
    param_1[0x2ec] = (int *)0x0;
    param_1[0xdb] = piVar14;
    FUN_0040a380("Unwind2",0);
    if (param_1[0x2fb] == (int *)0x0) {
      param_1[0x2f0] = (int *)0xffffffff;
    }
    else {
      cVar3 = FUN_0040b030(&DAT_00b62850);
      if (cVar3 != '\0') {
        if ((param_1[0xf0] == (int *)0x0) ||
           ((param_1[0xf0][0x2d9] == 0x6d && (uVar10 = FUN_006eef60(), (uVar10 & 1) != 0)))) {
          piVar14 = (int *)FUN_006be840();
          appiStack_32c[0] = (int **)piVar14[0xd9];
          appiStack_334[0] = (int **)piVar14[0xd8];
          fVar22 = ((float)param_1[0xd0] - (float)piVar14[0xd0]) *
                   ((float)param_1[0xd0] - (float)piVar14[0xd0]) +
                   ((float)param_1[0xcf] - (float)piVar14[0xcf]) *
                   ((float)param_1[0xcf] - (float)piVar14[0xcf]);
          FUN_00435a50();
          fVar20 = (float)appiStack_334[0] * fVar22 * DAT_00baa0dc;
          fVar22 = (float)appiStack_32c[0] * fVar22 * DAT_00baa0dc;
        }
        else {
          piVar14 = param_1[0xf0];
          appiStack_32c[0] = (int **)piVar14[0xd9];
          appiStack_334[0] = (int **)piVar14[0xd8];
          fVar22 = ((float)param_1[0xd0] - (float)piVar14[0xd0]) *
                   ((float)param_1[0xd0] - (float)piVar14[0xd0]) +
                   ((float)param_1[0xcf] - (float)piVar14[0xcf]) *
                   ((float)param_1[0xcf] - (float)piVar14[0xcf]);
          FUN_00435a50();
          fVar20 = (float)appiStack_334[0] * fVar22 * DAT_00baa06c;
          fVar22 = (float)appiStack_32c[0] * fVar22 * DAT_00baa06c;
        }
        fVar19 = (float)piVar14[0xd0];
        fVar1 = (float)piVar14[0xcf];
        piVar14 = param_1[0x2fb];
        iVar9 = piVar14[0xf0];
        if ((((iVar9 == 0) || (*(int *)(iVar9 + 0x28) != 0x387)) || (*(int *)(iVar9 + 0x2c) != 10))
           && (piVar14[0x2d9] == 4)) {
          piVar14[0x2d9] = 5;
          appiStack_334[0] = (int **)((fVar20 + fVar1) - (float)piVar14[0xcf]);
          appiStack_32c[0] = (int **)((fVar22 + fVar19) - (float)piVar14[0xd0]);
          fVar22 = (float)appiStack_334[0] * (float)appiStack_334[0] +
                   (float)appiStack_32c[0] * (float)appiStack_32c[0];
          FUN_00435a50();
          ppiVar21 = appiStack_334[0];
          ppiVar13 = appiStack_32c[0];
          if (DAT_00ba9fe4 < fVar22) {
            ppiVar21 = (int **)((float)appiStack_334[0] * (DAT_00baa454 / fVar22));
            ppiVar13 = (int **)((float)appiStack_32c[0] * (DAT_00baa454 / fVar22));
          }
          piVar14[0xcd] = (int)ppiVar21;
          piVar14[0xce] = (int)ppiVar13;
          FUN_0092dc30(0x1f7,0x3f4ccccd,2,1,0x3f800000,0);
        }
        param_1[0x104] = (int *)0x0;
      }
      ppiVar21 = DAT_00baa2d0;
      piVar14 = param_1[0x2fb];
      iVar9 = piVar14[0x2d9];
      if ((iVar9 != 6) && (iVar9 != 7)) {
        if ((iVar9 == 5) && (piVar14 = param_1[0xf0], piVar14 != (int *)0x0)) {
          piVar14[0xdb] = (int)((float)piVar14[0xdb] * DAT_00baa304);
        }
        break;
      }
      piVar18 = (int *)(((float)param_1[0xd0] - (float)piVar14[0xd0]) *
                        ((float)param_1[0xd0] - (float)piVar14[0xd0]) +
                       ((float)param_1[0xcf] - (float)piVar14[0xcf]) *
                       ((float)param_1[0xcf] - (float)piVar14[0xcf]));
      FUN_00435a50();
      param_1[0x2ed] = piVar18;
      ppiVar21 = (int **)piVar14[0xf1];
      local_350[0] = ppiVar21;
      if (((ppiVar21 != (int **)0x0) && (ppiVar21[10] == (int *)0x387)) &&
         (ppiVar21[0xb] == (int *)0x1)) {
        local_324[0] = (int **)FUN_006be840();
        ppiStack_358 = (int **)((float)local_324[0][0xcf] - (float)param_1[0xcf]);
        ppiStack_354 = (int **)((float)local_324[0][0xd0] - (float)param_1[0xd0]);
        ppiStack_348 = (int **)((float)ppiVar21[0xcf] - (float)param_1[0xcf]);
        fStack_344 = (float)ppiVar21[0xd0] - (float)param_1[0xd0];
        pfVar6 = (float *)FUN_00a10030(local_31c);
        pfVar4 = (float *)FUN_00a10030(appiStack_314);
        local_340 = (int **)(pfVar6[1] * pfVar4[1] + *pfVar4 * *pfVar6);
        if (((int)param_1[0x2e9] < 0x5b) &&
           (uVar10 = FUN_006eef60(), ppiVar21 = local_350[0], uVar10 % 7 != 0)) {
          if ((local_350[0][0x2d9] == (int *)0x6d) ||
             (((float)local_340 <= DAT_00baa3e0 &&
              (((float)local_340 <= DAT_00baa280 || (uVar10 = FUN_006eef60(), (uVar10 & 3) != 0)))))
             ) {
            ppiStack_358 = (int **)((float)ppiVar21[0xcf] - (float)param_1[0xcf]);
            ppiStack_354 = (int **)((float)ppiVar21[0xd0] - (float)param_1[0xd0]);
            pfVar6 = (float *)FUN_00a10030(&ppiStack_348);
            ppiVar21 = DAT_00baa54c;
            FUN_0041d540();
            local_340 = ppiVar21;
            ppiVar21 = DAT_00baa54c;
            FUN_0041d520();
            piVar14 = DAT_00baadb8;
            if (0.0 < ((float)local_340 * *pfVar6 - (float)ppiVar21 * pfVar6[1]) *
                      ((float)local_324[0][0xcf] - (float)local_350[0][0xcf]) +
                      ((float)local_340 * pfVar6[1] + (float)ppiVar21 * *pfVar6) *
                      ((float)local_324[0][0xd0] - (float)local_350[0][0xd0])) {
              piVar14 = DAT_00baa804;
            }
            param_1[0x2ec] = piVar14;
            param_1[0x2f0] = (int *)0x0;
            param_1[0x2d9] = (int *)0x6b;
            ppiVar21 = DAT_00baa2d0;
          }
          else {
            param_1[0x2f0] = (int *)0x1;
            param_1[0x2d9] = (int *)0x6b;
            ppiVar21 = DAT_00baa2d0;
          }
        }
        else {
          param_1[0x2f0] = (int *)0x2;
          param_1[0x2d9] = (int *)0x6b;
          ppiVar21 = DAT_00baa2d0;
        }
        break;
      }
    }
    param_1[0x2d9] = (int *)0x6b;
    ppiVar21 = DAT_00baa2d0;
    break;
  case (int *)0x6b:
    FUN_0040a380("Rewind2",0);
    cVar3 = FUN_0040b090(&DAT_00b62850);
    if (((cVar3 != '\0') || (param_1[0x1f] == (int *)0x0)) ||
       (cStack_335 = '\0', *(char *)(param_1 + 0x23) == '\0')) {
      cStack_335 = '\x01';
      param_1[0x104] = (int *)((int)param_1[0x104] + (int)ppiVar13);
    }
    piVar14 = param_1[0x2fb];
    if (piVar14 != (int *)0x0) {
      if (piVar14[0x2d9] == 6) {
        ppiStack_358 = (int **)((float)piVar14[0xcf] - (float)param_1[0xcf]);
        ppiStack_354 = (int **)((float)piVar14[0xd0] - (float)param_1[0xd0]);
        if (*(char *)(param_1 + 100) != '\0') {
          FUN_006d6ba0(0x34,0x3f800000,10,0,0x3f800000);
          FUN_00703670(0xf);
          ppiStack_358 = (int **)((float)param_1[0x67] * DAT_00baad50);
          ppiStack_354 = (int **)((float)param_1[0x68] * DAT_00baad50);
          FUN_005a7010();
          AI_0043ef30();
          fStack_2ac = fStack_2ac - DAT_00baa81c;
          uStack_21c = 9;
          uVar10 = FUN_006eef60();
          FUN_006ccdd0((uVar10 & 1) + 5,&DAT_00c7b640,0,auStack_2b0);
          uVar10 = FUN_006eef60();
          FUN_006ccdd0((uVar10 & 1) + 5,&DAT_00c7b640,0,auStack_2b0);
          param_1[0xd8] = DAT_00c7b640;
          param_1[0xd9] = DAT_00c7b644;
          FUN_005ad1c0();
          FUN_005a7920();
          ppiVar21 = DAT_00baa2d0;
          break;
        }
        if (cStack_335 != '\0') {
          pfVar6 = (float *)FUN_00a10030(local_350);
          fVar22 = pfVar6[1] * DAT_00baa7e8;
          param_1[0xd8] =
               (int *)(*pfVar6 * DAT_00baa7e8 * (float)param_1[0xe7] + (float)param_1[0xd8]);
          param_1[0xd9] = (int *)(fVar22 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        }
        piVar14 = param_1[0x104];
        bVar17 = SBORROW4((int)piVar14,0x5a);
        bVar16 = (int)piVar14 + -0x5a < 0;
        bVar15 = piVar14 == (int *)0x5a;
        goto LAB_005a8ba1;
      }
      if (piVar14[0x2d9] != 7) goto LAB_005a98f3;
      param_1[0xdb] = (int *)((float)param_1[0xdb] * (float)DAT_00baa2d0);
      ppiVar21 = (int **)piVar14[0xf1];
      appiStack_314[0] = ppiVar21;
      if ((ppiVar21 == (int **)0x0) || (*(char *)((int)ppiVar21 + 0x173) != '\0')) {
LAB_005a9793:
        FUN_00703670(8);
        if ((ppiVar21 != (int **)0x0) && (*(char *)((int)ppiVar21 + 0x173) == '\0')) {
          piVar14 = ppiVar21[10];
          if (piVar14 == (int *)0x1) {
            pcVar2 = (code *)(*ppiVar21)[8];
            FUN_00431310(param_1);
            (*pcVar2)(0x40000000,0,0,&local_2dc,0x1e);
            ppiVar21 = appiStack_314[0];
          }
          else if (piVar14 == (int *)0x4) {
            ppiVar21[0x104] = (int *)0x1;
            ppiVar21[0x105] = (int *)0x1;
          }
          else if ((piVar14 == (int *)0x387) && (ppiVar21[0xb] == (int *)0x1)) {
            if ((param_1[0x2f0] == (int *)0x1) && (ppiVar21[0x2d9] != (int *)0x6d)) {
              ppiVar21[0x2d9] = (int *)0x6c;
              FUN_0044bc90(0);
              FUN_006b5b50();
              param_1[0x2d9] = (int *)0x6d;
            }
            else if (param_1[0x2f0] == (int *)0x2) {
              if (ppiVar21[0x2d9] == (int *)0x6b) {
                ppiVar21[0x2d9] = (int *)0x6a;
              }
              iVar9 = FUN_006be840();
              piVar14 = *(int **)(iVar9 + 0x340);
              param_1[0xcd] = *(int **)(iVar9 + 0x33c);
              param_1[0xce] = piVar14;
              param_1[0x2d9] = (int *)0x6e;
            }
            else if (ppiVar21[0x2d9] == (int *)0x6b) {
              ppiVar21[0x2d9] = (int *)0x6a;
            }
          }
          ppiVar21[0xd8] = DAT_00c7b640;
          ppiVar21[0xd9] = DAT_00c7b644;
          FUN_005ad1c0();
          ppiVar21 = DAT_00baa2d0;
          break;
        }
      }
      else {
        appiStack_334[0] = (int **)param_1[0xcf];
        appiStack_32c[0] = (int **)param_1[0xd0];
        fVar22 = ((float)ppiVar21[0xd0] - (float)appiStack_32c[0]) *
                 ((float)ppiVar21[0xd0] - (float)appiStack_32c[0]) +
                 ((float)ppiVar21[0xcf] - (float)appiStack_334[0]) *
                 ((float)ppiVar21[0xcf] - (float)appiStack_334[0]);
        FUN_00435a50();
        if (fVar22 <= DAT_00baa904) goto LAB_005a9793;
        ppiStack_358 = (int **)((float)appiStack_334[0] - (float)ppiVar21[0xcf]);
        ppiStack_354 = (int **)((float)appiStack_32c[0] - (float)ppiVar21[0xd0]);
        appiStack_334[0] = ppiStack_358;
        appiStack_32c[0] = ppiStack_354;
        if (cStack_335 == '\0') {
          ppiVar13 = DAT_00baa2d0;
          FUN_00684cb0();
          local_350[0] = (int **)((float)ppiVar13 * (float)ppiVar21[0xd8]);
          ppiVar21[0xd8] = (int *)local_350[0];
          ppiVar21[0xd9] = (int *)((float)ppiVar13 * (float)ppiVar21[0xd9]);
          pfVar6 = (float *)FUN_00a10030(auStack_2fc);
          fVar20 = (float)appiStack_32c[0] * (float)appiStack_32c[0] +
                   (float)appiStack_334[0] * (float)appiStack_334[0];
          FUN_00435a50();
          fVar22 = pfVar6[1];
          local_31c[0] = (int **)0x0;
          ppiStack_348 = (int **)(fVar20 - (float)param_1[0x2ed]);
          pppiVar5 = &ppiStack_348;
          if ((float)(int **)(fVar20 - (float)param_1[0x2ed]) <= 0.0) {
            pppiVar5 = local_31c;
          }
          ppiVar21 = *pppiVar5;
          appiStack_314[0][0xd8] =
               (int *)((float)ppiVar21 * *pfVar6 * (float)appiStack_314[0][0xe7] +
                      (float)local_350[0]);
          appiStack_314[0][0xd9] =
               (int *)((float)ppiVar21 * fVar22 * (float)appiStack_314[0][0xe7] +
                      (float)appiStack_314[0][0xd9]);
          ppiVar21 = DAT_00baa2d0;
          break;
        }
        if (ppiVar21[10] == (int *)0x1) {
          iVar9 = FUN_006eef60();
          FUN_006b64d0((float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                       (float)DAT_00baa2d0 + DAT_00baa198);
          piVar14 = param_1[0xe7];
          local_350[0] = DAT_00baa2d0;
          if ((NAN((float)piVar14) || NAN(DAT_00baa454)) == ((float)piVar14 == DAT_00baa454)) {
            local_350[0] = (int **)((float)DAT_00baa2d0 /
                                   (((float)piVar14 + (float)DAT_00baa2d0) -
                                   (float)piVar14 * (float)DAT_00baa2d0));
          }
          pfVar6 = (float *)FUN_00a10030(&local_340);
          piVar14 = param_1[0xe7];
          fVar22 = pfVar6[1] * DAT_00baa884;
          ppiVar21[0xd8] =
               (int *)(*pfVar6 * DAT_00baa884 * (float)piVar14 +
                      (float)ppiVar21[0xd8] * (float)local_350[0]);
          ppiVar21[0xd9] =
               (int *)(fVar22 * (float)piVar14 + (float)ppiVar21[0xd9] * (float)local_350[0]);
LAB_005a8d84:
          piVar14 = param_1[0x104];
          bVar17 = SBORROW4((int)piVar14,0x3c);
          bVar16 = (int)(piVar14 + -0xf) < 0;
          bVar15 = piVar14 == (int *)&DAT_0000003c;
        }
        else if ((ppiVar21[10] == (int *)0x387) && (ppiVar21[0xb] == (int *)0x1)) {
          piVar14 = param_1[0xe7];
          if ((NAN((float)param_1[0x2ec]) || NAN(DAT_00ba9fe4)) ==
              ((float)param_1[0x2ec] == DAT_00ba9fe4)) {
            if ((int)param_1[0x104] < 0x3d) {
              fVar22 = DAT_00baa3e0;
              if ((NAN((float)piVar14) || NAN(DAT_00baa454)) == ((float)piVar14 == DAT_00baa454)) {
                fVar22 = DAT_00baa3e0 /
                         (((float)piVar14 + DAT_00baa3e0) - (float)piVar14 * DAT_00baa3e0);
              }
              local_350[0] = (int **)((float)ppiVar21[0xd8] * fVar22);
              ppiVar21[0xd8] = (int *)local_350[0];
              ppiVar21[0xd9] = (int *)((float)ppiVar21[0xd9] * fVar22);
              ppiVar21 = (int **)FUN_00a10030(auStack_30c);
              ppiStack_348 = (int **)*ppiVar21;
              local_31c[0] = (int **)ppiVar21[1];
              local_340 = (int **)((uint)appiStack_334[0] ^ DAT_00bacb70);
              ppiStack_33c = (int **)((uint)appiStack_32c[0] ^ DAT_00bacb70);
              appiStack_334[0] = local_340;
              appiStack_32c[0] = ppiStack_33c;
              pfVar6 = (float *)FUN_00a10030(auStack_304);
              local_324[0] = DAT_00baa54c;
              FUN_0041d540();
              ppiVar21 = DAT_00baa54c;
              FUN_0041d520();
              local_340 = ppiVar21;
              ppiVar13 = appiStack_314[0];
              fVar22 = pfVar6[1];
              fVar20 = *pfVar6;
              piVar14 = param_1[0x2ec];
              appiStack_314[0][0xd8] =
                   (int *)((((float)local_324[0] * fVar20 - (float)local_340 * fVar22) *
                            (float)piVar14 + (float)ppiStack_348 * (float)DAT_00baa804) *
                           (float)appiStack_314[0][0xe7] + (float)local_350[0]);
              appiStack_314[0][0xd9] =
                   (int *)((((float)local_324[0] * fVar22 + (float)local_340 * fVar20) *
                            (float)piVar14 + (float)local_31c[0] * (float)DAT_00baa804) *
                           (float)appiStack_314[0][0xe7] + (float)appiStack_314[0][0xd9]);
              iVar9 = FUN_006ac760();
              if ((iVar9 != 0) && (ppiVar13[0x2d9] != (int *)0x6d)) {
                AI_0043ef30();
                fStack_b4 = fStack_b4 - DAT_00baa81c;
                pfVar6 = (float *)FUN_00a10030(auStack_30c);
                fStack_344 = pfVar6[1] * DAT_00baadc0;
                ppiStack_348 = (int **)(*pfVar6 * DAT_00baadc0);
                FUN_006cb2e0(ppiVar13 + 0xcf,&ppiStack_348,0,auStack_b8);
                FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
              }
              if (0x1e < (int)param_1[0x104]) {
                ppiVar21 = (int **)FUN_00a10030(auStack_30c);
                ppiStack_348 = (int **)*ppiVar21;
                local_31c[0] = (int **)ppiVar21[1];
                ppiStack_358 = appiStack_334[0];
                ppiStack_354 = appiStack_32c[0];
                pfVar6 = (float *)FUN_00a10030(auStack_304);
                ppiStack_354 = (int **)((pfVar6[1] * (float)local_324[0] +
                                        *pfVar6 * (float)local_340) * DAT_00baa6fc *
                                        (float)param_1[0x2ec] -
                                       (float)local_31c[0] * (float)DAT_00baa804);
                ppiStack_358 = (int **)((*pfVar6 * (float)local_324[0] -
                                        pfVar6[1] * (float)local_340) * DAT_00baa6fc *
                                        (float)param_1[0x2ec] -
                                       (float)ppiStack_348 * (float)DAT_00baa804);
                FUN_00a10030(&ppiStack_348);
                iVar9 = FUN_006be840();
                ppiStack_358 = (int **)(*(float *)(iVar9 + 0x33c) - (float)param_1[0xcf]);
                ppiStack_354 = (int **)(*(float *)(iVar9 + 0x340) - (float)param_1[0xd0]);
                pfVar6 = (float *)FUN_00a10030(auStack_2ec);
                if (DAT_00baa3c4 < fStack_344 * pfVar6[1] + (float)ppiStack_348 * *pfVar6) {
                  param_1[0x104] = (int *)&DAT_0000003c;
                }
              }
            }
            else {
              fVar22 = DAT_00baa3e0;
              if ((NAN((float)piVar14) || NAN(DAT_00baa454)) == ((float)piVar14 == DAT_00baa454)) {
                fVar22 = DAT_00baa3e0 /
                         (((float)piVar14 + DAT_00baa3e0) - (float)piVar14 * DAT_00baa3e0);
              }
              local_350[0] = (int **)((float)ppiVar21[0xd8] * fVar22);
              ppiVar21[0xd8] = (int *)local_350[0];
              ppiVar21[0xd9] = (int *)((float)ppiVar21[0xd9] * fVar22);
              ppiVar21 = (int **)FUN_00a10030(auStack_304);
              local_31c[0] = (int **)*ppiVar21;
              ppiStack_348 = (int **)ppiVar21[1];
              ppiStack_358 = (int **)((uint)appiStack_334[0] ^ DAT_00bacb70);
              ppiStack_354 = (int **)((uint)appiStack_32c[0] ^ DAT_00bacb70);
              appiStack_334[0] = ppiStack_358;
              appiStack_32c[0] = ppiStack_354;
              pfVar6 = (float *)FUN_00a10030(auStack_30c);
              local_324[0] = DAT_00baa54c;
              FUN_0041d540();
              ppiVar21 = DAT_00baa54c;
              FUN_0041d520();
              local_340 = ppiVar21;
              fVar22 = *pfVar6;
              fVar20 = pfVar6[1];
              piVar14 = param_1[0x2ec];
              fVar19 = (float)ppiStack_348 * (float)DAT_00baa804;
              appiStack_314[0][0xd8] =
                   (int *)((((float)local_324[0] * fVar22 - (float)local_340 * fVar20) *
                            (float)piVar14 - (float)local_31c[0] * (float)DAT_00baa804) *
                           (float)appiStack_314[0][0xe7] + (float)local_350[0]);
              appiStack_314[0][0xd9] =
                   (int *)((((float)local_324[0] * fVar20 + (float)local_340 * fVar22) *
                            (float)piVar14 - fVar19) * (float)appiStack_314[0][0xe7] +
                          (float)appiStack_314[0][0xd9]);
              ppiVar13 = appiStack_314[0];
            }
            ppiVar21 = DAT_00baa2d0;
            if (*(char *)(ppiVar13 + 100) == '\0') break;
            ppiStack_358 = appiStack_334[0];
            ppiStack_354 = appiStack_32c[0];
            pfVar6 = (float *)FUN_00a10030(&ppiStack_348);
            fVar19 = (float)((uint)param_1[0x2ec] ^ DAT_00bacb70);
            fVar22 = *pfVar6;
            fVar20 = pfVar6[1];
            ppiVar13[0xd8] =
                 (int *)((fVar22 * (float)local_324[0] - fVar20 * (float)local_340) * fVar19);
            ppiVar13[0xd9] =
                 (int *)((fVar20 * (float)local_324[0] + fVar22 * (float)local_340) * fVar19);
            FUN_006d6ba0(0x34,0x3f800000,10,0,0x3f800000);
            FUN_00703670(0xf);
            AI_0043ef30();
            fStack_204 = fStack_204 - DAT_00baa81c;
            uStack_174 = 9;
            if (ppiVar13[0x2d9] == (int *)0x6d) {
              uVar10 = FUN_006eef60();
              iVar9 = (uVar10 & 1) + 6;
            }
            else {
              uVar10 = FUN_006eef60();
              iVar9 = (uVar10 & 3) + 10;
            }
            FUN_006ccdd0(iVar9,&DAT_00c7b640,0,auStack_208);
            fVar22 = (float)param_1[0xd0] - (float)param_1[0x2fb][0xd0];
            fVar20 = (float)param_1[0xcf] - (float)param_1[0x2fb][0xcf];
            piVar14 = (int *)(fVar22 * fVar22 + fVar20 * fVar20);
            FUN_00435a50();
            param_1[0x2ed] = piVar14;
            cVar3 = FUN_0040a5d0("Rewind2",1);
            if (cVar3 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
              ppiVar13 = appiStack_314[0];
            }
            if (param_1[0x1f] != (int *)0x0) {
              FUN_00408e00();
            }
            ppiStack_358 = (int **)((float)ppiVar13[0x67] * DAT_00baad50);
            ppiStack_354 = (int **)((float)ppiVar13[0x68] * DAT_00baad50);
            FUN_005a7010();
            param_1[0x2ec] = (int *)0x0;
            goto LAB_005a94a3;
          }
          fVar22 = DAT_00baa3e0;
          if ((NAN((float)piVar14) || NAN(DAT_00baa454)) == ((float)piVar14 == DAT_00baa454)) {
            fVar22 = DAT_00baa3e0 /
                     (((float)piVar14 + DAT_00baa3e0) - (float)piVar14 * DAT_00baa3e0);
          }
          ppiStack_348 = (int **)(fVar22 * (float)ppiVar21[0xd8]);
          ppiVar21[0xd8] = (int *)ppiStack_348;
          ppiVar21[0xd9] = (int *)(fVar22 * (float)ppiVar21[0xd9]);
          pfVar6 = (float *)FUN_00a10030(local_324);
          fVar22 = pfVar6[1] * (float)DAT_00baa854;
          ppiVar21[0xd8] =
               (int *)(*pfVar6 * (float)DAT_00baa854 * (float)ppiVar21[0xe7] + (float)ppiStack_348);
          ppiVar21[0xd9] = (int *)(fVar22 * (float)ppiVar21[0xe7] + (float)ppiVar21[0xd9]);
          if (param_1[0x2f0] != (int *)0x1) goto LAB_005a8d84;
          pfVar6 = (float *)FUN_00a10030(appiStack_334);
          fVar22 = pfVar6[1] * (float)DAT_00baa854;
          param_1[0xd8] = (int *)((float)param_1[0xd8] - *pfVar6 * (float)DAT_00baa854);
          param_1[0xd9] = (int *)((float)param_1[0xd9] - fVar22);
          piVar14 = param_1[0x104];
          bVar17 = SBORROW4((int)piVar14,0x3c);
          bVar16 = (int)(piVar14 + -0xf) < 0;
          bVar15 = piVar14 == (int *)&DAT_0000003c;
        }
        else {
          fVar22 = DAT_00baa3e0;
          FUN_00684cb0();
          ppiStack_348 = (int **)(fVar22 * (float)ppiVar21[0xd8]);
          ppiVar21[0xd8] = (int *)ppiStack_348;
          ppiVar21[0xd9] = (int *)(fVar22 * (float)ppiVar21[0xd9]);
          pfVar6 = (float *)FUN_00a10030(appiStack_32c);
          fVar22 = pfVar6[1] * (float)DAT_00baa854;
          ppiVar21[0xd8] =
               (int *)(*pfVar6 * (float)DAT_00baa854 * (float)ppiVar21[0xe7] + (float)ppiStack_348);
          ppiVar21[0xd9] = (int *)(fVar22 * (float)ppiVar21[0xe7] + (float)ppiVar21[0xd9]);
          piVar14 = param_1[0x104];
          bVar17 = SBORROW4((int)piVar14,0x3c);
          bVar16 = (int)(piVar14 + -0xf) < 0;
          bVar15 = piVar14 == (int *)&DAT_0000003c;
        }
LAB_005a8ba1:
        ppiVar21 = DAT_00baa2d0;
        if (bVar15 || bVar17 != bVar16) break;
      }
      FUN_005ad1c0();
      ppiVar21 = DAT_00baa2d0;
      break;
    }
LAB_005a98f3:
    piVar14 = param_1[0xf0];
    if ((piVar14 != (int *)0x0) && (piVar14[0x2d9] == 0x6b)) {
      piVar14[0x2d9] = 0x6a;
    }
    goto LAB_005a9910;
  case (int *)0x6d:
    FUN_0040a380(&DAT_00b1d428,0);
    piVar14 = (int *)FUN_0044bc90(0);
    iVar9 = *piVar14;
    if ((iVar9 != 0) && (*(int *)(iVar9 + 0xb64) == 0x6c)) {
      FUN_0067f1d0();
      ppiStack_348 = (int **)FUN_006be840();
      ppiVar21 = DAT_00baa54c;
      FUN_0041d540();
      local_350[0] = ppiVar21;
      ppiVar21 = DAT_00baa54c;
      FUN_0041d520();
      local_31c[0] = (int **)((float)local_350[0] * (float)ppiStack_358 -
                             (float)ppiVar21 * (float)ppiStack_354);
      local_350[0] = (int **)((float)local_350[0] * (float)ppiStack_354 +
                             (float)ppiVar21 * (float)ppiStack_358);
      cVar3 = FUN_0040b090("Break");
      fVar22 = ((float)ppiStack_348[0xd0] - (float)param_1[0xd0]) * (float)local_350[0] +
               ((float)ppiStack_348[0xcf] - (float)param_1[0xcf]) * (float)local_31c[0];
      if (fVar22 <= DAT_00baa81c) {
        if (fVar22 < DAT_00baadc0) {
          fVar22 = DAT_00baa354;
          if (cVar3 != '\0') {
            fVar22 = DAT_00baa078;
          }
          fVar22 = (float)((uint)fVar22 ^ DAT_00bacb70);
          goto LAB_005a9a6a;
        }
      }
      else {
        fVar22 = DAT_00baa354;
        if (cVar3 != '\0') {
          fVar22 = DAT_00baa078;
        }
LAB_005a9a6a:
        param_1[0xd9] =
             (int *)(fVar22 * (float)local_350[0] * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xd8] =
             (int *)(fVar22 * (float)local_31c[0] * (float)param_1[0xe7] + (float)param_1[0xd8]);
      }
      ppiVar21 = DAT_00baa2d0;
      if (cVar3 == '\0') {
        if (0.0 < ((float)ppiStack_348[0xd0] - (float)param_1[0xd0]) * (float)ppiStack_354 +
                  ((float)ppiStack_348[0xcf] - (float)param_1[0xcf]) * (float)ppiStack_358) {
          param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
          param_1[0xd8] =
               (int *)((float)ppiStack_358 * (float)ppiVar21 * (float)param_1[0xe7] +
                      (float)param_1[0xd8]);
          piVar14 = (int *)((float)ppiStack_354 * (float)ppiVar21 * (float)param_1[0xe7] +
                           (float)param_1[0xd9]);
          goto LAB_005a9ba6;
        }
      }
      else {
        fVar22 = (float)ppiStack_358 * (float)DAT_00baa2d0;
        param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa418);
        param_1[0xd8] = (int *)((float)param_1[0xd8] - fVar22 * (float)param_1[0xe7]);
        piVar14 = (int *)((float)param_1[0xd9] -
                         (float)ppiStack_354 * (float)ppiVar21 * (float)param_1[0xe7]);
LAB_005a9ba6:
        param_1[0xd9] = piVar14;
      }
      fVar22 = (float)ppiStack_354 * DAT_00baa904 + (float)param_1[0xd0] + DAT_00baa454;
      *(float *)(iVar9 + 0x33c) = (float)ppiStack_358 * DAT_00baa904 + (float)param_1[0xcf] + 0.0;
      *(float *)(iVar9 + 0x340) = fVar22;
      *(int **)(iVar9 + 0x360) = param_1[0xd8];
      *(int **)(iVar9 + 0x364) = param_1[0xd9];
      break;
    }
    goto LAB_005a9910;
  case (int *)0x6e:
    FUN_0040a380(&DAT_00b1e0e4,0);
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa304);
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      param_1[0x62] = (int *)0x0;
    }
    if ((param_1[0x1f] == (int *)0x0) ||
       (ppiVar21 = DAT_00baa2d0, *(char *)(param_1 + 0x23) == '\0')) {
      param_1[0xcf] = param_1[0xcd];
      param_1[0xd0] = param_1[0xce];
      param_1[0x2d9] = (int *)0x6f;
      ppiVar21 = DAT_00baa2d0;
    }
    break;
  case (int *)0x6f:
    FUN_0040a380("JumpDown",0);
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa304);
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      param_1[0x62] = (int *)&DAT_00000004;
      FUN_006d6ba0(0x34,0x40000000,2,0,0x3f800000);
      FUN_00703670(0xf);
      AI_0043ef30();
      fStack_15c = fStack_15c - DAT_00baa81c;
      uStack_cc = 9;
      uVar10 = FUN_006eef60();
      FUN_006ccdd0((uVar10 & 3) + 10,&DAT_00c7b640,0,auStack_160);
      local_350[0] = (int **)0x0;
      do {
        uVar8 = FUN_006eef60();
        local_31c[0] = (int **)FUN_006fe410(1000,0x48,param_1 + 0xcf,&DAT_00c7b640,param_1,1,uVar8,0
                                           );
        ppiVar21 = local_31c[0] + 0xef;
        if (local_31c[0][0xef] != (int *)0x0) {
          ppiStack_348 = ppiVar21;
          FUN_004cf210(&ppiStack_348);
        }
        *ppiVar21 = (int *)param_1;
        FUN_004cdcf0(ppiVar21);
        ppiVar21 = (int **)((int)local_350[0] + 1);
        local_31c[0][0x11d] = (int *)((float)(int)local_350[0] * DAT_00baa9b4 + DAT_00baa910);
        local_350[0] = ppiVar21;
      } while ((int)ppiVar21 < 4);
    }
    if ((param_1[0x1f] != (int *)0x0) &&
       (ppiVar21 = DAT_00baa2d0, *(char *)(param_1 + 0x23) != '\0')) break;
LAB_005a9910:
    param_1[0x2d9] = (int *)0x69;
    uVar10 = FUN_006eef60();
    param_1[0x2e8] = (int *)(uVar10 % 0x1e + 0xf);
    ppiVar21 = DAT_00baa2d0;
    break;
  case (int *)0x70:
  case (int *)0x71:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa120);
    FUN_0040a380("Transition2",0);
    cVar3 = FUN_0040b030("Break");
    if (cVar3 != '\0') {
      uVar8 = FUN_004238f0(0x3f800000);
      iVar9 = FUN_006eef60();
      ppiStack_348 = (int **)((float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa75c);
      uVar10 = FUN_006eef60();
      ppiVar21 = local_350[0] + 0xcf;
      FUN_00703330(ppiVar21,0x23,(uVar10 & 7) + 8,ppiStack_348,uVar8,0x47c35000,0);
      uVar8 = FUN_006eef60();
      FUN_006fe410(1000,0xf,ppiVar21,&DAT_00c7b640,0,0,uVar8,0);
      param_1 = local_350[0];
      FUN_006d6ba0(0x89,0x3f800000,2,0,0x3f800000);
      param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xffffffee);
      param_1[0x2d9] = (int *)0x71;
      *(undefined *)(param_1 + 0xec) = 0;
      param_1[0x5b] = param_1[0x5b];
    }
    if ((param_1[0x1f] == (int *)0x0) ||
       (ppiVar21 = DAT_00baa2d0, *(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = (int *)0x72;
      ppiVar21 = DAT_00baa2d0;
    }
    break;
  case (int *)0x72:
    FUN_0040a380(&DAT_00b1d43c,0);
    if ((param_1[0xf0] == (int *)0x0) || (param_1[0xf0][0x2d9] == 0x6d)) {
      param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa380);
      FUN_007e6650(0);
    }
    else {
      param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa380);
      FUN_006be840();
      uVar10 = FUN_006eef60();
      if ((uVar10 % 0x14 == 0) ||
         ((DAT_00ba9fe4 < (float)param_1[5] && (uVar10 = FUN_006eef60(), (uVar10 & 3) == 0)))) {
        FUN_005a7920();
      }
      ppiStack_358 = (int **)((float)param_1[0xcd] - (float)param_1[0xcf]);
      ppiStack_354 = (int **)((float)param_1[0xce] - (float)param_1[0xd0]);
      ppiStack_348 = ppiStack_354;
      local_31c[0] = ppiStack_358;
      pfVar6 = (float *)FUN_00a10030(auStack_2e4);
      local_350[0] = (int **)0x40400000;
      fVar20 = (float)ppiStack_348 * (float)ppiStack_348 + (float)local_31c[0] * (float)local_31c[0]
      ;
      FUN_00435a50();
      fVar22 = pfVar6[1];
      ppiStack_348 = (int **)(fVar20 * DAT_00baa120);
      pppiVar5 = local_350;
      if ((float)(int **)(fVar20 * DAT_00baa120) <= DAT_00baa6fc) {
        pppiVar5 = &ppiStack_348;
      }
      ppiVar21 = *pppiVar5;
      param_1[0xd8] =
           (int *)((float)*pppiVar5 * *pfVar6 * (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] =
           (int *)(fVar22 * (float)ppiVar21 * (float)param_1[0xe7] + (float)param_1[0xd9]);
    }
    piVar14 = param_1[0x2e8];
    if (0 < (int)piVar14) {
      piVar14 = (int *)((int)piVar14 + -1);
      param_1[0x2e8] = piVar14;
    }
    ppiVar21 = DAT_00baa2d0;
    if ((piVar14 != (int *)0x0) ||
       (uVar10 = FUN_006eef60(), ppiVar21 = DAT_00baa2d0, uVar10 % 0xf != 0)) break;
    iVar9 = FUN_006d0c60(auStack_2fc,0x387,0x14);
    iVar9 = *(int *)(iVar9 + 0xc);
    FUN_004175b0();
    if (iVar9 < 3) {
      if (0 < iVar9) goto LAB_005aa16b;
    }
    else {
      uVar10 = FUN_006eef60();
      if ((uVar10 & 1) == 0) {
        param_1[0x2d9] = (int *)0x76;
        FUN_0040a380("Attack4",0);
        param_1[0x2e8] = (int *)0x0;
LAB_005a94a3:
        param_1[0x104] = (int *)0x0;
        ppiVar21 = DAT_00baa2d0;
        break;
      }
LAB_005aa16b:
      uVar10 = FUN_006eef60();
      if ((uVar10 % 3 == 0) || (iVar7 = FUN_005a7510(), iVar7 <= iVar9)) {
        param_1[0x2d9] = (int *)0x74;
        FUN_0040a380(&DAT_00b1d2e4,0);
        param_1[0x2e8] = (int *)0x0;
        ppiVar21 = DAT_00baa2d0;
        break;
      }
    }
    iVar7 = FUN_005a7510();
    ppiVar21 = DAT_00baa2d0;
    if (iVar9 < iVar7) {
      param_1[0x2d9] = (int *)0x73;
      param_1[0x2f0] = (int *)0x0;
      ppiVar21 = DAT_00baa2d0;
      if (((param_1[0xf0] != (int *)0x0) && (param_1[0xf0][0x2d9] == 0x6d)) &&
         ((iVar9 == 0 || (uVar10 = FUN_006eef60(), ppiVar21 = DAT_00baa2d0, (uVar10 & 1) == 0)))) {
        param_1[0x2f0] = (int *)0x1;
        ppiVar21 = DAT_00baa2d0;
      }
    }
    break;
  case (int *)0x73:
    FUN_0040a380("Attack",0);
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      uVar10 = FUN_006eef60();
      local_350[0] = (int **)(((float)((double)(uVar10 & 3) + DAT_00bacb00) * DAT_00baa9b4 +
                              DAT_00baa910) * DAT_00baa088);
      uVar8 = FUN_006eef60();
      ppiVar21 = local_350[0];
      FUN_0041d540();
      ppiStack_358 = (int **)((float)ppiVar21 * DAT_00baa81c);
      ppiVar21 = local_350[0];
      FUN_0041d520();
      ppiStack_354 = (int **)((float)ppiVar21 * DAT_00baa81c);
      iVar9 = FUN_00428b20(0x387,0x14,param_1 + 0xcf,&ppiStack_358,param_1,0,uVar8);
      *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
      FUN_006a92a0(param_1);
      if ((param_1[0x2f0] != (int *)0x0) && (param_1[0xf0] != (int *)0x0)) {
        FUN_006a9320(param_1[0xf0]);
      }
      FUN_006d6ba0(0x1d7,0x3f800000,2,0,0x3f800000);
      FUN_006d6ba0(0xd5,0x3f800000,2,0,0x3f800000);
    }
    goto LAB_005aa33f;
  case (int *)0x74:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa354);
    if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380("Attack3Loop",0);
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      FUN_006d6ba0(0x10b,0x3f000000,2,0,0x3f800000);
      FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
      local_350[0] = (int **)0x0;
      do {
        ppiVar21 = (int **)((float)(int)local_350[0] * DAT_00baa888 * DAT_00baa088);
        ppiStack_348 = ppiVar21;
        FUN_0041d540();
        ppiStack_358 = (int **)((float)ppiVar21 * DAT_00baa81c);
        ppiVar21 = ppiStack_348;
        FUN_0041d520();
        ppiStack_354 = (int **)((float)ppiVar21 * DAT_00baa81c);
        uVar8 = FUN_006eef60();
        piVar14 = (int *)FUN_006fe410(9,0,param_1 + 0xcf,&ppiStack_358,param_1,1,uVar8,0);
        piVar14[0x104] = -0x3e600000;
        piVar14[0x105] = 0;
        piVar14[0x108] = 0x3f800000;
        piVar14[0x10e] = 0x2000;
        piVar14[0x10f] = 0;
        if (piVar14[0xef] != 0) {
          ppiStack_348 = (int **)(piVar14 + 0xef);
          FUN_004cf210(&ppiStack_348);
        }
        piVar14[0xef] = (int)param_1;
        FUN_004cdcf0(piVar14 + 0xef);
        piVar18 = param_1[0xd0];
        piVar14[0xcd] = (int)param_1[0xcf];
        piVar14[0xce] = (int)piVar18;
        (**(code **)(*piVar14 + 0xc))();
        local_350[0] = (int **)((int)local_350[0] + 1);
      } while ((int)local_350[0] < 0x10);
    }
    param_1[0x2e8] = (int *)((int)param_1[0x2e8] + 1);
    iVar9 = DAT_00c71678;
    ppiVar21 = DAT_00baa2d0;
    if (0x3c < (int)param_1[0x2e8]) {
      uVar10 = 0;
      param_1[0x2d9] = (int *)0x75;
      iVar9 = *(int *)(iVar9 + 0x18300);
      ppiVar21 = DAT_00baa2d0;
      if (*(int *)(iVar9 + 0x1264) != 0) {
        do {
          iVar7 = *(int *)(*(int *)(iVar9 + 0x125c) + uVar10 * 4);
          if (((*(int *)(iVar7 + 0x28) == 9) && (*(int ***)(iVar7 + 0x3bc) == param_1)) &&
             (*(int *)(iVar7 + 0x30) == 1)) {
            *(undefined4 *)(iVar7 + 0x30) = 2;
          }
          uVar10 = uVar10 + 1;
          ppiVar21 = DAT_00baa2d0;
        } while (uVar10 < *(uint *)(iVar9 + 0x1264));
      }
    }
    break;
  case (int *)0x75:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa354);
    FUN_0040a380("Attack3End",0);
LAB_005aa33f:
    if ((param_1[0x1f] == (int *)0x0) ||
       (ppiVar21 = DAT_00baa2d0, *(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = (int *)0x72;
      uVar10 = FUN_006eef60();
      param_1[0x2e8] = (int *)(uVar10 % 0x1e + 0x1e);
      ppiVar21 = DAT_00baa2d0;
    }
    break;
  case (int *)0x76:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa354);
    if ((3 < (int)param_1[0x2e8]) && (cVar3 = FUN_0040b090("Break"), cVar3 == '\0')) {
      if ((param_1[0x2e8] == (int *)&DAT_00000004) &&
         ((param_1[0xf0] != (int *)0x0 && (param_1[0xf0][0x2d9] != 0x6d)))) {
        FUN_005ab3e0();
        uVar8 = FUN_006eef60();
        iVar9 = FUN_006fe410(0x387,0x14,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar8,0);
        *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
        *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
        FUN_006a92a0(param_1);
        FUN_006d6ba0(0x1d7,0x3f800000,2,0,0x3f800000);
      }
      appiStack_334[0] = (int **)0x0;
      ppiStack_348 = *(int ***)(DAT_00c71678 + 0x18300);
      iVar9 = DAT_00c71678;
      if (ppiStack_348[0x499] != (int *)0x0) {
        do {
          ppiVar21 = (int **)ppiStack_348[0x497][(int)appiStack_334[0]];
          if (ppiVar21 != param_1) {
            if ((*(int *)(iVar9 + 0x26614) < 2) || (ppiVar21[10] != (int *)0x1)) {
              local_350[0] = (int **)ppiVar21[10];
              if ((((undefined *)0x3dd < (undefined *)((int)local_350[0] + -10)) ||
                  (local_350[0] == (int **)0x21)) &&
                 ((((local_350[0] != (int **)0x1 && (local_350[0] != (int **)0x2)) &&
                   (local_350[0] != (int **)0x9)) &&
                  (iVar9 = DAT_00c71678, local_350[0] != (int **)&DAT_00000005))))
              goto LAB_005aa83d;
            }
            else {
              local_350[0] = (int **)0x1;
            }
            appiStack_314[0] = (int **)((float)param_1[0xd0] - (float)ppiVar21[0xd0]);
            local_324[0] = (int **)((float)param_1[0xcf] - (float)ppiVar21[0xcf]);
            fVar20 = (float)appiStack_314[0] * (float)appiStack_314[0] +
                     (float)local_324[0] * (float)local_324[0];
            FUN_00435a50();
            fVar22 = ((DAT_00baab98 - fVar20) * DAT_00baa3e0) / DAT_00baab98;
            if (fVar22 <= 0.0) {
              fVar22 = 0.0;
            }
            if (DAT_00baa3e0 <= fVar22) {
              fVar22 = DAT_00baa3e0;
            }
            ppiVar24 = local_324[0];
            ppiVar13 = appiStack_314[0];
            if (0.0 < fVar20) {
              ppiVar24 = (int **)((float)local_324[0] * (DAT_00baa454 / fVar20));
              ppiVar13 = (int **)((DAT_00baa454 / fVar20) * (float)appiStack_314[0]);
            }
            if (local_350[0] == (int **)0x1) {
              fVar22 = fVar22 * DAT_00baa304;
            }
            else if (((local_350[0] == (int **)0x387) && (ppiVar21[0xb] == (int *)&DAT_00000014)) &&
                    ((int **)ppiVar21[0xef] == param_1)) {
              fVar22 = fVar22 * DAT_00baa554;
              ppiVar21[0x2d9] = (int *)&DAT_00000004;
            }
            iVar9 = DAT_00c71678;
            piVar14 = ppiVar21[0xdb];
            if (NAN((float)piVar14) == ((float)piVar14 == 0.0)) {
              ppiVar21[0xd8] =
                   (int *)(((float)ppiVar24 * fVar22 * (float)ppiVar21[0xe7]) / (float)piVar14 +
                          (float)ppiVar21[0xd8]);
              ppiVar21[0xd9] =
                   (int *)(((float)ppiVar13 * fVar22 * (float)ppiVar21[0xe7]) / (float)piVar14 +
                          (float)ppiVar21[0xd9]);
            }
          }
LAB_005aa83d:
          appiStack_334[0] = (int **)((int)appiStack_334[0] + 1);
        } while (appiStack_334[0] < ppiStack_348[0x499]);
      }
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      FUN_006d6ba0(0x130,0x3f800000,2,0,0x3f800000);
      ppiStack_354 = (int **)0xc1a00000;
      local_350[0] = (int **)0x0;
      ppiStack_358 = (int **)0x0;
      do {
        ppiStack_348 = (int **)((float)(int)local_350[0] * DAT_00baa9b4 + DAT_00baa910);
        piVar14 = (int *)FUN_0096f310(1,param_1 + 0xcf,ppiStack_348,0x14,&ppiStack_358,param_1,0);
        fVar22 = (float)ppiStack_348 * DAT_00baa088;
        FUN_0041d520();
        iVar9 = 0;
        if (0.0 <= fVar22) {
          iVar9 = DAT_00baabc4;
        }
        piVar14[0xd6] = iVar9;
        piVar14[0x134] = 0x42c80000;
        (**(code **)(*piVar14 + 0xc))();
        local_350[0] = (int **)((int)local_350[0] + 1);
      } while ((int)local_350[0] < 4);
    }
    if (param_1[0x1f] == (int *)0x0) {
LAB_005aaa9f:
      param_1[0x2d9] = (int *)0x72;
      uVar10 = FUN_006eef60();
      iVar9 = DAT_00c71678;
      uVar11 = 0;
      param_1[0x2e8] = (int *)(uVar10 % 0x1e + 0x1e);
      iVar9 = *(int *)(iVar9 + 0x18300);
      if (*(int *)(iVar9 + 0x1264) != 0) {
        do {
          iVar7 = *(int *)(*(int *)(iVar9 + 0x125c) + uVar11 * 4);
          if (((*(int *)(iVar7 + 0x28) == 0x387) && (*(int *)(iVar7 + 0x2c) == 0x14)) &&
             (*(int ***)(iVar7 + 0x3bc) == param_1)) {
            *(undefined4 *)(iVar7 + 0xb64) = 3;
          }
          uVar11 = uVar11 + 1;
        } while (uVar11 < *(uint *)(iVar9 + 0x1264));
      }
    }
    else {
      cVar3 = FUN_0040ae70("Shoot");
      if (((cVar3 != '\0') && (iVar9 = FUN_006ac760(), iVar9 != 0)) && (0 < (int)param_1[0x104])) {
        param_1[0x104] = (int *)((int)param_1[0x104] + -1);
        local_350[0] = (int **)0x0;
        do {
          ppiVar21 = (int **)(((float)(int)local_350[0] * (float)DAT_00baa854 +
                              (float)(int)param_1[0x104] * DAT_00baa7c8) * DAT_00baa088);
          ppiStack_348 = ppiVar21;
          FUN_0041d540();
          ppiStack_358 = (int **)((float)ppiVar21 * DAT_00baa848);
          ppiVar21 = ppiStack_348;
          FUN_0041d520();
          ppiStack_354 = (int **)((float)ppiVar21 * DAT_00baa848);
          uVar8 = FUN_006eef60();
          piVar14 = (int *)FUN_006fe410(9,2,param_1 + 0xcf,&ppiStack_358,param_1,0,uVar8,0);
          (**(code **)(*piVar14 + 0x3c))(&DAT_00c34d78,0xffffffff,0xff,0,1);
          piVar14[0x10e] = 0x2080;
          piVar14[0x10f] = 0;
          if (piVar14[0xef] != 0) {
            FUN_004cf210(&stack0xfffffca4);
          }
          piVar14[0xef] = (int)param_1;
          FUN_004cdcf0(piVar14 + 0xef);
          (**(code **)(*piVar14 + 0xc))();
          local_350[0] = (int **)((int)local_350[0] + 1);
        } while ((int)local_350[0] < 0x18);
      }
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_005aaa9f;
    }
    param_1[0x2e8] = (int *)((int)param_1[0x2e8] + (int)local_340);
    ppiVar21 = DAT_00baa2d0;
  }
  piVar14 = param_1[0x2d9];
  if (piVar14 < (int *)0x71) {
    if (piVar14 < &DAT_00000068) {
      if ((param_1[0x2fb] == (int *)0x0) && (piVar14 != (int *)0x67)) {
        FUN_0092e230(0x1f7);
        if (param_1[0xf0] != (int *)0x0) {
          param_1[0xf0][0x2d9] = 0x68;
        }
        param_1[0x2d9] = (int *)0x67;
      }
    }
    else {
      piVar18 = param_1[5];
      if ((float)param_1[0xe0] - (float)piVar18 <= (float)param_1[0xe1] * (float)ppiVar21) {
        if (piVar14 == (int *)0x69) {
          param_1[0x2d9] = (int *)0x70;
        }
        else if (0.0 < (float)piVar18) {
          piVar23 = (int *)((float)param_1[0xe0] - (float)param_1[0xe1] * (float)ppiVar21);
          piVar14 = piVar18;
          if ((float)piVar23 <= (float)piVar18) {
            piVar14 = piVar23;
          }
          param_1[5] = (int *)0x0;
          pfVar4 = (float *)param_1[3];
          for (pfVar6 = (float *)param_1[2]; pfVar6 != pfVar4; pfVar6 = pfVar6 + 0xe) {
            fVar22 = ((float)piVar14 / (float)piVar18) * *pfVar6;
            *pfVar6 = fVar22;
            param_1[5] = (int *)(fVar22 + (float)param_1[5]);
          }
        }
      }
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    piVar14 = (int *)0x0;
    local_324[0] = *(int ***)(DAT_00c71678 + 0x18300);
    if (local_324[0][0x499] != (int *)0x0) {
      do {
        piVar18 = (int *)local_324[0][0x497][(int)piVar14];
        if (piVar18[10] == 9) {
          if ((int **)piVar18[0xef] != param_1) {
LAB_005aac26:
            bVar15 = false;
            goto LAB_005aac28;
          }
          *(undefined *)((int)piVar18 + 0x173) = 1;
        }
        else {
          if ((piVar18[10] != 0x387) || (piVar18[0xb] != 0x14)) goto LAB_005aac26;
          bVar15 = true;
LAB_005aac28:
          if (bVar15) {
            local_2cc = param_1[0xcf];
            local_2c8 = param_1[0xd0];
            local_31c[0] = *(int ***)(*piVar18 + 0x24);
            local_2dc = param_1[10];
            local_2d8 = param_1[0xb];
            local_2d4 = param_1[0xd];
            local_2d0 = param_1[0xe];
            local_2c4 = param_1[0xd8];
            local_2c0 = param_1[0xd9];
            local_340 = (int **)(uint)(((uint)param_1[0x5a] & 0x100) != 0);
            local_350[0] = (int **)0x2;
            if (((uint)param_1[0x5a] & 0x20000000) == 0) {
              local_350[0] = (int **)0x0;
            }
            if (((uint)param_1[0x5b] & 0x400000) == 0) {
              uVar10 = 0;
            }
            else {
              uVar10 = 4;
            }
            local_2bc = uVar10 | (uint)local_350[0] | (uint)local_340;
            local_2b8 = param_1;
            (*(code *)local_31c[0])(&local_2dc);
          }
        }
        piVar14 = (int *)((int)piVar14 + 1);
      } while (piVar14 < local_324[0][0x499]);
    }
  }
  FUN_00aef12b();
  return;
}

