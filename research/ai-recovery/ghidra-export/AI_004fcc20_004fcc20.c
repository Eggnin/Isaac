/* Local J460 decompiler output.
 * VA: 0x004fcc20
 * Entry: 004fcc20
 * Dispatcher: 0x006c2990
 * Types: 821
 * Identities: 821.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004fd280; instructions=396
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=821; identities=821.0.0; dispatcher=0x006c2990;
   end=0x004fd280; instructions=396 */

void __fastcall AI_004fcc20(int param_1)

{
  float *pfVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char cVar5;
  int iVar6;
  float *pfVar7;
  undefined4 uVar8;
  int *piVar9;
  uint3 uVar10;
  uint uVar11;
  uint uVar12;
  float fVar13;
  float fVar14;
  undefined4 local_a0 [8];
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  float local_74;
  float local_70;
  float local_6c;
  float local_68;
  undefined local_64 [16];
  int local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined4 local_38;
  undefined local_34 [8];
  float local_2c;
  float local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  fVar13 = DAT_00baa380;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2a25;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  if (*(int *)(param_1 + 0xb74) == 1) {
    pfVar1 = *(float **)(param_1 + 0xc);
    for (pfVar7 = *(float **)(param_1 + 8); pfVar7 != pfVar1; pfVar7 = pfVar7 + 0xe) {
      if (((uint)pfVar7[2] & 0x1000004) == 0) {
        fVar14 = *pfVar7;
        *(float *)(param_1 + 0x14) = *(float *)(param_1 + 0x14) - fVar14 * fVar13;
        *pfVar7 = *pfVar7 - fVar14 * fVar13;
      }
    }
    puStack_20 = &stack0xfffffffc;
    if (*(float *)(param_1 + 0x14) <= 0.0 && *(float *)(param_1 + 0x14) != 0.0) {
      *(undefined4 *)(param_1 + 0x14) = 0;
      puStack_20 = &stack0xfffffffc;
    }
    goto LAB_004fd25a;
  }
  iVar6 = *(int *)(param_1 + 0xb64);
  if (iVar6 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380("WalkVert",0);
    uVar4 = _UNK_00babf2c;
    uVar3 = _UNK_00babf28;
    uVar2 = _UNK_00babf24;
    uVar8 = _DAT_00babf20;
    local_80 = 0x3df0f0f2;
    uStack_7c = 0x3df0f0f2;
    local_78 = 0x3df0f0f2;
    if ((undefined4 *)(param_1 + 0x1e4) != local_a0) {
      *(undefined8 *)(param_1 + 0x204) = 0x3df0f0f23df0f0f2;
      *(undefined4 *)(param_1 + 0x1e4) = uVar8;
      *(undefined4 *)(param_1 + 0x1e8) = uVar2;
      *(undefined4 *)(param_1 + 0x1ec) = uVar3;
      *(undefined4 *)(param_1 + 0x1f0) = uVar4;
      *(undefined4 *)(param_1 + 0x20c) = 0x3df0f0f2;
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
    }
    *(undefined4 *)(param_1 + 0xf18) = 1;
    goto LAB_004fd25a;
  }
  if (iVar6 != 4) {
    puStack_20 = &stack0xfffffffc;
    if (iVar6 == 8) {
      puStack_20 = &stack0xfffffffc;
      FUN_006d8b20(0);
      if ((*(int *)(param_1 + 0x7c) != 0) && (cVar5 = FUN_0040add0("Shoot"), cVar5 != '\0')) {
        FUN_006d6ba0(0x1e2,0x3f800000,10,0,0x3f800000);
        iVar6 = FUN_006be840();
        local_70 = *(float *)(param_1 + 0x33c);
        local_68 = *(float *)(param_1 + 0x340);
        fVar13 = local_68 - *(float *)(iVar6 + 0x340);
        fVar14 = local_70 - *(float *)(iVar6 + 0x33c);
        fVar13 = fVar13 * fVar13 + fVar14 * fVar14;
        FUN_00435a50();
        local_6c = *(float *)(iVar6 + 0x360) * fVar13 * DAT_00baa120 + *(float *)(iVar6 + 0x33c);
        fVar13 = *(float *)(iVar6 + 0x364) * fVar13 * DAT_00baa120 + *(float *)(iVar6 + 0x340);
        if (*(int *)(param_1 + 0xf1c) != -1) {
          pfVar7 = (float *)FUN_006d8d30(&local_2c);
          local_6c = *pfVar7;
          fVar13 = pfVar7[1];
        }
        local_68 = fVar13 - local_68;
        local_6c = local_6c - local_70;
        if (*(char *)(param_1 + 0x148) == '\0') {
          if (local_6c <= DAT_00ba9fe4) {
            local_6c = DAT_00ba9fe4;
          }
        }
        else if (DAT_00ba9fe4 <= local_6c) {
          local_6c = DAT_00ba9fe4;
        }
        FUN_00a0ffc0();
        *(float *)(param_1 + 0x334) = local_6c;
        *(float *)(param_1 + 0x338) = local_68;
        *(undefined4 *)(param_1 + 0x410) = 5;
        uVar8 = FUN_006eef60();
        local_74 = local_6c * DAT_00baa81c;
        local_2c = local_6c * DAT_00baa784 + *(float *)(param_1 + 0x33c);
        local_70 = local_68 * DAT_00baa81c;
        local_28 = local_68 * DAT_00baa784 + *(float *)(param_1 + 0x340);
        piVar9 = (int *)FUN_00428b20(0x333,0,&local_2c,&local_74,param_1,0,uVar8);
        piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
        piVar9[0x5b] = piVar9[0x5b];
        cVar5 = FUN_00417430(0x100,0);
        if (cVar5 != '\0') {
          FUN_00431310(0);
          FUN_006ad870(local_64,0xffffffff,0,0);
        }
        (**(code **)(*piVar9 + 0xc))();
        piVar9[0x2d9] = 0x10;
        piVar9[0xe0] = 0x3dcccccd;
        piVar9[0x2f0] = 0x3c;
      }
      if (*(int *)(param_1 + 0x410) < 1) {
        fVar13 = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      }
      else {
        *(int *)(param_1 + 0x410) =
             ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
             *(int *)(param_1 + 0x410);
        fVar13 = *(float *)(param_1 + 0x338) * DAT_00baa75c;
        *(float *)(param_1 + 0x360) =
             *(float *)(param_1 + 0x360) -
             *(float *)(param_1 + 0x334) * DAT_00baa75c * *(float *)(param_1 + 0x39c);
        *(float *)(param_1 + 0x364) =
             *(float *)(param_1 + 0x364) - fVar13 * *(float *)(param_1 + 0x39c);
        fVar13 = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
      }
      *(float *)(param_1 + 0x36c) = fVar13;
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
      }
    }
    goto LAB_004fd25a;
  }
  local_40 = 0xf;
  local_44 = 8;
  local_54 = s_WalkVert_00b1dd18._0_4_;
  local_50 = s_WalkVert_00b1dd18._4_4_;
  local_4c = 0;
  local_28 = 2.101948e-44;
  local_2c = 1.121039e-44;
  local_3c = s_WalkHori_00b1dd30._0_4_;
  local_38 = s_WalkHori_00b1dd30._4_4_;
  local_34[0] = 0;
  local_14._0_1_ = 1;
  local_14._1_3_ = 0;
  FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
  local_14 = (uint)local_14._1_3_ << 8;
  if (0xf < (uint)local_28) {
    uVar11 = (int)local_28 + 1;
    uVar12 = local_3c;
    if (0xfff < uVar11) {
      uVar12 = *(uint *)(local_3c - 4);
      uVar11 = (int)local_28 + 0x24;
      if (0x1f < (local_3c - uVar12) - 4) goto LAB_004fd11b;
    }
    FUN_00aef15c(uVar12,uVar11);
  }
  local_14 = -1;
  local_2c = 0.0;
  local_28 = 2.101948e-44;
  local_3c = local_3c & 0xffffff00;
  if (0xf < local_40) {
    uVar12 = local_40 + 1;
    iVar6 = local_54;
    if (0xfff < uVar12) {
      iVar6 = *(int *)(local_54 + -4);
      uVar12 = local_40 + 0x24;
      if (0x1f < (local_54 - iVar6) - 4U) {
LAB_004fd11b:
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar6,uVar12);
  }
  uVar12 = *(uint *)(param_1 + 0x168) & 0x20000000;
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
  uVar10 = (uint3)(uVar12 >> 8);
  if ((uVar12 == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
    iVar6 = (uint)uVar10 << 8;
  }
  else {
    iVar6 = CONCAT31(uVar10,1);
  }
  FUN_007e6300(iVar6);
  FUN_006d8b20(0);
  if (*(int *)(param_1 + 0xf1c) == -1) {
    uVar12 = FUN_006eef60();
    if (uVar12 % 0x46 != 0) goto LAB_004fd25a;
  }
  else {
    cVar5 = FUN_006d8260(9);
    if (cVar5 == '\0') goto LAB_004fd25a;
    FUN_006d8d30(&local_2c);
    cVar5 = FUN_00a10630(param_1 + 0x33c);
    if (cVar5 == '\0') goto LAB_004fd25a;
  }
  cVar5 = FUN_00417430(0xa00,0);
  if (cVar5 == '\0') {
    iVar6 = FUN_006d0c60(local_34,0x333,0);
    uVar12 = *(uint *)(iVar6 + 0xc);
    FUN_004175b0();
    if (uVar12 < 4) {
      *(undefined4 *)(param_1 + 0xb64) = 8;
      FUN_0040a380("Attack",0);
      iVar6 = FUN_006be840();
      fVar13 = *(float *)(iVar6 + 0x33c);
      if (*(int *)(param_1 + 0xf1c) != -1) {
        pfVar7 = (float *)FUN_006d8d30(&local_2c);
        fVar13 = *pfVar7;
      }
      *(bool *)(param_1 + 0x148) = fVar13 < *(float *)(param_1 + 0x33c);
    }
  }
LAB_004fd25a:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

