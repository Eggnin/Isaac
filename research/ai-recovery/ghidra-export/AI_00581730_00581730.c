/* Local J460 decompiler output.
 * VA: 0x00581730
 * Entry: 00581730
 * Dispatcher: 0x006c2990
 * Types: 911
 * Identities: 911.0.0,911.1.0,911.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00582a60; instructions=1049
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=911; identities=911.0.0,911.1.0,911.2.0;
   dispatcher=0x006c2990; end=0x00582a60; instructions=1049 */

void __fastcall AI_00581730(int param_1)

{
  byte bVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined *puVar4;
  char cVar5;
  undefined4 uVar6;
  int **ppiVar7;
  int iVar8;
  int *piVar9;
  byte **ppbVar10;
  byte **ppbVar11;
  byte *pbVar12;
  char *pcVar13;
  uint uVar14;
  int iVar15;
  uint uVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  undefined8 uStack_1ec;
  float fStack_1e4;
  int local_1e0;
  undefined4 local_1dc;
  int *local_1d8;
  float local_1d4;
  int local_1d0;
  float local_1cc;
  char *local_1c8;
  int *local_1c4;
  int *local_1c0;
  int *local_1bc;
  byte local_1b5;
  float local_1b4;
  int *local_1b0;
  int *local_1ac;
  int *local_1a8;
  float local_1a4;
  undefined local_1a0 [12];
  undefined4 local_194;
  undefined4 local_18c;
  undefined4 local_148;
  undefined4 local_144;
  undefined local_f8 [8];
  int local_f0;
  int local_ec;
  int local_e4;
  undefined4 local_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 local_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined8 local_ac;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_6c;
  int local_50;
  int iStack_4c;
  int iStack_48;
  undefined4 uStack_44;
  int local_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  undefined8 local_30;
  int local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  int *local_14;
  
  iVar15 = DAT_00c71678;
  puStack_20 = &stack0xfffffffc;
  local_14 = (int *)0xffffffff;
  puStack_18 = &LAB_00af5350;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  *(undefined4 *)(param_1 + 0x36c) = 0x3f19999a;
  local_1d0 = *(int *)(iVar15 + 0x18300);
  local_1b5 = *(float *)(param_1 + 0x380) / *(float *)(param_1 + 900) < DAT_00baa2d0;
  iVar15 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  local_1e0 = iVar15;
  puVar4 = &stack0xfffffffc;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    puStack_20 = &stack0xfffffffc;
    FUN_004071f0(&DAT_00c34e80);
    *(undefined4 *)(param_1 + 0xb64) = 3;
    FUN_0040a380("Heartbeat",0);
    *(undefined4 *)(param_1 + 0x350) = 0x41200000;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    puVar4 = puStack_20;
    break;
  case 3:
    if ((*(int *)(param_1 + 0x7c) == 0) ||
       (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')) {
      local_1c8 = "Heartbeat";
      pcVar13 = "HeartbeatFast";
      if (!(bool)local_1b5) {
        pcVar13 = "Heartbeat";
      }
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(pcVar13,0);
      if (*(int *)(param_1 + 0x7c) != 0) goto LAB_00581873;
    }
    else {
LAB_00581873:
      cVar5 = FUN_0040add0("Shoot");
      if (cVar5 != '\0') {
        FUN_00703670(6);
        FUN_006d6ba0(local_1b5 + 0x141,0x3f800000,2,0,0x3f800000);
        if (*(int *)(param_1 + 0xba4) < 1) {
          FUN_00581430();
        }
        else {
          *(int *)(param_1 + 0xba4) = *(int *)(param_1 + 0xba4) + -1;
          iVar15 = *(int *)(DAT_00c71678 + 0x18300);
          local_1d4 = *(float *)(iVar15 + 0x14) + DAT_00baa87c;
          local_1d8 = *(int **)(iVar15 + 0x18);
          local_1a4 = *(float *)(iVar15 + 0x1c) - DAT_00baa87c;
          AI_0043ef30();
          local_a4 = DAT_00c34cf0;
          local_cc = _DAT_00c34cc8;
          uStack_c8 = uRam00c34ccc;
          uStack_c4 = uRam00c34cd0;
          uStack_c0 = uRam00c34cd4;
          local_ec = 0x3ef5c28f;
          local_a0 = 0x12000;
          local_9c = 1;
          local_bc = _DAT_00c34cd8;
          uStack_b8 = uRam00c34cdc;
          uStack_b4 = uRam00c34ce0;
          uStack_b0 = uRam00c34ce4;
          local_78 = 0x10000;
          local_ac = DAT_00c34ce8;
          local_1a4 = local_1a4 - local_1d4;
          local_74 = 0;
          local_6c = 0x1e;
          local_1b0 = (int *)0x3;
          do {
            iVar15 = FUN_006eef60();
            local_e4 = 0x3fcccccd;
            local_1c8 = (char *)((float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]
                                        ) * DAT_00ba9ff4 * local_1a4 + local_1d4);
            iVar15 = FUN_006eef60();
            local_1a8 = (int *)((float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)])
                                * DAT_00ba9ff4 * DAT_00baa75c);
            piVar9 = (int *)FUN_006ccdd0(1,&DAT_00c7b640,0,local_f8);
            piVar9[0x105] = local_f0;
            piVar9[0x106] = local_ec;
            piVar9[0x108] = local_e4;
            piVar9[0xcf] = (int)local_1c8;
            piVar9[0xd0] = (int)local_1d8;
            piVar9[0xd8] = 0;
            piVar9[0xd9] = (int)local_1a8;
            local_50 = piVar9[0x6e];
            iStack_4c = piVar9[0x6f];
            iStack_48 = piVar9[0x70];
            local_40 = piVar9[0x72];
            iStack_3c = piVar9[0x73];
            iStack_38 = piVar9[0x74];
            iStack_34 = piVar9[0x75];
            local_30 = *(undefined8 *)(piVar9 + 0x76);
            local_28 = piVar9[0x78];
            uStack_44 = 0;
            (**(code **)(*piVar9 + 0x3c))(&local_50,0xf,1,1,1);
            local_1b0 = (int *)((int)local_1b0 + -1);
            piVar9[0xd5] = 2000;
          } while (local_1b0 != (int *)0x0);
          local_1b0 = (int *)0x0;
          iVar15 = local_1e0;
        }
      }
    }
    iVar8 = *(int *)(param_1 + 0x410) + iVar15;
    *(int *)(param_1 + 0x410) = iVar8;
    if (*(int *)(param_1 + 0xbc0) < 0) {
      *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + iVar15;
    }
    puVar4 = puStack_20;
    if (0x1d < iVar8) {
      uVar14 = FUN_006eef60();
      piVar9 = (int *)(uVar14 % 0x3c);
      puVar4 = puStack_20;
      if (piVar9 == (int *)0x0) {
        *(undefined4 *)(param_1 + 0x410) = 0;
        *(undefined4 *)(param_1 + 0xba0) = 0xffffffff;
        local_1a8 = (int *)0xa;
        local_1c4 = piVar9;
        local_1c0 = piVar9;
        local_1bc = piVar9;
        local_1ac = piVar9;
        local_14 = piVar9;
        FUN_004a11c0(0,&local_1ac);
        if (*(int *)(param_1 + 0xba4) < 1) {
          uVar14 = 0;
          uVar16 = (int)local_1c0 - (int)local_1c4 >> 3;
          if (uVar16 != 0) {
            do {
              if (local_1c4[uVar14 * 2] == 1) {
                piVar9 = local_1c4 + uVar14 * 2 + 1;
                *piVar9 = *piVar9 + 5;
                if (*piVar9 < 0) {
                  local_1c4[uVar14 * 2 + 1] = 0;
                }
                goto LAB_00581c3f;
              }
              uVar14 = uVar14 + 1;
            } while (uVar14 < uVar16);
          }
          local_1ac = (int *)0x1;
          local_1a8 = (int *)&DAT_00000005;
          if (local_1c0 == local_1bc) {
            FUN_004a11c0(local_1c0,&local_1ac);
          }
          else {
            *local_1c0 = 1;
            local_1c0[1] = 5;
            local_1c0 = local_1c0 + 2;
          }
LAB_00581c3f:
          if (-1 < *(int *)(param_1 + 0xbc0)) {
            uVar14 = 0;
            uVar16 = (int)local_1c0 - (int)local_1c4 >> 3;
            if (uVar16 != 0) {
              do {
                if (local_1c4[uVar14 * 2] == 2) {
                  piVar9 = local_1c4 + uVar14 * 2 + 1;
                  *piVar9 = *piVar9 + 5;
                  if (*piVar9 < 0) {
                    local_1c4[uVar14 * 2 + 1] = 0;
                  }
                  goto LAB_00581cb8;
                }
                uVar14 = uVar14 + 1;
              } while (uVar14 < uVar16);
            }
            local_1ac = (int *)0x2;
            local_1a8 = (int *)&DAT_00000005;
            if (local_1c0 == local_1bc) {
              FUN_004a11c0(local_1c0,&local_1ac);
            }
            else {
              *local_1c0 = 2;
              local_1c0[1] = 5;
              local_1c0 = local_1c0 + 2;
            }
          }
        }
LAB_00581cb8:
        uVar14 = FUN_006eef60();
        fStack_1e4 = DAT_00b1f674;
        uStack_1ec._0_4_ = (undefined4)DAT_00b1f66c;
        uVar6 = (undefined4)uStack_1ec;
        uStack_1ec._4_4_ = (undefined4)((ulonglong)DAT_00b1f66c >> 0x20);
        uVar2 = uStack_1ec._4_4_;
        uStack_1ec = DAT_00b1f66c;
        iVar15 = FUN_0049cbf0(uVar14 | 1,uVar6,uVar2,DAT_00b1f674);
        if (iVar15 == 0) {
          FUN_0040a380("SpitDown",0);
          *(undefined4 *)(param_1 + 0xb64) = 8;
        }
        else if (iVar15 == 1) {
          FUN_0040a380("Summon",0);
          *(undefined4 *)(param_1 + 0xb64) = 0xd;
          FUN_006d6ba0(0xa7,0x3f800000,10,0,0x3f19999a);
          *(undefined4 *)(param_1 + 0xba4) = 10;
        }
        else if (iVar15 == 2) {
          FUN_0040a380("Retract",0);
          *(undefined4 *)(param_1 + 0xb64) = 4;
          uVar14 = FUN_006eef60();
          *(uint *)(param_1 + 0xbc0) = uVar14 & 1;
        }
        local_14 = (int *)0xffffffff;
        puVar4 = puStack_20;
        if (local_1c4 != (int *)0x0) {
          uVar14 = (int)local_1bc - (int)local_1c4 & 0xfffffff8;
          piVar9 = local_1c4;
          if (0xfff < uVar14) {
            piVar9 = (int *)local_1c4[-1];
            uVar14 = uVar14 + 0x23;
            if (0x1f < (uint)((int)local_1c4 + (-4 - (int)piVar9))) {
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(piVar9,uVar14);
          puVar4 = puStack_20;
        }
      }
    }
    break;
  case 4:
    if (((*(int *)(param_1 + 0x7c) == 0) ||
        (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x8c) == '\0')) &&
       (puStack_20 = &stack0xfffffffc, FUN_0040a380("HeartbeatRetracted",0),
       *(int *)(param_1 + 0xba0) < 0)) {
      *(undefined4 *)(param_1 + 0xba0) = 0;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar5 = FUN_0040add0("Sound");
      if (cVar5 != '\0') {
        FUN_006d6ba0(0xd4,0x3f800000,2,0,0x3f800000);
        *(undefined4 *)(param_1 + 0x188) = 0;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (cVar5 = FUN_0040add0("Shoot"), cVar5 != '\0')) {
        FUN_00703670(6);
        FUN_006d6ba0(0x141,0x3f800000,2,0,0x3f800000);
        FUN_00581430();
      }
    }
    local_1c8 = (char *)0x0;
    puVar4 = puStack_20;
    if (0 < local_1e0) {
      do {
        iVar8 = local_1d0;
        fVar18 = DAT_00baa9a0;
        iVar15 = *(int *)(param_1 + 0xba0);
        puVar4 = puStack_20;
        if (iVar15 < 0) break;
        local_1a8 = (int *)(iVar15 + 1);
        *(int **)(param_1 + 0xba0) = local_1a8;
        uVar14 = iVar15 - 0x1d;
        if ((uVar14 < 0x3d) && (uVar14 == ((int)uVar14 / 0xf) * 0xf)) {
          if (*(int *)(param_1 + 0xbc0) == 0) {
            local_1b0 = (int *)(*(float *)(local_1d0 + 0x14) - fVar18);
          }
          else {
            local_1b0 = (int *)(*(float *)(local_1d0 + 0x1c) + fVar18);
          }
          uVar14 = FUN_006eef60();
          if ((uVar14 & 1) == 0) {
            iVar15 = FUN_006be840();
            local_1d4 = *(float *)(iVar15 + 0x340);
          }
          else {
            iVar15 = FUN_006eef60();
            local_1d4 = *(float *)(iVar8 + 0x18) + DAT_00baa904;
            local_1d4 = ((*(float *)(iVar8 + 0x20) - DAT_00baa904) - local_1d4) *
                        (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                        DAT_00ba9ff4 + local_1d4;
          }
          uVar6 = FUN_006eef60();
          uStack_1ec = CONCAT44(local_1b0,(undefined4)uStack_1ec);
          fStack_1e4 = local_1d4;
          piVar9 = (int *)FUN_00428b20(0x37,0,(int)&uStack_1ec + 4,&DAT_00c7b640,param_1,0,uVar6);
          piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
          piVar9[0x5b] = piVar9[0x5b];
          local_1d8 = piVar9;
          (**(code **)(*piVar9 + 0xc))();
          piVar9[0x2d9] = 5;
          piVar9[0x61] = 0;
          fVar18 = DAT_00baa454;
          if (*(int *)(param_1 + 0xbc0) != 0) {
            fVar18 = DAT_00baad50;
          }
          fVar18 = fVar18 * DAT_00baa548;
          local_1a8 = piVar9 + 0x12;
          piVar9[0xce] = 0;
          piVar9[0xcd] = (int)fVar18;
          ppbVar10 = (byte **)piVar9[0x1f];
          if (ppbVar10 == (byte **)0x0) {
LAB_00582346:
            cVar5 = FUN_0040a5d0(&DAT_00b60d94,1);
            piVar3 = local_1a8;
            if (cVar5 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(piVar3 + 0x11) = 1;
              piVar9 = local_1d8;
            }
          }
          else {
            if (&DAT_0000000f < ppbVar10[5]) {
              ppbVar10 = (byte **)*ppbVar10;
            }
            pbVar12 = &DAT_00b60d94;
            do {
              bVar1 = *(byte *)ppbVar10;
              bVar17 = bVar1 < *pbVar12;
              if (bVar1 != *pbVar12) {
LAB_00582326:
                uVar14 = -(uint)bVar17 | 1;
                goto LAB_0058232b;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar10 + 1);
              bVar17 = bVar1 < pbVar12[1];
              if (bVar1 != pbVar12[1]) goto LAB_00582326;
              ppbVar10 = (byte **)((int)ppbVar10 + 2);
              pbVar12 = pbVar12 + 2;
            } while (bVar1 != 0);
            uVar14 = 0;
LAB_0058232b:
            if ((uVar14 != 0) ||
               ((*(char *)(piVar9[0x1f] + 0x34) != '\0' && (*(char *)(piVar9 + 0x23) == '\0'))))
            goto LAB_00582346;
          }
          *(bool *)(piVar9 + 0x52) = *(int *)(param_1 + 0xbc0) != 0;
          iVar15 = FUN_006eef60();
          local_1a4 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa120 + DAT_00baa418;
          if (*(int *)(param_1 + 0xc64) == 0x12) {
            local_1a4 = local_1a4 + DAT_00baa2d0;
            local_1b0 = (int *)0xdd;
          }
          else {
            if (*(int *)(param_1 + 0xc64) == 0x13) {
              local_1a4 = local_1a4 * DAT_00baa2d0;
            }
            local_1b0 = (int *)0xdd;
          }
LAB_00582629:
          FUN_00956780();
          FUN_0092dc30(local_1b0,0x3f800000,2,0,local_1a4,0);
        }
        else if ((local_1a8 == (int *)0x78) && (uVar14 = FUN_006eef60(), uVar14 % 3 == 0)) {
          if (*(int *)(param_1 + 0xbc0) == 0) {
            local_1b0 = (int *)(*(float *)(local_1d0 + 0x14) - DAT_00baaa00);
          }
          else {
            local_1b0 = (int *)(*(float *)(local_1d0 + 0x1c) + DAT_00baaa00);
          }
          iVar15 = FUN_006be840();
          local_1a8 = *(int **)(iVar15 + 0x340);
          uVar6 = FUN_006eef60();
          local_1c0 = local_1b0;
          local_1bc = local_1a8;
          piVar9 = (int *)FUN_00428b20(0x356,0,&local_1c0,&DAT_00c7b640,param_1,0,uVar6);
          piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
          piVar9[0x5b] = piVar9[0x5b];
          local_1d8 = piVar9;
          (**(code **)(*piVar9 + 0xc))();
          piVar9[0x2d9] = 5;
          piVar9[0x61] = 0;
          fVar18 = DAT_00baa454;
          if (*(int *)(param_1 + 0xbc0) != 0) {
            fVar18 = DAT_00baad50;
          }
          local_1a8 = piVar9 + 0x12;
          piVar9[0xcd] = (int)fVar18;
          piVar9[0xce] = 0;
          ppbVar10 = (byte **)piVar9[0x1f];
          if (ppbVar10 == (byte **)0x0) {
LAB_00582580:
            cVar5 = FUN_0040a5d0("MoveHori",1);
            piVar3 = local_1a8;
            if (cVar5 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(piVar3 + 0x11) = 1;
              piVar9 = local_1d8;
            }
          }
          else {
            if (&DAT_0000000f < ppbVar10[5]) {
              ppbVar10 = (byte **)*ppbVar10;
            }
            pcVar13 = "MoveHori";
            do {
              bVar1 = *(byte *)ppbVar10;
              bVar17 = bVar1 < (byte)*pcVar13;
              if (bVar1 != *pcVar13) {
LAB_00582560:
                uVar14 = -(uint)bVar17 | 1;
                goto LAB_00582565;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar10 + 1);
              bVar17 = bVar1 < ((byte *)pcVar13)[1];
              if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00582560;
              ppbVar10 = (byte **)((int)ppbVar10 + 2);
              pcVar13 = (char *)((byte *)pcVar13 + 2);
            } while (bVar1 != 0);
            uVar14 = 0;
LAB_00582565:
            if ((uVar14 != 0) ||
               ((*(char *)(piVar9[0x1f] + 0x34) != '\0' && (*(char *)(piVar9 + 0x23) == '\0'))))
            goto LAB_00582580;
          }
          *(bool *)(piVar9 + 0x52) = *(int *)(param_1 + 0xbc0) != 0;
          iVar15 = FUN_006eef60();
          local_1a4 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa120 + DAT_00baa418;
          if (*(int *)(param_1 + 0xc64) == 0x12) {
            local_1a4 = local_1a4 + DAT_00baa2d0;
          }
          else if (*(int *)(param_1 + 0xc64) == 0x13) {
            local_1a4 = local_1a4 * DAT_00baa2d0;
          }
          local_1b0 = (int *)0x1fe;
          goto LAB_00582629;
        }
        if (0x96 < *(int *)(param_1 + 0xba0)) {
          *(undefined4 *)(param_1 + 0x188) = 4;
          ppbVar10 = *(byte ***)(param_1 + 0x7c);
          if (ppbVar10 == (byte **)0x0) {
LAB_005826de:
            cVar5 = FUN_0040a5d0("ComeDown",1);
            if (cVar5 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x8c) = 1;
            }
          }
          else {
            ppbVar11 = ppbVar10;
            if (&DAT_0000000f < ppbVar10[5]) {
              ppbVar11 = (byte **)*ppbVar10;
            }
            pcVar13 = "ComeDown";
            do {
              bVar1 = *(byte *)ppbVar11;
              bVar17 = bVar1 < (byte)*pcVar13;
              if (bVar1 != *pcVar13) {
LAB_005826c0:
                uVar14 = -(uint)bVar17 | 1;
                goto LAB_005826c5;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar11 + 1);
              bVar17 = bVar1 < ((byte *)pcVar13)[1];
              if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_005826c0;
              ppbVar11 = (byte **)((int)ppbVar11 + 2);
              pcVar13 = (char *)((byte *)pcVar13 + 2);
            } while (bVar1 != 0);
            uVar14 = 0;
LAB_005826c5:
            if ((uVar14 != 0) ||
               ((*(byte *)(ppbVar10 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
            goto LAB_005826de;
          }
          local_1a4 = DAT_00baa454;
          *(undefined4 *)(param_1 + 0xb64) = 3;
          fVar18 = DAT_00baa528;
          if ((*(int *)(param_1 + 0xc64) == 0x12) ||
             (fVar18 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
            local_1a4 = fVar18;
          }
          local_1b0 = (int *)0xd5;
          FUN_00956780();
          FUN_0092dc30(local_1b0,0x3f800000,2,0,local_1a4,0);
          *(undefined4 *)(param_1 + 0xbc0) = 0xffffffa6;
        }
        local_1c8 = local_1c8 + 1;
        puVar4 = puStack_20;
      } while ((int)local_1c8 < local_1e0);
    }
    break;
  case 8:
    puStack_20 = &stack0xfffffffc;
    if (*(int *)(param_1 + 0x7c) != 0) {
      puStack_20 = &stack0xfffffffc;
      cVar5 = FUN_0040add0("Shoot");
      if (cVar5 != '\0') {
        FUN_00703670(10);
        FUN_006d6ba0(0xd5,0x3f800000,2,0,0x3f800000);
        AI_0043ef30();
        bVar17 = *(int *)(param_1 + 0xb64) != 4;
        local_194 = 0x3f400000;
        local_148 = 0;
        local_144 = 0x20000;
        local_18c = 0x400ccccd;
        local_1cc = 0.0;
        local_1c8 = (char *)0x40a00000;
        if (bVar17) {
          local_1ac = (int *)0x0;
          local_1a8 = (int *)0x41a00000;
        }
        else {
          local_1dc = 0;
          local_1d8 = (int *)0xc1a00000;
        }
        ppiVar7 = &local_1a8;
        if (!bVar17) {
          ppiVar7 = &local_1d8;
        }
        local_1b4 = *(float *)(param_1 + 0x33c) + 0.0;
        local_1b0 = (int *)((float)*ppiVar7 + *(float *)(param_1 + 0x340));
        FUN_0057e430(&local_1b4,&local_1cc,local_1a0);
        uVar6 = FUN_00407170();
        bVar17 = *(int *)(param_1 + 0xb64) != 4;
        if (bVar17) {
          local_1ac = (int *)0x0;
          local_1a8 = (int *)0x41a00000;
        }
        else {
          local_1dc = 0;
          local_1d8 = (int *)0xc1a00000;
        }
        ppiVar7 = &local_1a8;
        if (!bVar17) {
          ppiVar7 = &local_1d8;
        }
        local_1cc = *(float *)(param_1 + 0x33c) + 0.0;
        local_1c8 = (char *)((float)*ppiVar7 + *(float *)(param_1 + 0x340));
        iVar15 = FUN_006d7cf0(&DAT_00c7b640,uVar6,&DAT_00c7b640);
        iVar8 = FUN_006eef60();
        *(float *)(iVar15 + 0xec) =
             (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baab30;
        iVar8 = FUN_006eef60();
        fVar18 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa280 + DAT_00baa4b0;
        fVar19 = fVar18 * DAT_00c37940;
        fVar18 = fVar18 * DAT_00c3793c;
        *(undefined4 *)(iVar15 + 0x354) = 2000;
        *(float *)(iVar15 + 0xe8) = fVar19;
        *(float *)(iVar15 + 0xe4) = fVar18;
      }
      goto LAB_0058202d;
    }
    goto LAB_00582040;
  case 0xd:
    uVar14 = FUN_0040a780(local_24);
    if ((uVar14 & 1) == 0) {
      FUN_00703670(4);
    }
LAB_0058202d:
    if ((*(int *)(param_1 + 0x7c) != 0) && (puVar4 = puStack_20, *(char *)(param_1 + 0x8c) != '\0'))
    break;
LAB_00582040:
    *(undefined4 *)(param_1 + 0xb64) = 3;
    puVar4 = puStack_20;
  }
  puStack_20 = puVar4;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  if (*(char *)(param_1 + 0x173) != '\0') {
    uVar14 = 0;
    if (*(int *)(local_1d0 + 0x1264) != 0) {
      do {
        iVar15 = *(int *)(*(int *)(local_1d0 + 0x125c) + uVar14 * 4);
        if (((iVar15 != 0) && (*(int *)(iVar15 + 0x28) == 9)) &&
           (*(int *)(iVar15 + 0x3bc) == param_1)) {
          *(uint *)(iVar15 + 0x438) = *(uint *)(iVar15 + 0x438) & 0xfffeffff;
          *(uint *)(iVar15 + 0x43c) = *(uint *)(iVar15 + 0x43c) & 0xfffdffff;
          *(undefined *)(iVar15 + 0x173) = 1;
        }
        uVar14 = uVar14 + 1;
      } while (uVar14 < *(uint *)(local_1d0 + 0x1264));
    }
    FUN_00703670(0x32);
    FUN_0060af00(10,0);
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

