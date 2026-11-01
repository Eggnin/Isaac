/* Local J460 decompiler output.
 * VA: 0x00490680
 * Entry: 00490680
 * Dispatcher: 0x006c2990
 * Types: 404
 * Identities: 404.0.0,404.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00492550; instructions=1823
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=404; identities=404.0.0,404.1.0; dispatcher=0x006c2990;
   end=0x00492550; instructions=1823 */

void __fastcall AI_00490680(float param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined *puVar4;
  char cVar5;
  undefined uVar6;
  uint uVar7;
  int iVar8;
  float *pfVar9;
  undefined4 uVar10;
  int *piVar11;
  undefined4 uVar12;
  undefined4 *puVar13;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint *puVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float *pfVar18;
  undefined4 local_bc [8];
  undefined4 local_9c;
  undefined4 uStack_98;
  undefined4 local_94;
  char local_90 [4];
  int local_8c;
  uint local_84;
  undefined local_80 [4];
  float local_7c;
  undefined local_78 [4];
  float local_74;
  char local_70 [8];
  float local_68;
  float local_64;
  char local_60 [4];
  int local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  char local_44 [4];
  int local_40;
  float local_3c;
  float *local_38;
  undefined local_34 [4];
  undefined4 local_30;
  float local_2c;
  float *local_28;
  int *local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  uVar3 = _UNK_00babe1c;
  uVar2 = _UNK_00babe18;
  uVar12 = _UNK_00babe14;
  uVar10 = _DAT_00babe10;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2e05;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_64 = param_1;
  if (*(int *)((int)param_1 + 0x2c) != 0) {
    if (*(int *)((int)param_1 + 0x2c) != 1) {
      return;
    }
    if (*(int *)((int)param_1 + 0xb64) != 0) {
      ExceptionList = &local_1c;
      *(int *)((int)param_1 + 0x410) = *(int *)((int)param_1 + 0x410) + 1;
      if (*(int *)((int)param_1 + 0x30) == 0) {
        *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
        puStack_20 = &stack0xfffffffc;
        pfVar9 = (float *)FUN_006bec40(&local_58,0);
        fVar16 = *(float *)((int)param_1 + 0x39c);
        local_58 = *pfVar9 - *(float *)((int)param_1 + 0x33c);
        local_54 = pfVar9[1] - *(float *)((int)param_1 + 0x340);
        fVar15 = DAT_00baa4a4;
        if ((NAN(fVar16) || NAN(DAT_00baa454)) == (fVar16 == DAT_00baa454)) {
          fVar15 = DAT_00baa4a4 / ((fVar16 + DAT_00baa4a4) - fVar16 * DAT_00baa4a4);
        }
        local_38 = (float *)(fVar15 * *(float *)((int)param_1 + 0x360));
        *(float **)((int)param_1 + 0x360) = local_38;
        *(float *)((int)param_1 + 0x364) = fVar15 * *(float *)((int)param_1 + 0x364);
        pfVar9 = (float *)FUN_00a10030(&local_68);
        fVar16 = *(float *)((int)param_1 + 0x36c);
        fVar15 = *pfVar9 * DAT_00baa2d0;
        if (NAN(fVar16) == (fVar16 == 0.0)) {
          *(float *)((int)param_1 + 0x364) =
               (*(float *)((int)param_1 + 0x39c) *
               pfVar9[1] * DAT_00baa2d0 * *(float *)((int)param_1 + 0xc38)) / fVar16 +
               *(float *)((int)param_1 + 0x364);
          *(float *)((int)param_1 + 0x360) =
               (*(float *)((int)param_1 + 0x39c) * fVar15 * *(float *)((int)param_1 + 0xc38)) /
               fVar16 + (float)local_38;
        }
        *(undefined4 *)((int)param_1 + 0x37c) = 0x41000000;
        AI_0041af60(local_44,0x194,1,0xffffffff,1,0);
        pfVar9 = (float *)0x0;
        local_14 = 6;
        if (local_38 != (float *)0x0) {
          do {
            fVar16 = *(float *)(local_40 + (int)pfVar9 * 4);
            if (fVar16 != param_1) {
              local_30 = *(float *)((int)param_1 + 0x33c);
              local_24 = *(int **)((int)param_1 + 0x340);
              fVar15 = *(float *)((int)fVar16 + 0x33c) - local_30;
              fVar16 = *(float *)((int)fVar16 + 0x340) - (float)local_24;
              fVar16 = fVar16 * fVar16 + fVar15 * fVar15;
              FUN_00435a50();
              if (fVar16 < DAT_00baa9d0) {
                iVar8 = *(int *)(local_40 + (int)pfVar9 * 4);
                local_30 = local_30 - *(float *)(iVar8 + 0x33c);
                local_24 = (int *)((float)local_24 - *(float *)(iVar8 + 0x340));
                fVar15 = local_30 * local_30 + (float)local_24 * (float)local_24;
                FUN_00435a50();
                fVar16 = local_30;
                piVar11 = local_24;
                if (0.0 < fVar15) {
                  fVar15 = (DAT_00baa9d0 - fVar15) / fVar15;
                  fVar16 = local_30 * fVar15;
                  piVar11 = (int *)((float)local_24 * fVar15);
                }
                fVar15 = *(float *)((int)param_1 + 0x36c);
                fVar16 = fVar16 * _DAT_00baa040;
                if (NAN(fVar15) == (fVar15 == 0.0)) {
                  *(float *)((int)param_1 + 0x364) =
                       (*(float *)((int)param_1 + 0x39c) * (float)piVar11 * _DAT_00baa040) / fVar15
                       + *(float *)((int)param_1 + 0x364);
                  *(float *)((int)param_1 + 0x360) =
                       (*(float *)((int)param_1 + 0x39c) * fVar16) / fVar15 +
                       *(float *)((int)param_1 + 0x360);
                }
              }
            }
            pfVar9 = (float *)((int)pfVar9 + 1);
          } while (pfVar9 < local_38);
        }
        AI_0041af60(local_60,4,0xffffffff,0xffffffff,1,0);
        fVar16 = 0.0;
        if (local_54 != 0.0) {
          do {
            fVar15 = *(float *)(local_5c + (int)fVar16 * 4);
            if (fVar15 != param_1) {
              local_30 = *(float *)((int)param_1 + 0x33c);
              local_24 = *(int **)((int)param_1 + 0x340);
              fVar17 = *(float *)((int)fVar15 + 0x33c) - local_30;
              fVar15 = *(float *)((int)fVar15 + 0x340) - (float)local_24;
              fVar15 = fVar15 * fVar15 + fVar17 * fVar17;
              FUN_00435a50();
              if (fVar15 < DAT_00baa9d0) {
                iVar8 = *(int *)(local_5c + (int)fVar16 * 4);
                local_30 = local_30 - *(float *)(iVar8 + 0x33c);
                local_24 = (int *)((float)local_24 - *(float *)(iVar8 + 0x340));
                fVar17 = local_30 * local_30 + (float)local_24 * (float)local_24;
                FUN_00435a50();
                fVar15 = local_30;
                piVar11 = local_24;
                if (0.0 < fVar17) {
                  fVar17 = (DAT_00baa9d0 - fVar17) / fVar17;
                  fVar15 = local_30 * fVar17;
                  piVar11 = (int *)((float)local_24 * fVar17);
                }
                fVar17 = *(float *)((int)param_1 + 0x36c);
                fVar15 = fVar15 * DAT_00baa06c;
                if (NAN(fVar17) == (fVar17 == 0.0)) {
                  *(float *)((int)param_1 + 0x364) =
                       (*(float *)((int)param_1 + 0x39c) * (float)piVar11 * DAT_00baa06c) / fVar17 +
                       *(float *)((int)param_1 + 0x364);
                  *(float *)((int)param_1 + 0x360) =
                       (*(float *)((int)param_1 + 0x39c) * fVar15) / fVar17 +
                       *(float *)((int)param_1 + 0x360);
                }
              }
            }
            fVar16 = (float)((int)fVar16 + 1);
          } while ((uint)fVar16 < (uint)local_54);
        }
        if (local_60[0] == '\0') {
          local_14 = CONCAT31(local_14._1_3_,7);
          FUN_00a648b0(0,0);
        }
        local_14 = 0xffffffff;
        puVar4 = puStack_20;
        if (local_44[0] == '\0') {
          local_14 = 8;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
          puVar4 = puStack_20;
        }
      }
      else {
        puVar4 = &stack0xfffffffc;
        if (*(int *)((int)param_1 + 0x30) == 1) {
          *(undefined4 *)((int)param_1 + 0x36c) = 0x3f800000;
          *(undefined4 *)((int)param_1 + 0x37c) = 0x41000000;
          pfVar9 = (float *)FUN_00a10030(&local_58);
          fVar16 = pfVar9[1] * DAT_00baa81c;
          *(float *)((int)param_1 + 0x360) = *pfVar9 * DAT_00baa81c;
          *(float *)((int)param_1 + 0x364) = fVar16;
          puVar4 = puStack_20;
        }
      }
      puStack_20 = puVar4;
      local_7c = 4.203895e-45;
      do {
        uVar10 = FUN_006eef60(uVar7);
        pfVar9 = (float *)FUN_00428b20(1000,0x58,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar10
                                      );
        local_38 = pfVar9;
        if (pfVar9 != (float *)0x0) {
          if (-1 < *(int *)((int)param_1 + 0xc78)) {
            iVar8 = FUN_0040b220(0);
            FUN_0040bf30(0,iVar8 + 8);
            FUN_0040c000(extraout_ECX_00);
          }
          fVar16 = *(float *)((int)param_1 + 0x364) * DAT_00baad2c;
          pfVar9[0xd8] = *(float *)((int)param_1 + 0x360) * DAT_00baad2c;
          pfVar9[0xd9] = fVar16;
          iVar8 = FUN_006eef60();
          fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_38 = (float *)(fVar16 + fVar16);
          iVar8 = FUN_006eef60();
          local_64 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4;
          fVar16 = *(float *)((int)param_1 + 0x360) * *(float *)((int)param_1 + 0x360) +
                   *(float *)((int)param_1 + 0x364) * *(float *)((int)param_1 + 0x364);
          FUN_00435a50();
          local_74 = fVar16;
          pfVar18 = local_38;
          FUN_0041d540();
          local_50 = (float)pfVar18 * local_64 * local_74 * DAT_00baa280;
          pfVar18 = local_38;
          FUN_0041d520();
          fVar16 = pfVar9[0xdb];
          if (NAN(fVar16) == (fVar16 == 0.0)) {
            pfVar9[0xd9] = (pfVar9[0xe7] * (float)pfVar18 * local_64 * local_74 * DAT_00baa280) /
                           fVar16 + pfVar9[0xd9];
            pfVar9[0xd8] = (pfVar9[0xe7] * local_50) / fVar16 + pfVar9[0xd8];
          }
          pfVar9[0x37] = 0.0;
          pfVar9[0x38] = -20.0;
          fVar16 = *(float *)((int)param_1 + 0xc38);
          pfVar9[0x39] = fVar16;
          pfVar9[0x3a] = fVar16;
        }
        local_7c = (float)((int)local_7c + -1);
      } while (local_7c != 0.0);
      ExceptionList = local_1c;
      return;
    }
    local_9c = 0;
    uStack_98 = 0;
    local_94 = 0;
    ExceptionList = &local_1c;
    if ((undefined4 *)((int)param_1 + 0x1e4) != local_bc) {
      *(undefined8 *)((int)param_1 + 0x204) = 0;
      *(undefined4 *)((int)param_1 + 0x1e4) = uVar10;
      *(undefined4 *)((int)param_1 + 0x1e8) = uVar12;
      *(undefined4 *)((int)param_1 + 0x1ec) = uVar2;
      *(undefined4 *)((int)param_1 + 0x1f0) = uVar3;
      *(undefined4 *)((int)param_1 + 0x20c) = 0;
      *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
    }
    *(undefined4 *)((int)param_1 + 0xdc) = 0;
    *(undefined4 *)((int)param_1 + 0xe0) = 0xc1a00000;
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    *(undefined4 *)((int)param_1 + 0x184) = 3;
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380(&DAT_00b1bc54,0);
    ExceptionList = local_1c;
    return;
  }
  pfVar9 = (float *)((int)param_1 + 0x78);
  ExceptionList = &local_1c;
  local_28 = pfVar9;
  puStack_20 = &stack0xfffffffc;
  if ((*(int *)((int)param_1 + 0x7c) != 0) &&
     (local_38 = pfVar9, puStack_20 = &stack0xfffffffc, cVar5 = FUN_0040add0("HoleOpen"),
     local_28 = pfVar9, cVar5 != '\0')) {
    local_28 = (float *)0x3b3;
    FUN_00956780();
    FUN_0092dc30(local_28,0x3f800000,2,0,0x3f800000,0);
    local_28 = local_38;
  }
  if ((*(int *)((int)param_1 + 0x7c) != 0) && (cVar5 = FUN_0040add0("HoleExit"), cVar5 != '\0')) {
    local_2c = 1.328431e-42;
    FUN_00956780();
    FUN_0092dc30(local_2c,0x3f800000,2,0,0x3f800000,0);
  }
  if ((0.0 < *(float *)((int)param_1 + 0x14)) && ((*(uint *)((int)param_1 + 0x18) & 4) != 0)) {
    *(undefined4 *)((int)param_1 + 0x14) = 0;
    fVar16 = DAT_00baa1d4;
    pfVar9 = *(float **)((int)param_1 + 8);
    if (pfVar9 != *(float **)((int)param_1 + 0xc)) {
      do {
        fVar15 = *pfVar9;
        if (pfVar9[6] == *(float *)((int)param_1 + 0x28)) {
          fVar15 = fVar15 * fVar16;
          *pfVar9 = fVar15;
        }
        pfVar9 = pfVar9 + 0xe;
        *(float *)((int)param_1 + 0x14) = fVar15 + *(float *)((int)param_1 + 0x14);
      } while (pfVar9 != *(float **)((int)param_1 + 0xc));
    }
  }
  iVar8 = *(int *)((int)param_1 + 0xb64);
  if (iVar8 == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    *(undefined4 *)((int)param_1 + 0x184) = 3;
    *(undefined4 *)((int)param_1 + 0xbc0) = 0;
    ExceptionList = local_1c;
    return;
  }
  if (0 < *(int *)((int)param_1 + 0xbc0)) {
    *(int *)((int)param_1 + 0xbc0) = *(int *)((int)param_1 + 0xbc0) + -1;
  }
  *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
  if (iVar8 != 3) {
    if (iVar8 == 8) {
      FUN_0040a380("Shoot",0);
      if (*(int *)((int)param_1 + 0x7c) != 0) {
        cVar5 = FUN_0040add0("Shoot");
        if (cVar5 != '\0') {
          iVar8 = FUN_006eef60();
          local_38 = (float *)0x19e;
          local_64 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0;
          FUN_00956780();
          FUN_0092dc30(local_38,0x3f800000,2,0,local_64,0);
          pfVar9 = (float *)((int)param_1 + 0x33c);
          if (*(int *)((int)param_1 + 0x30) == 1) {
            iVar8 = FUN_006be840();
            local_58 = *(float *)(iVar8 + 0x33c) - *pfVar9;
            local_54 = *(float *)(iVar8 + 0x340) - *(float *)((int)param_1 + 0x340);
            FUN_00a10030(&local_3c);
            uVar10 = FUN_006eef60();
            local_58 = local_3c * DAT_00baa854;
            local_68 = local_3c * DAT_00baa784 + *pfVar9;
            local_54 = (float)local_38 * DAT_00baa854;
            local_64 = (float)local_38 * DAT_00baa784 + *(float *)((int)param_1 + 0x340);
            piVar11 = (int *)FUN_00428b20(4,8,&local_68,&local_58,param_1,0,uVar10);
            fVar17 = DAT_00c34c0c;
            fVar15 = DAT_00c34c08;
            fVar16 = DAT_00c34c04;
            piVar11[0x10e] = (int)DAT_00c34c00;
            piVar11[0x10f] = (int)fVar16;
            piVar11[0x110] = (int)fVar15;
            piVar11[0x111] = (int)fVar17;
            *(undefined *)((int)piVar11 + 0x463) = 1;
            (**(code **)(*piVar11 + 0x40))(0x3f800000);
            if (piVar11[0x1f] != 0) {
              FUN_00408e00();
            }
          }
          else {
            uVar10 = FUN_006eef60();
            iVar8 = FUN_00428b20(0x194,1,pfVar9,&DAT_00c7b640,param_1,0,uVar10);
            *(undefined4 *)(iVar8 + 0x360) = 0;
            *(undefined4 *)(iVar8 + 0x364) = 0x40800000;
            FUN_006d0300(*(undefined4 *)((int)param_1 + 0xc78),extraout_ECX);
            *(uint *)(iVar8 + 0x168) = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar8 + 0x16c) = *(undefined4 *)(iVar8 + 0x16c);
            fVar16 = *(float *)((int)param_1 + 0x36c);
            if (NAN(fVar16) == (fVar16 == 0.0)) {
              fVar15 = *(float *)((int)param_1 + 0x39c) * DAT_00baa730;
              *(float *)((int)param_1 + 0x360) =
                   (*(float *)((int)param_1 + 0x39c) * 0.0) / fVar16 +
                   *(float *)((int)param_1 + 0x360);
              *(float *)((int)param_1 + 0x364) = *(float *)((int)param_1 + 0x364) - fVar15 / fVar16;
            }
          }
        }
        goto LAB_00491d76;
      }
    }
    else {
      if (iVar8 == 9) {
        FUN_0040a380(&DAT_00b1ce1c,0);
        iVar8 = *(int *)((int)param_1 + 0xb64);
        if (iVar8 == 10) goto LAB_00491b1a;
      }
      else {
        if (iVar8 != 10) {
          if ((iVar8 == 6) || (iVar8 == 0x10)) {
            if (*(int *)((int)param_1 + 0x410) == 0) {
              FUN_0040a380("Teleport",0);
              cVar5 = FUN_0040b030(&DAT_00b1d33c);
              if (cVar5 != '\0') {
                local_38 = (float *)0x3b2;
                FUN_00956780();
                FUN_0092dc30(local_38,0x3f800000,2,0,0x3f800000,0);
              }
              cVar5 = FUN_0040b090("CollisionOff");
              if (cVar5 != '\0') {
                *(undefined4 *)((int)param_1 + 0x188) = 0;
              }
              if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0'))
              {
                if ((*(int *)((int)param_1 + 0xb64) == 0x10) &&
                   (iVar8 = *(int *)((int)param_1 + 0x30), iVar8 != 2)) {
                  uVar10 = FUN_006eef60();
                  uVar12 = 8;
                  if (iVar8 != 1) {
                    uVar12 = 3;
                  }
                  piVar11 = (int *)FUN_00428b20(4,uVar12,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,
                                                1,uVar10);
                  fVar17 = DAT_00c34c0c;
                  fVar15 = DAT_00c34c08;
                  fVar16 = DAT_00c34c04;
                  if (*(int *)((int)param_1 + 0x30) == 1) {
                    piVar11[0x10e] = (int)DAT_00c34c00;
                    piVar11[0x10f] = (int)fVar16;
                    piVar11[0x110] = (int)fVar15;
                    piVar11[0x111] = (int)fVar17;
                    *(undefined *)((int)piVar11 + 0x463) = 1;
                    (**(code **)(*piVar11 + 0x40))(0x3f800000);
                  }
                }
                *(undefined4 *)((int)param_1 + 0x410) = 1;
                *(float *)((int)param_1 + 0x360) = DAT_00c7b640;
                *(float *)((int)param_1 + 0x364) = DAT_00c7b644;
                if (*(int *)((int)param_1 + 0xbc4) == 1) {
                  iVar8 = FUN_006eef60();
                  fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0;
                  uVar10 = 0x1a0;
                }
                else {
                  iVar8 = FUN_006eef60();
                  fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0;
                  uVar10 = 0x19f;
                }
                FUN_009568e0(uVar10,2,0,fVar16);
                local_50 = *(float *)((int)param_1 + 0x33c);
                local_2c = *(float *)((int)param_1 + 0x340);
                local_64 = 4.203895e-44;
                do {
                  local_28 = (float *)((uint)local_28 & 0xffffff00);
                  uVar10 = FUN_0081e9d0(&local_58,0);
                  puVar13 = (undefined4 *)FUN_00813520(local_34,uVar10,0,0,0,0);
                  iVar8 = DAT_00c71678;
                  *(undefined4 *)((int)param_1 + 0x33c) = *puVar13;
                  fVar16 = (float)puVar13[1];
                  *(float *)((int)param_1 + 0x340) = fVar16;
                  local_38 = (float *)0x0;
                  if (*(int *)(iVar8 + 0x1baac) - *(int *)(iVar8 + 0x1baa8) >> 2 == 0) {
                    fVar15 = *(float *)((int)param_1 + 0x33c);
                  }
                  else {
                    do {
                      iVar8 = FUN_00417870(local_38);
                      local_7c = *(float *)((int)param_1 + 0x33c);
                      fVar15 = *(float *)(iVar8 + 0x33c) - local_7c;
                      local_74 = *(float *)((int)param_1 + 0x340);
                      fVar16 = *(float *)(iVar8 + 0x340) - local_74;
                      fVar16 = fVar16 * fVar16 + fVar15 * fVar15;
                      FUN_00435a50();
                      local_28 = (float *)((uint)local_28 & 0xff);
                      if (fVar16 < DAT_00baaa00) {
                        local_28 = (float *)0x1;
                      }
                      local_38 = (float *)((int)local_38 + 1);
                      fVar16 = local_74;
                      fVar15 = local_7c;
                    } while (local_38 <
                             (float *)(*(int *)(DAT_00c71678 + 0x1baac) -
                                       *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
                  }
                  fVar16 = (local_50 - fVar15) * (local_50 - fVar15) +
                           (local_2c - fVar16) * (local_2c - fVar16);
                  FUN_00435a50();
                  cVar5 = (char)local_28;
                  if (fVar16 < DAT_00baaa5c) {
                    cVar5 = '\x01';
                  }
                  local_64 = (float)((int)local_64 + -1);
                } while ((0 < (int)local_64) && (cVar5 != '\0'));
                FUN_006c04b0(1);
              }
            }
            if (*(int *)((int)param_1 + 0x410) == 1) {
              FUN_0040a380("Return",0);
              if (*(int *)((int)param_1 + 0x7c) != 0) {
                cVar5 = FUN_0040ae70("CollisionOn");
                if (cVar5 != '\0') {
                  *(undefined4 *)((int)param_1 + 0x188) = 4;
                }
                if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0')
                   ) goto LAB_00491d99;
              }
              iVar8 = *(int *)((int)param_1 + 0xbc4) + -1;
              *(int *)((int)param_1 + 0xbc4) = iVar8;
              *(undefined4 *)((int)param_1 + 0x410) = 0;
              if (iVar8 < 1) {
                *(undefined4 *)((int)param_1 + 0xb64) = 3;
                *(undefined4 *)((int)param_1 + 0xbc0) = 0x4b;
              }
            }
            goto LAB_00491d99;
          }
          if ((iVar8 != 0xd) && (iVar8 != 0xe)) goto LAB_00491d99;
          FUN_0040a380("Summon",0);
          cVar5 = FUN_0040b030("Summon");
          if (cVar5 != '\0') {
            local_64 = 2.802597e-45;
            local_24 = (int *)0x1;
            if (*(int *)((int)param_1 + 0xb64) == 0xe) {
              uVar7 = FUN_006eef60();
              if (uVar7 % 100 < 10) {
                local_24 = (int *)&DAT_00000005;
              }
              else {
                local_24 = (int *)0x1;
                if (uVar7 % 100 < 0x32) {
                  local_24 = (int *)0x3;
                }
              }
            }
            else {
              local_64 = 0.0;
            }
            iVar8 = FUN_006eef60();
            FUN_009568e0(0x19f,2,0,
                         (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0);
            iVar8 = FUN_006be840();
            fVar16 = *(float *)(iVar8 + 0x340) - *(float *)((int)param_1 + 0x340);
            FUN_00499d60();
            local_74 = fVar16 * DAT_00baa948;
            local_28 = (float *)0x0;
            do {
              uVar10 = FUN_006eef60();
              piVar11 = (int *)FUN_00428b20(0x123,local_64,(int)param_1 + 0x33c,&DAT_00c7b640,
                                            param_1,0,uVar10);
              if (piVar11 != (int *)0x0) {
                piVar11[0x104] = 0xf0;
                if (*(int *)((int)param_1 + 0xb64) == 0xe) {
                  local_38 = (float *)((((float)(int)local_28 / (float)(int)local_24) * DAT_00baab30
                                       + local_74) * DAT_00baa088);
                  fVar16 = (float)local_38;
                  FUN_0041d540();
                  local_30 = fVar16;
                  fVar16 = (float)local_38;
                  FUN_0041d520();
                  local_38 = (float *)(local_30 - fVar16 * 0.0);
                  local_30 = local_30 * 0.0 + fVar16;
                  fVar15 = local_30 * local_30 + (float)local_38 * (float)local_38;
                  FUN_00435a50();
                  pfVar9 = local_38;
                  fVar16 = local_30;
                  if (0.0 < fVar15) {
                    pfVar9 = (float *)((float)local_38 * (DAT_00baa800 / fVar15));
                    fVar16 = local_30 * (DAT_00baa800 / fVar15);
                  }
                  piVar11[0x5a] = piVar11[0x5a] & 0xfffffffb;
                  piVar11[0xd8] = (int)pfVar9;
                  piVar11[0xd9] = (int)fVar16;
                  piVar11[0x5b] = piVar11[0x5b];
                }
                (**(code **)(*piVar11 + 0xc))();
              }
              local_28 = (float *)((int)local_28 + 1);
            } while ((int)local_28 < (int)local_24);
          }
          goto LAB_00491d76;
        }
LAB_00491b1a:
        FUN_0040a380("MegaBomb",0);
        iVar8 = *(int *)((int)param_1 + 0xb64);
      }
      local_2c = (float)((int)param_1 + 0x78);
      local_28 = (float *)((iVar8 == 10) + 3);
      if (*(int *)((int)param_1 + 0x30) == 1) {
        local_28 = (float *)&DAT_00000008;
      }
      pfVar9 = local_28;
      if (*(int *)((int)param_1 + 0x7c) != 0) {
        cVar5 = FUN_0040add0("BombDrop");
        if (cVar5 != '\0') {
          local_38 = (float *)0x3b1;
          FUN_00956780();
          FUN_0092dc30(local_38,0x3f800000,2,0,0x3f800000,0);
          local_2c = (float)((int)param_1 + 0x78);
        }
        pfVar9 = local_28;
        if ((*(int *)((int)param_1 + 0x7c) != 0) &&
           (cVar5 = FUN_0040add0(&DAT_00b1ce1c), pfVar9 = local_28, cVar5 != '\0')) {
          iVar8 = FUN_006eef60();
          local_38 = (float *)0x1a0;
          local_64 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0;
          FUN_00956780();
          FUN_0092dc30(local_38,0x3f800000,2,0,local_64,0);
          uVar10 = FUN_006bec40(local_78,0);
          uVar10 = FUN_00813520(local_80,uVar10,0x42200000,0,0,0);
          pfVar9 = local_28;
          piVar11 = (int *)FUN_00428b20(4,local_28,uVar10,&DAT_00c7b640,param_1,1,1);
          fVar17 = DAT_00c34c0c;
          fVar15 = DAT_00c34c08;
          fVar16 = DAT_00c34c04;
          if (*(int *)((int)param_1 + 0x30) == 1) {
            piVar11[0x10e] = (int)DAT_00c34c00;
            piVar11[0x10f] = (int)fVar16;
            piVar11[0x110] = (int)fVar15;
            piVar11[0x111] = (int)fVar17;
            *(undefined *)((int)piVar11 + 0x463) = 1;
            (**(code **)(*piVar11 + 0x40))(0x3f800000);
          }
        }
      }
      if ((*(char *)((int)param_1 + 0x173) != '\0') &&
         ((*(int *)((int)param_1 + 0x7c) == 0 ||
          (cVar5 = FUN_0040ae70(&DAT_00b1ce1c), cVar5 == '\0')))) {
        uVar10 = FUN_006eef60();
        local_68 = *(float *)((int)param_1 + 0x33c) + 0.0;
        local_58 = 0.0;
        local_64 = *(float *)((int)param_1 + 0x340) + DAT_00baa784;
        local_54 = 3.0;
        piVar11 = (int *)FUN_00428b20(4,pfVar9,&local_68,&local_58,param_1,0,uVar10);
        fVar17 = DAT_00c34c0c;
        fVar15 = DAT_00c34c08;
        fVar16 = DAT_00c34c04;
        if (*(int *)((int)param_1 + 0x30) == 1) {
          piVar11[0x10e] = (int)DAT_00c34c00;
          piVar11[0x10f] = (int)fVar16;
          piVar11[0x110] = (int)fVar15;
          piVar11[0x111] = (int)fVar17;
          *(undefined *)((int)piVar11 + 0x463) = 1;
          (**(code **)(*piVar11 + 0x40))(0x3f800000);
        }
      }
LAB_00491d76:
      if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
      goto LAB_00491d99;
    }
    *(undefined4 *)((int)param_1 + 0x410) = 0;
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    goto LAB_00491d99;
  }
  iVar8 = FUN_0040b430(&DAT_00b1d57c);
  *(undefined *)(iVar8 + 0x74) = 1;
  FUN_0040a380(&DAT_00b1bc54,0);
  if (((NAN(*(float *)((int)param_1 + 0xbb0)) || NAN(DAT_00c7b640)) ==
       (*(float *)((int)param_1 + 0xbb0) == DAT_00c7b640)) ||
     ((NAN(*(float *)((int)param_1 + 0xbb4)) || NAN(DAT_00c7b644)) ==
      (*(float *)((int)param_1 + 0xbb4) == DAT_00c7b644))) {
    iVar8 = *(int *)((int)param_1 + 0x410);
    local_24 = (int *)((int)param_1 + 0x410);
    if (0x32 < iVar8) {
      *local_24 = 0;
      goto LAB_004908d2;
    }
    if (iVar8 == 0) goto LAB_004908d2;
  }
  else {
    *(undefined4 *)((int)param_1 + 0x410) = 0;
LAB_004908d2:
    local_24 = (int *)((int)param_1 + 0x410);
    iVar8 = FUN_006eef60();
    fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_38 = (float *)(fVar16 + fVar16);
    local_30 = (float)local_38;
    FUN_0041d520();
    FUN_0041d540();
    local_38 = (float *)((float)local_38 * DAT_00baa4b0);
    local_30 = local_30 * DAT_00baa4b0;
    iVar8 = FUN_006eef60();
    fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4;
    *(float *)((int)param_1 + 0xbb0) = (float)local_38 * fVar16;
    *(float *)((int)param_1 + 0xbb4) = local_30 * fVar16;
    iVar8 = *local_24;
  }
  local_30 = (float)((uint)local_30 & 0xffffff00);
  *local_24 = iVar8 + 1;
  local_28 = (float *)((int)param_1 + 0x33c);
  local_58 = *(float *)((int)param_1 + 0x33c) + *(float *)((int)param_1 + 0xbb0);
  local_54 = *(float *)((int)param_1 + 0x340) + *(float *)((int)param_1 + 0xbb4);
  local_4c = local_54;
  local_48 = local_58;
  if (((*(uint *)((int)param_1 + 0x168) & 0x20000000) == 0) &&
     (local_2c = 0.0, *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0)
     ) {
    do {
      iVar8 = FUN_00417870(local_2c);
      fVar16 = *(float *)(iVar8 + 0x340) - local_4c;
      fVar15 = *(float *)(iVar8 + 0x33c) - local_48;
      fVar16 = fVar16 * fVar16 + fVar15 * fVar15;
      FUN_00435a50();
      if (fVar16 < DAT_00baaa88) {
        local_50 = local_48 - *(float *)(iVar8 + 0x33c);
        local_7c = local_4c - *(float *)(iVar8 + 0x340);
        fVar17 = local_50 * local_50 + local_7c * local_7c;
        FUN_00435a50();
        fVar16 = local_50;
        fVar15 = local_7c;
        if (0.0 < fVar17) {
          fVar17 = ((DAT_00baaa88 - fVar17) * DAT_00baa0a0) / fVar17;
          fVar16 = local_50 * fVar17;
          fVar15 = local_7c * fVar17;
        }
        local_48 = local_48 + fVar16;
        local_4c = local_4c + fVar15;
      }
      local_58 = local_48;
      local_54 = local_4c;
      iVar8 = FUN_00417870(local_2c);
      fVar16 = *(float *)(iVar8 + 0x340) - local_28[1];
      fVar15 = *(float *)(iVar8 + 0x33c) - *local_28;
      fVar16 = fVar16 * fVar16 + fVar15 * fVar15;
      FUN_00435a50();
      local_30 = (float)((uint)local_30 & 0xff);
      if (fVar16 < DAT_00baaa00) {
        local_30 = 1.401298e-45;
      }
      local_2c = (float)((int)local_2c + 1);
      param_1 = local_64;
    } while ((uint)local_2c <
             (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
  }
  AI_0041af60(local_90,4,0xffffffff,0xffffffff,1,0);
  local_14 = 0;
  local_38 = (float *)local_8c;
  if (local_84 != 0) {
    uVar7 = 0;
    do {
      iVar8 = *(int *)((int)local_38 + uVar7 * 4);
      local_2c = *(float *)(iVar8 + 0x33c);
      local_74 = *(float *)(iVar8 + 0x340);
      fVar16 = (local_74 - local_4c) * (local_74 - local_4c) +
               (local_2c - local_48) * (local_2c - local_48);
      FUN_00435a50();
      if (fVar16 < DAT_00baaa1c) {
        local_7c = local_48 - local_2c;
        local_50 = local_4c - local_74;
        fVar17 = local_7c * local_7c + local_50 * local_50;
        FUN_00435a50();
        fVar16 = local_7c;
        fVar15 = local_50;
        if (0.0 < fVar17) {
          fVar17 = ((DAT_00baaa1c - fVar17) * DAT_00baa0a0) / fVar17;
          fVar16 = local_7c * fVar17;
          fVar15 = local_50 * fVar17;
        }
        local_48 = local_48 + fVar16;
        local_4c = local_4c + fVar15;
      }
      fVar16 = (local_74 - local_28[1]) * (local_74 - local_28[1]) +
               (local_2c - *local_28) * (local_2c - *local_28);
      local_58 = local_48;
      local_54 = local_4c;
      FUN_00435a50();
      uVar6 = SUB41(local_30,0);
      if (fVar16 < DAT_00baaa00) {
        uVar6 = 1;
      }
      uVar7 = uVar7 + 1;
      local_30 = (float)CONCAT31(local_30._1_3_,uVar6);
      param_1 = local_64;
    } while (uVar7 < local_84);
  }
  uVar10 = *(undefined4 *)((int)param_1 + 0x370);
  FUN_00812f50(&local_68,&local_58,uVar10,uVar10,uVar10);
  FUN_00812f50(&local_58,(int)param_1 + 0x33c,0x42c80000,0x42c80000,0x42c80000);
  fVar15 = local_58 - *(float *)((int)param_1 + 0x33c);
  fVar16 = local_54 - *(float *)((int)param_1 + 0x340);
  if ((NAN(fVar15) == (fVar15 == 0.0)) && (NAN(fVar16) == (fVar16 == 0.0))) {
    if ((float)((uint)fVar15 & DAT_00bacb40) <= (float)((uint)fVar16 & DAT_00bacb40)) {
      fVar16 = 0.0;
      fVar15 = fVar15 + fVar15;
    }
    else {
      fVar15 = 0.0;
      fVar16 = fVar16 + fVar16;
    }
  }
  local_54 = *(float *)((int)param_1 + 0x16c);
  uVar7 = *(uint *)((int)param_1 + 0x168);
  fVar15 = fVar15 * DAT_00baa0a0 + local_68;
  fVar16 = fVar16 * DAT_00baa0a0 + local_64;
  if (((((uVar7 & 0x100) != 0) || ((uVar7 & 0x200) != 0)) || ((uVar7 & 0x800) != 0)) ||
     ((uVar7 & 0x1000800) != 0)) {
    pfVar9 = (float *)FUN_006bec40(&local_58,0);
    fVar15 = *pfVar9;
    fVar16 = pfVar9[1];
  }
  local_64 = fVar15 - *(float *)((int)param_1 + 0x33c);
  local_74 = fVar16 - *(float *)((int)param_1 + 0x340);
  fVar15 = local_74 * local_74 + local_64 * local_64;
  FUN_00435a50();
  fVar16 = local_74;
  if ((DAT_00baa3a4 < fVar15) && (0.0 < fVar15)) {
    fVar16 = (DAT_00baa3a4 / fVar15) * local_74;
    local_64 = (DAT_00baa3a4 / fVar15) * local_64;
  }
  fVar15 = *(float *)((int)param_1 + 0x36c);
  if (NAN(fVar15) == (fVar15 == 0.0)) {
    *(float *)((int)param_1 + 0x360) =
         (local_64 * *(float *)((int)param_1 + 0x39c)) / fVar15 + *(float *)((int)param_1 + 0x360);
    *(float *)((int)param_1 + 0x364) =
         (fVar16 * *(float *)((int)param_1 + 0x39c)) / fVar15 + *(float *)((int)param_1 + 0x364);
  }
  fVar16 = *(float *)((int)param_1 + 900) * DAT_00baa1f8;
  local_64 = 2.802597e-44;
  if (*(float *)((int)param_1 + 0x380) <= fVar16 && fVar16 != *(float *)((int)param_1 + 0x380)) {
    local_64 = 7.006492e-44;
  }
  if ((((char)local_30 != '\0') ||
      ((cVar5 = FUN_006ac710(0xf,*(undefined4 *)((int)param_1 + 0x20)), piVar11 = local_24,
       cVar5 != '\0' && (uVar7 = FUN_006eef60(), piVar11 = local_24, uVar7 % 100 < 0xf)))) &&
     (piVar11 = local_24, *(int *)((int)param_1 + 0xbc0) < 1)) {
    *(undefined4 *)((int)param_1 + 0xb64) = 6;
    *local_24 = 0;
    *(undefined4 *)((int)param_1 + 0xbc4) = 1;
    uVar7 = FUN_006eef60();
    if ((int)(uVar7 % 100) < (int)local_64) {
      uVar7 = FUN_006eef60();
      *(uint *)((int)param_1 + 0xbc4) = uVar7 % 3 + 3;
      *(undefined4 *)((int)param_1 + 0xb64) = 0x10;
    }
    FUN_006c04b0(1);
  }
  if (((((*(uint *)((int)param_1 + 0x16c) & 0x10000000) == 0) ||
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
      (cVar5 = FUN_006ac710(0xf,*(undefined4 *)((int)param_1 + 0x20)), cVar5 != '\0')) &&
     (uVar7 = FUN_006eef60(), uVar7 % 100 < 0x19)) {
    AI_0041af60(local_60,0x194,1,0xffffffff,1,0);
    local_14._0_1_ = 1;
    AI_0041af60(local_70,0x123,0xffffffff,0xffffffff,0,0);
    local_14 = CONCAT31(local_14._1_3_,2);
    if (local_54 == 0.0) {
      uVar7 = FUN_006eef60();
      if (0x3b < uVar7 % 100) {
LAB_00491070:
        uVar7 = FUN_006eef60();
        if (0x13 < uVar7 % 100) goto LAB_00491086;
      }
LAB_00491091:
      *(undefined4 *)((int)param_1 + 0xb64) = 8;
      *piVar11 = 0;
    }
    else {
      if ((uint)local_54 < 3) goto LAB_00491070;
LAB_00491086:
      if ((*(int *)((int)param_1 + 0x30) == 2) && ((uint)local_54 < 2)) goto LAB_00491091;
      if (local_64 == 0.0) {
        uVar7 = FUN_006eef60();
        if (0x31 < uVar7 % 100) goto LAB_004910c5;
LAB_0049117e:
        cVar5 = FUN_009be990();
        if ((((cVar5 != '\0') || (*(int *)((int)param_1 + 0x30) == 2)) ||
            (*(int *)((int)param_1 + 0x30) == 1)) ||
           (cVar5 = FUN_00417430(0,0x10000000), cVar5 != '\0')) goto LAB_004910c5;
        iVar8 = FUN_006be840();
        fVar16 = *(float *)(iVar8 + 0x340) - *(float *)((int)param_1 + 0x340);
        fVar15 = *(float *)(iVar8 + 0x33c) - *(float *)((int)param_1 + 0x33c);
        fVar16 = fVar16 * fVar16 + fVar15 * fVar15;
        FUN_00435a50();
        *(uint *)((int)param_1 + 0xb64) = (DAT_00baaa30 <= fVar16) + 0xd;
        *piVar11 = 0;
      }
      else {
        if ((local_64 == 1.401298e-45) && (uVar7 = FUN_006eef60(), uVar7 % 100 < 10))
        goto LAB_0049117e;
LAB_004910c5:
        if (*(int *)((int)param_1 + 0x30) != 2) {
          uVar7 = FUN_006eef60();
          if ((uVar7 % 100 < 0x4b) || (uVar10 = 10, *(int *)((int)param_1 + 0x30) == 1)) {
            uVar10 = 9;
          }
          *(undefined4 *)((int)param_1 + 0xb64) = uVar10;
          *piVar11 = 0;
          FUN_006c04b0(1);
        }
      }
    }
    if (local_70[0] == '\0') {
      local_14 = CONCAT31(local_14._1_3_,3);
      FUN_00a648b0(0,0);
    }
    if (local_60[0] == '\0') {
      local_14 = CONCAT31(local_14._1_3_,4);
      FUN_00a648b0(0,0);
    }
  }
  local_14 = 0xffffffff;
  if (local_90[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar14 = &DAT_00c7f618;
    }
    else {
      puVar14 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_38 != (float *)0x0) {
      uVar1 = *(uint *)((int)local_38 + -4);
      uVar7 = *puVar14;
      *puVar14 = *puVar14 - uVar1;
      puVar14[1] = puVar14[1] - (uint)(uVar7 < uVar1);
      free((void *)((int)local_38 + -4));
    }
    local_14 = 0xffffffff;
  }
LAB_00491d99:
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    ExceptionList = local_1c;
    return;
  }
  local_38 = (float *)0x3b0;
  FUN_00956780();
  FUN_0092dc30(local_38,0x3f800000,2,0,0x3f800000,0);
  ExceptionList = local_1c;
  return;
}

