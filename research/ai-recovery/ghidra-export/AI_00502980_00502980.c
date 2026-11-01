/* Local J460 decompiler output.
 * VA: 0x00502980
 * Entry: 00502980
 * Dispatcher: 0x006c2990
 * Types: 880
 * Identities: 880.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00503300; instructions=520
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=880; identities=880.0.0; dispatcher=0x006c2990;
   end=0x00503300; instructions=520 */

void __fastcall AI_00502980(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  char cVar4;
  undefined4 uVar5;
  float *pfVar6;
  int iVar7;
  float *pfVar8;
  char *pcVar9;
  undefined4 *puVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  undefined4 local_5c [8];
  undefined4 local_3c;
  undefined4 uStack_38;
  undefined4 local_34;
  undefined local_30 [4];
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  char local_5;
  
  uVar5 = 4;
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
  if ((*(uint *)(param_1 + 0x168) & 0x20000100) == 0) {
    uVar5 = 2;
  }
  *(undefined4 *)(param_1 + 0x188) = uVar5;
  uVar3 = _UNK_00babb0c;
  uVar2 = ram0x00babb08;
  uVar1 = s_fff_fff__00babb00._4_4_;
  uVar5 = s_fff_fff__00babb00._0_4_;
  fVar12 = DAT_00baa804;
  iVar11 = *(int *)(param_1 + 0xb64);
  if (iVar11 == 0) {
    local_3c = 0;
    uStack_38 = 0;
    local_34 = 0;
    if ((undefined4 *)(param_1 + 0x1e4) != local_5c) {
      *(undefined4 *)(param_1 + 0x1e4) = 0x3f666666;
      *(undefined4 *)(param_1 + 0x1e8) = 0x3f666666;
      *(undefined4 *)(param_1 + 0x1ec) = 0x3f666666;
      *(undefined4 *)(param_1 + 0x1f0) = 0x3f800000;
      *(undefined8 *)(param_1 + 0x204) = 0;
      *(undefined4 *)(param_1 + 500) = uVar5;
      *(undefined4 *)(param_1 + 0x1f8) = uVar1;
      *(undefined4 *)(param_1 + 0x1fc) = uVar2;
      *(undefined4 *)(param_1 + 0x200) = uVar3;
      *(undefined4 *)(param_1 + 0x20c) = 0;
    }
    *(uint *)(param_1 + 0xbc0) = (*(uint *)(param_1 + 0x3ec) & 1) * 2 + -1;
  }
  else {
    if (iVar11 == 3) {
      iVar11 = FUN_006eef60();
      local_20 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa87c + DAT_00baa9ec;
      iVar11 = FUN_006eef60();
      local_1c = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa87c + DAT_00baa9ec;
      if ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0) {
        iVar11 = FUN_006be840();
        local_18 = *(float *)(iVar11 + 0x360);
        local_14 = *(float *)(iVar11 + 0x364);
        fVar12 = *(float *)(param_1 + 0x340) - *(float *)(iVar11 + 0x340);
        fVar13 = *(float *)(param_1 + 0x33c) - *(float *)(iVar11 + 0x33c);
        fVar12 = fVar12 * fVar12 + fVar13 * fVar13;
        FUN_00435a50();
        local_18 = local_18 * DAT_00baa120 * fVar12 + *(float *)(iVar11 + 0x33c);
        local_14 = local_14 * DAT_00baa120 * fVar12 + *(float *)(iVar11 + 0x340);
      }
      else {
        pfVar8 = (float *)FUN_006bec40(local_30,0);
        local_18 = *pfVar8;
        local_14 = pfVar8[1];
      }
      local_c = local_14 - *(float *)(param_1 + 0x340);
      local_10 = local_18 - *(float *)(param_1 + 0x33c);
      fVar12 = local_c * local_c + local_10 * local_10;
      FUN_00435a50();
      local_10 = local_10 / fVar12;
      local_c = local_c / fVar12;
      if (local_20 * _DAT_00baa4e0 <= fVar12) {
        local_24 = (float)*(int *)(param_1 + 0xbc0) * DAT_00baa9b4 * DAT_00baa088;
        local_28 = local_24;
        FUN_0041d540();
        fVar12 = local_24;
        FUN_0041d520();
        fVar13 = (local_28 * local_c + fVar12 * local_10) * local_1c +
                 local_c * local_20 + *(float *)(param_1 + 0x340);
        fVar12 = (local_28 * local_10 - fVar12 * local_c) * local_1c +
                 local_10 * local_20 + *(float *)(param_1 + 0x33c);
      }
      else {
        fVar13 = local_1c * local_1c + local_20 * local_20;
        FUN_00435a50();
        fVar12 = fVar13 * local_10 + *(float *)(param_1 + 0x33c);
        fVar13 = fVar13 * local_c + *(float *)(param_1 + 0x340);
      }
      *(float *)(param_1 + 0x334) = fVar12;
      *(float *)(param_1 + 0x338) = fVar13;
      local_1c = *(float *)(param_1 + 0x33c);
      *(float *)(param_1 + 3000) = local_1c;
      local_c = *(float *)(param_1 + 0x340);
      *(float *)(param_1 + 0xbbc) = local_c;
      local_10 = *(float *)(param_1 + 0x334);
      local_28 = local_10 - *(float *)(param_1 + 0x33c);
      local_2c = *(float *)(param_1 + 0x338);
      local_20 = local_2c - *(float *)(param_1 + 0x340);
      fVar12 = DAT_00baa54c;
      FUN_0041d540();
      local_24 = fVar12;
      fVar12 = DAT_00baa54c;
      FUN_0041d520();
      fVar15 = local_28 * local_24 - local_20 * fVar12;
      fVar14 = local_20 * local_24 + local_28 * fVar12;
      fVar12 = (local_2c - local_c) * DAT_00baa380 + local_c;
      fVar13 = (local_10 - local_1c) * DAT_00baa380 + local_1c;
      if ((local_14 - *(float *)(param_1 + 0x340)) * fVar14 +
          (local_18 - *(float *)(param_1 + 0x33c)) * fVar15 <= DAT_00ba9fe4) {
        fVar12 = fVar12 + fVar14;
        fVar13 = fVar13 + fVar15;
      }
      else {
        fVar12 = fVar12 - fVar14;
        fVar13 = fVar13 - fVar15;
      }
      *(float *)(param_1 + 0xbb0) = fVar13;
      *(float *)(param_1 + 0xbb4) = fVar12;
      puVar10 = *(undefined4 **)(param_1 + 0x7c);
      if (puVar10 == (undefined4 *)0x0) {
        puVar10 = (undefined4 *)&DAT_00b1a4ec;
      }
      else if (0xf < (uint)puVar10[5]) {
        puVar10 = (undefined4 *)*puVar10;
      }
      iVar11 = strncmp((char *)puVar10,"Swing",5);
      local_5 = iVar11 == 0;
      pcVar9 = "SwingLeft";
      if (*(float *)(param_1 + 0x33c) < *(float *)(param_1 + 0x334) ||
          *(float *)(param_1 + 0x33c) == *(float *)(param_1 + 0x334)) {
        pcVar9 = "SwingRight";
      }
      cVar4 = FUN_0040a5d0(pcVar9,1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      cVar4 = FUN_0040aaf0("HeadLook",1);
      if ((cVar4 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
        FUN_00408e00();
      }
      if ((local_5 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) {
        FUN_00408e00();
      }
      *(undefined4 *)(param_1 + 0xb64) = 4;
      *(int *)(param_1 + 0xbc0) = -*(int *)(param_1 + 0xbc0);
      *(undefined4 *)(param_1 + 0xc34) = 0;
      goto LAB_0050318c;
    }
    if (iVar11 != 4) goto LAB_0050318c;
    pfVar8 = (float *)(param_1 + 0xc34);
    fVar13 = *(float *)(param_1 + 0x39c) * _DAT_00baa0b8 + *pfVar8;
    *pfVar8 = fVar13;
    *(float *)(param_1 + 0x350) =
         fVar12 - (fVar13 - DAT_00baa2d0) * fVar12 * (fVar13 - DAT_00baa2d0) * DAT_00baa75c;
    if (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) ==
         (*(float *)(param_1 + 0x334) == DAT_00c7b640)) ||
       ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
        (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
      fVar13 = fVar13 * DAT_00baa708;
      FUN_0041d540();
      local_20 = *(float *)(param_1 + 0xbb4);
      fVar12 = *(float *)(param_1 + 0xbbc) - local_20;
      local_1c = (DAT_00baa454 - fVar13) * DAT_00baa2d0;
      FUN_00499d60();
      local_18 = fVar12 * DAT_00baa948;
      fVar13 = *(float *)(param_1 + 0xbb0) - *(float *)(param_1 + 3000);
      fVar12 = *(float *)(param_1 + 0xbb4) - *(float *)(param_1 + 0xbbc);
      local_14 = fVar12 * fVar12 + fVar13 * fVar13;
      FUN_00435a50();
      fVar13 = *(float *)(param_1 + 0xbb0) - *(float *)(param_1 + 0x334);
      fVar12 = *(float *)(param_1 + 0xbb4) - *(float *)(param_1 + 0x338);
      local_c = fVar12 * fVar12 + fVar13 * fVar13;
      FUN_00435a50();
      FUN_00499d60();
      fVar12 = local_18;
      FUN_006827a0();
      local_c = (local_c - local_14) * local_1c + local_14;
      fVar12 = (fVar12 * local_1c + local_18) * DAT_00baa088;
      local_20 = fVar12;
      FUN_0041d540();
      local_1c = (fVar12 * local_c + *(float *)(param_1 + 0xbb0)) - *(float *)(param_1 + 0x33c);
      fVar12 = local_20;
      FUN_0041d520();
      *(float *)(param_1 + 0x360) = local_1c;
      *(float *)(param_1 + 0x364) =
           (fVar12 * local_c + *(float *)(param_1 + 0xbb4)) - *(float *)(param_1 + 0x340);
      if (*(char *)(param_1 + 400) != '\0') {
        *(float *)(param_1 + 0x334) = DAT_00c7b640;
        *(float *)(param_1 + 0x338) = DAT_00c7b644;
        local_20 = 0.8;
        pfVar6 = &local_20;
        if (DAT_00baa3a4 < *pfVar8 || DAT_00baa3a4 == *pfVar8) {
          pfVar6 = pfVar8;
        }
        *pfVar8 = *pfVar6;
      }
    }
    fVar12 = *pfVar8;
    if (DAT_00baa3a4 < fVar12) {
      iVar11 = *(int *)(param_1 + 0x7c);
      if (iVar11 == 0) {
        iVar7 = 0;
      }
      else {
        iVar7 = *(int *)(iVar11 + 0x30);
      }
      local_20 = (float)(iVar7 + -10);
      local_1c = fVar12;
      iVar7 = FUN_0040a780();
      fVar12 = local_1c;
      if ((iVar7 < (int)local_20) && (fVar12 = *pfVar8, iVar11 != 0)) {
        FUN_00408e00();
        fVar12 = *pfVar8;
      }
    }
    if (fVar12 <= DAT_00baa454) goto LAB_0050318c;
    *(undefined4 *)(param_1 + 0x350) = 0;
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
LAB_0050318c:
  if (0 < *(int *)(param_1 + 0xbc4)) {
    *(int *)(param_1 + 0xbc4) = *(int *)(param_1 + 0xbc4) + -1;
  }
  if ((*(int *)(param_1 + 0x7c) != 0) &&
     (puVar10 = (undefined4 *)FUN_0040ace0("HeadPos"), puVar10 != (undefined4 *)0x0)) {
    iVar11 = FUN_0040b220(1);
    *(undefined4 *)(iVar11 + 0x40) = *puVar10;
    *(undefined4 *)(iVar11 + 0x44) = puVar10[1];
    iVar11 = FUN_0040b220(1);
    *(undefined4 *)(iVar11 + 0x34) = puVar10[4];
    *(undefined4 *)(iVar11 + 0x38) = puVar10[5];
    local_2c = (float)puVar10[0x11];
    iVar11 = FUN_0040b220(1);
    *(float *)(iVar11 + 0x3c) = local_2c;
    iVar11 = FUN_006be840();
    local_20 = *(float *)(iVar11 + 0x340) - *(float *)(param_1 + 0x340);
    local_1c = *(float *)(iVar11 + 0x33c) - *(float *)(param_1 + 0x33c);
    fVar13 = local_20 * local_20 + local_1c * local_1c;
    FUN_00435a50();
    fVar12 = local_20;
    if (0.0 < fVar13) {
      fVar12 = local_20 * (DAT_00baa454 / fVar13);
    }
    if (fVar12 < _DAT_00baa3fc) {
      if (*(int *)(param_1 + 0x9c) != 0) {
        if (0.0 <= fVar12) {
          FUN_00408e00();
          return;
        }
        FUN_00408e00();
      }
    }
    else if (*(int *)(param_1 + 0x9c) != 0) {
      FUN_00408e00();
      return;
    }
  }
  return;
}

