/* Local J460 decompiler output.
 * VA: 0x00522ef0
 * Entry: 00522ef0
 * Dispatcher: 0x006c2990
 * Types: 60
 * Identities: 60.0.0,60.1.0,60.2.0
 * Evidence: dispatcher=0x006c2990; end=0x005240a0; instructions=1020
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=60; identities=60.0.0,60.1.0,60.2.0;
   dispatcher=0x006c2990; end=0x005240a0; instructions=1020 */

void __fastcall AI_00522ef0(int param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  float *pfVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined4 uVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  undefined auVar14 [16];
  float fVar15;
  undefined auStack_68 [4];
  undefined4 *local_64;
  float local_60;
  float local_5c;
  undefined4 *local_58;
  float local_54;
  float local_50;
  undefined4 *local_4c;
  undefined4 *local_48;
  float local_44;
  undefined local_40 [8];
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  uint local_18;
  int local_14;
  uint local_c;
  
  iVar10 = DAT_00c71678;
  local_c = DAT_00bf93b4 ^ (uint)auStack_68;
  if (*(int *)(param_1 + 0x2c) != 2) {
    fVar12 = *(float *)(param_1 + 0x33c);
    iVar3 = (int)((fVar12 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    if ((((iVar3 < 0) || (iVar2 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc), iVar2 <= iVar3))
        || (iVar11 = (int)((*(float *)(param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 +
                          DAT_00baa2d0), iVar11 < 0)) ||
       (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) <= iVar11)) {
      local_5c = -NAN;
    }
    else {
      local_5c = (float)(iVar2 * iVar11 + iVar3);
    }
    if (*(int *)(param_1 + 0xb64) == 0) {
      *(float *)(param_1 + 0x334) = fVar12;
      *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined4 *)(param_1 + 0xbb0) = 0;
      if (*(int *)(param_1 + 0x2c) == 0) {
        cVar1 = FUN_0040a5d0("Eye Open",1);
        if (cVar1 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        cVar1 = FUN_0040a5d0("Rotate",1);
        if (((cVar1 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
           (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
          *(undefined *)(param_1 + 0x8c) = 0;
        }
      }
      iVar10 = DAT_00c71678;
      local_28 = *(undefined4 *)(param_1 + 0x33c);
      local_24 = *(undefined4 *)(param_1 + 0x340);
      *(undefined4 *)(param_1 + 0x354) = 0xfffff448;
      local_58 = *(undefined4 **)(iVar10 + 0x18300);
      local_38 = *(undefined4 *)(param_1 + 0x28);
      local_34 = *(undefined4 *)(param_1 + 0x2c);
      local_30 = *(undefined4 *)(param_1 + 0x34);
      local_2c = *(undefined4 *)(param_1 + 0x38);
      local_20 = *(undefined4 *)(param_1 + 0x360);
      local_1c = *(undefined4 *)(param_1 + 0x364);
      if ((*(uint *)(param_1 + 0x168) & 0x20000000) == 0) {
        uVar8 = 0;
      }
      else {
        uVar8 = 2;
      }
      if ((*(uint *)(param_1 + 0x16c) & 0x400000) == 0) {
        uVar9 = 0;
      }
      else {
        uVar9 = 4;
      }
      local_18 = uVar9 | uVar8 | (uint)((*(uint *)(param_1 + 0x168) & 0x100) != 0);
      local_14 = param_1;
      if (((uint)local_5c < 0x1c0) && ((int *)local_58[(int)local_5c + 9] != (int *)0x0)) {
        (**(code **)(*(int *)local_58[(int)local_5c + 9] + 0x14))(0,&local_38);
        FUN_00aef12b();
        return;
      }
      goto LAB_00524082;
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - fVar12;
    *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
    if (((uint)local_5c < 0x1c0) &&
       (*(int *)(*(int *)(iVar10 + 0x18300) + 0x76c + (int)local_5c * 4) < 0x3b7)) {
      *(undefined4 *)(*(int *)(iVar10 + 0x18300) + 0x76c + (int)local_5c * 4) = 900;
    }
    if (*(int *)(param_1 + 0xb64) == 4) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        pfVar4 = (float *)FUN_006bec40(local_40,0);
        local_58 = (undefined4 *)(*(float *)(param_1 + 0x33c) - *pfVar4);
        local_4c = (undefined4 *)(*(float *)(param_1 + 0x340) - pfVar4[1]);
        iVar10 = FUN_006be840();
        local_50 = (float)local_4c - (*(float *)(iVar10 + 0x364) + *(float *)(iVar10 + 0x364));
        if (NAN(local_50) != (local_50 == 0.0)) {
          local_50 = DAT_00baa020;
        }
        iVar3 = *(int *)(param_1 + 0x2c) + 1;
        fVar12 = (float)local_4c * (float)local_4c + (float)local_58 * (float)local_58;
        local_5c = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00baa6fc
                   + DAT_00baa6fc;
        local_58 = (undefined4 *)
                   ((float)local_58 - (*(float *)(iVar10 + 0x360) + *(float *)(iVar10 + 0x360)));
        FUN_00435a50();
        local_5c = local_5c - fVar12 / DAT_00baab1c;
        fVar12 = local_50;
        FUN_00499d60();
        fVar13 = local_5c;
        for (fVar12 = (fVar12 * DAT_00baa948 - *(float *)(param_1 + 0xbb0)) + DAT_00baaa78;
            DAT_00baaa78 < fVar12; fVar12 = fVar12 - DAT_00baab30) {
        }
        for (; fVar12 < DAT_00baae7c; fVar12 = fVar12 + DAT_00baab30) {
        }
        if (fVar12 <= local_5c) {
          auVar14._0_4_ = (float)((uint)local_5c ^ DAT_00bacb70);
          auVar14._4_4_ = _UNK_00bacb74;
          auVar14._8_4_ = _UNK_00bacb78;
          auVar14._12_4_ = _UNK_00bacb7c;
          if (auVar14._0_4_ <= fVar12) {
            auVar14._0_4_ = fVar12;
          }
          local_5c = auVar14._0_4_;
        }
        if (((((float)((uint)local_5c & DAT_00bacb40) < fVar13 * DAT_00baa2d0) &&
             (uVar8 = FUN_006eef60(), uVar8 % 10 == 0)) &&
            (cVar1 = FUN_00417430(0x200,0), cVar1 == '\0')) &&
           ((cVar1 = FUN_00417430(0x1000800,0), cVar1 == '\0' &&
            (cVar1 = FUN_00944a40((float *)(param_1 + 0x33c)), cVar1 != '\0')))) {
          if (*(int *)(param_1 + 0x2c) == 0) {
            FUN_0040a380("Shoot",0);
          }
          else {
            FUN_0040a940("ShootOverlay",0);
          }
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0x410) = 0;
          if (*(int *)(param_1 + 0x2c) == 0) {
            iVar10 = FUN_0040b220(1);
            local_64 = (undefined4 *)(*(float *)(iVar10 + 0x40) * DAT_00baa6bc);
            local_60 = *(float *)(iVar10 + 0x44) * DAT_00baa6bc;
          }
          else {
            pfVar4 = (float *)FUN_0040b1d0("PupilPos");
            local_64 = (undefined4 *)(*pfVar4 + 0.0);
            local_60 = pfVar4[1] - DAT_00baa7e8;
          }
          uVar7 = FUN_004238f0(0x3f4ccccd);
          local_58 = (undefined4 *)(*(float *)(param_1 + 0xbb0) * DAT_00baa088);
          puVar5 = local_58;
          FUN_0041d540();
          local_4c = puVar5;
          local_48 = local_58;
          FUN_0041d520();
          FUN_0060b890(&local_4c,0xf,uVar7,0x40800000);
        }
        *(float *)(param_1 + 0xbb0) = local_5c + *(float *)(param_1 + 0xbb0);
      }
      else {
        FUN_006d85a0(&local_64);
        if (((NAN((float)local_64) || NAN((float)DAT_00c7b640)) ==
             ((float)local_64 == (float)DAT_00c7b640)) ||
           ((NAN(local_60) || NAN((float)DAT_00c7b644)) == (local_60 == (float)DAT_00c7b644))) {
          iVar10 = *(int *)(param_1 + 0x2c) + 1;
          local_58 = (undefined4 *)
                     ((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                      DAT_00baa6fc + DAT_00baa6fc);
          FUN_00499d60();
          uVar7 = *(undefined4 *)(param_1 + 0xbb0);
          FUN_00682a50();
          *(undefined4 *)(param_1 + 0xbb0) = uVar7;
        }
        cVar1 = FUN_006d8260(9);
        if ((cVar1 != '\0') && (cVar1 = FUN_00417430(0x1000a00,0), cVar1 == '\0')) {
          if (*(int *)(param_1 + 0x2c) == 0) {
            FUN_0040a380("Shoot",0);
          }
          else {
            FUN_0040a940("ShootOverlay",0);
          }
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
      }
      if (*(int *)(param_1 + 0x2c) == 0) {
        local_50 = *(float *)(param_1 + 0xbb0) * DAT_00baa088;
        iVar10 = FUN_0040b220(1);
        fVar12 = local_50;
        FUN_0041d540();
        *(float *)(iVar10 + 0x40) = fVar12 * DAT_00baa7a4;
        fVar12 = local_50;
        FUN_0041d520();
        *(float *)(iVar10 + 0x44) = fVar12 * DAT_00baa7a4;
      }
      else {
        FUN_00682740();
        if (*(int *)(param_1 + 0x7c) != 0) {
          FUN_00408e00();
        }
      }
    }
    else if (*(int *)(param_1 + 0xb64) == 8) {
      if (*(int *)(param_1 + 0x2c) == 0) {
        cVar1 = FUN_0040b030("Shoot");
      }
      else {
        cVar1 = FUN_0040add0("Shoot");
      }
      if (cVar1 != '\0') {
        local_64 = *(undefined4 **)(param_1 + 0x33c);
        local_60 = *(float *)(param_1 + 0x340);
        if (*(int *)(param_1 + 0x2c) == 0) {
          iVar10 = FUN_0040b220(1);
          fVar12 = *(float *)(iVar10 + 0x44) * DAT_00baa6bc;
          local_64 = (undefined4 *)(*(float *)(iVar10 + 0x40) * DAT_00baa6bc + (float)local_64);
          local_4c = DAT_00c7b640;
          local_48 = DAT_00c7b644;
          puVar5 = *(undefined4 **)(param_1 + 0xbb0);
        }
        else {
          local_58 = *(undefined4 **)(param_1 + 0xbb0);
          local_4c = (undefined4 *)0x0;
          local_48 = (undefined4 *)0xc1a00000;
          pfVar4 = (float *)FUN_0040b1d0("PupilPos");
          fVar12 = pfVar4[1] / DAT_00baa324 - DAT_00baadec;
          local_64 = (undefined4 *)((*pfVar4 / DAT_00baa324 - 0.0) + (float)local_64);
          puVar5 = local_58;
        }
        local_60 = fVar12 + local_60;
        uVar7 = 8;
        if (*(int *)(param_1 + 0x2c) == 0) {
          uVar7 = 3;
        }
        piVar6 = (int *)FUN_0096f310(2 - (uint)(*(int *)(param_1 + 0x2c) != 0),&local_64,puVar5,
                                     uVar7,&local_4c,param_1,0);
        piVar6[0xd6] = 0x453b8000;
        (**(code **)(*piVar6 + 0xc))();
      }
      if (*(int *)(param_1 + 0x2c) == 0) {
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 4;
          goto LAB_00524000;
        }
      }
      else if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        FUN_00408830(0);
      }
    }
    else if (((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) &&
            (*(undefined4 *)(param_1 + 0xb64) = 4, *(int *)(param_1 + 0x2c) == 0)) {
LAB_00524000:
      FUN_0040a380("Eye Opened",0);
    }
    if ((((*(int *)(param_1 + 0x2c) == 1) && (*(char *)(param_1 + 0xac) != '\0')) &&
        (local_58 = (undefined4 *)FUN_0040ace0("Deform"), local_58 != (undefined4 *)0x0)) &&
       (*(char *)(local_58 + 3) != '\0')) {
      iVar10 = FUN_0040b220(0);
      puVar5 = local_58;
      *(undefined4 *)(iVar10 + 0x40) = *local_58;
      *(undefined4 *)(iVar10 + 0x44) = local_58[1];
      iVar10 = FUN_0040b220(0);
      *(undefined4 *)(iVar10 + 0x34) = puVar5[4];
      *(undefined4 *)(iVar10 + 0x38) = puVar5[5];
      puVar5 = puVar5 + 6;
      FUN_0040b220(0);
      FUN_004071f0(puVar5);
    }
    goto LAB_00524082;
  }
  iVar10 = (int)((*(float *)(param_1 + 0x33c) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  if (((iVar10 < 0) || (iVar3 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc), iVar3 <= iVar10))
     || ((iVar2 = (int)((*(float *)(param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0),
         iVar2 < 0 || (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) <= iVar2)))) {
    fVar12 = -NAN;
  }
  else {
    fVar12 = (float)(iVar3 * iVar2 + iVar10);
  }
  local_5c = fVar12;
  if (*(int *)(param_1 + 0xb64) == 0) {
LAB_00523589:
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(undefined4 *)(param_1 + 0xb64) = 3;
    FUN_0040a380(&DAT_00b1bc54,0);
    local_28 = *(undefined4 *)(param_1 + 0x33c);
    local_24 = *(undefined4 *)(param_1 + 0x340);
    local_4c = *(undefined4 **)(DAT_00c71678 + 0x18300);
    local_38 = *(undefined4 *)(param_1 + 0x28);
    local_34 = *(undefined4 *)(param_1 + 0x2c);
    local_30 = *(undefined4 *)(param_1 + 0x34);
    local_2c = *(undefined4 *)(param_1 + 0x38);
    local_20 = *(undefined4 *)(param_1 + 0x360);
    local_1c = *(undefined4 *)(param_1 + 0x364);
    if ((*(uint *)(param_1 + 0x168) & 0x20000000) == 0) {
      uVar8 = 0;
    }
    else {
      uVar8 = 2;
    }
    local_58 = (undefined4 *)(*(uint *)(param_1 + 0x16c) & 0x400000);
    if (local_58 == (undefined4 *)0x0) {
      uVar9 = 0;
    }
    else {
      uVar9 = 4;
    }
    local_18 = uVar9 | uVar8 | (uint)((*(uint *)(param_1 + 0x168) & 0x100) != 0);
    local_14 = param_1;
    if (((uint)fVar12 < 0x1c0) && ((int *)local_4c[(int)fVar12 + 9] != (int *)0x0)) {
      (**(code **)(*(int *)local_4c[(int)fVar12 + 9] + 0x14))(0,&local_38);
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar8 = FUN_006eef60();
      iVar10 = uVar8 % 0x3c + 0xf;
    }
    else {
      iVar10 = 0x1e;
    }
    *(int *)(param_1 + 0xba0) = iVar10;
    iVar10 = FUN_0040b220(1);
    *(uint *)(iVar10 + 0x8c) = *(uint *)(iVar10 + 0x8c) | 1;
    iVar10 = FUN_0040b220(2);
    *(uint *)(iVar10 + 0x8c) = *(uint *)(iVar10 + 0x8c) | 1;
    FUN_00aef12b();
    return;
  }
  FUN_006d8b20(0);
  iVar10 = *(int *)(param_1 + 0xb64);
  if (iVar10 == 0) goto LAB_00523589;
  if (iVar10 == 3) {
    *(int *)(param_1 + 0xba0) =
         *(int *)(param_1 + 0xba0) +
         ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
    if ((*(int *)(param_1 + 0xba0) < 1) && (cVar1 = FUN_00417430(0x1000a00,0), cVar1 == '\0')) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
LAB_005234b7:
        FUN_0040a380("Attack",0);
        *(undefined4 *)(param_1 + 0xb64) = 8;
        *(undefined4 *)(param_1 + 0xbc0) = 0;
      }
      else {
        cVar1 = FUN_006d8260(9);
        if (cVar1 != '\0') {
          FUN_006d8d30(local_40);
          cVar1 = FUN_00a10630(&DAT_00c7b640);
          if (cVar1 != '\0') goto LAB_005234b7;
        }
      }
    }
  }
  else if (iVar10 == 8) {
    if ((*(int *)(param_1 + 0x7c) != 0) && (cVar1 = FUN_0040add0("Shoot"), cVar1 != '\0')) {
      FUN_006d6ba0(0x110,0x3f000000,2,0,0x3fc00000);
      iVar3 = FUN_006be840();
      iVar10 = *(int *)(param_1 + 0xbc0);
      local_64 = *(undefined4 **)(iVar3 + 0x33c);
      local_60 = *(float *)(iVar3 + 0x340);
      if (iVar10 == 0) {
        local_64 = (undefined4 *)(*(float *)(iVar3 + 0x360) * DAT_00baa784 + (float)local_64);
        local_60 = *(float *)(iVar3 + 0x364) * DAT_00baa784 + local_60;
      }
      else if (iVar10 == 1) {
        local_44 = *(float *)(iVar3 + 0x360);
        local_58 = *(undefined4 **)(iVar3 + 0x364);
        pfVar4 = (float *)FUN_0067f070(local_40);
        local_50 = *pfVar4;
        local_4c = (undefined4 *)pfVar4[1];
        iVar10 = FUN_006eef60();
        fVar13 = (float)local_58 * DAT_00baa854;
        fVar12 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
        ;
        local_64 = (undefined4 *)
                   (local_50 * DAT_00baa9d0 * fVar12 + local_44 * DAT_00baa854 + (float)local_64);
        fVar15 = (float)local_4c * DAT_00baa9d0;
LAB_005232b5:
        local_60 = fVar15 * fVar12 + fVar13 + local_60;
      }
      else if (iVar10 == 2) {
        local_4c = *(undefined4 **)(iVar3 + 0x360);
        local_50 = *(float *)(iVar3 + 0x364);
        puVar5 = (undefined4 *)FUN_0067f070(local_40);
        local_58 = (undefined4 *)*puVar5;
        local_44 = (float)puVar5[1];
        iVar10 = FUN_006eef60();
        fVar12 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
        ;
        local_64 = (undefined4 *)
                   ((float)local_58 * DAT_00baa97c * fVar12 + (float)local_4c * DAT_00baa87c +
                   (float)local_64);
        local_60 = local_44 * DAT_00baa97c * fVar12 + local_50 * DAT_00baa87c + local_60;
      }
      else if (iVar10 == 3) {
        local_4c = *(undefined4 **)(iVar3 + 0x360);
        local_50 = *(float *)(iVar3 + 0x364);
        puVar5 = (undefined4 *)FUN_0067f070(local_40);
        local_58 = (undefined4 *)*puVar5;
        local_44 = (float)puVar5[1];
        iVar10 = FUN_006eef60();
        fVar13 = local_50 * DAT_00baa8d0;
        fVar12 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
        ;
        local_64 = (undefined4 *)
                   ((float)local_58 * DAT_00baa924 * fVar12 + (float)local_4c * DAT_00baa8d0 +
                   (float)local_64);
        fVar15 = local_44 * DAT_00baa924;
        goto LAB_005232b5;
      }
      FUN_00812f50(&local_58,&local_64,0x41a00000,0x41a00000,0x41a00000);
      local_64 = local_58;
      local_60 = local_54;
      if (*(int *)(param_1 + 0xf1c) != -1) {
        piVar6 = (int *)FUN_006d8d30(local_40);
        local_64 = (undefined4 *)*piVar6;
        local_60 = (float)piVar6[1];
      }
      uVar7 = FUN_00812c90(&local_64);
      FUN_004565e0(uVar7,900);
      uVar7 = FUN_006eef60();
      piVar6 = (int *)FUN_006fe410(1000,0x13,&local_64,&DAT_00c7b640,param_1,2,uVar7,0);
      local_58 = (undefined4 *)(DAT_00c3793c ^ DAT_00bacb70);
      local_54 = (float)(DAT_00c37940 ^ DAT_00bacb70);
      FUN_006ac2a0(0x41200000,local_58,local_54,0xffffffff);
      (**(code **)(*piVar6 + 0x40))(0x40e00000);
      (**(code **)(*piVar6 + 0xc))();
      *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      FUN_0040a380(&DAT_00b1bc54,0);
      *(undefined4 *)(param_1 + 0xb64) = 3;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar8 = FUN_006eef60();
        *(uint *)(param_1 + 0xba0) = uVar8 % 0x3c + 0x3c;
      }
      else {
        *(undefined4 *)(param_1 + 0xba0) = 0x3c;
      }
    }
  }
  if (DAT_00ba9fe4 < *(float *)(param_1 + 0x14)) {
    *(int *)(param_1 + 0xba0) =
         *(int *)(param_1 + 0xba0) + (int)(*(float *)(param_1 + 0x14) * DAT_00baadc0);
  }
  iVar10 = DAT_00c71678;
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  if (((uint)local_5c < 0x1c0) &&
     (*(int *)(*(int *)(iVar10 + 0x18300) + 0x76c + (int)local_5c * 4) < 0x3b7)) {
    *(undefined4 *)(*(int *)(iVar10 + 0x18300) + 0x76c + (int)local_5c * 4) = 900;
    FUN_00aef12b();
    return;
  }
LAB_00524082:
  FUN_00aef12b();
  return;
}

