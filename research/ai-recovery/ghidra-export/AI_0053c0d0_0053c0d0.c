/* Local J460 decompiler output.
 * VA: 0x0053c0d0
 * Entry: 0053c0d0
 * Dispatcher: 0x006c2990
 * Types: 240,241,242,304
 * Identities: 240.0.0,240.1.0,240.2.0,240.3.0,241.0.0,241.1.0,242.0.0,304.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0053e4a0; instructions=1980
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=240,241,242,304;
   identities=240.0.0,240.1.0,240.2.0,240.3.0,241.0.0,241.1.0,242.0.0,304.0.0;
   dispatcher=0x006c2990; end=0x0053e4a0; instructions=1980 */

void __fastcall AI_0053c0d0(int *param_1)

{
  byte bVar1;
  int iVar2;
  char cVar3;
  uint uVar4;
  undefined4 uVar5;
  uint uVar6;
  int *piVar7;
  int **ppiVar8;
  int iVar9;
  undefined4 uVar10;
  int iVar11;
  byte **ppbVar12;
  uint *puVar13;
  byte **ppbVar14;
  undefined4 *puVar15;
  undefined *puVar16;
  byte *pbVar17;
  char *pcVar18;
  code *pcVar19;
  bool bVar20;
  float fVar21;
  int *piVar22;
  float fVar23;
  float fVar24;
  int *piVar25;
  float fVar26;
  undefined *puVar27;
  undefined local_224 [40];
  char local_1fc [4];
  int local_1f8;
  undefined local_1f4 [4];
  int *local_1f0;
  undefined local_1ec [8];
  undefined local_1e4 [4];
  int *local_1e0;
  int *local_1dc;
  int *local_1d8;
  int *local_1d4;
  float local_1d0;
  float local_1cc;
  int *local_1c8;
  int *local_1c4;
  int *local_1c0;
  int *local_1bc;
  int *local_1b8;
  int *local_1b4;
  float local_1b0;
  char local_1a9;
  undefined local_1a8 [28];
  undefined4 local_18c;
  uint local_150;
  undefined local_f8 [40];
  undefined local_d0 [4];
  float local_cc;
  float local_c8;
  float local_c4;
  float local_bc;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 local_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined8 local_84;
  undefined4 local_7c;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  iVar9 = DAT_00c71678;
  fVar21 = DAT_00baa784;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4840;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  param_1[0xd8] = (int)DAT_00c7b640;
  param_1[0xd9] = (int)DAT_00c7b644;
  uVar6 = DAT_00bacb40;
  iVar9 = *(int *)(iVar9 + 0x18300);
  local_1dc = (int *)(*(float *)(iVar9 + 0x14) + fVar21);
  local_1c4 = (int *)(*(float *)(iVar9 + 0x18) + fVar21);
  local_1d8 = (int *)(*(float *)(iVar9 + 0x1c) - fVar21);
  local_1e0 = (int *)(*(float *)(iVar9 + 0x20) - fVar21);
  local_1d0 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  iVar9 = param_1[10];
  if ((iVar9 == 0xf0) && ((param_1[0xb] == 1 || (param_1[0xb] == 3)))) {
    local_1a9 = '\x01';
  }
  else {
    local_1a9 = '\0';
  }
  iVar11 = param_1[0x2d9];
  local_24 = uVar4;
  if (iVar11 == 0) {
    fVar21 = (float)param_1[0xcf];
    fVar23 = (float)((uint)((float)local_1dc - fVar21) & DAT_00bacb40);
    fVar24 = DAT_00baac34;
    if (fVar23 < DAT_00baac34) {
      param_1[0xcd] = (int)local_1dc;
      param_1[0xce] = param_1[0xd0];
      param_1[0x2f0] = 3;
      param_1[0x61] = 2;
      param_1[0x3b] = -0x3d4c0000;
      if (param_1[10] != 0xf1) {
        param_1[0xd3] = 0;
        param_1[0xd4] = (int)&DAT_c1c80000;
      }
      param_1[0xdd] = 0x3fe66666;
      param_1[0x2ec] = 0;
      param_1[0x2ed] = 0x40a00000;
      fVar21 = (float)param_1[0xcf];
      fVar24 = fVar23;
    }
    fVar21 = (float)((uint)((float)local_1d8 - fVar21) & uVar6);
    if (fVar21 < fVar24) {
      param_1[0xcd] = (int)local_1d8;
      param_1[0xce] = param_1[0xd0];
      param_1[0x2f0] = 4;
      param_1[0x61] = 2;
      param_1[0x3b] = 0x42b40000;
      if (param_1[10] != 0xf1) {
        param_1[0xd3] = 0;
        param_1[0xd4] = (int)&DAT_c1c80000;
      }
      param_1[0xdd] = 0x3fe66666;
      param_1[0x2ec] = 0;
      param_1[0x2ed] = 0x40a00000;
      fVar24 = fVar21;
    }
    fVar21 = (float)param_1[0xd0];
    fVar23 = (float)((uint)((float)local_1c4 - fVar21) & uVar6);
    if (fVar23 < fVar24) {
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = (int)local_1c4;
      param_1[0x2f0] = 1;
      param_1[0x61] = 1;
      param_1[0x3b] = 0;
      param_1[0xd3] = 0;
      param_1[0xd4] = 0;
      param_1[0x2ec] = 0x40a00000;
      param_1[0x2ed] = 0;
      fVar21 = (float)param_1[0xd0];
      fVar24 = fVar23;
    }
    if ((float)((uint)((float)local_1e0 - fVar21) & uVar6) < fVar24) {
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = (int)local_1e0;
      param_1[0x2f0] = 2;
      param_1[0x61] = 1;
      param_1[0x3b] = 0x43340000;
      param_1[0xd3] = 0;
      param_1[0xd4] = 0;
      param_1[0x2ec] = 0x40a00000;
      param_1[0x2ed] = 0;
    }
    param_1[0xcf] = param_1[0xcd];
    param_1[0xd0] = param_1[0xce];
    ppbVar14 = (byte **)param_1[0x1f];
    if (ppbVar14 == (byte **)0x0) {
LAB_0053e2fe:
      cVar3 = FUN_0040a5d0(&DAT_00b1dce4,1);
      puVar27 = puStack_20;
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        puVar27 = puStack_20;
      }
    }
    else {
      ppbVar12 = ppbVar14;
      if (&DAT_0000000f < ppbVar14[5]) {
        ppbVar12 = (byte **)*ppbVar14;
      }
      pbVar17 = &DAT_00b1dce4;
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar20 = bVar1 < *pbVar17;
        if (bVar1 != *pbVar17) {
LAB_0053e2e0:
          uVar6 = -(uint)bVar20 | 1;
          goto LAB_0053e2e5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar20 = bVar1 < pbVar17[1];
        if (bVar1 != pbVar17[1]) goto LAB_0053e2e0;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pbVar17 = pbVar17 + 2;
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_0053e2e5:
      if ((uVar6 != 0) ||
         ((puVar27 = &stack0xfffffffc, *(byte *)(ppbVar14 + 0xd) != 0 &&
          (puVar27 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_0053e2fe;
    }
    puStack_20 = puVar27;
    param_1[0x2d9] = 4;
    iVar2 = iRam00c34db0;
    iVar11 = iRam00c34dac;
    iVar9 = iRam00c34da8;
    if (((param_1[10] == 0xf0) && (param_1[0xb] == 2)) && (param_1 + 0x79 != (int *)&DAT_00c34da4))
    {
      param_1[0x79] = _DAT_00c34da4;
      param_1[0x7a] = iVar9;
      param_1[0x7b] = iVar11;
      param_1[0x7c] = iVar2;
      iVar2 = iRam00c34dc0;
      iVar11 = iRam00c34dbc;
      iVar9 = iRam00c34db8;
      param_1[0x7d] = _DAT_00c34db4;
      param_1[0x7e] = iVar9;
      param_1[0x7f] = iVar11;
      param_1[0x80] = iVar2;
      *(undefined8 *)(param_1 + 0x81) = DAT_00c34dc4;
      param_1[0x83] = DAT_00c34dcc;
    }
    goto LAB_0053e36d;
  }
  if (iVar11 != 4) {
    puStack_20 = &stack0xfffffffc;
    if (iVar11 != 8) goto LAB_0053e36d;
    if (iVar9 == 0xf0) {
      if (local_1a9 == '\0') {
        puStack_20 = &stack0xfffffffc;
        cVar3 = FUN_0040b030("Shoot");
        if (cVar3 != '\0') {
          local_1c4 = DAT_00c7b640;
          local_1b8 = DAT_00c7b640;
          local_1bc = DAT_00c7b644;
          local_1b4 = DAT_00c7b644;
          switch(param_1[0x2f0]) {
          case 1:
            local_1b4 = (int *)0x41000000;
            local_1bc = DAT_00baa75c;
            break;
          case 2:
            local_1b4 = (int *)0xc1000000;
            local_1bc = DAT_00baadcc;
            break;
          case 3:
            local_1b8 = (int *)0x41000000;
            local_1bc = DAT_00baada0;
            break;
          case 4:
            local_1c4 = (int *)((float)DAT_00c7b640 + (float)DAT_00baa75c);
            local_1b8 = (int *)0xc1000000;
            local_1bc = DAT_00baada0;
          }
          AI_0043ef30();
          if (param_1[0xb] == 2) {
            local_150 = local_150 | 1;
            local_18c = 0x3f4ccccd;
          }
          puVar27 = local_1a8;
          local_1cc = (float)local_1c4 + (float)param_1[0xcf];
          uVar10 = 0;
          ppiVar8 = &local_1b8;
          local_1c8 = (int *)((float)local_1bc + (float)param_1[0xd0]);
          uVar5 = FUN_00436090(local_1ec,&local_1cc,0x40a00000);
          FUN_006cb2e0(uVar5,ppiVar8,uVar10,puVar27);
        }
      }
      else if (param_1[0x2e8] < 0) {
        if ((param_1[0x1f] == 0) ||
           (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x2d9] = 4;
          puStack_20 = &stack0xfffffffc;
        }
      }
      else {
        if ((param_1[0x1f] == 0) ||
           (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')) {
          puStack_20 = &stack0xfffffffc;
          FUN_0040a380("AttackLoop",0);
        }
        cVar3 = FUN_0040b030("Shoot");
        if (cVar3 != '\0') {
          FUN_006d6ba0(0x13d,0x3f800000,2,0,0x3f99999a);
          param_1[0x2e8] = 0x5a;
        }
        if (((param_1[0x3c7] != -1) && (param_1[0x2e8] - 2U < 0x49)) &&
           (cVar3 = FUN_006cae60(0,7), cVar3 == '\0')) {
          param_1[0x2e8] = 1;
        }
        local_1e0 = (int *)((param_1[0xb] == 3) + 2);
        local_1b0 = 0.0;
        fVar21 = DAT_00baa81c;
        piVar7 = DAT_00baa75c;
        if (0 < (int)local_1d0) {
          do {
            if (param_1[0x2e8] < 1) break;
            iVar9 = param_1[0x2e8] + -1;
            param_1[0x2e8] = iVar9;
            if (iVar9 < 1) {
              FUN_0040a380("AttackEnd",0);
              param_1[0x2e8] = -1;
              break;
            }
            if (iVar9 % (int)local_1e0 != 1) goto LAB_0053cbba;
            local_1cc = (float)param_1[0xcf];
            local_1c8 = (int *)param_1[0xd0];
            local_1b4 = (int *)0x0;
            local_1b8 = (int *)0x0;
            switch(param_1[0x2f0]) {
            case 1:
              local_1b4 = (int *)0x41000000;
              local_1c8 = (int *)((float)local_1c8 + (float)piVar7);
              break;
            case 2:
              local_1b4 = (int *)0xc1000000;
              local_1c8 = (int *)((float)local_1c8 + fVar21);
              break;
            case 3:
              local_1b8 = (int *)0x41000000;
              goto LAB_0053c776;
            case 4:
              local_1cc = local_1cc + (float)piVar7;
              local_1b8 = (int *)0xc1000000;
LAB_0053c776:
              local_1c8 = (int *)((float)local_1c8 - fVar21);
            }
            AI_0043ef30();
            local_cc = local_cc + DAT_00baa834;
            iVar9 = FUN_006eef60();
            local_c8 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                       DAT_00ba9ff4 - DAT_00baa2d0;
            local_c8 = local_c8 + local_c8;
            local_c4 = local_c4 - DAT_00baa134;
            iVar9 = FUN_006eef60();
            local_94 = _DAT_00bac7b0;
            uStack_90 = _UNK_00bac7b4;
            uStack_8c = _UNK_00bac7b8;
            uStack_88 = _UNK_00bac7bc;
            local_3c = 4;
            local_7c = 0x3f000000;
            local_1d4 = local_1b4;
            local_bc = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa154 + DAT_00baa154;
            local_a4 = _DAT_00bac7b0;
            uStack_a0 = _UNK_00bac7b4;
            uStack_9c = _UNK_00bac7b8;
            uStack_98 = _UNK_00bac7bc;
            local_84 = CONCAT44(DAT_00baa354,DAT_00baa3a4);
            local_1bc = local_1b8;
            fVar21 = (float)local_1b8 * (float)local_1b8 + (float)local_1b4 * (float)local_1b4;
            FUN_00435a50();
            if (0.0 < fVar21) {
              local_1bc = (int *)((DAT_00baa454 / fVar21) * (float)local_1bc);
              local_1d4 = (int *)((float)local_1d4 * (DAT_00baa454 / fVar21));
            }
            piVar7 = DAT_00baa54c;
            FUN_0041d540();
            local_1d8 = piVar7;
            piVar7 = DAT_00baa54c;
            FUN_0041d520();
            local_1dc = piVar7;
            iVar9 = FUN_006eef60();
            puVar27 = local_d0;
            ppiVar8 = &local_1b8;
            fVar21 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 - DAT_00baa2d0;
            local_1cc = ((float)local_1d8 * (float)local_1bc - (float)local_1d4 * (float)local_1dc)
                        * fVar21 * (float)DAT_00baa75c + local_1cc;
            local_1c8 = (int *)(((float)local_1dc * (float)local_1bc +
                                (float)local_1d4 * (float)local_1d8) * fVar21 * (float)DAT_00baa75c
                               + (float)local_1c8);
            if (param_1[0xb] == 3) {
              local_bc = local_bc + DAT_00baa120;
              uVar5 = 4;
              local_a8 = 0x40000000;
              local_1cc = (float)local_1b8 * DAT_00baa1d4 + local_1cc;
              puVar16 = local_1f4;
              local_1c8 = (int *)((float)local_1b4 * DAT_00baa1d4 + (float)local_1c8);
            }
            else {
              uVar5 = 0;
              puVar16 = local_1ec;
            }
            uVar10 = FUN_00812f50(puVar16,&local_1cc,0x40400000,0x40400000,0x40400000);
            FUN_006cb2e0(uVar10,ppiVar8,uVar5,puVar27);
            uVar5 = FUN_006eef60();
            iVar9 = FUN_00428b20(1000,0x50,&local_1cc,&DAT_00c7b640,0,0,uVar5);
            iVar11 = FUN_006eef60();
            *(float *)(iVar9 + 0xec) =
                 (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baab30;
            if ((undefined4 *)(iVar9 + 0xf0) != &local_a4) {
              *(undefined4 *)(iVar9 + 0xf0) = local_a4;
              *(undefined4 *)(iVar9 + 0xf4) = uStack_a0;
              *(undefined4 *)(iVar9 + 0xf8) = uStack_9c;
              *(undefined4 *)(iVar9 + 0xfc) = uStack_98;
              *(undefined4 *)(iVar9 + 0x100) = local_94;
              *(undefined4 *)(iVar9 + 0x104) = uStack_90;
              *(undefined4 *)(iVar9 + 0x108) = uStack_8c;
              *(undefined4 *)(iVar9 + 0x10c) = uStack_88;
              *(undefined8 *)(iVar9 + 0x110) = local_84;
              *(undefined4 *)(iVar9 + 0x118) = local_7c;
            }
            *(undefined4 *)(iVar9 + 0x34c) = 0;
            *(undefined4 *)(iVar9 + 0x350) = 0xc1300000;
            *(undefined4 *)(iVar9 + 0x358) = 0x41700000;
            local_1c4 = (int *)0x99;
            FUN_00956780();
            FUN_0092dc30(local_1c4,0x3f800000,2,0,0x3f99999a,0);
            fVar21 = DAT_00baa81c;
            piVar7 = DAT_00baa75c;
LAB_0053cbba:
            local_1b0 = (float)((int)local_1b0 + 1);
          } while ((int)local_1b0 < (int)local_1d0);
        }
      }
      if ((param_1[0x1f] != 0) && (cVar3 = FUN_0040add0("Sound"), cVar3 != '\0')) {
LAB_0053cd5e:
        FUN_006d6ba0(0x13d,0x3f800000,2,0,0x3f800000);
      }
      goto LAB_0053cd7e;
    }
    if (iVar9 == 0xf1) {
      puStack_20 = &stack0xfffffffc;
      cVar3 = FUN_0040b030("Shoot");
      if (cVar3 != '\0') {
        local_1bc = (int *)0x0;
        switch(param_1[0x2f0]) {
        case 1:
          local_1bc = DAT_00baa9b4;
          break;
        case 2:
          local_1bc = DAT_00baae50;
          break;
        case 4:
          local_1bc = DAT_00baaa78;
        }
        if (param_1[0xb] == 1) {
          local_1e0 = (int *)(((float)local_1bc + (float)DAT_00baa9b4) * DAT_00baa088);
          fVar21 = (float)local_1e0;
          FUN_0041d540();
          local_1d0 = fVar21;
          FUN_0041d520();
          local_1d0 = local_1d0 + local_1d0;
          local_1e0 = (int *)((float)local_1e0 + (float)local_1e0);
          local_1b8 = (int *)(((float)param_1[0xd3] + (float)param_1[0xcf]) - local_1d0);
          local_1b4 = (int *)(((float)param_1[0xd4] + (float)param_1[0xd0]) - (float)local_1e0);
          piVar7 = (int *)FUN_0096f310(1,&local_1b8,(float)local_1bc - DAT_00baa8d0,0x2d,
                                       &DAT_00c7b640,param_1,0);
          piVar7[0xd6] = 0x447a0000;
          (**(code **)(*piVar7 + 0xc))();
          ppiVar8 = &local_1b8;
          local_1b8 = (int *)((float)param_1[0xcf] + (float)param_1[0xd3] + local_1d0);
          local_1b4 = (int *)((float)param_1[0xd4] + (float)param_1[0xd0] + (float)local_1e0);
          piVar7 = (int *)((float)local_1bc + DAT_00baa8d0);
        }
        else {
          ppiVar8 = &local_1c0;
          local_1c0 = (int *)((float)param_1[0xd3] + (float)param_1[0xcf]);
          piVar7 = local_1bc;
          local_1bc = (int *)((float)param_1[0xd4] + (float)param_1[0xd0]);
        }
        piVar7 = (int *)FUN_0096f310(1,ppiVar8,piVar7,0x2d,&DAT_00c7b640,param_1,0);
        piVar7[0xd6] = 0x447a0000;
        (**(code **)(*piVar7 + 0xc))();
        goto LAB_0053cd5e;
      }
      goto LAB_0053cd7e;
    }
    puStack_20 = &stack0xfffffffc;
    if (iVar9 != 0xf2) goto LAB_0053cd7e;
    puStack_20 = &stack0xfffffffc;
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 == '\0') goto LAB_0053c369;
    local_1c4 = DAT_00c7b640;
    local_1b8 = DAT_00c7b640;
    local_1bc = DAT_00c7b644;
    local_1b4 = DAT_00c7b644;
    switch(param_1[0x2f0]) {
    case 1:
      local_1b4 = (int *)0x41000000;
      local_1bc = DAT_00baa75c;
      break;
    case 2:
      local_1b4 = (int *)0xc1000000;
      local_1bc = DAT_00baadcc;
      break;
    case 3:
      local_1b8 = (int *)0x41000000;
      goto LAB_0053c2a8;
    case 4:
      local_1c4 = (int *)((float)DAT_00c7b640 + (float)DAT_00baa75c);
      local_1b8 = (int *)0xc1000000;
LAB_0053c2a8:
      local_1bc = (int *)0x0;
    }
    uVar5 = AI_0043ef30();
    local_1cc = (float)local_1c4 + (float)param_1[0xcf];
    local_1c8 = (int *)((float)local_1bc + (float)param_1[0xd0]);
    FUN_00812f50(local_1e4,&local_1cc,0x40a00000,0x40a00000,0x40a00000);
    FUN_006cb2e0(local_1e4,&local_1b8,2,uVar5);
    FUN_006d6ba0(0x13d,0x3f800000,2,0,0x3f800000);
LAB_0053c369:
    uVar6 = FUN_006eef60();
    if ((uVar6 & 1) == 0) {
      if (param_1[0x2f0] < 3) {
        param_1[0x2ec] = param_1[0x2ec] ^ DAT_00bacb70;
      }
      else {
        param_1[0x2ed] = param_1[0x2ed] ^ DAT_00bacb70;
      }
    }
LAB_0053cd7e:
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 4;
      param_1[0xdf] = *(int *)(param_1[0xcc] + 0x44);
    }
    goto LAB_0053e36d;
  }
  puStack_20 = &stack0xfffffffc;
  if (param_1[0x1f] == 0) {
    ppbVar14 = (byte **)param_1[0x1f];
    if (ppbVar14 != (byte **)0x0) {
      ppbVar12 = ppbVar14;
      if (&DAT_0000000f < ppbVar14[5]) {
        ppbVar12 = (byte **)*ppbVar14;
      }
      pbVar17 = &DAT_00b1dce4;
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar20 = bVar1 < *pbVar17;
        if (bVar1 != *pbVar17) {
LAB_0053ce20:
          uVar6 = -(uint)bVar20 | 1;
          goto LAB_0053ce25;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar20 = bVar1 < pbVar17[1];
        if (bVar1 != pbVar17[1]) goto LAB_0053ce20;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pbVar17 = pbVar17 + 2;
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_0053ce25:
      if ((uVar6 == 0) &&
         ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar14 + 0xd) == 0 ||
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) != '\0')))) goto LAB_0053ce5c;
    }
    puStack_20 = &stack0xfffffffc;
    cVar3 = FUN_0040a5d0(&DAT_00b1dce4,1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
LAB_0053ce5c:
  ppiVar8 = (int **)(param_1 + 0xcf);
  iVar9 = FUN_006be840(uVar4);
  local_1d4 = (int *)((float)*ppiVar8 - *(float *)(iVar9 + 0x33c));
  local_1bc = (int *)((float)param_1[0xd0] - *(float *)(iVar9 + 0x340));
  iVar9 = param_1[0x3c7];
  local_1b0 = DAT_00baa454;
  if (iVar9 != -1) {
    puVar13 = (uint *)FUN_006d82d0(local_1ec);
    local_1d4 = (int *)(*puVar13 ^ DAT_00bacb70);
    local_1bc = (int *)(puVar13[1] ^ DAT_00bacb70);
    fVar21 = (float)local_1d4 * (float)local_1d4 + (float)local_1bc * (float)local_1bc;
    FUN_00435a50();
    local_1b0 = fVar21;
    local_1d4 = (int *)((float)local_1d4 * DAT_00baa9d0);
    iVar9 = param_1[0x3c7];
    local_1bc = (int *)((float)local_1bc * DAT_00baa9d0);
  }
  switch(param_1[0x2f0]) {
  case 1:
    param_1[0xd0] = (int)local_1c4;
    break;
  case 2:
    param_1[0xd0] = (int)local_1e0;
    break;
  case 3:
    piVar7 = local_1dc;
    goto LAB_0053cf8a;
  case 4:
    piVar7 = local_1d8;
LAB_0053cf8a:
    *ppiVar8 = piVar7;
  }
  if (iVar9 == -1) {
    if ((param_1[0x5a] & 0x1000800U) == 0) {
      piVar7 = (int *)FUN_006bec40(local_1ec,0);
      param_1[0xcd] = *piVar7;
      fVar21 = (float)piVar7[1];
    }
    else {
      fVar21 = (float)local_1d4 * (float)local_1d4 + (float)local_1bc * (float)local_1bc;
      if ((NAN(fVar21) == (fVar21 == 0.0)) && (FUN_00435a50(), 0.0 < fVar21)) {
        local_1d4 = (int *)((float)local_1d4 * (DAT_00baa924 / fVar21));
        local_1bc = (int *)((float)local_1bc * (DAT_00baa924 / fVar21));
      }
      fVar21 = (float)local_1bc + (float)param_1[0xd0];
      param_1[0xcd] = (int)((float)local_1d4 + (float)*ppiVar8);
    }
  }
  else {
    fVar21 = (float)param_1[0xd0] - (float)local_1bc;
    param_1[0xcd] = (int)((float)*ppiVar8 - (float)local_1d4);
  }
  param_1[0xce] = (int)fVar21;
  uVar6 = DAT_00bacb40;
  fVar21 = DAT_00baa2d0;
  iVar9 = param_1[10];
  if (param_1[0x2f0] < 3) {
    if ((iVar9 == 0xf2) && (param_1[0x3c7] == -1)) {
      piVar22 = (int *)((float)param_1[0xdc] + (float)local_1dc);
      piVar25 = (int *)((float)local_1d8 - (float)param_1[0xdc]);
      piVar7 = *ppiVar8;
      if ((float)*ppiVar8 <= (float)piVar22) {
        piVar7 = piVar22;
      }
      if ((float)piVar25 <= (float)piVar7) {
        piVar7 = piVar25;
      }
      if ((NAN((float)piVar7) || NAN((float)*ppiVar8)) == ((float)piVar7 == (float)*ppiVar8)) {
        param_1[0x2ec] = param_1[0x2ec] ^ DAT_00bacb70;
        *ppiVar8 = piVar7;
      }
      fVar24 = (float)param_1[0x2ec];
      fVar21 = (float)param_1[0x2ed];
LAB_0053d219:
      fVar21 = fVar21 * DAT_00baa1d4;
      fVar24 = fVar24 * DAT_00baa1d4;
LAB_0053d229:
      param_1[0xd9] = (int)fVar21;
      goto LAB_0053d231;
    }
    fVar23 = (float)param_1[0xcd];
    piVar7 = *ppiVar8;
    fVar24 = (float)param_1[0x2ec];
    if (((fVar23 < (float)piVar7) && (0.0 < fVar24)) || (((float)piVar7 < fVar23 && (fVar24 < 0.0)))
       ) {
      fVar24 = (float)((uint)fVar24 ^ DAT_00bacb70);
      param_1[0x2ec] = (int)fVar24;
    }
    if (DAT_00baa81c < (float)((uint)(fVar23 - (float)piVar7) & uVar6)) {
      switch(iVar9) {
      case 0xf0:
        if (local_1a9 == '\0') {
          fVar21 = (float)param_1[0x2ed] * local_1b0;
          fVar24 = fVar24 * local_1b0;
        }
        else {
          fVar24 = fVar24 * DAT_00baa354 * local_1b0;
          fVar21 = (float)param_1[0x2ed] * DAT_00baa354 * local_1b0;
        }
        goto LAB_0053d229;
      case 0xf1:
        fVar24 = fVar24 * local_1b0 * fVar21;
        param_1[0xd9] = (int)(local_1b0 * (float)param_1[0x2ed] * fVar21);
        break;
      case 0xf2:
        fVar24 = fVar24 * local_1b0;
        fVar21 = local_1b0 * (float)param_1[0x2ed];
        goto LAB_0053d219;
      default:
        goto switchD_0053d16f_caseD_f3;
      case 0x130:
        fVar24 = fVar24 * local_1b0;
        param_1[0xd9] = (int)(local_1b0 * (float)param_1[0x2ed]);
      }
LAB_0053d231:
      param_1[0xd8] = (int)fVar24;
    }
switchD_0053d16f_caseD_f3:
    if (param_1[0x2f0] == 1) {
      *(bool *)(param_1 + 0x52) = 0.0 < (float)param_1[0x2ec];
    }
    else {
      *(bool *)(param_1 + 0x52) = (float)param_1[0x2ec] < 0.0;
    }
    goto LAB_0053d4ab;
  }
  if ((iVar9 == 0xf2) && (param_1[0x3c7] == -1)) {
    fVar23 = (float)param_1[0xdc] + (float)local_1c4;
    fVar26 = (float)local_1e0 - (float)param_1[0xdc];
    fVar21 = (float)param_1[0xd0];
    fVar24 = fVar21;
    if (fVar21 <= fVar23) {
      fVar24 = fVar23;
    }
    if (fVar26 <= fVar24) {
      fVar24 = fVar26;
    }
    if ((NAN(fVar24) || NAN(fVar21)) == (fVar24 == fVar21)) {
      param_1[0x2ed] = param_1[0x2ed] ^ DAT_00bacb70;
      param_1[0xd0] = (int)fVar24;
    }
    fVar21 = (float)param_1[0x2ed] * DAT_00baa1d4;
    param_1[0xd8] = (int)((float)param_1[0x2ec] * DAT_00baa1d4);
    param_1[0xd9] = (int)fVar21;
    goto switchD_0053d3b4_caseD_f3;
  }
  fVar24 = DAT_00baa784;
  if ((iVar9 != 0xf0) && (fVar24 = DAT_00baa854, iVar9 == 0xf1)) {
    fVar24 = DAT_00baadc0;
  }
  if (param_1[0x3c7] != -1) {
    fVar24 = 0.0;
  }
  fVar24 = fVar24 + (float)param_1[0xce];
  fVar23 = (float)param_1[0xd0];
  fVar26 = (float)param_1[0x2ed];
  if (((fVar24 < fVar23) && (0.0 < fVar26)) || ((fVar23 < fVar24 && (fVar26 < 0.0)))) {
    param_1[0x2ed] = (uint)fVar26 ^ DAT_00bacb70;
  }
  if ((float)((uint)(fVar24 - fVar23) & uVar6) <= DAT_00baa81c) goto switchD_0053d3b4_caseD_f3;
  switch(iVar9) {
  case 0xf0:
    fVar21 = (float)param_1[0x2ec];
    fVar24 = (float)param_1[0x2ed];
    if (local_1a9 != '\0') {
      fVar21 = fVar21 * DAT_00baa354;
      fVar24 = fVar24 * DAT_00baa354;
    }
    fVar21 = fVar21 * local_1b0;
    fVar24 = fVar24 * local_1b0;
    break;
  case 0xf1:
    fVar24 = local_1b0 * (float)param_1[0x2ed] * fVar21;
    fVar21 = local_1b0 * (float)param_1[0x2ec] * fVar21;
    goto LAB_0053d3d6;
  case 0xf2:
    fVar24 = local_1b0 * (float)param_1[0x2ed] * DAT_00baa1d4;
    fVar21 = local_1b0 * (float)param_1[0x2ec] * DAT_00baa1d4;
    break;
  default:
    goto switchD_0053d3b4_caseD_f3;
  case 0x130:
    fVar24 = local_1b0 * (float)param_1[0x2ed];
    fVar21 = local_1b0 * (float)param_1[0x2ec];
LAB_0053d3d6:
    param_1[0xd8] = (int)fVar21;
    param_1[0xd9] = (int)fVar24;
    goto switchD_0053d3b4_caseD_f3;
  }
  param_1[0xd9] = (int)fVar24;
  param_1[0xd8] = (int)fVar21;
switchD_0053d3b4_caseD_f3:
  fVar21 = (float)param_1[0x2ed];
  if (param_1[0x2f0] == 3) {
    bVar20 = fVar21 < 0.0;
  }
  else {
    bVar20 = 0.0 < fVar21;
  }
  *(bool *)((int)param_1 + 0x149) = !bVar20 && fVar21 != 0.0;
LAB_0053d4ab:
  if (param_1[10] == 0x130) {
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
      ppbVar14 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar14[5]) {
        ppbVar14 = (byte **)*ppbVar14;
      }
      pcVar18 = "Attack";
      do {
        bVar1 = *(byte *)ppbVar14;
        bVar20 = bVar1 < (byte)*pcVar18;
        if (bVar1 != *pcVar18) {
LAB_0053d500:
          uVar6 = -(uint)bVar20 | 1;
          goto LAB_0053d505;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar14 + 1);
        bVar20 = bVar1 < ((byte *)pcVar18)[1];
        if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_0053d500;
        ppbVar14 = (byte **)((int)ppbVar14 + 2);
        pcVar18 = (char *)((byte *)pcVar18 + 2);
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_0053d505:
      if (uVar6 == 0) {
        param_1[0x2f1] = 2;
      }
      else if (*(char *)(param_1 + 0x23) == '\0') {
        puVar15 = (undefined4 *)param_1[0x1f];
        if (puVar15 == (undefined4 *)0x0) {
          puVar15 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar15[5]) {
          puVar15 = (undefined4 *)*puVar15;
        }
        pcVar18 = "PutAway";
        do {
          bVar1 = *(byte *)puVar15;
          bVar20 = bVar1 < (byte)*pcVar18;
          if (bVar1 != *pcVar18) {
LAB_0053d560:
            uVar6 = -(uint)bVar20 | 1;
            goto LAB_0053d565;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)puVar15 + 1);
          bVar20 = bVar1 < ((byte *)pcVar18)[1];
          if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_0053d560;
          puVar15 = (undefined4 *)((int)puVar15 + 2);
          pcVar18 = (char *)((byte *)pcVar18 + 2);
        } while (bVar1 != 0);
        uVar6 = 0;
LAB_0053d565:
        if (uVar6 == 0) {
          param_1[0x2f1] = 0;
        }
      }
    }
    local_1b0 = DAT_00baa950;
    fVar21 = DAT_00baa97c;
    if ((2 < param_1[0x2f0]) || (fVar21 = DAT_00baa9a0, param_1[0x2f0] == 1)) {
      local_1b0 = fVar21;
    }
    if (param_1[0x2f1] == 2) {
      iVar9 = FUN_006ac760();
      if ((iVar9 != 0) && (cVar3 = FUN_00417430(0x1000800,0), cVar3 == '\0')) {
        FUN_0041a790(local_1fc,ppiVar8,0xffffffff);
        local_14 = 0;
        local_1d8 = (int *)0x0;
        if (local_1f0 != (int *)0x0) {
          do {
            piVar7 = *(int **)(local_1f8 + (int)local_1d8 * 4);
            local_1e0 = piVar7;
            if ((piVar7[0x62] != 0) && (piVar7 != param_1)) {
              local_1b0 = (float)param_1[0xcf] - (float)piVar7[0xcf];
              local_1c8 = (int *)((float)param_1[0xd0] - (float)piVar7[0xd0]);
              local_1dc = (int *)((float)param_1[0x3b] * DAT_00baa088);
              piVar22 = local_1dc;
              FUN_0041d540();
              local_1c4 = piVar22;
              piVar22 = local_1dc;
              FUN_0041d520();
              if ((float)((uint)((float)local_1c4 * local_1b0 - (float)piVar22 * (float)local_1c8) &
                         DAT_00bacb40) < DAT_00baa8a0) {
                iVar9 = piVar7[10];
                if ((iVar9 == 1) || (iVar9 == 3)) {
                  cVar3 = FUN_006d7d60(piVar7);
                  if (cVar3 == '\0') {
                    iVar9 = piVar7[10];
                    goto LAB_0053d734;
                  }
                  pcVar19 = *(code **)(*piVar7 + 0x20);
                  FUN_00431310(param_1);
                  iVar9 = param_1[0xe2];
                  puVar27 = local_224;
                }
                else {
LAB_0053d734:
                  if ((((*(int *)(DAT_00c71678 + 0x26614) < 2) || (iVar9 != 1)) &&
                      (0x3dd < iVar9 - 10U)) || (cVar3 = FUN_006d7d60(piVar7), cVar3 == '\0'))
                  goto LAB_0053d78b;
                  pcVar19 = *(code **)(*piVar7 + 0x20);
                  FUN_00431310(param_1);
                  puVar27 = local_f8;
                  iVar9 = 0x40a00000;
                }
                (*pcVar19)(iVar9,0,0,puVar27,0x1e);
              }
            }
LAB_0053d78b:
            local_1d8 = (int *)((int)local_1d8 + 1);
          } while (local_1d8 < local_1f0);
        }
        if (local_1fc[0] == '\0') {
          local_14 = 1;
          FUN_00a648b0(0,0);
        }
        local_14 = 0xffffffff;
      }
      if ((param_1[0x2f1] == 2) && (param_1[0x2e8] < 1)) {
        param_1[0x2e8] = 0x78;
        param_1[0x2ee] = param_1[0xcf];
        param_1[0x2ef] = param_1[0xd0];
        FUN_006d6ba0(0x13d,0x3f800000,2,0,0x3f800000);
      }
    }
    iVar9 = 0;
    piVar7 = (int *)((uint)(param_1[0x2f0] < 3) * 4 + 0x6a);
    local_1c4 = piVar7;
    if (0 < (int)local_1d0) {
      uVar6 = param_1[0x2e8];
      do {
        if ((int)uVar6 < 1) break;
        if (((int)piVar7 < (int)uVar6) && ((uVar6 & 1) == 0)) {
          local_1c8 = (int *)(((float)param_1[0x3b] + (float)DAT_00baa9b4) * DAT_00baa088);
          piVar7 = local_1c8;
          FUN_0041d540();
          local_1e0 = piVar7;
          piVar7 = local_1c8;
          FUN_0041d520();
          local_1d8 = piVar7;
          piVar7 = DAT_00baa54c;
          FUN_0041d540();
          local_1c8 = piVar7;
          piVar7 = DAT_00baa54c;
          FUN_0041d520();
          local_1dc = piVar7;
          iVar11 = FUN_006eef60();
          fVar24 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                   DAT_00ba9ff4 - DAT_00baa2d0;
          fVar21 = (float)((0x78 - param_1[0x2e8]) / 2) * DAT_00baa904;
          local_1b8 = (int *)(((float)local_1e0 * (float)local_1c8 -
                              (float)local_1d8 * (float)local_1dc) * fVar24 * DAT_00baa87c +
                             (float)local_1e0 * fVar21 + (float)param_1[0x2ee]);
          local_1b4 = (int *)(((float)local_1e0 * (float)local_1dc +
                              (float)local_1d8 * (float)local_1c8) * fVar24 * DAT_00baa87c +
                             (float)local_1d8 * fVar21 + (float)param_1[0x2ef]);
          uVar5 = FUN_006eef60();
          piVar7 = (int *)FUN_00428b20(1000,0x16,&local_1b8,&DAT_00c7b640,param_1,0,uVar5);
          (**(code **)(*piVar7 + 0xc))();
          uVar6 = param_1[0x2e8];
          piVar7 = local_1c4;
        }
        if (0 < (int)uVar6) {
          uVar6 = uVar6 - 1;
          param_1[0x2e8] = uVar6;
        }
        iVar9 = iVar9 + 1;
      } while (iVar9 < (int)local_1d0);
    }
  }
  if ((float)param_1[0xd8] * (float)param_1[0xd8] + (float)param_1[0xd9] * (float)param_1[0xd9] <=
      DAT_00baa010) {
    if (param_1[10] == 0x130) {
      if (param_1[0x2f1] == 2) {
        ppbVar14 = (byte **)param_1[0x1f];
        if (ppbVar14 != (byte **)0x0) {
          ppbVar12 = ppbVar14;
          if (&DAT_0000000f < ppbVar14[5]) {
            ppbVar12 = (byte **)*ppbVar14;
          }
          pcVar18 = "AttackLoopIdle";
          do {
            bVar1 = *(byte *)ppbVar12;
            bVar20 = bVar1 < (byte)*pcVar18;
            if (bVar1 != *pcVar18) {
LAB_0053dbe0:
              uVar6 = -(uint)bVar20 | 1;
              goto LAB_0053dbe5;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar12 + 1);
            bVar20 = bVar1 < ((byte *)pcVar18)[1];
            if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_0053dbe0;
            ppbVar12 = (byte **)((int)ppbVar12 + 2);
            pcVar18 = (char *)((byte *)pcVar18 + 2);
          } while (bVar1 != 0);
          uVar6 = 0;
LAB_0053dbe5:
          if (uVar6 == 0) {
            if ((*(byte *)(ppbVar14 + 0xd) != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              pcVar18 = "AttackLoopIdle";
              goto LAB_0053db73;
            }
            goto LAB_0053dc4b;
          }
        }
        pcVar18 = "AttackLoopIdle";
        goto LAB_0053db73;
      }
      if (param_1[0x2f1] == 0) goto LAB_0053dc18;
    }
    else {
LAB_0053dc18:
      cVar3 = FUN_0040a5d0(&DAT_00b1dce4,1);
      if (((cVar3 != '\0') && (param_1[0x1f] != 0)) && (FUN_00408e00(), param_1[0x1f] != 0)) {
        *(undefined *)(param_1 + 0x23) = 0;
      }
    }
  }
  else {
    if (param_1[10] == 0x130) {
      if (param_1[0x2f1] != 2) {
        if (param_1[0x2f1] != 0) goto LAB_0053dc4b;
        ppbVar14 = (byte **)param_1[0x1f];
        if (ppbVar14 != (byte **)0x0) {
          ppbVar12 = ppbVar14;
          if (&DAT_0000000f < ppbVar14[5]) {
            ppbVar12 = (byte **)*ppbVar14;
          }
          pbVar17 = &DAT_00b1dce4;
          do {
            bVar1 = *(byte *)ppbVar12;
            bVar20 = bVar1 < *pbVar17;
            if (bVar1 != *pbVar17) goto LAB_0053db46;
            if (bVar1 == 0) goto LAB_0053db42;
            bVar1 = *(byte *)((int)ppbVar12 + 1);
            bVar20 = bVar1 < pbVar17[1];
            if (bVar1 != pbVar17[1]) goto LAB_0053db46;
            ppbVar12 = (byte **)((int)ppbVar12 + 2);
            pbVar17 = pbVar17 + 2;
          } while (bVar1 != 0);
          uVar6 = 0;
          goto LAB_0053db4b;
        }
        goto LAB_0053db6c;
      }
      ppbVar14 = (byte **)param_1[0x1f];
      if (ppbVar14 != (byte **)0x0) {
        ppbVar12 = ppbVar14;
        if (&DAT_0000000f < ppbVar14[5]) {
          ppbVar12 = (byte **)*ppbVar14;
        }
        pcVar18 = "AttackLoopWalk";
        do {
          bVar1 = *(byte *)ppbVar12;
          bVar20 = bVar1 < (byte)*pcVar18;
          if (bVar1 != *pcVar18) {
LAB_0053da90:
            uVar6 = -(uint)bVar20 | 1;
            goto LAB_0053da95;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar12 + 1);
          bVar20 = bVar1 < ((byte *)pcVar18)[1];
          if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_0053da90;
          ppbVar12 = (byte **)((int)ppbVar12 + 2);
          pcVar18 = (char *)((byte *)pcVar18 + 2);
        } while (bVar1 != 0);
        uVar6 = 0;
LAB_0053da95:
        if (uVar6 == 0) {
          if ((*(byte *)(ppbVar14 + 0xd) == 0) || (*(char *)(param_1 + 0x23) != '\0'))
          goto LAB_0053dc4b;
          pcVar18 = "AttackLoopWalk";
          goto LAB_0053db73;
        }
      }
      pcVar18 = "AttackLoopWalk";
    }
    else {
      ppbVar14 = (byte **)param_1[0x1f];
      if (ppbVar14 != (byte **)0x0) {
        ppbVar12 = ppbVar14;
        if (&DAT_0000000f < ppbVar14[5]) {
          ppbVar12 = (byte **)*ppbVar14;
        }
        pbVar17 = &DAT_00b1dce4;
        do {
          bVar1 = *(byte *)ppbVar12;
          bVar20 = bVar1 < *pbVar17;
          if (bVar1 != *pbVar17) goto LAB_0053db46;
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar12 + 1);
          bVar20 = bVar1 < pbVar17[1];
          if (bVar1 != pbVar17[1]) goto LAB_0053db46;
          ppbVar12 = (byte **)((int)ppbVar12 + 2);
          pbVar17 = pbVar17 + 2;
        } while (bVar1 != 0);
LAB_0053db42:
        uVar6 = 0;
LAB_0053db4b:
        if ((uVar6 == 0) &&
           ((*(byte *)(ppbVar14 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_0053dc4b;
      }
LAB_0053db6c:
      pcVar18 = "Walk";
    }
LAB_0053db73:
    cVar3 = FUN_0040a5d0(pcVar18,1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
LAB_0053dc4b:
  iVar9 = param_1[0x104];
  if (-1 < iVar9) {
    iVar9 = iVar9 - (int)local_1d0;
    param_1[0x104] = iVar9;
  }
  if (param_1[10] != 0x130) {
    if ((iVar9 < 0) &&
       ((((param_1[0x5a] & 0x200U) == 0 || (uVar6 = FUN_006eef60(), uVar6 % 100 == 0)) &&
        ((param_1[0x5a] & 0x1000800U) == 0)))) {
      if (param_1[0x3c7] == -1) {
        cVar3 = FUN_00944a40(param_1 + 0xcf);
        if ((cVar3 == '\0') && (param_1[10] != 0xf2)) goto LAB_0053e36d;
      }
      else {
        cVar3 = FUN_006cae60(0,7);
        if (cVar3 == '\0') goto LAB_0053e36d;
      }
      param_1[0x2d9] = 8;
      if (param_1[10] == 0xf1) {
        piVar7 = (int *)0x0;
        switch(param_1[0x2f0]) {
        case 1:
          piVar7 = DAT_00baa9b4;
          break;
        case 2:
          piVar7 = DAT_00baae50;
          break;
        case 4:
          piVar7 = DAT_00baaa78;
        }
        uVar5 = FUN_004238f0(0x3f4ccccd);
        local_1c8 = (int *)((float)piVar7 * DAT_00baa088);
        piVar7 = local_1c8;
        FUN_0041d540();
        local_1b8 = piVar7;
        piVar7 = local_1c8;
        FUN_0041d520();
        local_1b4 = piVar7;
        FUN_0060b890(&local_1b8,0x12,uVar5,0x40800000);
      }
      if (local_1a9 == '\0') {
        FUN_0040a380("Attack",0);
      }
      else {
        FUN_0040a380("AttackStart",0);
        param_1[0x2e8] = 0;
      }
      if (param_1[0x3c7] == -1) {
        uVar6 = FUN_006eef60();
        uVar6 = uVar6 % 0x2d;
      }
      else {
        uVar6 = 0;
      }
      param_1[0xdf] = 0x43480000;
      param_1[0x104] = uVar6 + 0xf;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
    }
    goto LAB_0053e36d;
  }
  local_1c8 = (int *)((float)param_1[0x3b] * DAT_00baa088);
  piVar7 = local_1c8;
  FUN_0041d540();
  local_1d0 = (float)piVar7 * (float)local_1d4;
  piVar7 = local_1c8;
  FUN_0041d520();
  local_1d0 = local_1d0 - (float)piVar7 * (float)local_1bc;
  if (param_1[0x3c7] == -1) {
    cVar3 = (float)((uint)local_1d0 & DAT_00bacb40) < DAT_00baa8a0;
  }
  else {
    cVar3 = FUN_006cae60(0,7);
  }
  if ((cVar3 == '\0') || (param_1[0x2f1] != 0)) {
    if (param_1[0x3c7] == -1) {
      bVar20 = DAT_00baa8a0 <= (float)((uint)local_1d0 & DAT_00bacb40);
    }
    else {
      cVar3 = FUN_006cae60(0,7);
      bVar20 = cVar3 == '\0';
    }
    if ((!bVar20) || (param_1[0x2f1] != 2)) goto LAB_0053e36d;
    ppbVar14 = (byte **)param_1[0x1f];
    if (ppbVar14 == (byte **)0x0) {
LAB_0053de6f:
      cVar3 = FUN_0040a5d0("PutAway",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar12 = ppbVar14;
      if (&DAT_0000000f < ppbVar14[5]) {
        ppbVar12 = (byte **)*ppbVar14;
      }
      pcVar18 = "PutAway";
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar20 = bVar1 < (byte)*pcVar18;
        if (bVar1 != *pcVar18) {
LAB_0053de51:
          uVar6 = -(uint)bVar20 | 1;
          goto LAB_0053de56;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar20 = bVar1 < ((byte *)pcVar18)[1];
        if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_0053de51;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pcVar18 = (char *)((byte *)pcVar18 + 2);
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_0053de56:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar14 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_0053de6f;
    }
    param_1[0x2f1] = 3;
    goto LAB_0053e36d;
  }
  FUN_006d6ba0(0xd,0x3f800000,2,0,0x3f800000);
  ppbVar14 = (byte **)param_1[0x1f];
  if (ppbVar14 == (byte **)0x0) {
LAB_0053ddae:
    cVar3 = FUN_0040a5d0("Attack",1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  else {
    ppbVar12 = ppbVar14;
    if (&DAT_0000000f < ppbVar14[5]) {
      ppbVar12 = (byte **)*ppbVar14;
    }
    pcVar18 = "Attack";
    do {
      bVar1 = *(byte *)ppbVar12;
      bVar20 = bVar1 < (byte)*pcVar18;
      if (bVar1 != *pcVar18) {
LAB_0053dd90:
        uVar6 = -(uint)bVar20 | 1;
        goto LAB_0053dd95;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar12 + 1);
      bVar20 = bVar1 < ((byte *)pcVar18)[1];
      if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_0053dd90;
      ppbVar12 = (byte **)((int)ppbVar12 + 2);
      pcVar18 = (char *)((byte *)pcVar18 + 2);
    } while (bVar1 != 0);
    uVar6 = 0;
LAB_0053dd95:
    if ((uVar6 != 0) || ((*(byte *)(ppbVar14 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
    goto LAB_0053ddae;
  }
  param_1[0x2f1] = 1;
LAB_0053e36d:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
LAB_0053db46:
  uVar6 = -(uint)bVar20 | 1;
  goto LAB_0053db4b;
}

