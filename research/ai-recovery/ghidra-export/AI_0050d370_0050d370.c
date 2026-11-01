/* Local J460 decompiler output.
 * VA: 0x0050d370
 * Entry: 0050d370
 * Dispatcher: 0x006c2990
 * Types: 15,282,872
 * Identities: 15.0.0,15.1.0,15.2.0,15.3.0,282.0.0,872.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0050d477; instructions=59
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=15,282,872;
   identities=15.0.0,15.1.0,15.2.0,15.3.0,282.0.0,872.0.0; dispatcher=0x006c2990; end=0x0050d477;
   instructions=59 */

void __fastcall AI_0050d370(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  code *pcVar3;
  undefined auVar4 [16];
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined *puVar9;
  char cVar10;
  uint uVar11;
  int iVar12;
  int *piVar13;
  undefined4 uVar14;
  byte **ppbVar15;
  int iVar16;
  undefined4 uVar17;
  float *pfVar18;
  float fVar19;
  byte *pbVar20;
  char *pcVar21;
  uint uVar22;
  bool bVar23;
  float fVar24;
  undefined8 uVar25;
  undefined4 uVar26;
  TypeDescriptor *pTVar27;
  TypeDescriptor *pTVar28;
  undefined4 uVar29;
  undefined local_1b0 [32];
  undefined4 local_190;
  undefined4 uStack_18c;
  undefined4 local_188;
  undefined4 local_184 [8];
  undefined4 local_164;
  undefined4 uStack_160;
  undefined4 local_15c;
  undefined4 local_158 [8];
  undefined4 local_138;
  undefined4 uStack_134;
  undefined4 local_130;
  float local_12c;
  float local_128;
  float local_124;
  float local_120;
  float local_11c;
  float local_118;
  float local_114;
  undefined local_110 [12];
  undefined4 local_104;
  float local_f8;
  undefined4 local_f0;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_7c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined local_58 [4];
  undefined4 uStack_54;
  undefined8 uStack_50;
  undefined4 local_48;
  undefined4 local_44;
  uint local_40;
  uint local_3c [4];
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  uVar8 = _UNK_00bac12c;
  uVar7 = _UNK_00bac128;
  uVar6 = _UNK_00bac124;
  uVar5 = _DAT_00bac120;
  uVar29 = _UNK_00babf2c;
  uVar26 = _UNK_00babf28;
  uVar17 = _UNK_00babf24;
  uVar14 = _DAT_00babf20;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af42d5;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_164 = 0;
  uStack_160 = 0;
  local_15c = 0;
  puVar9 = &stack0xfffffffc;
  if (*(int *)(param_1 + 0xb64) == 0) {
    if (*(int *)(param_1 + 0x28) == 0x368) {
      local_138 = 0x3e828283;
      uStack_134 = 0x3e24a4a5;
      local_130 = 0x3e0c8c8d;
      if ((undefined4 *)(param_1 + 0x1e4) != local_158) {
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        *(undefined4 *)(param_1 + 0x1e4) = uVar14;
        *(undefined4 *)(param_1 + 0x1e8) = uVar17;
        *(undefined4 *)(param_1 + 0x1ec) = uVar26;
        *(undefined4 *)(param_1 + 0x1f0) = uVar29;
        *(undefined8 *)(param_1 + 0x204) = 0x3e24a4a53e828283;
        *(undefined4 *)(param_1 + 0x20c) = 0x3e0c8c8d;
      }
      uVar11 = *(uint *)(param_1 + 0x3dc);
      puStack_20 = &stack0xfffffffc;
      if (uVar11 == 0) {
        puStack_20 = &stack0xfffffffc;
        FUN_00a112c0(0x10,"RNG Seed is zero!\n",local_24);
        uVar11 = *(uint *)(param_1 + 0x3dc);
        if (uVar11 == 0) {
          pcVar3 = (code *)swi(3);
          (*pcVar3)();
          return;
        }
      }
      uVar11 = uVar11 >> ((byte)*(undefined4 *)(param_1 + 0x3e0) & 0x1f) ^ uVar11;
      uVar11 = uVar11 << ((byte)*(undefined4 *)(param_1 + 0x3e4) & 0x1f) ^ uVar11;
      uVar11 = uVar11 >> ((byte)*(undefined4 *)(param_1 + 1000) & 0x1f) ^ uVar11;
      *(uint *)(param_1 + 0x3dc) = uVar11;
      *(uint *)(param_1 + 0xbc0) = uVar11 & 1;
      puVar9 = puStack_20;
    }
    else if (*(int *)(param_1 + 0x2c) == 1) {
      puVar9 = &stack0xfffffffc;
      if ((undefined4 *)(param_1 + 0x1e4) != local_184) {
        *(undefined8 *)(param_1 + 0x204) = 0;
        *(undefined4 *)(param_1 + 0x1e4) = uVar5;
        *(undefined4 *)(param_1 + 0x1e8) = uVar6;
        *(undefined4 *)(param_1 + 0x1ec) = uVar7;
        *(undefined4 *)(param_1 + 0x1f0) = uVar8;
        *(undefined4 *)(param_1 + 0x20c) = 0;
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        puVar9 = &stack0xfffffffc;
      }
    }
    else {
      puVar9 = &stack0xfffffffc;
      if (*(int *)(param_1 + 0x2c) == 3) {
        local_68 = _DAT_00babf20;
        uStack_64 = _UNK_00babf24;
        uStack_60 = _UNK_00babf28;
        uStack_5c = _UNK_00babf2c;
        local_48 = 0x3e109091;
        _local_58 = ZEXT816(0);
        local_44 = 0x3df8f8f9;
        local_40 = 0x3de0e0e1;
        FUN_004071f0(&local_68);
        puVar9 = puStack_20;
      }
    }
  }
  puStack_20 = puVar9;
  iVar12 = FUN_006ac760();
  if (iVar12 != 0) {
    iVar12 = FUN_006eef60();
    piVar13 = (int *)FUN_006b64d0((float)((double)iVar12 +
                                         (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * DAT_00ba9ff4
                                  * DAT_00baa354 + DAT_00baa2d0);
    (**(code **)(*piVar13 + 0x3c))(param_1 + 0x1e4,0xffffffff,0xff,0,1);
  }
  if ((*(char *)(param_1 + 0x173) != '\0') && (*(int *)(param_1 + 0x28) == 0x11a)) {
    fVar19 = (float)(2 - *(short *)(param_1 + 0xc76));
    local_120 = 0.0;
    if (0 < (int)fVar19) {
      local_120 = fVar19;
    }
    if (0 < (int)local_120) {
      do {
        uVar14 = FUN_006eef60();
        iVar12 = FUN_006eef60();
        local_11c = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa704;
        local_11c = local_11c + local_11c;
        fVar19 = local_11c;
        FUN_0041d520();
        local_124 = fVar19;
        fVar19 = local_11c;
        FUN_0041d540();
        local_12c = fVar19 * DAT_00baa87c + *(float *)(param_1 + 0x33c);
        local_128 = local_124 * DAT_00baa87c + *(float *)(param_1 + 0x340);
        FUN_00428b20(0xf,0,&local_12c,&DAT_00c7b640,param_1,0,uVar14);
        local_120 = (float)((int)local_120 + -1);
      } while (local_120 != 0.0);
    }
  }
  iVar12 = *(int *)(param_1 + 0xb64);
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
  if ((iVar12 != 3) && (iVar12 != 4)) {
    if (iVar12 != 8) {
      uVar11 = FUN_006eef60();
      *(uint *)(param_1 + 0xb64) = (~uVar11 & 1) * 4 + 4;
      *(undefined4 *)(param_1 + 0xbb0) = 0x41f00000;
      if ((*(int *)(param_1 + 0x28) == 0xf) && (*(int *)(param_1 + 0x2c) == 3)) {
        *(undefined4 *)(param_1 + 0xbb0) = 0x41700000;
      }
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 != (byte **)0x0) {
        ppbVar15 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar15 = (byte **)*ppbVar2;
        }
        pbVar20 = &DAT_00b1de1c;
        do {
          bVar1 = *(byte *)ppbVar15;
          bVar23 = bVar1 < *pbVar20;
          if (bVar1 != *pbVar20) {
LAB_0050d754:
            uVar11 = -(uint)bVar23 | 1;
            goto LAB_0050d759;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar15 + 1);
          bVar23 = bVar1 < pbVar20[1];
          if (bVar1 != pbVar20[1]) goto LAB_0050d754;
          ppbVar15 = (byte **)((int)ppbVar15 + 2);
          pbVar20 = pbVar20 + 2;
        } while (bVar1 != 0);
        uVar11 = 0;
LAB_0050d759:
        if ((uVar11 == 0) &&
           ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
        goto LAB_0050e3ae;
      }
      cVar10 = FUN_0040a5d0(&DAT_00b1de1c,1);
      if (cVar10 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      goto LAB_0050e3ae;
    }
    if (((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) ||
       ((uVar11 = FUN_006eef60(), uVar11 % 0x1e != 0 && (*(float *)(param_1 + 0xbb0) <= 0.0)))) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
    else {
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 == (byte **)0x0) {
LAB_0050d82e:
        cVar10 = FUN_0040a5d0("Attack",1);
        if (cVar10 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar15 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar15 = (byte **)*ppbVar2;
        }
        pcVar21 = "Attack";
        do {
          bVar1 = *(byte *)ppbVar15;
          bVar23 = bVar1 < (byte)*pcVar21;
          if (bVar1 != *pcVar21) {
LAB_0050d810:
            uVar11 = -(uint)bVar23 | 1;
            goto LAB_0050d815;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar15 + 1);
          bVar23 = bVar1 < ((byte *)pcVar21)[1];
          if (bVar1 != ((byte *)pcVar21)[1]) goto LAB_0050d810;
          ppbVar15 = (byte **)((int)ppbVar15 + 2);
          pcVar21 = (char *)((byte *)pcVar21 + 2);
        } while (bVar1 != 0);
        uVar11 = 0;
LAB_0050d815:
        if ((uVar11 != 0) ||
           ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_0050d82e;
      }
      iVar12 = *(int *)(param_1 + 0x7c);
      if (*(int *)(param_1 + 0x28) == 0x11a) {
        if ((iVar12 != 0) && (cVar10 = FUN_0040add0("Shoot"), cVar10 != '\0')) {
          FUN_006d6ba0(0x30,0x3f4ccccd,2,0,0x3f800000);
          local_11c = *(float *)(param_1 + 0xf1c);
          uVar25 = CONCAT44(local_11c,0xffffffff);
          if (((NAN(*(float *)(param_1 + 0xf20)) || NAN(DAT_00c7b640)) ==
               (*(float *)(param_1 + 0xf20) == DAT_00c7b640)) ||
             ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
              (*(float *)(param_1 + 0xf24) == DAT_00c7b644))) {
            uVar25 = FUN_0067f260();
          }
          iVar12 = (int)uVar25;
          if ((int)((ulonglong)uVar25 >> 0x20) == -1) {
            uVar11 = FUN_006eef60();
            if ((uVar11 & 3) != 0) goto LAB_0050dbc0;
            uVar11 = FUN_006eef60();
            bVar23 = uVar11 % 3 == 0;
          }
          else {
            if ((iVar12 == 0) || (iVar12 == 2)) {
LAB_0050dbc0:
              AI_0043ef30();
              iVar12 = FUN_006eef60();
              local_118 = 10.0;
              local_114 = 6.0;
              local_f8 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baab30 - DAT_00baaa78;
LAB_0050dea3:
              uVar14 = 9;
              goto LAB_0050deac;
            }
            bVar23 = iVar12 != -1;
          }
          if ((bVar23) && (iVar16 = FUN_006d6c20(), iVar16 < 5)) {
            if (local_11c == -NAN) {
              uVar11 = FUN_006eef60();
              bVar23 = uVar11 % 3 == 0;
            }
            else {
              bVar23 = iVar12 == 1;
            }
            if (bVar23) {
              uVar14 = FUN_006eef60();
              uVar17 = FUN_00813520(&local_118,param_1 + 0x33c,0x42200000,0,0,0);
              uVar29 = 0;
              pTVar28 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
              pTVar27 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              uVar26 = 0;
              uVar14 = FUN_00428b20(0x18,0,uVar17,&DAT_00c7b640,param_1,0,uVar14);
              piVar13 = (int *)__RTDynamicCast(uVar14,uVar26,pTVar27,pTVar28,uVar29);
              FUN_0040a380("ReGen",0);
              piVar13[0x2d9] = 3;
              (**(code **)(*piVar13 + 0xc))();
            }
            else {
              uVar14 = FUN_006eef60();
              uVar17 = FUN_00813520(&local_118,param_1 + 0x33c,0x42200000,0,0,0);
              FUN_00428b20(0xf,0,uVar17,&DAT_00c7b640,param_1,0,uVar14);
            }
          }
          else {
            local_11c = 5.605194e-45;
            do {
              uVar14 = FUN_006eef60();
              iVar12 = FUN_006eef60();
              local_120 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa704;
              local_120 = local_120 + local_120;
              iVar12 = FUN_006eef60();
              local_124 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa904;
              fVar19 = local_120;
              FUN_0041d540();
              local_118 = fVar19 * local_124 + *(float *)(param_1 + 0x33c);
              fVar19 = local_120;
              FUN_0041d520();
              uVar26 = 0;
              pTVar28 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
              local_114 = fVar19 * local_124 + *(float *)(param_1 + 0x340);
              pTVar27 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              uVar17 = 0;
              uVar14 = FUN_00428b20(1000,0x16,&local_118,&DAT_00c7b640,param_1,0,uVar14);
              iVar12 = __RTDynamicCast(uVar14,uVar17,pTVar27,pTVar28,uVar26);
              iVar16 = FUN_006eef60();
              local_11c = (float)((int)local_11c + -1);
              fVar19 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa454;
              fVar24 = fVar19 * DAT_00c37940;
              fVar19 = fVar19 * DAT_00c3793c;
              *(undefined4 *)(iVar12 + 0x45c) = 0xd2;
              *(float *)(iVar12 + 0xe8) = fVar24;
              *(undefined4 *)(iVar12 + 0x460) = 0xd2;
              *(float *)(iVar12 + 0xe4) = fVar19;
            } while (local_11c != 0.0);
            local_11c = 0.0;
          }
        }
      }
      else if (*(int *)(param_1 + 0x28) == 0x368) {
        if ((iVar12 != 0) && (cVar10 = FUN_0040add0("Shoot"), cVar10 != '\0')) {
          local_118 = 0.0;
          local_114 = -20.0;
          FUN_006d7cf0(&local_118,param_1 + 0x1e4,&DAT_00c7b640);
          local_11c = 2.326155e-43;
          FUN_00956780();
          FUN_0092dc30(local_11c,0x3f800000,2,0,0x3f800000,0);
          AI_0043ef30();
          local_7c = 3;
          local_b4 = 0;
          local_f0 = 0x3c449ba6;
          local_104 = 0xbca3d70a;
          if (*(int *)(param_1 + 0xbc0) == 0) {
            local_b8 = 0x80000;
            local_f8 = -0.9424779;
          }
          else {
            local_b8 = 0x40000;
            local_f8 = 0.9424779;
          }
          local_118 = 8.0;
          local_114 = 4.0;
          FUN_006cb2e0(param_1 + 0x33c,&local_118,9,local_110);
          *(int *)(param_1 + 0xbc0) = 1 - *(int *)(param_1 + 0xbc0);
        }
      }
      else if ((iVar12 != 0) && (cVar10 = FUN_0040add0("Shoot"), cVar10 != '\0')) {
        local_118 = 0.0;
        local_114 = -20.0;
        FUN_006d7cf0(&local_118,param_1 + 0x1e4,&DAT_00c7b640);
        local_11c = 2.326155e-43;
        FUN_00956780();
        FUN_0092dc30(local_11c,0x3f800000,2,0,0x3f800000,0);
        if (*(int *)(param_1 + 0x2c) == 3) {
          AI_0043ef30();
          local_104 = 0x3ca3d70a;
          iVar12 = FUN_006eef60();
          local_f8 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa708 * DAT_00baa0d0;
          iVar12 = FUN_006d8240();
          local_118 = DAT_00baa7b8;
          if (0 < iVar12) {
            local_118 = DAT_00baa7e8;
          }
          local_114 = 4.0;
          goto LAB_0050dea3;
        }
        AI_0043ef30();
        iVar12 = *(int *)(param_1 + 0x2c);
        if ((iVar12 != 0) && ((iVar12 == 1 || ((iVar12 != 2 && (iVar12 == 1)))))) {
          FUN_004071f0(&DAT_00c34e54);
        }
        uVar25 = FUN_006d8240();
        uVar14 = (undefined4)((ulonglong)uVar25 >> 0x20);
        local_118 = DAT_00baa7b8;
        if (0 < (int)uVar25) {
          local_118 = DAT_00baa81c;
        }
        local_114 = 0.0;
LAB_0050deac:
        FUN_006cb2e0(param_1 + 0x33c,&local_118,uVar14,local_110);
      }
    }
    *(float *)(param_1 + 0xbb0) = *(float *)(param_1 + 0xbb0) - *(float *)(param_1 + 0x39c);
    goto LAB_0050e3ae;
  }
  *(undefined4 *)(param_1 + 0xbb0) = 0x41f00000;
  if (*(int *)(param_1 + 0x28) == 0x11a) {
    *(undefined4 *)(param_1 + 0xbb0) = 0x42340000;
  }
  else if ((*(int *)(param_1 + 0x28) == 0xf) && (*(int *)(param_1 + 0x2c) == 3)) {
    *(undefined4 *)(param_1 + 0xbb0) = 0x41700000;
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
LAB_0050e0ad:
    local_40 = 0xf;
    local_44 = 3;
    uStack_54._0_2_ = (short)_DAT_00b1de1c;
    uStack_54._2_1_ = DAT_00b1de1e;
    uStack_54._3_1_ = 0;
    local_28 = 0xf;
    local_2c = 3;
    local_3c[0] = _DAT_00b1de1c & 0xffffff;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(local_3c,local_58 + 4,0x3f000000);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar22 = local_28 + 1;
      uVar11 = local_3c[0];
      if (0xfff < uVar22) {
        uVar11 = *(uint *)(local_3c[0] - 4);
        uVar22 = local_28 + 0x24;
        if (0x1f < (local_3c[0] - uVar11) - 4) goto LAB_0050e18d;
      }
      FUN_00aef15c(uVar11,uVar22);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c[0] = local_3c[0] & 0xffffff00;
    if (0xf < local_40) {
      uVar11 = local_40 + 1;
      iVar12 = uStack_54;
      if (0xfff < uVar11) {
        iVar12 = *(int *)(uStack_54 + -4);
        uVar11 = local_40 + 0x24;
        if (0x1f < (uStack_54 - iVar12) - 4U) {
LAB_0050e18d:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar12,uVar11);
    }
  }
  else {
    fVar19 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
             *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
    FUN_00435a50();
    if (((DAT_00baa2d0 <= fVar19) ||
        (pfVar18 = (float *)FUN_006d82d0(&local_118),
        (NAN(*pfVar18) || NAN(DAT_00c7b640)) == (*pfVar18 == DAT_00c7b640))) ||
       ((NAN(pfVar18[1]) || NAN(DAT_00c7b644)) == (pfVar18[1] == DAT_00c7b644))) goto LAB_0050e0ad;
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_0050e086:
      cVar10 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar10 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar15 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar15 = (byte **)*ppbVar2;
      }
      pbVar20 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar15;
        bVar23 = bVar1 < *pbVar20;
        if (bVar1 != *pbVar20) {
LAB_0050e060:
          uVar11 = -(uint)bVar23 | 1;
          goto LAB_0050e065;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar15 + 1);
        bVar23 = bVar1 < pbVar20[1];
        if (bVar1 != pbVar20[1]) goto LAB_0050e060;
        ppbVar15 = (byte **)((int)ppbVar15 + 2);
        pbVar20 = pbVar20 + 2;
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_0050e065:
      if ((uVar11 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_0050e086;
    }
  }
  local_114 = *(float *)(param_1 + 0x16c);
  if ((((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) ||
      ((*(uint *)(param_1 + 0x168) & 0x720) != 0)) || (*(int *)(param_1 + 0xf1c) != -1)) {
    cVar10 = FUN_007e6300(0);
    if (((cVar10 != '\0') && ((*(uint *)(param_1 + 0x168) & 0x200) == 0)) &&
       ((*(int *)(param_1 + 0xf1c) == -1 ||
        ((cVar10 = FUN_006cae60(0,7), cVar10 != '\0' || (cVar10 = FUN_006d8260(9), cVar10 != '\0')))
        ))) {
      if ((*(int *)(param_1 + 0x28) == 0xf) && (*(int *)(param_1 + 0x2c) == 3)) {
        iVar12 = *(int *)(param_1 + 0xbc4);
        if (2 < iVar12) {
          *(undefined4 *)(param_1 + 0xbc4) = 0;
          goto LAB_0050e38d;
        }
      }
      else {
        iVar12 = *(int *)(param_1 + 0xbc4);
      }
      *(undefined4 *)(param_1 + 0xb64) = 8;
      *(int *)(param_1 + 0xbc4) = iVar12 + 1;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        *(float *)(param_1 + 0xf20) = DAT_00c7b640;
        fVar19 = DAT_00c7b644;
      }
      else {
        FUN_006d85a0(&local_118);
        *(float *)(param_1 + 0xf20) = local_118;
        fVar19 = local_114;
      }
      *(float *)(param_1 + 0xf24) = fVar19;
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 != (byte **)0x0) {
        ppbVar15 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar15 = (byte **)*ppbVar2;
        }
        pcVar21 = "Attack";
        do {
          bVar1 = *(byte *)ppbVar15;
          bVar23 = bVar1 < (byte)*pcVar21;
          if (bVar1 != *pcVar21) {
LAB_0050e351:
            uVar11 = -(uint)bVar23 | 1;
            goto LAB_0050e356;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar15 + 1);
          bVar23 = bVar1 < ((byte *)pcVar21)[1];
          if (bVar1 != ((byte *)pcVar21)[1]) goto LAB_0050e351;
          ppbVar15 = (byte **)((int)ppbVar15 + 2);
          pcVar21 = (char *)((byte *)pcVar21 + 2);
        } while (bVar1 != 0);
        uVar11 = 0;
LAB_0050e356:
        if ((uVar11 == 0) &&
           ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
        goto LAB_0050e38d;
      }
      cVar10 = FUN_0040a5d0("Attack",1);
      if (cVar10 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
  }
  else {
    iVar12 = FUN_006be840();
    local_118 = *(float *)(iVar12 + 0x33c);
    local_114 = *(float *)(iVar12 + 0x340);
    FUN_007e4940(&local_118,0);
    if (0 < *(int *)(param_1 + 0xb50)) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
  }
LAB_0050e38d:
  if (*(int *)(param_1 + 0x28) == 0x11a) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3c4;
  }
LAB_0050e3ae:
  if (*(int *)(param_1 + 0x28) == 0xf) {
    if (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240) <= DAT_00baa198) {
      if (((*(int *)(param_1 + 0x2c) == 0) || (*(int *)(param_1 + 0x2c) == 3)) &&
         (pfVar18 = *(float **)(param_1 + 8), pfVar18 != *(float **)(param_1 + 0xc))) {
        do {
          if (((uint)pfVar18[2] & 2) != 0) {
            *(float *)(param_1 + 0x14) = *(float *)(param_1 + 0x14) - *pfVar18;
            *pfVar18 = 0.0;
            if (*(int *)(param_1 + 0x2c) == 0) {
              FUN_006c0f30(0xf,3,0,0xffffffff);
              auVar4._4_4_ = _UNK_00babf24;
              auVar4._0_4_ = _DAT_00babf20;
              auVar4._8_4_ = _UNK_00babf28;
              auVar4._12_4_ = _UNK_00babf2c;
              local_190 = 0x3e109091;
              uStack_18c = 0x3df8f8f9;
              local_188 = 0x3de0e0e1;
              if ((undefined (*) [16])(param_1 + 0x1e4) != (undefined (*) [16])local_1b0) {
                *(undefined (*) [16])(param_1 + 0x1e4) = auVar4;
                *(undefined8 *)(param_1 + 0x204) = 0x3df8f8f93e109091;
                *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
                *(undefined4 *)(param_1 + 0x20c) = 0x3de0e0e1;
              }
            }
          }
          pfVar18 = pfVar18 + 0xe;
        } while (pfVar18 != *(float **)(param_1 + 0xc));
      }
    }
    else if (*(int *)(param_1 + 0x2c) == 3) {
      FUN_006c0f30(0xf,0,0,0xffffffff);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

