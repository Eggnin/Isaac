/* Local J460 decompiler output.
 * VA: 0x00472c40
 * Entry: 00472c40
 * Dispatcher: 0x006c2990
 * Types: 74,75,76
 * Identities: 74.0.0,75.0.0,76.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004741f0; instructions=1231
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=74,75,76; identities=74.0.0,75.0.0,76.0.0;
   dispatcher=0x006c2990; end=0x004741f0; instructions=1231 */

void __fastcall AI_00472c40(int param_1)

{
  undefined4 *puVar1;
  char cVar2;
  byte bVar3;
  float *pfVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  int *piVar8;
  float fVar9;
  undefined auStack_120 [7];
  undefined local_119;
  float local_118;
  int *local_114;
  float local_110;
  float local_10c;
  float local_108;
  float local_104;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_cc;
  undefined auStack_b8 [8];
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_120;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    if (((*(int *)(param_1 + 0x28) == 0x4a) && (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 5)
        ) && (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x10)) {
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      FUN_0040a380(&DAT_00b1e0e4,0);
      if (*(int *)(param_1 + 0x7c) != 0) {
        FUN_00408d00(*(int *)(*(int *)(param_1 + 0x7c) + 0x30) + -1);
      }
      *(undefined4 *)(param_1 + 0x410) = 1;
      *(undefined4 *)(param_1 + 0xb64) = 2;
      *(undefined4 *)(param_1 + 0x188) = 0;
      FUN_00aef12b();
      return;
    }
    goto LAB_00474162;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  pfVar4 = (float *)FUN_006bec40(&local_110,0);
  local_100 = (float)(param_1 + 0x48);
  local_ec = *pfVar4 - *(float *)(param_1 + 0x33c);
  local_118 = pfVar4[1] - *(float *)(param_1 + 0x340);
  local_e8 = local_118;
  if ((float)(*(uint *)(param_1 + 0x364) & DAT_00bacb40) <
      (float)((uint)*(float *)(param_1 + 0x360) & DAT_00bacb40)) {
    local_119 = *(float *)(param_1 + 0x360) < 0.0;
    *(undefined *)(param_1 + 0x148) = local_119;
    iVar5 = FUN_0040b220(0);
    *(undefined *)(iVar5 + 0x32) = local_119;
    local_119 = *(undefined *)(param_1 + 0x148);
    iVar5 = FUN_0040b220(4);
    *(undefined *)(iVar5 + 0x32) = local_119;
  }
  iVar5 = *(int *)(param_1 + 0x28);
  if (iVar5 == 0x4a) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      if (*(int *)(param_1 + 0xb64) == 6) {
        *(undefined4 *)(param_1 + 0xb64) = 7;
        *(undefined4 *)(param_1 + 0x410) = 1;
      }
      else if (*(int *)(param_1 + 0xb64) == 0x10) {
        cVar2 = FUN_00417430(0,0x10000000);
        if ((cVar2 == '\0') || (cVar2 = FUN_00417430(0,0x20000000), cVar2 == '\0')) {
          FUN_007e90f0();
          FUN_0067f0d0();
          uVar6 = FUN_007e90f0();
          local_100 = local_f4 * DAT_00baadcc;
          local_f8 = local_f4 * DAT_00baa87c;
          local_114 = (int *)(local_f0 * DAT_00baa87c);
          local_fc = local_f0 * DAT_00baadcc;
          local_108 = *(float *)(param_1 + 0x33c) - local_f8;
          local_104 = *(float *)(param_1 + 0x340) - (float)local_114;
          local_100 = (float)FUN_006fe410(0x4b,0,&local_108,&local_100,param_1,0,uVar6,0);
          *(uint *)((int)local_100 + 0x168) = *(uint *)((int)local_100 + 0x168) & 0xfffffffb;
          *(undefined4 *)((int)local_100 + 0x16c) = *(undefined4 *)((int)local_100 + 0x16c);
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            *(undefined4 *)((int)local_100 + 0x380) = 0x41f00000;
            *(undefined4 *)((int)local_100 + 900) = 0x41f00000;
          }
          uVar6 = FUN_007e90f0();
          local_108 = local_f4 * DAT_00baa834;
          local_104 = local_f0 * DAT_00baa834;
          local_100 = local_f8 + *(float *)(param_1 + 0x33c);
          local_fc = (float)local_114 + *(float *)(param_1 + 0x340);
          local_114 = (int *)FUN_006fe410(0x4b,0,&local_100,&local_108,param_1,0,uVar6,0);
          local_114[0x5a] = local_114[0x5a] & 0xfffffffb;
          local_114[0x5b] = local_114[0x5b];
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            local_114[0xe0] = 0x41f00000;
            local_114[0xe1] = 0x41f00000;
          }
        }
        *(undefined *)(param_1 + 0x173) = 1;
        uVar6 = FUN_00407170();
        FUN_006b66c0(param_1 + 0x33c,uVar6);
        FUN_006b45c0();
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
    if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0xb64) != 0x10)) {
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
      *(undefined *)(param_1 + 0x173) = 0;
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      *(undefined4 *)(param_1 + 0x410) = 1;
      *(undefined *)(param_1 + 0x3b0) = 1;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    }
    switch(*(undefined4 *)(param_1 + 0xb64)) {
    case 2:
    case 7:
      if ((*(int *)(param_1 + 0x410) == 1) && (cVar2 = FUN_0040a5d0("JumpDown",1), cVar2 != '\0')) {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      cVar2 = FUN_0040b090(&DAT_00b1d574);
      if (cVar2 == '\0') {
        fVar9 = *(float *)(param_1 + 0x36c);
        if ((NAN(fVar9) || NAN(DAT_00ba9fe4)) == (fVar9 == DAT_00ba9fe4)) {
          *(float *)(param_1 + 0x360) =
               (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb0)) / fVar9 +
               *(float *)(param_1 + 0x360);
          *(float *)(param_1 + 0x364) =
               (*(float *)(param_1 + 0xbb4) * *(float *)(param_1 + 0x39c)) / fVar9 +
               *(float *)(param_1 + 0x364);
        }
        uVar6 = 0;
      }
      else {
        uVar6 = 4;
      }
      *(undefined4 *)(param_1 + 0x188) = uVar6;
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        FUN_00456570();
        puVar1 = (undefined4 *)(param_1 + 0x33c);
        local_e4 = *puVar1;
        uStack_e0 = *(undefined4 *)(param_1 + 0x340);
        iVar5 = *(int *)(DAT_00c71678 + 0x18300);
        uStack_cc = 0xd;
        uStack_d4 = 0x3ccccccd;
        uStack_d8 = 0x3d23d70a;
        piVar8 = (int *)(iVar5 + 0x70fc);
        *piVar8 = *piVar8 + 1;
        uVar7 = *(uint *)(iVar5 + 0x70fc) & 0x80000001;
        if ((int)uVar7 < 0) {
          uVar7 = (uVar7 - 1 | 0xfffffffe) + 1;
        }
        FUN_0081df10(uVar7,&local_e4);
        uVar6 = FUN_00407170();
        FUN_006b66c0(puVar1,uVar6);
        FUN_006d6ba0(0x30,0x3f99999a,2,0,0x3f800000);
        if (*(int *)(param_1 + 0xb64) == 7) {
          AI_0043ef30();
          uVar6 = AI_0043ef30();
          local_108 = 12.0;
          local_104 = 0.0;
          FUN_006cb2e0(puVar1,&local_108,8,uVar6);
        }
      }
      break;
    case 3:
      FUN_0040a380(&DAT_00b1bc54,0);
      *(undefined4 *)(param_1 + 0x410) = 0;
      cVar2 = FUN_00417430(0,0x10000000);
      if ((cVar2 == '\0') ||
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
        fVar9 = local_ec * local_ec + local_118 * local_118;
        if ((fVar9 < DAT_00baac50) ||
           ((fVar9 < DAT_00baac68 && (uVar7 = FUN_006eef60(), uVar7 % 5 != 0)))) {
LAB_00473997:
          uVar7 = FUN_006eef60();
          local_118 = DAT_00baa280;
          if ((uVar7 & 1) != 0) goto LAB_00473157;
          *(undefined4 *)(param_1 + 0xb64) = 8;
        }
        else {
          local_118 = DAT_00baa6fc;
          *(undefined4 *)(param_1 + 0xb64) = 6;
        }
      }
      else {
LAB_00473157:
        local_118 = DAT_00baa528;
        *(undefined4 *)(param_1 + 0xb64) = 4;
      }
      pfVar4 = (float *)FUN_00a10030(&local_110);
      fVar9 = pfVar4[1];
      *(float *)(param_1 + 0xbb0) = local_118 * *pfVar4;
      *(float *)(param_1 + 0xbb4) = local_118 * fVar9;
      break;
    case 4:
      if (*(int *)(param_1 + 0x410) == 1) {
        cVar2 = FUN_0040a5d0(&DAT_00b1dce4,1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        FUN_006d6ba0(0x3dc,0x3f800000,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x30,0x3f4ccccd,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b090(&DAT_00b1d560);
      if (((cVar2 != '\0') && (cVar2 = FUN_0040b090(&DAT_00b1d574), cVar2 == '\0')) &&
         (fVar9 = *(float *)(param_1 + 0x36c),
         (NAN(fVar9) || NAN(DAT_00ba9fe4)) == (fVar9 == DAT_00ba9fe4))) {
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb0)) / fVar9 +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb4)) / fVar9 +
             *(float *)(param_1 + 0x364);
      }
      break;
    case 6:
      if (*(int *)(param_1 + 0x410) == 1) {
        cVar2 = FUN_0040a5d0(&DAT_00b1e0e4,1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        FUN_006d6ba0(0x3db,0x3f800000,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b090(&DAT_00b1d560);
      fVar9 = *(float *)(param_1 + 0x36c);
      if (cVar2 == '\0') {
        *(float *)(param_1 + 0x36c) = fVar9 * DAT_00baa304;
      }
      else if ((NAN(fVar9) || NAN(DAT_00ba9fe4)) == (fVar9 == DAT_00ba9fe4)) {
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb0)) / fVar9 +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb4)) / fVar9 +
             *(float *)(param_1 + 0x364);
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0x188) = 0;
      }
      break;
    case 8:
      if (*(int *)(param_1 + 0x410) == 1) {
        cVar2 = FUN_0040a5d0("Attack",1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        FUN_006d6ba0(0x3dc,0x3f800000,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
        uVar6 = FUN_00407170();
        FUN_006b66c0(param_1 + 0x33c,uVar6);
        AI_0043ef30();
        uStack_a8 = 0x3f99999a;
        uStack_b0 = 0xc0000000;
        FUN_006ccdd0(10,&DAT_00c7b640,0x40000000,auStack_b8);
      }
      cVar2 = FUN_0040b090(&DAT_00b1d560);
      if (((cVar2 != '\0') && (cVar2 = FUN_0040b090(&DAT_00b1d574), cVar2 == '\0')) &&
         (fVar9 = *(float *)(param_1 + 0x36c),
         (NAN(fVar9) || NAN(DAT_00ba9fe4)) == (fVar9 == DAT_00ba9fe4))) {
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb0)) / fVar9 +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0xbb4) * *(float *)(param_1 + 0x39c)) / fVar9 +
             *(float *)(param_1 + 0x364);
      }
      break;
    case 0x10:
