/* Local J460 decompiler output.
 * VA: 0x00522430
 * Entry: 00522430
 * Dispatcher: 0x006c2990
 * Types: 56
 * Identities: 56.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00522ef0; instructions=610
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=56; identities=56.0.0; dispatcher=0x006c2990;
   end=0x00522ef0; instructions=610 */

void __fastcall AI_00522430(int *param_1)

{
  int *piVar1;
  bool bVar2;
  char cVar3;
  int iVar4;
  uint uVar5;
  float *pfVar6;
  undefined4 uVar7;
  undefined4 extraout_ECX;
  int iVar8;
  int iVar9;
  float fVar10;
  float fVar11;
  int *piVar12;
  undefined local_110 [8];
  int local_108;
  float local_104;
  float local_100;
  float local_fc;
  float local_f4;
  undefined4 local_f0;
  char local_e9;
  undefined local_e8 [212];
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  if (param_1[0x2d9] == 0) {
    param_1[0x2ec] = 0x42b40000;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x2d9] = 3;
    local_f0 = (float)CONCAT31(local_f0._1_3_,1);
    goto LAB_00522ec2;
  }
  fVar10 = (float)param_1[0xdb] * DAT_00baa354;
  param_1[0x2f0] = param_1[0x2f0] + 1;
  local_e9 = '\x01';
  param_1[0xdb] = (int)fVar10;
  if (((param_1[0x2d9] == 3) && (FUN_0040a380("Shake",0), param_1[0x2d9] == 3)) &&
     (0x23 < (uint)param_1[0x2f0])) {
    if (param_1[0x3c7] == -1) {
      uVar5 = FUN_006eef60();
      if (uVar5 % 0x32 != 0) goto LAB_00522543;
    }
    else {
      cVar3 = FUN_006d8260(9);
      if (cVar3 == '\0') {
        FUN_006d82d0(&local_f4);
        cVar3 = FUN_00a10630(&DAT_00c7b640);
        if (cVar3 == '\0') goto LAB_00522543;
      }
    }
    param_1[0x2d9] = 4;
  }
