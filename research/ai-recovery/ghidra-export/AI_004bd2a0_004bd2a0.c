/* Local J460 decompiler output.
 * VA: 0x004bd2a0
 * Entry: 004bd2a0
 * Dispatcher: 0x006c2990
 * Types: 920
 * Identities: 920.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004be670; instructions=1076
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=920; identities=920.0.0; dispatcher=0x006c2990;
   end=0x004be670; instructions=1076 */

void __fastcall AI_004bd2a0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  char cVar4;
  float *pfVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int iVar10;
  uint uVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  int *piStack_f0;
  int *piStack_ec;
  float fStack_e8;
  float fStack_e4;
  undefined auStack_e0 [12];
  undefined4 uStack_d4;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_88;
  uint uStack_84;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined auStack_28 [16];
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  uint local_c;
  
  fVar15 = DAT_00baad30;
  fVar12 = DAT_00baa2e4;
  local_c = DAT_00bf93b4 ^ (uint)&local_100;
  local_f4 = (float)((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  if (*(int *)(param_1 + 0xb74) == 1) {
    pfVar5 = *(float **)(param_1 + 8);
    if (pfVar5 != *(float **)(param_1 + 0xc)) {
      do {
        if ((*(byte *)(pfVar5 + 0xc) & 3) == 0) {
          local_fc = pfVar5[3];
          if ((((((uint)pfVar5[2] & 4) != 0) && (pfVar5[6] != 1.401298e-45)) &&
              (pfVar5[4] != 1.401298e-45)) ||
             (((((uint)pfVar5[2] & 8) != 0 && (pfVar5[4] == *(float *)(param_1 + 0x28))) ||
              ((pfVar5[4] == 1.401298e-42 &&
               ((pfVar5[5] == 2.059909e-43 && (pfVar5[6] != 1.401298e-45)))))))) {
            *(float *)(param_1 + 0x14) = *(float *)(param_1 + 0x14) - *pfVar5;
            *pfVar5 = 0.0;
          }
        }
        pfVar5 = pfVar5 + 0xe;
      } while (pfVar5 != *(float **)(param_1 + 0xc));
    }
    if (*(float *)(param_1 + 0x14) <= 0.0 && *(float *)(param_1 + 0x14) != 0.0) {
      *(undefined4 *)(param_1 + 0x14) = 0;
      FUN_00aef12b();
      return;
    }
    goto LAB_004be5bc;
  }
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 3;
    FUN_006d81c0();
    local_f4 = 0.0;
    FUN_0044bcc0(3,&local_f4);
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    *(undefined4 *)(param_1 + 0xf18) = 1;
    iVar9 = FUN_0040b220(3);
    *(undefined *)(iVar9 + 0x74) = 0;
    iVar9 = FUN_0040b220(4);
    *(undefined *)(iVar9 + 0x74) = 0;
    iVar9 = FUN_0040b220(5);
    *(undefined *)(iVar9 + 0x74) = 0;
    break;
  case 3:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    FUN_007e6650(0);
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      FUN_0040a380(&DAT_00b1bc54,0);
    }
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + (int)local_f4;
    if (*(int *)(param_1 + 0x410) < 0x3c) break;
    switch(*(undefined4 *)(param_1 + 0xbc4)) {
    case 0:
      *(undefined4 *)(param_1 + 0xb64) = 0xd;
      FUN_0040a380("SpawnFly",0);
      break;
    case 1:
      *(undefined4 *)(param_1 + 0xb64) = 10;
      FUN_0040a380("JuggleStart",0);
      *(undefined4 *)(param_1 + 0x410) = 0;
      FUN_004bcc70(0);
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      goto switchD_004bd47d_caseD_4;
    case 2:
      *(undefined4 *)(param_1 + 0xb64) = 0xb;
      FUN_0040a380("LokiDance",0);
      *(undefined4 *)(param_1 + 0xbc0) = 0;
      break;
    case 3:
      uVar11 = FUN_006eef60();
      if ((uVar11 & 1) == 0) {
        *(undefined4 *)(param_1 + 0xb64) = 9;
        FUN_0040a380("BombPoof",0);
        fVar12 = *(float *)(param_1 + 900) * DAT_00baa220;
        iVar9 = (uint)(*(float *)(param_1 + 0x380) <= fVar12 &&
                      fVar12 != *(float *)(param_1 + 0x380)) * 2 + 5;
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 6;
        FUN_0040a380("TeleportUp",0);
        fVar12 = *(float *)(param_1 + 900) * DAT_00baa220;
        iVar9 = (uint)(*(float *)(param_1 + 0x380) <= fVar12 &&
                      fVar12 != *(float *)(param_1 + 0x380)) * 2 + 3;
      }
      *(int *)(param_1 + 0xbc0) = iVar9;
      break;
    default:
      goto switchD_004bd47d_caseD_4;
    }
    *(undefined4 *)(param_1 + 0x410) = 0;
switchD_004bd47d_caseD_4:
    *(int *)(param_1 + 0xbc4) = *(int *)(param_1 + 0xbc4) + 1;
    if (3 < *(int *)(param_1 + 0xbc4)) {
      *(undefined4 *)(param_1 + 0xbc4) = 0;
    }
    break;
  case 6:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    cVar4 = FUN_0040b030("Sound");
    if (cVar4 != '\0') {
      *(undefined4 *)(param_1 + 0x15c) = 0;
      *(undefined4 *)(param_1 + 0x188) = 0;
    }
    if (((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) &&
       (cVar4 = FUN_004bc680(), cVar4 != '\0')) {
      *(undefined4 *)(param_1 + 0x33c) = *(undefined4 *)(param_1 + 0x334);
      *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
      FUN_0040a380("TeleportDown",0);
      iVar9 = FUN_004bcb30(extraout_ECX,0xf);
      *(undefined4 *)(iVar9 + 0x410) = 0x19;
      *(undefined4 *)(iVar9 + 0x414) = 0x19;
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
    break;
  case 7:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      *(undefined4 *)(param_1 + 0x15c) = *(undefined4 *)(*(int *)(param_1 + 0x330) + 0x24);
      *(undefined4 *)(param_1 + 0x188) = 4;
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      iVar9 = *(int *)(param_1 + 0xbc0) + -1;
      *(int *)(param_1 + 0xbc0) = iVar9;
      if (iVar9 < 1) {
LAB_004bd955:
        FUN_0040a380(&DAT_00b1bc54,0);
        *(undefined4 *)(param_1 + 0xb64) = 3;
        *(undefined4 *)(param_1 + 0x410) = 0;
        *(undefined4 *)(param_1 + 0xbc0) = 0;
      }
      else {
        FUN_0040a380("BombPoof",0);
        *(undefined4 *)(param_1 + 0xb64) = 9;
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
    }
    break;
  case 8:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    cVar4 = FUN_0040b030("Sound");
    if (cVar4 != '\0') {
      *(undefined4 *)(param_1 + 0x15c) = *(undefined4 *)(*(int *)(param_1 + 0x330) + 0x24);
      *(undefined4 *)(param_1 + 0x188) = 4;
    }
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      iVar9 = FUN_006be840();
      local_100 = *(float *)(iVar9 + 0x33c);
      local_fc = *(float *)(iVar9 + 0x340);
      FUN_004bc8c0(0,&local_100);
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      iVar9 = *(int *)(param_1 + 0xbc0) + -1;
      *(int *)(param_1 + 0xbc0) = iVar9;
      if (iVar9 < 1) goto LAB_004bd955;
      FUN_0040a380("TeleportUp",0);
      if (*(int *)(param_1 + 0x7c) != 0) {
        FUN_00408e00();
      }
      *(undefined4 *)(param_1 + 0xb64) = 6;
      *(undefined4 *)(param_1 + 0x410) = 0;
    }
    break;
  case 9:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    cVar4 = FUN_0040b030("Sound");
    if (cVar4 != '\0') {
      iVar9 = FUN_004bcb30(extraout_ECX_00,0x10);
      *(undefined4 *)(iVar9 + 0x410) = 2;
      *(undefined4 *)(iVar9 + 0x414) = 2;
      uVar3 = DAT_00c34b9c;
      uVar2 = DAT_00c34b98;
      uVar1 = DAT_00c34b94;
      uVar6 = DAT_00c34b90;
      *(undefined *)(iVar9 + 0x463) = 1;
      *(undefined4 *)(iVar9 + 0x438) = uVar6;
      *(undefined4 *)(iVar9 + 0x43c) = uVar1;
      *(undefined4 *)(iVar9 + 0x440) = uVar2;
      *(undefined4 *)(iVar9 + 0x444) = uVar3;
    }
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      iVar9 = FUN_004bc8c0(0,param_1 + 0x33c);
      *(undefined4 *)(iVar9 + 0x41c) = 0x40a00000;
    }
    if ((*(int *)(param_1 + 0x188) != 0) && (iVar9 = FUN_0040b1d0("OverlayFrame"), iVar9 == 0)) {
      *(undefined4 *)(param_1 + 0x15c) = 0;
      *(undefined4 *)(param_1 + 0x188) = 0;
      uVar6 = FUN_006eef60();
      piVar7 = (int *)FUN_006fe410(1000,0xf,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar6,0);
      (**(code **)(*piVar7 + 0xc))();
    }
    if (((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) &&
       (cVar4 = FUN_004bc680(), cVar4 != '\0')) {
      *(undefined4 *)(param_1 + 0x33c) = *(undefined4 *)(param_1 + 0x334);
      *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
      FUN_0040a380("BombPoofBack",0);
      *(undefined4 *)(param_1 + 0xb64) = 7;
      uVar6 = FUN_006eef60();
      piVar7 = (int *)FUN_006fe410(1000,0xf,(undefined4 *)(param_1 + 0x33c),&DAT_00c7b640,0,0,uVar6,
                                   0);
      (**(code **)(*piVar7 + 0xc))();
    }
    break;
  case 10:
    fVar14 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    *(float *)(param_1 + 0x36c) = fVar14;
    fVar13 = fVar12;
    if (*(float *)(param_1 + 0x360) < 0.0) {
      fVar13 = fVar15;
    }
    if (*(float *)(param_1 + 0x364) <= 0.0 && *(float *)(param_1 + 0x364) != 0.0) {
      fVar12 = fVar15;
    }
    if (NAN(fVar14) == (fVar14 == 0.0)) {
      *(float *)(param_1 + 0x360) =
           (fVar13 * *(float *)(param_1 + 0x39c)) / fVar14 + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           (fVar12 * *(float *)(param_1 + 0x39c)) / fVar14 + *(float *)(param_1 + 0x364);
    }
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      iVar9 = *(int *)(param_1 + 0xbc0);
      if (((iVar9 == 1) || (iVar9 == 2)) &&
         (local_fc = *(float *)(param_1 + 0xbfc),
         *(int *)(*(int *)(*(int *)(param_1 + 0xbf4) +
                          (*(int *)(param_1 + 0xbf8) - 1U & (uint)((int)local_fc + iVar9) >> 2) * 4)
                 + ((int)local_fc + iVar9 & 3U) * 4) == 0)) {
        FUN_004bcc70(iVar9);
      }
      else if (3 < iVar9) {
        iVar8 = FUN_006be840();
        iVar9 = *(int *)(param_1 + 0xbc0);
        piStack_f0 = (int *)(*(float *)(iVar8 + 0x33c) - *(float *)(param_1 + 0x33c));
        piStack_ec = (int *)(*(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340));
        fVar12 = ((float)(iVar9 + -5) * DAT_00baa8d0 - DAT_00baa8d0) * DAT_00baa088;
        local_f8 = fVar12;
        FUN_0041d540();
        local_f4 = fVar12;
        fVar12 = local_f8;
        FUN_0041d520();
        local_100 = ((float)piStack_f0 * local_f4 - (float)piStack_ec * fVar12) +
                    *(float *)(param_1 + 0x33c);
        local_fc = (float)piStack_ec * local_f4 + (float)piStack_f0 * fVar12 +
                   *(float *)(param_1 + 0x340);
        iVar9 = FUN_004bc8c0((&PTR_s_LokiDance5_00b5feb8)[iVar9],&local_100);
        if (iVar9 != 0) {
          FUN_006b6af0(&local_100,"BombGuide");
          fVar12 = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
          *(float *)(iVar9 + 0x33c) = local_100 + *(float *)(param_1 + 0x33c);
          *(float *)(iVar9 + 0x340) = fVar12;
        }
        FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
        *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
      }
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      iVar9 = *(int *)(param_1 + 0xbc0);
      if (iVar9 < 3) {
        FUN_0040a380((&PTR_s_Juggle0_00b5febc)[iVar9],0);
        *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
        FUN_006d6ba0(0xf9,0x3f800000,2,0,0x3f800000);
      }
      else {
        if (iVar9 != 3) goto LAB_004bd955;
        FUN_0040a380("JuggleThrow",0);
        *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
      }
    }
    break;
  case 0xb:
    pfVar5 = (float *)(param_1 + 0x33c);
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    FUN_00812f50(&local_100,pfVar5,0x42a00000,0x42a00000,0x42a00000);
    local_f8 = (local_100 - *pfVar5) * DAT_00baa06c;
    piStack_f0 = (int *)((local_fc - *(float *)(param_1 + 0x340)) * DAT_00baa06c);
    fVar15 = (float)piStack_f0 * (float)piStack_f0 + local_f8 * local_f8;
    fVar12 = local_f8;
    piVar7 = piStack_f0;
    if ((DAT_00baa804 < fVar15) &&
       (FUN_00435a50(), fVar12 = local_f8, piVar7 = piStack_f0, 0.0 < fVar15)) {
      fVar12 = local_f8 * (DAT_00baa6fc / fVar15);
      piVar7 = (int *)((float)piStack_f0 * (DAT_00baa6fc / fVar15));
    }
    *(float *)(param_1 + 0x360) = fVar12 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360)
    ;
    *(float *)(param_1 + 0x364) =
         (float)piVar7 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      if (*(int *)(param_1 + 0xbc0) < 4) {
        FUN_0040a380((&PTR_s_LokiDance2_00b5feac)[*(int *)(param_1 + 0xbc0)],0);
        *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
      }
      else {
        FUN_0040a380(&DAT_00b1bc54,0);
        *(undefined4 *)(param_1 + 0xb64) = 3;
        *(undefined4 *)(param_1 + 0x410) = 0;
        *(undefined4 *)(param_1 + 0xbc0) = 0;
      }
    }
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 == '\0') goto LAB_004be326;
    FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
    AI_0043ef30();
    uStack_d4 = 0xbd4ccccd;
    switch(*(undefined4 *)(param_1 + 0x410)) {
    case 0:
    case 2:
    case 0x11:
    case 0x13:
      uVar6 = 6;
      goto LAB_004be2a6;
    case 1:
    case 8:
    case 0x12:
      uVar6 = 7;
      goto LAB_004be2a6;
    case 3:
    case 0xb:
      uVar6 = 8;
LAB_004be2a6:
      local_fc = 0.0;
LAB_004be2ae:
      local_100 = 10.0;
      break;
    case 4:
    case 0xf:
      uStack_c8 = 0x3e860a92;
      local_fc = 12.0;
      uVar6 = 9;
      goto LAB_004be2ae;
    case 5:
      uStack_c8 = 0;
      local_100 = 8.0;
      local_fc = 8.0;
      FUN_006cb2e0(pfVar5,&local_100,9,auStack_e0);
      uStack_c8 = 0x3e20d97c;
      local_100 = 10.0;
      local_fc = 8.0;
      FUN_006cb2e0(pfVar5,&local_100,9,auStack_e0);
      uStack_c8 = 0xbe20d97c;
      local_fc = 8.0;
      uVar6 = 9;
      goto LAB_004be2ae;
    case 6:
      uStack_88 = 0x40000;
      goto LAB_004be087;
    case 7:
      uStack_88 = 0x80000;
LAB_004be087:
      uStack_84 = 0;
      local_100 = 8.0;
LAB_004be09a:
      local_fc = 10.0;
      uStack_c8 = 0;
      uVar6 = 9;
      break;
    case 9:
      local_100 = 10.0;
      local_fc = 0.0;
      FUN_006cb2e0(pfVar5,&local_100,3,auStack_e0);
      local_100 = -10.0;
      local_fc = 0.0;
      FUN_006cb2e0(pfVar5,&local_100,3,auStack_e0);
      local_100 = 0.0;
      local_fc = 10.0;
      FUN_006cb2e0(pfVar5,&local_100,3,auStack_e0);
      local_100 = 0.0;
      local_fc = -10.0;
      uVar6 = 3;
      break;
    case 10:
      local_100 = 7.071068;
      local_fc = 7.071068;
      FUN_006cb2e0(pfVar5,&local_100,3,auStack_e0);
      local_100 = -7.071068;
      local_fc = 7.071068;
      FUN_006cb2e0(pfVar5,&local_100,3,auStack_e0);
      local_100 = 7.071068;
      local_fc = -7.071068;
      FUN_006cb2e0(pfVar5,&local_100,3,auStack_e0);
      local_100 = -7.071068;
      local_fc = -7.071068;
      uVar6 = 3;
      break;
    case 0xc:
      local_100 = 7.071068;
      local_fc = 7.071068;
      FUN_006cb2e0(pfVar5,&local_100,5,auStack_e0);
      local_100 = -7.071068;
      local_fc = 7.071068;
      FUN_006cb2e0(pfVar5,&local_100,5,auStack_e0);
      local_100 = 7.071068;
      local_fc = -7.071068;
      FUN_006cb2e0(pfVar5,&local_100,5,auStack_e0);
      local_100 = -7.071068;
      local_fc = -7.071068;
      uVar6 = 5;
      break;
    case 0xd:
      local_100 = 6.0;
      goto LAB_004be09a;
    case 0xe:
      local_100 = 8.0;
      local_fc = 0.0;
      uVar6 = 8;
      break;
    case 0x10:
      local_100 = 8.0;
      local_fc = 12.0;
      uStack_c8 = 0;
      uVar6 = 9;
      break;
    default:
      goto switchD_004bdfcd_caseD_14;
    }
    FUN_006cb2e0(pfVar5,&local_100,uVar6,auStack_e0);
