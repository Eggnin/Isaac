/* Local J460 decompiler output.
 * VA: 0x005240a0
 * Entry: 005240a0
 * Dispatcher: 0x006c2990
 * Types: 58
 * Identities: 58.0.0,58.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00524109; instructions=33
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=58; identities=58.0.0,58.1.0; dispatcher=0x006c2990;
   end=0x00524109; instructions=33 */

void __fastcall AI_005240a0(int param_1)

{
  code *pcVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined1 *puVar6;
  undefined4 extraout_ECX;
  float fVar7;
  double dVar8;
  undefined8 uVar9;
  float local_f8;
  float local_f4;
  float local_f0;
  float local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  float local_d8;
  float local_d4;
  float local_d0;
  float local_cc;
  float local_c4;
  undefined local_c0 [4];
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_c4 = *(float *)(param_1 + 0xb64);
  if (local_c4 == 0.0) {
    FUN_006c04b0();
    uVar3 = *(uint *)(param_1 + 0x3dc);
    if (uVar3 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      uVar3 = *(uint *)(param_1 + 0x3dc);
      if (uVar3 == 0) {
        pcVar1 = (code *)swi(3);
        (*pcVar1)();
        return;
      }
    }
    uVar3 = uVar3 >> ((byte)*(undefined4 *)(param_1 + 0x3e0) & 0x1f) ^ uVar3;
    uVar3 = uVar3 << ((byte)*(undefined4 *)(param_1 + 0x3e4) & 0x1f) ^ uVar3;
    uVar3 = uVar3 >> ((byte)*(undefined4 *)(param_1 + 1000) & 0x1f) ^ uVar3;
    *(uint *)(param_1 + 0x3dc) = uVar3;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(uint *)(param_1 + 0xba0) = uVar3 % 0x14 + 5;
    FUN_00aef12b();
    return;
  }
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
  }
  FUN_006d8b20();
  if ((*(int *)(param_1 + 0xb64) == 6) && (FUN_0040a380("DigIn",0), *(int *)(param_1 + 0xf1c) == -1)
     ) {
    FUN_0081e9d0(&local_d0,0x41a00000);
    iVar4 = FUN_00703950();
    fVar7 = local_cc - *(float *)(iVar4 + 0x340);
    local_d0 = local_d0 - *(float *)(iVar4 + 0x33c);
    fVar7 = fVar7 * fVar7 + local_d0 * local_d0;
    if ((DAT_00baac44 < fVar7) && (fVar7 < DAT_00baaca4)) {
      iVar4 = *(int *)(DAT_00c71678 + 0x18300);
      uVar3 = FUN_00812c90();
      if ((0x1bf < uVar3) || (*(int *)(iVar4 + 0x76c + uVar3 * 4) < 500)) {
        iVar4 = *(int *)(iVar4 + 0xc);
        fVar7 = (float)((int)uVar3 / iVar4) * DAT_00baa904 + DAT_00baaa00;
        *(float *)(param_1 + 0x334) = (float)((int)uVar3 % iVar4) * DAT_00baa904 + DAT_00baa904;
        *(float *)(param_1 + 0x338) = fVar7;
      }
    }
  }
  fVar7 = *(float *)(param_1 + 0xb64);
  if (((local_c4 != fVar7) && (local_c4 == 8.407791e-45)) &&
     (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) ==
       (*(float *)(param_1 + 0x334) == DAT_00c7b640) ||
      ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
       (*(float *)(param_1 + 0x338) == DAT_00c7b644))))) {
    FUN_006c04b0();
    *(undefined4 *)(param_1 + 0x33c) = *(undefined4 *)(param_1 + 0x334);
    *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
    *(undefined4 *)(param_1 + 0xb64) = 0x10;
    FUN_0040a380("DigOut",0);
    *(float *)(param_1 + 0x334) = DAT_00c7b640;
    *(float *)(param_1 + 0x338) = DAT_00c7b644;
    FUN_006d8cf0();
    fVar7 = *(float *)(param_1 + 0xb64);
  }
  if (fVar7 == 2.242078e-44) {
    if (*(int *)(param_1 + 0x7c) != 0) {
      dVar8 = floor((double)*(float *)(param_1 + 0x88));
      local_c4 = (float)dVar8;
      if (2 < (int)dVar8) goto LAB_0052439d;
    }
LAB_00524463:
    uVar5 = 0;
  }
  else {
    if ((fVar7 == 8.407791e-45) && (*(int *)(param_1 + 0x7c) != 0)) {
      dVar8 = floor((double)*(float *)(param_1 + 0x88));
      local_c4 = (float)dVar8;
      if (7 < (int)dVar8) goto LAB_00524463;
    }
LAB_0052439d:
    uVar5 = 4;
  }
  *(undefined4 *)(param_1 + 0x188) = uVar5;
  if (fVar7 == 2.242078e-44) {
    if (*(int *)(param_1 + 0x7c) != 0) {
      dVar8 = floor((double)*(float *)(param_1 + 0x88));
      local_c4 = (float)dVar8;
      if ((int)dVar8 == 3) {
LAB_005244b4:
        local_cc = DAT_00baa454;
        fVar7 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (fVar7 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_cc = fVar7;
        }
        local_c4 = 1.008935e-43;
        FUN_00956780();
        FUN_0092dc30(local_c4,0x3f800000,2,0,local_cc,0);
        fVar7 = *(float *)(param_1 + 0xb64);
        goto LAB_00524544;
      }
    }
  }
  else if (fVar7 == 8.407791e-45) {
    if (*(int *)(param_1 + 0x7c) != 0) {
      dVar8 = floor((double)*(float *)(param_1 + 0x88));
      local_c4 = (float)dVar8;
      if ((int)dVar8 == 7) goto LAB_005244b4;
    }
  }
  else {
LAB_00524544:
    if (fVar7 == 5.605194e-45) {
      FUN_006c04b0();
      uVar3 = FUN_006eef60();
      if (uVar3 % 10 == 0) {
        FUN_006eef60();
        FUN_006b64d0();
      }
      local_c4 = *(float *)(param_1 + 0x16c);
      if (((*(uint *)(param_1 + 0x168) & 0x200) != 0) && (*(int *)(param_1 + 0xf1c) == -1)) {
        FUN_007e6300();
        puVar6 = &DAT_00b1bc54;
        if (DAT_00baa454 <
            *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
            *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364)) {
          puVar6 = &DAT_00b1dce4;
        }
        FUN_0040a380(puVar6,0);
        *(bool *)(param_1 + 0x148) =
             *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
        FUN_00aef12b();
        return;
      }
      if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
        iVar4 = FUN_006be840();
        local_e8 = *(undefined4 *)(iVar4 + 0x33c);
        local_e4 = *(undefined4 *)(iVar4 + 0x340);
        FUN_007e33c0(&local_e8,0x3f4ccccd,0,1);
        if (*(int *)(param_1 + 0x2c) == 1) {
          if (*(int *)(param_1 + 0xba0) < 1) {
            fVar7 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
                    *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
            FUN_00435a50();
            local_cc = DAT_00c7b644;
            local_c4 = DAT_00c7b640;
            if (0.0 < fVar7) {
              local_c4 = *(float *)(param_1 + 0x360) / fVar7;
              local_cc = *(float *)(param_1 + 0x364) / fVar7;
            }
            if (((NAN(local_c4) || NAN(DAT_00c7b640)) == (local_c4 == DAT_00c7b640)) ||
               ((NAN(local_cc) || NAN(DAT_00c7b644)) == (local_cc == DAT_00c7b644))) {
              uVar3 = FUN_006eef60();
              *(uint *)(param_1 + 0xba0) = uVar3 % 0x14 + 0x28;
              AI_0043ef30();
              local_f8 = *(float *)(param_1 + 0x33c) + *(float *)(param_1 + 0x360);
              local_f0 = local_c4 * DAT_00baa7b8;
              local_f4 = *(float *)(param_1 + 0x364) + *(float *)(param_1 + 0x340);
              local_ec = local_cc * DAT_00baa7b8;
              local_b4 = 0x3e99999a;
              local_b8 = 0xc0a00000;
              local_bc = 0x40a00000;
              FUN_006cb2e0(&local_f8,&local_f0,0,local_c0);
              FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
            }
          }
          else {
            *(int *)(param_1 + 0xba0) =
                 ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
                 *(int *)(param_1 + 0xba0);
          }
        }
      }
      else {
        iVar4 = FUN_006be840();
        local_e0 = *(undefined4 *)(iVar4 + 0x33c);
        local_dc = *(undefined4 *)(iVar4 + 0x340);
        FUN_007e4940(&local_e0,0);
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      }
      puVar6 = &DAT_00b1bc54;
      if (DAT_00baa454 <
          *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
          *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364)) {
        puVar6 = &DAT_00b1dce4;
      }
      FUN_0040a380(puVar6,0);
      *(bool *)(param_1 + 0x148) =
           *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar3 = FUN_006eef60();
        if (((int)((ulonglong)uVar3 % 0x1e) == 0) &&
           (*(char *)(param_1 + 0xb40) == (char)((ulonglong)uVar3 % 0x1e))) {
          *(undefined4 *)(param_1 + 0xb64) = 6;
          FUN_00aef12b();
          return;
        }
      }
      else {
        cVar2 = FUN_00956110(9,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX);
        if ((cVar2 != '\0') &&
           ((FUN_006d8d30(), (NAN(local_d8) || NAN(DAT_00c7b640)) == (local_d8 == DAT_00c7b640) ||
            ((NAN(local_d4) || NAN(DAT_00c7b644)) == (local_d4 == DAT_00c7b644))))) {
          uVar9 = CONCAT44(local_d4,local_d8);
          iVar4 = FUN_007f0780(local_d8,local_d4);
          if ((iVar4 == 0) && (cVar2 = FUN_006b9740(&local_d8,uVar9), cVar2 == '\0')) {
            *(undefined4 *)(param_1 + 0xb64) = 6;
            *(float *)(param_1 + 0x334) = local_d8;
            *(float *)(param_1 + 0x338) = local_d4;
            FUN_00aef12b();
            return;
          }
        }
      }
      goto LAB_00524406;
    }
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
LAB_00524406:
  FUN_00aef12b();
  return;
}

