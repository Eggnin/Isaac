/* Local J460 decompiler output.
 * VA: 0x00503af0
 * Entry: 00503af0
 * Dispatcher: 0x006c2990
 * Types: 882
 * Identities: 882.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005041d0; instructions=422
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=882; identities=882.0.0; dispatcher=0x006c2990;
   end=0x005041d0; instructions=422 */

void __fastcall AI_00503af0(int param_1)

{
  float *pfVar1;
  code *pcVar2;
  int iVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  char *pcVar7;
  undefined4 *puVar8;
  int iVar9;
  uint uVar10;
  float fVar11;
  float fVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined local_8c [8];
  int local_84;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  int *local_70;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined local_30 [16];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_7c = *(float *)(DAT_00c71678 + 0x18300);
  local_84 = param_1;
  if (*(int *)(param_1 + 0xb74) == 1) {
    fVar11 = DAT_00baa454;
    if (((*(uint *)(param_1 + 0x168) & 0x20000000) == 0) && (*(int *)(param_1 + 0xb64) != 0x10)) {
      iVar5 = FUN_00703950((float *)(param_1 + 0x33c));
      if (iVar5 == 0) {
        fVar11 = 0.0;
      }
      else {
        fVar11 = *(float *)(param_1 + 0x340) - *(float *)(iVar5 + 0x340);
        fVar12 = *(float *)(param_1 + 0x33c) - *(float *)(iVar5 + 0x33c);
        fVar11 = fVar11 * fVar11 + fVar12 * fVar12;
        FUN_00435a50();
        fVar11 = DAT_00baa454 - (fVar11 - DAT_00baa9a0) / DAT_00baaa00;
        if (fVar11 <= DAT_00ba9fe4) {
          fVar11 = DAT_00ba9fe4;
        }
        if (DAT_00baa454 <= fVar11) {
          fVar11 = DAT_00baa454;
        }
      }
    }
    uVar10 = 0;
    *(float *)(param_1 + 0xbb0) = fVar11;
    if (*(int *)(param_1 + 200) != 0) {
      do {
        iVar5 = FUN_0040b220(uVar10);
        uVar10 = uVar10 + 1;
        *(undefined4 *)(iVar5 + 0x54) = *(undefined4 *)(param_1 + 0xbb0);
      } while (uVar10 < *(uint *)(param_1 + 200));
    }
    if (*(int *)(param_1 + 0xb64) != 0x10) {
      uVar6 = 0;
      if (DAT_00baa08c < *(float *)(param_1 + 0xbb0)) {
        uVar6 = 4;
      }
      *(undefined4 *)(param_1 + 0x188) = uVar6;
      FUN_00aef12b();
      return;
    }
  }
  else {
    switch(*(undefined4 *)(param_1 + 0xb64)) {
    case 0:
      fVar11 = *(float *)(param_1 + 900) * DAT_00baa328;
      *(undefined4 *)(param_1 + 0xf18) = 1;
      *(undefined4 *)(param_1 + 0xb64) = 2;
      *(float *)(param_1 + 0xbb4) = fVar11;
      local_30 = ZEXT816(0);
      *(undefined4 *)(param_1 + 0xbb0) = 0;
      local_40 = _DAT_00babae0;
      uStack_3c = _UNK_00babae4;
      uStack_38 = _UNK_00babae8;
      uStack_34 = _UNK_00babaec;
      local_20 = 0x3f51eb85;
      local_1c = 0x3f51eb85;
      local_18 = 0x3f4ccccd;
      FUN_004071f0(&local_40);
      uVar10 = 0;
      if (*(int *)(param_1 + 200) != 0) {
        do {
          iVar5 = FUN_0040b220(uVar10);
          uVar10 = uVar10 + 1;
          *(undefined4 *)(iVar5 + 0x54) = 0;
        } while (uVar10 < *(uint *)(param_1 + 200));
      }
      FUN_0040a380("Appear",0);
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      FUN_00aef12b();
      return;
    case 2:
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 3;
        FUN_00aef12b();
        return;
      }
      break;
    case 3:
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      local_70 = (int *)(*(float *)(param_1 + 0xbb0) * _DAT_00baa4f0);
      if ((float)local_70 <= DAT_00baa244) {
        local_70 = (int *)DAT_00baa244;
      }
      iVar5 = FUN_006be840();
      fVar11 = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
      fVar12 = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
      fVar11 = fVar11 * fVar11 + fVar12 * fVar12;
      FUN_00435a50();
      uVar13 = 1;
      uVar6 = 0;
      fVar11 = (fVar11 - 0.0) / DAT_00baa9a0;
      if (fVar11 <= 0.0) {
        fVar11 = 0.0;
      }
      if (DAT_00baa454 <= fVar11) {
        fVar11 = DAT_00baa454;
      }
      fVar11 = (fVar11 * DAT_00baa27c + DAT_00baa304) * (float)local_70;
      uVar14 = FUN_006bec40(&local_80,0);
      FUN_007e33c0(uVar14,fVar11,uVar6,uVar13);
      if (*(float *)(param_1 + 0xbb4) <= *(float *)(param_1 + 0x380)) {
        pfVar1 = (float *)(param_1 + 0x360);
        if ((float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40) <
            (float)((uint)*pfVar1 & DAT_00bacb40)) {
          FUN_0040a380("WalkHori",0);
          *(bool *)(param_1 + 0x148) = *pfVar1 <= 0.0 && *pfVar1 != 0.0;
        }
        else {
          pcVar7 = (char *)&DAT_00b1e020;
          if (0.0 <= *(float *)(param_1 + 0x364)) {
            pcVar7 = "WalkDown";
          }
          FUN_0040a380(pcVar7,0);
          *(undefined *)(param_1 + 0x148) = 0;
        }
      }
      else {
        fVar11 = *(float *)(param_1 + 900) * DAT_00baa220;
        do {
          fVar12 = *(float *)(param_1 + 0xbb4) - fVar11;
          *(float *)(param_1 + 0xbb4) = fVar12;
        } while (*(float *)(param_1 + 0x380) < fVar12);
        *(undefined4 *)(param_1 + 0xb64) = 0x10;
        *(undefined4 *)(param_1 + 0x188) = 0;
        FUN_0040a380(&DAT_00b1d534,0);
        *(undefined *)(param_1 + 0x148) = 0;
        *(undefined4 *)(param_1 + 0x360) = DAT_00c7b640;
        *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
        *(undefined4 *)(param_1 + 0xbc0) = 0x5a;
      }
      puVar8 = (undefined4 *)FUN_0067f170();
      *(undefined4 *)(param_1 + 0xf30) = *puVar8;
      *(undefined4 *)(param_1 + 0xf34) = puVar8[1];
      iVar5 = FUN_006ac760();
      if ((iVar5 != 0) && (0.0 < *(float *)(param_1 + 0xbb0))) {
        local_70 = (int *)FUN_006b64d0(0x3f000000);
        pcVar2 = *(code **)(*local_70 + 0x3c);
        FUN_004238f0(*(float *)(param_1 + 0xbb0) * DAT_00baa2d0);
        FUN_004071c0(local_84 + 0x1e4);
        uVar6 = FUN_004072e0();
        (*pcVar2)(uVar6,0xffffffff,0xff,0,1);
        FUN_00aef12b();
        return;
      }
      break;
    case 0x10:
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar4 = FUN_0040add0(&DAT_00b1d534);
        if (cVar4 != '\0') {
          FUN_006d6ba0(0x50,0x3f333333,2,0,0x3fc00000);
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) break;
      }
      if (0 < *(int *)(param_1 + 0xbc0)) {
        *(int *)(param_1 + 0xbc0) =
             ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
             *(int *)(param_1 + 0xbc0);
      }
      local_74 = 0.0;
      iVar5 = 4;
      local_78 = 0.0;
      local_70 = (int *)0x0;
      do {
        uVar16 = 0;
        uVar15 = 0;
        uVar14 = 0;
        uVar13 = 0;
        uVar6 = FUN_0081e9d0(local_8c,0);
        FUN_00813520(&local_80,uVar6,uVar13,uVar14,uVar15,uVar16);
        iVar9 = FUN_00703ab0(&local_80,0,0,0);
        iVar3 = local_84;
        if ((iVar9 != 0) &&
           (fVar11 = local_80 - *(float *)(iVar9 + 0x33c),
           fVar12 = local_7c - *(float *)(iVar9 + 0x340), fVar11 = fVar12 * fVar12 + fVar11 * fVar11
           , local_74 < fVar11)) {
          local_70 = (int *)local_80;
          local_78 = local_7c;
          local_74 = fVar11;
        }
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
      if ((DAT_00baac5c < local_74) || (*(int *)(local_84 + 0xbc0) < 1)) {
        *(int **)(local_84 + 0x33c) = local_70;
        *(float *)(local_84 + 0x340) = local_78;
        FUN_0040a380("Appear",0);
        *(undefined4 *)(iVar3 + 0xb64) = 2;
      }
    }
  }
  FUN_00aef12b();
  return;
}