switchD_004bdfcd_caseD_14:
    uVar6 = FUN_00407170(&DAT_00c7b640);
    iVar9 = FUN_006d7cf0(&DAT_00c7b640,uVar6);
    iVar8 = FUN_006eef60();
    *(float *)(iVar9 + 0xec) =
         (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
         DAT_00baab30;
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
LAB_004be326:
    cVar4 = FUN_0040b030("Sound");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
      AI_0043ef30();
      uStack_84 = uStack_84 | 8;
      uStack_38 = _DAT_00bac7b0;
      uStack_34 = _UNK_00bac7b4;
      uStack_30 = _UNK_00bac7b8;
      uStack_2c = _UNK_00bac7bc;
      uStack_cc = 0x40000000;
      auStack_28 = ZEXT816(0);
      uStack_18 = 0x3f800000;
      uStack_14 = 0x3e99999a;
      uStack_10 = 0;
      FUN_004071f0(&uStack_38);
      iVar9 = FUN_006be840();
      local_f8 = *(float *)(iVar9 + 0x33c);
      piStack_f0 = *(int **)(iVar9 + 0x340);
      fVar15 = *(float *)(param_1 + 0x33c) - local_f8;
      fVar12 = *(float *)(param_1 + 0x340) - (float)piStack_f0;
      fVar12 = fVar12 * fVar12 + fVar15 * fVar15;
      FUN_00435a50();
      local_100 = *(float *)(iVar9 + 0x360) * DAT_00baa120 * fVar12 + local_f8;
      local_fc = *(float *)(iVar9 + 0x364) * DAT_00baa120 * fVar12 + (float)piStack_f0;
      iVar9 = 0;
      do {
        iVar8 = FUN_006ccdd0(1,&local_100,0x41200000,auStack_e0);
        fVar12 = DAT_00baa454;
        iVar10 = iVar9 + 1;
        fVar15 = (float)iVar9;
        *(undefined4 *)(iVar8 + 0x420) = 0x40000000;
        fVar12 = fVar12 - fVar15 * DAT_00baa198;
        *(float *)(iVar8 + 0x364) = fVar12 * *(float *)(iVar8 + 0x364);
        *(float *)(iVar8 + 0x360) = fVar12 * *(float *)(iVar8 + 0x360);
        fVar13 = fVar15 * DAT_00baa784;
        fVar12 = *(float *)(iVar8 + 0x414) * DAT_00baa354;
        *(float *)(iVar8 + 0x418) =
             (*(float *)(iVar8 + 0x418) - DAT_00baa304) - fVar15 * DAT_00baa134;
        *(float *)(iVar8 + 0x414) = (fVar12 - DAT_00baa6fc) - fVar13;
        iVar9 = iVar10;
      } while (iVar10 < 3);
    }
    break;
  case 0xd:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
      fStack_e8 = *(float *)(param_1 + 0x33c) + DAT_00ba9fe4;
      fStack_e4 = *(float *)(param_1 + 0x340) + DAT_00baa924;
      uVar6 = FUN_006eef60();
      piStack_f0 = (int *)FUN_006fe410(0x19,0,&fStack_e8,&DAT_00c7b640,param_1,0,uVar6,0);
      piStack_f0[0x62] = 2;
      (**(code **)(*piStack_f0 + 0xc))();
      local_f4 = 0.0;
      do {
        local_f8 = (float)((double)(int)local_f4 + (double)(&DAT_00bacb00)[-((int)local_f4 >> 0x1f)]
                          ) * DAT_00baaa00;
        piStack_ec = (int *)(local_f8 * DAT_00baa088);
        uVar6 = FUN_006eef60();
        piVar7 = piStack_ec;
        FUN_0041d540();
        local_100 = (float)piVar7 * DAT_00baa81c + fStack_e8;
        piVar7 = piStack_ec;
        FUN_0041d520();
        local_fc = (float)piVar7 * DAT_00baa81c + fStack_e4;
        piVar7 = (int *)FUN_006fe410(0x333,1,&local_100,&DAT_00c7b640,param_1,0,uVar6,0);
        if (piVar7[0xef] != 0) {
          piStack_ec = piVar7 + 0xef;
          FUN_004cf210(&piStack_ec);
        }
        piVar7[0xef] = (int)piStack_f0;
        FUN_004cdcf0(piVar7 + 0xef);
        piVar7[0x5a] = piVar7[0x5a] & 0xfffffffb;
        piVar7[0x5b] = piVar7[0x5b];
        piVar7[0x2ec] = (int)local_f8;
        piVar7[0x62] = 2;
        (**(code **)(*piVar7 + 0xc))();
        local_f4 = (float)((int)local_f4 + 1);
      } while ((uint)local_f4 < 3);
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0x410) = 0;
      *(undefined4 *)(param_1 + 0xb64) = 3;
      FUN_0040a380(&DAT_00b1bc54,0);
    }
  }
  if (*(char *)(param_1 + 0x173) != '\0') {
    uVar11 = 0;
    do {
      iVar9 = FUN_006eef60();
      local_f8 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
      local_f8 = local_f8 + local_f8;
      fVar12 = local_f8;
      FUN_0041d540();
      local_100 = fVar12 * DAT_00baa81c + *(float *)(param_1 + 0x33c);
      fVar12 = local_f8;
      FUN_0041d520();
      local_fc = fVar12 * DAT_00baa81c + *(float *)(param_1 + 0x340);
      FUN_004bc8c0(uVar11,&local_100);
      uVar11 = uVar11 + 1;
    } while (uVar11 < 3);
  }
LAB_004be5bc:
  FUN_00aef12b();
  return;
}

