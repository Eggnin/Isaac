/* Local J460 decompiler output.
 * VA: 0x004c8090
 * Entry: 004c8090
 * Dispatcher: 0x006c2990
 * Types: 274,275
 * Identities: 274.0.0,274.1.0,274.2.0,275.0.0,275.1.0,275.2.0
 * Evidence: dispatcher=0x006c2990; end=0x004cca10; instructions=4202
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=274,275;
   identities=274.0.0,274.1.0,274.2.0,275.0.0,275.1.0,275.2.0; dispatcher=0x006c2990;
   end=0x004cca10; instructions=4202 */

void __fastcall AI_004c8090(uint **param_1)

{
  uint *puVar1;
  code *pcVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  int *piVar6;
  byte **ppbVar7;
  int *piVar8;
  byte **ppbVar9;
  uint uVar10;
  undefined3 uVar14;
  undefined *puVar11;
  float *pfVar12;
  undefined4 uVar13;
  byte bVar15;
  int iVar16;
  uint extraout_ECX;
  uint *puVar17;
  int iVar18;
  char *pcVar19;
  byte *pbVar20;
  uint extraout_EDX;
  uint **ppuVar21;
  int **ppiVar22;
  uint **ppuVar23;
  uint *puVar24;
  bool bVar25;
  float fVar26;
  undefined auVar27 [16];
  float fVar28;
  float fVar29;
  uint **ppuVar30;
  float fVar31;
  double dVar32;
  undefined4 uVar33;
  TypeDescriptor *pTVar34;
  undefined8 uVar35;
  char local_2e0 [16];
  char local_2d0 [4];
  int local_2cc;
  uint local_2c4;
  float local_2c0;
  float local_2bc;
  float local_2b8;
  float local_2b4;
  char local_2b0 [4];
  int local_2ac;
  uint local_2a4;
  undefined local_2a0;
  undefined4 *local_29c;
  undefined4 local_298;
  int local_294;
  float local_290;
  int *local_28c;
  int *local_288;
  undefined local_284 [4];
  float local_280;
  uint *local_27c;
  uint *local_278;
  float local_274;
  float local_270;
  float local_26c;
  float local_268;
  float local_264;
  uint **local_260;
  uint *local_25c;
  uint *local_258;
  uint *local_254;
  code *local_250;
  uint **local_24c;
  byte local_245;
  uint **local_244;
  byte local_23d;
  undefined4 local_23c;
  undefined local_238 [4];
  undefined4 local_234;
  undefined4 local_228;
  undefined4 local_224;
  uint local_1e0;
  undefined local_190 [4];
  undefined4 local_18c;
  undefined4 local_188;
  undefined4 local_184;
  undefined4 local_17c;
  float local_178;
  uint **local_170;
  undefined4 local_154;
  float fStack_150;
  undefined4 uStack_14c;
  float fStack_148;
  uint **local_138;
  uint **local_134;
  undefined4 local_120;
  undefined4 local_11c;
  undefined4 local_118;
  int local_fc;
  undefined local_ec;
  uint **local_e8 [16];
  int local_a8 [6];
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  uint *local_80;
  uint *local_7c;
  uint *local_78;
  uint *local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined8 local_68;
  undefined4 local_60;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  uint *local_40;
  uint *local_3c;
  uint *local_38;
  uint *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  puStack_18 = &LAB_00af36db;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  if (param_1[0x2d9] == (uint *)0x0) {
    param_1[0x5a] = (uint *)((uint)param_1[0x5a] | 0x40000);
    param_1[0x37] = (uint *)0x0;
    param_1[0x38] = (uint *)0x421c0000;
    param_1[0xcf] = (uint *)0x43a00000;
    param_1[0xd0] = (uint *)0x43820000;
    param_1[0xcd] = (uint *)0x43a00000;
    param_1[0xce] = (uint *)0x43820000;
    param_1[0x61] = (uint *)0x3;
    param_1[0x104] = (uint *)0x1;
    param_1[0x2f0] = (uint *)0x0;
    param_1[0x2f1] = (uint *)0xffffffff;
    param_1[0x2ee] = (uint *)0xffffffff;
    param_1[0x5a] = (uint *)((uint)param_1[0x5a] & 0xfffffffb);
    param_1[0x5b] = param_1[0x5b];
    param_1[0x2d9] = (uint *)0x2;
    *(undefined *)((int)param_1 + 0x171) = 0;
  }
  local_28c = (int *)0x0;
  local_288 = (int *)0x0;
  local_2a0 = 0;
  local_29c = (undefined4 *)0x0;
  local_298 = 0;
  local_294 = 0;
  local_14 = 0;
  local_24c = param_1;
  local_24 = uVar4;
  iVar5 = AI_0041af60(local_2b0,0x112,1,0xffffffff,0,0);
  local_2a0 = 1;
  local_29c = *(undefined4 **)(iVar5 + 4);
  local_298 = *(undefined4 *)(iVar5 + 8);
  iVar5 = *(int *)(iVar5 + 0xc);
  local_294 = iVar5;
  local_25c = local_29c;
  if (local_2b0[0] == '\0') {
    local_14._0_1_ = 1;
    FUN_00a648b0(0,0,uVar4);
    local_14 = (uint)local_14._1_3_ << 8;
  }
  if (iVar5 != 0) {
    local_28c = (int *)__RTDynamicCast(*local_25c,0,
                                       &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                       &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor);
  }
  iVar5 = AI_0041af60(local_2e0,0x112,2,0xffffffff,0,0);
  local_2a0 = 1;
  local_29c = *(undefined4 **)(iVar5 + 4);
  local_298 = *(undefined4 *)(iVar5 + 8);
  iVar5 = *(int *)(iVar5 + 0xc);
  local_294 = iVar5;
  local_25c = local_29c;
  if (local_2e0[0] == '\0') {
    local_14._0_1_ = 2;
    FUN_00a648b0(0,0,uVar4);
    local_14 = (uint)local_14._1_3_ << 8;
  }
  if (iVar5 == 0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = (int *)__RTDynamicCast(*local_25c,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                    &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor);
    local_288 = piVar6;
  }
  local_14 = 0xffffffff;
  local_25c = (uint *)0x1e;
  if (param_1[10] == (uint *)0x112) {
    bVar25 = *(char *)((int)param_1 + 0x173) == '\0';
    if (bVar25) {
      if (param_1[0x2d9] != (uint *)0x10) {
        if (local_28c == (int *)0x0) {
          bVar15 = *(byte *)((int)param_1 + 0xbc2);
          if (*(int *)(DAT_00c71678 + 0x264f8) % 0x1e == 0) {
            bVar15 = bVar15 + 1;
            *(byte *)((int)param_1 + 0xbc2) = bVar15;
          }
          if (0x1d < bVar15) {
            uVar13 = FUN_006eef60();
            local_264 = (float)param_1[0xcf] - DAT_00baaa00;
            local_260 = (uint **)((float)param_1[0xd0] + DAT_00baa9d0);
            uVar35 = 0xc5d6ac;
            pTVar34 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar33 = 0;
            uVar13 = FUN_00428b20(0x112,1,&local_264,&DAT_00c7b640,param_1,0,uVar13);
            local_28c = (int *)__RTDynamicCast(uVar13,uVar33,pTVar34,uVar35);
            (**(code **)(*local_28c + 0xc))();
          }
        }
        else {
          *(undefined *)((int)param_1 + 0xbc2) = 0;
        }
        if (piVar6 == (int *)0x0) {
          bVar15 = *(byte *)((int)param_1 + 0xbc3);
          if (*(int *)(DAT_00c71678 + 0x264f8) % 0x1e == 0) {
            bVar15 = bVar15 + 1;
            *(byte *)((int)param_1 + 0xbc3) = bVar15;
          }
          if (0x1d < bVar15) {
            uVar13 = FUN_006eef60();
            local_274 = (float)param_1[0xcf] + DAT_00baaa00;
            local_270 = (float)param_1[0xd0] + DAT_00baa9d0;
            uVar35 = 0xc5d6ac;
            pTVar34 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar33 = 0;
            uVar13 = FUN_00428b20(0x112,2,&local_274,&DAT_00c7b640,param_1,0,uVar13);
            local_288 = (int *)__RTDynamicCast(uVar13,uVar33,pTVar34,uVar35);
            (**(code **)(*local_288 + 0xc))();
          }
        }
        else {
          *(undefined *)((int)param_1 + 0xbc3) = 0;
        }
      }
      goto LAB_004c84af;
    }
  }
  else {
LAB_004c84af:
    bVar25 = *(char *)((int)param_1 + 0x173) == '\0';
  }
  local_250 = free_exref;
  if (!bVar25) {
    if (local_28c != (int *)0x0) {
      local_90 = 0;
      local_8c = 0;
      local_88 = 0;
      local_84 = 0;
      local_80 = DAT_00c7b640;
      local_7c = DAT_00c7b644;
      local_78 = DAT_00c7b640;
      local_74 = DAT_00c7b644;
      local_70 = 0;
      local_6c = 0;
      (**(code **)(*local_28c + 0x24))();
    }
    if (local_288 != (int *)0x0) {
      local_50 = 0;
      local_4c = 0;
      local_48 = 0;
      local_44 = 0;
      local_40 = DAT_00c7b640;
      local_3c = DAT_00c7b644;
      local_38 = DAT_00c7b640;
      local_34 = DAT_00c7b644;
      local_30 = 0;
      local_2c = 0;
      (**(code **)(*local_288 + 0x24))();
    }
    param_1[0x2d9] = (uint *)0x10;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    *(undefined *)((int)param_1 + 0x173) = 0;
    FUN_0041a790(local_2d0,param_1 + 0xcf,2);
    uVar4 = 0;
    local_14 = 4;
    if (local_2c4 != 0) {
      do {
        iVar5 = uVar4 * 4;
        uVar4 = uVar4 + 1;
        *(undefined *)(*(int *)(local_2cc + iVar5) + 0x173) = 1;
      } while (uVar4 < local_2c4);
    }
    FUN_0092acb0(param_1[10],param_1[0xb]);
    local_14 = 0xffffffff;
    if (local_2d0[0] == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar17 = &DAT_00c7f618;
      }
      else {
        puVar17 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_2cc != 0) {
        uVar10 = *(uint *)(local_2cc + -4);
        uVar4 = *puVar17;
        *puVar17 = *puVar17 - uVar10;
        puVar17[1] = puVar17[1] - (uint)(uVar4 < uVar10);
        free((void *)(local_2cc + -4));
      }
      local_14 = 0xffffffff;
    }
  }
  puVar17 = (uint *)&DAT_00000008;
  local_25c = (uint *)0x0;
  local_254 = (uint *)&DAT_00000008;
  local_23c = *(uint ***)(DAT_00c71678 + 0x18300);
  if (local_23c[0x499] != (uint *)0x0) {
    puVar24 = (uint *)0x0;
    do {
      local_244 = (uint **)local_23c[0x497][(int)puVar24];
      ppuVar30 = local_244 + 10;
      if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (*ppuVar30 == (uint *)0x1)) ||
          ((byte *)((int)*ppuVar30 + -10) < (byte *)0x3de)) &&
         (((cVar3 = (*(code *)(*local_244)[0x12])(), puVar17 = local_254, cVar3 != '\0' &&
           (puVar1 = *ppuVar30, puVar1 != (uint *)0x362)) &&
          ((((uint)local_244[0x5a] & 0x20000000) == 0 &&
           ((puVar1 != (uint *)0x112 && (puVar1 != (uint *)0x113)))))))) {
        local_25c = (uint *)((int)local_25c + 1);
        if (puVar1 == (uint *)0x13) {
          local_254 = (uint *)((int)local_254 + -1);
          puVar17 = local_254;
        }
        else {
          local_254 = local_254 + -1;
          puVar17 = local_254;
        }
      }
      puVar24 = (uint *)((int)puVar24 + 1);
      param_1 = local_24c;
    } while (puVar24 < local_23c[0x499]);
  }
  ppuVar23 = DAT_00baa528;
  ppuVar21 = DAT_00baa454;
  ppuVar30 = DAT_00baa2d0;
  if ((int)puVar17 < 0) {
    puVar17 = (uint *)0x0;
  }
  local_254 = puVar17;
  if ((param_1[0x2d9] != (uint *)0xd) && (param_1[10] == (uint *)0x112)) {
    cVar3 = *(char *)(param_1 + 0x2f0);
    if (cVar3 == '\0') {
      fVar26 = (float)param_1[0xe1] * DAT_00baa3a4;
      if (fVar26 < (float)param_1[0xe0] || fVar26 == (float)param_1[0xe0]) {
LAB_004c87f9:
        if ((cVar3 != '\x02') ||
           (fVar26 = (float)param_1[0xe1] * DAT_00baa280,
           fVar26 < (float)param_1[0xe0] || fVar26 == (float)param_1[0xe0])) goto LAB_004c8988;
        puVar17 = (uint *)((float)param_1[0xe1] * DAT_00baa1d4);
      }
      else {
        puVar17 = (uint *)((float)param_1[0xe1] * DAT_00baa380);
      }
LAB_004c8825:
      param_1[0xe0] = puVar17;
      param_1[0x2d9] = (uint *)0xd;
      param_1[0x104] = (uint *)0x0;
      *(undefined *)((int)param_1 + 0xbc1) = 0;
      local_244 = ppuVar21;
      if (param_1[0x319] == (uint *)0x12) {
        local_244 = ppuVar23;
      }
      else if (param_1[0x319] == (uint *)0x13) {
        local_244 = ppuVar30;
      }
      local_23c = (uint **)0xf2;
      FUN_00956780();
      FUN_0092dc30(local_23c,0x3f800000,0x78,0,local_244,0);
      local_244 = DAT_00baa454;
      ppuVar30 = DAT_00baa528;
      if ((param_1[0x319] == (uint *)0x12) ||
         (ppuVar30 = DAT_00baa2d0, param_1[0x319] == (uint *)0x13)) {
        local_244 = ppuVar30;
      }
      local_23c = (uint **)0xf3;
      FUN_00956780();
      FUN_0092dc30(local_23c,0x3f800000,0x78,0,local_244,0);
      if (local_28c != (int *)0x0) {
        local_28c[0x2d9] = 0xd;
        local_28c[0x104] = 0;
      }
      if (local_288 != (int *)0x0) {
        local_288[0x2d9] = 0xd;
        local_288[0x104] = 0;
      }
    }
    else {
      if (cVar3 != '\x01') goto LAB_004c87f9;
      fVar26 = (float)param_1[0xe1] * DAT_00baa304;
      if ((float)param_1[0xe0] <= fVar26 && fVar26 != (float)param_1[0xe0]) {
        puVar17 = (uint *)((float)param_1[0xe1] * (float)DAT_00baa2d0);
        goto LAB_004c8825;
      }
    }
  }
