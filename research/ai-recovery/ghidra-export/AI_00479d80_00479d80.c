/* Local J460 decompiler output.
 * VA: 0x00479d80
 * Entry: 00479d80
 * Dispatcher: 0x006c2990
 * Types: 52
 * Identities: 52.0.0,52.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0047a360; instructions=382
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=52; identities=52.0.0,52.1.0; dispatcher=0x006c2990;
   end=0x0047a360; instructions=382 */

void __fastcall AI_00479d80(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char cVar5;
  undefined4 *puVar6;
  uint uVar7;
  undefined4 uVar8;
  int *piVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  int iVar12;
  float fVar13;
  char *pcVar14;
  undefined1 *puVar15;
  undefined auStack_130 [4];
  undefined4 *local_12c;
  undefined4 *local_128;
  undefined4 *local_124;
  float local_120;
  int local_11c;
  undefined4 local_118;
  undefined4 *local_114;
  undefined4 local_110 [8];
  int local_f0;
  undefined4 uStack_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined local_d4 [16];
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  uint local_c;
  
  uVar4 = _UNK_00bac7bc;
  uVar3 = _UNK_00bac7b8;
  uVar2 = _UNK_00bac7b4;
  uVar8 = _DAT_00bac7b0;
  local_c = DAT_00bf93b4 ^ (uint)auStack_130;
  iVar12 = *(int *)(param_1 + 0xb64);
  local_11c = param_1;
  if (iVar12 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    uStack_ec = 0x3e4ccccd;
    local_e8 = 0x3e4ccccd;
    local_f0 = 0;
    if ((undefined4 *)(param_1 + 0x1e4) != local_110) {
      *(undefined8 *)(param_1 + 0x204) = 0x3e4ccccd00000000;
      *(undefined4 *)(param_1 + 0x1e4) = uVar8;
      *(undefined4 *)(param_1 + 0x1e8) = uVar2;
      *(undefined4 *)(param_1 + 0x1ec) = uVar3;
      *(undefined4 *)(param_1 + 0x1f0) = uVar4;
      *(undefined4 *)(param_1 + 0x20c) = 0x3e4ccccd;
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
      local_f0 = iVar12;
      FUN_00aef12b();
      return;
    }
    goto LAB_0047a34c;
  }
  puVar6 = *(undefined4 **)(param_1 + 8);
  local_128 = *(undefined4 **)(param_1 + 0xc);
  local_114 = puVar6;
  if (puVar6 != local_128) {
    local_12c = puVar6 + 0xe;
    puVar10 = local_12c;
    do {
      if (puVar10[-8] == *(int *)(param_1 + 0x28)) {
        puVar11 = puVar10;
        if (puVar10 != local_128) {
          puVar6 = puVar10;
          puVar11 = puVar10 + -3;
          do {
            puVar11[-0xb] = *puVar6;
            puVar6 = puVar6 + 0xe;
            puVar11[-9] = puVar11[5];
            puVar11[-8] = puVar11[6];
            puVar11[-7] = puVar11[7];
            puVar11[-6] = puVar11[8];
            puVar11[-5] = puVar11[9];
            puVar11[-4] = puVar11[10];
            puVar11[-3] = puVar11[0xb];
            puVar11[-2] = puVar11[0xc];
            puVar11[-1] = puVar11[0xd];
            *puVar11 = puVar11[0xe];
            puVar11[1] = puVar11[0xf];
            puVar11[2] = puVar11[0x10];
            puVar11 = puVar11 + 0xe;
          } while (puVar6 != local_128);
          local_128 = *(undefined4 **)(param_1 + 0xc);
          puVar6 = local_114;
          puVar11 = local_12c;
        }
        local_128 = local_128 + -0xe;
        *(undefined4 **)(param_1 + 0xc) = local_128;
        local_124 = puVar10;
      }
      else {
        puVar6 = puVar6 + 0xe;
        puVar11 = puVar10 + 0xe;
        local_12c = puVar11;
        local_114 = puVar6;
      }
      puVar10 = puVar11;
    } while (puVar6 != local_128);
    iVar12 = *(int *)(param_1 + 0xb64);
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa380;
  if (iVar12 == 4) {
    fVar13 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
             *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
    FUN_00435a50();
    if ((float)DAT_00baa454 <= fVar13) {
      if ((float)(*(uint *)(param_1 + 0x360) & DAT_00bacb40) <=
          (float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40)) {
        if (*(float *)(param_1 + 0x364) <= DAT_00ba9fe4) {
          pcVar14 = (char *)&DAT_00b1e020;
        }
        else {
          pcVar14 = "WalkDown";
        }
        FUN_0040a380(pcVar14,0);
      }
      else {
        FUN_0040a380("WalkHori",0);
        *(bool *)(param_1 + 0x148) =
             *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
      }
    }
    else {
      cVar5 = FUN_0040a5d0("WalkDown",1);
      if (((cVar5 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
         (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
        *(undefined *)(param_1 + 0x8c) = 0;
      }
    }
    FUN_007e5340(0x3f800000,0);
    uVar7 = FUN_006eef60();
    if (uVar7 % 0x32 == 0) {
      *(undefined4 *)(param_1 + 0x410) = 0;
      uVar7 = FUN_006eef60();
      if ((uVar7 & 1) == 0) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        puVar15 = &DAT_00b1d53c;
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 9;
        puVar15 = &DAT_00b1d554;
      }
      cVar5 = FUN_0040a5d0(puVar15,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
  }
  else {
    if (iVar12 == 8) {
      if ((*(int *)(param_1 + 0x2c) == 1) && (*(int *)(param_1 + 0x410) == 0x14)) {
        uVar8 = AI_0043ef30();
        local_124 = (undefined4 *)(*(float *)(param_1 + 0x33c) - 0.0);
        local_11c = 0x41000000;
        local_118 = 0x40c00000;
        local_120 = *(float *)(param_1 + 0x340) - DAT_00baadec;
        FUN_006cb2e0(&local_124,&local_11c,9,uVar8);
      }
      iVar12 = *(int *)(param_1 + 0x410);
      if (iVar12 == 0xc) {
        local_128 = DAT_00baa454;
        puVar6 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (puVar6 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_128 = puVar6;
        }
        local_12c = (undefined4 *)0x387;
        FUN_00956780();
        FUN_0092dc30(local_12c,0x3f800000,2,0,local_128,0);
        iVar12 = *(int *)(param_1 + 0x410);
      }
      if (iVar12 == 0x14) {
        local_118 = 0xc1a00000;
        local_12c = (undefined4 *)0x0;
        local_11c = 0;
        do {
          local_124 = (undefined4 *)(*(float *)(param_1 + 0x33c) + 0.0);
          local_120 = *(float *)(param_1 + 0x340) - DAT_00baa81c;
          piVar9 = (int *)FUN_0096f310(4,&local_124,
                                       (float)(int)local_12c * DAT_00baa9b4 + DAT_00baa910,0x11,
                                       &local_11c,param_1,0);
          if (*(int *)(param_1 + 0x2c) == 1) {
            local_d4 = ZEXT816(0);
            local_c4 = 0x3f52d2d4;
            local_e4 = _DAT_00bac470;
            uStack_e0 = _UNK_00bac474;
            uStack_dc = _UNK_00bac478;
            uStack_d8 = _UNK_00bac47c;
            local_c0 = 0x3e70f0f2;
            local_bc = 0x3f34b4b5;
            (**(code **)(*piVar9 + 0x3c))(&local_e4,0xffffffff,0xff,0,1);
          }
          (**(code **)(*piVar9 + 0xc))();
          local_12c = (undefined4 *)((int)local_12c + 1);
        } while ((int)local_12c < 4);
        goto LAB_0047a346;
      }
    }
    else {
      if (iVar12 != 9) goto LAB_0047a346;
      iVar12 = *(int *)(param_1 + 0x410) + -6;
      if (iVar12 == 1) {
        FUN_006d6ba0(0x134,0x3f800000,2,0,0x3f800000);
LAB_0047a28c:
        if (iVar12 == (iVar12 / 5) * 5) {
          iVar1 = *(int *)(param_1 + 0x2c);
          local_11c = 4 - (uint)(iVar1 != 1);
          if (iVar1 == 0) {
            if (iVar12 < 0x14) {
LAB_0047a2cf:
              FUN_00813460(&local_124,0,0);
              uVar8 = FUN_00812c90(&local_124);
              FUN_004565e0(uVar8,900);
              uVar8 = FUN_006eef60();
              FUN_006fe410(4,local_11c,&local_124,&DAT_00c7b640,param_1,0,uVar8,0);
            }
          }
          else if ((iVar1 == 1) && (iVar12 < 10)) goto LAB_0047a2cf;
        }
      }
      else if (-1 < iVar12) goto LAB_0047a28c;
      iVar12 = *(int *)(param_1 + 0x410);
    }
    if (0x2d < iVar12) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
  }
LAB_0047a346:
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
LAB_0047a34c:
  FUN_00aef12b();
  return;
}

