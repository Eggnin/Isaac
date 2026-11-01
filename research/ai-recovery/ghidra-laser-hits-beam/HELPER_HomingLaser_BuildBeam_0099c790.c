/* Local J460 decompiler output.
 * VA: 0x0099c790
 * Entry: 0099c790
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Straight sampled beam node builder homing-type argument
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Straight sampled beam node builder
   homing-type argument */

void __thiscall HELPER_HomingLaser_BuildBeam(undefined4 *param_1_00,int param_1,float **param_2)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  ulonglong uVar4;
  undefined *puVar5;
  char cVar6;
  uint uVar7;
  uint *puVar8;
  undefined4 *puVar9;
  float *pfVar10;
  float **ppfVar11;
  float **ppfVar12;
  float **ppfVar13;
  uint uVar14;
  float **ppfVar15;
  float **ppfVar16;
  float fVar17;
  undefined in_XMM0 [16];
  undefined auVar18 [16];
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float **ppfVar23;
  float fVar24;
  float **ppfVar25;
  float **local_c0;
  float **local_bc;
  float local_b4;
  float local_b0;
  undefined4 local_ac;
  float **local_a8;
  float **local_a4;
  float **local_a0;
  float **local_9c;
  float **local_98;
  float **local_94;
  undefined local_90 [12];
  float **ppfStack_84;
  float *local_7c;
  float *pfStack_78;
  float *pfStack_74;
  float *pfStack_70;
  float **local_6c;
  float **ppfStack_68;
  float **local_64;
  float **local_60;
  float **local_5c;
  float **ppfStack_58;
  float **ppfStack_54;
  float **ppfStack_50;
  float **local_4c;
  float **ppfStack_48;
  float **local_44;
  float **local_40;
  float **local_3c;
  float **local_38;
  float **local_34;
  undefined4 *local_30;
  float **local_2c;
  char local_25;
  float **local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  fVar17 = DAT_00baa2d0;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00b0d97d;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  ppfVar13 = (float **)param_1_00[0x13];
  ppfVar23 = (float **)(param_1_00 + 0x12);
  iVar2 = (int)ppfVar13 - (int)*ppfVar23 >> 0x1f;
  local_a8 = ppfVar23;
  local_30 = param_1_00;
  puVar5 = &stack0xfffffffc;
  if (((int)ppfVar13 - (int)*ppfVar23) / 0x18 + iVar2 == iVar2) {
    local_7c = (float *)param_1_00[1];
    pfStack_78 = (float *)param_1_00[2];
    local_6c = (float **)(((float)local_7c + (float)param_1_00[3]) * DAT_00baa2d0);
    ppfStack_68 = (float **)(((float)pfStack_78 + (float)param_1_00[4]) * DAT_00baa2d0);
    if (ppfVar13 == (float **)param_1_00[0x14]) {
      pfStack_74 = local_7c;
      pfStack_70 = pfStack_78;
      FUN_009a17b0(ppfVar13,&local_7c);
      fVar17 = DAT_00baa2d0;
    }
    else {
      *ppfVar13 = local_7c;
      ppfVar13[1] = pfStack_78;
      ppfVar13[2] = local_7c;
      ppfVar13[3] = pfStack_78;
      *(ulonglong *)(ppfVar13 + 4) = CONCAT44(ppfStack_68,local_6c);
      param_1_00[0x13] = param_1_00[0x13] + 0x18;
      puStack_20 = &stack0xfffffffc;
    }
    local_7c = (float *)param_1_00[3];
    pfStack_78 = (float *)param_1_00[4];
    uVar4 = *(ulonglong *)(param_1_00 + 3);
    ppfVar13 = (float **)param_1_00[0x13];
    pfStack_74 = (float *)(((float)local_7c + (float)param_1_00[1]) * fVar17);
    pfStack_70 = (float *)(((float)pfStack_78 + (float)param_1_00[2]) * fVar17);
    in_XMM0 = ZEXT416(pfStack_70);
    if (ppfVar13 == (float **)param_1_00[0x14]) {
      local_6c = (float **)local_7c;
      ppfStack_68 = (float **)pfStack_78;
      FUN_009a17b0(ppfVar13,&local_7c);
      puVar5 = puStack_20;
    }
    else {
      *ppfVar13 = local_7c;
      ppfVar13[1] = pfStack_78;
      ppfVar13[2] = pfStack_74;
      ppfVar13[3] = pfStack_70;
      in_XMM0._8_8_ = 0;
      in_XMM0._0_8_ = uVar4;
      *(ulonglong *)(ppfVar13 + 4) = uVar4;
      param_1_00[0x13] = param_1_00[0x13] + 0x18;
      puVar5 = puStack_20;
    }
  }
  puStack_20 = puVar5;
  ppfVar13 = (float **)0x0;
  pfStack_70 = (float *)0x0;
  local_60 = (float **)0x0;
  local_6c = (float **)0x0;
  local_94 = (float **)0x0;
  ppfStack_68 = (float **)0x0;
  local_14 = 0;
  ppfVar25 = local_60;
  if ((param_1 != 0) &&
     (local_2c = *(float ***)(DAT_00c71678 + 0x18300), *(int *)((int)local_2c + 0x1264) != 0)) {
    uVar14 = 0;
    do {
      local_44 = *(float ***)(*(int *)((int)local_2c + 0x125c) + uVar14 * 4);
      local_24 = local_44;
      cVar6 = HELPER_Entity_DamageFilter(0);
      if ((((cVar6 == '\0') || (((uint)local_44[0x5a] & 0x20000010) != 0)) || (local_44 == param_2))
         || ((param_1 == 4 && (local_44[10] == param_2[10])))) {
        local_25 = '\0';
      }
      else {
        local_25 = '\x01';
      }
      if (((*(int *)(DAT_00c71678 + 0x26614) < 2) || (local_44[10] != (float *)0x3)) ||
         ((local_44[0xb] != (float *)&DAT_00000043 ||
          (cVar6 = FUN_006a8fa0(param_2[0xf2]), cVar6 != '\0')))) {
        bVar3 = false;
      }
      else {
        bVar3 = true;
      }
      ppfVar23 = local_44;
      if ((local_25 != '\0') || (bVar3)) {
        if (ppfVar13 == local_94) {
          FUN_0042c920(ppfVar13,&local_24);
          local_94 = ppfStack_68;
          ppfVar23 = local_24;
          ppfVar13 = local_6c;
        }
        else {
          *ppfVar13 = (float *)local_44;
          local_6c = ppfVar13 + 1;
          ppfVar13 = local_6c;
        }
      }
      if (((param_1 == 5) && (ppfVar23[10] == (float *)0x1)) && (ppfVar23 != param_2)) {
        if (ppfVar13 == local_94) {
          FUN_0042c920(ppfVar13,&local_24);
          local_94 = ppfStack_68;
          ppfVar13 = local_6c;
        }
        else {
          *ppfVar13 = (float *)ppfVar23;
          local_6c = ppfVar13 + 1;
          ppfVar13 = local_6c;
        }
      }
      uVar14 = uVar14 + 1;
      ppfVar23 = local_a8;
      ppfVar25 = ppfVar13;
    } while (uVar14 < *(uint *)((int)local_2c + 0x1264));
  }
  local_60 = ppfVar25;
  ppfVar13 = local_60;
  local_2c = (float **)*local_30;
  if (local_2c != (float **)0x0) {
    in_XMM0 = *(undefined (*) [16])(local_2c + 0x10a);
    _local_90 = in_XMM0;
    puVar8 = (uint *)FUN_00417170(&DAT_00c34b70,uVar7);
    if (((*puVar8 | puVar8[1]) != 0) || ((puVar8[2] | puVar8[3]) != 0)) {
      local_3c = (float **)local_2c[0xcd];
      in_XMM0 = ZEXT416(local_3c);
      local_44 = (float **)local_2c[0xce];
      pfVar10 = local_2c[0xf2];
      if ((pfVar10 == (float *)0x0) || (pfVar10[10] != 1.401298e-45)) {
        pfVar10 = (float *)0x0;
      }
      else {
        fVar17 = pfVar10[0x503];
        if (fVar17 != 0.0) {
          local_3c = *(float ***)((int)fVar17 + 0x33c);
          in_XMM0 = ZEXT416(local_3c);
          local_44 = *(float ***)((int)fVar17 + 0x340);
        }
      }
      fVar17 = in_XMM0._0_4_;
      local_c0 = local_3c;
      local_bc = local_44;
      if (((NAN(fVar17) || NAN((float)DAT_00c7b640)) == (fVar17 == (float)DAT_00c7b640)) ||
         ((NAN((float)local_44) || NAN((float)DAT_00c7b644)) ==
          ((float)local_44 == (float)DAT_00c7b644))) {
        if (pfVar10 == (float *)0x0) {
          local_24 = (float **)(fVar17 - (float)local_30[1]);
          local_2c = (float **)((float)local_30[3] - (float)local_30[1]);
          fVar17 = (float)local_30[4] - (float)local_30[2];
          local_38 = (float **)((float)local_44 - (float)local_30[2]);
          ppfStack_84 = (float **)fVar17;
          local_34 = (float **)(fVar17 * fVar17 + (float)local_2c * (float)local_2c);
          FUN_00435a50();
          if ((float)local_34 <= 0.0) {
          }
          else {
            fVar17 = (float)local_38 * (float)local_38 + (float)local_24 * (float)local_24;
            FUN_00435a50();
            local_2c = (float **)((float)local_2c * (fVar17 / (float)local_34));
            ppfStack_84 = (float **)((float)ppfStack_84 * (fVar17 / (float)local_34));
          }
          fVar17 = (float)local_30[1];
          fVar20 = (float)local_30[2];
          fVar22 = (fVar17 + (float)local_2c) - fVar17;
          fVar24 = (fVar20 + (float)ppfStack_84) - fVar20;
          fVar21 = fVar22 * _DAT_00baa224 + fVar17;
          fVar19 = fVar24 * _DAT_00baa224 + fVar20;
          local_34 = (float **)
                     ((((float)local_24 * _DAT_00baa224 + fVar17) - fVar21) * _DAT_00baa224 + fVar21
                     );
          local_2c = (float **)
                     ((((float)local_38 * _DAT_00baa224 + fVar20) - fVar19) * _DAT_00baa224 + fVar19
                     );
          fVar21 = fVar22 * DAT_00baa330 + fVar17;
          fVar19 = fVar24 * DAT_00baa330 + fVar20;
          local_24 = (float **)
                     ((((float)local_24 * DAT_00baa330 + fVar17) - fVar21) * DAT_00baa330 + fVar21);
          local_38 = (float **)
                     ((((float)local_38 * DAT_00baa330 + fVar20) - fVar19) * DAT_00baa330 + fVar19);
          local_90._8_4_ = (float)local_3c - (float)local_24;
          ppfStack_84 = (float **)((float)local_44 - (float)local_38);
          puVar9 = (undefined4 *)
                   HELPER_Laser_RoomRay(&local_a4,&local_c0,local_90 + 8,&DAT_00c7b640,0,0x41a00000)
          ;
          local_30[3] = *puVar9;
          local_30[4] = puVar9[1];
          pfVar10 = *ppfVar23;
          ppfVar23[1] = pfVar10;
          ppfStack_58 = (float **)local_30[2];
          local_5c = (float **)local_30[1];
          local_4c = local_34;
          ppfStack_48 = local_2c;
          if (pfVar10 == ppfVar23[2]) {
            ppfStack_54 = local_5c;
            ppfStack_50 = ppfStack_58;
            FUN_009a17b0(pfVar10,&local_5c);
            ppfVar25 = (float **)local_30[0x13];
          }
          else {
            *pfVar10 = (float)local_5c;
            pfVar10[1] = (float)ppfStack_58;
            pfVar10[2] = (float)local_5c;
            pfVar10[3] = (float)ppfStack_58;
            *(ulonglong *)(pfVar10 + 4) = CONCAT44(local_2c,local_34);
            ppfVar23[1] = ppfVar23[1] + 6;
            ppfVar25 = (float **)ppfVar23[1];
          }
          ppfStack_54 = local_24;
          local_5c = local_3c;
          local_4c = (float **)
                     (((float)local_30[3] - (float)local_3c) * _DAT_00baa224 + (float)local_3c);
          ppfStack_58 = local_44;
          ppfStack_50 = local_38;
          ppfStack_48 = (float **)
                        (((float)local_30[4] - (float)local_44) * _DAT_00baa224 + (float)local_44);
          if (ppfVar25 == (float **)ppfVar23[2]) {
            FUN_009a17b0(ppfVar25,&local_5c);
          }
          else {
            *ppfVar25 = (float *)local_3c;
            ppfVar25[1] = (float *)local_44;
            ppfVar25[2] = (float *)local_24;
            ppfVar25[3] = (float *)local_38;
            *(ulonglong *)(ppfVar25 + 4) = CONCAT44(ppfStack_48,local_4c);
            ppfVar23[1] = ppfVar23[1] + 6;
          }
          local_5c = (float **)local_30[3];
          ppfStack_58 = (float **)local_30[4];
          ppfStack_54 = (float **)
                        (((float)local_5c - (float)local_3c) * DAT_00baa330 + (float)local_3c);
          ppfStack_50 = (float **)
                        (((float)ppfStack_58 - (float)local_44) * DAT_00baa330 + (float)local_44);
          in_XMM0 = ZEXT416(ppfStack_50);
          local_4c = local_5c;
          ppfStack_48 = ppfStack_58;
          FUN_009a1770(&local_5c);
        }
        else {
          local_98 = (float **)(((int)ppfVar23[1] - (int)*ppfVar23) / 0x18);
          if (local_98 < 2) {
            local_38 = (float **)local_30[1];
            local_24 = (float **)local_30[2];
            if (local_98 == (float **)0x0) {
              ppfVar25 = (float **)(local_30 + 3);
            }
            else {
              ppfVar25 = (float **)(*ppfVar23 + (int)local_98 * 6 + -6);
            }
          }
          else {
            pfVar10 = *ppfVar23;
            local_38 = (float **)pfVar10[(int)local_98 * 6 + -0xc];
            local_24 = (float **)pfVar10[(int)local_98 * 6 + -0xb];
            ppfVar25 = (float **)(pfVar10 + (int)local_98 * 6 + -6);
          }
          local_bc = (float **)*ppfVar25;
          local_2c = (float **)ppfVar25[1];
          local_b0 = fVar17 - (float)local_38;
          local_b4 = (float)local_44 - (float)local_24;
          fVar17 = local_b0 * local_b0 + local_b4 * local_b4;
          FUN_00435a50();
          if (0.0 < fVar17) {
            local_b0 = (DAT_00baa454 / fVar17) * local_b0;
            local_b4 = local_b4 * (DAT_00baa454 / fVar17);
          }
          local_a0 = (float **)((float)local_bc - (float)local_3c);
          fVar17 = (float)local_2c - (float)local_44;
          ppfStack_84 = (float **)fVar17;
          fVar17 = (float)local_a0 * (float)local_a0 + fVar17 * fVar17;
          FUN_00435a50();
          if (0.0 < fVar17) {
            local_a0 = (float **)((float)local_a0 * (DAT_00baa454 / fVar17));
            ppfStack_84 = (float **)((float)ppfStack_84 * (DAT_00baa454 / fVar17));
          }
          local_64 = (float **)((float)local_bc - (float)local_38);
          local_40 = (float **)((float)local_2c - (float)local_24);
          fVar17 = (float)local_64 * (float)local_64 + (float)local_40 * (float)local_40;
          FUN_00435a50();
          if (0.0 < fVar17) {
            local_64 = (float **)((float)local_64 * (DAT_00baa454 / fVar17));
            local_40 = (float **)((float)local_40 * (DAT_00baa454 / fVar17));
          }
          if (1 < local_98) {
            local_30[0x13] = local_30[0x13] + -0x18;
          }
          if (*ppfVar23 == ppfVar23[1]) {
            local_98 = (float **)((float)local_64 * DAT_00baa924);
            ppfStack_48 = (float **)((float)local_40 * DAT_00baa924 + (float)local_24);
            local_5c = local_38;
            local_4c = (float **)((float)local_98 + (float)local_38);
            ppfStack_58 = local_24;
            ppfStack_54 = local_38;
            ppfStack_50 = local_24;
            FUN_009a1770(&local_5c);
          }
          else {
            local_98 = (float **)((float)local_64 * DAT_00baa924);
          }
          local_34 = DAT_00baa54c;
          FUN_0041d540();
          ppfVar25 = DAT_00baa54c;
          FUN_0041d520();
          pfVar10 = ppfVar23[1];
          local_5c = (float **)
                     (((float)local_34 * (float)local_64 - (float)ppfVar25 * (float)local_40) +
                     (float)local_64 * DAT_00baa8ec + (float)local_38);
          ppfStack_58 = (float **)
                        ((float)ppfVar25 * (float)local_64 + (float)local_34 * (float)local_40 +
                        (float)local_40 * DAT_00baa8ec + (float)local_24);
          local_4c = (float **)(local_b0 * DAT_00baa924 + (float)local_5c);
          local_40 = (float **)((float)local_40 * DAT_00baa924);
          ppfStack_48 = (float **)(local_b4 * DAT_00baa924 + (float)ppfStack_58);
          ppfStack_54 = (float **)((float)local_5c - (float)local_98);
          ppfStack_50 = (float **)((float)ppfStack_58 - (float)local_40);
          if (pfVar10 == ppfVar23[2]) {
            FUN_009a17b0(pfVar10,&local_5c);
            ppfVar25 = (float **)local_30[0x13];
          }
          else {
            *pfVar10 = (float)local_5c;
            pfVar10[1] = (float)ppfStack_58;
            pfVar10[2] = (float)ppfStack_54;
            pfVar10[3] = (float)ppfStack_50;
            *(ulonglong *)(pfVar10 + 4) = CONCAT44(ppfStack_48,local_4c);
            ppfVar23[1] = ppfVar23[1] + 6;
            ppfVar25 = (float **)ppfVar23[1];
          }
          ppfStack_48 = (float **)((float)local_40 + (float)local_44);
          local_4c = (float **)((float)local_98 + (float)local_3c);
          ppfStack_50 = (float **)((float)local_44 - (float)local_40);
          local_5c = local_3c;
          ppfStack_54 = (float **)((float)local_3c - (float)local_98);
          ppfStack_58 = local_44;
          if (ppfVar25 == (float **)ppfVar23[2]) {
            FUN_009a17b0(ppfVar25,&local_5c);
            ppfVar25 = (float **)local_30[0x13];
          }
          else {
            *ppfVar25 = (float *)local_3c;
            ppfVar25[1] = (float *)local_44;
            ppfVar25[2] = (float *)ppfStack_54;
            ppfVar25[3] = (float *)ppfStack_50;
            *(ulonglong *)(ppfVar25 + 4) = CONCAT44(ppfStack_48,local_4c);
            ppfVar23[1] = ppfVar23[1] + 6;
            ppfVar25 = (float **)ppfVar23[1];
          }
          ppfStack_54 = (float **)((float)local_bc - (float)local_a0 * DAT_00baa924);
          local_5c = local_bc;
          ppfStack_58 = local_2c;
          ppfStack_50 = (float **)((float)local_2c - (float)ppfStack_84 * DAT_00baa924);
          in_XMM0 = ZEXT416(ppfStack_50);
          local_4c = local_bc;
          ppfStack_48 = local_2c;
          if (ppfVar25 == (float **)ppfVar23[2]) {
            FUN_009a17b0(ppfVar25,&local_5c);
            FUN_0099dca0();
          }
          else {
            *ppfVar25 = (float *)local_bc;
            ppfVar25[1] = (float *)local_2c;
            ppfVar25[2] = (float *)ppfStack_54;
            ppfVar25[3] = (float *)ppfStack_50;
            in_XMM0._8_8_ = 0;
            in_XMM0._0_8_ = CONCAT44(local_2c,local_bc);
            *(ulonglong *)(ppfVar25 + 4) = CONCAT44(local_2c,local_bc);
            ppfVar23[1] = ppfVar23[1] + 6;
            FUN_0099dca0();
          }
        }
      }
    }
  }
  if (param_1 == 1) {
    local_44 = (float **)ppfVar23[1];
    local_24 = (float **)*ppfVar23;
    if (((int)local_44 - (int)local_24) - 0x30U < 0x18) {
      do {
        ppfStack_84 = (float **)0x0;
        local_25 = '\0';
        if (((int)local_44 - (int)local_24) / 0x18 == 1) break;
        local_a0 = (float **)0x0;
        ppfVar13 = local_44;
        do {
          local_44 = ppfVar13;
          ppfVar13 = local_a0;
          if (local_25 != '\0') goto LAB_0099d600;
          fVar20 = *(float *)((int)(local_a0 + 6) + (int)local_24) -
                   *(float *)((int)local_a0 + (int)local_24);
          fVar17 = *(float *)((int)(local_a0 + 7) + (int)local_24) -
                   *(float *)((int)(local_a0 + 1) + (int)local_24);
          fVar17 = fVar17 * fVar17 + fVar20 * fVar20;
          auVar18 = ZEXT416((uint)fVar17);
          if (DAT_00baac40 <= fVar17) {
            local_34 = (float **)((int)local_60 - (int)pfStack_70 >> 2);
            local_2c = (float **)0x0;
            if (local_34 != (float **)0x0) {
LAB_0099d384:
              local_9c = *(float ***)((int)pfStack_70[(int)local_2c] + 0x33c);
              local_98 = *(float ***)((int)pfStack_70[(int)local_2c] + 0x340);
              FUN_0099c430((int)*ppfVar23 + (int)ppfVar13 + 0x18,0,local_9c);
              ppfVar16 = DAT_00c7b644;
              ppfVar25 = DAT_00c7b640;
              if ((float)local_30[5] * (float)local_30[5] <= auVar18._0_4_) goto LAB_0099d46a;
              pfVar10 = *ppfVar23;
              fVar17 = *(float *)((int)(pfVar10 + 1) + (int)ppfVar13);
              fVar20 = *(float *)((int)pfVar10 + (int)ppfVar13);
              auVar18 = ZEXT416(0);
              if ((((*(float *)((int)(pfVar10 + 5) + (int)ppfVar13) - fVar17) *
                    ((float)local_98 - fVar17) +
                    ((float)local_9c - fVar20) *
                    (*(float *)((int)(pfVar10 + 4) + (int)ppfVar13) - fVar20) <= 0.0) ||
                  (fVar17 = ((float)local_98 - fVar17) * ((float)local_98 - fVar17) +
                            ((float)local_9c - fVar20) * ((float)local_9c - fVar20),
                  auVar18 = ZEXT416((uint)fVar17), fVar17 <= DAT_00baac24)) ||
                 (fVar17 = (float)local_98 - *(float *)((int)(pfVar10 + 7) + (int)ppfVar13),
                 fVar20 = (float)local_9c - *(float *)((int)(pfVar10 + 6) + (int)ppfVar13),
                 fVar17 = fVar17 * fVar17 + fVar20 * fVar20, auVar18 = ZEXT416((uint)fVar17),
                 fVar17 <= DAT_00baac24)) goto LAB_0099d46a;
              local_bc = (float **)((int)(ppfVar13 + 6) + (int)pfVar10);
              ppfVar12 = (float **)ppfVar23[1];
              local_5c = local_9c;
              ppfStack_58 = local_98;
              ppfStack_54 = DAT_00c7b640;
              ppfStack_50 = DAT_00c7b644;
              local_4c = DAT_00c7b640;
              ppfStack_48 = DAT_00c7b644;
              if (ppfVar12 == (float **)ppfVar23[2]) {
                FUN_009a17b0(local_bc,&local_5c);
              }
              else if (local_bc == ppfVar12) {
                *ppfVar12 = (float *)local_9c;
                ppfVar12[1] = (float *)local_98;
                ppfVar12[2] = (float *)ppfVar25;
                ppfVar12[3] = (float *)ppfVar16;
                *(ulonglong *)(ppfVar12 + 4) = CONCAT44(ppfVar16,ppfVar25);
                ppfVar23[1] = ppfVar23[1] + 6;
              }
              else {
                local_34 = ppfVar12 + -6;
                *ppfVar12 = ppfVar12[-6];
                ppfVar12[1] = ppfVar12[-5];
                ppfVar12[2] = ppfVar12[-4];
                ppfVar12[3] = ppfVar12[-3];
                *(undefined8 *)(ppfVar12 + 4) = *(undefined8 *)(ppfVar12 + -2);
                ppfVar23[1] = ppfVar23[1] + 6;
                if (local_34 != local_bc) {
                  ppfVar11 = ppfVar12 + 5;
                  ppfVar12 = ppfVar12 + -7;
                  ppfVar15 = local_34;
                  do {
                    ppfVar11[-0xb] = ppfVar12[-5];
                    ppfVar15 = ppfVar15 + -6;
                    ppfVar11[-10] = ppfVar12[-4];
                    ppfVar11[-9] = ppfVar12[-3];
                    ppfVar11[-8] = ppfVar12[-2];
                    ppfVar11[-7] = ppfVar12[-1];
                    ppfVar11[-6] = *ppfVar12;
                    ppfVar11 = ppfVar11 + -6;
                    ppfVar12 = ppfVar12 + -6;
                    ppfVar13 = local_a0;
                    ppfVar23 = local_a8;
                  } while (ppfVar15 != local_bc);
                }
                *local_bc = (float *)local_9c;
                local_bc[1] = (float *)local_98;
                local_bc[2] = (float *)ppfVar25;
                local_bc[3] = (float *)ppfVar16;
                local_bc[4] = (float *)ppfVar25;
                local_bc[5] = (float *)ppfVar16;
              }
              piVar1 = (int *)(pfStack_70 + (int)local_2c);
              memmove(piVar1,piVar1 + 1,(int)local_60 - (int)(piVar1 + 1));
              local_6c = local_60 + -1;
              local_25 = '\x01';
              local_60 = local_6c;
              FUN_0099dca0();
            }
          }
LAB_0099d5b3:
          local_24 = (float **)*ppfVar23;
          local_a0 = ppfVar13 + 6;
          local_44 = (float **)ppfVar23[1];
          uVar7 = (int)ppfStack_84 + 1;
          ppfStack_84 = (float **)uVar7;
          ppfVar13 = (float **)ppfVar23[1];
          local_34 = local_24;
        } while (uVar7 < ((int)local_44 - (int)local_24) / 0x18 - 1U);
        if (local_25 == '\0') break;
LAB_0099d600:
      } while ((uint)(((int)local_44 - (int)local_24) / 0x18) < 6);
    }
    else {
      local_38 = (float **)0x1;
      ppfStack_84 = (float **)0xffffffff;
      if (1 < ((int)local_44 - (int)local_24) / 0x18 - 1U) {
        local_24 = (float **)0x18;
        do {
          local_34 = (float **)((int)ppfVar13 - (int)pfStack_70 >> 2);
          local_2c = (float **)0x0;
          if (local_34 != (float **)0x0) {
            do {
              local_ac = *(undefined4 *)((int)pfStack_70[(int)local_2c] + 0x33c);
              local_a8 = *(float ***)((int)pfStack_70[(int)local_2c] + 0x340);
              FUN_0099c430((int)*ppfVar23 + (int)local_24 + 0x18,0,local_24);
              if (in_XMM0._0_4_ < (float)local_30[5] * (float)local_30[5]) {
                pfVar10 = *ppfVar23;
                *(undefined4 *)((int)pfVar10 + (int)local_24) = local_ac;
                in_XMM0 = ZEXT416(local_a8);
                ((undefined4 *)((int)pfVar10 + (int)local_24))[1] = local_a8;
                piVar1 = (int *)(pfStack_70 + (int)local_2c);
                memmove(piVar1,piVar1 + 1,(int)ppfVar13 - (int)(piVar1 + 1));
                ppfVar13 = ppfVar13 + -1;
                ppfVar25 = ppfStack_84;
                if (ppfStack_84 == (float **)0xffffffff) {
                  ppfVar25 = local_38;
                }
                ppfStack_84 = ppfVar25;
                local_6c = ppfVar13;
                break;
              }
              local_2c = (float **)((int)local_2c + 1);
            } while (local_2c < local_34);
          }
          local_38 = (float **)((int)local_38 + 1);
          local_24 = local_24 + 6;
        } while (local_38 < (float **)(((int)ppfVar23[1] - (int)*ppfVar23) / 0x18 + -1));
        if (-1 < (int)ppfStack_84) {
          FUN_0099dca0();
        }
      }
    }
  }
  else if (param_1 == 4) {
    if ((uint)((int)ppfVar23[1] + (-0x30 - (int)*ppfVar23)) < 0x18) {
      if ((int)ppfVar13 - (int)pfStack_70 >> 2 != 0) {
        local_34 = (float **)(pfStack_70 + 1);
        do {
          local_5c = *(float ***)((int)*pfStack_70 + 0x33c);
          ppfStack_58 = *(float ***)((int)*pfStack_70 + 0x340);
          ppfStack_54 = DAT_00c7b640;
          ppfStack_50 = DAT_00c7b644;
          local_4c = DAT_00c7b640;
          ppfStack_48 = DAT_00c7b644;
          FUN_009a1680(&local_a8,
                       *ppfVar23 + (((local_30[0x13] - (int)*ppfVar23) / 0x18) * 3 + -3) * 2,
                       &local_5c);
          ppfVar13 = local_60;
          memmove(pfStack_70,local_34,(int)local_60 - (int)local_34);
          local_6c = ppfVar13 + -1;
          local_60 = local_6c;
        } while ((int)local_6c - (int)pfStack_70 >> 2 != 0);
      }
      FUN_0099dca0();
    }
  }
  else if ((param_1 == 5) &&
          (pfVar10 = *ppfVar23, (uint)((int)ppfVar23[1] + (-0x30 - (int)pfVar10)) < 0x18)) {
    iVar2 = local_30[0x13];
    ppfVar23 = (float **)(*(float *)(iVar2 + -0x18) - *pfVar10);
    ppfVar25 = (float **)(*(float *)(iVar2 + -0x14) - pfVar10[1]);
    local_40 = ppfVar25;
    local_3c = ppfVar23;
    if (DAT_00baa06c <= (float)ppfVar25 * (float)ppfVar25 + (float)ppfVar23 * (float)ppfVar23) {
      FUN_009a1610(&local_34,iVar2 + -0x18);
      local_60 = (float **)((int)ppfVar13 - (int)pfStack_70 >> 2);
      while( true ) {
        ppfVar13 = local_a8;
        iVar2 = local_30[0x13];
        local_34 = (float **)0x0;
        ppfStack_84 = (float **)iVar2;
        if (local_60 == (float **)0x0) break;
        ppfVar16 = (float **)0x0;
        ppfVar12 = ppfVar16;
        fVar17 = DAT_00baacd0;
        do {
          local_2c = (float **)pfStack_70[(int)ppfVar16];
          fVar21 = *(float *)(iVar2 + -0x14) - (float)local_2c[0xd0];
          fVar20 = *(float *)(iVar2 + -0x18) - (float)local_2c[0xcf];
          fVar20 = fVar21 * fVar21 + fVar20 * fVar20;
          if (fVar17 <= fVar20) {
            local_2c = ppfVar12;
            fVar20 = fVar17;
          }
          fVar17 = fVar20;
          ppfVar16 = (float **)((int)ppfVar16 + 1);
          ppfVar12 = local_2c;
        } while (ppfVar16 < local_60);
        if (local_2c == (float **)0x0) break;
        local_24 = (float **)((float)local_2c[0xcf] - *(float *)(iVar2 + -0x18));
        local_38 = (float **)((float)local_2c[0xd0] - *(float *)(iVar2 + -0x14));
        fVar17 = (float)ppfVar23 * (float)ppfVar23 + (float)ppfVar25 * (float)ppfVar25;
        local_64 = ppfVar23;
        local_2c = ppfVar25;
        FUN_00435a50();
        if (0.0 < fVar17) {
          local_2c = (float **)((DAT_00baa454 / fVar17) * (float)local_40);
          local_64 = (float **)((DAT_00baa454 / fVar17) * (float)local_3c);
        }
        local_34 = local_24;
        ppfStack_84 = local_38;
        ppfVar23 = (float **)((float)local_24 * (float)local_24 + (float)local_38 * (float)local_38)
        ;
        FUN_00435a50();
        local_bc = ppfVar23;
        ppfVar23 = local_34;
        if (0.0 < (float)local_bc) {
          ppfStack_84 = (float **)((DAT_00baa454 / (float)local_bc) * (float)local_38);
          ppfVar23 = (float **)((DAT_00baa454 / (float)local_bc) * (float)local_24);
        }
        uVar7 = ((int)ppfVar13[1] - (int)*ppfVar13) / 0x18;
        local_64 = (float **)
                   (((float)local_64 * (float)ppfVar23 + (float)local_2c * (float)ppfStack_84 +
                    DAT_00baa454) * DAT_00baa2d0);
        if (1 < uVar7) {
          pfVar10 = *ppfVar13;
          local_3c = (float **)(pfVar10[uVar7 * 6 + -6] - pfVar10[uVar7 * 6 + -0xc]);
          local_40 = (float **)(pfVar10[uVar7 * 6 + -5] - pfVar10[uVar7 * 6 + -0xb]);
        }
        fVar17 = (float)local_3c * (float)local_3c + (float)local_40 * (float)local_40;
        FUN_00435a50();
        if (0.0 < fVar17) {
          local_40 = (float **)((float)local_40 * (DAT_00baa454 / fVar17));
          local_3c = (float **)((float)local_3c * (DAT_00baa454 / fVar17));
        }
        ppfVar25 = local_38;
        ppfVar23 = local_24;
        if (0.0 < (float)local_bc) {
          ppfVar25 = (float **)((DAT_00baa454 / (float)local_bc) * (float)local_38);
          ppfVar23 = (float **)((DAT_00baa454 / (float)local_bc) * (float)local_24);
        }
        local_40 = (float **)((float)ppfVar25 * DAT_00baa1f8 * (float)local_64 + (float)local_40);
        local_3c = (float **)((float)local_3c + (float)ppfVar23 * DAT_00baa1f8 * (float)local_64);
        fVar17 = (float)local_40 * (float)local_40 + (float)local_3c * (float)local_3c;
        FUN_00435a50();
        ppfVar25 = DAT_00c7b644;
        ppfVar23 = DAT_00c7b640;
        if (0.0 < fVar17) {
          local_3c = (float **)((float)local_3c * (DAT_00baa454 / fVar17));
          local_40 = (float **)((float)local_40 * (DAT_00baa454 / fVar17));
        }
        ppfVar16 = (float **)ppfVar13[1];
        local_a4 = (float **)((float)local_3c * DAT_00baa904 + *(float *)(iVar2 + -0x18));
        local_a0 = (float **)((float)local_40 * DAT_00baa904 + *(float *)(iVar2 + -0x14));
        ppfStack_54 = DAT_00c7b640;
        ppfStack_50 = DAT_00c7b644;
        local_4c = DAT_00c7b640;
        ppfStack_48 = DAT_00c7b644;
        local_5c = local_a4;
        ppfStack_58 = local_a0;
        if (ppfVar16 == (float **)ppfVar13[2]) {
          FUN_009a17b0(ppfVar16,&local_5c);
        }
        else {
          *ppfVar16 = (float *)local_a4;
          ppfVar16[1] = (float *)local_a0;
          ppfVar16[2] = (float *)ppfVar23;
          ppfVar16[3] = (float *)ppfVar25;
          *(ulonglong *)(ppfVar16 + 4) = CONCAT44(ppfVar25,ppfVar23);
          ppfVar13[1] = ppfVar13[1] + 6;
        }
        cVar6 = FUN_00813360(&local_a4,0);
        if ((cVar6 == '\0') ||
           (ppfVar23 = local_3c, ppfVar25 = local_40,
           0x18 < (uint)(((int)ppfVar13[1] - (int)*ppfVar13) / 0x18))) break;
      }
      FUN_0099e160();
    }
  }
  if (pfStack_70 != (float *)0x0) {
    deallocate(pfStack_70,(int)local_94 - (int)pfStack_70 >> 2);
  }
  ExceptionList = local_1c;
  return;
LAB_0099d46a:
  local_2c = (float **)((int)local_2c + 1);
  if (local_34 <= local_2c) goto LAB_0099d5b3;
  goto LAB_0099d384;
}

