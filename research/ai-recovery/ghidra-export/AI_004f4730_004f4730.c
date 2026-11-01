/* Local J460 decompiler output.
 * VA: 0x004f4730
 * Entry: 004f4730
 * Dispatcher: 0x006c2990
 * Types: 893
 * Identities: 893.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004f5f20; instructions=1363
 */

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=893; identities=893.0.0; dispatcher=0x006c2990;
   end=0x004f5f20; instructions=1363 */

void __fastcall AI_004f4730(int *************param_1)

{
  int **********ppppppppppiVar1;
  char cVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  int *piVar7;
  int *************pppppppppppppiVar8;
  bool bVar9;
  uint uVar10;
  int iVar11;
  char *pcVar12;
  char *pcVar13;
  undefined4 *puVar14;
  int iVar15;
  float fVar16;
  int ************ppppppppppppiVar17;
  int *************pppppppppppppiVar18;
  undefined auVar19 [16];
  undefined auVar20 [16];
  int ************ppppppppppppiVar21;
  float fVar22;
  int ************ppppppppppppiVar23;
  int *******pppppppiVar24;
  double dVar25;
  float local_c8;
  float local_c4;
  float local_c0;
  float local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  int *************local_ac;
  int ************local_a8;
  int *************local_a4;
  int ************local_a0;
  int ************local_9c;
  int *************local_98;
  char local_91;
  int ************local_90;
  int ************local_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined local_78 [16];
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  int *************local_4c;
  int ******local_48;
  int *******local_44;
  int ******local_40;
  undefined4 local_3c;
  uint local_38;
  undefined4 local_34;
  undefined2 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  iVar11 = DAT_00c71678;
  fVar22 = DAT_00baaa00;
  fVar16 = DAT_00baa904;
  pppppppiVar24 = DAT_00baa2d0;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3f4d;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  ppppppppppppiVar23 = param_1[0xc];
  local_ac = (int *************)DAT_00baa454;
  local_98 = (int *************)
             (((float)((double)((uint)ppppppppppppiVar23 & 0xf) + DAT_00bacb00) +
              (float)DAT_00baa454) * DAT_00baa904);
  local_9c = (int ************)
             ((float)((double)((uint)ppppppppppppiVar23 >> 4 & 0xf) + DAT_00bacb00) *
             (float)DAT_00baa2d0);
  if (((uint)ppppppppppppiVar23 & 0x100) != 0) {
    local_9c = (int ************)((float)local_9c * DAT_00baad50);
  }
  local_a4 = param_1;
  local_24 = uVar3;
  if (param_1[0x2d9] == (int ************)0x0) {
    uVar10 = 0;
    param_1[0x2f0] = (int ************)0xffffffff;
    param_1[0x2f1] = (int ************)0x0;
    local_90 = *(int *************)(iVar11 + 0x18300);
    do {
      iVar6 = (int)((((float)param_1[0xcf] + *(float *)((int)&DAT_00c5c7b4 + uVar10)) - fVar16) /
                    fVar16 + (float)pppppppiVar24);
      iVar11 = (int)((((float)param_1[0xd0] + *(float *)((int)&DAT_00c5c7b8 + uVar10)) - fVar22) /
                     fVar16 + (float)pppppppiVar24);
      if ((((((-1 < iVar6) &&
             (local_a0 = *(int *************)((int)local_90 + 0xc), iVar6 < (int)local_a0)) &&
            (-1 < iVar11)) &&
           ((iVar11 < *(int *)((int)local_90 + 0x10) &&
            (uVar4 = iVar11 * (int)local_a0 + iVar6, uVar4 < 0x1c0)))) &&
          (iVar11 = *(int *)((int)local_90 + 0x24 + uVar4 * 4), iVar11 != 0)) &&
         ((*(int *)(iVar11 + 0x3c) == 3 ||
          ((*(int *)(iVar11 + 0x3c) == 4 && (*(int *)(iVar11 + 4) != 0xf)))))) {
        iVar6 = *(int *)(iVar11 + 0x24);
        param_1[0xcd] = (int ************)((float)(iVar6 % (int)local_a0) * fVar16 + fVar16);
        param_1[0xce] = (int ************)((float)(iVar6 / (int)local_a0) * fVar16 + fVar22);
        param_1[0x2f0] = *(int *************)(iVar11 + 0x24);
        break;
      }
      uVar10 = uVar10 + 8;
    } while (uVar10 < 0x20);
    cVar2 = FUN_0040aaf0("Chain",1);
    if ((cVar2 != '\0') && (param_1[0x27] != (int ************)0x0)) {
      FUN_00408e00();
    }
    cVar2 = FUN_0040a5d0(&DAT_00b604e8,1);
    if (((cVar2 != '\0') && (param_1[0x1f] != (int ************)0x0)) &&
       (FUN_00408e00(), param_1[0x1f] != (int ************)0x0)) {
      *(undefined *)(param_1 + 0x23) = 0;
    }
    iVar11 = FUN_0040b220();
    *(undefined *)(iVar11 + 0x74) = 0;
    iVar11 = FUN_0040b220();
    *(undefined4 *)(iVar11 + 0x28) = 1;
    iVar11 = FUN_0040b220();
    *(undefined4 *)(iVar11 + 0x2c) = 0;
    iVar11 = FUN_0040b220();
    *(undefined *)(iVar11 + 0x74) = 0;
    param_1[0x5b] = (int ************)((uint)param_1[0x5b] | 0x2008);
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x5a] = (int ************)((uint)param_1[0x5a] & 0xfffffffb | 0x50011);
    param_1[0x2d9] = (int ************)0x3;
    local_90 = param_1[0xcd];
    if (((NAN((float)local_90) || NAN((float)DAT_00c7b640)) ==
         ((float)local_90 == (float)DAT_00c7b640)) ||
       ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
        ((float)param_1[0xce] == (float)DAT_00c7b644))) {
      local_8c = param_1[0xce];
      fVar16 = (float)param_1[0xd0] - (float)local_8c;
      FUN_00499d60();
      ppppppppppppiVar23 = (int ************)(fVar16 * DAT_00baa948);
      param_1[0x2ed] = (int ************)0x0;
      param_1[0x2ec] = ppppppppppppiVar23;
      ppppppppppppiVar23 = (int ************)((float)ppppppppppppiVar23 * DAT_00baa088);
      local_a0 = ppppppppppppiVar23;
      FUN_0041d520();
      local_a8 = ppppppppppppiVar23;
      ppppppppppppiVar23 = local_a0;
      FUN_0041d540();
      ppppppppppppiVar21 = (int ************)0x0;
      param_1[0xcf] =
           (int ************)((float)local_90 + (float)ppppppppppppiVar23 * (float)local_98);
      param_1[0xd0] = (int ************)((float)local_a8 * (float)local_98 + (float)local_8c);
    }
    else {
      param_1[0x2ec] = (int ************)0x0;
      ppppppppppppiVar21 = (int ************)&DAT_00000005;
      param_1[0x2ef] = (int ************)0xc1200000;
      param_1[0x2ed] = (int ************)0xc0c00000;
    }
    param_1[0x61] = ppppppppppppiVar21;
    param_1[0xd3] = (int ************)0x0;
    param_1[0xd4] = (int ************)0xc1600000;
  }
  else {
    puStack_20 = &stack0xfffffffc;
    if ((param_1[0x2d9] == (int ************)0x3) &&
       ((local_a0 = param_1[0xcd],
        (NAN((float)local_a0) || NAN((float)DAT_00c7b640)) ==
        ((float)local_a0 == (float)DAT_00c7b640) ||
        (puStack_20 = &stack0xfffffffc,
        (NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
        ((float)param_1[0xce] == (float)DAT_00c7b644))))) {
      ppppppppppppiVar23 =
           (int ************)((float)local_9c * (float)param_1[0xe7] + (float)param_1[0x2ec]);
      puStack_20 = &stack0xfffffffc;
      if (DAT_00baab30 < (float)((uint)ppppppppppppiVar23 & DAT_00bacb40)) {
        puStack_20 = &stack0xfffffffc;
        FUN_00499d20(uVar3);
      }
      if ((float)ppppppppppppiVar23 <= DAT_00baaa78) {
        if ((float)ppppppppppppiVar23 < DAT_00baae7c) {
          ppppppppppppiVar23 = (int ************)((float)ppppppppppppiVar23 + DAT_00baab30);
        }
      }
      else {
        ppppppppppppiVar23 = (int ************)((float)ppppppppppppiVar23 - DAT_00baab30);
      }
      param_1[0x2ec] = ppppppppppppiVar23;
      fVar16 = (float)local_9c * _DAT_00baa018 * (float)local_98;
      if (fVar16 <= DAT_00baacf8) {
        fVar16 = DAT_00baacf8;
      }
      if (DAT_00baa120 <= fVar16) {
        fVar16 = DAT_00baa120;
      }
      ppppppppppppiVar21 = (int ************)((float)param_1[0x2ed] - fVar16);
      param_1[0x2ed] = ppppppppppppiVar21;
      while ((float)ppppppppppppiVar21 < 0.0) {
        ppppppppppppiVar21 = (int ************)((float)param_1[0x2ed] + (float)local_ac);
        param_1[0x2ed] = ppppppppppppiVar21;
      }
      while ((float)local_ac <= (float)ppppppppppppiVar21) {
        ppppppppppppiVar21 = (int ************)((float)param_1[0x2ed] - (float)local_ac);
        param_1[0x2ed] = ppppppppppppiVar21;
      }
      local_90 = (int ************)((float)ppppppppppppiVar23 * DAT_00baa088);
      local_a8 = local_90;
      FUN_0041d520();
      ppppppppppppiVar23 = local_90;
      FUN_0041d540();
      param_1[0xd8] =
           (int ************)
           (((float)ppppppppppppiVar23 * (float)local_98 + (float)local_a0) - (float)param_1[0xcf]);
      param_1[0xd9] =
           (int ************)
           (((float)local_a8 * (float)local_98 + (float)param_1[0xce]) - (float)param_1[0xd0]);
    }
  }
  fVar16 = DAT_00baad50;
  if (((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) ==
       ((float)param_1[0xcd] == (float)DAT_00c7b640)) ||
     ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
      ((float)param_1[0xce] == (float)DAT_00c7b644))) {
    auVar20 = ZEXT416(param_1[0x2ec]);
    local_34 = DAT_00b604e8;
    local_30 = DAT_00b604ec;
    if (DAT_00baab30 < (float)((uint)param_1[0x2ec] & DAT_00bacb40)) {
      FUN_00499d20(uVar3);
    }
    fVar16 = auVar20._0_4_;
    if (fVar16 <= DAT_00baaa78) {
      if (fVar16 < DAT_00baae7c) {
        auVar20._0_4_ = fVar16 + DAT_00baab30;
      }
    }
    else {
      auVar20._0_4_ = fVar16 - DAT_00baab30;
    }
    local_8c = (int ************)(auVar20._0_4_ / DAT_00baa910 + (float)DAT_00baa2d0);
    dVar25 = floor((double)(float)local_8c);
    iVar6 = (int)dVar25;
    iVar11 = iVar6 + 8;
    if (-1 < iVar6) {
      iVar11 = iVar6;
    }
    local_30 = CONCAT11(local_30._1_1_,(char)iVar11 + '0');
    local_8c = (int ************)((float)iVar11 * DAT_00baa910);
    if (param_1[0x1f] == (int ************)0x0) {
      local_38 = 0xf;
      local_4c = (int *************)0x0;
      local_3c = 0;
    }
    else {
      FUN_0040cf50();
    }
    puVar14 = &local_34;
    local_98 = local_4c;
    do {
      cVar2 = *(char *)puVar14;
      puVar14 = (undefined4 *)((int)puVar14 + 1);
    } while (cVar2 != '\0');
    local_91 = FUN_0040cae0(&local_34,(int)puVar14 - ((int)&local_34 + 1));
    if (0xf < local_38) {
      uVar3 = local_38 + 1;
      pppppppppppppiVar18 = local_98;
      if (0xfff < uVar3) {
        pppppppppppppiVar18 = (int *************)local_98[-1];
        uVar3 = local_38 + 0x24;
        if (0x1f < (uint)((int)local_98 + (-4 - (int)pppppppppppppiVar18))) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(pppppppppppppiVar18,uVar3);
    }
    if ((((local_91 == '\0') && (cVar2 = FUN_0040a5d0(&local_34,1), cVar2 != '\0')) &&
        (param_1[0x1f] != (int ************)0x0)) &&
       (FUN_00408e00(), param_1[0x1f] != (int ************)0x0)) {
      *(undefined *)(param_1 + 0x23) = 0;
    }
    ppppppppppppiVar23 = param_1[0x2ec];
    param_1[0x3b] = (int ************)((float)ppppppppppppiVar23 - (float)local_8c);
    if (param_1[0x1f] != (int ************)0x0) {
      FUN_00408e00();
      ppppppppppppiVar23 = param_1[0x2ec];
    }
    if (DAT_00baab30 < (float)((uint)ppppppppppppiVar23 & DAT_00bacb40)) {
      FUN_00499d20();
    }
    if ((float)ppppppppppppiVar23 <= DAT_00baaa78) {
      if ((float)ppppppppppppiVar23 < DAT_00baae7c) {
        ppppppppppppiVar23 = (int ************)((float)ppppppppppppiVar23 + DAT_00baab30);
      }
    }
    else {
      ppppppppppppiVar23 = (int ************)((float)ppppppppppppiVar23 - DAT_00baab30);
    }
    local_8c = (int ************)((float)ppppppppppppiVar23 / DAT_00baa9b4 + (float)DAT_00baa2d0);
    dVar25 = floor((double)(float)local_8c);
    local_8c = (int ************)(float)dVar25;
    if (param_1[0x27] != (int ************)0x0) {
      FUN_00408e00();
    }
    iVar11 = FUN_006ac760();
    if (((iVar11 != 0) && (iVar11 = FUN_007f0800(), iVar11 == 0)) &&
       (iVar11 = FUN_006eef60(),
       (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 * DAT_00baa81c <
       (float)((uint)local_9c & DAT_00bacb40))) {
      uVar5 = FUN_006eef60();
      local_8c = (int ************)((float)param_1[0xd8] * DAT_00baa198);
      local_a8 = (int ************)((float)param_1[0xd9] * DAT_00baa198);
      iVar11 = FUN_006eef60();
      fVar16 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_a0 = (int ************)(fVar16 + fVar16);
      ppppppppppppiVar23 = local_a0;
      FUN_0041d540();
      local_8c = (int ************)((float)ppppppppppppiVar23 + (float)local_8c);
      ppppppppppppiVar23 = local_a0;
      FUN_0041d520();
      local_28 = (int ************)((float)ppppppppppppiVar23 + (float)local_a8);
      local_2c = local_8c;
      piVar7 = (int *)FUN_00428b20(1000,0x3b,param_1 + 0xcf,&local_2c,param_1,0,uVar5);
      iVar11 = FUN_006eef60();
      piVar7[0x11d] =
           (int)((float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa81c + (float)DAT_00baa630);
      uVar3 = FUN_006eef60();
      local_68 = 0;
      local_64 = 0;
      local_78 = ZEXT816(0);
      iVar11 = uVar3 % 0xf + 0xf;
      local_60 = 0;
      piVar7[0x117] = iVar11;
      uStack_7c = _UNK_00babbec;
      uStack_80 = _UNK_00babbe8;
      uStack_84 = _UNK_00babbe4;
      local_88 = _DAT_00babbe0;
      piVar7[0x118] = iVar11;
      (**(code **)(*piVar7 + 0x3c))(&local_88,0xffffffff,0xff,0,1);
      iVar11 = FUN_006eef60();
      fVar22 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa1f8 + DAT_00baa1f8;
      fVar16 = fVar22 * DAT_00c3793c;
      piVar7[0x3a] = (int)(fVar22 * DAT_00c37940);
      piVar7[0x39] = (int)fVar16;
    }
    ppppppppppppiVar23 = param_1[0x2f0];
    if ((-1 < (int)ppppppppppppiVar23) &&
       ((((int ************)0x1bf < ppppppppppppiVar23 ||
         (iVar11 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x24 + (int)ppppppppppppiVar23 * 4),
         iVar11 == 0)) ||
        ((*(int *)(iVar11 + 0x3c) != 3 &&
         ((*(int *)(iVar11 + 0x3c) != 4 || (*(int *)(iVar11 + 4) == 0xf)))))))) {
      param_1[0x2f0] = (int ************)0xffffffff;
      local_a8 = (int ************)(param_1 + 0xcf);
      local_98 = (int *************)((float)param_1[0xce] - (float)param_1[0xd0]);
      local_9c = (int ************)((float)param_1[0xcd] - (float)*local_a8);
      ppppppppppppiVar23 =
           (int ************)((float)local_98 * (float)local_98 + (float)local_9c * (float)local_9c)
      ;
      FUN_00435a50();
      local_28 = ppppppppppppiVar23;
      if (0.0 < (float)local_28) {
        local_8c = (int ************)((float)local_28 / DAT_00baa834);
        local_a0 = (int ************)0x41a00000;
        local_9c = (int ************)((float)local_9c / (float)local_28);
        ppppppppppppiVar23 = (int ************)&local_8c;
        if ((float)local_8c <= DAT_00baa87c) {
          ppppppppppppiVar23 = (int ************)&local_a0;
        }
        local_98 = (int *************)((float)local_98 / (float)local_28);
        local_90 = (int ************)0x0;
        if (0.0 < (float)local_28) {
          do {
            local_c8 = (float)local_90 * (float)local_9c + (float)*local_a8;
            local_c4 = (float)local_90 * (float)local_98 + (float)local_a8[1];
            uVar5 = FUN_006eef60();
            iVar11 = FUN_006eef60();
            local_b0 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
                       DAT_00baa704;
            local_b0 = local_b0 + local_b0;
            fVar16 = local_b0;
            FUN_0041d520();
            local_b8 = fVar16;
            iVar11 = FUN_006eef60();
            local_b4 = (float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
                       DAT_00baa7a4 + (float)DAT_00baa630;
            fVar16 = local_b0;
            FUN_0041d540();
            local_c0 = fVar16 * local_b4;
            local_bc = local_b4 * local_b8;
            piVar7 = (int *)FUN_00428b20(1000,0xa3,&local_c8,&local_c0,0,0,uVar5);
            (**(code **)(*piVar7 + 0xc))();
            local_90 = (int ************)((float)local_90 + (float)*ppppppppppppiVar23);
            param_1 = local_a4;
          } while ((float)local_90 < (float)local_28);
        }
      }
      param_1[0xcd] = (int ************)DAT_00c7b640;
      param_1[0xce] = (int ************)DAT_00c7b644;
      pppppppppppppiVar18 = (int *************)DAT_00baa528;
      if ((param_1[0x319] == (int ************)0x12) ||
         (pppppppppppppiVar18 = (int *************)DAT_00baa2d0,
         param_1[0x319] == (int ************)0x13)) {
        local_ac = pppppppppppppiVar18;
      }
      local_a4 = (int *************)0x1f8;
      FUN_00956780();
      FUN_0092dc30(local_a4,0x3f800000,2,0,local_ac,0);
      cVar2 = FUN_00813360(param_1 + 0xcf,0);
      if (cVar2 == '\0') {
        local_5c = 0;
        local_58 = 0;
        local_54 = 0;
        local_50 = 0;
        local_4c = (int *************)DAT_00c7b640;
        local_48 = DAT_00c7b644;
        local_44 = DAT_00c7b640;
        local_40 = DAT_00c7b644;
        local_3c = 0;
        local_38 = 0;
        (*(code *)(*param_1)[9])();
      }
      param_1[0x61] = (int ************)&DAT_00000005;
      param_1[0x2ec] = (int ************)0x0;
      param_1[0x2ef] = (int ************)0xc1200000;
      param_1[0x2ed] = (int ************)0xc0c00000;
      ppppppppppppiVar23 = (int ************)((float)param_1[0xd8] * DAT_00baa6fc);
      param_1[0x3b] = (int ************)0x0;
      param_1[0xd8] = ppppppppppppiVar23;
      param_1[0xd9] = (int ************)((float)param_1[0xd9] * DAT_00baa6fc);
    }
  }
  else {
    ppppppppppppiVar23 = param_1[0x2ef];
    if (param_1[0x61] == (int ************)0x7) {
      param_1[0x62] = (int ************)0x0;
      ppppppppppppiVar21 = (int ************)0x7;
    }
    else {
      ppppppppppppiVar21 = (int ************)0x0;
      if (DAT_00baae30 < (float)ppppppppppppiVar23) {
        ppppppppppppiVar21 = (int ************)&DAT_00000004;
      }
      param_1[0x62] = ppppppppppppiVar21;
      if (((float)ppppppppppppiVar23 <= fVar16) ||
         (ppppppppppppiVar21 = (int ************)&DAT_00000005, (float)param_1[0x2ed] < 0.0)) {
        ppppppppppppiVar21 = (int ************)0x6;
      }
      param_1[0x61] = ppppppppppppiVar21;
    }
    if ((((float)ppppppppppppiVar23 < 0.0) || ((float)param_1[0x2ed] < 0.0)) ||
       (ppppppppppppiVar17 = param_1[0x2ed], ppppppppppppiVar21 == (int ************)0x7)) {
      ppppppppppppiVar23 =
           (int ************)
           ((float)ppppppppppppiVar23 + (float)param_1[0x2ed] * (float)param_1[0xe7]);
      local_9c = (int ************)((float)param_1[0xe7] * DAT_00baa3a4 + (float)param_1[0x2ed]);
      param_1[0x2ef] = ppppppppppppiVar23;
      param_1[0x2ed] = local_9c;
      local_8c = ppppppppppppiVar23;
      ppppppppppppiVar17 = local_9c;
      if (ppppppppppppiVar21 == (int ************)0x7) {
        if (DAT_00baa81c < (float)ppppppppppppiVar23) {
          uVar5 = FUN_006eef60();
          FUN_00428b20(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar5);
          (*(code *)(*param_1)[10])();
          goto LAB_004f5f00;
        }
      }
      else if (0.0 < (float)ppppppppppppiVar23) {
        iVar11 = FUN_007f0800();
        ppppppppppppiVar17 = local_9c;
        if (iVar11 == 1) {
          param_1[0x61] = (int ************)0x7;
          ppppppppppppiVar23 = local_8c;
        }
        else {
          param_1[0x2ef] = (int ************)0x0;
          ppppppppppppiVar23 = (int ************)0x0;
          if (0.0 < (float)local_9c) {
            if ((float)local_9c == DAT_00baa75c) {
              param_1[0x2ed] = (int ************)0x0;
              ppppppppppppiVar17 = (int ************)0x0;
            }
            else {
              iVar11 = FUN_006eef60();
              local_a0 = (int ************)0x3f99999a;
              local_9c = (int ************)0x245;
              local_a8 = (int ************)
                         ((float)((double)iVar11 + (&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0);
              local_8c = (int ************)((float)param_1[0x2ed] * DAT_00baa120 + DAT_00baa198);
              ppppppppppppiVar23 = (int ************)&local_8c;
              if (DAT_00baa4b0 <= (float)local_8c) {
                ppppppppppppiVar23 = (int ************)&local_a0;
              }
              FUN_00956780();
              FUN_0092dc30(local_9c,*ppppppppppppiVar23,2,0,local_a8,0);
              ppppppppppppiVar17 = (int ************)((float)local_a4[0x2ed] * _DAT_00baad20);
              ppppppppppppiVar23 = local_a4[0x2ef];
              local_a4[0x2ed] = ppppppppppppiVar17;
              param_1 = local_a4;
            }
          }
        }
      }
    }
    ppppppppppppiVar21 = param_1[0xd9];
    param_1[0xd4] = (int ************)((float)ppppppppppppiVar23 - DAT_00baa848);
    local_a8 = (int ************)
               ((float)param_1[0xd8] * (float)param_1[0xd8] +
               (float)ppppppppppppiVar21 * (float)ppppppppppppiVar21);
    if (DAT_00baa75c < (float)local_a8) {
      auVar20 = ZEXT416(ppppppppppppiVar21);
      FUN_00499d60();
      auVar19._4_4_ = auVar20._4_4_;
      auVar19._8_4_ = auVar20._8_4_;
      auVar19._12_4_ = auVar20._12_4_;
      local_2c = (int ************)DAT_00b604e8;
      local_a0 = (int ************)(auVar20._0_4_ * DAT_00baa948 + DAT_00baa9b4);
      local_28 = (int ************)CONCAT22(local_28._2_2_,DAT_00b604ec);
      auVar19._0_4_ = (float)local_a0;
      if (DAT_00baab30 < (float)((uint)local_a0 & DAT_00bacb40)) {
        FUN_00499d20();
      }
      fVar16 = auVar19._0_4_;
      if (fVar16 <= DAT_00baaa78) {
        if (fVar16 < DAT_00baae7c) {
          auVar19._0_4_ = fVar16 + DAT_00baab30;
        }
      }
      else {
        auVar19._0_4_ = fVar16 - DAT_00baab30;
      }
      local_8c = (int ************)(auVar19._0_4_ / DAT_00baa910 + (float)DAT_00baa2d0);
      dVar25 = floor((double)(float)local_8c);
      iVar6 = (int)dVar25;
      iVar11 = iVar6 + 8;
      if (-1 < iVar6) {
        iVar11 = iVar6;
      }
      local_28 = (int ************)CONCAT31(local_28._1_3_,(char)iVar11 + '0');
      local_8c = (int ************)((float)iVar11 * DAT_00baa910);
      if (param_1[0x1f] == (int ************)0x0) {
        local_38 = 0xf;
        local_4c = (int *************)0x0;
        local_3c = 0;
      }
      else {
        FUN_0040cf50();
      }
      puVar14 = &local_2c;
      do {
        cVar2 = *(char *)puVar14;
        puVar14 = (undefined4 *)((int)puVar14 + 1);
      } while (cVar2 != '\0');
      local_a4 = local_4c;
      local_91 = FUN_0040cae0(&local_2c,(int)puVar14 - ((int)&local_2c + 1));
      if (0xf < local_38) {
        uVar3 = local_38 + 1;
        pppppppppppppiVar18 = local_a4;
        if (0xfff < uVar3) {
          pppppppppppppiVar18 = (int *************)local_a4[-1];
          uVar3 = local_38 + 0x24;
          if (0x1f < (uint)((int)local_a4 + (-4 - (int)pppppppppppppiVar18))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(pppppppppppppiVar18,uVar3);
      }
      if (((local_91 == '\0') && (cVar2 = FUN_0040a5d0(&local_2c,1), cVar2 != '\0')) &&
         ((param_1[0x1f] != (int ************)0x0 &&
          (FUN_00408e00(), param_1[0x1f] != (int ************)0x0)))) {
        *(undefined *)(param_1 + 0x23) = 0;
      }
      param_1[0x3b] = (int ************)((float)local_a0 - (float)local_8c);
      ppppppppppppiVar17 = param_1[0x2ed];
    }
    fVar16 = (float)ppppppppppppiVar17 * (float)ppppppppppppiVar17 + (float)local_a8;
    FUN_00435a50();
    pppppppppppppiVar18 = (int *************)((fVar16 - (float)DAT_00baa2d0) / DAT_00baa730);
    local_98 = (int *************)(fVar16 * DAT_00baa08c + (float)param_1[0x2ec]);
    if ((float)pppppppppppppiVar18 <= 0.0) {
      pppppppppppppiVar18 = (int *************)0x0;
    }
    if ((float)local_ac <= (float)pppppppppppppiVar18) {
      pppppppppppppiVar18 = local_ac;
    }
    param_1[0x2ec] = (int ************)local_98;
    param_1[0xdb] =
         (int ************)
         (((float)pppppppppppppiVar18 * DAT_00baa140 + _DAT_00baa3c8) * (float)param_1[0xdb]);
    while ((float)local_98 < 0.0) {
      local_98 = (int *************)((float)param_1[0x2ec] + (float)local_ac);
      param_1[0x2ec] = (int ************)local_98;
    }
    while ((float)local_ac <= (float)local_98) {
      local_98 = (int *************)((float)param_1[0x2ec] - (float)local_ac);
      param_1[0x2ec] = (int ************)local_98;
    }
    ppppppppppppiVar23 = param_1[0x1f];
    if (ppppppppppppiVar23 == (int ************)0x0) {
      fVar16 = (float)local_98 * 0.0;
      iVar11 = -1;
    }
    else {
      local_8c = param_1[0x22];
      dVar25 = floor((double)(float)local_8c);
      local_8c = (int ************)(float)dVar25;
      fVar16 = (float)(int)ppppppppppppiVar23[0xc] * (float)local_98;
      iVar11 = (int)dVar25;
    }
    if (((int)fVar16 != iVar11) && (ppppppppppppiVar23 != (int ************)0x0)) {
      FUN_00408e00();
    }
  }
  if ((((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) ==
        ((float)param_1[0xcd] == (float)DAT_00c7b640)) ||
      ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
       ((float)param_1[0xce] == (float)DAT_00c7b644))) ||
     (DAT_00baa85c <
      (float)param_1[0xd8] * (float)param_1[0xd8] + (float)param_1[0xd9] * (float)param_1[0xd9])) {
    ppppppppppppiVar23 = param_1[0x5e];
    local_a4 = (int *************)0x0;
    fVar16 = DAT_00baa904;
    pppppppiVar24 = DAT_00baa2d0;
    fVar22 = DAT_00baa47c;
    if ((int)param_1[0x5f] - (int)ppppppppppppiVar23 >> 3 != 0) {
      do {
        iVar11 = *(int *)(DAT_00c71678 + 0x18300);
        iVar15 = (int)((((float)ppppppppppppiVar23[(int)local_a4 * 2] * fVar22 +
                        (float)param_1[0xcf]) - fVar16) / fVar16 + (float)pppppppiVar24);
        iVar6 = (int)((((float)ppppppppppppiVar23[(int)local_a4 * 2 + 1] * fVar22 +
                       (float)param_1[0xd0]) - DAT_00baaa00) / fVar16 + (float)pppppppiVar24);
        if (((((-1 < iVar15) && (iVar15 < *(int *)(iVar11 + 0xc))) &&
             ((-1 < iVar6 &&
              ((iVar6 < *(int *)(iVar11 + 0x10) &&
               (uVar3 = iVar6 * *(int *)(iVar11 + 0xc) + iVar15, uVar3 < 0x1c0)))))) &&
            (local_28 = *(int *************)(iVar11 + 0x24 + uVar3 * 4),
            local_28 != (int ************)0x0)) &&
           ((local_28[9] != (int ***********)param_1[0x2f0] &&
            ((local_28[0xf] == (int ***********)0x3 || (local_28[0xf] == (int ***********)0x2))))))
        {
          ppppppppppiVar1 = (*local_28)[5];
          FUN_00431310();
          (*(code *)ppppppppppiVar1)(0,&uStack_84);
          fVar16 = DAT_00baa904;
          pppppppiVar24 = DAT_00baa2d0;
          fVar22 = DAT_00baa47c;
        }
        local_a4 = (int *************)((int)local_a4 + 1);
        ppppppppppppiVar23 = param_1[0x5e];
      } while (local_a4 < (int *************)((int)param_1[0x5f] - (int)ppppppppppppiVar23 >> 3));
    }
  }
  iVar11 = FUN_009be6b0();
  if ((iVar11 == 0) || (iVar11 = FUN_007cb6e0(), iVar11 < 2)) {
    bVar9 = false;
  }
  else {
    bVar9 = true;
  }
  if ((param_1[0x2f1] != (int ************)0x0) != bVar9) {
    ppppppppppppiVar21 = (int ************)(1 - (int)param_1[0x2f1]);
    param_1[0x2f1] = ppppppppppppiVar21;
    ppppppppppppiVar23 = (int ************)DAT_00baa630;
    if (ppppppppppppiVar21 != (int ************)0x0) {
      ppppppppppppiVar23 = (int ************)0x0;
    }
    local_ac = param_1 + 0x12;
    param_1[0xe2] = ppppppppppppiVar23;
    pcVar13 = "gfx/Monsters/repentance/ball_and_chain_retracted.png";
    local_3c = 0;
    if (ppppppppppppiVar21 == (int ************)0x0) {
      pcVar13 = "gfx/Monsters/repentance/ball_and_chain.png";
    }
    local_38 = 0xf;
    local_4c = (int *************)0x0;
    pcVar12 = pcVar13;
    do {
      cVar2 = *pcVar12;
      pcVar12 = pcVar12 + 1;
    } while (cVar2 != '\0');
    FUN_0040ccd0(pcVar13,(int)pcVar12 - (int)(pcVar13 + 1));
    pppppppppppppiVar18 = local_4c;
    local_14 = 0;
    if (0 < (int)param_1[0x32]) {
      local_28 = param_1[0x31];
      pppppppppppppiVar8 = (int *************)(local_28 + 2);
      ppppppppppppiVar23 = (int ************)pppppppppppppiVar8;
      if (&DAT_0000000f < local_28[7]) {
        ppppppppppppiVar23 = *pppppppppppppiVar8;
      }
      cVar2 = FUN_0040cae0(ppppppppppppiVar23,local_28[6]);
      if (cVar2 == '\0') {
        if (pppppppppppppiVar8 == (int *************)&local_4c) {
          *(undefined *)(local_28 + 0xc) = 0;
        }
        else {
          pppppppppppppiVar8 = (int *************)&local_4c;
          if (0xf < local_38) {
            pppppppppppppiVar8 = pppppppppppppiVar18;
          }
          FUN_0040ccd0(pppppppppppppiVar8,local_3c);
          *(undefined *)(local_ac[0x1f] + 0xc) = 0;
          pppppppppppppiVar18 = local_4c;
        }
      }
    }
    local_14 = 0xffffffff;
    if (0xf < local_38) {
      uVar3 = local_38 + 1;
      pppppppppppppiVar8 = pppppppppppppiVar18;
      if (0xfff < uVar3) {
        pppppppppppppiVar8 = (int *************)pppppppppppppiVar18[-1];
        uVar3 = local_38 + 0x24;
        if (0x1f < (uint)((int)pppppppppppppiVar18 + (-4 - (int)pppppppppppppiVar8))) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(pppppppppppppiVar8,uVar3);
    }
    FUN_0040c000();
  }
LAB_004f5f00:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