LAB_004c8988:
  fVar26 = DAT_00baa854;
  puVar17 = param_1[0x2d9];
  if (puVar17 == (uint *)0x2) {
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x62] = (uint *)0x0;
    if (param_1[10] == (uint *)0x113) {
      puVar17 = param_1[0x1f];
      if (puVar17 == (uint *)0x0) {
        iVar5 = -1;
        uVar4 = 0;
      }
      else {
        local_244 = (uint **)param_1[0x22];
        dVar32 = floor((double)(float)local_244);
        uVar4 = puVar17[0xc];
        iVar5 = (int)dVar32;
        fVar26 = DAT_00baa854;
      }
      local_23c = (uint **)(float)uVar4;
      local_244 = (uint **)((float)local_23c - fVar26);
      local_24c = (uint **)(float)iVar5;
      if ((NAN((float)local_244) || NAN((float)local_23c)) != ((float)local_244 == (float)local_23c)
         ) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
      }
      fVar29 = DAT_00baab14;
      fVar26 = DAT_00baaaa4;
      ppuVar30 = (uint **)(((float)local_24c - (float)local_244) /
                          ((float)local_23c - (float)local_244));
      if ((float)ppuVar30 <= (float)DAT_00ba9fe4) {
        ppuVar30 = DAT_00ba9fe4;
      }
      if ((float)DAT_00baa454 <= (float)ppuVar30) {
        ppuVar30 = DAT_00baa454;
      }
      fVar28 = (DAT_00baa6fc - ((float)ppuVar30 + (float)ppuVar30)) *
               (float)ppuVar30 * (float)ppuVar30;
      puVar17 = (uint *)(((float)param_1[0xce] - DAT_00baaaa4) * fVar28 + DAT_00baaaa4);
      param_1[0xcf] = (uint *)(((float)param_1[0xcd] - DAT_00baab14) * fVar28 + DAT_00baab14);
      param_1[0xd0] = puVar17;
      fVar28 = ((float)param_1[0xce] - fVar26) / DAT_00baa854;
      fVar26 = (float)ppuVar30 * DAT_00baada8 * ((float)ppuVar30 - (float)DAT_00baa454);
      param_1[0xd8] = (uint *)((((float)param_1[0xcd] - fVar29) / DAT_00baa854) * fVar26);
      param_1[0xd9] = (uint *)(fVar28 * fVar26);
      if (param_1[0x1f] == (uint *)0x0) {
        iVar5 = -1;
      }
      else {
        local_23c = (uint **)param_1[0x22];
        dVar32 = floor((double)(float)local_23c);
        local_23c = (uint **)(float)dVar32;
        iVar5 = (int)dVar32;
      }
      if ((float)iVar5 < (float)local_244) {
        FUN_00703670();
        iVar5 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11f8);
        if (*(char *)(iVar5 + 0x8c) == '\0') {
          local_23c = *(uint ***)(iVar5 + 0x54);
          iVar16 = *(int *)(iVar5 + 0x58);
          if ((uint **)iVar16 == local_23c) {
            if (iVar16 < 1) {
              FUN_00a112c0(0x10,"Cannot erase from empty buffer");
              local_23c = *(uint ***)(iVar5 + 0x54);
              iVar16 = *(int *)(iVar5 + 0x58);
            }
            iVar18 = (*(int *)(iVar5 + 0x5c) + 1) % (int)local_23c;
            iVar16 = iVar16 + -1;
            *(int *)(iVar5 + 0x5c) = iVar18;
            *(int *)(iVar5 + 0x58) = iVar16;
          }
          else {
            iVar18 = *(int *)(iVar5 + 0x5c);
          }
          iVar18 = (iVar18 + iVar16) % (int)local_23c;
          iVar16 = *(int *)(iVar5 + 0x50);
          *(undefined4 *)(iVar16 + iVar18 * 8) = 0x43a00000;
          *(undefined4 *)(iVar16 + 4 + iVar18 * 8) = 0x43520000;
          *(int *)(iVar5 + 0x58) = *(int *)(iVar5 + 0x58) + 1;
          *(undefined *)(iVar5 + 0x8c) = 1;
        }
      }
    }
    iVar5 = *(int *)(DAT_00c71678 + 0x18300);
    local_24c = *(uint ***)(iVar5 + 0x1c38);
    local_23c = (uint **)(iVar5 + 0x1c04);
    if (local_24c != (uint **)0x0) {
      if (*(char *)(iVar5 + 0x1c48) == '\0') {
        ppuVar30 = local_24c;
        if (&DAT_0000000f < local_24c[5]) {
          ppuVar30 = (uint **)*local_24c;
        }
        pcVar19 = "Intro";
        do {
          local_245 = *(byte *)ppuVar30;
          bVar25 = local_245 < (byte)*pcVar19;
          if (local_245 != *pcVar19) {
LAB_004c8cb4:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004c8cb9;
          }
          if (local_245 == 0) break;
          local_245 = *(byte *)((int)ppuVar30 + 1);
          bVar25 = local_245 < ((byte *)pcVar19)[1];
          if (local_245 != ((byte *)pcVar19)[1]) goto LAB_004c8cb4;
          ppuVar30 = (uint **)((int)ppuVar30 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (local_245 != 0);
        uVar4 = 0;
LAB_004c8cb9:
        if (uVar4 == 0) {
          ppuVar30 = local_24c;
          if (&DAT_0000000f < local_24c[5]) {
            ppuVar30 = (uint **)*local_24c;
          }
          pbVar20 = &DAT_00b1d428;
          do {
            local_245 = *(byte *)ppuVar30;
            bVar25 = local_245 < *pbVar20;
            if (local_245 != *pbVar20) {
LAB_004c8d12:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004c8d17;
            }
            if (local_245 == 0) break;
            local_245 = *(byte *)((int)ppuVar30 + 1);
            bVar25 = local_245 < pbVar20[1];
            if (local_245 != pbVar20[1]) goto LAB_004c8d12;
            ppuVar30 = (uint **)((int)ppuVar30 + 2);
            pbVar20 = pbVar20 + 2;
          } while (local_245 != 0);
          uVar4 = 0;
LAB_004c8d17:
          if (((uVar4 != 0) || (*(char *)(local_24c + 0xd) != '\0')) &&
             (cVar3 = FUN_0040a5d0(&DAT_00b1d428,1), cVar3 != '\0')) {
            FUN_0040a1b0();
            *(undefined *)(iVar5 + 0x1c48) = 1;
          }
          iVar5 = DAT_00c71678;
          piVar6 = *(int **)(DAT_00c71678 + 0x1baa8);
          if (piVar6 != *(int **)(DAT_00c71678 + 0x1baac)) {
            do {
              iVar16 = *piVar6;
              piVar6 = piVar6 + 1;
              *(undefined *)(iVar16 + 0x410) = 1;
            } while (piVar6 != *(int **)(iVar5 + 0x1baac));
          }
          ppbVar9 = (byte **)param_1[0x1f];
          if (ppbVar9 == (byte **)0x0) {
LAB_004c8dce:
            cVar3 = FUN_0040a5d0("Appear",1);
            if (cVar3 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
          }
          else {
            ppbVar7 = ppbVar9;
            if (&DAT_0000000f < ppbVar9[5]) {
              ppbVar7 = (byte **)*ppbVar9;
            }
            pcVar19 = "Appear";
            do {
              bVar15 = *(byte *)ppbVar7;
              bVar25 = bVar15 < (byte)*pcVar19;
              if (bVar15 != *pcVar19) {
LAB_004c8db0:
                uVar4 = -(uint)bVar25 | 1;
                goto LAB_004c8db5;
              }
              if (bVar15 == 0) break;
              bVar15 = *(byte *)((int)ppbVar7 + 1);
              bVar25 = bVar15 < ((byte *)pcVar19)[1];
              if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c8db0;
              ppbVar7 = (byte **)((int)ppbVar7 + 2);
              pcVar19 = (char *)((byte *)pcVar19 + 2);
            } while (bVar15 != 0);
            uVar4 = 0;
LAB_004c8db5:
            if ((uVar4 != 0) ||
               ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
            goto LAB_004c8dce;
          }
          local_244 = DAT_00baa454;
          *(undefined *)((int)param_1 + 0x171) = 1;
          ppuVar30 = DAT_00baa528;
          if ((param_1[0x319] == (uint *)0x12) ||
             (ppuVar30 = DAT_00baa2d0, param_1[0x319] == (uint *)0x13)) {
            local_244 = ppuVar30;
          }
          local_23c = (uint **)0xf1;
          FUN_00956780();
          FUN_0092dc30(local_23c,0x3f800000,2,0,local_244,0);
        }
        else {
          if (*(char *)(iVar5 + 0x1c48) != '\0') goto LAB_004c8e92;
LAB_004c8f34:
          ppuVar30 = local_24c;
          if (&DAT_0000000f < local_24c[5]) {
            ppuVar30 = (uint **)*local_24c;
          }
          pbVar20 = &DAT_00b601c4;
          do {
            bVar15 = *(byte *)ppuVar30;
            bVar25 = bVar15 < *pbVar20;
            if (bVar15 != *pbVar20) {
LAB_004c8f61:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004c8f66;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppuVar30 + 1);
            bVar25 = bVar15 < pbVar20[1];
            if (bVar15 != pbVar20[1]) goto LAB_004c8f61;
            ppuVar30 = (uint **)((int)ppuVar30 + 2);
            pbVar20 = pbVar20 + 2;
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004c8f66:
          if (uVar4 == 0) {
            ppiVar22 = (int **)(DAT_00c71678 + 0x1baa8);
            local_244 = (uint **)0x0;
            if (*(int *)(DAT_00c71678 + 0x1baac) - (int)*ppiVar22 >> 2 != 0) {
              do {
                piVar6 = ppiVar22[1];
                if ((int)piVar6 - (int)*ppiVar22 >> 2 == 0) {
                  FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
                  piVar6 = ppiVar22[1];
                }
                piVar8 = *ppiVar22;
                if (local_244 < (uint **)((int)piVar6 - (int)piVar8 >> 2)) {
                  piVar8 = piVar8 + (int)local_244;
                }
                if ((*(int *)(*piVar8 + 0x2c) == 0) &&
                   (pfVar12 = (float *)(*piVar8 + 0x340),
                   *pfVar12 <= DAT_00baab84 && DAT_00baab84 != *pfVar12)) {
                  ppbVar9 = (byte **)local_23c[0xd];
                  if (ppbVar9 == (byte **)0x0) goto LAB_004c9061;
                  ppbVar7 = ppbVar9;
                  if (&DAT_0000000f < ppbVar9[5]) {
                    ppbVar7 = (byte **)*ppbVar9;
                  }
                  pcVar19 = "Intro";
                  goto LAB_004c9020;
                }
                local_244 = (uint **)((int)local_244 + 1);
                ppiVar22 = (int **)(DAT_00c71678 + 0x1baa8);
              } while (local_244 < (uint **)(*(int *)(DAT_00c71678 + 0x1baac) - (int)*ppiVar22 >> 2)
                      );
            }
          }
        }
      }
      else {
LAB_004c8e92:
        ppuVar30 = local_24c;
        if (&DAT_0000000f < local_24c[5]) {
          ppuVar30 = (uint **)*local_24c;
        }
        pcVar19 = "Intro";
        do {
          local_245 = *(byte *)ppuVar30;
          bVar25 = local_245 < (byte)*pcVar19;
          if (local_245 != *pcVar19) {
LAB_004c8ee3:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004c8ee8;
          }
          if (local_245 == 0) break;
          local_245 = *(byte *)((int)ppuVar30 + 1);
          bVar25 = local_245 < ((byte *)pcVar19)[1];
          if (local_245 != ((byte *)pcVar19)[1]) goto LAB_004c8ee3;
          ppuVar30 = (uint **)((int)ppuVar30 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (local_245 != 0);
        uVar4 = 0;
LAB_004c8ee8:
        if (uVar4 == 0) {
          FUN_00703670();
          iVar5 = DAT_00c71678;
          piVar6 = *(int **)(DAT_00c71678 + 0x1baa8);
          if (piVar6 != *(int **)(DAT_00c71678 + 0x1baac)) {
            do {
              iVar16 = *piVar6;
              piVar6 = piVar6 + 1;
              *(undefined *)(iVar16 + 0x410) = 0;
            } while (piVar6 != *(int **)(iVar5 + 0x1baac));
          }
        }
        else if (*(char *)(iVar5 + 0x1c48) == '\0') goto LAB_004c8f34;
      }
    }
LAB_004c9128:
    if (param_1[10] == (uint *)0x112) {
      if (param_1[0x1f] != (uint *)0x0) {
        if (*(char *)(param_1 + 0x23) != '\0') {
          ppbVar9 = (byte **)param_1[0x1f];
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar19 = "Appear";
          do {
            bVar15 = *(byte *)ppbVar9;
            bVar25 = bVar15 < (byte)*pcVar19;
            if (bVar15 != *pcVar19) {
LAB_004c9180:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004c9185;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar9 + 1);
            bVar25 = bVar15 < ((byte *)pcVar19)[1];
            if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c9180;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004c9185:
          if ((uVar4 == 0) &&
             (iVar5 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11f8),
             *(char *)(iVar5 + 0x8c) == '\0')) {
            local_23c = *(uint ***)(iVar5 + 0x54);
            ppuVar30 = *(uint ***)(iVar5 + 0x58);
            if (ppuVar30 == local_23c) {
              if ((int)ppuVar30 < 1) {
                FUN_00a112c0(0x10,"Cannot erase from empty buffer");
                local_23c = *(uint ***)(iVar5 + 0x54);
                ppuVar30 = *(uint ***)(iVar5 + 0x58);
              }
              iVar16 = (*(int *)(iVar5 + 0x5c) + 1) % (int)local_23c;
              ppuVar30 = (uint **)((int)ppuVar30 + -1);
              *(int *)(iVar5 + 0x5c) = iVar16;
              *(uint ***)(iVar5 + 0x58) = ppuVar30;
            }
            else {
              iVar16 = *(int *)(iVar5 + 0x5c);
            }
            iVar18 = (int)(iVar16 + (int)ppuVar30) % (int)local_23c;
            iVar16 = *(int *)(iVar5 + 0x50);
            *(undefined4 *)(iVar16 + iVar18 * 8) = 0x43a00000;
            *(undefined4 *)(iVar16 + 4 + iVar18 * 8) = 0x43520000;
            *(int *)(iVar5 + 0x58) = *(int *)(iVar5 + 0x58) + 1;
            *(undefined *)(iVar5 + 0x8c) = 1;
          }
        }
        goto LAB_004c921d;
      }
LAB_004c9285:
      puVar17 = param_1[0x2d9];
      goto LAB_004c928b;
    }
LAB_004c921d:
    if ((param_1[0x1f] == (uint *)0x0) || (*(char *)(param_1 + 0x23) != '\0')) goto LAB_004c9285;
    ppbVar9 = (byte **)param_1[0x1f];
    if (&DAT_0000000f < ppbVar9[5]) {
      ppbVar9 = (byte **)*ppbVar9;
    }
    pcVar19 = "Appear";
    do {
      bVar15 = *(byte *)ppbVar9;
      bVar25 = bVar15 < (byte)*pcVar19;
      if (bVar15 != *pcVar19) {
LAB_004c9260:
        uVar4 = -(uint)bVar25 | 1;
        goto LAB_004c9265;
      }
      if (bVar15 == 0) break;
      bVar15 = *(byte *)((int)ppbVar9 + 1);
      bVar25 = bVar15 < ((byte *)pcVar19)[1];
      if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c9260;
      ppbVar9 = (byte **)((int)ppbVar9 + 2);
      pcVar19 = (char *)((byte *)pcVar19 + 2);
    } while (bVar15 != 0);
    uVar4 = 0;
LAB_004c9265:
    if (uVar4 != 0) goto LAB_004c9285;
    param_1[0x2d9] = (uint *)0x3;
    *(undefined *)(param_1 + 0xec) = 0;
    param_1[0x62] = (uint *)&DAT_00000004;
LAB_004c9294:
    uVar4 = 10;
    if ((float)param_1[0xe0] <= (float)param_1[0xe1] * (float)DAT_00baa2d0 &&
        (float)param_1[0xe1] * (float)DAT_00baa2d0 != (float)param_1[0xe0]) {
      uVar4 = 2;
    }
    if (param_1[0x1f] == (uint *)0x0) {
LAB_004c942d:
      ppbVar9 = (byte **)param_1[0x1f];
      if (param_1[10] == (uint *)0x112) {
        if (ppbVar9 != (byte **)0x0) {
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pbVar20 = &DAT_00b1bc54;
          do {
            bVar15 = *(byte *)ppbVar9;
            bVar25 = bVar15 < *pbVar20;
            if (bVar15 != *pbVar20) {
LAB_004c9470:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004c9475;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar9 + 1);
            bVar25 = bVar15 < pbVar20[1];
            if (bVar15 != pbVar20[1]) goto LAB_004c9470;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pbVar20 = pbVar20 + 2;
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004c9475:
          if ((uVar4 == 0) &&
             ((*(byte *)(param_1[0x1f] + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_004c960d;
        }
        uVar35 = 0x100b1bc54;
      }
      else {
        puVar17 = param_1[0xe1];
        if ((float)param_1[0xe0] <= ((float)puVar17 + (float)puVar17) / DAT_00baa6fc) {
          if ((float)param_1[0xe0] <= (float)puVar17 / DAT_00baa6fc) {
            if (ppbVar9 != (byte **)0x0) {
              if (&DAT_0000000f < ppbVar9[5]) {
                ppbVar9 = (byte **)*ppbVar9;
              }
              pbVar20 = &DAT_00b1d43c;
              do {
                bVar15 = *(byte *)ppbVar9;
                bVar25 = bVar15 < *pbVar20;
                if (bVar15 != *pbVar20) {
LAB_004c95d0:
                  uVar4 = -(uint)bVar25 | 1;
                  goto LAB_004c95d5;
                }
                if (bVar15 == 0) break;
                bVar15 = *(byte *)((int)ppbVar9 + 1);
                bVar25 = bVar15 < pbVar20[1];
                if (bVar15 != pbVar20[1]) goto LAB_004c95d0;
                ppbVar9 = (byte **)((int)ppbVar9 + 2);
                pbVar20 = pbVar20 + 2;
              } while (bVar15 != 0);
              uVar4 = 0;
LAB_004c95d5:
              if ((uVar4 == 0) &&
                 ((*(byte *)(param_1[0x1f] + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
              goto LAB_004c960d;
            }
            uVar35 = 0x100b1d43c;
          }
          else {
            if (ppbVar9 != (byte **)0x0) {
              if (&DAT_0000000f < ppbVar9[5]) {
                ppbVar9 = (byte **)*ppbVar9;
              }
              pbVar20 = &DAT_00b1d428;
              do {
                bVar15 = *(byte *)ppbVar9;
                bVar25 = bVar15 < *pbVar20;
                if (bVar15 != *pbVar20) {
LAB_004c9570:
                  uVar4 = -(uint)bVar25 | 1;
                  goto LAB_004c9575;
                }
                if (bVar15 == 0) break;
                bVar15 = *(byte *)((int)ppbVar9 + 1);
                bVar25 = bVar15 < pbVar20[1];
                if (bVar15 != pbVar20[1]) goto LAB_004c9570;
                ppbVar9 = (byte **)((int)ppbVar9 + 2);
                pbVar20 = pbVar20 + 2;
              } while (bVar15 != 0);
              uVar4 = 0;
LAB_004c9575:
              if ((uVar4 == 0) &&
                 ((*(byte *)(param_1[0x1f] + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
              goto LAB_004c960d;
            }
            uVar35 = 0x100b1d428;
          }
        }
        else {
          if (ppbVar9 != (byte **)0x0) {
            if (&DAT_0000000f < ppbVar9[5]) {
              ppbVar9 = (byte **)*ppbVar9;
            }
            pbVar20 = &DAT_00b601c4;
            do {
              bVar15 = *(byte *)ppbVar9;
              bVar25 = bVar15 < *pbVar20;
              if (bVar15 != *pbVar20) {
LAB_004c9500:
                uVar4 = -(uint)bVar25 | 1;
                goto LAB_004c9505;
              }
              if (bVar15 == 0) break;
              bVar15 = *(byte *)((int)ppbVar9 + 1);
              bVar25 = bVar15 < pbVar20[1];
              if (bVar15 != pbVar20[1]) goto LAB_004c9500;
              ppbVar9 = (byte **)((int)ppbVar9 + 2);
              pbVar20 = pbVar20 + 2;
            } while (bVar15 != 0);
            uVar4 = 0;
LAB_004c9505:
            if ((uVar4 == 0) &&
               ((*(byte *)(param_1[0x1f] + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
            goto LAB_004c960d;
          }
          uVar35 = 0x100b601c4;
        }
      }
      cVar3 = FUN_0040a5d0(uVar35);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (*(char *)(param_1 + 0x23) != '\0') {
        ppbVar9 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pbVar20 = &DAT_00b1bc54;
        do {
          bVar15 = *(byte *)ppbVar9;
          bVar25 = bVar15 < *pbVar20;
          if (bVar15 != *pbVar20) {
LAB_004c9300:
            uVar10 = -(uint)bVar25 | 1;
            goto LAB_004c9305;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar9 + 1);
          bVar25 = bVar15 < pbVar20[1];
          if (bVar15 != pbVar20[1]) goto LAB_004c9300;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pbVar20 = pbVar20 + 2;
        } while (bVar15 != 0);
        uVar10 = 0;
LAB_004c9305:
        if (uVar10 == 0) {
          local_244 = (uint **)param_1[0x22];
          dVar32 = floor((double)(float)local_244);
          local_244 = (uint **)(float)dVar32;
          if ((((int)dVar32 == 0) && (uVar10 = FUN_006eef60(), uVar10 % uVar4 == 0)) &&
             (param_1[10] == (uint *)0x112)) {
            ppbVar9 = (byte **)param_1[0x1f];
            if (ppbVar9 != (byte **)0x0) {
              ppbVar7 = ppbVar9;
              if (&DAT_0000000f < ppbVar9[5]) {
                ppbVar7 = (byte **)*ppbVar9;
              }
              pcVar19 = "NoseBlow";
              do {
                bVar15 = *(byte *)ppbVar7;
                bVar25 = bVar15 < (byte)*pcVar19;
                if (bVar15 != *pcVar19) {
LAB_004c93a0:
                  uVar4 = -(uint)bVar25 | 1;
                  goto LAB_004c93a5;
                }
                if (bVar15 == 0) break;
                bVar15 = *(byte *)((int)ppbVar7 + 1);
                bVar25 = bVar15 < ((byte *)pcVar19)[1];
                if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c93a0;
                ppbVar7 = (byte **)((int)ppbVar7 + 2);
                pcVar19 = (char *)((byte *)pcVar19 + 2);
              } while (bVar15 != 0);
              uVar4 = 0;
LAB_004c93a5:
              if ((uVar4 == 0) &&
                 ((*(char *)(ppbVar9 + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
              goto LAB_004c93dc;
            }
            cVar3 = FUN_0040a5d0("NoseBlow",1);
            if (cVar3 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
          }
        }
      }
LAB_004c93dc:
      if ((param_1[0x1f] == (uint *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_004c942d;
      ppbVar9 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar19 = "NoseBlow";
      do {
        bVar15 = *(byte *)ppbVar9;
        bVar25 = bVar15 < (byte)*pcVar19;
        if (bVar15 != *pcVar19) {
LAB_004c9420:
          uVar4 = -(uint)bVar25 | 1;
          goto LAB_004c9425;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar9 + 1);
        bVar25 = bVar15 < ((byte *)pcVar19)[1];
        if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c9420;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar19 = (char *)((byte *)pcVar19 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004c9425:
      if (uVar4 != 0) goto LAB_004c942d;
    }
LAB_004c960d:
    local_23c = (uint **)0x1;
    if ((local_288 != (int *)0x0) && (local_288[0x2d9] != 3)) {
      local_23c = (uint **)(uint)(local_288[0x2d9] == 0xd);
    }
    if (((local_28c != (int *)0x0) && (local_28c[0x2d9] != 3)) && (local_28c[0x2d9] != 0xd)) {
      local_23c = (uint **)0x0;
    }
    local_244 = (uint **)0x1;
    if (param_1[10] == (uint *)0x113) {
      FUN_0041a790(local_2b0,param_1 + 0xcf,2);
      local_244 = (uint **)((uint)local_244 & 0xff);
      if (5 < local_2a4) {
        local_244 = (uint **)0x0;
      }
      if (local_2b0[0] == '\0') {
        if (DAT_00c7de78 == 0) {
          puVar17 = &DAT_00c7f618;
        }
        else {
          puVar17 = (uint *)(DAT_00c7de78 + 0x30);
        }
        if (local_2ac != 0) {
          uVar10 = *(uint *)(local_2ac + -4);
          uVar4 = *puVar17;
          *puVar17 = *puVar17 - uVar10;
          puVar17[1] = puVar17[1] - (uint)(uVar4 < uVar10);
          (*local_250)();
        }
        local_14 = 0xffffffff;
      }
    }
    if (((char)local_23c != '\0') && ((char)local_244 != '\0')) {
      if (((int)param_1[0x104] < 1) ||
         (((int)param_1[0x104] % 0x1e != 0 || (uVar4 = FUN_006eef60(), 0x45 < uVar4 % 100)))) {
        param_1[0x104] = (uint *)((int)param_1[0x104] + 1);
      }
      else {
        iVar5 = 0;
        iVar16 = FUN_006be840();
        if ((float)((uint)(*(float *)(iVar16 + 0x33c) - (float)param_1[0xcf]) & DAT_00bacb40) <
            DAT_00baaa00) {
          iVar16 = 0x14;
          iVar5 = FUN_006be840();
          fVar26 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340);
          fVar29 = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c);
          fVar26 = fVar26 * fVar26 + fVar29 * fVar29;
          FUN_00435a50();
          if (DAT_00baab08 < fVar26) {
            iVar16 = 0x28;
          }
          iVar5 = FUN_006be840();
          fVar26 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340);
          fVar29 = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c);
          fVar26 = fVar26 * fVar26 + fVar29 * fVar29;
          FUN_00435a50();
          puVar17 = param_1[0x2f1];
          iVar5 = iVar16 + 0x14;
          if (DAT_00baaa78 <= fVar26) {
            iVar5 = iVar16;
          }
          iVar16 = iVar5 + 0x32;
          if (puVar17 != (uint *)0x1000) {
            iVar16 = iVar5;
          }
          iVar5 = iVar16 + 0x1e;
          if (puVar17 != (uint *)0x7) {
            iVar5 = iVar16;
          }
          if (puVar17 == (uint *)&DAT_00000008) {
            iVar5 = (int)((float)iVar5 * DAT_00baa120);
          }
          if (param_1[0x2ee] == (uint *)&DAT_00000008) {
            iVar5 = (int)((float)iVar5 * DAT_00baa304);
          }
          if (puVar17 == (uint *)0xffffffff) {
            iVar5 = 0;
          }
        }
        puVar17 = param_1[0x2f1];
        iVar16 = 0xaf;
        if (puVar17 != (uint *)0xffffffff) {
          iVar16 = 0x19;
        }
        iVar18 = iVar16 + 0x1e;
        if (puVar17 != (uint *)&DAT_00000008) {
          iVar18 = iVar16;
        }
        local_24c = (uint **)(iVar18 + 0x1e);
        if (puVar17 != (uint *)0x7) {
          local_24c = (uint **)iVar18;
        }
        if (puVar17 == (uint *)0x9) {
          local_24c = (uint **)(int)((float)(int)local_24c * DAT_00baa120);
        }
        if (param_1[0x2ee] == (uint *)0x9) {
          local_24c = (uint **)(int)((float)(int)local_24c * DAT_00baa120);
        }
        ppuVar30 = (uint **)(-(uint)(local_288 != (int *)0x0) & 0xc);
        local_244 = (uint **)((int)ppuVar30 + 9);
        if (local_28c == (int *)0x0) {
          local_244 = ppuVar30;
        }
        if ((local_288 != (int *)0x0) || (local_23c = local_244, local_28c != (int *)0x0)) {
          iVar16 = FUN_006be840();
          fVar26 = (float)param_1[0xd0] - *(float *)(iVar16 + 0x340);
          fVar29 = (float)param_1[0xcf] - *(float *)(iVar16 + 0x33c);
          local_23c = local_244;
          fVar26 = fVar26 * fVar26 + fVar29 * fVar29;
          FUN_00435a50();
          if (fVar26 < DAT_00baaaec) {
            local_244 = local_244 + 5;
            local_23c = local_244;
          }
        }
        if ((param_1[0x2ee] == (uint *)0x1001) && (param_1[0x2f1] == (uint *)0x1001)) {
          fVar26 = (float)(int)local_244;
          local_244 = (uint **)0x14;
          local_23c = (uint **)(int)(fVar26 * DAT_00baa1d4);
        }
        else {
          local_244 = (uint **)0x28;
          if (param_1[0x2f1] != (uint *)&DAT_00000008) {
            local_244 = (uint **)0x14;
          }
          if (param_1[0x2f1] == (uint *)0x7) {
            local_244 = (uint **)(int)((float)(int)local_244 * DAT_00baa120);
          }
        }
        iVar16 = FUN_006be840();
        fVar26 = (float)param_1[0xd0] - *(float *)(iVar16 + 0x340);
        fVar29 = (float)param_1[0xcf] - *(float *)(iVar16 + 0x33c);
        fVar26 = fVar26 * fVar26 + fVar29 * fVar29;
        FUN_00435a50();
        if (DAT_00baab08 < fVar26) {
          local_254 = (uint *)(int)((float)(int)local_254 * (float)DAT_00baa528);
        }
        iVar16 = 0;
        if (((local_288 != (int *)0x0) && (local_28c != (int *)0x0)) &&
           (iVar16 = 0xf, param_1[0x2f1] == (uint *)0x9)) {
          iVar16 = 0x1e;
        }
        if (param_1[10] == (uint *)0x113) {
          iVar5 = 0;
          local_24c = (uint **)0x186a0;
          local_23c = (uint **)0x186a0;
          local_250 = (code *)0x186a0;
          local_254 = (uint *)0x186a0;
          local_244 = (uint **)0x186a0;
LAB_004c9aae:
          uVar4 = FUN_006eef60();
          uVar4 = uVar4 % (uint)local_244;
        }
        else {
          local_24c = (uint **)((int)local_24c + iVar5);
          local_23c = (uint **)((int)local_24c + (int)local_23c);
          local_250 = (code *)((int)local_244 + (int)local_23c);
          local_254 = (uint *)(local_250 + (int)local_254);
          local_244 = (uint **)(iVar16 + (int)local_254);
          if (local_244 != (uint **)0x0) goto LAB_004c9aae;
          uVar4 = 0;
        }
        param_1[0x2ee] = param_1[0x2f1];
        if ((int)uVar4 < iVar5) {
          param_1[0x2d9] = (uint *)&DAT_00000008;
          param_1[0x104] = (uint *)0x0;
          *(undefined *)((int)param_1 + 0xbc1) = 0;
          param_1[0x2f1] = (uint *)&DAT_00000008;
        }
        else if ((int)uVar4 < (int)local_24c) {
          param_1[0x2d9] = (uint *)0x9;
          param_1[0x104] = (uint *)0x0;
          *(undefined *)((int)param_1 + 0xbc1) = 0;
          param_1[0x2f1] = (uint *)0x9;
          if (param_1[10] == (uint *)0x113) {
            *(undefined *)((int)param_1 + 0xbc1) = 1;
          }
        }
        else if ((int)uVar4 < (int)local_23c) {
          uVar4 = FUN_006eef60();
          piVar6 = local_28c;
          if (uVar4 % 10 < 6) {
            piVar6 = local_288;
          }
          piVar8 = local_288;
          if (piVar6 != (int *)0x0) {
            piVar8 = piVar6;
          }
          piVar6 = local_28c;
          if (piVar8 != (int *)0x0) {
            piVar6 = piVar8;
          }
          if (piVar6 != (int *)0x0) {
            piVar6[0x2d9] = 8;
            piVar6[0x104] = 0;
            FUN_006d6ba0(0xef,0x3f19999a,2,0,0x3f800000);
          }
          param_1[0x2f1] = (uint *)0x1001;
        }
        else if ((int)uVar4 < (int)local_250) {
          param_1[0x2d9] = (uint *)0x7;
          uVar4 = FUN_006eef60();
          *(char *)((int)param_1 + 0xbc1) = (char)((ulonglong)uVar4 % 3) * '\x02' + '\x01';
          param_1[0x104] = (uint *)0x0;
          param_1[0x2f1] = param_1[0x2d9];
        }
        else if ((int)uVar4 < (int)local_254) {
          param_1[0x2d9] = (uint *)&DAT_0000000e;
          param_1[0x104] = (uint *)0x0;
          *(undefined *)((int)param_1 + 0xbc1) = 0;
          if (local_288 != (int *)0x0) {
            local_288[0x2d9] = 0xe;
          }
          if (local_28c != (int *)0x0) {
            local_28c[0x2d9] = 0xe;
          }
          param_1[0x2f1] = param_1[0x2d9];
        }
        else if ((int)uVar4 < (int)local_244) {
          if (local_288 != (int *)0x0) {
            local_288[0x104] = 0;
            local_288[0x2d9] = 9;
          }
          if (local_28c != (int *)0x0) {
            local_28c[0x104] = -0x12;
            local_28c[0x2d9] = 9;
          }
          FUN_006d6ba0(0xf1,0x3f800000,2,0,0x3f800000);
          param_1[0x2f1] = (uint *)0x1000;
        }
      }
    }
  }
  else {
LAB_004c928b:
    if (puVar17 == (uint *)0x3) goto LAB_004c9294;
  }
  if (param_1[0x2d9] == (uint *)&DAT_00000008) {
    if (*(char *)((int)param_1 + 0xbc1) == '\0') {
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_004c9d85:
        cVar3 = FUN_0040a5d0("Charging",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar7 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar7 = (byte **)*ppbVar9;
        }
        pcVar19 = "Charging";
        do {
          bVar15 = *(byte *)ppbVar7;
          bVar25 = bVar15 < (byte)*pcVar19;
          if (bVar15 != *pcVar19) {
LAB_004c9d67:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004c9d6c;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar7 + 1);
          bVar25 = bVar15 < ((byte *)pcVar19)[1];
          if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c9d67;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004c9d6c:
        if ((uVar4 != 0) ||
           ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004c9d85;
      }
      local_244 = DAT_00baa454;
      ppuVar30 = DAT_00baa528;
      if ((param_1[0x319] == (uint *)0x12) ||
         (ppuVar30 = DAT_00baa2d0, param_1[0x319] == (uint *)0x13)) {
        local_244 = ppuVar30;
      }
      local_23c = (uint **)0xf0;
      FUN_00956780();
      FUN_0092dc30(local_23c,0x3f99999a,0x3c,0,local_244,0);
      if ((param_1[0x1f] == (uint *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        *(undefined *)((int)param_1 + 0xbc1) = 1;
      }
    }
    else {
      if (*(char *)((int)param_1 + 0xbc1) != '\x01') goto LAB_004c9f50;
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_004c9eae:
        cVar3 = FUN_0040a5d0("Shoot1",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar7 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar7 = (byte **)*ppbVar9;
        }
        pcVar19 = "Shoot1";
        do {
          bVar15 = *(byte *)ppbVar7;
          bVar25 = bVar15 < (byte)*pcVar19;
          if (bVar15 != *pcVar19) {
LAB_004c9e90:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004c9e95;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar7 + 1);
          bVar25 = bVar15 < ((byte *)pcVar19)[1];
          if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c9e90;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004c9e95:
        if ((uVar4 != 0) ||
           ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004c9eae;
      }
      if (param_1[0x1f] != (uint *)0x0) {
        cVar3 = FUN_0040add0();
        if (cVar3 != '\0') {
          local_264 = 0.0;
          local_260 = (uint **)0x42200000;
          iVar5 = FUN_0096f310(6,param_1 + 0xcf,0x42b40000,0x28,&local_264,param_1,0);
          *(undefined4 *)(iVar5 + 0x358) = 0x461c4000;
        }
        if ((param_1[0x1f] != (uint *)0x0) && (*(char *)(param_1 + 0x23) != '\0'))
        goto LAB_004c9f50;
      }
      param_1[0x2d9] = (uint *)0x3;
      *(undefined *)((int)param_1 + 0xbc1) = 0;
      param_1[0x104] = (uint *)0x0;
    }
  }
LAB_004c9f50:
  puVar17 = (uint *)&DAT_00000005;
  if (param_1[0x2d9] == (uint *)0x9) {
    cVar3 = *(char *)((int)param_1 + 0xbc1);
    local_24c = (uint **)0x96;
    if (cVar3 == '\0') {
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_004c9fce:
        cVar3 = FUN_0040a5d0("Charging",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar7 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar7 = (byte **)*ppbVar9;
        }
        pcVar19 = "Charging";
        do {
          bVar15 = *(byte *)ppbVar7;
          bVar25 = bVar15 < (byte)*pcVar19;
          if (bVar15 != *pcVar19) {
LAB_004c9fb0:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004c9fb5;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar7 + 1);
          bVar25 = bVar15 < ((byte *)pcVar19)[1];
          if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c9fb0;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004c9fb5:
        if ((uVar4 != 0) ||
           ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004c9fce;
      }
      if ((param_1[0x1f] == (uint *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        *(undefined *)((int)param_1 + 0xbc1) = 1;
      }
      local_244 = DAT_00baa454;
      ppuVar30 = DAT_00baa528;
      if ((param_1[0x319] == (uint *)0x12) ||
         (ppuVar30 = DAT_00baa2d0, param_1[0x319] == (uint *)0x13)) {
        local_244 = ppuVar30;
      }
      local_23c = (uint **)0xf0;
      FUN_00956780();
      FUN_0092dc30(local_23c,0x3f000000,0x3c,0,local_244,0);
    }
    else if (cVar3 == '\x01') {
      if (param_1[10] == (uint *)0x112) {
        ppbVar9 = (byte **)param_1[0x1f];
        if (ppbVar9 != (byte **)0x0) {
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar19 = "Shoot2Start";
          do {
            bVar15 = *(byte *)ppbVar9;
            bVar25 = bVar15 < (byte)*pcVar19;
            if (bVar15 != *pcVar19) {
LAB_004ca0e0:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004ca0e5;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar9 + 1);
            bVar25 = bVar15 < ((byte *)pcVar19)[1];
            if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004ca0e0;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004ca0e5:
          if ((uVar4 == 0) &&
             ((*(byte *)(param_1[0x1f] + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_004ca16d;
        }
        cVar3 = FUN_0040a5d0("Shoot2Start",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        puVar17 = param_1[0xe1];
        if ((float)param_1[0xe0] <= ((float)puVar17 + (float)puVar17) / DAT_00baa6fc) {
          if ((float)param_1[0xe0] <= (float)puVar17 / DAT_00baa6fc) {
            uVar35 = 0xb60210;
          }
          else {
            uVar35 = 0xb601cc;
          }
        }
        else {
          uVar35 = 0xb601d8;
        }
        FUN_0040a380(uVar35);
      }
LAB_004ca16d:
      puVar17 = param_1[10];
      if (puVar17 == (uint *)0x112) {
        if ((param_1[0x1f] != (uint *)0x0) && (*(char *)(param_1 + 0x23) != '\0'))
        goto LAB_004cb4df;
        uVar4 = FUN_006eef60();
        *(char *)((int)param_1 + 0xbc1) = (char)((ulonglong)uVar4 % 9) + '\x02';
        puVar17 = param_1[10];
      }
      if ((puVar17 == (uint *)0x113) &&
         ((param_1[0x1f] == (uint *)0x0 || (*(char *)(param_1 + 0x23) == '\0')))) {
        uVar4 = FUN_006eef60();
        *(char *)((int)param_1 + 0xbc1) = (char)((ulonglong)uVar4 % 0x1a) + '\x02';
      }
    }
    else {
      if (0x61 < (byte)(cVar3 - 2U)) {
        if (cVar3 == 'd') {
          if (param_1[10] == (uint *)0x112) {
            pcVar19 = "Shoot2End";
          }
          else {
            puVar17 = param_1[0xe1];
            if ((float)param_1[0xe0] <= ((float)puVar17 + (float)puVar17) / DAT_00baa6fc) {
              pcVar19 = "Shoot2End";
              if ((float)param_1[0xe0] <= (float)puVar17 / DAT_00baa6fc) {
                pcVar19 = "Shoot3End";
              }
            }
            else {
              pcVar19 = "Shoot1End";
            }
          }
          FUN_0040a380(pcVar19,0);
          if ((param_1[0x1f] == (uint *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
            param_1[0x2d9] = (uint *)0x3;
            *(undefined *)((int)param_1 + 0xbc1) = 0;
            param_1[0x104] = (uint *)0x0;
          }
        }
        goto LAB_004cb4df;
      }
      if (param_1[10] == (uint *)0x112) {
        pcVar19 = "Shoot2Loop";
      }
      else {
        puVar24 = param_1[0xe1];
        if ((float)param_1[0xe0] <= ((float)puVar24 + (float)puVar24) / DAT_00baa6fc) {
          pcVar19 = "Shoot2Loop";
          if ((float)param_1[0xe0] <= (float)puVar24 / DAT_00baa6fc) {
            pcVar19 = "Shoot3Loop";
          }
        }
        else {
          pcVar19 = "Shoot1Loop";
        }
      }
      FUN_0040a380(pcVar19,0);
      uVar4 = FUN_006eef60();
      FUN_006d6ba0(0xf5,0x3f800000,uVar4 % 0x28 + 0x1e,0,0x3f800000);
      cVar3 = *(char *)((int)param_1 + 0xbc1);
      local_280 = DAT_00baa7a4;
      local_254 = (uint *)&DAT_0000003c;
      if (cVar3 == '\x02') {
        local_268 = 8.407791e-45;
        local_270 = 2.802597e-45;
        local_68 = 0x3c2b92a63cab92a6;
        local_a8[0] = 0;
        local_a8[1] = 5;
        if (param_1[10] == (uint *)0x113) {
          local_280 = DAT_00baa804;
          local_a8[1] = 6;
        }
        puVar17 = (uint *)((uint)(param_1[10] == (uint *)0x113) * 2 + 10);
        local_278 = puVar17;
      }
      else if (cVar3 == '\x03') {
        local_268 = 7.006492e-45;
        local_270 = 2.802597e-45;
        local_68 = 0xbc80adfd3c80adfd;
        local_a8[0] = 0;
        local_a8[1] = 4;
        if (param_1[10] == (uint *)0x113) {
          local_280 = DAT_00baa804;
          local_a8[1] = 5;
        }
        puVar17 = (uint *)((uint)(param_1[10] == (uint *)0x113) * 2 + 8);
        local_278 = puVar17;
      }
      else if (cVar3 == '\x04') {
        local_268 = 4.203895e-45;
        local_270 = 1.401298e-45;
        local_68 = CONCAT44(local_68._4_4_,0x3e162051);
        local_a8[0] = 0;
        if (param_1[10] == (uint *)0x113) {
          local_280 = DAT_00baa804;
        }
        puVar17 = (uint *)0x2;
        local_278 = puVar17;
      }
      else {
        if (cVar3 == '\x05') {
          puVar17 = param_1[10];
          local_268 = 8.407791e-45;
          local_280 = DAT_00baa834;
          local_254 = (uint *)&DAT_0000003c;
          local_68 = CONCAT44(local_68._4_4_,0x3f20d97c);
          local_a8[0] = 0;
          if (puVar17 == (uint *)0x113) {
            local_68 = CONCAT44(local_68._4_4_,0x3ed67750);
            local_280 = DAT_00baa850;
          }
        }
        else if (cVar3 == '\x06') {
          puVar17 = param_1[10];
          local_268 = 1.121039e-44;
          local_280 = DAT_00baa804;
          local_254 = (uint *)0x5a;
          local_68 = CONCAT44(local_68._4_4_,0x3f20d97c);
          local_a8[0] = 0;
          if (puVar17 == (uint *)0x113) {
            local_68 = CONCAT44(local_68._4_4_,0x3f060a92);
            local_280 = DAT_00baa828;
          }
        }
        else if (cVar3 == '\a') {
          puVar17 = param_1[10];
          local_268 = 1.261169e-44;
          local_280 = DAT_00baa7e8;
          local_254 = (uint *)0x78;
          local_68 = CONCAT44(local_68._4_4_,0x3f060a92);
          local_a8[0] = 0;
          if (puVar17 == (uint *)0x113) {
            local_68 = CONCAT44(local_68._4_4_,0x3f20d97c);
            local_280 = DAT_00baa814;
          }
        }
        else {
          if (cVar3 != '\b') {
            if (cVar3 == '\t') {
              puVar17 = (uint *)&DAT_00000014;
              local_278 = (uint *)&DAT_00000014;
              local_268 = 4.203895e-44;
              local_280 = DAT_00baa7e8;
              local_270 = 4.203895e-45;
              local_68 = 0x3b16fbef3b16fbef;
              local_60 = 0x3b16fbef;
              local_a8[0] = 0;
              local_a8[1] = 3;
              local_a8[2] = 6;
              if (param_1[10] == (uint *)0x113) {
                puVar17 = (uint *)0x1e;
                local_280 = DAT_00baa834;
                local_268 = 2.802597e-44;
                local_a8[1] = 5;
                local_a8[2] = 10;
                local_278 = puVar17;
              }
            }
            else {
              if (cVar3 == '\n') {
                puVar17 = (uint *)0x19;
                local_268 = 1.401298e-44;
                if (param_1[10] != (uint *)0x113) {
                  puVar17 = (uint *)0x1e;
                }
                local_280 = DAT_00baa75c;
                local_68 = CONCAT44(local_68._4_4_,0x3c4de32e);
                local_a8[0] = 0;
                goto LAB_004cad12;
              }
              if (cVar3 == '\v') {
                puVar17 = (uint *)&DAT_00000014;
                local_268 = 2.802597e-44;
                local_280 = DAT_00baa6fc;
                local_270 = 2.802597e-45;
                local_24c = (uint **)0xf0;
                local_a8[0] = 0;
                local_e8[0] = (uint **)0x3b03126f;
                local_68 = 0x3a89421f3a89421f;
                local_a8[1] = 10;
                local_e8[1] = (uint **)0x3b03126f;
                local_278 = puVar17;
              }
              else if (cVar3 == '\f') {
                puVar17 = (uint *)&DAT_00000014;
                local_268 = 1.961818e-44;
                local_280 = DAT_00baa6fc;
                local_270 = 2.802597e-45;
                local_24c = (uint **)0xf0;
                local_a8[0] = 0;
                local_e8[0] = (uint **)0x3b449ba6;
                local_68 = 0x3bab92a6bbab92a6;
                local_a8[1] = 0;
                local_e8[1] = (uint **)0x3b449ba6;
                local_278 = puVar17;
              }
              else if (cVar3 == '\r') {
                puVar17 = (uint *)0xc;
                local_268 = 2.802597e-44;
                local_280 = DAT_00baa6fc;
                local_270 = 2.802597e-45;
                local_24c = (uint **)0xf0;
                local_a8[0] = 0;
                local_e8[0] = (uint **)0x3b656042;
                local_68 = 0xbb09421fbb09421f;
                local_a8[1] = 10;
                local_e8[1] = (uint **)0x3b656042;
                local_278 = puVar17;
              }
              else {
                if (cVar3 == '\x12') {
                  puVar17 = (uint *)0xc;
                  local_268 = 1.401298e-44;
                  local_280 = DAT_00baa6fc;
                  local_68 = CONCAT44(local_68._4_4_,0x3bcde32e);
                  local_a8[0] = 0;
                }
                else if (cVar3 == '\x13') {
                  puVar17 = (uint *)0x3;
                  local_268 = 8.407791e-45;
                  local_280 = DAT_00baa784;
                  local_254 = (uint *)0x78;
                  local_24c = (uint **)0xf0;
                  local_68 = CONCAT44(local_68._4_4_,0x3f00adfd);
                  local_a8[0] = 0;
                }
                else if (cVar3 == '\x14') {
                  puVar17 = (uint *)0x32;
                  local_268 = 3.503246e-44;
                  local_280 = DAT_00baa6fc;
                  local_68 = (ulonglong)local_68._4_4_ << 0x20;
                  local_a8[0] = 0;
                }
                else if (cVar3 == '\x15') {
                  local_268 = 4.203895e-45;
                  local_68 = CONCAT44(local_68._4_4_,0x3d0ef68c);
                  local_a8[0] = 0;
                }
                else {
                  if (cVar3 != '\x16') {
                    if (cVar3 == '\x17') {
                      puVar17 = (uint *)&DAT_00000014;
                      local_268 = 7.006492e-45;
                      local_280 = DAT_00baa804;
                      local_270 = 2.802597e-45;
                      local_254 = (uint *)0x78;
                      local_a8[0] = 0;
                      local_68 = 0;
                      local_a8[1] = 10;
                      local_278 = puVar17;
                    }
                    else {
                      if (cVar3 == '\x18') {
                        puVar17 = (uint *)0x2;
                        local_268 = 5.605194e-45;
                        local_280 = DAT_00baa784;
                        local_254 = (uint *)0x3d;
                        local_68 = CONCAT44(local_68._4_4_,0x3fc90fdb);
                        local_a8[0] = 0;
                        goto LAB_004cad12;
                      }
                      if (cVar3 == '\x0e') {
                        puVar17 = (uint *)0xa;
                        local_268 = 1.401298e-44;
                        local_280 = DAT_00baa75c;
                        local_270 = 2.802597e-45;
                        local_a8[0] = 0;
                        local_e8[0] = (uint **)0x3b656042;
                        local_68 = 0;
                        local_a8[1] = 5;
                        local_e8[1] = (uint **)0x3b656042;
                        local_278 = puVar17;
                      }
                      else if (cVar3 == '\x0f') {
                        puVar17 = (uint *)0x6;
                        local_268 = 1.401298e-44;
                        local_270 = 2.802597e-45;
                        local_24c = (uint **)0xf0;
                        local_280 = DAT_00baa7b8;
                        local_a8[0] = 0;
                        local_68 = 0;
                        local_a8[1] = 3;
                        ppuVar30 = (uint **)(((float)(int)param_1[0x104] - 0.0) / DAT_00baaad4);
                        if ((float)ppuVar30 <= 0.0) {
                          ppuVar30 = (uint **)0x0;
                        }
                        if ((float)DAT_00baa454 <= (float)ppuVar30) {
                          ppuVar30 = DAT_00baa454;
                        }
                        local_e8[0] = (uint **)(DAT_00baa044 /
                                               ((float)DAT_00baa454 - (float)ppuVar30 * DAT_00baa304
                                               ));
                        local_e8[1] = local_e8[0];
                        local_278 = puVar17;
                      }
                      else if (cVar3 == '\x10') {
                        puVar17 = (uint *)0xa;
                        local_268 = 1.121039e-44;
                        local_278 = (uint *)0xa;
                        local_270 = 2.802597e-45;
                        local_24c = (uint **)0xf0;
                        local_280 = DAT_00baa784;
                        ppuVar30 = (uint **)(((float)(int)param_1[0x104] - 0.0) / DAT_00baaad4);
                        if ((float)ppuVar30 <= 0.0) {
                          ppuVar30 = (uint **)0x0;
                        }
                        if ((float)DAT_00baa454 <= (float)ppuVar30) {
                          ppuVar30 = DAT_00baa454;
                        }
                        fVar26 = (float)ppuVar30 * _DAT_00baa838 + 0.0;
                        FUN_0041d540();
                        local_244 = (uint **)(fVar26 * DAT_00baa044);
                        iVar16 = 0;
                        local_e8[0] = local_244;
                        local_e8[1] = local_244;
                        iVar5 = 0;
                        local_68 = 0;
                        do {
                          *(int *)((int)local_a8 + iVar5) = iVar16;
                          iVar5 = iVar5 + 4;
                          iVar16 = iVar16 + 5;
                        } while (iVar16 < 10);
                      }
                      else if (cVar3 == '\x11') {
                        local_268 = 8.407791e-45;
                        local_270 = 1.401298e-45;
                        puVar17 = (uint *)0x2;
                        local_278 = (uint *)0x2;
                        local_24c = (uint **)0xf0;
                        ppuVar30 = (uint **)(((float)(int)param_1[0x104] - 0.0) / DAT_00baaad4);
                        if ((float)ppuVar30 <= 0.0) {
                          ppuVar30 = (uint **)0x0;
                        }
                        if ((float)DAT_00baa454 <= (float)ppuVar30) {
                          ppuVar30 = DAT_00baa454;
                        }
                        ppuVar30 = (uint **)((float)ppuVar30 * DAT_00baa7a8 + 0.0);
                        local_244 = ppuVar30;
                        FUN_0041d540();
                        local_68 = local_68 & 0xffffffff00000000;
                        local_a8[0] = 0;
                        local_280 = ((float)ppuVar30 * (float)ppuVar30 * DAT_00baa194 + DAT_00baa3a4
                                    ) * DAT_00baa7e8;
                        ppuVar30 = local_244;
                        FUN_0041d520();
                        local_e8[0] = (uint **)((float)ppuVar30 * _DAT_00baa060);
                      }
                      else {
                        if (cVar3 != '\x19') {
                          if (cVar3 == '\x1a') {
                            puVar17 = (uint *)0xa;
                            local_268 = 2.101948e-44;
                            local_280 = DAT_00baa784;
                            local_a8[0] = 0;
                          }
                          else {
                            if (cVar3 == '\x1b') {
                              local_280 = DAT_00baa784;
                              local_68 = (ulonglong)local_68._4_4_ << 0x20;
                              local_a8[0] = 0;
                            }
                            else {
                              puVar17 = (uint *)0xa;
                            }
                            local_268 = (float)((uint)(cVar3 == '\x1b') * 4 + 6);
                            local_254 = (uint *)0x96;
                            if (cVar3 != '\x1b') {
                              local_254 = (uint *)&DAT_0000003c;
                            }
                          }
                          goto LAB_004cad12;
                        }
                        puVar17 = (uint *)0x24;
                        local_268 = 2.802597e-44;
                        local_270 = 2.802597e-45;
                        local_280 = DAT_00baa784;
                        local_254 = (uint *)0x24;
                        local_a8[0] = 0;
                        local_68 = 0x3ec90fdb3ec90fdb;
                        local_a8[1] = 0x12;
                        local_278 = puVar17;
                      }
                    }
                    goto LAB_004cad22;
                  }
                  local_268 = 8.407791e-45;
                  local_280 = DAT_00baa804;
                  local_254 = (uint *)0x78;
                  local_24c = (uint **)0x78;
                  local_68 = CONCAT44(local_68._4_4_,0x3ec90fdb);
                  local_a8[0] = 0;
                }
LAB_004cad12:
                local_270 = 1.401298e-45;
                local_278 = puVar17;
              }
            }
            goto LAB_004cad22;
          }
          puVar17 = param_1[10];
          local_268 = 1.681558e-44;
          local_280 = DAT_00baa7b8;
          local_254 = (uint *)0x78;
          local_68 = CONCAT44(local_68._4_4_,0x3ed67750);
          local_a8[0] = 0;
          if (puVar17 == (uint *)0x113) {
            local_68 = CONCAT44(local_68._4_4_,0x3f3ba866);
            local_280 = DAT_00baa7f4;
          }
        }
        local_a8[0] = 0;
        local_270 = 1.401298e-45;
        puVar17 = (uint *)((uint)(puVar17 == (uint *)0x113) * 2 + 2);
        local_278 = puVar17;
      }
LAB_004cad22:
      local_250 = (code *)0x0;
      do {
        ppuVar30 = (uint **)param_1[0x104];
        local_260 = ppuVar30;
        if (((int)ppuVar30 - local_a8[(int)local_250]) % (int)puVar17 == 0) {
          AI_0043ef30();
          ppuVar30 = local_138;
          cVar3 = *(char *)((int)param_1 + 0xbc1);
          ppuVar23 = (uint **)((uint)local_138 | 0x80);
          local_18c = 0x40a00000;
          local_17c = 0x3fe66666;
          local_184 = 0xbd75c28f;
          local_188 = 0xc0000000;
          local_120 = 0;
          local_11c = 0x3f800000;
          local_118 = 0x3e4ccccd;
          local_23c = local_134;
          local_260 = local_134;
          local_244 = ppuVar23;
          ppuVar21 = local_134;
          if ((byte)(cVar3 - 2U) < 3) {
            local_178 = (float)(int)param_1[0x104] * *(float *)((int)&local_68 + (int)local_250 * 4)
            ;
            local_138 = ppuVar23;
          }
          else if ((byte)(cVar3 - 5U) < 4) {
            uVar4 = (int)param_1[0x104] % (int)local_254 - (int)local_254 / 2;
            uVar10 = (int)uVar4 >> 0x1f;
            local_178 = ((float)((uVar4 ^ uVar10) - uVar10) *
                        *(float *)((int)&local_68 + (int)local_250 * 4)) /
                        (float)((int)local_254 / 2);
            local_138 = ppuVar23;
          }
          else if (cVar3 == '\t') {
            local_178 = (float)((int)param_1[0x104] - (int)param_1[0x104] % (int)local_278) *
                        *(float *)((int)&local_68 + (int)local_250 * 4);
            local_138 = ppuVar23;
          }
          else if (cVar3 == '\n') {
            local_178 = (float)(int)param_1[0x104] * *(float *)((int)&local_68 + (int)local_250 * 4)
            ;
            ppuVar23 = (uint **)((uint)local_138 | 0x10080);
            local_138 = (uint **)((uint)local_138 | 0x10080);
          }
          else if ((byte)(cVar3 - 0xbU) < 7) {
            local_23c = (uint **)0x40000;
            local_178 = (float)(int)param_1[0x104] * *(float *)((int)&local_68 + (int)local_250 * 4)
            ;
            if (((uint)local_250 & 1) == 0) {
              local_23c = (uint **)0x80000;
            }
            local_244 = local_134;
            local_23c = (uint **)((uint)local_23c | (uint)ppuVar23);
            local_170 = local_e8[(int)local_250];
            if (cVar3 == '\x0e') {
              local_184 = 0xbdae147b;
              ppuVar23 = (uint **)((uint)local_23c | 0x400000);
              local_138 = (uint **)((uint)local_23c | 0x400000);
            }
            else {
              ppuVar23 = local_23c;
              local_138 = local_23c;
              if ((cVar3 != '\x0f') && (local_138 = local_23c, cVar3 != '\x11')) {
                local_184 = 0xbdae147b;
                local_138 = local_23c;
              }
            }
          }
          else if ((byte)(cVar3 - 0x12U) < 3) {
            local_178 = *(float *)((int)&local_68 + (int)local_250 * 4) * (float)(int)param_1[0x104]
            ;
            if (cVar3 == '\x13') {
              fVar26 = ((float)(int)param_1[0x104] * DAT_00baa7a8) / (float)(int)local_254;
              local_138 = ppuVar23;
              FUN_0041d540();
              local_178 = fVar26 * *(float *)((int)&local_68 + (int)local_250 * 4);
            }
            local_184 = 0xbdae147b;
            ppuVar21 = local_23c;
            ppuVar23 = (uint **)((uint)ppuVar30 | 0x400080);
            local_138 = (uint **)((uint)ppuVar30 | 0x400080);
            local_134 = local_23c;
          }
          else if ((byte)(cVar3 - 0x15U) < 3) {
            local_178 = *(float *)((int)&local_68 + (int)local_250 * 4) * (float)(int)param_1[0x104]
            ;
            if ((cVar3 == '\x16') || (cVar3 == '\x17')) {
              fVar26 = ((float)(int)param_1[0x104] * DAT_00baa7a8) / (float)(int)local_254;
              local_138 = ppuVar23;
              FUN_0041d540();
              local_178 = fVar26 * *(float *)((int)&local_68 + (int)local_250 * 4);
              if (((uint)local_250 & 1) == 0) {
                local_178 = DAT_00baa708 / (float)(int)local_268 + local_178;
              }
            }
            local_184 = 0xbdae147b;
            ppuVar21 = local_23c;
            ppuVar23 = (uint **)((uint)ppuVar30 | 0x800080);
            local_138 = (uint **)((uint)ppuVar30 | 0x800080);
            local_134 = local_23c;
          }
          else if (cVar3 == '\x18') {
            fVar26 = ((float)(int)param_1[0x104] * DAT_00baa7a8) / (float)(int)local_254;
            local_138 = ppuVar23;
            FUN_0041d540();
            local_184 = 0xbdae147b;
            local_178 = fVar26 * *(float *)((int)&local_68 + (int)local_250 * 4);
            ppuVar21 = local_23c;
          }
          else {
            local_138 = ppuVar23;
            if ((byte)(cVar3 - 0x19U) < 3) {
              if (cVar3 == '\x19') {
                fVar26 = ((float)(int)param_1[0x104] * DAT_00baa7a8) / (float)(int)local_254;
                FUN_0041d540();
                local_178 = fVar26 * *(float *)((int)&local_68 + (int)local_250 * 4);
                ppuVar21 = local_23c;
                if (local_250 == (code *)0x1) goto LAB_004cae59;
                cVar3 = *(char *)((int)param_1 + 0xbc1);
              }
              ppuVar21 = local_23c;
              ppuVar23 = (uint **)((uint)ppuVar30 | 0x200080);
              local_138 = (uint **)((uint)ppuVar30 | 0x200080);
              local_134 = local_23c;
              if (cVar3 == '\x1b') {
                local_134 = local_260;
                ppuVar21 = local_260;
                ppuVar23 = (uint **)((uint)local_244 | 0x600000);
                local_138 = (uint **)((uint)local_244 | 0x600000);
              }
            }
          }
LAB_004cae59:
          if (((uint)ppuVar23 & 0x10000) != 0) {
            local_154 = _DAT_00bac000;
            fStack_150 = _UNK_00bac004;
            uStack_14c = _UNK_00bac008;
            fStack_148 = _UNK_00bac00c;
          }
          if (((uint)ppuVar23 & 0x400000) != 0) {
            local_154 = _DAT_00bac920;
            fStack_150 = _UNK_00bac924;
            uStack_14c = _UNK_00bac928;
            fStack_148 = _UNK_00bac92c;
          }
          if (((uint)ppuVar23 & 0x200000) != 0) {
            local_154 = _DAT_00bac540;
            fStack_150 = _UNK_00bac544;
            uStack_14c = _UNK_00bac548;
            fStack_148 = _UNK_00bac54c;
          }
          if (((uint)ppuVar23 & 0x800000) != 0) {
            local_154 = _DAT_00bac920;
            fStack_150 = _UNK_00bac924;
            uStack_14c = _UNK_00bac928;
            fStack_148 = _UNK_00bac92c;
          }
          if ((((uint)ppuVar23 & 0x40000) != 0) || (((uint)ppuVar23 & 0x80000) != 0)) {
            ppuVar30 = local_170;
            if (((uint)ppuVar23 & 0x80000) != 0) {
              ppuVar30 = (uint **)((float)local_170 * DAT_00baad50);
            }
            local_154 = 0x3f19999a;
            fStack_150 = 0.6;
            uStack_14c = 0x3f19999a;
            ppuVar30 = (uint **)(((float)ppuVar30 - _DAT_00baacdc) / _DAT_00baa050);
            if ((float)ppuVar30 <= 0.0) {
              ppuVar30 = (uint **)0x0;
            }
            if ((float)DAT_00baa454 <= (float)ppuVar30) {
              ppuVar30 = DAT_00baa454;
            }
            fStack_148 = (float)ppuVar30 + 0.0;
          }
          cVar3 = *(char *)((int)param_1 + 0xbc1);
          iVar5 = local_fc;
          if (((param_1[10] == (uint *)0x113) && (ppuVar23 == (uint **)0x80)) &&
             (ppuVar21 == (uint **)0x0)) {
            if ((cVar3 != '\x19') && (cVar3 != '\x03')) {
              if (cVar3 == '\x02') goto LAB_004caf6d;
              goto LAB_004caf75;
            }
          }
          else {
LAB_004caf6d:
            if (cVar3 == '\x11') {
LAB_004caf75:
              local_fc = 2;
              local_154 = 0x3f800000;
              fVar26 = (float)(int)param_1[0x104] * DAT_00baa120;
              FUN_0041d520();
              uStack_14c = 0;
              fStack_148 = 0.8;
              fStack_150 = fVar26 * DAT_00baa380 + (float)DAT_00baa2d0;
              iVar5 = 2;
            }
          }
          local_2bc = 0.0;
          if (param_1[10] == (uint *)0x113) {
            local_2bc = DAT_00baa834;
            if (iVar5 == 2) {
              local_ec = 1;
              local_2bc = DAT_00baa89c;
            }
            local_2bc = local_2bc * DAT_00baa538;
          }
          local_2bc = local_2bc + (float)param_1[0xd0];
          local_2b8 = local_280;
          local_2b4 = (float)(int)local_268;
          local_2c0 = (float)param_1[0xcf] + 0.0;
          FUN_006cb2e0(&local_2c0,&local_2b8,9,local_190);
          ppuVar30 = (uint **)param_1[0x104];
          puVar17 = local_278;
        }
        local_250 = local_250 + 1;
      } while ((int)local_250 < (int)local_270);
      if ((int)local_24c < (int)ppuVar30) {
        *(undefined *)((int)param_1 + 0xbc1) = 100;
      }
      if ((((uint)param_1[0x5a] & 0x80) != 0) && ((int)param_1[0x88] < 3)) {
        param_1[0x88] = (uint *)0x3;
      }
      param_1[0x104] = (uint *)((int)ppuVar30 + 1);
    }
  }
LAB_004cb4df:
  if (param_1[0x2d9] == (uint *)0xd) {
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x62] = (uint *)0x0;
    if (*(char *)((int)param_1 + 0xbc1) == '\0') {
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_004cb563:
        cVar3 = FUN_0040a5d0(&DAT_00b1d5b0,1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar7 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar7 = (byte **)*ppbVar9;
        }
        pbVar20 = &DAT_00b1d5b0;
        do {
          bVar15 = *(byte *)ppbVar7;
          bVar25 = bVar15 < *pbVar20;
          if (bVar15 != *pbVar20) {
LAB_004cb545:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004cb54a;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar7 + 1);
          bVar25 = bVar15 < pbVar20[1];
          if (bVar15 != pbVar20[1]) goto LAB_004cb545;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pbVar20 = pbVar20 + 2;
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004cb54a:
        if ((uVar4 != 0) ||
           ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004cb563;
      }
      if ((param_1[0x1f] == (uint *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        *(undefined *)((int)param_1 + 0xbc1) = 1;
      }
    }
    if (((byte)(*(char *)((int)param_1 + 0xbc1) - 1U) < 9) &&
       (FUN_0040a380("Hiding",0), local_25c == (uint *)0x0)) {
      fVar26 = (float)(extraout_ECX & 0xffffff00);
      puVar17 = (uint *)(extraout_EDX & 0xffffff00);
      local_24c = (uint **)0x0;
      local_270 = fVar26;
      local_254 = puVar17;
      do {
        local_245 = *(byte *)(param_1 + 0x2f0);
        local_250 = (code *)0x0;
        if (local_245 == 0) {
          local_23d = *(byte *)((int)param_1 + 0xbc1);
          if (local_23d == 1) {
            local_260 = (uint **)0x0;
            iVar5 = 0x3f;
            local_23c = (uint **)0x2;
            if (local_24c != (uint **)0x0) {
              iVar5 = 0;
            }
            if (local_24c == (uint **)0x1) {
              iVar5 = 0x40;
              fVar26 = 1.401298e-45;
              local_270 = fVar26;
            }
          }
          else {
            if (local_23d != 2) {
              if (local_23d < 3) goto LAB_004cb6ab;
              local_254 = (uint *)0x1;
              puVar17 = (uint *)0x1;
              goto LAB_004cbacb;
            }
            local_260 = (uint **)0x0;
            iVar5 = 0x41;
            local_23c = (uint **)0x2;
            if (local_24c != (uint **)0x0) {
              iVar5 = 0;
            }
            if (local_24c == (uint **)0x1) {
              iVar5 = 0x42;
LAB_004cb78e:
              fVar26 = (float)CONCAT31((int3)((uint)fVar26 >> 8),1);
              local_270 = fVar26;
            }
          }
LAB_004cb796:
          if (iVar5 != 0) {
LAB_004cb856:
            local_268 = 0.0;
            local_26c = 0.0;
            local_260 = (uint **)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) - DAT_00baa950
                                 );
            local_25c = (uint *)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) + DAT_00baa950)
            ;
            puVar11 = (undefined *)((int)local_23c + -1);
            if ((int)puVar11 < 1) {
              puVar11 = (undefined *)0x1;
            }
            local_244 = (uint **)(float)(int)puVar11;
            if (NAN((float)local_244) != ((float)local_244 == 0.0)) {
              FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
            }
            ppuVar30 = (uint **)(((float)(int)local_24c - 0.0) / ((float)local_244 - 0.0));
            if ((float)ppuVar30 <= 0.0) {
              ppuVar30 = (uint **)0x0;
            }
            if ((float)DAT_00baa454 <= (float)ppuVar30) {
              ppuVar30 = DAT_00baa454;
            }
            local_26c = ((float)local_260 - (float)local_25c) * (float)ppuVar30 + (float)local_25c;
            local_268 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x20) - DAT_00baa950;
            pfVar12 = (float *)FUN_00813520(local_284,&local_26c,0,0,0,0);
            local_26c = *pfVar12;
            local_268 = pfVar12[1];
            local_260 = (uint **)FUN_00703950();
            iVar16 = FUN_00694fb0(iVar5,local_250,0);
            pfVar12 = (float *)(iVar16 + 0x3c);
            if (*(float *)(iVar16 + 0x3c) <= *(float *)(iVar16 + 0x40) &&
                *(float *)(iVar16 + 0x40) != *(float *)(iVar16 + 0x3c)) {
              pfVar12 = (float *)(iVar16 + 0x40);
            }
            fVar26 = *pfVar12 * *(float *)(iVar16 + 0x38) + (float)local_260[0xdc] + DAT_00baa904;
            if ((local_268 - (float)local_260[0xd0]) * (local_268 - (float)local_260[0xd0]) +
                (local_26c - (float)local_260[0xcf]) * (local_26c - (float)local_260[0xcf]) <
                fVar26 * fVar26) {
              local_27c = local_260[0xcf];
              local_278 = local_260[0xd0];
              pfVar12 = (float *)FUN_00813520(&local_298,&local_27c,fVar26,0,0,0);
              local_26c = *pfVar12;
              local_268 = pfVar12[1];
            }
            uVar13 = FUN_006eef60();
            piVar6 = (int *)FUN_00428b20(iVar5,local_250,&local_26c,&DAT_00c7b640,param_1,0,uVar13);
            fVar26 = local_270;
            puVar17 = local_254;
            if (piVar6 != (int *)0x0) {
              (**(code **)(*piVar6 + 0xc))();
              fVar26 = local_270;
              puVar17 = local_254;
            }
          }
        }
        else {
LAB_004cb6ab:
          local_23d = (byte)puVar17;
          if (local_245 != 1) {
            local_254 = puVar17;
            if (local_245 == 2) {
              local_245 = *(byte *)((int)param_1 + 0xbc1);
              if (local_245 == 1) {
                local_23c = (uint **)0x1;
                if (local_24c == (uint **)0x0) {
                  iVar5 = 0x10f;
LAB_004cb838:
                  local_23c = (uint **)0x1;
                  uVar14 = (undefined3)((uint)local_24c >> 8);
                  local_270 = (float)CONCAT31(uVar14,1);
                  local_254 = (uint *)CONCAT31(uVar14,local_23d);
                  goto LAB_004cb84c;
                }
              }
              else if (local_245 == 2) {
                local_23c = (uint **)0x1;
                if (local_24c == (uint **)0x0) {
                  iVar5 = 0x110;
                  goto LAB_004cb838;
                }
              }
              else {
                local_254 = (uint *)((uint)puVar17 & 0xff);
                puVar17 = local_254;
                if (2 < local_245) {
                  local_254 = (uint *)0x1;
                  puVar17 = local_254;
                }
              }
            }
            goto LAB_004cbacb;
          }
          local_23d = *(byte *)((int)param_1 + 0xbc1);
          if (local_23d == 1) {
            fVar26 = (float)((uint)fVar26 & 0xff);
            local_23c = (uint **)0x1;
            if (local_24c == (uint **)0x0) {
              fVar26 = 1.401298e-45;
            }
            iVar5 = 0x33;
            local_250 = (code *)(uint)(local_24c == (uint **)0x0);
            local_270 = fVar26;
            if (local_24c != (uint **)0x0) {
              iVar5 = 0;
            }
            goto LAB_004cb796;
          }
          if (local_23d == 2) {
            local_23c = (uint **)0x2;
            if (local_24c == (uint **)0x0) {
              iVar5 = 0x2f;
LAB_004cb84c:
              local_250 = (code *)0x1;
              goto LAB_004cb856;
            }
            if (local_24c == (uint **)0x1) {
              iVar5 = 0x30;
LAB_004cb784:
              local_250 = (code *)0x1;
              goto LAB_004cb78e;
            }
          }
          else {
            if (local_23d == 3) {
              local_23c = (uint **)&DAT_00000004;
              if (local_24c == (uint **)0x0) {
                iVar5 = 0x32;
              }
              else if (local_24c == (uint **)0x1) {
                iVar5 = 0x2e;
              }
              else {
                if (local_24c != (uint **)0x2) {
                  if (local_24c == (uint **)0x3) {
                    iVar5 = 0x31;
                    goto LAB_004cb784;
                  }
                  goto LAB_004cbacb;
                }
                iVar5 = 0x34;
              }
              goto LAB_004cb84c;
            }
            if (3 < local_23d) {
              puVar17 = (uint *)CONCAT31((int3)((uint)puVar17 >> 8),1);
              local_254 = puVar17;
            }
          }
        }
LAB_004cbacb:
        local_24c = (uint **)((int)local_24c + 1);
      } while ((SUB41(fVar26,0) == '\0') && ((char)puVar17 == '\0'));
      *(char *)((int)param_1 + 0xbc1) = *(char *)((int)param_1 + 0xbc1) + '\x01';
      if ((char)puVar17 != '\0') {
        *(undefined *)((int)param_1 + 0xbc1) = 10;
        if (local_28c != (int *)0x0) {
          local_28c[0x104] = 2;
        }
        if (local_288 != (int *)0x0) {
          local_288[0x104] = 2;
        }
      }
    }
    if (*(char *)((int)param_1 + 0xbc1) == '\n') {
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_004cbb9a:
        cVar3 = FUN_0040a5d0("Reveal",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar7 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar7 = (byte **)*ppbVar9;
        }
        pcVar19 = "Reveal";
        do {
          bVar15 = *(byte *)ppbVar7;
          bVar25 = bVar15 < (byte)*pcVar19;
          if (bVar15 != *pcVar19) {
LAB_004cbb7c:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004cbb81;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar7 + 1);
          bVar25 = bVar15 < ((byte *)pcVar19)[1];
          if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cbb7c;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004cbb81:
        if ((uVar4 != 0) ||
           ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004cbb9a;
      }
      if ((param_1[0x1f] == (uint *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = (uint *)0x3;
        *(char *)(param_1 + 0x2f0) = *(char *)(param_1 + 0x2f0) + '\x01';
        *(undefined *)(param_1 + 0xec) = 0;
        param_1[0x62] = (uint *)&DAT_00000004;
      }
    }
  }
  puVar17 = param_1[0x2d9];
  if (puVar17 == (uint *)&DAT_0000000e) {
    ppbVar9 = (byte **)param_1[0x1f];
    if (ppbVar9 == (byte **)0x0) {
LAB_004cbc4e:
      cVar3 = FUN_0040a5d0("Summon",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar7 = ppbVar9;
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar7 = (byte **)*ppbVar9;
      }
      pcVar19 = "Summon";
      do {
        bVar15 = *(byte *)ppbVar7;
        bVar25 = bVar15 < (byte)*pcVar19;
        if (bVar15 != *pcVar19) {
LAB_004cbc30:
          uVar4 = -(uint)bVar25 | 1;
          goto LAB_004cbc35;
        }
        if (bVar15 == 0) break;
        bVar15 = *(byte *)((int)ppbVar7 + 1);
        bVar25 = bVar15 < ((byte *)pcVar19)[1];
        if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cbc30;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pcVar19 = (char *)((byte *)pcVar19 + 2);
      } while (bVar15 != 0);
      uVar4 = 0;
LAB_004cbc35:
      if ((uVar4 != 0) ||
         ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004cbc4e;
    }
    if (param_1[0x1f] != (uint *)0x0) {
      uVar4 = FUN_0040add0();
      if ((char)uVar4 != '\0') {
        local_23c = (uint **)(uVar4 & 0xffffff00);
        FUN_006d6ba0(0xf3,0x3f800000,0x78,0,0x3f800000);
        uVar4 = FUN_006eef60();
        ppuVar21 = (uint **)(uVar4 % 5);
        local_24c = (uint **)0x0;
        ppuVar30 = local_23c;
        local_244 = ppuVar21;
        do {
          local_25c = (uint *)0x0;
          if (ppuVar21 == (uint **)0x0) {
            iVar5 = 1;
            ppuVar30 = (uint **)((uint)ppuVar30 & 0xff);
            if (local_24c == (uint **)0x0) {
              ppuVar30 = (uint **)0x1;
            }
            iVar16 = 0x2f;
            local_23c = ppuVar30;
            if (local_24c != (uint **)0x0) {
              iVar16 = 0;
            }
LAB_004cbd19:
            local_260 = (uint **)0x0;
            ppuVar21 = local_244;
            if (iVar16 != 0) goto LAB_004cbddb;
          }
          else {
            if (ppuVar21 == (uint **)0x1) {
              iVar16 = 0x2e;
              iVar5 = 2;
              if (local_24c != (uint **)0x0) {
                iVar16 = 0;
              }
              if (local_24c != (uint **)0x1) goto LAB_004cbd19;
              iVar16 = 0x34;
              local_23c = (uint **)CONCAT31(local_23c._1_3_,(char)local_24c);
            }
            else if (ppuVar21 == (uint **)0x2) {
              iVar16 = 0x31;
              if (local_24c != (uint **)0x0) {
                iVar16 = 0;
              }
              iVar5 = 2;
              if (local_24c != (uint **)0x1) goto LAB_004cbd19;
              iVar16 = 0x33;
              iVar5 = 2;
              local_23c = local_24c;
            }
            else if (ppuVar21 == (uint **)0x3) {
              iVar16 = 0x32;
              iVar5 = 2;
              if (local_24c != (uint **)0x0) {
                iVar16 = 0;
              }
              if (local_24c != (uint **)0x1) goto LAB_004cbd19;
              iVar16 = 0x30;
              local_23c = local_24c;
            }
            else {
              if ((ppuVar21 != (uint **)&DAT_00000004) ||
                 (iVar5 = 1, ppuVar21 = local_244, local_24c != (uint **)0x0)) goto LAB_004cc074;
              iVar16 = 0x13;
              local_25c = (uint *)0x1;
              local_23c = (uint **)CONCAT31((int3)((uint)local_24c >> 8),1);
            }
LAB_004cbddb:
            local_28c = (int *)0x0;
            local_290 = 0.0;
            iVar5 = iVar5 + -1;
            local_260 = (uint **)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) - DAT_00baa950
                                 );
            local_288 = (int *)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) + DAT_00baa950);
            if (iVar5 < 1) {
              iVar5 = 1;
            }
            local_250 = (code *)(float)iVar5;
            if (NAN((float)local_250) != ((float)local_250 == 0.0)) {
              FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
            }
            fVar26 = ((float)(int)local_24c - 0.0) / ((float)local_250 - 0.0);
            auVar27 = ZEXT416((uint)fVar26);
            if (fVar26 <= 0.0) {
              auVar27 = ZEXT816(0) << 0x20;
            }
            if ((float)DAT_00baa454 <= auVar27._0_4_) {
              auVar27._0_4_ = DAT_00baa454;
            }
            local_290 = ((float)local_260 - (float)local_288) * auVar27._0_4_ + (float)local_288;
            local_288 = (int *)0x4;
            local_28c = (int *)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x20) - DAT_00baa950);
            if (iVar16 != 0x13) {
              local_288 = (int *)0x1;
            }
            do {
              pfVar12 = (float *)FUN_00813520(&local_298,&local_290,0,0,0,0);
              local_290 = *pfVar12;
              local_28c = (int *)pfVar12[1];
              if (iVar16 != 0x13) {
                local_260 = (uint **)FUN_00703950();
                iVar5 = FUN_00694fb0(iVar16,local_25c,0);
                pfVar12 = (float *)(iVar5 + 0x3c);
                if (*(float *)(iVar5 + 0x3c) <= *(float *)(iVar5 + 0x40) &&
                    *(float *)(iVar5 + 0x40) != *(float *)(iVar5 + 0x3c)) {
                  pfVar12 = (float *)(iVar5 + 0x40);
                }
                fVar26 = *pfVar12 * *(float *)(iVar5 + 0x38) + (float)local_260[0xdc] + DAT_00baa904
                ;
                if (((float)local_28c - (float)local_260[0xd0]) *
                    ((float)local_28c - (float)local_260[0xd0]) +
                    (local_290 - (float)local_260[0xcf]) * (local_290 - (float)local_260[0xcf]) <
                    fVar26 * fVar26) {
                  local_258 = local_260[0xcf];
                  local_254 = local_260[0xd0];
                  pfVar12 = (float *)FUN_00813520(&local_274,&local_258,fVar26,0,0,0);
                  local_290 = *pfVar12;
                  local_28c = (int *)pfVar12[1];
                }
              }
              uVar13 = FUN_006eef60();
              FUN_00428b20(iVar16,local_25c,&local_290,&DAT_00c7b640,param_1,0,uVar13);
              local_288 = (int *)((int)local_288 + -1);
            } while (local_288 != (int *)0x0);
            local_288 = (int *)0x0;
            ppuVar30 = local_23c;
            ppuVar21 = local_244;
          }
LAB_004cc074:
          local_24c = (uint **)((int)local_24c + 1);
        } while ((char)ppuVar30 == '\0');
      }
      if ((param_1[0x1f] != (uint *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
        puVar17 = param_1[0x2d9];
        goto LAB_004cc0a0;
      }
    }
LAB_004cc333:
    param_1[0x2d9] = (uint *)0x3;
    param_1[0x104] = (uint *)0x0;
  }
  else {
LAB_004cc0a0:
    if (puVar17 == (uint *)0x7) {
      if (*(char *)((int)param_1 + 0xbc1) == '\x01') {
        ppbVar9 = (byte **)param_1[0x1f];
        if (ppbVar9 != (byte **)0x0) {
          ppbVar7 = ppbVar9;
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar7 = (byte **)*ppbVar9;
          }
          pcVar19 = "SmashHead";
          do {
            bVar15 = *(byte *)ppbVar7;
            bVar25 = bVar15 < (byte)*pcVar19;
            if (bVar15 != *pcVar19) {
LAB_004cc0e8:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004cc0ed;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar7 + 1);
            bVar25 = bVar15 < ((byte *)pcVar19)[1];
            if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cc0e8;
            ppbVar7 = (byte **)((int)ppbVar7 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004cc0ed:
          if ((uVar4 == 0) &&
             ((*(char *)(ppbVar9 + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_004cc124;
        }
        cVar3 = FUN_0040a5d0("SmashHead",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
LAB_004cc124:
      if (*(char *)((int)param_1 + 0xbc1) == '\x03') {
        ppbVar9 = (byte **)param_1[0x1f];
        if (ppbVar9 != (byte **)0x0) {
          ppbVar7 = ppbVar9;
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar7 = (byte **)*ppbVar9;
          }
          pcVar19 = "SmashHead3";
          do {
            bVar15 = *(byte *)ppbVar7;
            bVar25 = bVar15 < (byte)*pcVar19;
            if (bVar15 != *pcVar19) {
LAB_004cc163:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004cc168;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar7 + 1);
            bVar25 = bVar15 < ((byte *)pcVar19)[1];
            if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cc163;
            ppbVar7 = (byte **)((int)ppbVar7 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004cc168:
          if ((uVar4 == 0) &&
             ((*(char *)(ppbVar9 + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_004cc19f;
        }
        cVar3 = FUN_0040a5d0("SmashHead3",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
LAB_004cc19f:
      if (*(char *)((int)param_1 + 0xbc1) == '\x05') {
        ppbVar9 = (byte **)param_1[0x1f];
        if (ppbVar9 != (byte **)0x0) {
          ppbVar7 = ppbVar9;
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar7 = (byte **)*ppbVar9;
          }
          pcVar19 = "SmashHead5";
          do {
            bVar15 = *(byte *)ppbVar7;
            bVar25 = bVar15 < (byte)*pcVar19;
            if (bVar15 != *pcVar19) {
LAB_004cc1e0:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004cc1e5;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar7 + 1);
            bVar25 = bVar15 < ((byte *)pcVar19)[1];
            if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cc1e0;
            ppbVar7 = (byte **)((int)ppbVar7 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004cc1e5:
          if ((uVar4 == 0) &&
             ((*(char *)(ppbVar9 + 0xd) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_004cc21c;
        }
        cVar3 = FUN_0040a5d0("SmashHead5",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
LAB_004cc21c:
      if (param_1[0x1f] != (uint *)0x0) {
        cVar3 = FUN_0040add0();
        if (cVar3 != '\0') {
          FUN_00703670();
          FUN_006d6ba0(0x34,0x3ecccccd,2,0,0x3f800000);
          AI_0043ef30();
          local_1e0 = local_1e0 | 0x80;
          uVar13 = 0x19;
          local_234 = 0x41200000;
          local_224 = 0x3fc00000;
          if (*(char *)((int)param_1 + 0xbc1) != '\x03') {
            uVar13 = 0x32;
          }
          local_228 = 0x3f99999a;
          if (*(char *)((int)param_1 + 0xbc1) == '\x05') {
            uVar13 = 0x14;
          }
          FUN_006ccdd0(uVar13,&DAT_00c7b640,0,local_238);
        }
        if ((param_1[0x1f] != (uint *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
          puVar17 = param_1[0x2d9];
          goto LAB_004cc2f4;
        }
      }
      goto LAB_004cc333;
    }
LAB_004cc2f4:
    if (puVar17 == (uint *)0x10) {
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 == (byte **)0x0) {
LAB_004cc367:
        cVar3 = FUN_0040a5d0("Death",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar9 = (byte **)*ppbVar9;
        }
        pcVar19 = "Death";
        do {
          bVar15 = *(byte *)ppbVar9;
          bVar25 = bVar15 < (byte)*pcVar19;
          if (bVar15 != *pcVar19) {
LAB_004cc34c:
            uVar4 = -(uint)bVar25 | 1;
            goto LAB_004cc351;
          }
          if (bVar15 == 0) break;
          bVar15 = *(byte *)((int)ppbVar9 + 1);
          bVar25 = bVar15 < ((byte *)pcVar19)[1];
          if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cc34c;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar15 != 0);
        uVar4 = 0;
LAB_004cc351:
        if ((uVar4 != 0) ||
           ((*(byte *)(param_1[0x1f] + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004cc367;
      }
      if (param_1[0x1f] == (uint *)0x0) {
        iVar5 = -1;
      }
      else {
        dVar32 = floor((double)(float)param_1[0x22]);
        iVar5 = (int)dVar32;
      }
      local_264 = 320.0;
      local_260 = (uint **)0x43520000;
      local_23c = (uint **)(((float)iVar5 - 0.0) / DAT_00baa854);
      if ((float)local_23c <= 0.0) {
        local_23c = (uint **)0x0;
      }
      if ((float)DAT_00baa454 <= (float)local_23c) {
        local_23c = DAT_00baa454;
      }
      FUN_006d6ba0(0xef,0x3f800000,100,0,0x3f000000);
      FUN_00703670();
      iVar5 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11f8);
      if (*(char *)(iVar5 + 0x8c) == '\0') {
        FUN_00945130();
        *(undefined *)(iVar5 + 0x8c) = 1;
      }
      local_25c = (uint *)0x0;
      local_244 = *(uint ***)(DAT_00c71678 + 0x18300);
      if (local_244[0x499] != (uint *)0x0) {
        do {
          puVar17 = local_25c;
          cVar3 = FUN_006a8f20();
          if (cVar3 != '\0') {
            local_260 = (uint **)local_244[0x497][(int)puVar17];
            if ((local_260[10] != (uint *)0x112) && (local_260[10] != (uint *)0x113)) {
              pcVar2 = (code *)(*local_260)[9];
              FUN_00431310();
              (*pcVar2)();
              puVar17 = local_25c;
            }
          }
          local_25c = (uint *)((int)puVar17 + 1);
        } while (local_25c < local_244[0x499]);
      }
      fVar29 = DAT_00baab14;
      fVar26 = DAT_00baaaa4;
      fVar31 = (DAT_00baa6fc - ((float)local_23c + (float)local_23c)) *
               (float)local_23c * (float)local_23c;
      fVar28 = DAT_00baaaa4 - (float)param_1[0xce];
      param_1[0xcf] =
           (uint *)((DAT_00baab14 - (float)param_1[0xcd]) * fVar31 + (float)param_1[0xcd]);
      param_1[0xd0] = (uint *)(fVar28 * fVar31 + (float)param_1[0xce]);
      fVar28 = (fVar26 - (float)param_1[0xce]) / DAT_00baa854;
      fVar26 = (float)local_23c * DAT_00baada8 * ((float)local_23c - (float)DAT_00baa454);
      param_1[0xd8] = (uint *)(((fVar29 - (float)param_1[0xcd]) / DAT_00baa854) * fVar26);
      param_1[0xd9] = (uint *)(fVar28 * fVar26);
      puVar17 = param_1[10];
      if (puVar17 == (uint *)0x112) {
        param_1[0x5a] = (uint *)((uint)param_1[0x5a] | 1);
        *(undefined *)(param_1 + 0xec) = 1;
        param_1[0x62] = (uint *)0x0;
        param_1[0x5b] = param_1[0x5b];
        FUN_006ae630();
        if ((param_1[0x1f] != (uint *)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
          ppbVar9 = (byte **)param_1[0x1f];
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar19 = "Death";
          do {
            bVar15 = *(byte *)ppbVar9;
            bVar25 = bVar15 < (byte)*pcVar19;
            if (bVar15 != *pcVar19) {
LAB_004cc633:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004cc638;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar9 + 1);
            bVar25 = bVar15 < ((byte *)pcVar19)[1];
            if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cc633;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004cc638:
          if (uVar4 == 0) {
            param_1[0xd8] = DAT_00c7b640;
            param_1[0xd9] = DAT_00c7b644;
            FUN_006c0f30(0x113,param_1[0xb],0,0xffffffff);
            param_1[0x5a] = (uint *)((uint)param_1[0x5a] & 0xfffffffe);
            param_1[0xe0] = param_1[0xe1];
            param_1[0x2d9] = (uint *)0x2;
            param_1[0x5b] = param_1[0x5b];
            local_260 = (uint **)param_1[0x1f];
            if (local_260 == (uint **)0x0) {
LAB_004cc6fb:
              cVar3 = FUN_0040a5d0("Appear",1);
              if (cVar3 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(param_1 + 0x23) = 1;
              }
            }
            else {
              ppbVar9 = (byte **)local_260;
              if (&DAT_0000000f < ((byte **)local_260)[5]) {
                ppbVar9 = (byte **)*local_260;
              }
              pcVar19 = "Appear";
              do {
                bVar15 = *(byte *)ppbVar9;
                bVar25 = bVar15 < (byte)*pcVar19;
                if (bVar15 != *pcVar19) {
LAB_004cc6e0:
                  uVar4 = -(uint)bVar25 | 1;
                  goto LAB_004cc6e5;
                }
                if (bVar15 == 0) break;
                bVar15 = *(byte *)((int)ppbVar9 + 1);
                bVar25 = bVar15 < ((byte *)pcVar19)[1];
                if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cc6e0;
                ppbVar9 = (byte **)((int)ppbVar9 + 2);
                pcVar19 = (char *)((byte *)pcVar19 + 2);
              } while (bVar15 != 0);
              uVar4 = 0;
LAB_004cc6e5:
              if ((uVar4 != 0) ||
                 ((*(char *)((byte **)local_260 + 0xd) != '\0' &&
                  (*(char *)(param_1 + 0x23) == '\0')))) goto LAB_004cc6fb;
            }
            FUN_006d6ba0(0xf1,0x3f800000,2,0,0x3f4ccccd);
            iVar5 = FUN_0040b220();
            *(uint *)(iVar5 + 0x8c) = *(uint *)(iVar5 + 0x8c) | 1;
            goto LAB_004cc9f1;
          }
        }
        puVar17 = param_1[10];
      }
      if (puVar17 == (uint *)0x113) {
        param_1[0x5a] = (uint *)((uint)param_1[0x5a] | 1);
        *(undefined *)(param_1 + 0xec) = 1;
        param_1[0x62] = (uint *)0x0;
        param_1[0x5b] = param_1[0x5b];
        FUN_006ae630();
        if ((param_1[0x1f] != (uint *)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
          ppbVar9 = (byte **)param_1[0x1f];
          if (&DAT_0000000f < ppbVar9[5]) {
            ppbVar9 = (byte **)*ppbVar9;
          }
          pcVar19 = "Death";
          do {
            bVar15 = *(byte *)ppbVar9;
            bVar25 = bVar15 < (byte)*pcVar19;
            if (bVar15 != *pcVar19) {
LAB_004cc7c5:
              uVar4 = -(uint)bVar25 | 1;
              goto LAB_004cc7ca;
            }
            if (bVar15 == 0) break;
            bVar15 = *(byte *)((int)ppbVar9 + 1);
            bVar25 = bVar15 < ((byte *)pcVar19)[1];
            if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004cc7c5;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar15 != 0);
          uVar4 = 0;
LAB_004cc7ca:
          if (uVar4 == 0) {
            FUN_006d5400();
          }
        }
      }
    }
  }
  if (*(int *)(DAT_00c71678 + 0x264f8) % 0x3c == 0) {
    param_1[0xcd] = (uint *)0x43a00000;
    param_1[0xce] = (uint *)0x43820000;
    iVar5 = FUN_006be840();
    param_1[0xcd] = *(uint **)(iVar5 + 0x33c);
    iVar5 = FUN_006eef60();
    puVar17 = (uint *)(((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baaa78 - DAT_00baa9b4) + (float)param_1[0xcd]);
    if ((float)puVar17 <= (float)DAT_00baaab0) {
      puVar17 = DAT_00baaab0;
    }
    if ((float)DAT_00baab60 <= (float)puVar17) {
      puVar17 = DAT_00baab60;
    }
    param_1[0xcd] = puVar17;
  }
  if (param_1[0x2d9] == (uint *)0xd) {
    param_1[0xcd] = (uint *)0x43a00000;
    param_1[0xce] = (uint *)0x43820000;
  }
  local_260 = (uint **)((float)param_1[0xdb] * DAT_00baa3a4);
  param_1[0xdb] = (uint *)local_260;
  puVar17 = param_1[0xcd];
  if (((((NAN((float)puVar17) || NAN((float)DAT_00c7b640)) ==
         ((float)puVar17 == (float)DAT_00c7b640)) ||
       ((NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
        ((float)param_1[0xce] == (float)DAT_00c7b644))) && (param_1[0x2d9] != (uint *)0x10)) &&
     (param_1[0x2d9] != (uint *)0x2)) {
    local_23c = (uint **)param_1[0xce];
    local_25c = (uint *)((float)puVar17 - (float)param_1[0xcf]);
    local_244 = (uint **)((float)local_23c - (float)param_1[0xd0]);
    fVar26 = (float)local_244 * (float)local_244 + (float)local_25c * (float)local_25c;
    FUN_00435a50();
    ppuVar30 = local_23c;
    if (DAT_00baa87c < fVar26) {
      puVar17 = local_25c;
      if ((DAT_00baa4b0 < fVar26) && ((float)DAT_00ba9fe4 < fVar26)) {
        puVar17 = (uint *)((float)local_25c * (DAT_00baa4b0 / fVar26));
        local_244 = (uint **)((float)local_244 * (DAT_00baa4b0 / fVar26));
      }
      param_1[0xd8] =
           (uint *)(((float)puVar17 / (float)local_260 - (float)param_1[0xd8]) * DAT_00baa120 +
                   (float)param_1[0xd8]);
      param_1[0xd9] =
           (uint *)(((float)local_244 / (float)local_260 - (float)param_1[0xd9]) * DAT_00baa120 +
                   (float)param_1[0xd9]);
      ppuVar30 = (uint **)param_1[0xce];
    }
    param_1[0xd0] = (uint *)ppuVar30;
  }
LAB_004cc9f1:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
  while( true ) {
    bVar15 = *(byte *)((int)ppbVar7 + 1);
    bVar25 = bVar15 < ((byte *)pcVar19)[1];
    if (bVar15 != ((byte *)pcVar19)[1]) goto LAB_004c9040;
    ppbVar7 = (byte **)((int)ppbVar7 + 2);
    pcVar19 = (char *)((byte *)pcVar19 + 2);
    if (bVar15 == 0) break;
LAB_004c9020:
    bVar15 = *(byte *)ppbVar7;
    bVar25 = bVar15 < (byte)*pcVar19;
    if (bVar15 != *pcVar19) {
LAB_004c9040:
      uVar4 = -(uint)bVar25 | 1;
      goto LAB_004c9045;
    }
    if (bVar15 == 0) break;
  }
  uVar4 = 0;
LAB_004c9045:
  if ((uVar4 != 0) || ((*(char *)(ppbVar9 + 0xd) != '\0' && (*(char *)(local_23c + 0x11) == '\0'))))
  {
LAB_004c9061:
    cVar3 = FUN_0040a5d0("Intro",1);
    ppuVar30 = local_23c;
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(ppuVar30 + 0x11) = 1;
    }
  }
  local_244 = DAT_00baa454;
  ppuVar30 = DAT_00baa528;
  if ((param_1[0x319] == (uint *)0x12) || (ppuVar30 = DAT_00baa2d0, param_1[0x319] == (uint *)0x13))
  {
    local_244 = ppuVar30;
  }
  local_23c = (uint **)0xee;
  FUN_00956780();
  FUN_0092dc30(local_23c,0x3f800000,2,0,local_244,0);
  FUN_007e1e70(0x17,0x3da3d70a);
  goto LAB_004c9128;
}

