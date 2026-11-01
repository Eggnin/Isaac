/* Local J460 decompiler output.
 * VA: 0x004855b0
 * Entry: 004855b0
 * Dispatcher: 0x006c2990
 * Types: 261
 * Identities: 261.0.0,261.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00486db0; instructions=1435
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=261; identities=261.0.0,261.1.0; dispatcher=0x006c2990;
   end=0x00486db0; instructions=1435 */

void __fastcall AI_004855b0(float *param_1)

{
  byte bVar1;
  undefined4 *puVar2;
  float fVar3;
  float fVar4;
  undefined *puVar5;
  char cVar6;
  uint uVar7;
  byte **ppbVar8;
  int iVar9;
  uint uVar10;
  float *pfVar11;
  undefined4 *puVar12;
  float *pfVar13;
  undefined4 uVar14;
  int *piVar15;
  byte *pbVar16;
  float fVar17;
  char *pcVar18;
  int iVar19;
  undefined4 extraout_ECX;
  bool bVar20;
  float fVar21;
  undefined4 uVar22;
  float local_1a8 [8];
  undefined4 local_188;
  undefined4 uStack_184;
  undefined4 local_180;
  float local_17c [8];
  undefined4 local_15c;
  undefined4 uStack_158;
  undefined4 local_154;
  undefined local_150 [8];
  undefined local_148 [8];
  float local_140;
  float local_13c;
  float local_138;
  float *local_134;
  float local_130;
  undefined4 *local_12c;
  float local_128;
  float local_124;
  undefined local_120 [4];
  float local_11c;
  undefined local_118 [4];
  float local_114;
  float local_110;
  float local_10c;
  float *local_108;
  float *local_104;
  float local_100;
  undefined4 *local_fc;
  undefined local_f8 [8];
  undefined *local_f0;
  undefined4 local_ec;
  uint local_64;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  fVar4 = _UNK_00babf2c;
  fVar3 = _UNK_00babf28;
  fVar21 = _UNK_00babf24;
  fVar17 = _DAT_00babf20;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2c7a;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_108 = param_1;
  local_24 = uVar7;
  if (param_1[0x2d9] == 0.0) {
    pfVar13 = param_1 + 0x79;
    param_1[0x2d9] = 4.203895e-45;
    param_1[0x104] = 0.0;
    local_15c = 0x3e828283;
    uStack_158 = 0x3e24a4a5;
    local_154 = 0x3e0c8c8d;
    if (pfVar13 != local_17c) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0x3e24a4a53e828283;
      *pfVar13 = fVar17;
      param_1[0x7a] = fVar21;
      param_1[0x7b] = fVar3;
      param_1[0x7c] = fVar4;
      param_1[0x83] = 0.1372549;
    }
    fVar4 = _UNK_00babf2c;
    fVar3 = _UNK_00babf28;
    fVar21 = _UNK_00babf24;
    fVar17 = _DAT_00babf20;
    if (param_1[0xb] == 1.401298e-45) {
      local_188 = 0x3f19999a;
      uStack_184 = 0x3ecccccd;
      local_180 = 0;
      if (pfVar13 != local_1a8) {
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x81) = 0x3ecccccd3f19999a;
        *pfVar13 = fVar17;
        param_1[0x7a] = fVar21;
        param_1[0x7b] = fVar3;
        param_1[0x7c] = fVar4;
        param_1[0x83] = 0.0;
      }
    }
    param_1[0x2f0] = 0.0;
    param_1[0x2f1] = 0.0;
    puStack_20 = &stack0xfffffffc;
    goto LAB_00486d88;
  }
  *(undefined *)(param_1 + 0x52) = 0;
  if ((param_1[0xc] == 1.401298e-45) &&
     (puVar12 = (undefined4 *)param_1[2], puVar12 != (undefined4 *)param_1[3])) {
    do {
      if ((puVar12[2] & 0x200) != 0) {
        *puVar12 = 0;
      }
      puVar12 = puVar12 + 0xe;
    } while (puVar12 != (undefined4 *)param_1[3]);
  }
  fVar17 = param_1[0x2d9];
  if (fVar17 == 4.203895e-45) {
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 == (byte **)0x0) {
LAB_0048576e:
      puStack_20 = &stack0xfffffffc;
      cVar6 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar8 = (byte **)*ppbVar8;
      }
      pbVar16 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar20 = bVar1 < *pbVar16;
        if (bVar1 != *pbVar16) {
LAB_00485753:
          uVar7 = -(uint)bVar20 | 1;
          goto LAB_00485758;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar20 = bVar1 < pbVar16[1];
        if (bVar1 != pbVar16[1]) goto LAB_00485753;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pbVar16 = pbVar16 + 2;
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_00485758:
      if ((uVar7 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(char *)((int)param_1[0x1f] + 0x34) != '\0' &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_0048576e;
    }
    puVar5 = puStack_20;
    if ((((uint)param_1[0x5b] & 0x10000000) == 0) ||
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
      local_110 = param_1[0xb];
      local_10c = 7.006492e-45;
      local_104 = (float *)0x1e;
      uVar7 = 10;
      if (local_110 != 1.401298e-45) {
        local_10c = 1.401298e-44;
      }
      iVar9 = 0xf;
      fVar17 = (float)(((int)param_1[0xe9] - (int)param_1[0xe8]) + (int)param_1[0x104]);
      param_1[0x104] = fVar17;
      if (local_110 != 1.401298e-45) {
        iVar9 = 0x1e;
      }
      if (iVar9 < (int)fVar17) {
        uVar10 = FUN_006eef60();
        if (local_110 != 1.401298e-45) {
          uVar7 = 0x14;
        }
        if ((uVar10 % uVar7 == 0) ||
           ((puVar5 = puStack_20, 0.0 < param_1[5] &&
            (uVar7 = FUN_006eef60(), puVar5 = puStack_20, uVar7 % (uint)local_10c == 0)))) {
          uVar7 = FUN_006eef60();
          if (uVar7 % 3 == 0) {
            param_1[0x2d9] = 1.261169e-44;
            puVar5 = puStack_20;
          }
          else {
            uVar7 = FUN_006eef60();
            if (((uVar7 & 1) == 0) && (cVar6 = FUN_00417430(0x1000a00,0), cVar6 == '\0')) {
              param_1[0x2d9] = 1.541428e-44;
              puVar5 = puStack_20;
            }
            else {
              param_1[0x2d9] = 1.401298e-44;
              puVar5 = puStack_20;
            }
          }
        }
      }
    }
  }
  else if (fVar17 == 1.121039e-44) {
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 == (byte **)0x0) {
LAB_0048590e:
      puStack_20 = &stack0xfffffffc;
      cVar6 = FUN_0040a5d0(&DAT_00b1d47c,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar8 = (byte **)*ppbVar8;
      }
      pbVar16 = &DAT_00b1d47c;
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar20 = bVar1 < *pbVar16;
        if (bVar1 != *pbVar16) {
LAB_004858f3:
          uVar10 = -(uint)bVar20 | 1;
          goto LAB_004858f8;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar20 = bVar1 < pbVar16[1];
        if (bVar1 != pbVar16[1]) goto LAB_004858f3;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pbVar16 = pbVar16 + 2;
      } while (bVar1 != 0);
      uVar10 = 0;
LAB_004858f8:
      if ((uVar10 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(char *)((int)param_1[0x1f] + 0x34) != '\0' &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_0048590e;
    }
    iVar9 = FUN_006be840(uVar7);
    local_108 = (float *)(*(float *)(iVar9 + 0x33c) - param_1[0xcf]);
    local_11c = *(float *)(iVar9 + 0x340) - param_1[0xd0];
    if (param_1[0x1f] != 0.0) {
      cVar6 = FUN_0040add0("Shoot");
      if (cVar6 != '\0') {
        if (param_1[0xc] == 2.802597e-45) {
          AI_0043ef30();
          local_64 = 3;
          local_ec = 0x3a83126f;
          if (param_1[0xb] == 1.401298e-45) {
            local_64 = 5;
          }
          local_f0 = &DAT_bf800000;
          local_100 = 10.0;
          local_fc = (undefined4 *)0x0;
          uVar22 = 8;
        }
        else {
          AI_0043ef30();
          local_104 = local_108;
          local_64 = -(uint)(param_1[0xc] != 1.401298e-45) & 3;
          if (param_1[0xb] == 1.401298e-45) {
            local_64 = 5;
          }
          fVar21 = (float)local_108 * (float)local_108 + local_11c * local_11c;
          FUN_00435a50();
          fVar17 = local_11c;
          pfVar13 = local_104;
          if (0.0 < fVar21) {
            fVar17 = local_11c * (DAT_00baa454 / fVar21);
            pfVar13 = (float *)((float)local_108 * (DAT_00baa454 / fVar21));
          }
          local_100 = (float)pfVar13 * DAT_00baa81c;
          local_fc = (undefined4 *)(fVar17 * DAT_00baa81c);
          uVar22 = 2;
        }
        FUN_006cb2e0(param_1 + 0xcf,&local_100,uVar22,local_f8);
        FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
      }
      if (param_1[0x1f] != 0.0) {
        cVar6 = FUN_0040ae70("Shoot");
        if (cVar6 != '\0') {
          *(bool *)(param_1 + 0x52) = 0.0 < (float)local_108;
        }
        if ((param_1[0x1f] != 0.0) && (puVar5 = puStack_20, *(char *)(param_1 + 0x23) != '\0'))
        goto LAB_00486cd2;
      }
    }
    param_1[0x2d9] = 4.203895e-45;
LAB_00486cc8:
    param_1[0x104] = 0.0;
    puVar5 = puStack_20;
  }
  else {
    if (fVar17 != 5.605194e-45) {
      if (fVar17 == 1.261169e-44) {
        ppbVar8 = (byte **)param_1[0x1f];
        if (ppbVar8 == (byte **)0x0) {
LAB_0048649b:
          puStack_20 = &stack0xfffffffc;
          cVar6 = FUN_0040a5d0("Whistle",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
        else {
          if (&DAT_0000000f < ppbVar8[5]) {
            ppbVar8 = (byte **)*ppbVar8;
          }
          pcVar18 = "Whistle";
          do {
            bVar1 = *(byte *)ppbVar8;
            bVar20 = bVar1 < (byte)*pcVar18;
            if (bVar1 != *pcVar18) {
LAB_00486480:
              uVar7 = -(uint)bVar20 | 1;
              goto LAB_00486485;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar8 + 1);
            bVar20 = bVar1 < ((byte *)pcVar18)[1];
            if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_00486480;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar18 = (char *)((byte *)pcVar18 + 2);
          } while (bVar1 != 0);
          uVar7 = 0;
LAB_00486485:
          if ((uVar7 != 0) ||
             ((puStack_20 = &stack0xfffffffc, *(char *)((int)param_1[0x1f] + 0x34) != '\0' &&
              (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_0048649b;
        }
        uVar22 = 0x19d;
        if (param_1[0xb] != 1.401298e-45) {
          uVar22 = 0x13b;
        }
        FUN_006d6ba0(uVar22,0x3f800000,0x3c,0,0x3f800000);
        if (param_1[0x1f] != 0.0) {
          cVar6 = FUN_0040add0(&DAT_00b1de50);
          if (cVar6 != '\0') {
            iVar19 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                     *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
            iVar9 = 0;
            if (0 < iVar19) {
              iVar9 = iVar19;
            }
            if (((iVar9 < 5) && (param_1[0xc] != 1.401298e-45)) || ((int)param_1[0x2f1] < 6)) {
              fVar17 = param_1[0xc];
              if (fVar17 == 0.0) {
                local_104 = (float *)0x2;
                if (param_1[0xb] != 1.401298e-45) {
                  local_104 = (float *)0x0;
                }
                uVar7 = FUN_006eef60();
                fVar17 = (float)((uVar7 & 1) + 1);
                local_124 = fVar17;
                cVar6 = FUN_00417430(0,0x10000000);
                if (cVar6 != '\0') {
                  iVar9 = FUN_006ac7e0(0xd9,0,extraout_ECX,0);
                  fVar21 = (float)(3 - iVar9);
                  local_124 = fVar17;
                  if ((int)fVar21 <= (int)fVar17) {
                    fVar17 = fVar21;
                    local_124 = fVar21;
                  }
                }
                if (0 < (int)fVar17) {
                  pfVar13 = param_1 + 0xcf;
                  do {
                    if (param_1[0xb] == 1.401298e-45) {
                      pfVar11 = (float *)FUN_006bec40(local_150,0);
                      local_114 = *pfVar11 - *pfVar13;
                      local_11c = pfVar11[1] - param_1[0xd0];
                      fVar17 = local_114 * local_114 + local_11c * local_11c;
                      FUN_00435a50();
                      if (0.0 < fVar17) {
                        local_114 = (DAT_00baa454 / fVar17) * local_114;
                        local_11c = local_11c * (DAT_00baa454 / fVar17);
                      }
                      uVar22 = FUN_006eef60();
                      local_134 = (float *)param_1[0xcf];
                      local_fc = (undefined4 *)param_1[0xd0];
                      iVar9 = FUN_006eef60();
                      local_10c = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)])
                                  * DAT_00ba9ff4 * DAT_00baa704;
                      local_10c = local_10c + local_10c;
                      iVar9 = FUN_006eef60();
                      local_110 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)])
                                  * DAT_00ba9ff4 * DAT_00baa81c;
                      fVar17 = local_10c;
                      FUN_0041d540();
                      local_140 = fVar17 * local_110 + local_114 * DAT_00baa8d0 + (float)local_134;
                      fVar17 = local_10c;
                      FUN_0041d520();
                      local_13c = fVar17 * local_110 + local_11c * DAT_00baa8d0 + (float)local_fc;
                      uVar22 = FUN_006fe410(0xd9,local_104,&local_140,&DAT_00c7b640,param_1,0,uVar22
                                            ,0);
                      piVar15 = (int *)__RTDynamicCast(uVar22,0,&IsaacRepentancePlus::Entity::
                                                                 RTTI_Type_Descriptor,
                                                       &IsaacRepentancePlus::Entity_NPC::
                                                        RTTI_Type_Descriptor,0);
                      fVar17 = (float)piVar15[0xdb];
                      fVar21 = local_11c * DAT_00baa854;
                      if (NAN(fVar17) == (fVar17 == 0.0)) {
                        piVar15[0xd8] =
                             (int)((local_114 * DAT_00baa854 * (float)piVar15[0xe7]) / fVar17 +
                                  (float)piVar15[0xd8]);
                        piVar15[0xd9] =
                             (int)((fVar21 * (float)piVar15[0xe7]) / fVar17 + (float)piVar15[0xd9]);
                      }
                      piVar15[0x5a] = piVar15[0x5a] & 0xfffffffb;
                      piVar15[0x5b] = piVar15[0x5b];
                      (**(code **)(*piVar15 + 0xc))();
                      piVar15[0x2d9] = 4;
                    }
                    else {
                      uVar22 = FUN_006eef60();
                      pfVar13 = (float *)FUN_00813520(local_148,pfVar13,0x42700000,0,0,0);
                      iVar9 = FUN_006eef60();
                      local_110 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)])
                                  * DAT_00ba9ff4 * DAT_00baa704;
                      local_110 = local_110 + local_110;
                      iVar9 = FUN_006eef60();
                      local_10c = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)])
                                  * DAT_00ba9ff4;
                      fVar17 = local_110;
                      FUN_0041d520();
                      local_fc = (undefined4 *)(fVar17 * local_10c * DAT_00baa81c + pfVar13[1]);
                      fVar17 = local_110;
                      FUN_0041d540();
                      param_1 = local_108;
                      local_130 = fVar17 * local_10c * DAT_00baa81c + *pfVar13;
                      local_12c = local_fc;
                      piVar15 = (int *)FUN_006fe410(0xd9,local_104,&local_130,&DAT_00c7b640,
                                                    local_108,0,uVar22,0);
                      (**(code **)(*piVar15 + 0xc))();
                    }
                    local_124 = (float)((int)local_124 - 1);
                    pfVar13 = param_1 + 0xcf;
                  } while (local_124 != 0.0);
                  local_124 = 0.0;
                }
              }
              else if (fVar17 == 1.401298e-45) {
                uVar22 = FUN_00813520(local_148,param_1 + 0xcf,0x42700000,0,0,0);
                uVar7 = FUN_00812c90(uVar22);
                if ((((0x1bf < uVar7) ||
                     (iVar9 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x24 + uVar7 * 4),
                     iVar9 == 0)) || ((iVar9 = *(int *)(iVar9 + 4), iVar9 == 1 || (iVar9 == 10))))
                   && (local_fc = *(undefined4 **)(DAT_00c71678 + 0x18300), local_fc[2] != 0x10)) {
                  uVar22 = FUN_007e90f0();
                  FUN_007ebca0(uVar7,0xe,1,uVar22,0);
                  param_1[0x2f1] = (float)((int)param_1[0x2f1] + 1);
                }
              }
              else if (fVar17 == 2.802597e-45) {
                local_fc = (undefined4 *)FUN_006eef60();
                local_134 = param_1 + 0xcf;
                pfVar13 = (float *)FUN_00813520(local_148,local_134,0x42700000,0,0,0);
                pfVar11 = (float *)FUN_0067f070(local_150);
                iVar9 = FUN_006eef60();
                param_1 = local_108;
                fVar17 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                         DAT_00ba9ff4;
                local_130 = fVar17 * *pfVar11 * DAT_00baa81c + *pfVar13;
                local_12c = (undefined4 *)(fVar17 * pfVar11[1] * DAT_00baa81c + pfVar13[1]);
                FUN_006fe410(0x55,0,&local_130,&DAT_00c7b640,local_108,0,local_fc,0);
                uVar7 = FUN_006eef60();
                if ((uVar7 & 1) == 0) {
                  local_fc = (undefined4 *)FUN_006eef60();
                  pfVar13 = (float *)FUN_00813520(local_120,local_134,0x42700000,0,0,0);
                  pfVar11 = (float *)FUN_0067f070(local_118);
                  iVar9 = FUN_006eef60();
                  param_1 = local_108;
                  fVar17 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                           DAT_00ba9ff4;
                  local_128 = fVar17 * *pfVar11 * DAT_00baa81c + *pfVar13;
                  local_124 = fVar17 * pfVar11[1] * DAT_00baa81c + pfVar13[1];
                  FUN_006fe410(0x55,0,&local_128,&DAT_00c7b640,local_108,0,local_fc,0);
                }
              }
              uVar22 = 2;
              goto LAB_00486bd7;
            }
          }
