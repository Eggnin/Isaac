/* Local J460 decompiler output.
 * VA: 0x0053b2f0
 * Entry: 0053b2f0
 * Dispatcher: 0x006c2990
 * Types: 225
 * Identities: 225.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0053bae0; instructions=480
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=225; identities=225.0.0; dispatcher=0x006c2990;
   end=0x0053bae0; instructions=480 */

void __fastcall AI_0053b2f0(int param_1)

{
  byte bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  char cVar4;
  float *pfVar5;
  uint uVar6;
  int iVar7;
  byte **ppbVar8;
  byte **ppbVar9;
  undefined4 uVar10;
  char *pcVar11;
  bool bVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float local_48;
  float local_44 [2];
  float local_3c;
  float local_38;
  undefined4 local_34 [12];
  
  iVar7 = *(int *)(param_1 + 0xb64);
  if (iVar7 == 0) {
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0xbb0) = DAT_00c7b640;
    *(undefined4 *)(param_1 + 0xbb4) = DAT_00c7b644;
    uVar3 = _UNK_00babf4c;
    uVar2 = _UNK_00babf48;
    uVar10 = _UNK_00babf44;
    if ((undefined4 *)(param_1 + 0x1e4) == local_34) {
      return;
    }
    *(undefined4 *)(param_1 + 0x1e4) = _DAT_00babf40;
    *(undefined4 *)(param_1 + 0x1e8) = uVar10;
    *(undefined4 *)(param_1 + 0x1ec) = uVar2;
    *(undefined4 *)(param_1 + 0x1f0) = uVar3;
    *(undefined8 *)(param_1 + 0x204) = 0;
    *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
    *(undefined4 *)(param_1 + 0x20c) = 0;
    return;
  }
  if (0 < *(int *)(param_1 + 0xbc0)) {
    *(int *)(param_1 + 0xbc0) =
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
         *(int *)(param_1 + 0xbc0);
  }
  if (iVar7 == 4) {
    FUN_0040a380(&DAT_00b1dce4,0);
    pfVar5 = (float *)FUN_006bec40(&local_3c,0x41200000);
    local_44[0] = *pfVar5 - *(float *)(param_1 + 0x33c);
    local_48 = pfVar5[1] - *(float *)(param_1 + 0x340);
    if (*(int *)(param_1 + 0xf1c) != -1) {
      pfVar5 = (float *)FUN_006d82d0(&local_3c);
      local_44[0] = *pfVar5 * DAT_00baa9d0;
      local_48 = pfVar5[1] * DAT_00baa9d0;
    }
    if (((*(uint *)(param_1 + 0x168) & 0x200) != 0) && (*(int *)(param_1 + 0xf1c) == -1)) {
      uVar10 = *(undefined4 *)(param_1 + 0x20);
      uVar6 = FUN_006eef60();
      cVar4 = FUN_006ac710(uVar6 % 0x1e + 0xf,uVar10);
      if ((cVar4 == '\0') && (*(char *)(param_1 + 400) == '\0')) {
        local_44[0] = *(float *)(param_1 + 0xbb0);
        local_48 = *(float *)(param_1 + 0xbb4);
      }
      else {
        *(float *)(param_1 + 0xbb0) = local_44[0];
        *(float *)(param_1 + 0xbb4) = local_48;
      }
      fVar14 = local_44[0] * local_44[0] + local_48 * local_48;
      if (((fVar14 < DAT_00baab54) &&
          ((NAN(fVar14) || NAN(DAT_00ba9fe4)) == (fVar14 == DAT_00ba9fe4))) &&
         (FUN_00435a50(), DAT_00ba9fe4 < fVar14)) {
        local_44[0] = local_44[0] * (DAT_00baa87c / fVar14);
        local_48 = local_48 * (DAT_00baa87c / fVar14);
      }
    }
    local_3c = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    *(float *)(param_1 + 0x36c) = local_3c;
    fVar13 = local_44[0] * local_44[0] + local_48 * local_48;
    FUN_00435a50();
    fVar14 = local_48;
    fVar15 = local_44[0];
    if (0.0 < fVar13) {
      fVar14 = (DAT_00baa454 / fVar13) * local_48;
      fVar15 = (DAT_00baa454 / fVar13) * local_44[0];
    }
    if (NAN(local_3c) == (local_3c == 0.0)) {
      *(float *)(param_1 + 0x360) =
           (fVar15 * *(float *)(param_1 + 0x39c)) / local_3c + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           (fVar14 * *(float *)(param_1 + 0x39c)) / local_3c + *(float *)(param_1 + 0x364);
    }
    *(bool *)(param_1 + 0x148) = local_44[0] < 0.0;
    if ((*(uint *)(param_1 + 0x168) & 0x1000a00) != 0) goto LAB_0053b985;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (((float)((uint)local_48 & DAT_00bacb40) < DAT_00baa87c) &&
         (DAT_00baa910 < *(float *)(param_1 + 0x3a4))) goto LAB_0053b679;
    }
    else {
      cVar4 = FUN_006d8260(9);
      if (cVar4 != '\0') {
LAB_0053b679:
        cVar4 = FUN_0040a5d0("Charge",1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
        FUN_006d6ba0(0x77,0x3f800000,2,0,0x3f800000);
        *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
        *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
        *(undefined4 *)(param_1 + 0xb64) = 8;
        *(undefined4 *)(param_1 + 0x364) = 0;
        *(undefined4 *)(param_1 + 0x360) = 0;
        *(undefined4 *)(param_1 + 0x410) = 0;
        *(undefined4 *)(param_1 + 0x184) = 2;
        goto LAB_0053b985;
      }
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar6 = FUN_006eef60();
      if (uVar6 % 0x78 != 0) goto LAB_0053b985;
    }
    else {
      cVar4 = FUN_006d8260(8);
      if ((cVar4 == '\0') || (0 < *(int *)(param_1 + 0xbc0))) goto LAB_0053b985;
    }
    iVar7 = FUN_006d6c20();
    if (iVar7 < 8) {
      cVar4 = FUN_0040a5d0("Summon",1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      *(undefined4 *)(param_1 + 0xb64) = 0xd;
      *(undefined4 *)(param_1 + 0x364) = 0;
      *(undefined4 *)(param_1 + 0x360) = 0;
      *(undefined4 *)(param_1 + 0x410) = 0;
      *(undefined4 *)(param_1 + 0xbc0) = 0x5a;
    }
    goto LAB_0053b985;
  }
  if (iVar7 != 8) {
    if (iVar7 == 9) {
      *(undefined4 *)(param_1 + 0x364) = 0;
      fVar14 = DAT_00baa868;
      if (*(char *)(param_1 + 0x148) != '\0') {
        fVar14 = DAT_00baade4;
      }
      *(float *)(param_1 + 0x360) = fVar14;
      if ((*(int *)(param_1 + 0x410) < 1) ||
         (((0.0 <= fVar14 ||
           (*(float *)(param_1 + 0x334) < *(float *)(param_1 + 0x33c) ||
            *(float *)(param_1 + 0x334) == *(float *)(param_1 + 0x33c))) &&
          ((fVar14 <= 0.0 ||
           (*(float *)(param_1 + 0x33c) < *(float *)(param_1 + 0x334) ||
            *(float *)(param_1 + 0x33c) == *(float *)(param_1 + 0x334))))))) goto LAB_0053b985;
    }
    else {
      if (iVar7 != 0xd) goto LAB_0053b985;
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
        cVar4 = FUN_0040b030("Summon");
        if (cVar4 != '\0') {
          FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
          uVar10 = FUN_006eef60();
          pfVar5 = (float *)FUN_0067f070(local_44);
          local_3c = *pfVar5 * DAT_00baa87c + *(float *)(param_1 + 0x33c);
          local_38 = pfVar5[1] * DAT_00baa87c + *(float *)(param_1 + 0x340);
          FUN_006fe410(0x37,0,&local_3c,&DAT_00c7b640,param_1,0,uVar10,0);
        }
        goto LAB_0053b985;
      }
    }
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    goto LAB_0053b985;
  }
  *(undefined4 *)(param_1 + 0x364) = 0;
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
        bVar12 = bVar1 < (byte)*pcVar11;
        if (bVar1 != *pcVar11) {
LAB_0053b7d7:
          uVar6 = -(uint)bVar12 | 1;
          goto LAB_0053b7dc;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar12 = bVar1 < ((byte *)pcVar11)[1];
        if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_0053b7d7;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar11 = (char *)((byte *)pcVar11 + 2);
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_0053b7dc:
      if ((uVar6 == 0) && ((*(byte *)(ppbVar9 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_0053b813;
    }
    cVar4 = FUN_0040a5d0("Charge Shake",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
  }
LAB_0053b813:
  fVar15 = DAT_00baae00;
  fVar14 = DAT_00baa8a0;
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
LAB_0053b88b:
    fVar14 = *(float *)(param_1 + 0x360);
  }
  else {
    ppbVar9 = *(byte ***)(param_1 + 0x7c);
    if (&DAT_0000000f < ppbVar9[5]) {
      ppbVar9 = (byte **)*ppbVar9;
    }
    pcVar11 = "Charge Shake";
    do {
      bVar1 = *(byte *)ppbVar9;
      bVar12 = bVar1 < (byte)*pcVar11;
      if (bVar1 != *pcVar11) {
LAB_0053b852:
        uVar6 = -(uint)bVar12 | 1;
        goto LAB_0053b857;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar9 + 1);
      bVar12 = bVar1 < ((byte *)pcVar11)[1];
      if (bVar1 != ((byte *)pcVar11)[1]) goto LAB_0053b852;
      ppbVar9 = (byte **)((int)ppbVar9 + 2);
      pcVar11 = (char *)((byte *)pcVar11 + 2);
    } while (bVar1 != 0);
    uVar6 = 0;
LAB_0053b857:
    if (uVar6 != 0) goto LAB_0053b88b;
    if (*(char *)(param_1 + 0x148) == '\0') {
      *(undefined4 *)(param_1 + 0x360) = 0x41c80000;
    }
    else {
      *(undefined **)(param_1 + 0x360) = &DAT_c1c80000;
      fVar14 = fVar15;
    }
  }
  if (((0.0 < fVar14) &&
      (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) + DAT_00baaa94 <
       *(float *)(param_1 + 0x33c))) ||
     ((fVar14 < 0.0 &&
      (*(float *)(param_1 + 0x33c) <= DAT_00baae80 && DAT_00baae80 != *(float *)(param_1 + 0x33c))))
     ) {
    *(undefined4 *)(param_1 + 0xb64) = 9;
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    *(bool *)(param_1 + 0x148) = *(char *)(param_1 + 0x148) == '\0';
  }
LAB_0053b985:
  if ((*(char *)(param_1 + 0x173) != '\0') && ((*(uint *)(param_1 + 0x168) & 0x1000000) == 0)) {
    iVar7 = param_1 + 0x33c;
    FUN_006ff2a0(iVar7,0x42200000,0x42700000,1,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                 DAT_00c7910c,4,0,0);
    FUN_00703190(iVar7,0);
    uVar10 = FUN_006eef60();
    FUN_006fe410(1000,1,iVar7,&DAT_00c7b640,0,0,uVar10,0);
  }
  return;
}