LAB_00473c94:
      if ((*(int *)(param_1 + 0x410) == 1) && (cVar2 = FUN_0040a5d0("Split",1), cVar2 != '\0')) {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
  }
  else if (iVar5 == 0x4b) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      if (*(int *)(param_1 + 0xb64) == 0x10) {
        cVar2 = FUN_00417430(0,0x10000000);
        if ((cVar2 == '\0') || (cVar2 = FUN_00417430(0,0x20000000), cVar2 == '\0')) {
          FUN_007e90f0();
          FUN_0067f0d0();
          uVar6 = FUN_007e90f0();
          local_f4 = local_108 * DAT_00baadcc;
          local_f8 = local_108 * DAT_00baa834;
          local_f0 = local_104 * DAT_00baadcc;
          local_100 = local_104 * DAT_00baa834;
          local_110 = *(float *)(param_1 + 0x33c) - local_f8;
          local_10c = *(float *)(param_1 + 0x340) - local_100;
          local_114 = (int *)FUN_006fe410(0x4c,0,&local_110,&local_f4,param_1,0,uVar6,0);
          *(uint *)((int)local_114 + 0x168) = *(uint *)((int)local_114 + 0x168) & 0xfffffffb;
          *(undefined4 *)((int)local_114 + 0x16c) = *(undefined4 *)((int)local_114 + 0x16c);
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            *(undefined4 *)((int)local_114 + 0x380) = 0x41a00000;
            *(undefined4 *)((int)local_114 + 900) = 0x41a00000;
          }
          uVar6 = FUN_007e90f0();
          local_110 = local_f8;
          local_108 = local_f8 + *(float *)(param_1 + 0x33c);
          local_10c = local_100;
          local_104 = local_100 + *(float *)(param_1 + 0x340);
          local_114 = (int *)FUN_006fe410(0x4c,0,&local_108,&local_110,param_1,0,uVar6,0);
          local_114[0x5a] = local_114[0x5a] & 0xfffffffb;
          local_114[0x5b] = local_114[0x5b];
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            local_114[0xe0] = 0x41a00000;
            local_114[0xe1] = 0x41a00000;
          }
        }
        *(undefined *)(param_1 + 0x173) = 1;
        uVar6 = FUN_00407170();
        FUN_006b66c0(param_1 + 0x33c,uVar6);
        FUN_006b45c0();
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
    if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0xb64) != 0x10)) {
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
      *(undefined *)(param_1 + 0x173) = 0;
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      *(undefined4 *)(param_1 + 0x410) = 1;
      *(undefined *)(param_1 + 0x3b0) = 1;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    }
    switch(*(undefined4 *)(param_1 + 0xb64)) {
    case 3:
      *(undefined4 *)(param_1 + 0x410) = 0;
      FUN_0040a380(&DAT_00b1bc54,0);
      fVar9 = local_ec * local_ec + local_118 * local_118;
      FUN_00435a50();
      if (fVar9 < DAT_00baaae0) {
        cVar2 = FUN_00417430(0,0x10000000);
        if ((cVar2 == '\0') ||
           ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0))
        goto LAB_00473997;
        goto LAB_00473157;
      }
      pfVar4 = (float *)FUN_0067f070(&local_110);
      fVar9 = pfVar4[1] * DAT_00baa528;
      *(float *)(param_1 + 0xbb0) = *pfVar4 * DAT_00baa528;
      *(float *)(param_1 + 0xbb4) = fVar9;
      *(undefined4 *)(param_1 + 0xb64) = 4;
      break;
    case 4:
      if (*(int *)(param_1 + 0x410) == 1) {
        cVar2 = FUN_0040a5d0(&DAT_00b1dce4,1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        FUN_006d6ba0(0x3dd,0x3f800000,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x30,0x3f4ccccd,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b090(&DAT_00b1d560);
      if (((cVar2 != '\0') && (cVar2 = FUN_0040b090(&DAT_00b1d574), cVar2 == '\0')) &&
         (fVar9 = *(float *)(param_1 + 0x36c),
         (NAN(fVar9) || NAN(DAT_00ba9fe4)) == (fVar9 == DAT_00ba9fe4))) {
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb0)) / fVar9 +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0xbb4) * *(float *)(param_1 + 0x39c)) / fVar9 +
             *(float *)(param_1 + 0x364);
      }
      break;
    case 8:
      if (*(int *)(param_1 + 0x410) == 1) {
        cVar2 = FUN_0040a5d0("Attack",1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        FUN_006d6ba0(0x3dd,0x3f800000,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x30,0x3f4ccccd,2,0,0x3f800000);
        uVar6 = FUN_00407170();
        FUN_006b66c0(param_1 + 0x33c,uVar6);
        AI_0043ef30();
        uVar7 = FUN_006eef60();
        uStack_a0 = 0;
        if ((uVar7 & 1) != 0) {
          uStack_a0 = 0x3f060a92;
        }
        uStack_a4 = 0x3fc00000;
        uStack_ac = 0xbd23d70a;
        local_110 = 10.0;
        local_10c = 6.0;
        FUN_006cb2e0(param_1 + 0x33c,&local_110,9,auStack_b8);
      }
      cVar2 = FUN_0040b090(&DAT_00b1d560);
      if (((cVar2 != '\0') && (cVar2 = FUN_0040b090(&DAT_00b1d574), cVar2 == '\0')) &&
         (fVar9 = *(float *)(param_1 + 0x36c),
         (NAN(fVar9) || NAN(DAT_00ba9fe4)) == (fVar9 == DAT_00ba9fe4))) {
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbb0)) / fVar9 +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0xbb4) * *(float *)(param_1 + 0x39c)) / fVar9 +
             *(float *)(param_1 + 0x364);
      }
      break;
    case 0x10:
      goto LAB_00473c94;
    }
  }
  else if (iVar5 == 0x4c) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      if (*(int *)(param_1 + 0xb64) == 0x10) {
        *(undefined *)(param_1 + 0x173) = 1;
        *(undefined *)(param_1 + 0x171) = 0;
        cVar2 = FUN_00417430(0,0x10000000);
        if ((cVar2 == '\0') || (cVar2 = FUN_00417430(0,0x20000000), cVar2 == '\0')) {
          uVar6 = FUN_006eef60();
          local_114 = (int *)FUN_006fe410(0x4d,0,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar6,0);
          local_114[0x5a] = local_114[0x5a] & 0xfffffffb;
          local_114[0x5b] = local_114[0x5b];
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            local_114[0xe0] = 0x40a00000;
            local_114[0xe1] = 0x40a00000;
          }
        }
        FUN_006b45c0();
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 3;
      }
    }
    if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0xb64) != 0x10)) {
      uVar6 = FUN_00407170();
      local_110 = 0.0;
      local_10c = -10.0;
      local_114 = (int *)FUN_006d7cf0(&local_110,uVar6,&DAT_00c7b640);
      (**(code **)(*local_114 + 0xc))();
      if (local_114[0x1f] != 0) {
        FUN_00408e00();
      }
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
      *(undefined *)(param_1 + 0x173) = 0;
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      *(undefined4 *)(param_1 + 0x410) = 1;
      *(undefined *)(param_1 + 0x3b0) = 1;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    }
    switch(*(undefined4 *)(param_1 + 0xb64)) {
    case 3:
      *(undefined4 *)(param_1 + 0x410) = 0;
      FUN_0040a380(&DAT_00b1bc54,0);
      uVar7 = FUN_006eef60();
      if (((uVar7 & 1) == 0) ||
         ((cVar2 = FUN_00417430(0,0x10000000), cVar2 != '\0' &&
          ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0)))) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        *(undefined4 *)(param_1 + 0x418) = DAT_00c7b640;
        *(undefined4 *)(param_1 + 0x41c) = DAT_00c7b644;
        *(undefined4 *)(param_1 + 0x420) = DAT_00c7b640;
        *(undefined4 *)(param_1 + 0x424) = DAT_00c7b644;
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 8;
      }
      break;
    case 4:
      if (*(int *)(param_1 + 0x410) == 1) {
        FUN_0040a380(&DAT_00b1dce4,0);
        FUN_006d6ba0(0x3dd,0x3f800000,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x30,0x3f19999a,2,0,0x3f800000);
      }
      cVar2 = FUN_0040b090(&DAT_00b1d574);
      if (cVar2 != '\0') {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
      }
      break;
    case 8:
      if (*(int *)(param_1 + 0x410) == 1) {
        FUN_006d6ba0(0x3dd,0x3f800000,2,0,0x3f800000);
        cVar2 = FUN_0040a5d0("Attack",1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      cVar2 = FUN_0040b030(&DAT_00b1d574);
      if (cVar2 != '\0') {
        FUN_006d6ba0(0xd5,0x3f800000,2,0,0x3f800000);
        uVar6 = FUN_006eef60();
        piVar8 = (int *)FUN_006fe410(1000,0x10,param_1 + 0x33c,&DAT_00c7b640,param_1,3,uVar6,0);
        fVar9 = DAT_00c37940 * DAT_00baa380;
        piVar8[0x39] = (int)(DAT_00c3793c * DAT_00baa380);
        piVar8[0x3a] = (int)fVar9;
        bVar3 = FUN_006eef60();
        *(byte *)(piVar8 + 0x52) = ~bVar3 & 1;
        (**(code **)(*piVar8 + 0xc))();
        AI_0043ef30();
        uStack_a4 = 0x3fc00000;
        uStack_ac = 0xbd23d70a;
        local_110 = 10.0;
        local_10c = 0.0;
        FUN_006cb2e0(param_1 + 0x33c,&local_110,6,auStack_b8);
      }
      *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
      *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
      break;
    case 0x10:
      if ((*(int *)(param_1 + 0x410) == 1) && (cVar2 = FUN_0040a5d0("Death",1), cVar2 != '\0')) {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    if (*(int *)(param_1 + 0xb64) != 8) {
      FUN_007e6300(0);
    }
  }
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
LAB_00474162:
  FUN_00aef12b();
  return;
}

