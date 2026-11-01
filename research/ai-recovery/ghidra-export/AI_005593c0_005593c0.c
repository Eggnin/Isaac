/* Local J460 decompiler output.
 * VA: 0x005593c0
 * Entry: 005593c0
 * Dispatcher: 0x006c2990
 * Types: 838
 * Identities: 838.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0055a010; instructions=645
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=838; identities=838.0.0; dispatcher=0x006c2990;
   end=0x0055a010; instructions=645 */

void __fastcall AI_005593c0(int param_1)

{
  int *piVar1;
  float fVar2;
  char cVar3;
  uint uVar4;
  char *pcVar5;
  int iVar6;
  float *pfVar7;
  float *pfVar8;
  undefined4 uVar9;
  float fVar10;
  int iVar11;
  undefined auVar12 [16];
  float fVar13;
  float fVar14;
  float fVar15;
  char local_110 [4];
  int local_10c;
  uint local_104;
  float local_100;
  float local_fc;
  undefined local_f8 [4];
  float local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  undefined local_d0 [44];
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
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4cf0;
  local_1c = ExceptionList;
  puStack_20 = &stack0xfffffffc;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_24 = uVar4;
  ExceptionList = &local_1c;
  if (*(int *)(param_1 + 0xb74) == 3) {
    iVar6 = *(int *)(param_1 + 0xb7c);
    if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (*(int *)(iVar6 + 0x28) == 1)) ||
        (*(int *)(iVar6 + 0x28) - 10U < 0x3de)) &&
       (((*(uint *)(iVar6 + 0x168) & 0x20000000) != 0) ==
        ((*(uint *)(param_1 + 0x168) & 0x20000000) != 0))) {
      *(undefined4 *)(param_1 + 0xb80) = 0;
    }
    goto LAB_00559fea;
  }
  fVar10 = *(float *)(param_1 + 0xba0);
  pfVar8 = (float *)(param_1 + 0xba0);
  if (0 < (int)fVar10) {
    fVar10 = (float)((int)fVar10 -
                    ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)));
    *pfVar8 = fVar10;
  }
  if ((*(uint *)(param_1 + 0x168) & 0x1000a00) != 0) {
    local_d4 = 1.401298e-44;
    pfVar7 = &local_d4;
    if (9 < (int)fVar10) {
      pfVar7 = pfVar8;
    }
    *pfVar8 = *pfVar7;
  }
  iVar6 = *(int *)(param_1 + 0xb64);
  if (iVar6 == 0) {
    FUN_005591c0(uVar4);
    iVar6 = *(int *)(param_1 + 0xbec);
    if (iVar6 != 0) {
      local_d8 = *(float *)(param_1 + 0x340) - *(float *)(iVar6 + 0x340);
      local_d4 = *(float *)(param_1 + 0x33c) - *(float *)(iVar6 + 0x33c);
      fVar15 = local_d8 * local_d8 + local_d4 * local_d4;
      FUN_00435a50();
      fVar13 = local_d8;
      fVar10 = local_d4;
      if (DAT_00ba9fe4 < fVar15) {
        fVar15 = (*(float *)(iVar6 + 0x370) + DAT_00baa904) / fVar15;
        fVar13 = local_d8 * fVar15;
        fVar10 = local_d4 * fVar15;
      }
      fVar15 = *(float *)(iVar6 + 0x340);
      *(float *)(param_1 + 0x33c) = fVar10 + *(float *)(iVar6 + 0x33c);
      *(float *)(param_1 + 0x340) = fVar13 + fVar15;
      iVar6 = *(int *)(param_1 + 0xbec);
    }
    *(undefined4 *)(param_1 + 0xba4) = 0x28;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0xf18) = 4;
    *(undefined4 *)(param_1 + 0x184) = 0;
    *(uint *)(param_1 + 0x16c) = *(uint *)(param_1 + 0x16c) | 0x2000;
    *(uint *)(param_1 + 0xbc0) = (uint)(iVar6 != 0);
    *(undefined4 *)(param_1 + 0x168) = *(undefined4 *)(param_1 + 0x168);
    uVar4 = DAT_00c798e4;
    iVar6 = FUN_0040b220(3);
    uVar9 = 1;
    if ((uVar4 & 4) == 0) {
      uVar9 = 6;
    }
    *(undefined4 *)(iVar6 + 0x78) = 0;
    *(undefined4 *)(iVar6 + 0x7c) = uVar9;
    *(undefined4 *)(iVar6 + 0x80) = 1;
    *(undefined4 *)(iVar6 + 0x84) = 1;
    *(undefined4 *)(iVar6 + 0x88) = 1;
    goto LAB_00559fea;
  }
  if ((iVar6 != 3) && (iVar6 != 8)) goto LAB_00559fea;
  pcVar5 = "Fly";
  if (iVar6 != 3) {
    pcVar5 = "Attack";
  }
  FUN_0040a380(pcVar5,0);
  iVar6 = *(int *)(param_1 + 0xbec);
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
  if (iVar6 == 0) {
    FUN_005591c0(uVar4);
    iVar6 = *(int *)(param_1 + 0xbec);
    *(uint *)(param_1 + 0xbc0) = (uint)(iVar6 != 0);
    if (iVar6 != 0) goto LAB_005595ce;
    iVar6 = FUN_006be840();
    if (*(int *)(param_1 + 0xbec) != 0) {
      local_d4 = (float)(param_1 + 0xbec);
      FUN_004cf210(&local_d4);
    }
    *(int *)(param_1 + 0xbec) = iVar6;
    if (iVar6 != 0) {
      FUN_004cdcf0((int *)(param_1 + 0xbec));
      iVar6 = *(int *)(param_1 + 0xbec);
    }
    pfVar8 = (float *)(param_1 + 0x380);
    local_d4 = *(float *)(param_1 + 900) * DAT_00baa2d0;
    pfVar7 = &local_d4;
    if (*pfVar8 <= local_d4) {
      pfVar7 = pfVar8;
    }
    *pfVar8 = *pfVar7;
    if (iVar6 != 0) goto LAB_005595ce;
  }
  else {
LAB_005595ce:
    local_d4 = *(float *)(iVar6 + 0x370) + DAT_00baa87c;
    local_dc = *(float *)(iVar6 + 0x38c) - *(float *)(param_1 + 0x33c);
    local_e0 = *(float *)(iVar6 + 0x390) - *(float *)(param_1 + 0x340);
    if (*(int *)(param_1 + 0xbc0) != 0) {
      *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x360) - *(float *)(param_1 + 0xbb0);
      *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x364) - *(float *)(param_1 + 0xbb4);
    }
    local_e4 = local_e0 * local_e0 + local_dc * local_dc;
    FUN_00435a50();
    if (NAN(local_e4) != (local_e4 == 0.0)) {
      local_e4 = DAT_00baa120;
    }
    local_dc = local_dc / local_e4;
    local_e0 = local_e0 / local_e4;
    local_d8 = DAT_00baa54c;
    FUN_0041d540();
    fVar13 = DAT_00baa54c;
    FUN_0041d520();
    piVar1 = (int *)(param_1 + 0xbec);
    fVar10 = (local_e4 - local_d4) * DAT_00baa0d0;
    local_e8 = local_d8 * local_dc - fVar13 * local_e0;
    local_100 = *(float *)(param_1 + 0x364);
    local_d8 = local_d8 * local_e0 + fVar13 * local_dc;
    local_fc = *(float *)(param_1 + 0x360);
    if (fVar10 <= DAT_00baad74) {
      fVar10 = DAT_00baad74;
    }
    local_e4 = (local_e4 - local_d4) / DAT_00baab08;
    if (DAT_00baa630 <= fVar10) {
      fVar10 = DAT_00baa630;
    }
    local_f4 = fVar10 * local_dc * DAT_00baa2d0;
    local_ec = fVar10 * local_e0 * DAT_00baa2d0;
    fVar10 = DAT_00baa7a4 - (local_100 * local_d8 + local_fc * local_e8);
    auVar12 = ZEXT416((uint)fVar10);
    if (local_e4 <= 0.0) {
      local_e4 = 0.0;
    }
    if (fVar10 <= 0.0) {
      auVar12 = ZEXT416(0) << 0x20;
    }
    if (DAT_00baa6fc <= auVar12._0_4_) {
      auVar12._0_4_ = DAT_00baa6fc;
    }
    local_e8 = local_e8 * auVar12._0_4_;
    local_d8 = local_d8 * auVar12._0_4_;
    if (DAT_00baa454 <= local_e4) {
      local_e4 = DAT_00baa454;
    }
    if (*(int *)(param_1 + 0xbc0) == 0) {
      fVar10 = DAT_00baa454 - local_e4;
      iVar6 = 0;
    }
    else {
      fVar10 = local_e0 * local_d4;
      local_e0 = (*(float *)(*piVar1 + 0x33c) - local_dc * local_d4) - *(float *)(param_1 + 0x33c);
      local_dc = (*(float *)(*piVar1 + 0x340) - fVar10) - *(float *)(param_1 + 0x340);
      fVar10 = local_e0 * local_e0 + local_dc * local_dc;
      FUN_00435a50();
      fVar13 = local_e0;
      fVar15 = local_dc;
      if ((DAT_00baa854 < fVar10) && (0.0 < fVar10)) {
        fVar13 = local_e0 * (DAT_00baa854 / fVar10);
        fVar15 = local_dc * (DAT_00baa854 / fVar10);
      }
      fVar2 = *(float *)(param_1 + 0x39c);
      fVar10 = DAT_00baa454 - local_e4;
      fVar14 = DAT_00baa454 - fVar10 * DAT_00baa2d0;
      if ((NAN(fVar2) || NAN(DAT_00baa454)) == (fVar2 == DAT_00baa454)) {
        fVar14 = fVar14 / ((fVar2 + fVar14) - fVar2 * fVar14);
      }
      fVar14 = DAT_00baa454 - fVar14;
      *(float *)(param_1 + 0x360) = local_fc + (fVar13 - local_fc) * fVar14;
      *(float *)(param_1 + 0x364) = local_100 + (fVar15 - local_100) * fVar14;
      iVar6 = *(int *)(param_1 + 0xbc0);
    }
    fVar13 = (local_f4 + local_e8) * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
    fVar15 = (local_ec + local_d8) * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
    *(float *)(param_1 + 0x360) = fVar13;
    *(float *)(param_1 + 0x364) = fVar15;
    if (iVar6 == 0) {
      *(undefined4 *)(param_1 + 0xbb0) = DAT_00c7b640;
      *(undefined4 *)(param_1 + 0xbb4) = DAT_00c7b644;
    }
    else {
      fVar2 = *(float *)(*piVar1 + 0x364);
      *(float *)(param_1 + 0x360) = fVar13 + fVar10 * *(float *)(*piVar1 + 0x360);
      *(float *)(param_1 + 0x364) = fVar10 * fVar2 + fVar15;
      fVar13 = *(float *)(*piVar1 + 0x364);
      *(float *)(param_1 + 0xbb0) = fVar10 * *(float *)(*piVar1 + 0x360);
      *(float *)(param_1 + 0xbb4) = fVar10 * fVar13;
    }
    FUN_0041a790(local_110,param_1 + 0x33c,8);
    uVar4 = 0;
    if (local_104 != 0) {
      do {
        iVar6 = *(int *)(local_10c + uVar4 * 4);
        if ((((iVar6 != 0) &&
             (((1 < *(int *)(DAT_00c71678 + 0x26614) &&
               (iVar11 = *(int *)(iVar6 + 0x28), iVar11 == 1)) ||
              (iVar11 = *(int *)(iVar6 + 0x28), iVar11 - 10U < 0x3de)))) &&
            (((iVar6 != param_1 && (iVar11 == *(int *)(param_1 + 0x28))) &&
             (((*(uint *)(iVar6 + 0x168) & 0x20000000) != 0) ==
              ((*(uint *)(param_1 + 0x168) & 0x20000000) != 0))))) &&
           (*(int *)(iVar6 + 0xbec) == *(int *)(param_1 + 0xbec))) {
          local_f4 = *(float *)(param_1 + 0x340) - *(float *)(iVar6 + 0x340);
          local_ec = *(float *)(param_1 + 0x33c) - *(float *)(iVar6 + 0x33c);
          fVar10 = local_f4 * local_f4 + local_ec * local_ec;
          FUN_00435a50();
          if (0.0 < fVar10) {
            fVar13 = fVar10 * DAT_00baa120 + DAT_00baa81c;
            fVar15 = ((local_f4 / fVar10) / fVar13) * DAT_00baa81c;
            *(float *)(param_1 + 0x360) =
                 ((local_ec / fVar10) / fVar13) * DAT_00baa81c * *(float *)(param_1 + 0x39c) +
                 *(float *)(param_1 + 0x360);
            *(float *)(param_1 + 0x364) =
                 fVar15 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
          }
        }
        uVar4 = uVar4 + 1;
      } while (uVar4 < local_104);
    }
    if (local_110[0] == '\0') {
      local_14 = 0;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
    }
  }
  if (((*(int *)(param_1 + 0xb64) != 3) || (uVar4 = FUN_006eef60(), uVar4 % 9 != 0)) ||
     ((0 < *(int *)(param_1 + 0xba0) ||
      (pfVar8 = (float *)FUN_006bec40(local_f8,0), fVar10 = *(float *)(param_1 + 0x33c) - *pfVar8,
      fVar13 = *(float *)(param_1 + 0x340) - pfVar8[1],
      DAT_00baac64 <= fVar13 * fVar13 + fVar10 * fVar10)))) {
    if (*(int *)(param_1 + 0xb64) == 8) {
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar3 = FUN_0040add0(&DAT_00b6166c);
        if (cVar3 != '\0') {
          local_d4 = 6.600116e-43;
          FUN_00956780();
          FUN_0092dc30(local_d4,0x3f800000,2,0,0x3f800000,0);
        }
        if (*(int *)(param_1 + 0x7c) != 0) {
          cVar3 = FUN_0040add0("Shoot");
          if (cVar3 != '\0') {
            local_d4 = 2.143987e-43;
            FUN_00956780();
            FUN_0092dc30(local_d4,0x3f800000,2,0,0x3f800000,0);
            iVar6 = FUN_006be840();
            AI_0043ef30();
            local_d4 = (*(float *)(iVar6 + 0x33c) + *(float *)(iVar6 + 0x360)) -
                       *(float *)(param_1 + 0x33c);
            local_d8 = (*(float *)(iVar6 + 0x340) + *(float *)(iVar6 + 0x364)) -
                       *(float *)(param_1 + 0x340);
            fVar10 = local_d4 * local_d4 + local_d8 * local_d8;
            FUN_00435a50();
            local_f0 = local_d4;
            local_ec = local_d8;
            if (0.0 < fVar10) {
              local_f0 = local_d4 * (DAT_00baa454 / fVar10);
              local_ec = local_d8 * (DAT_00baa454 / fVar10);
            }
            local_ec = local_ec * DAT_00baa81c;
            local_f0 = local_f0 * DAT_00baa81c;
            local_7c = DAT_00c33cd8;
            local_a4 = _DAT_00c33cb0;
            uStack_a0 = uRam00c33cb4;
            uStack_9c = uRam00c33cb8;
            uStack_98 = uRam00c33cbc;
            local_3c = 4;
            local_94 = _DAT_00c33cc0;
            uStack_90 = uRam00c33cc4;
            uStack_8c = uRam00c33cc8;
            uStack_88 = uRam00c33ccc;
            local_84 = DAT_00c33cd0;
            local_78 = 0x2000;
            local_74 = 0;
            FUN_006cb2e0(param_1 + 0x33c,&local_f0,0,local_d0);
          }
          if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
          goto LAB_00559fea;
        }
      }
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined4 *)(param_1 + 0xba0) = 0x2d;
    }
  }
  else {
    *(undefined4 *)(param_1 + 0xb64) = 8;
    FUN_0040a380("Attack",0);
  }
LAB_00559fea:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