LAB_00486be8:
          if ((param_1[0x1f] == 0.0) || (puVar5 = puStack_20, *(char *)(param_1 + 0x23) == '\0'))
          goto LAB_00486bfb;
          goto LAB_00486cd2;
        }
LAB_00486bfb:
        param_1[0x2d9] = 1.121039e-44;
      }
      else {
        if (fVar17 == 1.401298e-44) {
          puStack_20 = &stack0xfffffffc;
          FUN_0040a380("Dance",0);
          uVar22 = 0x3c;
LAB_00486bd7:
          FUN_006d6ba0(0x48,0x3f19999a,uVar22,0,0x3f800000);
          goto LAB_00486be8;
        }
        if (fVar17 != 2.242078e-44) {
          puVar5 = &stack0xfffffffc;
          if (fVar17 == 1.541428e-44) {
            FUN_0040a380("BeforeSlide",0);
            FUN_006d6ba0(0x48,0x3f19999a,0x3c,0,0x3f800000);
            if ((param_1[0x1f] == 0.0) || (puVar5 = puStack_20, *(char *)(param_1 + 0x23) == '\0'))
            {
              param_1[0x2d9] = 5.605194e-45;
              goto LAB_00486cc8;
            }
          }
          goto LAB_00486cd2;
        }
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380("Tired",0);
        uVar7 = FUN_006eef60();
        fVar17 = param_1[0x104];
        uVar7 = uVar7 % 0x1e + 0x3c;
        uVar10 = uVar7 / 2;
        if (param_1[0xb] != 1.401298e-45) {
          uVar10 = uVar7;
        }
        param_1[0x104] = (float)((int)fVar17 + 1);
        puVar5 = puStack_20;
        if ((int)fVar17 <= (int)uVar10) goto LAB_00486cd2;
        param_1[0x2d9] = 4.203895e-45;
      }
      goto LAB_00486cc8;
    }
    if (param_1[0x104] != 0.0) {
      fVar17 = (float)(((int)param_1[0xe8] - (int)param_1[0xe9]) + (int)param_1[0x104]);
      param_1[0xdb] = param_1[0xdb] * DAT_00baa3e0;
      if ((int)fVar17 < 0) {
        fVar17 = 0.0;
      }
      param_1[0x104] = fVar17;
      puVar5 = &stack0xfffffffc;
      if ((fVar17 == 0.0) &&
         (puStack_20 = &stack0xfffffffc, cVar6 = FUN_0040a5d0("Slide",1), puVar5 = puStack_20,
         cVar6 != '\0')) {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        puVar5 = puStack_20;
      }
      goto LAB_00486cd2;
    }
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 == (byte **)0x0) {
LAB_00485b7c:
      puStack_20 = &stack0xfffffffc;
      cVar6 = FUN_0040a5d0("Slide",1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar8 = (byte **)*ppbVar8;
      }
      pcVar18 = "Slide";
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar20 = bVar1 < (byte)*pcVar18;
        if (bVar1 != *pcVar18) {
LAB_00485b61:
          uVar7 = -(uint)bVar20 | 1;
          goto LAB_00485b66;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar20 = bVar1 < ((byte *)pcVar18)[1];
        if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_00485b61;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar18 = (char *)((byte *)pcVar18 + 2);
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_00485b66:
      if ((uVar7 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(char *)((int)param_1[0x1f] + 0x34) != '\0' &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_00485b7c;
    }
    if ((param_1[0x1f] != 0.0) && (cVar6 = FUN_0040add0("Slide"), cVar6 != '\0')) {
      iVar9 = FUN_006be840();
      pfVar13 = param_1 + 0xcf;
      local_100 = *(float *)(iVar9 + 0x33c) - *pfVar13;
      local_fc = (undefined4 *)(*(float *)(iVar9 + 0x340) - param_1[0xd0]);
      pfVar11 = (float *)FUN_00a10030(&local_130);
      fVar17 = DAT_00baa81c;
      if (param_1[0xc] == 2.802597e-45) {
        fVar17 = DAT_00baa854;
      }
      fVar21 = pfVar11[1];
      param_1[0xd8] = fVar17 * *pfVar11 + param_1[0xd8];
      param_1[0xd9] = fVar17 * fVar21 + param_1[0xd9];
      FUN_006d6ba0(0x12d,0x3f800000,0x1e,0,0x3f800000);
      if ((param_1[0x2f0] == 0.0) && (uVar7 = FUN_006eef60(), uVar7 % 5 == 0)) {
        if (param_1[0xb] == 0.0) {
          local_114 = *(float *)(DAT_00c71678 + 0x18300);
          fVar17 = (float)FUN_00812c90(pfVar13);
          local_124 = fVar17;
          if (((((0x1bf < (uint)fVar17) ||
                (iVar9 = *(int *)((int)local_114 + 0x24 + (int)fVar17 * 4), iVar9 == 0)) ||
               (iVar9 = *(int *)(iVar9 + 4), iVar9 == 1)) || (iVar9 == 10)) &&
             (*(int *)((int)local_114 + 8) != 0x10)) {
            local_104 = (float *)FUN_007e90f0();
            if (((int)fVar17 < 0) || (0x1bf < (int)fVar17)) {
              FUN_00a112c0(0x10,"SpawnGridEntity: Grid index invalid\n");
            }
            if (((uint)fVar17 < 0x1c0) &&
               (*(int *)((int)local_114 + 0x76c + (int)fVar17 * 4) < 0x385)) {
              puVar12 = (undefined4 *)FUN_00a0f4c0(0x19c);
              local_14 = 7;
              local_fc = puVar12;
              if (puVar12 == (undefined4 *)0x0) {
                puVar12 = (undefined4 *)0x0;
              }
              else {
                FUN_00709c40();
                *puVar12 = IsaacRepentancePlus::GridEntity_Poop::vftable;
                puVar12[0x56] = 0;
                puVar12[0x5a] = 0;
                puVar12[0x5b] = 0xf;
                *(undefined *)(puVar12 + 0x56) = 0;
                puVar12[0x5d] = 0;
                puVar12[0x5e] = 0;
                puVar12[0x5f] = 0;
                puVar12[0x60] = 0;
                uVar22 = DAT_00c7b644;
                puVar12[0x61] = DAT_00c7b640;
                puVar12[0x62] = uVar22;
                uVar22 = DAT_00c7b644;
                puVar12[99] = DAT_00c7b640;
                puVar12[100] = uVar22;
                puVar12[0x65] = 0;
                puVar12[0x66] = 0;
              }
              local_14 = 0xffffffff;
              if (puVar12 != (undefined4 *)0x0) {
                puVar12[1] = 0xe;
                puVar12[9] = local_124;
                puVar2 = *(undefined4 **)((int)local_114 + 0x24 + (int)local_124 * 4);
                if (puVar2 != (undefined4 *)0x0) {
                  (**(code **)*puVar2)(1);
                }
                *(undefined4 **)((int)local_114 + 0x24 + (int)local_124 * 4) = puVar12;
                puVar12[2] = 0;
                puVar12[6] = 0;
                FUN_00709db0(local_104);
              }
            }
          }
        }
        else if (param_1[0xb] == 1.401298e-45) {
          uVar22 = FUN_006eef60();
          FUN_006fe410(0x127,0,pfVar13,&DAT_00c7b640,param_1,0,uVar22,0);
        }
        FUN_006d6ba0(0x25,0x3f800000,2,0,0x3f800000);
      }
    }
    param_1[0xdb] = param_1[0xdb] * DAT_00baa444;
    if ((param_1[0x1f] != 0.0) && (cVar6 = FUN_0040ae70("Slide"), cVar6 != '\0')) {
      fVar17 = DAT_00baa454;
      if (param_1[0xc] == 2.802597e-45) {
        fVar17 = DAT_00baa528;
      }
      pfVar13 = (float *)FUN_00a10100(&local_130,fVar17);
      fVar17 = param_1[0xdb];
      if (NAN(fVar17) == (fVar17 == 0.0)) {
        fVar21 = pfVar13[1];
        param_1[0xd8] = (param_1[0xe7] * *pfVar13) / fVar17 + param_1[0xd8];
        param_1[0xd9] = (fVar21 * param_1[0xe7]) / fVar17 + param_1[0xd9];
      }
      if (param_1[0xb] == 1.401298e-45) {
        iVar9 = FUN_006ac760();
        if (iVar9 != 0) {
          uVar22 = FUN_00407170();
          FUN_00703be0(param_1 + 0xcf,param_1[0xdc] + DAT_00baa87c,param_1,0x3f000000,0,uVar22);
        }
        cVar6 = FUN_00417430(0x40,0);
        uVar22 = 0x17;
        if (cVar6 == '\0') {
          uVar22 = 0x5e;
        }
        cVar6 = FUN_00417430(0x80,0);
        if (cVar6 != '\0') {
          uVar22 = 0x19;
        }
        uVar14 = FUN_006eef60();
        uVar22 = FUN_006fe410(1000,uVar22,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar14,0);
        piVar15 = (int *)__RTDynamicCast(uVar22,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor
                                         ,&IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,
                                         0);
        iVar9 = FUN_006eef60();
        fVar21 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa1d4 + DAT_00baa380;
        fVar17 = fVar21 * DAT_00c3793c;
        piVar15[0x3a] = (int)(fVar21 * DAT_00c37940);
        piVar15[0x39] = (int)fVar17;
        (**(code **)(*piVar15 + 0xc))();
      }
    }
    *(bool *)(param_1 + 0x52) = 0.0 < param_1[0xd8];
    cVar6 = FUN_006ac710(2,param_1[8]);
    if (cVar6 != '\0') {
      iVar9 = FUN_006eef60();
      piVar15 = (int *)FUN_006b64d0((float)((double)iVar9 +
                                           (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                                    * DAT_00baa2d0 + DAT_00baa198);
      local_30 = 0x3e828283;
      local_40 = ZEXT816(0);
      local_2c = 0x3e24a4a5;
      local_50 = _DAT_00babf20;
      fStack_4c = _UNK_00babf24;
      fStack_48 = _UNK_00babf28;
      fStack_44 = _UNK_00babf2c;
      local_28 = 0x3e0c8c8d;
      (**(code **)(*piVar15 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
    }
    if (((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) ||
       (cVar6 = FUN_00417430(0x1000a00,0), cVar6 != '\0')) {
      if (param_1[0xc] == 1.401298e-45) {
        iVar9 = 3;
      }
      else {
        iVar9 = (param_1[0xb] != 1.401298e-45) + 1;
        if (param_1[0xc] == 2.802597e-45) {
          iVar9 = 0;
        }
      }
      if ((int)param_1[0x2f0] < iVar9) {
        uVar7 = FUN_006eef60();
        param_1[0x104] = (float)((uVar7 & 3) + 0xc);
        param_1[0x2f0] = (float)((int)param_1[0x2f0] + 1);
      }
      else {
        param_1[0x2d9] = 2.242078e-44;
        param_1[0x104] = 0.0;
        param_1[0x2f0] = 0.0;
      }
    }
    puVar5 = puStack_20;
    if (*(char *)(param_1 + 100) != '\0') {
      pfVar13 = (float *)FUN_0081e9d0(&local_130,0);
      param_1[0xcd] = *pfVar13;
      param_1[0xce] = pfVar13[1];
      FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
      iVar9 = FUN_006eef60();
      local_104 = param_1 + 0x67;
      local_138 = *local_104 * DAT_00baaa94 + param_1[0xcf];
      fVar17 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa904 * DAT_00baad34;
      local_134 = (float *)(param_1[0x68] * DAT_00baaa94 + param_1[0xd0]);
      FUN_00812f50(&local_100,&local_138,fVar17,fVar17,fVar17);
      iVar9 = FUN_00456620(&local_100);
      puVar5 = puStack_20;
      if ((iVar9 != 0) && ((*(int *)(iVar9 + 4) == 0xf || (*(int *)(iVar9 + 4) == 0x10)))) {
        iVar9 = FUN_006eef60();
        fVar17 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4;
        piVar15 = (int *)FUN_006b64d0(fVar17 + fVar17 + DAT_00baa454);
        piVar15[0xcf] = (int)local_100;
        piVar15[0xd0] = (int)local_fc;
        (**(code **)(*piVar15 + 0x3c))(local_108 + 0x79,0xffffffff,0xff,0,1);
        iVar9 = FUN_0067f170();
        fVar17 = *(float *)(iVar9 + 4);
        FUN_00499d60();
        fVar17 = fVar17 * DAT_00baa948;
        piVar15[0x5a] = piVar15[0x5a] | 0x2000;
        piVar15[0x5b] = piVar15[0x5b];
        piVar15[0x3b] = (int)(fVar17 + DAT_00baa9b4);
        (**(code **)(*piVar15 + 0xc))();
        param_1 = local_108;
        puVar5 = puStack_20;
      }
    }
  }
LAB_00486cd2:
  puStack_20 = puVar5;
  iVar9 = DAT_00c71678;
  if (((((uint)param_1[0x5a] & 0x4000) == 0) && (cVar6 = FUN_006fd350(), cVar6 == '\0')) &&
     ((*(int *)(iVar9 + 0x264f8) + (int)param_1[8]) % 5 == 0)) {
    iVar9 = FUN_006eef60();
    piVar15 = (int *)FUN_006b64d0((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)])
                                  * DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
    (**(code **)(*piVar15 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
  }
  if (param_1[0x2d9] != 5.605194e-45) {
    param_1[0xdb] = param_1[0xdb] * DAT_00baa354;
  }
LAB_00486d88:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