LAB_00522543:
  if ((param_1[0x3c7] == -1) || (*(char *)((int)param_1 + 0x171) != '\0')) {
    iVar9 = *(int *)(DAT_00c71678 + 0x18300);
    iVar8 = (int)(((float)param_1[0xcf] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    if ((((-1 < iVar8) &&
         ((iVar8 < *(int *)(iVar9 + 0xc) &&
          (iVar4 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0),
          -1 < iVar4)))) && (iVar4 < *(int *)(iVar9 + 0x10))) &&
       ((uVar5 = iVar4 * *(int *)(iVar9 + 0xc) + iVar8, uVar5 < 0x1c0 &&
        (*(int *)(iVar9 + 0x76c + uVar5 * 4) < 0x3b7)))) {
      *(undefined4 *)(iVar9 + 0x76c + uVar5 * 4) = 900;
    }
  }
  if (param_1[0x3c7] != -1) {
    if ((float)param_1[0x2ec] < DAT_00baa9b4) {
      FUN_006d8e40(1);
    }
    else if (*(char *)((int)param_1 + 0xef5) != '\0') {
      param_1[0x3a8] = 0;
    }
  }
  if ((((param_1[0x2e8] < 1) ||
       (iVar9 = param_1[0x2e8] + ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]),
       param_1[0x2e8] = iVar9, iVar9 < 1)) && (cVar3 = FUN_006cae60(0,7), cVar3 != '\0')) &&
     ((param_1[0x3c7] == -1 || (param_1[0x2d9] == 3)))) {
    FUN_0040a380(&DAT_00b1d47c,0);
    *(undefined *)((int)param_1 + 0x171) = 1;
    iVar9 = FUN_006be840();
    local_f0 = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
    if (param_1[0x3c7] == -1) {
      param_1[0x3c8] = (int)DAT_00c7b640;
      local_104 = DAT_00c7b644;
    }
    else {
      FUN_006d85a0(&local_108);
      param_1[0x3c8] = local_108;
    }
    param_1[0x3c9] = (int)local_104;
    fVar10 = local_f0;
    if (param_1[0x3c7] != -1) {
      fVar10 = (float)param_1[0x3c8];
    }
    *(bool *)(param_1 + 0x52) = 0.0 < fVar10;
    param_1[0x2d9] = 8;
    param_1[0x2e8] = 0x3f;
  }
  FUN_007e6ff0();
  if (*(char *)((int)param_1 + 0x171) != '\0') {
    fVar10 = (float)param_1[0xe7] + (float)param_1[0x2ec];
    if ((float)param_1[0xe7] + (float)param_1[0x2ec] <= 0.0) {
      fVar10 = 0.0;
    }
    if (DAT_00baa9b4 <= fVar10) {
      fVar10 = DAT_00baa9b4;
    }
    param_1[0x2ec] = (int)fVar10;
  }
  local_104 = DAT_00baa454;
  if (param_1[0x2d9] == 4) {
    FUN_0040a380(&DAT_00b1d5b0,0);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      *(undefined *)((int)param_1 + 0x171) = 0;
      param_1[0x62] = 0;
      if (param_1[0x3c7] == -1) {
        FUN_0081e9d0(&local_f4,0x41a00000);
        iVar9 = FUN_00703950(&local_f4);
        local_f4 = local_f4 - *(float *)(iVar9 + 0x33c);
        fVar10 = local_f0 - *(float *)(iVar9 + 0x340);
        fVar11 = fVar10 * fVar10 + local_f4 * local_f4;
        if ((((DAT_00baa87c <= (float)((uint)local_f4 & DAT_00bacb40)) &&
             (DAT_00baa87c <= (float)((uint)fVar10 & DAT_00bacb40))) || (DAT_00baac8c <= fVar11)) &&
           (DAT_00baac5c <= fVar11)) {
          iVar9 = *(int *)(DAT_00c71678 + 0x18300);
          uVar5 = FUN_00812de0(&local_f4);
          if ((0x1bf < uVar5) || (*(int *)(iVar9 + 0x76c + uVar5 * 4) < 500)) {
            iVar9 = *(int *)(iVar9 + 0xc);
            fVar10 = (float)((int)uVar5 / iVar9) * DAT_00baa904 + DAT_00baaa00;
            param_1[0xcd] = (int)((float)((int)uVar5 % iVar9) * DAT_00baa904 + DAT_00baa904);
            param_1[0xce] = (int)fVar10;
          }
        }
        uVar5 = FUN_006eef60();
        if (uVar5 % 0x14 == 0) {
          param_1[0x2d9] = 6;
          FUN_0040a380("Appear",0);
          *(undefined *)((int)param_1 + 0x171) = 1;
          FUN_006c04b0(1);
          param_1[0x2f0] = 0;
          if (param_1[0x2e8] < 0xc) {
            param_1[0x2e8] = 0xc;
          }
        }
        goto LAB_00522941;
      }
    }
    else {
LAB_00522941:
      if (param_1[0x3c7] == -1) goto LAB_00522b94;
    }
    if ((*(char *)((int)param_1 + 0x171) == '\0') ||
       ((pfVar6 = (float *)FUN_006b6af0(local_110,"OverlayEffect"),
        (NAN(*pfVar6) || NAN(DAT_00c7b640)) != (*pfVar6 == DAT_00c7b640) &&
        ((NAN(pfVar6[1]) || NAN(DAT_00c7b644)) != (pfVar6[1] == DAT_00c7b644))))) {
      FUN_006d8b20(2);
      bVar2 = (float)param_1[0x2ec] - (float)param_1[0xe7] <= DAT_00baae14;
      param_1[0x2ec] = (int)((float)param_1[0x2ec] - (float)param_1[0xe7]);
      if (bVar2) {
        param_1[0x2ec] = 0;
        uVar7 = FUN_00435c70();
        (**(code **)(*param_1 + 0x20))(0x40a00000,0,0,uVar7,0x1e);
        uVar7 = FUN_00407170();
        local_f0 = 1.401298e-45;
        FUN_006b31b0(&local_f0,param_1,uVar7,&DAT_00c7b640,0x3f800000);
        FUN_006d6ba0(0x4d,0x3f000000,2,0,0x40000000);
      }
      FUN_007e33c0(&DAT_00c7b640,0x40400000,0,1);
      local_e9 = '\0';
      if (((param_1[0x3c7] != -1) &&
          (cVar3 = FUN_00956110(9,param_1[0x3c7],param_1,extraout_ECX), cVar3 != '\0')) ||
         (cVar3 = FUN_006cae60(0,7), cVar3 != '\0')) {
        local_100 = (float)param_1[0xcf];
        piVar1 = param_1 + 0xcf;
        local_fc = (float)param_1[0xd0];
        local_f0 = *(float *)(DAT_00c71678 + 0x18300);
        iVar9 = FUN_007f0780(local_100,local_fc);
        if (iVar9 == 0) {
          uVar7 = 0x522b06;
          piVar12 = piVar1;
          iVar9 = FUN_00812c10(piVar1);
          if ((iVar9 < 900) && (cVar3 = FUN_006b9740(piVar1,uVar7,piVar12), cVar3 == '\0')) {
            param_1[0xcd] = *piVar1;
            param_1[0xce] = param_1[0xd0];
            param_1[0x2d9] = 6;
            FUN_0040a380("Appear",0);
            *(undefined *)((int)param_1 + 0x171) = 1;
            FUN_006c04b0(1);
          }
        }
      }
      if (DAT_00baa454 < (float)(param_1[0xd8] & DAT_00bacb40)) {
        *(bool *)(param_1 + 0x52) = 0.0 < (float)param_1[0xd8];
      }
    }
  }
  else {
    param_1[0x62] = 4;
  }
