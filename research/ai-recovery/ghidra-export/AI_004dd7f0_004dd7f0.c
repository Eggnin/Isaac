/* Local J460 decompiler output.
 * VA: 0x004dd7f0
 * Entry: 004dd7f0
 * Dispatcher: 0x006c2990
 * Types: 856
 * Identities: 856.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004ddf00; instructions=439
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=856; identities=856.0.0; dispatcher=0x006c2990;
   end=0x004ddf00; instructions=439 */

int __fastcall AI_004dd7f0(int param_1)

{
  char cVar1;
  uint uVar2;
  float *pfVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  int *piVar6;
  int iVar7;
  int iVar8;
  int **ppiVar9;
  float fVar10;
  char local_50 [8];
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  int **local_34;
  int **local_30;
  int **local_2c;
  int local_28;
  char local_21;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3a60;
  local_1c = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_28 = *(int *)(DAT_00c71678 + 0x18300);
  ppiVar9 = (int **)((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  iVar7 = *(int *)(param_1 + 0xb64);
  if (iVar7 == 0) {
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    local_34 = (int **)0x0;
    puStack_20 = &stack0xfffffffc;
    do {
      local_30 = (int **)((float)((double)(int)local_34 +
                                 (double)(&DAT_00bacb00)[-((int)local_34 >> 0x1f)]) * DAT_00baa910 *
                         DAT_00baa088);
      ppiVar9 = local_30;
      FUN_0041d540(uVar2);
      local_2c = ppiVar9;
      ppiVar9 = local_30;
      FUN_0041d520();
      local_48 = ((float)local_2c * DAT_00baa9d0 - (float)ppiVar9 * 0.0) +
                 *(float *)(param_1 + 0x33c);
      local_44 = (float)ppiVar9 * DAT_00baa9d0 + (float)local_2c * 0.0 + *(float *)(param_1 + 0x340)
      ;
      uVar5 = FUN_006eef60();
      piVar6 = (int *)FUN_006fe410(1000,0x8d,&local_48,&DAT_00c7b640,param_1,0,uVar5,0);
      if (piVar6[0xef] != 0) {
        local_30 = (int **)(piVar6 + 0xef);
        FUN_004cf210(&local_30);
      }
      piVar6[0xef] = param_1;
      FUN_004cdcf0(piVar6 + 0xef);
      piVar6[0x117] = 0x3c;
      piVar6[0x118] = 0x3c;
      (**(code **)(*piVar6 + 0xc))();
      local_34 = (int **)((int)local_34 + 1);
    } while (local_34 < (int **)0x8);
    uVar2 = FUN_006eef60();
    *(uint *)(param_1 + 0xba0) = uVar2 % 0x1e + 0xf;
  }
  else {
    local_30 = ppiVar9;
    if (iVar7 == 3) {
      FUN_0040a380(&DAT_00b1bc54,0);
      *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) - (int)ppiVar9;
      if (*(int *)(param_1 + 0xba0) < 1) {
        AI_0041af60(local_50,0x364,0xffffffff,0xffffffff,0,0);
        local_21 = (uint)local_44 < 8;
        if (local_50[0] == '\0') {
          local_14 = 0;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
        if (local_21 != '\0') {
          *(undefined4 *)(param_1 + 0xba0) = 0;
          *(undefined4 *)(param_1 + 0xb64) = 8;
          FUN_0040a380("Attack",0);
        }
      }
      goto LAB_004dde15;
    }
    if (iVar7 != 8) goto LAB_004dde15;
    puStack_20 = &stack0xfffffffc;
    if (*(int *)(param_1 + 0x7c) != 0) {
      puStack_20 = &stack0xfffffffc;
      cVar1 = FUN_0040add0("Sound");
      if (cVar1 != '\0') {
        local_2c = (int **)0x136;
        FUN_00956780();
        FUN_0092dc30(local_2c,0x3f800000,2,0,0x3f800000,0);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (cVar1 = FUN_0040add0("Shoot"), cVar1 != '\0')) {
        local_2c = (int **)0x6a;
        FUN_00956780();
        FUN_0092dc30(local_2c,0x3f800000,2,0,0x3f800000,0);
        local_2c = (int **)0x109;
        FUN_00956780();
        FUN_0092dc30(local_2c,0x3f800000,2,0,0x3f800000,0);
        *(undefined4 *)(param_1 + 0xba0) = 1;
        pfVar3 = (float *)FUN_006bec40(&local_48,0);
        local_38 = *pfVar3 - *(float *)(param_1 + 0x33c);
        local_34 = (int **)(pfVar3[1] - *(float *)(param_1 + 0x340));
        puVar4 = (undefined4 *)FUN_0067f170();
        ppiVar9 = (int **)(param_1 + 0xbec);
        *(undefined4 *)(param_1 + 0xbb0) = *puVar4;
        *(undefined4 *)(param_1 + 0xbb4) = puVar4[1];
        if (*ppiVar9 != (int *)0x0) {
          local_34 = ppiVar9;
          FUN_004cf210(&local_34);
        }
        *ppiVar9 = (int *)0x0;
      }
    }
    iVar7 = *(int *)(param_1 + 0xba0);
    if ((0 < iVar7) && (0 < (int)local_30)) {
      do {
        if (iVar7 % 6 == 1) {
          uVar5 = FUN_006eef60();
          local_40 = *(float *)(param_1 + 0xbb0) * DAT_00baa784;
          local_48 = *(float *)(param_1 + 0xbb0) * DAT_00baa81c + *(float *)(param_1 + 0x33c);
          local_3c = *(float *)(param_1 + 0xbb4) * DAT_00baa784;
          local_44 = *(float *)(param_1 + 0xbb4) * DAT_00baa81c + *(float *)(param_1 + 0x340);
          piVar6 = (int *)FUN_006fe410(0x364,0,&local_48,&local_40,param_1,0,uVar5,0);
          piVar6[0x5a] = piVar6[0x5a] & 0xfffffffb;
          piVar6[0x5b] = piVar6[0x5b];
          local_2c = *(int ***)(param_1 + 0xbec);
          if ((local_2c != (int **)0x0) && (local_2c[0xf0] == (int *)0x0)) {
            local_34 = (int **)(piVar6 + 0xef);
            if (piVar6[0xef] != 0) {
              FUN_004cf210(&local_34);
            }
            local_34 = (int **)(piVar6 + 0xef);
            *local_34 = (int *)local_2c;
            FUN_004cdcf0(local_34);
            local_2c = (int **)(*(int *)(param_1 + 0xbec) + 0x3c0);
            if (*local_2c != (int *)0x0) {
              local_34 = local_2c;
              FUN_004cf210(&local_34);
            }
            *local_2c = piVar6;
            FUN_004cdcf0(local_2c);
          }
          if (*(int **)(param_1 + 0xbec) != (int *)0x0) {
            local_34 = (int **)(param_1 + 0xbec);
            FUN_004cf210(&local_34);
          }
          *(int **)(param_1 + 0xbec) = piVar6;
          FUN_004cdcf0((int **)(param_1 + 0xbec));
          (**(code **)(*piVar6 + 0xc))();
          if ((float)((uint)*(float *)(param_1 + 0xbb0) & DAT_00bacb40) <=
              (float)((uint)*(float *)(param_1 + 0xbb4) & DAT_00bacb40)) {
            iVar7 = (uint)(0.0 <= *(float *)(param_1 + 0xbb4)) * 2 + 1;
          }
          else {
            iVar7 = 2;
            if (*(float *)(param_1 + 0xbb0) < 0.0) {
              iVar7 = 0;
            }
          }
          piVar6[0x2f0] = iVar7;
          piVar6[0x2f1] = 0x1e;
          iVar7 = *(int *)(param_1 + 0xba0);
        }
        iVar7 = iVar7 + 1;
        local_30 = (int **)((int)local_30 + -1);
        *(int *)(param_1 + 0xba0) = iVar7;
      } while (local_30 != (int **)0x0);
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_004dde15;
    *(undefined4 *)(param_1 + 0xba0) = 0x5a;
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
LAB_004dde15:
  fVar10 = *(float *)(param_1 + 0x340);
  iVar8 = (int)((*(float *)(param_1 + 0x33c) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  iVar7 = (int)((fVar10 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
  if ((((-1 < iVar8) && (iVar8 < *(int *)(local_28 + 0xc))) && (-1 < iVar7)) &&
     (iVar7 < *(int *)(local_28 + 0x10))) {
    iVar7 = iVar7 * *(int *)(local_28 + 0xc);
    uVar2 = iVar7 + iVar8;
    if (uVar2 < 0x1c0) {
      iVar8 = *(int *)(local_28 + 0x76c + uVar2 * 4);
      iVar7 = iVar8 / 1000;
      if (iVar8 % 1000 < 900) {
        *(int *)(local_28 + 0x76c + uVar2 * 4) = (iVar8 - iVar8 % 1000) + 900;
        fVar10 = *(float *)(param_1 + 0x340);
        iVar7 = local_28;
      }
    }
  }
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - fVar10;
  ExceptionList = local_1c;
  return iVar7;
}

