/* Local J460 decompiler output.
 * VA: 0x00531350
 * Entry: 00531350
 * Dispatcher: 0x006c2990
 * Types: 221
 * Identities: 221.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00531ab0; instructions=434
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=221; identities=221.0.0; dispatcher=0x006c2990;
   end=0x00531ab0; instructions=434 */

void __fastcall AI_00531350(int param_1)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  float fVar6;
  undefined auVar7 [16];
  float fVar8;
  undefined4 uVar9;
  float *pfVar10;
  float local_c4;
  float local_bc;
  float local_b8;
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(undefined *)(param_1 + 0x3b0) = 1;
    FUN_00aef12b();
    return;
  }
  *(undefined *)(param_1 + 0x3b0) = 0;
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  fVar6 = *(float *)(param_1 + 0x36c) * DAT_00baa354;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  iVar3 = *(int *)(param_1 + 0xb64);
  *(float *)(param_1 + 0x36c) = fVar6;
  local_c4 = DAT_00baa454;
  if (iVar3 == 3) {
    FUN_0040a380("Pulse",0);
    if (0 < *(int *)(param_1 + 0x410)) {
      *(int *)(param_1 + 0x410) =
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
           *(int *)(param_1 + 0x410);
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      iVar3 = FUN_006be840();
      fVar6 = *(float *)(iVar3 + 0x340) - *(float *)(param_1 + 0x340);
      fVar8 = *(float *)(iVar3 + 0x33c) - *(float *)(param_1 + 0x33c);
      if (fVar6 * fVar6 + fVar8 * fVar8 <= DAT_00baac48) {
        iVar3 = FUN_006be840();
        local_bc = *(float *)(iVar3 + 0x33c);
        local_b8 = *(float *)(iVar3 + 0x340);
        cVar2 = FUN_007f0df0(param_1 + 0x33c,&local_bc,3,999,0,0,0);
        if (cVar2 != '\0') goto LAB_00531517;
      }
      if (0 < *(int *)(param_1 + 0x410)) goto LAB_00531517;
    }
    else if ((*(float *)(param_1 + 0xbb0) < DAT_00baa454) &&
            (cVar2 = FUN_006d8260(9), cVar2 == '\0')) {
LAB_00531517:
      if ((*(uint *)(param_1 + 0x168) & 0x200) == 0) goto LAB_005317cb;
    }
    *(undefined4 *)(param_1 + 0xb64) = 6;
    uVar4 = FUN_006eef60();
    *(uint *)(param_1 + 0x410) = uVar4 % 0x28 + 0x50;
    FUN_0040a380("DigOut",0);
  }
  else if (iVar3 == 8) {
    FUN_0040a380("Attack",0);
    FUN_006d9050(0);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
        iVar3 = FUN_006be840();
        local_bc = *(float *)(iVar3 + 0x33c);
        local_b8 = *(float *)(iVar3 + 0x340);
        if (*(int *)(param_1 + 0xf1c) != -1) {
          local_bc = *(float *)(param_1 + 0xf20) * DAT_00baaa78 + *(float *)(param_1 + 0x33c);
          local_b8 = *(float *)(param_1 + 0xf24) * DAT_00baaa78 + *(float *)(param_1 + 0x340);
        }
        uVar9 = AI_0043ef30();
        iVar3 = FUN_006eef60();
        fVar6 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa81c;
        uVar4 = FUN_006eef60();
        FUN_006ccdd0((uVar4 & 3) + 5,&local_bc,fVar6,uVar9);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_005317cb;
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
    FUN_0040a380("Pulse",0);
  }
  else if (iVar3 == 6) {
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      FUN_0040a380("PulseOut",0);
    }
    iVar3 = *(int *)(param_1 + 0x410) +
            ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
    *(int *)(param_1 + 0x410) = iVar3;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (iVar3 < 1) goto LAB_00531770;
    }
    else if ((((*(int *)(param_1 + 0x7c) != 0) &&
              (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0')) &&
             (*(float *)(param_1 + 0xbb0) <= DAT_00baa3a4 &&
              DAT_00baa3a4 != *(float *)(param_1 + 0xbb0))) &&
            ((cVar2 = FUN_006d8260(9), cVar2 != '\0' || (cVar2 = FUN_006cae60(0,7), cVar2 != '\0')))
            ) {
LAB_00531770:
      *(undefined4 *)(param_1 + 0xb64) = 7;
      FUN_0040a380("DigIn",0);
      fVar6 = *(float *)(param_1 + 0xbb0) - DAT_00baa198;
      if (fVar6 <= 0.0) {
        fVar6 = 0.0;
      }
      *(float *)(param_1 + 0xbb0) = fVar6;
    }
  }
  else if ((iVar3 == 7) && ((*(int *)(param_1 + 0x7c) == 0 || (*(char *)(param_1 + 0x8c) == '\0'))))
  {
    *(undefined4 *)(param_1 + 0xb64) = 3;
  }
LAB_005317cb:
  iVar3 = *(int *)(param_1 + 0xb64);
  if ((((iVar3 == 3) || (iVar3 == 8)) || (iVar3 == 7)) ||
     ((iVar3 == 6 &&
      ((*(int *)(param_1 + 0x7c) == 0 || (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0')))))) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (*(float *)(param_1 + 0x14) <= 0.0) {
LAB_00531891:
    if (*(int *)(param_1 + 0xf1c) == -1) goto LAB_005319d4;
  }
  else {
    auVar7 = ZEXT816(0);
    if ((bVar1) && (pfVar10 = *(float **)(param_1 + 8), pfVar10 != *(float **)(param_1 + 0xc))) {
      do {
        if (((uint)pfVar10[2] & 0x8000) == 0) {
          auVar7._0_4_ = auVar7._0_4_ + *pfVar10;
          *pfVar10 = 0.0;
        }
        pfVar10 = pfVar10 + 0xe;
      } while (pfVar10 != *(float **)(param_1 + 0xc));
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if ((((*(int *)(param_1 + 0xb64) == 3) || (*(int *)(param_1 + 0xb64) == 8)) &&
          (0.0 < auVar7._0_4_)) && ((*(uint *)(param_1 + 0x168) & 0x1000800) == 0)) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        iVar3 = *(int *)(param_1 + 0x410) + (int)auVar7._0_4_ * 2;
        iVar5 = 0x1e;
        if (iVar3 < 0x1e) {
          iVar5 = iVar3;
        }
        *(int *)(param_1 + 0x410) = iVar5;
      }
      goto LAB_00531891;
    }
  }
  pfVar10 = (float *)0x1;
  uVar9 = 0x5318ba;
  FUN_006d8e40(1);
  if (*(int *)(param_1 + 0xb64) == 3) {
    pfVar10 = (float *)0x7;
    uVar9 = 0;
    cVar2 = FUN_006cae60(0,7);
    if (cVar2 != '\0') {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        *(undefined4 *)(param_1 + 0xf20) = DAT_00c7b640;
        fVar6 = DAT_00c7b644;
      }
      else {
        pfVar10 = &local_bc;
        uVar9 = 0x531913;
        FUN_006d85a0(pfVar10);
        *(float *)(param_1 + 0xf20) = local_bc;
        fVar6 = local_b8;
      }
      *(float *)(param_1 + 0xf24) = fVar6;
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
  }
  if (bVar1) {
    cVar2 = FUN_006b9740(param_1 + 0x33c,uVar9,pfVar10);
    fVar6 = *(float *)(param_1 + 0x39c) / DAT_00baaa44;
    if (cVar2 == '\0') {
      fVar6 = *(float *)(param_1 + 0xbb0) + fVar6;
      if (DAT_00baa454 <= fVar6) {
        fVar6 = DAT_00baa454;
      }
      *(float *)(param_1 + 0xbb0) = fVar6;
    }
    else {
      fVar6 = *(float *)(param_1 + 0xbb0) - fVar6;
      if (fVar6 <= 0.0) {
        fVar6 = 0.0;
      }
      *(float *)(param_1 + 0xbb0) = fVar6;
    }
  }
  else {
    fVar6 = *(float *)(param_1 + 0xbb0) -
            (*(float *)(param_1 + 0x39c) * DAT_00baa528) / DAT_00baaa44;
    if (fVar6 <= 0.0) {
      fVar6 = 0.0;
    }
    *(float *)(param_1 + 0xbb0) = fVar6;
  }
LAB_005319d4:
  if (*(int *)(param_1 + 0xb64) == 6) {
    uVar4 = *(uint *)(param_1 + 0x168) & 0xffffffef;
  }
  else {
    uVar4 = *(uint *)(param_1 + 0x168) | 0x10;
  }
  *(uint *)(param_1 + 0x168) = uVar4;
  *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
  if ((*(int *)(param_1 + 0x7c) != 0) && (cVar2 = FUN_0040add0(&DAT_00b61110), cVar2 != '\0')) {
    fVar6 = DAT_00baa528;
    if ((*(int *)(param_1 + 0xc64) == 0x12) ||
       (fVar6 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
      local_c4 = fVar6;
    }
    FUN_00956780();
    FUN_0092dc30(2,0x3f800000,2,0,local_c4,0);
  }
  FUN_00aef12b();
  return;
}