LAB_00522b94:
  if ((param_1[0x1f] != 0) && (cVar3 = FUN_0040add0("Sound"), cVar3 != '\0')) {
    local_fc = DAT_00baa454;
    fVar10 = DAT_00baa528;
    if ((param_1[0x319] == 0x12) || (fVar10 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
      local_fc = fVar10;
    }
    local_f0 = 1.008935e-43;
    FUN_00956780();
    FUN_0092dc30(local_f0,0x3f800000,2,0,local_fc,0);
  }
  if ((param_1[0x2d9] == 8) &&
     ((param_1[0x1f] == 0 || (cVar3 = FUN_0040ae70("Shoot"), cVar3 == '\0')))) {
    FUN_006d9050(0);
  }
  if ((param_1[0x3c7] == -1) || (param_1[0x2d9] != 6)) {
LAB_00522cad:
    if (param_1[0x1f] == 0) goto LAB_00522e54;
    cVar3 = FUN_0040add0("Shoot");
    if (cVar3 != '\0') {
      fVar10 = DAT_00baa528;
      if ((param_1[0x319] == 0x12) || (fVar10 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
        local_104 = fVar10;
      }
      local_f0 = 3.166935e-43;
      FUN_00956780();
      FUN_0092dc30(local_f0,0x3f800000,2,0,local_104,0);
      iVar9 = FUN_006be840();
      local_100 = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
      local_104 = *(float *)(iVar9 + 0x340) - (float)param_1[0xd0];
      if (param_1[0x3c7] != -1) {
        local_100 = (float)param_1[0x3c8];
        local_104 = (float)param_1[0x3c9];
      }
      fVar10 = local_100 * local_100 + local_104 * local_104;
      local_fc = local_104;
      local_f0 = local_100;
      FUN_00435a50();
      if (0.0 < fVar10) {
        local_100 = local_f0 * (DAT_00baa7b8 / fVar10);
        local_fc = local_104 * (DAT_00baa7b8 / fVar10);
      }
      AI_0043ef30();
      FUN_006cb2e0(param_1 + 0xcf,&local_100,2,local_e8);
      param_1[0x2f0] = 0;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_00522e54;
  }
  else {
    if (param_1[0x1f] != 0) {
      cVar3 = FUN_0040ae70("Shoot");
      if (cVar3 != '\0') {
        if (param_1[0x1f] == 0) goto LAB_00522e54;
        FUN_00408d00(*(int *)(param_1[0x1f] + 0x30) + -1);
      }
      goto LAB_00522cad;
    }
LAB_00522e54:
    if (param_1[0x2d9] == 6) {
      param_1[0x2d9] = 3;
    }
    else if (param_1[0x2d9] == 8) {
      param_1[0x2d9] = 4 - (uint)((uint)param_1[0x2f0] < 0x24);
    }
  }
  if (local_e9 != '\0') {
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
  }
  local_f0 = (float)((uint)local_f0 & 0xffffff00);
LAB_00522ec2:
  FUN_006c04b0(local_f0);
  FUN_00aef12b();
  return;
}

