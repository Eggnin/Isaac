/* Local J460 decompiler output.
 * VA: 0x0048c3b0
 * Entry: 0048c3b0
 * Dispatcher: 0x006c2990
 * Types: 402
 * Identities: 402.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0048ee30; instructions=2332
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=402; identities=402.0.0; dispatcher=0x006c2990;
   end=0x0048ee30; instructions=2332 */

void __fastcall AI_0048c3b0(int param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  uint3 uVar3;
  undefined *puVar4;
  undefined uVar5;
  char cVar6;
  byte bVar7;
  undefined4 uVar8;
  int iVar9;
  int iVar10;
  byte **ppbVar11;
  uint uVar12;
  byte **ppbVar13;
  undefined4 *puVar14;
  float fVar15;
  int *piVar16;
  float fVar17;
  undefined4 *puVar18;
  char *pcVar19;
  undefined4 extraout_ECX;
  float *pfVar20;
  int iVar21;
  undefined4 *puVar22;
  bool bVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float *pfVar27;
  undefined4 uVar28;
  TypeDescriptor *pTVar29;
  TypeDescriptor *pTVar30;
  undefined4 uVar31;
  undefined local_1d0 [8];
  undefined4 local_1c8 [8];
  undefined4 local_1a8;
  undefined4 uStack_1a4;
  undefined4 local_1a0;
  char local_19c [16];
  char local_18c [16];
  undefined local_17c;
  undefined4 *local_178;
  undefined4 local_174;
  int local_170;
  int local_16c;
  undefined4 *local_168;
  undefined4 *local_164;
  int local_160;
  undefined4 local_15c;
  undefined4 *local_158;
  float local_154;
  int local_150;
  undefined4 *local_14c;
  float local_148;
  float local_144;
  float local_140;
  float local_13c;
  char local_138 [4];
  int local_134;
  float local_130;
  float *local_12c;
  float local_128;
  float local_124;
  float local_120;
  float local_11c;
  float local_114;
  float local_110;
  byte local_109;
  float local_108;
  byte local_101;
  float local_100;
  float *local_fc;
  undefined local_f8 [4];
  undefined4 local_f4;
  undefined4 local_f0;
  undefined4 local_e4;
  undefined4 local_64;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined8 local_30;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  uVar2 = _UNK_00babf2c;
  uVar31 = _UNK_00babf28;
  uVar8 = _UNK_00babf24;
  uVar28 = _DAT_00babf20;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2d66;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_114 = *(float *)(param_1 + 0x30);
  local_150 = param_1;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    local_1a8 = 0x3f19999a;
    uStack_1a4 = 0x3ecccccd;
    uVar5 = 3;
    local_1a0 = 0;
    if ((undefined4 *)(param_1 + 0x1e4) != local_1c8) {
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x204) = 0x3ecccccd3f19999a;
      *(undefined4 *)(param_1 + 0x1e4) = uVar28;
      *(undefined4 *)(param_1 + 0x1e8) = uVar8;
      *(undefined4 *)(param_1 + 0x1ec) = uVar31;
      *(undefined4 *)(param_1 + 0x1f0) = uVar2;
      *(undefined4 *)(param_1 + 0x20c) = 0;
      uVar5 = *(undefined *)(param_1 + 0xb64);
    }
    *(undefined *)(param_1 + 0xbc4) = 0xff;
    *(undefined *)(param_1 + 0xbc6) = uVar5;
    *(undefined4 *)(param_1 + 0x354) = 2000;
    puStack_20 = &stack0xfffffffc;
    goto LAB_0048ee0c;
  }
  uVar12 = *(uint *)(param_1 + 0x16c);
  local_15c = 0x1a;
  if (local_114 != 1.401298e-45) {
    local_15c = 0x5e;
  }
  fVar17 = *(float *)(param_1 + 0x168);
  if (((uint)fVar17 & 0x40) != 0) {
    local_15c = 0x17;
  }
  if (((uint)fVar17 & 0x80) != 0) {
    local_15c = 0x19;
  }
  local_144 = *(float *)(param_1 + 900);
  local_100 = local_144 * DAT_00baa418;
  local_12c = (float *)(local_144 / DAT_00baa81c);
  local_158 = (undefined4 *)(local_144 * DAT_00baa1d4);
  local_108 = local_144 - (float)(*(byte *)(param_1 + 0xbc0) + 1) * (local_144 / DAT_00baa924);
  local_144 = local_144 - (float)(*(byte *)(param_1 + 0xbc1) + 1) * (float)local_12c;
  local_fc = (float *)(local_144 + (float)local_12c);
  fVar24 = *(float *)(param_1 + 0x380);
  local_140 = fVar24;
  puVar4 = &stack0xfffffffc;
  if ((NAN(local_144) || NAN((float)local_fc)) != (local_144 == (float)local_fc)) {
    FUN_00a112c0(0x10,"Start and End parameters cannot be the same!",local_24);
    fVar24 = *(float *)(param_1 + 0x380);
    fVar17 = *(float *)(param_1 + 0x168);
    uVar12 = *(uint *)(param_1 + 0x16c);
    puVar4 = puStack_20;
  }
  puStack_20 = puVar4;
  fVar15 = local_114;
  local_154 = 7.006492e-45;
  local_124 = 1.401298e-45;
  if (local_100 < fVar24) {
    local_124 = 7.006492e-45;
  }
  if (local_114 == 1.401298e-45) {
    local_124 = 1.401298e-45;
  }
  local_13c = 4.203895e-45;
  local_140 = (local_140 - local_144) / ((float)local_fc - local_144);
  local_fc = (float *)&DAT_0000000f;
  if (local_114 != 1.401298e-45) {
    local_13c = 2.101948e-44;
  }
  local_120 = fVar17;
  if ((((fVar24 <= (float)local_158) || (*(char *)(param_1 + 0x173) != '\0')) &&
      (*(int *)(param_1 + 0xb64) != 0x10)) && (*(int *)(param_1 + 0xbc8) == 0)) {
    uVar12 = *(uint *)(param_1 + 0x16c);
    local_120 = *(float *)(param_1 + 0x168);
    fVar17 = (float)(uVar12 & 0x20000000);
    if (fVar17 == 0.0) {
      *(undefined *)(param_1 + 0x173) = 0;
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
    }
  }
  local_160 = 0;
  local_16c = 0;
  local_14c = (undefined4 *)0x0;
  local_168 = (undefined4 *)0x0;
  local_158 = (undefined4 *)0x0;
  local_164 = (undefined4 *)0x0;
  local_14 = 0;
  if ((uVar12 & 0x10000000) == 0) {
    local_17c = 0;
    local_178 = (undefined4 *)0x0;
    local_174 = 0;
    local_170 = 0;
    local_14._1_3_ = 0;
    uVar3 = local_14._1_3_;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    if (local_114 == 1.401298e-45) {
      iVar9 = AI_0041af60(local_18c,0x17,0xffffffff,0xffffffff,1,0);
      local_17c = 1;
      puVar14 = *(undefined4 **)(iVar9 + 4);
      local_174 = *(undefined4 *)(iVar9 + 8);
      local_170 = *(int *)(iVar9 + 0xc);
      local_178 = puVar14;
      local_110 = (float)local_170;
      if (local_18c[0] == '\0') {
        local_14._0_1_ = 2;
LAB_0048c81f:
        local_17c = 1;
        local_178 = puVar14;
        local_170 = (int)local_110;
        FUN_00a648b0(0,0);
        local_14._0_1_ = 1;
      }
    }
    else {
      local_14._1_3_ = uVar3;
      iVar9 = AI_0041af60(local_19c,0xd9,0xffffffff,0xffffffff,1,0);
      local_17c = 1;
      puVar14 = *(undefined4 **)(iVar9 + 4);
      local_174 = *(undefined4 *)(iVar9 + 8);
      local_170 = *(int *)(iVar9 + 0xc);
      local_178 = puVar14;
      local_110 = (float)local_170;
      if (local_19c[0] == '\0') {
        local_14._0_1_ = 3;
        goto LAB_0048c81f;
      }
    }
    if (local_110 == 0.0) {
      iVar9 = 0;
    }
    else {
      puVar22 = (undefined4 *)0x0;
      puVar18 = (undefined4 *)0x0;
      do {
        if (puVar18 == puVar22) {
          FUN_0042c920(puVar18,puVar14);
          puVar22 = local_164;
        }
        else {
          *puVar18 = *puVar14;
          local_168 = puVar18 + 1;
        }
        puVar14 = puVar14 + 1;
        local_110 = (float)((int)local_110 + -1);
        puVar18 = local_168;
      } while (local_110 != 0.0);
      local_160 = local_16c;
      iVar9 = local_16c;
      param_1 = local_150;
      local_158 = puVar22;
      local_14c = local_168;
    }
    local_14 = (uint)local_14._1_3_ << 8;
    fVar15 = local_114;
  }
  else {
    if (local_114 == 1.401298e-45) {
      uVar28 = 0x17;
    }
    else {
      uVar28 = 0xd9;
    }
    FUN_006ac7e0(uVar28,0xffffffff,fVar17,&local_16c);
    local_158 = local_164;
    local_13c = 8.407791e-45;
    local_160 = local_16c;
    local_14c = local_168;
    iVar9 = local_16c;
  }
  local_14c = (undefined4 *)((int)local_14c - iVar9 >> 2);
  local_110 = (float)local_14c;
  if ((*(float *)(param_1 + 0x380) <= local_108) && (*(int *)(param_1 + 0xb64) != 0x10)) {
    local_fc = (float *)0x0;
    do {
      if ((int)local_13c <= (int)local_110) break;
      uVar28 = FUN_006eef60();
      fVar17 = *(float *)(param_1 + 0x370) + DAT_00baa784;
      if (fVar15 == 1.401298e-45) {
        uVar8 = FUN_00813520(local_1d0,param_1 + 0x33c,fVar17,0,0,0);
        iVar9 = FUN_00428b20(0x17,0,uVar8,&DAT_00c7b640,param_1,0,uVar28);
        if (iVar9 != 0) {
          *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
          local_110 = (float)((int)local_110 + 1);
          *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
          *(undefined4 *)(iVar9 + 0x360) = *(undefined4 *)(param_1 + 0x360);
          *(undefined4 *)(iVar9 + 0x364) = *(undefined4 *)(param_1 + 0x364);
          local_108 = *(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c);
          local_100 = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
          fVar17 = local_108 * local_108 + local_100 * local_100;
          FUN_00435a50();
          if (DAT_00ba9fe4 < fVar17) {
            local_100 = (DAT_00baa7b8 / fVar17) * local_100;
            local_108 = (DAT_00baa7b8 / fVar17) * local_108;
          }
          iVar10 = FUN_006eef60();
          local_148 = (float)((double)iVar10 + (&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4 *
                      DAT_00baa704;
          local_148 = local_148 + local_148;
          fVar17 = local_148;
          FUN_0041d540();
          local_11c = fVar17;
          fVar24 = local_148;
          FUN_0041d520();
          fVar17 = *(float *)(iVar9 + 0x36c);
          if ((NAN(fVar17) || NAN(DAT_00ba9fe4)) == (fVar17 == DAT_00ba9fe4)) {
            *(float *)(iVar9 + 0x360) =
                 ((local_11c + local_108) * *(float *)(iVar9 + 0x39c)) / fVar17 +
                 *(float *)(iVar9 + 0x360);
            *(float *)(iVar9 + 0x364) =
                 ((fVar24 + local_100) * *(float *)(iVar9 + 0x39c)) / fVar17 +
                 *(float *)(iVar9 + 0x364);
          }
          iVar9 = *(int *)(param_1 + 0xc64);
joined_r0x0048ccfd:
          fVar17 = DAT_00baa528;
          if ((iVar9 == 0x12) || (fVar17 = DAT_00baa2d0, local_108 = DAT_00baa454, iVar9 == 0x13)) {
            local_108 = fVar17;
          }
          local_100 = 3.321077e-43;
          FUN_00956780();
          FUN_0092dc30(local_100,0x3f4ccccd,10,0,local_108,0);
        }
      }
      else {
        uVar8 = FUN_00813520(&local_174,param_1 + 0x33c,fVar17,0,0,0);
        iVar9 = FUN_00428b20(0xd9,2,uVar8,&DAT_00c7b640,param_1,0,uVar28);
        if (iVar9 != 0) {
          *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
          local_110 = (float)((int)local_110 + 1);
          *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
          *(undefined4 *)(iVar9 + 0x360) = *(undefined4 *)(param_1 + 0x360);
          *(undefined4 *)(iVar9 + 0x364) = *(undefined4 *)(param_1 + 0x364);
          local_100 = *(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c);
          local_108 = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
          fVar17 = local_100 * local_100 + local_108 * local_108;
          FUN_00435a50();
          if (DAT_00ba9fe4 < fVar17) {
            local_108 = (DAT_00baa7b8 / fVar17) * local_108;
            local_100 = (DAT_00baa7b8 / fVar17) * local_100;
          }
          iVar10 = FUN_006eef60();
          local_11c = (float)((double)iVar10 + (&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4 *
                      DAT_00baa704;
          local_11c = local_11c + local_11c;
          fVar17 = local_11c;
          FUN_0041d540();
          local_148 = fVar17;
          fVar24 = local_11c;
          FUN_0041d520();
          fVar17 = *(float *)(iVar9 + 0x36c);
          if ((NAN(fVar17) || NAN(DAT_00ba9fe4)) == (fVar17 == DAT_00ba9fe4)) {
            *(float *)(iVar9 + 0x360) =
                 ((local_148 + local_100) * *(float *)(iVar9 + 0x39c)) / fVar17 +
                 *(float *)(iVar9 + 0x360);
            *(float *)(iVar9 + 0x364) =
                 ((fVar24 + local_108) * *(float *)(iVar9 + 0x39c)) / fVar17 +
                 *(float *)(iVar9 + 0x364);
          }
          iVar9 = *(int *)(param_1 + 0xc64);
          goto joined_r0x0048ccfd;
        }
      }
      local_fc = (float *)((int)local_fc + 1);
      fVar15 = local_114;
    } while ((int)local_fc < (int)local_124);
    *(char *)(param_1 + 0xbc0) = *(char *)(param_1 + 0xbc0) + '\x01';
  }
  if ((*(int *)(param_1 + 0x7c) != 0) && (cVar6 = FUN_0040add0("Splat"), cVar6 != '\0')) {
    local_13c = DAT_00baa454;
    fVar17 = DAT_00baa528;
    if ((*(int *)(param_1 + 0xc64) == 0x12) ||
       (fVar17 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
      local_13c = fVar17;
    }
    local_fc = (float *)0x48;
    FUN_00956780();
    FUN_0092dc30(local_fc,0x3f800000,2,0,local_13c,0);
  }
  iVar9 = *(int *)(param_1 + 0xb64);
  if ((*(uint *)(param_1 + 0x16c) & 0x10000000) == 0) {
LAB_0048ce8f:
    if (iVar9 == 3) goto LAB_0048ce98;
    if (iVar9 == 10) {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      ppbVar11 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar11 == (byte **)0x0) {
LAB_0048d27e:
        cVar6 = FUN_0040a5d0("SpinStart",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar13 = ppbVar11;
        if (&DAT_0000000f < ppbVar11[5]) {
          ppbVar13 = (byte **)*ppbVar11;
        }
        pcVar19 = "SpinStart";
        do {
          bVar7 = *(byte *)ppbVar13;
          bVar23 = bVar7 < (byte)*pcVar19;
          if (bVar7 != *pcVar19) {
LAB_0048d260:
            uVar12 = -(uint)bVar23 | 1;
            goto LAB_0048d265;
          }
          if (bVar7 == 0) break;
          bVar7 = *(byte *)((int)ppbVar13 + 1);
          bVar23 = bVar7 < ((byte *)pcVar19)[1];
          if (bVar7 != ((byte *)pcVar19)[1]) goto LAB_0048d260;
          ppbVar13 = (byte **)((int)ppbVar13 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar7 != 0);
        uVar12 = 0;
LAB_0048d265:
        if ((uVar12 != 0) ||
           ((*(byte *)(ppbVar11 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_0048d27e;
      }
      *(undefined4 *)(param_1 + 0x354) = 2000;
      if (*(char *)(param_1 + 0xbc2) == '\0') {
        uVar12 = FUN_006eef60();
        *(char *)(param_1 + 0xbc4) = (char)((ulonglong)uVar12 % 0xc);
        uVar12 = FUN_006eef60();
        *(char *)(param_1 + 0xbc3) =
             ((char)((ulonglong)uVar12 % 3) -
             (char)(int)((DAT_00baa454 - *(float *)(param_1 + 0x380) / *(float *)(param_1 + 900)) *
                        DAT_00baada8)) + '\x03';
        *(undefined *)(param_1 + 0xbc2) = 1;
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (cVar6 = FUN_0040add0("Shoot"), cVar6 == '\0')) {
        if (*(int *)(param_1 + 0x188) == 0) {
          local_fc = (float *)0x48;
          FUN_00956780();
          FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
          uVar28 = FUN_006eef60();
          uVar31 = 0;
          pTVar30 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
          pTVar29 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar8 = 0;
          uVar28 = FUN_00428b20(1000,local_15c,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar28);
          piVar16 = (int *)__RTDynamicCast(uVar28,uVar8,pTVar29,pTVar30,uVar31);
          if (piVar16 != (int *)0x0) {
            piVar16[0x39] = 0x40400000;
            piVar16[0x3a] = 0x40400000;
            (**(code **)(*piVar16 + 0xc))();
          }
          FUN_0041a790(local_138,param_1 + 0x33c,0xffffffff);
          local_14._0_1_ = 5;
          local_fc = (float *)0x0;
          pfVar20 = local_12c;
          if (local_12c != (float *)0x0) {
            do {
              iVar9 = *(int *)(local_134 + (int)local_fc * 4);
              if (*(int *)(iVar9 + 0x28) == 0xd9) {
                *(float *)(param_1 + 0x380) =
                     *(float *)(iVar9 + 0x380) + *(float *)(param_1 + 0x380);
                pcVar1 = *(code **)(**(int **)(local_134 + (int)local_fc * 4) + 0x24);
                FUN_00431310(local_150);
                (*pcVar1)(&uStack_4c);
                pfVar20 = local_12c;
                param_1 = local_150;
              }
              local_fc = (float *)((int)local_fc + 1);
            } while (local_fc < pfVar20);
          }
          uVar3 = local_14._1_3_;
          local_14 = (uint)local_14._1_3_ << 8;
          if (local_138[0] == '\0') {
            local_14._0_1_ = 6;
            local_14._1_3_ = uVar3;
            FUN_00a648b0(0,0);
            local_14 = (uint)local_14._1_3_ << 8;
          }
        }
        *(undefined4 *)(param_1 + 0x188) = 4;
        iVar9 = FUN_006eef60();
        local_124 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                    DAT_00baa704;
        local_124 = local_124 + local_124;
        fVar17 = local_124;
        FUN_0041d540();
        local_11c = fVar17;
        fVar17 = local_124;
        FUN_0041d520();
        *(float *)(param_1 + 0x334) = local_11c;
        *(float *)(param_1 + 0x338) = fVar17;
      }
      else {
        if (*(char *)(param_1 + 400) != '\0') {
          local_124 = *(float *)(param_1 + 0x19c);
          local_11c = *(float *)(param_1 + 0x1a0);
          fVar24 = local_124 * local_124 + local_11c * local_11c;
          FUN_00435a50();
          fVar17 = local_11c;
          if (DAT_00ba9fe4 < fVar24) {
            local_124 = *(float *)(param_1 + 0x19c) * (DAT_00baa454 / fVar24);
            fVar17 = *(float *)(param_1 + 0x1a0) * (DAT_00baa454 / fVar24);
          }
          fVar24 = *(float *)(param_1 + 0x334) * local_124 + *(float *)(param_1 + 0x338) * fVar17;
          fVar17 = fVar24 * fVar17;
          fVar24 = fVar24 * local_124;
          *(float *)(param_1 + 0x338) = *(float *)(param_1 + 0x338) - (fVar17 + fVar17);
          *(float *)(param_1 + 0x334) = *(float *)(param_1 + 0x334) - (fVar24 + fVar24);
        }
        fVar17 = *(float *)(param_1 + 0x36c);
        fVar24 = *(float *)(param_1 + 0x338) * DAT_00baa6bc;
        if ((NAN(fVar17) || NAN(DAT_00ba9fe4)) == (fVar17 == DAT_00ba9fe4)) {
          *(float *)(param_1 + 0x360) =
               (*(float *)(param_1 + 0x334) * DAT_00baa6bc * *(float *)(param_1 + 0x39c)) / fVar17 +
               *(float *)(param_1 + 0x360);
          *(float *)(param_1 + 0x364) =
               (fVar24 * *(float *)(param_1 + 0x39c)) / fVar17 + *(float *)(param_1 + 0x364);
        }
        local_109 = *(byte *)(param_1 + 0xbc4);
        uVar12 = (uint)local_109;
        fVar17 = (float)uVar12 / DAT_00baa834;
        local_148 = fVar17 * DAT_00baa708;
        fVar17 = fVar17 * _DAT_00baae90 * DAT_00baa088;
        local_124 = fVar17;
        FUN_0041d540();
        local_11c = fVar17;
        fVar17 = local_124;
        FUN_0041d520();
        local_12c = (float *)(fVar17 * 0.0 + local_11c * DAT_00baa81c);
        local_130 = local_11c * 0.0 - fVar17 * DAT_00baa81c;
        fVar17 = local_148 + local_148;
        FUN_0041d520();
        local_11c = *(float *)(param_1 + 0x340) + DAT_00ba9fe4;
        local_120 = fVar17 * *(float *)(param_1 + 0x370) + *(float *)(param_1 + 0x33c);
        fVar17 = (float)uVar12;
        FUN_00499d20();
        bVar7 = local_109;
        if (fVar17 < DAT_00baa454) {
          AI_0043ef30();
          uVar12 = *(uint *)(param_1 + 0xc78);
          local_64 = 5;
          local_e4 = 0x3f8ccccd;
          local_f4 = 0xc20c0000;
          local_f0 = 0x40800000;
          if ((-1 < (int)uVar12) &&
             (local_124 = *(float *)(*(int *)(param_1 + 0x330) + 0x68),
             uVar12 <= (uint)((*(int *)(*(int *)(param_1 + 0x330) + 0x6c) - (int)local_124) / 0x7c))
             ) {
            FUN_004071f0(uVar12 * 0x7c + (int)local_124);
          }
          FUN_006cb2e0(&local_120,&local_130,0,local_f8);
          bVar7 = *(byte *)(param_1 + 0xbc4);
        }
        *(undefined4 *)(param_1 + 0x188) = 0;
        *(byte *)(param_1 + 0xbc4) = bVar7 + 1;
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        if (*(char *)(param_1 + 0xbc5) == '\0') {
          *(undefined4 *)(param_1 + 0xb64) = 3;
          *(undefined *)(param_1 + 0xbc2) = 0;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
        else {
          *(char *)(param_1 + 0xbc5) = *(char *)(param_1 + 0xbc5) + -1;
          cVar6 = FUN_0040a5d0("SpinStart",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
          *(undefined4 *)(param_1 + 0x354) = 2000;
          *(undefined *)(param_1 + 0xbc2) = 0;
        }
      }
      goto LAB_0048eccf;
    }
    if (((iVar9 == 8) || (iVar9 == 4)) || (iVar9 == 0xb)) {
      local_101 = 0;
      if ((iVar9 == 4) || (iVar9 == 0xb)) {
        bVar7 = *(byte *)(param_1 + 0xbc2);
        if (bVar7 == 0) {
          *(undefined *)(param_1 + 0xbc2) = 1;
          *(undefined4 *)(param_1 + 0x410) = 0;
          puVar14 = (undefined4 *)FUN_0081e9d0(&local_130,0);
          local_fc = (float *)0x1a4;
          *(undefined4 *)(param_1 + 0x334) = *puVar14;
          *(undefined4 *)(param_1 + 0x338) = puVar14[1];
          FUN_00956780();
          FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
          iVar9 = *(int *)(param_1 + 0xb64);
          goto LAB_0048dc48;
        }
LAB_0048ded5:
        if (bVar7 == 1) {
          local_101 = bVar7;
          if ((iVar9 == 4) || (iVar9 == 0xb)) {
            ppbVar11 = *(byte ***)(param_1 + 0x7c);
            if (ppbVar11 == (byte **)0x0) {
LAB_0048dfdb:
              cVar6 = FUN_0040a5d0("Spinning",1);
              if (cVar6 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(param_1 + 0x8c) = 1;
              }
            }
            else {
              ppbVar13 = ppbVar11;
              if (&DAT_0000000f < ppbVar11[5]) {
                ppbVar13 = (byte **)*ppbVar11;
              }
              pcVar19 = "Spinning";
              do {
                bVar7 = *(byte *)ppbVar13;
                bVar23 = bVar7 < (byte)*pcVar19;
                if (bVar7 != *pcVar19) {
LAB_0048dfc3:
                  uVar12 = -(uint)bVar23 | 1;
                  goto LAB_0048dfc8;
                }
                if (bVar7 == 0) break;
                bVar7 = *(byte *)((int)ppbVar13 + 1);
                bVar23 = bVar7 < ((byte *)pcVar19)[1];
                if (bVar7 != ((byte *)pcVar19)[1]) goto LAB_0048dfc3;
                ppbVar13 = (byte **)((int)ppbVar13 + 2);
                pcVar19 = (char *)((byte *)pcVar19 + 2);
              } while (bVar7 != 0);
              uVar12 = 0;
LAB_0048dfc8:
              if ((uVar12 != 0) ||
                 ((*(byte *)(ppbVar11 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
              goto LAB_0048dfdb;
            }
            local_12c = *(float **)(param_1 + 0xb64);
            *(undefined4 *)(param_1 + 0x354) = 2000;
            if (local_12c == (float *)0xb) {
              *(undefined4 *)(param_1 + 0x14c) = 0x40000000;
            }
            iVar9 = *(int *)(param_1 + 0x410);
            if ((0x2d < iVar9) &&
               ((iVar10 = FUN_0040a780(), iVar10 == 0 || (local_12c == (float *)0xb))))
            goto LAB_0048e04b;
          }
          else {
            ppbVar11 = *(byte ***)(param_1 + 0x7c);
            if (ppbVar11 == (byte **)0x0) {
LAB_0048df4e:
              cVar6 = FUN_0040a5d0("Dashing",1);
              if (cVar6 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(param_1 + 0x8c) = 1;
              }
            }
            else {
              ppbVar13 = ppbVar11;
              if (&DAT_0000000f < ppbVar11[5]) {
                ppbVar13 = (byte **)*ppbVar11;
              }
              pcVar19 = "Dashing";
              do {
                bVar7 = *(byte *)ppbVar13;
                bVar23 = bVar7 < (byte)*pcVar19;
                if (bVar7 != *pcVar19) {
LAB_0048df30:
                  uVar12 = -(uint)bVar23 | 1;
                  goto LAB_0048df35;
                }
                if (bVar7 == 0) break;
                bVar7 = *(byte *)((int)ppbVar13 + 1);
                bVar23 = bVar7 < ((byte *)pcVar19)[1];
                if (bVar7 != ((byte *)pcVar19)[1]) goto LAB_0048df30;
                ppbVar13 = (byte **)((int)ppbVar13 + 2);
                pcVar19 = (char *)((byte *)pcVar19 + 2);
              } while (bVar7 != 0);
              uVar12 = 0;
LAB_0048df35:
              if ((uVar12 != 0) ||
                 ((*(byte *)(ppbVar11 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
              goto LAB_0048df4e;
            }
            iVar9 = *(int *)(param_1 + 0x410);
            *(undefined4 *)(param_1 + 0x354) = 0x6a4;
            if (0x5a < iVar9) {
LAB_0048e04b:
              *(undefined4 *)(param_1 + 0x14c) = 0x3f800000;
              uVar12 = FUN_006eef60();
              if (uVar12 % 100 < 0x46) {
                uVar12 = FUN_006eef60();
                local_124 = *(float *)(param_1 + 900);
                local_11c = (float)(uVar12 % 100);
                local_12c = *(float **)(param_1 + 0x380);
                if (NAN(local_124) != (local_124 == 0.0)) {
                  FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
                }
                *(char *)(param_1 + 0xbc1) = *(char *)(param_1 + 0xbc1) + '\x01';
                fVar17 = ((float)local_12c - 0.0) / (local_124 - 0.0);
                if (fVar17 <= 0.0) {
                  fVar17 = 0.0;
                }
                if (DAT_00baa454 <= fVar17) {
                  fVar17 = DAT_00baa454;
                }
                iVar10 = (int)(DAT_00baa9a0 - fVar17 * DAT_00baa924);
                iVar9 = iVar10 / 2;
                if (*(char *)(param_1 + 0xbc6) != '\n') {
                  iVar9 = iVar10;
                }
                if (iVar9 <= (int)local_11c) {
                  *(undefined4 *)(param_1 + 0xb64) = 8;
                  *(undefined *)(param_1 + 0xbc6) = 8;
                  goto LAB_0048e1af;
                }
                *(undefined4 *)(param_1 + 0xb64) = 10;
                *(undefined *)(param_1 + 0xbc6) = 10;
                *(undefined *)(param_1 + 0xbc2) = 0;
                uVar12 = FUN_006eef60();
                local_fc = (float *)0x1a4;
                *(char *)(param_1 + 0xbc5) = (char)(uVar12 % (uint)local_154) + '\x02';
                FUN_00956780();
                FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
              }
              else {
                *(undefined4 *)(param_1 + 0xb64) = 9;
LAB_0048e1af:
                *(undefined *)(param_1 + 0xbc2) = 0;
              }
              iVar9 = *(int *)(param_1 + 0x410);
            }
          }
          *(int *)(param_1 + 0x410) = iVar9 + 1;
        }
      }
      else {
LAB_0048dc48:
        bVar7 = *(byte *)(param_1 + 0xbc2);
        if (bVar7 != 0) goto LAB_0048ded5;
        ppbVar11 = *(byte ***)(param_1 + 0x7c);
        if (ppbVar11 == (byte **)0x0) {
LAB_0048dcae:
          cVar6 = FUN_0040a5d0("DashStart",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
        else {
          ppbVar13 = ppbVar11;
          if (&DAT_0000000f < ppbVar11[5]) {
            ppbVar13 = (byte **)*ppbVar11;
          }
          pcVar19 = "DashStart";
          do {
            bVar7 = *(byte *)ppbVar13;
            bVar23 = bVar7 < (byte)*pcVar19;
            if (bVar7 != *pcVar19) {
LAB_0048dc90:
              uVar12 = -(uint)bVar23 | 1;
              goto LAB_0048dc95;
            }
            if (bVar7 == 0) break;
            bVar7 = *(byte *)((int)ppbVar13 + 1);
            bVar23 = bVar7 < ((byte *)pcVar19)[1];
            if (bVar7 != ((byte *)pcVar19)[1]) goto LAB_0048dc90;
            ppbVar13 = (byte **)((int)ppbVar13 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar7 != 0);
          uVar12 = 0;
LAB_0048dc95:
          if ((uVar12 != 0) ||
             ((*(byte *)(ppbVar11 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
          goto LAB_0048dcae;
        }
        *(undefined4 *)(param_1 + 0x354) = 0x6a4;
        if (*(int *)(param_1 + 0x7c) == 0) {
          local_101 = 0;
LAB_0048de2b:
          if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
          goto LAB_0048de3e;
        }
        else {
          local_109 = FUN_0040ae70(&DAT_00b1dd28);
          local_101 = local_109;
          if (*(int *)(param_1 + 0x7c) != 0) {
            cVar6 = FUN_0040add0(&DAT_00b1dd28);
            local_101 = local_109;
            if (cVar6 != '\0') {
              iVar9 = FUN_006be840();
              local_100 = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
              local_fc = (float *)(*(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c));
              fVar24 = local_100 * local_100 + (float)local_fc * (float)local_fc;
              FUN_00435a50();
              pfVar20 = local_fc;
              fVar17 = local_100;
              if (0.0 < fVar24) {
                pfVar20 = (float *)((DAT_00baa6bc / fVar24) * (float)local_fc);
                fVar17 = (DAT_00baa6bc / fVar24) * local_100;
              }
              fVar24 = *(float *)(param_1 + 0x36c);
              if (NAN(fVar24) == (fVar24 == 0.0)) {
                *(float *)(param_1 + 0x364) =
                     (*(float *)(param_1 + 0x39c) * fVar17) / fVar24 + *(float *)(param_1 + 0x364);
                *(float *)(param_1 + 0x360) =
                     (*(float *)(param_1 + 0x39c) * (float)pfVar20) / fVar24 +
                     *(float *)(param_1 + 0x360);
              }
              FUN_006d6ba0(0x12d,0x3f800000,0x1e,0,0x3f800000);
              local_101 = local_109;
            }
            goto LAB_0048de2b;
          }
LAB_0048de3e:
          *(undefined4 *)(param_1 + 0x410) = 0;
          *(undefined *)(param_1 + 0xbc2) = 1;
          puVar14 = (undefined4 *)FUN_0081e9d0(&local_130,0);
          local_fc = (float *)0x1a4;
          *(undefined4 *)(param_1 + 0x334) = *puVar14;
          *(undefined4 *)(param_1 + 0x338) = puVar14[1];
          FUN_00956780();
          FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
          *(undefined *)(param_1 + 0xbc4) = 0xff;
        }
      }
      if ((*(int *)(param_1 + 0xb64) == 8) && (bVar7 = *(byte *)(param_1 + 0xbc4), bVar7 != 0xff)) {
        if ((uint)bVar7 % 3 == 0) {
          iVar9 = FUN_006be840();
          local_140 = *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340);
          local_144 = *(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c);
          fVar17 = local_140 * local_140 + local_144 * local_144;
          FUN_00435a50();
          if (DAT_00ba9fe4 < fVar17) {
            local_144 = (DAT_00baa454 / fVar17) * local_144;
            local_140 = local_140 * (DAT_00baa454 / fVar17);
          }
          iVar9 = FUN_006eef60();
          fVar17 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                   DAT_00baa704;
          local_fc = (float *)(fVar17 + fVar17);
          iVar9 = FUN_006eef60();
          local_100 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4;
          pfVar20 = local_fc;
          FUN_0041d540();
          local_124 = (float)pfVar20 * local_100 * DAT_00baa1f8 + local_144;
          pfVar20 = local_fc;
          FUN_0041d520();
          local_11c = (float)pfVar20 * local_100 * DAT_00baa1f8 + local_140;
          AI_0043ef30();
          uVar12 = *(uint *)(param_1 + 0xc78);
          local_64 = 5;
          local_e4 = 0x3f8ccccd;
          if ((-1 < (int)uVar12) &&
             (local_12c = *(float **)(*(int *)(param_1 + 0x330) + 0x68),
             uVar12 <= (uint)((*(int *)(*(int *)(param_1 + 0x330) + 0x6c) - (int)local_12c) / 0x7c))
             ) {
            FUN_004071f0(uVar12 * 0x7c + (int)local_12c);
          }
          local_130 = local_124 * DAT_00baa81c;
          local_12c = (float *)(local_11c * DAT_00baa81c);
          FUN_006cb2e0(param_1 + 0x33c,&local_130,0,local_f8);
          *(float *)(param_1 + 3000) = *(float *)(param_1 + 3000) * DAT_00baa418;
          bVar7 = *(byte *)(param_1 + 0xbc4);
        }
        *(byte *)(param_1 + 0xbc4) = bVar7 + 1;
        if ((uint)*(byte *)(param_1 + 0xbc3) <= (byte)(bVar7 + 1) / 3) {
          *(undefined *)(param_1 + 0xbc4) = 0xff;
        }
      }
      else {
        cVar6 = FUN_006ac710(0x1e,0);
        if ((cVar6 != '\0') &&
           (uVar12 = FUN_006eef60(), fVar17 = local_154, uVar12 % (uint)local_154 == 0)) {
          uVar12 = FUN_006eef60();
          *(char *)(param_1 + 0xbc3) = (char)(uVar12 % (uint)fVar17) + '\x03';
          *(undefined *)(param_1 + 0xbc4) = 0;
        }
      }
      if (local_101 == 0) {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      }
      else {
        pfVar20 = (float *)(param_1 + 0x33c);
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3d0;
        local_114 = *(float *)(param_1 + 0x334);
        local_110 = *(float *)(param_1 + 0x338);
        local_12c = *(float **)(param_1 + 0x340);
        fVar24 = (local_110 - (float)local_12c) * (local_110 - (float)local_12c) +
                 (local_114 - *pfVar20) * (local_114 - *pfVar20);
        FUN_00435a50();
        fVar17 = (float)local_12c;
        if (fVar24 < *(float *)(param_1 + 0x370)) {
          puVar14 = (undefined4 *)FUN_0081e9d0(&local_174,0);
          *(undefined4 *)(param_1 + 0x334) = *puVar14;
          local_110 = (float)puVar14[1];
          *(float *)(param_1 + 0x338) = local_110;
          local_114 = *(float *)(param_1 + 0x334);
          fVar17 = *(float *)(param_1 + 0x340);
        }
        fVar24 = *pfVar20;
        local_110 = local_110 - fVar17;
        local_114 = local_114 - fVar24;
        fVar15 = 0.0;
        iVar9 = 0;
        if (local_14c != (undefined4 *)0x0) {
          do {
            iVar10 = *(int *)(local_160 + (int)fVar15 * 4);
            fVar26 = fVar24 - *(float *)(iVar10 + 0x33c);
            fVar25 = fVar17 - *(float *)(iVar10 + 0x340);
            if ((iVar9 == 0) || (fVar25 * fVar25 + fVar26 * fVar26 < 0.0)) {
              iVar9 = iVar10;
            }
            fVar15 = (float)((int)fVar15 + 1);
          } while ((uint)fVar15 < local_14c);
          param_1 = local_150;
          if (iVar9 != 0) {
            local_114 = *(float *)(iVar9 + 0x33c) - fVar24;
            local_110 = *(float *)(iVar9 + 0x340) - fVar17;
          }
        }
        if (((NAN(*(float *)(param_1 + 3000)) || NAN(DAT_00ba9fe4)) !=
             (*(float *)(param_1 + 3000) == DAT_00ba9fe4)) ||
           (cVar6 = FUN_006ac710(0x3c,*(undefined4 *)(param_1 + 0x20)), cVar6 != '\0')) {
          iVar9 = FUN_006eef60();
          fVar17 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                   DAT_00baa784 + DAT_00baa784;
          *(float *)(param_1 + 3000) = fVar17;
          if (*(int *)(param_1 + 0xb64) == 0xb) {
            *(float *)(param_1 + 3000) = fVar17 * DAT_00baa2d0;
          }
        }
        local_154 = *(float *)(param_1 + 0x364);
        fVar24 = local_114 * local_114 + local_110 * local_110;
        FUN_00435a50();
        fVar17 = local_110;
        if (DAT_00ba9fe4 < fVar24) {
          local_114 = local_114 * (DAT_00baa454 / fVar24);
          fVar17 = local_110 * (DAT_00baa454 / fVar24);
        }
        local_fc = *(float **)(param_1 + 0x360);
        local_12c = (float *)(*(float *)(param_1 + 3000) * local_114 * DAT_00baa154 +
                             (float)local_fc);
        local_124 = *(float *)(param_1 + 3000) * fVar17 * DAT_00baa154 + local_154;
        local_100 = local_154;
        fVar17 = (float)local_fc * (float)local_fc + local_154 * local_154;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar17) {
          local_fc = (float *)((float)local_fc * (DAT_00baa454 / fVar17));
          local_100 = local_100 * (DAT_00baa454 / fVar17);
        }
        fVar17 = *(float *)(param_1 + 3000) * (float)local_fc;
        local_fc = (float *)(*(float *)(param_1 + 3000) * local_100 * DAT_00baa154 + local_124);
        local_100 = fVar17 * DAT_00baa154 + (float)local_12c;
        fVar24 = (float)local_fc * (float)local_fc + local_100 * local_100;
        FUN_00435a50();
        pfVar27 = local_fc;
        fVar17 = local_100;
        if (DAT_00ba9fe4 < fVar24) {
          fVar24 = *(float *)(param_1 + 3000) / fVar24;
          pfVar27 = (float *)((float)local_fc * fVar24);
          fVar17 = local_100 * fVar24;
        }
        fVar24 = *(float *)(param_1 + 0x39c);
        fVar15 = DAT_00baa3a4;
        if ((NAN(fVar24) || NAN(DAT_00baa454)) == (fVar24 == DAT_00baa454)) {
          fVar15 = DAT_00baa3a4 / ((fVar24 + DAT_00baa3a4) - fVar24 * DAT_00baa3a4);
        }
        fVar15 = DAT_00baa454 - fVar15;
        *(float *)(param_1 + 0x364) = ((float)pfVar27 - local_154) * fVar15 + local_154;
        *(float *)(param_1 + 0x360) =
             (fVar17 - *(float *)(param_1 + 0x360)) * fVar15 + *(float *)(param_1 + 0x360);
        if ((*(int *)(param_1 + 0xb64) == 8) || (*(int *)(param_1 + 0xb64) == 0xb)) {
          cVar6 = FUN_006ac710(8,*(undefined4 *)(param_1 + 0x20));
          if (cVar6 != '\0') {
            uVar28 = FUN_006eef60();
            uVar31 = 0;
            pTVar30 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            pTVar29 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar8 = 0;
            uVar28 = FUN_00428b20(1000,local_15c,pfVar20,&DAT_00c7b640,param_1,0,uVar28);
            piVar16 = (int *)__RTDynamicCast(uVar28,uVar8,pTVar29,pTVar30,uVar31);
            if (piVar16 != (int *)0x0) {
              piVar16[0x39] = 0x40400000;
              piVar16[0x3a] = 0x40400000;
              (**(code **)(*piVar16 + 0xc))();
            }
          }
          cVar6 = FUN_006ac710(0x14,*(undefined4 *)(param_1 + 0x20));
          if ((cVar6 != '\0') && (uVar12 = FUN_006eef60(), uVar12 % 100 < 0x3c)) {
            uVar28 = FUN_006eef60();
            iVar9 = FUN_006eef60();
            fVar17 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                     DAT_00baa704;
            local_fc = (float *)(fVar17 + fVar17);
            iVar9 = FUN_006eef60();
            local_100 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4;
            pfVar20 = local_fc;
            FUN_0041d540();
            local_130 = (float)pfVar20 * local_100 * *(float *)(param_1 + 0x370) +
                        *(float *)(param_1 + 0x33c);
            pfVar20 = local_fc;
            FUN_0041d520();
            local_12c = (float *)((float)pfVar20 * local_100 * *(float *)(param_1 + 0x370) +
                                 *(float *)(param_1 + 0x340));
            FUN_00428b20(0x127,0,&local_130,&DAT_00c7b640,param_1,0,uVar28);
            FUN_006d0300(*(undefined4 *)(param_1 + 0xc78),extraout_ECX);
          }
        }
        if (*(char *)(param_1 + 400) != '\0') {
          puVar14 = (undefined4 *)FUN_0081e9d0(&local_174,0);
          *(undefined4 *)(param_1 + 0x334) = *puVar14;
          *(undefined4 *)(param_1 + 0x338) = puVar14[1];
          FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
          FUN_00703670(4);
          iVar9 = FUN_006eef60();
          local_12c = (float *)(param_1 + 0x19c);
          local_120 = *local_12c * DAT_00baaa94 + *(float *)(param_1 + 0x33c);
          fVar17 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                   DAT_00baa904 * DAT_00baad34;
          local_11c = *(float *)(param_1 + 0x1a0) * DAT_00baaa94 + *(float *)(param_1 + 0x340);
          FUN_00812f50(&local_128,&local_120,fVar17,fVar17,fVar17);
          iVar9 = *(int *)(DAT_00c71678 + 0x18300);
          iVar21 = (int)((local_128 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
          iVar10 = (int)((local_124 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
          if ((((-1 < iVar21) && (iVar21 < *(int *)(iVar9 + 0xc))) && (-1 < iVar10)) &&
             (((iVar10 < *(int *)(iVar9 + 0x10) &&
               (uVar12 = iVar10 * *(int *)(iVar9 + 0xc) + iVar21, uVar12 < 0x1c0)) &&
              ((iVar9 = *(int *)(iVar9 + 0x24 + uVar12 * 4), iVar9 != 0 &&
               ((iVar9 = *(int *)(iVar9 + 4), iVar9 == 0xf || (iVar9 == 0x10)))))))) {
            iVar9 = FUN_006eef60();
            fVar17 = (float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4;
            piVar16 = (int *)FUN_006b64d0(fVar17 + fVar17 + DAT_00baa554);
            piVar16[0xcf] = (int)local_128;
            piVar16[0xd0] = (int)local_124;
            (**(code **)(*piVar16 + 0x3c))(local_150 + 0x1e4,0xffffffff,0xff,0,1);
            iVar9 = FUN_0067f170();
            fVar17 = *(float *)(iVar9 + 4);
            FUN_00499d60();
            fVar17 = fVar17 * DAT_00baa948;
            piVar16[0x5a] = piVar16[0x5a] | 0x2000;
            piVar16[0x5b] = piVar16[0x5b];
            piVar16[0x3b] = (int)(fVar17 + DAT_00baa9b4);
            (**(code **)(*piVar16 + 0xc))();
            param_1 = local_150;
          }
        }
      }
      goto LAB_0048eccf;
    }
    if (iVar9 != 0x10) {
      if (iVar9 == 9) {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
        FUN_0040a380(&DAT_00b1deb4,0);
        *(undefined4 *)(param_1 + 0x354) = 0x6a4;
        cVar6 = FUN_0040b030(&DAT_00b1deb4);
        if (cVar6 != '\0') {
          uVar28 = 0x48daf9;
          FUN_00704360(param_1 + 0x33c,0x43200000,param_1,1,0);
          FUN_006fed60(param_1 + 0x33c,param_1,0,0,0,uVar28,0x42480000,DAT_00c34bd0,DAT_00c34bd4,
                       DAT_00c34bd8,DAT_00c34bdc);
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 3;
          *(undefined4 *)(param_1 + 0x410) = 0;
          *(undefined *)(param_1 + 0xbc2) = 0;
          for (fVar17 = local_144; *(float *)(param_1 + 0x380) <= fVar17;
              fVar17 = fVar17 - (float)local_12c) {
            *(char *)(param_1 + 0xbc1) = *(char *)(param_1 + 0xbc1) + '\x01';
          }
        }
      }
      goto LAB_0048eccf;
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    FUN_0040a380("Death",0);
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_0048eccf;
    FUN_006b45c0();
    if (local_114 == 1.401298e-45) {
      uVar12 = 0;
      do {
        uVar28 = FUN_006eef60();
        local_130 = (float)((double)(uVar12 >> 1) + DAT_00bacb00) * DAT_00baa81c +
                    *(float *)(param_1 + 0x33c);
        local_12c = (float *)((float)((double)(uVar12 & 1) + DAT_00bacb00) * DAT_00baa81c +
                             *(float *)(param_1 + 0x340));
        FUN_00428b20(0xdc,1,&local_130,&DAT_00c7b640,param_1,0,uVar28);
        uVar12 = uVar12 + 1;
      } while (uVar12 < 2);
      *(undefined4 *)(param_1 + 0xb64) = 0x12;
    }
    else {
      FUN_006c0f30(0x105,1,0,0xffffffff);
      *(undefined *)(param_1 + 0x173) = 0;
      cVar6 = FUN_00417430(0,0x10000000);
      if (cVar6 == '\0') {
        fVar17 = *(float *)(param_1 + 900) * DAT_00baa198;
        *(float *)(param_1 + 0x380) = fVar17;
        *(float *)(param_1 + 900) = fVar17;
      }
      else {
        *(undefined4 *)(param_1 + 900) = 0x41700000;
        *(undefined4 *)(param_1 + 0x380) = 0x41700000;
        FUN_004a5d10(*(undefined4 *)(param_1 + 0x2c),1);
      }
      *(undefined4 *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12d0) = 0;
      *(undefined4 *)(param_1 + 0x188) = 4;
      *(undefined4 *)(param_1 + 0xb64) = 0;
    }
  }
  else {
    if (iVar9 != 3) {
      if ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)
      goto LAB_0048ce8f;
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined4 *)(param_1 + 0x410) = 0;
    }
LAB_0048ce98:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
    ppbVar11 = *(byte ***)(param_1 + 0x7c);
    if (local_140 < DAT_00baa334) {
      if (local_140 < DAT_00baa230) {
        if (ppbVar11 != (byte **)0x0) {
          if (&DAT_0000000f < ppbVar11[5]) {
            ppbVar11 = (byte **)*ppbVar11;
          }
          pcVar19 = "Idle_Angry";
          do {
            bVar7 = *(byte *)ppbVar11;
            bVar23 = bVar7 < (byte)*pcVar19;
            if (bVar7 != *pcVar19) {
LAB_0048cfc0:
              uVar12 = -(uint)bVar23 | 1;
              goto LAB_0048cfc5;
            }
            if (bVar7 == 0) break;
            bVar7 = *(byte *)((int)ppbVar11 + 1);
            bVar23 = bVar7 < ((byte *)pcVar19)[1];
            if (bVar7 != ((byte *)pcVar19)[1]) goto LAB_0048cfc0;
            ppbVar11 = (byte **)((int)ppbVar11 + 2);
            pcVar19 = (char *)((byte *)pcVar19 + 2);
          } while (bVar7 != 0);
          uVar12 = 0;
LAB_0048cfc5:
          if ((uVar12 == 0) &&
             ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0' ||
              (*(char *)(param_1 + 0x8c) != '\0')))) goto LAB_0048cffd;
        }
        pcVar19 = "Idle_Angry";
        goto LAB_0048cfe2;
      }
      if (ppbVar11 == (byte **)0x0) {
LAB_0048cf81:
        pcVar19 = "Idle_Upset";
        goto LAB_0048cfe2;
      }
      if (&DAT_0000000f < ppbVar11[5]) {
        ppbVar11 = (byte **)*ppbVar11;
      }
      pcVar19 = "Idle_Upset";
      do {
        bVar7 = *(byte *)ppbVar11;
        bVar23 = bVar7 < (byte)*pcVar19;
        if (bVar7 != *pcVar19) {
LAB_0048cf62:
          uVar12 = -(uint)bVar23 | 1;
          goto LAB_0048cf67;
        }
        if (bVar7 == 0) break;
        bVar7 = *(byte *)((int)ppbVar11 + 1);
        bVar23 = bVar7 < ((byte *)pcVar19)[1];
        if (bVar7 != ((byte *)pcVar19)[1]) goto LAB_0048cf62;
        ppbVar11 = (byte **)((int)ppbVar11 + 2);
        pcVar19 = (char *)((byte *)pcVar19 + 2);
      } while (bVar7 != 0);
      uVar12 = 0;
LAB_0048cf67:
      if ((uVar12 != 0) ||
         ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' && (*(char *)(param_1 + 0x8c) == '\0')
          ))) goto LAB_0048cf81;
    }
    else {
      if (ppbVar11 != (byte **)0x0) {
        if (&DAT_0000000f < ppbVar11[5]) {
          ppbVar11 = (byte **)*ppbVar11;
        }
        pcVar19 = "Idle_Happy";
        do {
          bVar7 = *(byte *)ppbVar11;
          bVar23 = bVar7 < (byte)*pcVar19;
          if (bVar7 != *pcVar19) {
LAB_0048cef7:
            uVar12 = -(uint)bVar23 | 1;
            goto LAB_0048cefc;
          }
          if (bVar7 == 0) break;
          bVar7 = *(byte *)((int)ppbVar11 + 1);
          bVar23 = bVar7 < ((byte *)pcVar19)[1];
          if (bVar7 != ((byte *)pcVar19)[1]) goto LAB_0048cef7;
          ppbVar11 = (byte **)((int)ppbVar11 + 2);
          pcVar19 = (char *)((byte *)pcVar19 + 2);
        } while (bVar7 != 0);
        uVar12 = 0;
LAB_0048cefc:
        if ((uVar12 == 0) &&
           ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0' ||
            (*(char *)(param_1 + 0x8c) != '\0')))) goto LAB_0048cffd;
      }
      pcVar19 = "Idle_Happy";
LAB_0048cfe2:
      cVar6 = FUN_0040a5d0(pcVar19,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
LAB_0048cffd:
    *(undefined4 *)(param_1 + 0x354) = 2000;
    if (*(int *)(param_1 + 0x410) < 0x1f) {
LAB_0048d1fb:
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    }
    else if (local_144 < *(float *)(param_1 + 0x380)) {
      if ((*(float *)(param_1 + 0x14) <= DAT_00ba9fe4) ||
         (*(float *)(param_1 + 0x380) <= *(float *)(param_1 + 900) * DAT_00baa418)) {
        cVar6 = FUN_006ac710(0x1e,*(undefined4 *)(param_1 + 0x20));
        if ((cVar6 != '\0') && (uVar12 = FUN_006eef60(), (uVar12 & 3) == 0)) {
          uVar12 = FUN_006eef60();
          uVar28 = 0xb;
          if ((uVar12 & 1) == 0) {
            uVar28 = 4;
          }
          *(undefined4 *)(param_1 + 0xb64) = uVar28;
          *(undefined *)(param_1 + 0xbc2) = 0;
        }
        goto LAB_0048d1fb;
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      *(undefined4 *)(param_1 + 0xb64) = 9;
    }
    else {
      uVar12 = FUN_006eef60();
      local_11c = *(float *)(param_1 + 900);
      local_124 = *(float *)(param_1 + 0x380);
      local_148 = (float)(uVar12 % 100);
      if (NAN(local_11c) != (local_11c == 0.0)) {
        FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
      }
      *(char *)(param_1 + 0xbc1) = *(char *)(param_1 + 0xbc1) + '\x01';
      fVar17 = (local_124 - 0.0) / (local_11c - 0.0);
      if (fVar17 <= 0.0) {
        fVar17 = 0.0;
      }
      if (DAT_00baa454 <= fVar17) {
        fVar17 = DAT_00baa454;
      }
      iVar10 = (int)(DAT_00baa9a0 - fVar17 * DAT_00baa924);
      iVar9 = iVar10 / 2;
      if (*(char *)(param_1 + 0xbc6) != '\n') {
        iVar9 = iVar10;
      }
      if ((int)local_148 < iVar9) {
        *(undefined4 *)(param_1 + 0xb64) = 10;
        *(undefined *)(param_1 + 0xbc6) = 10;
        *(undefined *)(param_1 + 0xbc2) = 0;
        uVar12 = FUN_006eef60();
        local_fc = (float *)0x1a4;
        *(char *)(param_1 + 0xbc5) = (char)((ulonglong)uVar12 % 10) + '\x03';
        FUN_00956780();
        FUN_0092dc30(local_fc,0x3f800000,2,0,0x3f800000,0);
        *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        *(undefined *)(param_1 + 0xbc6) = 8;
        *(undefined *)(param_1 + 0xbc2) = 0;
        *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      }
    }
LAB_0048eccf:
    cVar6 = FUN_006ac710(3,*(undefined4 *)(param_1 + 0x20));
    if (cVar6 != '\0') {
      fVar17 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
               *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
      FUN_00435a50();
      if (DAT_00baa454 < fVar17) {
        iVar9 = FUN_006eef60();
        piVar16 = (int *)FUN_006b64d0((float)((double)iVar9 + (&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                                      DAT_00ba9ff4 + DAT_00baa304);
        local_50 = *(undefined4 *)(param_1 + 0x1e4);
        uStack_4c = *(undefined4 *)(param_1 + 0x1e8);
        uStack_48 = *(undefined4 *)(param_1 + 0x1ec);
        local_28 = *(undefined4 *)(param_1 + 0x20c);
        local_40 = *(undefined4 *)(param_1 + 500);
        uStack_3c = *(undefined4 *)(param_1 + 0x1f8);
        uStack_38 = *(undefined4 *)(param_1 + 0x1fc);
        uStack_34 = *(undefined4 *)(param_1 + 0x200);
        uStack_44 = 0x3f000000;
        local_30 = *(undefined8 *)(param_1 + 0x204);
        (**(code **)(*piVar16 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
      }
    }
    if ((DAT_00ba9fe4 < *(float *)(param_1 + 0x14)) &&
       (puVar14 = *(undefined4 **)(param_1 + 8), puVar14 != *(undefined4 **)(param_1 + 0xc))) {
      do {
        if ((puVar14[4] != 1) && ((puVar14[6] != 1 && ((puVar14[2] & 0x8000) != 0)))) {
          *puVar14 = 0;
        }
        puVar14 = puVar14 + 0xe;
      } while (puVar14 != *(undefined4 **)(param_1 + 0xc));
    }
    *(undefined4 *)(param_1 + 0xbb0) = *(undefined4 *)(param_1 + 0x360);
    *(undefined4 *)(param_1 + 0xbb4) = *(undefined4 *)(param_1 + 0x364);
  }
  if (local_160 != 0) {
    deallocate(local_160,(int)local_158 - local_160 >> 2);
  }
LAB_0048ee0c:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

