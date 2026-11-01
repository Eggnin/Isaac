/* Local J460 decompiler output.
 * VA: 0x0053ab40
 * Entry: 0053ab40
 * Dispatcher: 0x006c2990
 * Types: 224
 * Identities: 224.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0053b2f0; instructions=476
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=224; identities=224.0.0; dispatcher=0x006c2990;
   end=0x0053b2f0; instructions=476 */

void __fastcall AI_0053ab40(int param_1)

{
  byte bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char cVar5;
  uint uVar6;
  float *pfVar7;
  byte **ppbVar8;
  byte **ppbVar9;
  undefined4 uVar10;
  char *pcVar11;
  int iVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float local_48;
  float local_44;
  float local_40;
  undefined4 local_3c;
  undefined4 local_34 [12];
  
  iVar12 = *(int *)(param_1 + 0xb64);
  *(undefined4 *)(param_1 + 0x188) = 2;
  if (iVar12 == 0) {
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar6 = FUN_006eef60();
      uVar6 = uVar6 % 0x2d;
    }
    else {
      uVar6 = 0;
    }
    uVar4 = _UNK_00bac1ac;
    uVar3 = _UNK_00bac1a8;
    uVar2 = _UNK_00bac1a4;
    uVar10 = _DAT_00bac1a0;
    *(uint *)(param_1 + 0xbc0) = uVar6 + 0x1e;
    *(undefined4 *)(param_1 + 0xbb0) = DAT_00c7b640;
    *(undefined4 *)(param_1 + 0xbb4) = DAT_00c7b644;
    if ((undefined4 *)(param_1 + 0x1e4) == local_34) {
      return;
    }
    *(undefined8 *)(param_1 + 0x204) = 0x3dcccccd00000000;
    *(undefined4 *)(param_1 + 0x1e4) = uVar10;
    *(undefined4 *)(param_1 + 0x1e8) = uVar2;
    *(undefined4 *)(param_1 + 0x1ec) = uVar3;
    *(undefined4 *)(param_1 + 0x1f0) = uVar4;
    *(undefined4 *)(param_1 + 0x20c) = 0x3dcccccd;
    *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
    return;
  }
  if (iVar12 == 4) {
    FUN_0040a380(&DAT_00b1dce4,0);
    pfVar7 = (float *)FUN_006bec40(&local_40,0x41200000);
    local_44 = *pfVar7 - *(float *)(param_1 + 0x33c);
    local_48 = pfVar7[1] - *(float *)(param_1 + 0x340);
    if (*(int *)(param_1 + 0xf1c) != -1) {
      pfVar7 = (float *)FUN_006d82d0(&local_40);
      local_44 = *pfVar7 * DAT_00baa9d0;
      local_48 = pfVar7[1] * DAT_00baa9d0;
    }
    if (((*(uint *)(param_1 + 0x168) & 0x200) != 0) && (*(int *)(param_1 + 0xf1c) == -1)) {
      uVar10 = *(undefined4 *)(param_1 + 0x20);
      uVar6 = FUN_006eef60();
      cVar5 = FUN_006ac710(uVar6 % 0x1e + 0xf,uVar10);
      if ((cVar5 == '\0') && (*(char *)(param_1 + 400) == '\0')) {
        local_44 = *(float *)(param_1 + 0xbb0);
        local_48 = *(float *)(param_1 + 0xbb4);
      }
      else {
        *(float *)(param_1 + 0xbb0) = local_44;
        *(float *)(param_1 + 0xbb4) = local_48;
      }
      fVar16 = local_48 * local_48 + local_44 * local_44;
      if (((fVar16 < DAT_00baab54) &&
          ((NAN(fVar16) || NAN(DAT_00ba9fe4)) == (fVar16 == DAT_00ba9fe4))) &&
         (FUN_00435a50(), DAT_00ba9fe4 < fVar16)) {
        local_48 = local_48 * (DAT_00baa87c / fVar16);
        local_44 = (DAT_00baa87c / fVar16) * local_44;
      }
    }
    local_40 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    local_48 = local_48 * DAT_00baa6fc;
    *(float *)(param_1 + 0x36c) = local_40;
    fVar14 = local_44 * local_44 + local_48 * local_48;
    FUN_00435a50();
    fVar16 = local_44;
    fVar15 = local_48;
    if (0.0 < fVar14) {
      fVar16 = (DAT_00baa454 / fVar14) * local_44;
      fVar15 = local_48 * (DAT_00baa454 / fVar14);
    }
    if (NAN(local_40) == (local_40 == 0.0)) {
      *(float *)(param_1 + 0x360) =
           (fVar16 * *(float *)(param_1 + 0x39c)) / local_40 + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           (fVar15 * *(float *)(param_1 + 0x39c)) / local_40 + *(float *)(param_1 + 0x364);
    }
    if ((*(uint *)(param_1 + 0x168) & 0x1000a00) != 0) goto LAB_0053aff1;
    if (-1 < *(int *)(param_1 + 0xbc0)) {
      *(int *)(param_1 + 0xbc0) =
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
           *(int *)(param_1 + 0xbc0);
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (((float)((uint)local_48 & DAT_00bacb40) < DAT_00baa87c) &&
         (DAT_00baa910 < *(float *)(param_1 + 0x3a4))) goto LAB_0053af1a;
LAB_0053aeb3:
      if (-1 < *(int *)(param_1 + 0xbc0)) goto LAB_0053aff1;
      if (*(int *)(param_1 + 0xf1c) == -1) {
LAB_0053af94:
        uVar6 = FUN_006eef60();
        iVar12 = uVar6 % 0x2d + 0x1e;
      }
      else {
        cVar5 = FUN_006d8260(8);
        if (cVar5 == '\0') goto LAB_0053aff1;
        if (*(int *)(param_1 + 0xf1c) == -1) goto LAB_0053af94;
        iVar12 = 0x1e;
      }
      *(int *)(param_1 + 0xbc0) = iVar12;
      cVar5 = FUN_0040a5d0(&DAT_00b1de50,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      *(undefined4 *)(param_1 + 0xb64) = 0xd;
    }
    else {
      cVar5 = FUN_006d8260(9);
      if (cVar5 == '\0') goto LAB_0053aeb3;
LAB_0053af1a:
      *(bool *)(param_1 + 0x148) = local_44 < 0.0;
      cVar5 = FUN_0040a5d0("Charge",1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      FUN_006d6ba0(0x77,0x3f800000,2,0,0x3f800000);
      *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
      *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
      *(undefined4 *)(param_1 + 0x184) = 2;
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
    *(undefined4 *)(param_1 + 0x410) = 0;
    *(undefined4 *)(param_1 + 0x360) = 0;
    *(undefined4 *)(param_1 + 0x364) = 0;
LAB_0053aff1:
    if ((*(float *)(param_1 + 0x360) < 0.0) && (*(char *)(param_1 + 0x148) == '\0')) {
      *(undefined *)(param_1 + 0x148) = 1;
      return;
    }
    if ((0.0 < *(float *)(param_1 + 0x360)) && (*(char *)(param_1 + 0x148) != '\0')) {
      *(undefined *)(param_1 + 0x148) = 0;
      return;
    }
    return;
  }
  if (iVar12 != 8) {
    if (iVar12 != 0xd) {
      return;
    }
    *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
    *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
      cVar5 = FUN_0040b030("Shoot");
      if (cVar5 == '\0') {
        return;
      }
      local_40 = *(float *)(param_1 + 0x33c);
      local_3c = *(undefined4 *)(param_1 + 0x340);
      iVar12 = FUN_007f0780(local_40,local_3c);
      if (iVar12 != 0) {
        return;
      }
      FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
      uVar10 = FUN_006eef60();
      FUN_006fe410(0x20,0,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar10,0);
      return;
    }
    goto LAB_0053b213;
  }
  *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
  *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
    ppbVar9 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar9 != (byte **)0x0) {
      ppbVar8 = ppbVar9;
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar8 = (byte **)*ppbVar9;
      }
      pcVar11 = "Charge Shake";
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar13 = bVar1 < (byte)*pcVar11;
        if (bVar1 != *pcVar11) {
LAB_0053b0a8:
          uVar6 = -(uint)bVar13 | 1;
          goto LAB_0053b0ad;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar13 = bVar1 < ((byte *)pcVar11)[1];
        if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_0053b0a8;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_0053b0ad:
      if ((uVar6 == 0) && ((*(byte *)(ppbVar9 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_0053b0e4;
    }
    cVar5 = FUN_0040a5d0("Charge Shake",1);
    if (cVar5 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
LAB_0053b0e4:
  if (*(int *)(param_1 + 0x7c) != 0) {
    if (*(char *)(param_1 + 0x8c) == '\0') {
LAB_0053b12c:
      cVar5 = FUN_0040ae70("Shoot");
      if (cVar5 == '\0') goto LAB_0053b15c;
    }
    else {
      ppbVar9 = *(byte ***)(param_1 + 0x7c);
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar11 = "Charge Shake";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar13 = bVar1 < (byte)*pcVar11;
        if (bVar1 != *pcVar11) {
LAB_0053b123:
          uVar6 = -(uint)bVar13 | 1;
          goto LAB_0053b128;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar13 = bVar1 < ((byte *)pcVar11)[1];
        if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_0053b123;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_0053b128:
      if (uVar6 != 0) goto LAB_0053b12c;
    }
    if (*(char *)(param_1 + 0x148) == '\0') {
      *(undefined4 *)(param_1 + 0x360) = 0x41c80000;
    }
    else {
      *(undefined **)(param_1 + 0x360) = &DAT_c1c80000;
    }
  }
LAB_0053b15c:
  fVar16 = *(float *)(param_1 + 0x360);
  if ((fVar16 <= 0.0) ||
     (*(float *)(param_1 + 0x33c) <=
      *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) + DAT_00baaa5c)) {
    if ((fVar16 < 0.0) &&
       (fVar15 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) - DAT_00baaa5c,
       *(float *)(param_1 + 0x33c) <= fVar15 && fVar15 != *(float *)(param_1 + 0x33c))) {
      fVar15 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) + DAT_00baaa5c;
      goto LAB_0053b1c6;
    }
  }
  else {
    fVar15 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) - DAT_00baaa5c;
LAB_0053b1c6:
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    *(float *)(param_1 + 0x33c) = fVar15;
  }
  if (*(int *)(param_1 + 0x410) < 1) {
    return;
  }
  if ((0.0 <= fVar16) ||
     (*(float *)(param_1 + 0x334) < *(float *)(param_1 + 0x33c) ||
      *(float *)(param_1 + 0x334) == *(float *)(param_1 + 0x33c))) {
    if (fVar16 <= 0.0) {
      return;
    }
    if (*(float *)(param_1 + 0x33c) < *(float *)(param_1 + 0x334) ||
        *(float *)(param_1 + 0x33c) == *(float *)(param_1 + 0x334)) {
      return;
    }
  }
  *(undefined4 *)(param_1 + 0x184) = 3;
LAB_0053b213:
  *(undefined4 *)(param_1 + 0xb64) = 4;
  return;
}

