/* Local J460 decompiler output.
 * VA: 0x004e5170
 * Entry: 004e5170
 * Dispatcher: 0x006c2990
 * Types: 834
 * Identities: 834.0.0,834.1.0,834.2.0
 * Evidence: dispatcher=0x006c2990; end=0x004e6570; instructions=1245
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=834; identities=834.0.0,834.1.0,834.2.0;
   dispatcher=0x006c2990; end=0x004e6570; instructions=1245 */

void __fastcall AI_004e5170(int param_1)

{
  byte bVar1;
  code *pcVar2;
  uint uVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  undefined4 *_Str1;
  char *pcVar7;
  byte **ppbVar8;
  int iVar9;
  undefined *puVar10;
  undefined4 uVar11;
  float fVar12;
  float **ppfVar13;
  float *pfVar14;
  bool bVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  undefined8 uVar19;
  undefined local_e8 [40];
  undefined local_c0 [40];
  float local_98;
  float local_94;
  float local_78;
  char local_70 [4];
  int local_6c;
  uint local_64;
  int local_60;
  char local_5c [4];
  int local_58;
  float local_54;
  float *local_50;
  float local_4c;
  float local_48;
  float **local_44;
  float local_40;
  float **local_3c;
  float *local_38;
  float *local_34;
  undefined4 local_30;
  char local_29;
  float local_28;
  float local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  fVar12 = DAT_00baa454;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3c95;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  fVar17 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  local_44 = *(float ***)(DAT_00c71678 + 0x18300);
  iVar9 = *(int *)(param_1 + 0xb64);
  *(float *)(param_1 + 0x36c) = fVar17;
  local_60 = param_1;
  if (iVar9 != 0) {
    if (iVar9 != 4) {
      puStack_20 = &stack0xfffffffc;
      if (iVar9 != 8) goto LAB_004e5dd8;
      fVar12 = DAT_00baa304;
      if (*(int *)(param_1 + 0x2c) == 0) {
        fVar12 = DAT_00baa3e0;
      }
      *(float *)(param_1 + 0x36c) = fVar12 * fVar17;
      puStack_20 = &stack0xfffffffc;
      if (*(int *)(param_1 + 0x7c) == 0) {
LAB_004e526e:
        *(undefined4 *)(param_1 + 0xb64) = 4;
      }
      else {
        puStack_20 = &stack0xfffffffc;
        cVar4 = FUN_0040add0("Sound");
        if (cVar4 != '\0') {
          FUN_006d6ba0(0x1ee,0x3f800000,2,0,0x3f800000);
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
        goto LAB_004e526e;
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      goto LAB_004e5dd8;
    }
    fVar17 = *(float *)(param_1 + 0x360);
    pfVar14 = (float *)(param_1 + 0x360);
    local_38 = (float *)((uint)fVar17 & DAT_00bacb40);
    iVar9 = *(int *)(param_1 + 0xbc0);
    if ((float)local_38 <= (float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40)) {
      iVar6 = (uint)(0.0 <= *(float *)(param_1 + 0x364)) * 2 + 1;
    }
    else {
      iVar6 = 2;
      if (fVar17 < 0.0) {
        iVar6 = 0;
      }
    }
    *(int *)(param_1 + 0xbc0) = iVar6;
    if (iVar9 != iVar6) {
      *(undefined4 *)(param_1 + 0xba4) = 10;
    }
    fVar16 = *(float *)(*(int *)(param_1 + 0x330) + 0x44);
    if (fVar16 < *(float *)(param_1 + 0x37c)) {
      *(float *)(param_1 + 0x37c) = fVar16;
    }
    local_28 = DAT_00baa120;
    if ((*(char *)(param_1 + 0xc63) != '\0') &&
       (*(float *)(param_1 + 0xbac) <= fVar12 && fVar12 != *(float *)(param_1 + 0xbac))) {
      local_28 = DAT_00baa0d0;
    }
    local_34 = pfVar14;
    if ((*(int *)(param_1 + 0x2c) == 2) &&
       (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) ==
         (*(float *)(param_1 + 0x334) == DAT_00c7b640) ||
        ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
         (*(float *)(param_1 + 0x338) == DAT_00c7b644))))) {
      _Str1 = *(undefined4 **)(param_1 + 0x7c);
      if (_Str1 == (undefined4 *)0x0) {
        _Str1 = (undefined4 *)&DAT_00b1a4ec;
      }
      else if (0xf < (uint)_Str1[5]) {
        _Str1 = (undefined4 *)*_Str1;
      }
      local_38 = (float *)strncmp_exref;
      puStack_20 = &stack0xfffffffc;
      iVar9 = strncmp((char *)_Str1,"WalkAttack",10);
      if ((float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40) <
          (float)((uint)*pfVar14 & DAT_00bacb40)) {
        pcVar7 = "WalkAttackHori";
        bVar15 = *pfVar14 < 0.0;
      }
      else {
        pcVar7 = "WalkAttackUp";
        if (0.0 <= *(float *)(param_1 + 0x364)) {
          pcVar7 = "WalkAttackDown";
        }
        bVar15 = false;
      }
      *(bool *)(param_1 + 0x148) = bVar15;
      if (iVar9 == 0) {
        FUN_0040a5d0(pcVar7,0);
      }
      else {
        FUN_0040a380(pcVar7,0);
      }
      if (*(int *)(param_1 + 0x9c) == 0) {
        local_30 = (float *)CONCAT31(local_30._1_3_,1);
LAB_004e5449:
        local_29 = '\0';
      }
      else {
        if (*(char *)(param_1 + 0xac) == '\0') {
          local_30 = (float *)CONCAT31(local_30._1_3_,1);
          goto LAB_004e5449;
        }
        local_30 = (float *)((uint)local_30._1_3_ << 8);
        uVar11 = FUN_00407380("HeadLaugh",9);
        iVar9 = (*(code *)local_38)(uVar11);
        local_29 = '\x01';
        if (iVar9 != 0) goto LAB_004e5449;
      }
      fVar12 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
               *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
      FUN_00435a50();
      if (fVar12 < local_28) {
        pcVar7 = "HeadLaughDown";
      }
      else if ((float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40) <
               (float)((uint)*pfVar14 & DAT_00bacb40)) {
        pcVar7 = "HeadLaughRight";
      }
      else {
        pcVar7 = "HeadLaughUp";
        if (0.0 <= *(float *)(param_1 + 0x364)) {
          pcVar7 = "HeadLaughDown";
        }
      }
      if (local_29 == '\0') {
        FUN_0040a940(pcVar7,local_30);
        *(undefined4 *)(param_1 + 0x37c) = 0x42c80000;
      }
      else {
        FUN_0040aaf0(pcVar7,0);
        *(undefined4 *)(param_1 + 0x37c) = 0x42c80000;
      }
    }
    else {
      fVar12 = *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364) + fVar17 * fVar17;
      puStack_20 = &stack0xfffffffc;
      FUN_00435a50(uVar5);
      if (fVar12 < local_28) {
        cVar4 = FUN_0040a5d0("WalkDown",1);
        if (((cVar4 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
           (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
          *(undefined *)(param_1 + 0x8c) = 0;
        }
LAB_004e559a:
        bVar15 = false;
      }
      else {
        if ((float)local_38 <= (float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40)) {
          pcVar7 = (char *)&DAT_00b1e020;
          if (0.0 <= *(float *)(param_1 + 0x364)) {
            pcVar7 = "WalkDown";
          }
          FUN_0040a380(pcVar7,0);
          goto LAB_004e559a;
        }
        FUN_0040a380("WalkHori",0);
        bVar15 = *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
      }
      *(bool *)(param_1 + 0x148) = bVar15;
      if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        if (*(int *)(param_1 + 0xbc0) == 1) {
          ppbVar8 = *(byte ***)(param_1 + 0x9c);
          if (ppbVar8 != (byte **)0x0) {
            if (&DAT_0000000f < ppbVar8[5]) {
              ppbVar8 = (byte **)*ppbVar8;
            }
            pcVar7 = "HeadUp";
            do {
              bVar1 = *(byte *)ppbVar8;
              bVar15 = bVar1 < (byte)*pcVar7;
              if (bVar1 != *pcVar7) {
LAB_004e5600:
                uVar5 = -(uint)bVar15 | 1;
                goto LAB_004e5605;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar8 + 1);
              bVar15 = bVar1 < ((byte *)pcVar7)[1];
              if (bVar1 != ((byte *)pcVar7)[1]) goto LAB_004e5600;
              ppbVar8 = (byte **)((int)ppbVar8 + 2);
              pcVar7 = (char *)((byte *)pcVar7 + 2);
            } while (bVar1 != 0);
            uVar5 = 0;
LAB_004e5605:
            if ((uVar5 == 0) &&
               ((*(char *)(*(int *)(param_1 + 0x9c) + 0x34) == '\0' ||
                (*(char *)(param_1 + 0xac) != '\0')))) goto LAB_004e5660;
          }
          cVar4 = FUN_0040aaf0("HeadUp",1);
          if (cVar4 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0xac) = 1;
          }
        }
        else {
          if (*(int *)(param_1 + 0xbc0) == 3) {
            pcVar7 = "HeadDown";
          }
          else {
            pcVar7 = "HeadRight";
          }
          FUN_0040a940(pcVar7,0);
        }
      }
    }
LAB_004e5660:
    local_38 = *(float **)(param_1 + 0x334);
    if (((NAN((float)local_38) || NAN(DAT_00c7b640)) == ((float)local_38 == DAT_00c7b640)) ||
       ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
        (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
      local_30 = *(float **)(param_1 + 0x360);
      fVar12 = (float)local_30 * (float)local_30 +
               *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
      FUN_00435a50();
      if (DAT_00baa2d0 <= fVar12) {
        *(undefined4 *)(param_1 + 0xba0) = 0;
      }
      else {
        *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) + 1;
      }
      if (*(int *)(param_1 + 0x2c) == 2) {
        FUN_006bec40(&local_54,0);
        FUN_007e33c0(&local_54,0x3ff33333,0,1);
        uVar19 = FUN_0067f170();
        pfVar14 = (float *)((ulonglong)uVar19 >> 0x20);
        fVar12 = pfVar14[1];
        fVar17 = *pfVar14;
        fVar12 = fVar17 * fVar17 + fVar12 * fVar12;
        FUN_00435a50();
        fVar17 = fVar12 * ((float *)uVar19)[1];
        fVar12 = *(float *)uVar19 * fVar12;
      }
      else {
        fVar12 = ((float)local_38 * DAT_00baa598) / *(float *)(param_1 + 0x36c) + (float)local_30;
        fVar17 = (*(float *)(param_1 + 0x338) * DAT_00baa598) / *(float *)(param_1 + 0x36c) +
                 *(float *)(param_1 + 0x364);
      }
      *(float *)(param_1 + 0x364) = fVar17;
      iVar9 = 0x14;
      *(float *)(param_1 + 0x360) = fVar12;
      if (*(int *)(param_1 + 0x2c) == 2) {
        iVar9 = 0x3c;
      }
      if (((iVar9 < *(int *)(param_1 + 0xba0)) || (*(char *)(param_1 + 400) != '\0')) ||
         (cVar4 = FUN_00417430(0x1000a00,0), cVar4 != '\0')) {
        *(float *)(param_1 + 0x418) = DAT_00c7b640;
        *(float *)(param_1 + 0x41c) = DAT_00c7b644;
        *(float *)(param_1 + 0x420) = DAT_00c7b640;
        *(float *)(param_1 + 0x424) = DAT_00c7b644;
        *(float *)(param_1 + 0x334) = DAT_00c7b640;
        *(float *)(param_1 + 0x338) = DAT_00c7b644;
      }
      *(undefined4 *)(param_1 + 0x37c) = 0x42a00000;
    }
    else {
      FUN_007e6ff0();
      FUN_007e5340(0x3fa00000,0);
      iVar9 = FUN_006be840();
      local_4c = *(float *)(iVar9 + 0x33c);
      local_48 = *(float *)(iVar9 + 0x340);
      local_28 = local_4c;
      local_24 = local_48;
      FUN_0067f1d0();
      local_24 = local_24 - *(float *)(param_1 + 0x340);
      local_28 = local_28 - *(float *)(param_1 + 0x33c);
      fVar16 = local_24 * local_24 + local_28 * local_28;
      FUN_00435a50();
      fVar12 = local_28;
      fVar17 = local_24;
      if (DAT_00ba9fe4 < fVar16) {
        fVar17 = local_24 * (DAT_00baa454 / fVar16);
        fVar12 = local_28 * (DAT_00baa454 / fVar16);
      }
      if ((DAT_00baa3e0 < local_40 * fVar12 + (float)local_3c * fVar17) &&
         (cVar4 = FUN_007f0df0((float *)(param_1 + 0x33c),&local_4c,0,0,0,0,0), cVar4 != '\0')) {
        *(float *)(param_1 + 0x334) = local_40;
        *(float ***)(param_1 + 0x338) = local_3c;
        *(undefined4 *)(param_1 + 0xba0) = 0;
        if (*(int *)(param_1 + 0xbc0) == 1) {
          pcVar7 = "HeadLaughUp";
        }
        else if (*(int *)(param_1 + 0xbc0) == 3) {
          pcVar7 = "HeadLaughDown";
        }
        else {
          pcVar7 = "HeadLaughRight";
        }
        cVar4 = FUN_0040aaf0(pcVar7,1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0xac) = 1;
        }
      }
    }
    if (*(int *)(param_1 + 0x2c) == 2) {
      if ((((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) ==
            (*(float *)(param_1 + 0x334) == DAT_00c7b640)) ||
          ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
           (*(float *)(param_1 + 0x338) == DAT_00c7b644))) &&
         ((*(int *)(param_1 + 0x7c) != 0 && (cVar4 = FUN_0040add0("Sound"), cVar4 != '\0')))) {
        FUN_006d6ba0(0x1ee,0x3f800000,2,0,0x3f800000);
      }
    }
    else if (*(int *)(param_1 + 0xba4) < 1) {
      FUN_0067f1d0();
      local_24 = DAT_00baa304;
      if (*(int *)(param_1 + 0x2c) == 1) {
        local_24 = DAT_00baa3f4;
      }
      FUN_0041a790(local_5c,param_1 + 0x33c,0xffffffff);
      local_14 = 0;
      local_38 = (float *)0x0;
      if (local_50 != (float *)0x0) {
        do {
          local_30 = *(float **)(local_58 + (int)local_38 * 4);
          cVar4 = FUN_004e50d0();
          if (cVar4 != '\0') {
            pfVar14 = (float *)(local_30[0xcf] - *(float *)(param_1 + 0x33c));
            local_28 = local_30[0xd0] - *(float *)(param_1 + 0x340);
            fVar17 = (float)pfVar14 * (float)pfVar14 + local_28 * local_28;
            local_30 = pfVar14;
            FUN_00435a50();
            pfVar14 = local_30;
            fVar12 = local_28;
            if (DAT_00ba9fe4 < fVar17) {
              pfVar14 = (float *)((float)local_30 * (DAT_00baa454 / fVar17));
              fVar12 = local_28 * (DAT_00baa454 / fVar17);
            }
            if (local_24 < (float)local_3c * fVar12 + local_40 * (float)pfVar14) {
              *(undefined4 *)(param_1 + 0xf10) = *(undefined4 *)(param_1 + 0xf0c);
              *(undefined4 *)(param_1 + 0xb64) = 8;
              *(undefined *)(param_1 + 0x148) = 0;
              if (*(int *)(param_1 + 0xbc0) == 1) {
                FUN_0040a380("AttackUp",0);
              }
              else if (*(int *)(param_1 + 0xbc0) == 3) {
                FUN_0040a380("AttackDown",0);
              }
              else {
                FUN_0040a380("AttackHori",0);
                *(bool *)(param_1 + 0x148) = *(int *)(param_1 + 0xbc0) == 0;
              }
              if (*(int *)(param_1 + 0xbc0) == 1) {
                pcVar7 = "HeadLaughUp";
              }
              else if (*(int *)(param_1 + 0xbc0) == 3) {
                pcVar7 = "HeadLaughDown";
              }
              else {
                pcVar7 = "HeadLaughRight";
              }
              cVar4 = FUN_0040aaf0(pcVar7,1);
              if (cVar4 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(param_1 + 0xac) = 1;
              }
              local_40 = local_40 * DAT_00baa784;
              *(undefined4 *)(param_1 + 0x410) = 0;
              fVar17 = (float)local_3c * DAT_00baa784;
              *(float *)(param_1 + 0x334) = DAT_00c7b640;
              *(float *)(param_1 + 0x338) = DAT_00c7b644;
              *(undefined4 *)(param_1 + 0xba4) = 10;
              fVar12 = *(float *)(param_1 + 0x36c);
              if ((NAN(fVar12) || NAN(DAT_00ba9fe4)) == (fVar12 == DAT_00ba9fe4)) {
                *local_34 = local_40 / fVar12 + *local_34;
                local_34[1] = fVar17 / fVar12 + local_34[1];
              }
              break;
            }
          }
          local_38 = (float *)((int)local_38 + 1);
        } while (local_38 < local_50);
      }
      local_14 = 0xffffffff;
      if (local_5c[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
      }
    }
    else {
      *(int *)(param_1 + 0xba4) = *(int *)(param_1 + 0xba4) + -1;
    }
    goto LAB_004e5dd8;
  }
  *(undefined4 *)(param_1 + 0xb64) = 4;
  *(undefined4 *)(param_1 + 0x410) = 0;
  *(undefined4 *)(param_1 + 0xbc0) = 0;
  *(undefined4 *)(param_1 + 0xba0) = 0;
  *(undefined4 *)(param_1 + 0xba4) = 0;
  *(float *)(param_1 + 0xbb0) = DAT_00c7b640;
  *(float *)(param_1 + 0xbb4) = DAT_00c7b644;
  *(float *)(param_1 + 0x334) = DAT_00c7b640;
  *(float *)(param_1 + 0x338) = DAT_00c7b644;
  ppbVar8 = *(byte ***)(param_1 + 0x9c);
  if (ppbVar8 == (byte **)0x0) {
LAB_004e5d88:
    cVar4 = FUN_0040aaf0("HeadDown",1);
    puVar10 = puStack_20;
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0xac) = 1;
      puVar10 = puStack_20;
    }
  }
  else {
    if (&DAT_0000000f < ppbVar8[5]) {
      ppbVar8 = (byte **)*ppbVar8;
    }
    pcVar7 = "HeadDown";
    do {
      bVar1 = *(byte *)ppbVar8;
      bVar15 = bVar1 < (byte)*pcVar7;
      if (bVar1 != *pcVar7) {
LAB_004e5d70:
        uVar5 = -(uint)bVar15 | 1;
        goto LAB_004e5d75;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar8 + 1);
      bVar15 = bVar1 < ((byte *)pcVar7)[1];
      if (bVar1 != ((byte *)pcVar7)[1]) goto LAB_004e5d70;
      ppbVar8 = (byte **)((int)ppbVar8 + 2);
      pcVar7 = (char *)((byte *)pcVar7 + 2);
    } while (bVar1 != 0);
    uVar5 = 0;
LAB_004e5d75:
    if ((uVar5 != 0) ||
       ((puVar10 = &stack0xfffffffc, *(char *)(*(int *)(param_1 + 0x9c) + 0x34) != '\0' &&
        (puVar10 = &stack0xfffffffc, *(char *)(param_1 + 0xac) == '\0')))) goto LAB_004e5d88;
  }
  puStack_20 = puVar10;
  cVar4 = FUN_0040a5d0("WalkDown",1);
  if (((cVar4 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
     (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
    *(undefined *)(param_1 + 0x8c) = 0;
  }
LAB_004e5dd8:
  if ((*(int *)(param_1 + 0x2c) == 2) && (uVar5 = FUN_006eef60(), (uVar5 & 7) == 0)) {
    iVar9 = FUN_006eef60();
    FUN_006b64d0((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa280 + DAT_00baa1f8);
  }
  FUN_006b6c20(&local_98,"Hitbox");
  if (local_78 <= DAT_00ba9fe4) {
    if (*(int *)(param_1 + 0x2c) == 2) {
      *(undefined4 *)(param_1 + 0xf10) = *(undefined4 *)(param_1 + 0xf0c);
    }
  }
  else {
    if ((*(uint *)(DAT_00c71678 + 0x26544) >> 5 & 1) != 0) {
      iVar9 = FUN_0042eb10(*(undefined4 *)(param_1 + 0x20),1);
      *(undefined4 *)(iVar9 + 4) = 1;
      FUN_0042eef0(&local_98);
    }
    local_48 = 0.0;
    local_4c = 0.0;
    iVar9 = (int)((local_98 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    ppfVar13 = (float **)(iVar9 + 2);
    fVar12 = (float)(iVar9 + -2);
    iVar9 = (int)((local_94 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    local_3c = ppfVar13;
    local_28 = fVar12;
    if ((int)fVar12 <= (int)ppfVar13) {
      local_38 = (float *)(iVar9 + -2);
      fVar17 = (float)(iVar9 + 2);
      fVar16 = DAT_00baa904;
      fVar18 = DAT_00baaa00;
      local_24 = fVar17;
      do {
        local_34 = local_38;
        pfVar14 = local_38;
        local_28 = fVar12;
        if ((int)local_38 <= (int)fVar17) {
          do {
            if (((-1 < (int)fVar12) && (fVar17 = local_24, (int)fVar12 < (int)local_44[3])) &&
               ((-1 < (int)pfVar14 &&
                (((int)pfVar14 < (int)local_44[4] &&
                 (iVar9 = (int)local_44[3] * (int)pfVar14 + (int)fVar12, -1 < iVar9)))))) {
              if (iVar9 < 0x1c0) {
                local_30 = local_44[iVar9 + 9];
              }
              else {
                local_30 = (float *)0x0;
              }
              if (local_30 != (float *)0x0) {
                iVar9 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
                local_54 = (float)((int)local_30[9] % iVar9) * fVar16 + fVar16;
                local_50 = (float *)((float)((int)local_30[9] / iVar9) * fVar16 + fVar18);
                local_34 = pfVar14;
                FUN_00945190(&local_54,&DAT_00c3793c,0);
                cVar4 = FUN_00945470(&local_4c);
                fVar17 = local_24;
                fVar12 = local_28;
                fVar16 = DAT_00baa904;
                fVar18 = DAT_00baaa00;
                if (cVar4 != '\0') {
                  pcVar2 = *(code **)((int)*local_30 + 0x10);
                  FUN_00431310(param_1);
                  (*pcVar2)(1,local_c0);
                  fVar17 = local_24;
                  fVar12 = local_28;
                  pfVar14 = local_34;
                  fVar16 = DAT_00baa904;
                  fVar18 = DAT_00baaa00;
                }
              }
            }
            pfVar14 = (float *)((int)pfVar14 + 1);
            ppfVar13 = local_3c;
            local_34 = pfVar14;
          } while ((int)pfVar14 <= (int)fVar17);
        }
        fVar12 = (float)((int)fVar12 + 1);
        local_28 = fVar12;
      } while ((int)fVar12 <= (int)ppfVar13);
    }
    FUN_0041a790(local_70,&local_98,0xffffffff);
    local_14 = 2;
    local_38 = (float *)0x0;
    if (local_64 != 0) {
      do {
        pfVar14 = *(float **)(local_6c + (int)local_38 * 4);
        local_30 = pfVar14;
        if ((NAN(pfVar14[0xdc]) == (pfVar14[0xdc] == 0.0)) && (pfVar14[0x62] != 0.0)) {
          FUN_006a9ba0(local_c0,&DAT_00c7b640);
          cVar4 = FUN_00945470(&local_4c);
          if (cVar4 != '\0') {
            local_34 = (float *)FUN_006b62b0();
            local_44 = *(float ***)(param_1 + 0xf10);
            ppfVar13 = *(float ***)(param_1 + 0xf0c);
            uVar5 = (int)local_44 - (int)ppfVar13 >> 2;
            while (uVar3 = uVar5, 0 < (int)uVar3) {
              uVar5 = uVar3 >> 1;
              local_3c = ppfVar13 + uVar5;
              pfVar14 = local_30;
              param_1 = local_60;
              if (*local_3c < local_34) {
                ppfVar13 = local_3c + 1;
                uVar5 = uVar3 + (-1 - uVar5);
                local_3c = ppfVar13;
              }
            }
            if ((ppfVar13 == local_44) || (*ppfVar13 != local_34)) {
              local_24 = pfVar14[0xcf] - *(float *)(param_1 + 0x33c);
              local_28 = pfVar14[0xd0] - *(float *)(param_1 + 0x340);
              fVar12 = local_24 * local_24 + local_28 * local_28;
              FUN_00435a50();
              if (0.0 < fVar12) {
                local_28 = local_28 * (DAT_00baa454 / fVar12);
                local_24 = local_24 * (DAT_00baa454 / fVar12);
              }
              fVar12 = pfVar14[10];
              if ((fVar12 == 3.433181e-43) || (fVar12 == 4.091792e-43)) {
                local_29 = '\x01';
              }
              else {
                local_29 = '\0';
              }
              if (fVar12 == 5.605194e-45) {
                if ((*(uint *)(param_1 + 0x168) & 0x100) != 0) {
LAB_004e62d4:
                  if ((local_29 == '\0') && (cVar4 = FUN_004e50d0(), cVar4 == '\0')) {
                    if ((*(int *)(DAT_00c71678 + 0x26614) < 2) || (pfVar14[10] != 1.401298e-45)) {
                      if (0x3dd < (int)pfVar14[10] - 10U) goto LAB_004e64fa;
                      if ((pfVar14[10] == 4.624285e-44) && (pfVar14[0xb] != 1.541428e-44)) {
                        pcVar2 = *(code **)((int)*pfVar14 + 0x20);
                        FUN_00431310(param_1);
                        (*pcVar2)(0x447a0000,0,0,local_c0,0x1e);
                        pfVar14 = local_30;
                      }
                    }
                    if (*(int *)(param_1 + 0x2c) == 2) {
                      fVar12 = pfVar14[0xdb];
                      fVar17 = local_28 * DAT_00baa854;
                      if ((NAN(fVar12) || NAN(DAT_00ba9fe4)) == (fVar12 == DAT_00ba9fe4)) {
                        pfVar14[0xd8] = (local_24 * DAT_00baa854) / fVar12 + pfVar14[0xd8];
                        pfVar14[0xd9] = fVar17 / fVar12 + pfVar14[0xd9];
                      }
                    }
                  }
                  else {
                    fVar12 = *(float *)(param_1 + 0x388);
                    fVar17 = DAT_00baa854;
                    if (*(int *)(param_1 + 0x2c) == 1) {
                      fVar17 = DAT_00baadd8;
                    }
                    fVar16 = pfVar14[0xdb];
                    if (NAN(fVar16) == (fVar16 == 0.0)) {
                      pfVar14[0xd8] = (local_24 * fVar17) / fVar16 + pfVar14[0xd8];
                      pfVar14[0xd9] = (local_28 * fVar17) / fVar16 + pfVar14[0xd9];
                    }
                    if ((*(int *)(DAT_00c71678 + 0x26614) < 2) || (pfVar14[10] != 1.401298e-45)) {
                      bVar15 = (int)pfVar14[10] - 10U < 0x3de;
                    }
                    else {
                      bVar15 = true;
                    }
                    local_34 = *(float **)((int)*pfVar14 + 0x20);
                    if (bVar15) {
                      FUN_00431310(param_1);
                      fVar12 = fVar12 * DAT_00baa81c;
                      puVar10 = local_c0;
                    }
                    else {
                      FUN_00431310(param_1);
                      puVar10 = local_e8;
                    }
                    (*(code *)local_34)(fVar12,0,0,puVar10,0x1e);
                    local_34 = (float *)0x1ef;
                    FUN_00956780();
                    FUN_0092dc30(local_34,0x3f800000,2,0,0x3f800000,0);
                    *(undefined4 *)(param_1 + 0xba4) = 0;
                    if (local_29 == '\0') goto LAB_004e64e6;
                  }
                  goto LAB_004e64fa;
                }
                fVar12 = pfVar14[0xdb];
                fVar17 = local_28 * DAT_00baa854;
                if (NAN(fVar12) == (fVar12 == 0.0)) {
                  pfVar14[0xd8] = (local_24 * DAT_00baa854) / fVar12 + pfVar14[0xd8];
                  pfVar14[0xd9] = fVar17 / fVar12 + pfVar14[0xd9];
                }
              }
              else {
                if ((fVar12 != 2.802597e-45) || ((*(uint *)(param_1 + 0x168) & 0x100) != 0))
                goto LAB_004e62d4;
                fVar12 = local_24 * local_24 + local_28 * local_28;
                FUN_00435a50();
                if (DAT_00ba9fe4 < fVar12) {
                  local_24 = local_24 * (DAT_00baa454 / fVar12);
                  local_28 = local_28 * (DAT_00baa454 / fVar12);
                }
                fVar12 = pfVar14[0xd8] * pfVar14[0xd8] + pfVar14[0xd9] * pfVar14[0xd9];
                FUN_00435a50();
                pfVar14[0xd8] = local_24 * fVar12;
                pfVar14[0xd9] = local_28 * fVar12;
              }
LAB_004e64e6:
              uVar11 = FUN_006b62b0();
              FUN_00431570(uVar11);
            }
          }
        }
LAB_004e64fa:
        local_38 = (float *)((int)local_38 + 1);
      } while (local_38 < local_64);
    }
    if (local_70[0] == '\0') {
      local_14 = 3;
      FUN_00a648b0(0,0);
      ExceptionList = local_1c;
      return;
    }
  }
  ExceptionList = local_1c;
  return;
}

