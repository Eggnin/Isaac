/* Local J460 decompiler output.
 * VA: 0x00463100
 * Entry: 00463100
 * Dispatcher: 0x006c2990
 * Types: 102
 * Identities: 102.0.0,102.1.0,102.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00466600; instructions=2887
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=102; identities=102.0.0,102.1.0,102.2.0;
   dispatcher=0x006c2990; end=0x00466600; instructions=2887 */

void __fastcall AI_00463100(float param_1)

{
  undefined *puVar1;
  char cVar2;
  undefined uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  int *piVar9;
  byte **ppbVar10;
  byte **ppbVar11;
  int *piVar12;
  float **ppfVar13;
  float **ppfVar14;
  undefined4 *puVar15;
  byte *pbVar16;
  char *pcVar17;
  byte bVar18;
  int iVar19;
  float *pfVar20;
  undefined4 uVar21;
  int **ppiVar22;
  bool bVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  undefined auVar28 [16];
  float *pfVar29;
  float *pfVar30;
  undefined4 uVar31;
  TypeDescriptor *pTVar32;
  TypeDescriptor *pTVar33;
  undefined4 uVar34;
  char local_2c4 [4];
  int local_2c0;
  uint local_2b8;
  undefined local_2b4 [8];
  float local_2ac;
  float local_2a8;
  float local_2a4;
  float local_2a0;
  undefined local_29c [4];
  float local_298;
  float local_294;
  float *local_290;
  float local_28c;
  float *local_288;
  undefined4 local_284;
  float *local_280;
  float local_27c;
  float *local_278;
  float *local_274;
  float *local_270;
  float *local_26c;
  float *local_268;
  float *local_264;
  undefined local_260 [4];
  float *local_25c;
  uint local_258;
  float *local_254 [2];
  float local_24c;
  float local_248;
  float *local_244;
  float *local_240;
  float *local_23c;
  byte local_235;
  float *local_234;
  float *local_230;
  float *local_22c;
  float *local_228;
  byte local_221;
  undefined local_220 [8];
  undefined4 local_218;
  undefined4 local_214;
  undefined4 local_20c;
  uint local_1c8;
  undefined4 local_18c;
  undefined local_178 [4];
  undefined4 local_174;
  undefined4 uStack_170;
  undefined4 uStack_16c;
  undefined4 uStack_168;
  undefined4 local_164;
  float local_160;
  undefined4 local_15c;
  undefined4 uStack_158;
  undefined4 uStack_154;
  undefined4 uStack_150;
  ulonglong local_120;
  undefined4 local_118;
  undefined4 local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100;
  undefined4 local_fc;
  undefined8 local_f8;
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined local_e0;
  undefined *local_dc;
  undefined4 local_d8;
  undefined local_d4;
  undefined local_d0 [8];
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_bc;
  float local_b8;
  undefined4 local_b0;
  uint local_78;
  undefined4 local_74;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2740;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_264 = (float *)((int)*(float *)((int)param_1 + 0x3a4) -
                       (int)*(float *)((int)param_1 + 0x3a0));
  local_248 = param_1;
  local_24 = uVar4;
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    *(undefined4 *)((int)param_1 + 0x334) = *(undefined4 *)((int)param_1 + 0x33c);
    *(undefined4 *)((int)param_1 + 0x338) = *(undefined4 *)((int)param_1 + 0x340);
    *(undefined *)((int)param_1 + 0xbc4) = 0;
    *(undefined4 *)((int)param_1 + 0x410) = 0;
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    puStack_20 = &stack0xfffffffc;
    uVar4 = FUN_006eef60(uVar4);
    *(char *)((int)param_1 + 0xbc6) = (char)((ulonglong)uVar4 % 0x3c) + '<';
    if ((*(int *)((int)param_1 + 0x2c) == 1) && (cVar2 = FUN_00456750(0x4f), cVar2 != '\0')) {
      *(undefined4 *)((int)param_1 + 0xc40) = 0x42b40000;
    }
    goto LAB_004665cc;
  }
  local_244 = DAT_00baa454;
  puVar1 = &stack0xfffffffc;
  if ((*(char *)((int)param_1 + 0xbc4) == '\0') &&
     (uVar5 = FUN_006eef60(uVar4), puVar1 = puStack_20, uVar5 % 0x14 == 0)) {
    uVar5 = FUN_006eef60();
    FUN_006d6ba0(0x8f,0x3f800000,uVar5 % 100 + 0x2d,0,0x3f800000);
    puVar1 = puStack_20;
  }
  puStack_20 = puVar1;
  if ((0.0 < *(float *)((int)param_1 + 0x14)) &&
     (puVar15 = *(undefined4 **)((int)param_1 + 8), puVar15 != *(undefined4 **)((int)param_1 + 0xc))
     ) {
    do {
      if ((puVar15[4] == 1000) && (puVar15[5] == 0x13)) {
        *puVar15 = 0;
      }
      puVar15 = puVar15 + 0xe;
    } while (puVar15 != *(undefined4 **)((int)param_1 + 0xc));
  }
  fVar26 = DAT_00baa380;
  iVar6 = *(int *)((int)param_1 + 0x2c);
  if (iVar6 == 0) {
    fVar24 = *(float *)((int)param_1 + 900) * DAT_00baa380;
    if (*(float *)((int)param_1 + 0x380) <= fVar24 && fVar24 != *(float *)((int)param_1 + 0x380)) {
      cVar2 = *(char *)((int)param_1 + 0xbc4);
      goto joined_r0x004632d7;
    }
  }
  else if (iVar6 == 1) {
    fVar24 = *(float *)((int)param_1 + 900) * DAT_00baa354;
    if (*(float *)((int)param_1 + 0x380) <= fVar24 && fVar24 != *(float *)((int)param_1 + 0x380)) {
      cVar2 = *(char *)((int)param_1 + 0xbc4);
joined_r0x004632d7:
      if (cVar2 == '\0') {
        *(undefined *)((int)param_1 + 0xbc4) = 1;
        *(undefined4 *)((int)param_1 + 0xb64) = 0x10;
        if ((iVar6 == 1) || (iVar6 == 2)) {
          uVar21 = FUN_006eef60(uVar4);
          uVar31 = 0;
          pTVar33 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar32 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar7 = 0;
          uVar21 = FUN_00428b20(0x60,0,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar21);
          iVar6 = __RTDynamicCast(uVar21,uVar7,pTVar32,pTVar33,uVar31);
          pfVar20 = (float *)(iVar6 + 0x3bc);
          if (*(int *)(iVar6 + 0x3bc) != 0) {
            local_230 = pfVar20;
            FUN_004cf210(&local_230);
          }
          *pfVar20 = param_1;
          FUN_004cdcf0(pfVar20);
          uVar21 = FUN_006eef60();
          uVar31 = 0;
          pTVar33 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar32 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar7 = 0;
          uVar21 = FUN_00428b20(0x60,0,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar21);
          iVar6 = __RTDynamicCast(uVar21,uVar7,pTVar32,pTVar33,uVar31);
          pfVar20 = (float *)(iVar6 + 0x3bc);
          if (*(int *)(iVar6 + 0x3bc) != 0) {
            local_230 = pfVar20;
            FUN_004cf210(&local_230);
          }
          *pfVar20 = param_1;
          FUN_004cdcf0(pfVar20);
          fVar26 = DAT_00baa380;
        }
      }
    }
  }
  else if ((iVar6 == 2) &&
          (fVar24 = *(float *)((int)param_1 + 900) * DAT_00baa354,
          *(float *)((int)param_1 + 0x380) <= fVar24 && fVar24 != *(float *)((int)param_1 + 0x380)))
  {
    cVar2 = *(char *)((int)param_1 + 0xbc4);
    goto joined_r0x004632d7;
  }
  iVar6 = *(int *)((int)param_1 + 0x2c);
  if ((iVar6 == 0) || (iVar6 == 1)) {
    fVar24 = *(float *)((int)param_1 + 900) * (float)DAT_00baa2d0;
    if (*(float *)((int)param_1 + 0x380) <= fVar24 && fVar24 != *(float *)((int)param_1 + 0x380)) {
      cVar2 = *(char *)((int)param_1 + 0xbc4);
      goto joined_r0x0046343d;
    }
  }
  else if ((iVar6 == 2) &&
          (fVar24 = *(float *)((int)param_1 + 900) * (float)DAT_00baa2d0,
          *(float *)((int)param_1 + 0x380) <= fVar24 && fVar24 != *(float *)((int)param_1 + 0x380)))
  {
    cVar2 = *(char *)((int)param_1 + 0xbc4);
joined_r0x0046343d:
    if (cVar2 == '\x01') {
      *(undefined *)((int)param_1 + 0xbc4) = 2;
      *(undefined4 *)((int)param_1 + 0xb64) = 0x10;
    }
  }
  local_221 = *(byte *)((int)param_1 + 0xbc4);
  if (local_221 < 2) {
    *(float *)((int)param_1 + 0x364) =
         *(float *)((int)param_1 + 0x338) - *(float *)((int)param_1 + 0x340);
    *(float *)((int)param_1 + 0x360) =
         *(float *)((int)param_1 + 0x334) - *(float *)((int)param_1 + 0x33c);
    *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa304;
    local_221 = *(byte *)((int)param_1 + 0xbc4);
  }
  else {
    *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3e0;
  }
  fVar24 = DAT_00baaa94;
  if ((*(float *)((int)param_1 + 0x380) < *(float *)((int)param_1 + 3000)) &&
     (fVar25 = (*(float *)((int)param_1 + 3000) - *(float *)((int)param_1 + 0x380)) +
               *(float *)((int)param_1 + 0xbbc), *(float *)((int)param_1 + 0xbbc) = fVar25,
     fVar24 < fVar25)) {
    *(undefined4 *)((int)param_1 + 0xbbc) = 0x43480000;
  }
  local_234 = DAT_00baa7e8;
  if ((local_221 < 2) && (local_221 == 1)) {
    local_234 = DAT_00baa7a4;
  }
  if ((*(int *)((int)param_1 + 0x2c) == 1) || (*(int *)((int)param_1 + 0x2c) == 2)) {
    local_234 = (float *)((float)local_234 * fVar26);
  }
  local_280 = (float *)0x3;
  if (*(int *)((int)param_1 + 0xb64) != 8) {
    if (*(float *)((int)param_1 + 0xbbc) <= (float)DAT_00baa81c) {
      if (1 < local_221) goto LAB_004635fb;
    }
    else {
      if (1 < local_221) {
LAB_004635fb:
        if (*(int *)((int)param_1 + 0xb64) != 3) goto LAB_00463976;
      }
      iVar6 = FUN_006ac760();
      if (iVar6 != 0) {
        AI_0043ef30();
        uVar5 = FUN_006eef60();
        if ((uVar5 % 10 == 0) &&
           ((*(int *)((int)param_1 + 0x2c) == 1 || (*(int *)((int)param_1 + 0x2c) == 2)))) {
          local_1c8 = local_1c8 | 1;
          local_20c = 0x3f99999a;
        }
        else {
          local_18c = 4;
        }
        local_25c = (float *)0x1;
        local_218 = 0xbdcccccd;
        local_214 = 0xbdcccccd;
        if (DAT_00baa9d0 < *(float *)((int)param_1 + 0xbbc)) {
          local_25c = (float *)0x2;
        }
        pfVar20 = local_25c;
        if (DAT_00baaa44 < *(float *)((int)param_1 + 0xbbc)) {
          pfVar20 = local_280;
          local_25c = local_280;
        }
        do {
          iVar6 = FUN_006be840();
          local_228 = (float *)(*(float *)(iVar6 + 0x33c) - *(float *)((int)param_1 + 0x33c));
          local_22c = (float *)(*(float *)(iVar6 + 0x340) - *(float *)((int)param_1 + 0x340));
          if ((1 < *(byte *)((int)param_1 + 0xbc4)) && (*(int *)((int)param_1 + 0x2c) == 0)) {
            if ((float)((uint)local_228 & DAT_00bacb40) <= (float)((uint)local_22c & DAT_00bacb40))
            {
              local_274 = (float *)0x0;
              local_228 = local_274;
            }
            else {
              local_22c = (float *)0x0;
            }
          }
          fVar26 = (float)local_22c * (float)local_22c + (float)local_228 * (float)local_228;
          local_274 = local_228;
          local_270 = local_22c;
          FUN_00435a50();
          if (DAT_00ba9fe4 < fVar26) {
            local_270 = (float *)(((float)DAT_00baa454 / fVar26) * (float)local_22c);
            local_274 = (float *)(((float)DAT_00baa454 / fVar26) * (float)local_228);
          }
          iVar6 = FUN_006eef60();
          fVar26 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_230 = (float *)(fVar26 + fVar26);
          pfVar29 = local_230;
          FUN_0041d520();
          local_228 = pfVar29;
          pfVar29 = local_230;
          FUN_0041d540();
          local_270 = (float *)((float)local_228 * DAT_00baa120 + (float)local_270);
          local_274 = (float *)((float)pfVar29 * DAT_00baa120 + (float)local_274);
          fVar26 = (float)local_270 * (float)local_270 + (float)local_274 * (float)local_274;
          local_22c = local_274;
          local_228 = local_270;
          FUN_00435a50();
          pfVar29 = local_22c;
          pfVar30 = local_228;
          if (DAT_00ba9fe4 < fVar26) {
            pfVar30 = (float *)((float)local_228 * ((float)local_234 / fVar26));
            pfVar29 = (float *)((float)local_22c * ((float)local_234 / fVar26));
            local_274 = pfVar29;
            local_270 = pfVar30;
          }
          if (1 < *(byte *)((int)param_1 + 0xbc4)) {
            iVar6 = *(int *)((int)param_1 + 0x2c);
            if (iVar6 == 0) {
              fVar26 = *(float *)((int)param_1 + 0x360) * DAT_00baa1f8;
              fVar24 = *(float *)((int)param_1 + 0x364) * DAT_00baa1f8;
            }
            else {
              if ((iVar6 != 1) && (iVar6 != 2)) goto LAB_0046390f;
              fVar26 = *(float *)((int)param_1 + 0x360) * DAT_00baa304;
              fVar24 = *(float *)((int)param_1 + 0x364) * DAT_00baa304;
            }
            local_270 = (float *)(fVar24 + (float)pfVar30);
            local_274 = (float *)(fVar26 + (float)pfVar29);
          }
LAB_0046390f:
          FUN_006cb2e0((int)param_1 + 0x33c,&local_274,0,local_220);
          pfVar20 = (float *)((int)pfVar20 + -1);
        } while (pfVar20 != (float *)0x0);
        if ((*(int *)((int)param_1 + 0x2c) == 1) ||
           (pfVar20 = DAT_00baa81c, *(int *)((int)param_1 + 0x2c) == 2)) {
          pfVar20 = DAT_00baa784;
        }
        *(float *)((int)param_1 + 0xbbc) =
             *(float *)((int)param_1 + 0xbbc) - (float)(int)local_25c * (float)pfVar20;
      }
    }
  }
LAB_00463976:
  if (*(float *)((int)param_1 + 0xbbc) <= 0.0 && *(float *)((int)param_1 + 0xbbc) != 0.0) {
    *(undefined4 *)((int)param_1 + 0xbbc) = 0;
  }
  pfVar29 = (float *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                     *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4));
  pfVar20 = (float *)0x0;
  if (0 < (int)pfVar29) {
    pfVar20 = pfVar29;
  }
  local_230 = pfVar20;
  if (((((*(int *)((int)param_1 + 0x2c) == 1) || (*(int *)((int)param_1 + 0x2c) == 2)) &&
       (iVar6 = FUN_006ac760(), iVar6 != 0)) &&
      ((uVar5 = FUN_006eef60(), (uVar5 & 7) == 0 && ((int)pfVar20 < 9)))) &&
     (fVar26 = *(float *)((int)param_1 + 900) * DAT_00baa3e0,
     *(float *)((int)param_1 + 0x380) <= fVar26 && fVar26 != *(float *)((int)param_1 + 0x380))) {
    uVar5 = FUN_006eef60();
    pfVar20 = (float *)(9 - (int)local_230);
    if ((int)((int)pfVar20 + (uVar5 & 3) + 2) < 10) {
      pfVar20 = (float *)((uVar5 & 3) + 2);
    }
    local_268 = pfVar20;
    iVar6 = FUN_006eef60();
    fVar26 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa708;
    local_228 = (float *)(fVar26 + fVar26);
    if (0 < (int)pfVar20) {
      local_298 = DAT_00baa7a8 / (float)(int)pfVar20;
      do {
        uVar5 = FUN_006eef60();
        fVar26 = *(float *)((int)param_1 + 900) * DAT_00baa354;
        uVar21 = 0x12;
        local_22c = (float *)0x1;
        if ((uVar5 & 3) == 0) {
          uVar21 = 0x50;
        }
        if ((*(float *)((int)param_1 + 0x380) <= fVar26 &&
             fVar26 != *(float *)((int)param_1 + 0x380)) &&
           (uVar5 = FUN_006eef60(), (uVar5 & 3) != 0)) {
          local_22c = (float *)0x2;
          uVar21 = 0xe;
        }
        pfVar20 = local_228;
        FUN_0041d520();
        local_25c = pfVar20;
        pfVar20 = local_228;
        FUN_0041d540();
        local_230 = pfVar20;
        uVar7 = FUN_006eef60();
        uVar34 = 0;
        local_2a4 = (float)local_230 * DAT_00baa854 + *(float *)((int)param_1 + 0x33c);
        local_240 = (float *)((float)local_230 * DAT_00baa6fc);
        pTVar33 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        local_2a0 = (float)local_25c * DAT_00baa854 + *(float *)((int)param_1 + 0x340);
        local_23c = (float *)((float)local_25c * DAT_00baa6fc);
        pTVar32 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar31 = 0;
        uVar21 = FUN_00428b20(uVar21,0,&local_2a4,&local_240,param_1,local_22c,uVar7);
        iVar6 = __RTDynamicCast(uVar21,uVar31,pTVar32,pTVar33,uVar34);
        local_228 = (float *)((float)local_228 + local_298);
        *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb;
        local_268 = (float *)((int)local_268 + -1);
        *(undefined *)(iVar6 + 0x174) = 1;
        *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
      } while (local_268 != (float *)0x0);
    }
  }
  if ((*(char *)((int)param_1 + 0xbc4) == '\x01') && (*(int *)((int)param_1 + 0x2c) == 0)) {
    if (*(int *)((int)param_1 + 0xba0) < 0) {
      uVar4 = FUN_006eef60(uVar4);
      if ((uVar4 & 3) == 0) {
        *(undefined4 *)((int)param_1 + 0x410) = 10;
        *(undefined4 *)((int)param_1 + 0xba0) = 0x28;
      }
      else {
        uVar4 = FUN_006eef60();
        if (uVar4 % 10 == 0) {
          iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                  *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
          iVar6 = 0;
          if (0 < iVar8) {
            iVar6 = iVar8;
          }
          if (iVar6 < 2) {
            *(undefined4 *)((int)param_1 + 0xba0) = 0x78;
            local_22c = (float *)0x2;
            do {
              iVar6 = FUN_006eef60();
              fVar26 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              local_230 = (float *)(fVar26 + fVar26);
              pfVar20 = local_230;
              FUN_0041d520();
              local_25c = pfVar20;
              pfVar20 = local_230;
              FUN_0041d540();
              local_240 = (float *)((float)pfVar20 * DAT_00baa9d0 + *(float *)((int)param_1 + 0x33c)
                                   );
              local_23c = (float *)((float)local_25c * DAT_00baa9d0 +
                                   *(float *)((int)param_1 + 0x340));
              pfVar29 = (float *)FUN_00813520(&local_294,&local_240,0,1,1,0);
              iVar6 = FUN_006eef60();
              fVar26 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              local_230 = (float *)(fVar26 + fVar26);
              pfVar20 = local_230;
              FUN_0041d520();
              local_268 = pfVar20;
              iVar6 = FUN_006eef60();
              local_25c = (float *)((float)((double)iVar6 +
                                           (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                                   );
              pfVar20 = local_230;
              FUN_0041d540();
              local_2ac = (float)pfVar20 * (float)local_25c * (float)DAT_00baa81c + *pfVar29;
              local_2a8 = (float)local_25c * (float)local_268 * (float)DAT_00baa81c + pfVar29[1];
              uVar21 = FUN_006eef60();
              FUN_00428b20(0x26,1,&local_2ac,&DAT_00c7b640,param_1,0,uVar21);
              local_22c = (float *)((int)local_22c + -1);
            } while (local_22c != (float *)0x0);
            local_22c = (float *)0x0;
          }
        }
      }
    }
    else {
      *(int *)((int)param_1 + 0xba0) = *(int *)((int)param_1 + 0xba0) - (int)local_264;
    }
  }
  pfVar20 = local_264;
  if (0 < (int)local_264) {
    do {
      local_22c = pfVar20;
      if (*(char *)((int)param_1 + 0xbc4) == '\x01') {
        iVar8 = *(int *)((int)param_1 + 0x410);
        iVar6 = iVar8 + -1;
        *(int *)((int)param_1 + 0x410) = iVar6;
        if ((0 < iVar8) && (iVar6 % 5 == 0)) {
          uVar21 = FUN_0081e9d0(&local_28c,0x41a00000);
          FUN_00813520(&local_294,uVar21,0,0,0,0);
          iVar6 = FUN_006eef60();
          fVar26 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
          local_230 = (float *)(fVar26 + fVar26);
          pfVar20 = local_230;
          FUN_0041d520();
          local_268 = pfVar20;
          iVar6 = FUN_006eef60();
          local_25c = (float *)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                               DAT_00ba9ff4);
          pfVar20 = local_230;
          FUN_0041d540();
          local_294 = local_294 + (float)pfVar20 * (float)local_25c * DAT_00baa87c;
          local_290 = (float *)((float)local_290 +
                               (float)local_268 * (float)local_25c * DAT_00baa87c);
          uVar4 = FUN_006eef60();
          if (uVar4 % (uint)local_280 == 0) {
            iVar6 = FUN_006be840();
            fVar26 = *(float *)((int)local_248 + 0x340) - *(float *)(iVar6 + 0x340);
            fVar24 = *(float *)((int)local_248 + 0x33c) - *(float *)(iVar6 + 0x33c);
            fVar26 = fVar26 * fVar26 + fVar24 * fVar24;
            FUN_00435a50();
            local_240 = (float *)(*(float *)(iVar6 + 0x33c) +
                                 fVar26 * DAT_00baa198 * *(float *)(iVar6 + 0x360));
            local_23c = (float *)(*(float *)(iVar6 + 0x340) +
                                 fVar26 * DAT_00baa198 * *(float *)(iVar6 + 0x364));
            FUN_00812f50(&local_27c,&local_240,0x41a00000,0x41a00000,0x41a00000);
            local_294 = local_27c;
            local_290 = local_278;
            param_1 = local_248;
          }
          iVar6 = *(int *)(DAT_00c71678 + 0x18300);
          iVar8 = (int)(((float)local_290 - DAT_00baaa00) / DAT_00baa904 + (float)DAT_00baa2d0);
          iVar19 = (int)((local_294 - DAT_00baa904) / DAT_00baa904 + (float)DAT_00baa2d0);
          if ((((-1 < iVar19) && (iVar19 < *(int *)(iVar6 + 0xc))) && (-1 < iVar8)) &&
             (((iVar8 < *(int *)(iVar6 + 0x10) &&
               (uVar4 = iVar8 * *(int *)(iVar6 + 0xc) + iVar19, uVar4 < 0x1c0)) &&
              (*(int *)(iVar6 + 0x76c + uVar4 * 4) < 0x3b7)))) {
            *(undefined4 *)(iVar6 + 0x76c + uVar4 * 4) = 900;
          }
          uVar21 = FUN_006eef60();
          piVar9 = (int *)FUN_00428b20(1000,0x13,&local_294,&DAT_00c7b640,param_1,2,uVar21);
          local_254[0] = (float *)(DAT_00c37940 ^ DAT_00bacb70);
          local_258 = DAT_00c3793c ^ DAT_00bacb70;
          FUN_006ac2a0(0x41200000,local_258,local_254[0],0xffffffff);
          (**(code **)(*piVar9 + 0xc))();
        }
      }
      local_22c = (float *)((int)local_22c + -1);
      pfVar20 = local_22c;
    } while (local_22c != (float *)0x0);
  }
  iVar6 = *(int *)((int)param_1 + 0xb64);
  if (iVar6 == 3) {
    if (*(char *)((int)param_1 + 0xbc4) == '\0') {
      ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar11 != (byte **)0x0) {
        ppbVar10 = ppbVar11;
        if (&DAT_0000000f < ppbVar11[5]) {
          ppbVar10 = (byte **)*ppbVar11;
        }
        pbVar16 = &DAT_00b1df3c;
        do {
          bVar18 = *(byte *)ppbVar10;
          bVar23 = bVar18 < *pbVar16;
          if (bVar18 != *pbVar16) {
LAB_00464214:
            uVar4 = -(uint)bVar23 | 1;
            goto LAB_00464219;
          }
          if (bVar18 == 0) break;
          bVar18 = *(byte *)((int)ppbVar10 + 1);
          bVar23 = bVar18 < pbVar16[1];
          if (bVar18 != pbVar16[1]) goto LAB_00464214;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pbVar16 = pbVar16 + 2;
        } while (bVar18 != 0);
        uVar4 = 0;
LAB_00464219:
        if ((uVar4 == 0) &&
           ((*(byte *)(ppbVar11 + 0xd) == 0 || (*(char *)((int)param_1 + 0x8c) != '\0'))))
        goto LAB_00464250;
      }
      cVar2 = FUN_0040a5d0(&DAT_00b1df3c,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)((int)param_1 + 0x8c) = 1;
      }
    }
LAB_00464250:
    if (*(char *)((int)param_1 + 0xbc4) == '\x01') {
      ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar11 != (byte **)0x0) {
        ppbVar10 = ppbVar11;
        if (&DAT_0000000f < ppbVar11[5]) {
          ppbVar10 = (byte **)*ppbVar11;
        }
        pbVar16 = &DAT_00b1df34;
        do {
          bVar18 = *(byte *)ppbVar10;
          bVar23 = bVar18 < *pbVar16;
          if (bVar18 != *pbVar16) {
LAB_00464293:
            uVar4 = -(uint)bVar23 | 1;
            goto LAB_00464298;
          }
          if (bVar18 == 0) break;
          bVar18 = *(byte *)((int)ppbVar10 + 1);
          bVar23 = bVar18 < pbVar16[1];
          if (bVar18 != pbVar16[1]) goto LAB_00464293;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pbVar16 = pbVar16 + 2;
        } while (bVar18 != 0);
        uVar4 = 0;
LAB_00464298:
        if ((uVar4 == 0) &&
           ((*(byte *)(ppbVar11 + 0xd) == 0 || (*(char *)((int)param_1 + 0x8c) != '\0'))))
        goto LAB_004642cf;
      }
      cVar2 = FUN_0040a5d0(&DAT_00b1df34,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)((int)param_1 + 0x8c) = 1;
      }
    }
LAB_004642cf:
    if (1 < *(byte *)((int)param_1 + 0xbc4)) {
      ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar11 != (byte **)0x0) {
        ppbVar10 = ppbVar11;
        if (&DAT_0000000f < ppbVar11[5]) {
          ppbVar10 = (byte **)*ppbVar11;
        }
        pbVar16 = &DAT_00b1df4c;
        do {
          bVar18 = *(byte *)ppbVar10;
          bVar23 = bVar18 < *pbVar16;
          if (bVar18 != *pbVar16) {
LAB_00464312:
            uVar4 = -(uint)bVar23 | 1;
            goto LAB_00464317;
          }
          if (bVar18 == 0) break;
          bVar18 = *(byte *)((int)ppbVar10 + 1);
          bVar23 = bVar18 < pbVar16[1];
          if (bVar18 != pbVar16[1]) goto LAB_00464312;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pbVar16 = pbVar16 + 2;
        } while (bVar18 != 0);
        uVar4 = 0;
LAB_00464317:
        if ((uVar4 == 0) &&
           ((*(byte *)(ppbVar11 + 0xd) == 0 || (*(char *)((int)param_1 + 0x8c) != '\0'))))
        goto LAB_0046434e;
      }
      cVar2 = FUN_0040a5d0(&DAT_00b1df4c,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)((int)param_1 + 0x8c) = 1;
      }
    }
LAB_0046434e:
    if (*(byte *)((int)param_1 + 0xbc6) == 0) {
      pfVar20 = (float *)0x0;
LAB_0046440c:
      if (*(float *)((int)param_1 + 900) < *(float *)((int)param_1 + 0x380) ||
          *(float *)((int)param_1 + 900) == *(float *)((int)param_1 + 0x380)) goto LAB_00464371;
      *(undefined4 *)((int)param_1 + 0xb64) = 8;
      *(undefined4 *)((int)param_1 + 0xba0) = 0x28;
      *(undefined *)((int)param_1 + 0xbc6) = 0;
      bVar18 = *(byte *)((int)param_1 + 0xbc4);
      if ((bVar18 == 0) || (1 < bVar18)) {
        uVar4 = FUN_006eef60();
        uVar5 = FUN_006eef60();
        *(uint *)((int)param_1 + 0xbc0) = uVar5 % 5 + (uVar4 % 6) * 4 + uVar4 % 6;
        bVar18 = *(byte *)((int)param_1 + 0xbc4);
      }
      if (bVar18 == 1) {
        uVar4 = *(int *)((int)param_1 + 0xbc0) + 1U & 0x80000001;
        if ((int)uVar4 < 0) {
          uVar4 = (uVar4 - 1 | 0xfffffffe) + 1;
        }
        *(uint *)((int)param_1 + 0xbc0) = uVar4;
      }
      iVar6 = FUN_006eef60();
      *(float *)((int)param_1 + 0xbb0) =
           (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
           DAT_00baa708;
    }
    else {
      pfVar20 = (float *)(uint)*(byte *)((int)param_1 + 0xbc6);
      if (pfVar20 == local_264 || (int)pfVar20 - (int)local_264 < 0) goto LAB_0046440c;
LAB_00464371:
      uVar3 = 0;
      if (0 < (int)pfVar20 - (int)local_264) {
        uVar3 = (undefined)((int)pfVar20 - (int)local_264);
      }
      *(undefined *)((int)param_1 + 0xbc6) = uVar3;
    }
    if ((((*(int *)((int)param_1 + 0x2c) == 1) || (*(int *)((int)param_1 + 0x2c) == 2)) &&
        (1 < *(byte *)((int)param_1 + 0xbc4))) &&
       (((*(int *)(DAT_00c71678 + 0x264f8) - *(int *)((int)param_1 + 0x328)) % 100 == 0 &&
        (uVar4 = FUN_006eef60(), (uVar4 & 1) == 0)))) {
      *(undefined4 *)((int)param_1 + 0xb64) = 6;
      *(undefined4 *)((int)param_1 + 0xbc0) = 0;
    }
    if (*(int *)((int)param_1 + 0x2c) == 0) {
      cVar2 = *(char *)((int)param_1 + 0xbc4);
      if (cVar2 == '\x02') {
        fVar26 = *(float *)((int)param_1 + 900) * (float)DAT_00baa2d0;
        if (*(float *)((int)param_1 + 0x380) <= fVar26 && fVar26 != *(float *)((int)param_1 + 0x380)
           ) goto LAB_0046454d;
      }
      else if (cVar2 == '\x03') {
        fVar26 = *(float *)((int)param_1 + 900) * DAT_00baa280;
        if (*(float *)((int)param_1 + 0x380) <= fVar26 && fVar26 != *(float *)((int)param_1 + 0x380)
           ) goto LAB_0046454d;
      }
      else if (cVar2 == '\x04') {
        fVar26 = *(float *)((int)param_1 + 900) * DAT_00baa1f8;
        if (*(float *)((int)param_1 + 0x380) <= fVar26 && fVar26 != *(float *)((int)param_1 + 0x380)
           ) goto LAB_0046454d;
      }
      else if (cVar2 == '\x05') {
        fVar26 = *(float *)((int)param_1 + 900) * DAT_00baa198;
        if (*(float *)((int)param_1 + 0x380) <= fVar26 && fVar26 != *(float *)((int)param_1 + 0x380)
           ) {
LAB_0046454d:
          *(char *)((int)param_1 + 0xbc4) = cVar2 + '\x01';
          *(undefined4 *)((int)param_1 + 0xb64) = 9;
          *(undefined4 *)((int)param_1 + 0xbc0) = 0;
        }
      }
      else if ((cVar2 == '\x06') &&
              (fVar26 = *(float *)((int)param_1 + 900) * DAT_00baa120,
              *(float *)((int)param_1 + 0x380) <= fVar26 &&
              fVar26 != *(float *)((int)param_1 + 0x380))) goto LAB_0046454d;
    }
    if (1 < *(byte *)((int)param_1 + 0xbc4)) {
      iVar6 = FUN_006ac760();
      if (iVar6 != 0) {
        iVar6 = *(int *)((int)param_1 + 0x2c);
        if (iVar6 == 0) {
          iVar6 = FUN_006eef60();
          *(float *)((int)param_1 + 0xbb4) =
               (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa9a0 + DAT_00baaa00;
          iVar6 = *(int *)((int)param_1 + 0x2c);
        }
        if (iVar6 == 1) {
          *(undefined4 *)((int)param_1 + 0xbb4) = 0;
        }
      }
      iVar6 = FUN_006be840();
      local_240 = *(float **)(iVar6 + 0x33c);
      local_23c = *(float **)(iVar6 + 0x340);
      local_228 = (float *)(*(float *)((int)param_1 + 0x33c) - (float)local_240);
      local_24c = *(float *)((int)param_1 + 0x340) - (float)local_23c;
      if (*(int *)((int)param_1 + 0x2c) == 0) {
        if ((float)((uint)local_228 & DAT_00bacb40) <= (float)((uint)local_24c & DAT_00bacb40)) {
          local_228 = (float *)0x0;
        }
        else {
          local_24c = 0.0;
        }
      }
      fVar24 = local_24c * local_24c + (float)local_228 * (float)local_228;
      FUN_00435a50();
      fVar26 = local_24c;
      pfVar20 = local_228;
      if (DAT_00ba9fe4 < fVar24) {
        fVar26 = local_24c * ((float)DAT_00baa454 / fVar24);
        pfVar20 = (float *)((float)local_228 * ((float)DAT_00baa454 / fVar24));
      }
      local_254[0] = *(float **)((int)param_1 + 0x16c);
      local_230 = (float *)((*(float *)((int)param_1 + 0xbb4) * (float)pfVar20 +
                            *(float *)(iVar6 + 0x33c)) - *(float *)((int)param_1 + 0x33c));
      local_25c = (float *)((*(float *)((int)param_1 + 0xbb4) * fVar26 + *(float *)(iVar6 + 0x340))
                           - *(float *)((int)param_1 + 0x340));
      if ((*(uint *)((int)param_1 + 0x168) & 0x1000800) == 0) {
        if ((*(uint *)((int)param_1 + 0x168) & 0x200) == 0) {
          fVar26 = (float)local_25c * (float)local_25c + (float)local_230 * (float)local_230;
          FUN_00435a50();
          if (DAT_00baa8e0 < fVar26) {
            pfVar20 = local_25c;
            FUN_00499d60();
            fVar26 = (float)pfVar20 / DAT_00baa398 + (float)DAT_00baa2d0;
            FUN_008370b0();
            pfVar20 = (float *)(fVar26 * DAT_00baa398);
            local_230 = pfVar20;
            FUN_0041d520();
            local_228 = pfVar20;
            pfVar20 = local_230;
            FUN_0041d540();
            local_22c = pfVar20;
            fVar26 = (float)local_22c * (float)local_22c + (float)local_228 * (float)local_228;
            FUN_00435a50();
            pfVar29 = local_228;
            pfVar20 = local_22c;
            if (0.0 < fVar26) {
              pfVar29 = (float *)((float)local_228 * ((float)DAT_00baa454 / fVar26));
              pfVar20 = (float *)((float)local_22c * ((float)DAT_00baa454 / fVar26));
            }
            fVar26 = (float)pfVar20 * DAT_00baa4cc;
            fVar24 = (float)pfVar29 * DAT_00baa4cc;
            if ((*(int *)((int)param_1 + 0x2c) == 1) || (*(int *)((int)param_1 + 0x2c) == 2)) {
              fVar26 = fVar26 * _DAT_00baa178;
              fVar24 = fVar24 * _DAT_00baa178;
            }
            fVar25 = *(float *)((int)param_1 + 0x36c);
            if (NAN(fVar25) == (fVar25 == 0.0)) {
              *(float *)((int)param_1 + 0x360) =
                   (fVar26 * *(float *)((int)param_1 + 0x39c)) / fVar25 +
                   *(float *)((int)param_1 + 0x360);
              *(float *)((int)param_1 + 0x364) =
                   (fVar24 * *(float *)((int)param_1 + 0x39c)) / fVar25 +
                   *(float *)((int)param_1 + 0x364);
            }
          }
        }
        else {
          if ((*(int *)((int)param_1 + 0x2c) == 1) || (*(int *)((int)param_1 + 0x2c) == 2)) {
            *(undefined4 *)((int)param_1 + 0x36c) = 0x3f19999a;
          }
          FUN_007e6300(0);
          if (*(int *)((int)param_1 + 0x2c) == 0) {
            FUN_007e6300(0);
            FUN_007e6300(0);
          }
        }
      }
      else {
        if ((*(int *)((int)param_1 + 0x2c) == 1) || (*(int *)((int)param_1 + 0x2c) == 2)) {
          *(undefined4 *)((int)param_1 + 0x36c) = 0x3f19999a;
        }
        FUN_007e4940(&local_240,0);
      }
    }
  }
  else if (iVar6 == 8) {
    bVar18 = *(byte *)((int)param_1 + 0xbc4);
    local_221 = 0;
    if (bVar18 == 0) {
      ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar11 != (byte **)0x0) {
        ppbVar10 = ppbVar11;
        if (&DAT_0000000f < ppbVar11[5]) {
          ppbVar10 = (byte **)*ppbVar11;
        }
        pcVar17 = "1Attack";
        do {
          bVar18 = *(byte *)ppbVar10;
          bVar23 = bVar18 < (byte)*pcVar17;
          if (bVar18 != *pcVar17) {
LAB_00464cc3:
            uVar4 = -(uint)bVar23 | 1;
            goto LAB_00464cc8;
          }
          if (bVar18 == 0) break;
          bVar18 = *(byte *)((int)ppbVar10 + 1);
          bVar23 = bVar18 < ((byte *)pcVar17)[1];
          if (bVar18 != ((byte *)pcVar17)[1]) goto LAB_00464cc3;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar18 != 0);
        uVar4 = 0;
LAB_00464cc8:
        if ((uVar4 == 0) &&
           ((*(byte *)(ppbVar11 + 0xd) == 0 || (*(char *)((int)param_1 + 0x8c) != '\0'))))
        goto LAB_00464cff;
      }
      pcVar17 = "1Attack";
LAB_00464ce8:
      cVar2 = FUN_0040a5d0(pcVar17,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)((int)param_1 + 0x8c) = 1;
      }
LAB_00464cff:
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) != '\0')) {
LAB_00464d4d:
        local_221 = 0;
      }
      else {
        ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar11[5]) {
          ppbVar11 = (byte **)*ppbVar11;
        }
        pcVar17 = "3FBAttack4End";
        do {
          bVar18 = *(byte *)ppbVar11;
          bVar23 = bVar18 < (byte)*pcVar17;
          if (bVar18 != *pcVar17) {
LAB_00464d40:
            uVar4 = -(uint)bVar23 | 1;
            goto LAB_00464d45;
          }
          if (bVar18 == 0) break;
          bVar18 = *(byte *)((int)ppbVar11 + 1);
          bVar23 = bVar18 < ((byte *)pcVar17)[1];
          if (bVar18 != ((byte *)pcVar17)[1]) goto LAB_00464d40;
          ppbVar11 = (byte **)((int)ppbVar11 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar18 != 0);
        uVar4 = 0;
LAB_00464d45:
        if (uVar4 != 0) goto LAB_00464d4d;
        local_221 = 1;
      }
      if (0 < (int)local_264) {
        local_235 = *(byte *)((int)param_1 + 0xbc6);
        fVar26 = param_1;
        fVar24 = DAT_00baa6fc;
        pfVar20 = DAT_00baa454;
        pfVar29 = DAT_00baa784;
        do {
          param_1 = local_248;
          uVar4 = (-(uint)(*(byte *)((int)fVar26 + 0xbc4) < 2) & 0xfffffff0) + 0x13;
          local_280 = (float *)(*(int *)((int)fVar26 + 0xbc0) / 5 + 3);
          iVar6 = local_235 - uVar4;
          pfVar30 = (float *)(((float)*(int *)((int)fVar26 + 0xbc0) / (float)pfVar29 - 0.0) /
                             (float)pfVar29);
          if ((float)pfVar30 <= 0.0) {
            pfVar30 = (float *)0x0;
          }
          if ((float)pfVar20 <= (float)pfVar30) {
            pfVar30 = pfVar20;
          }
          iVar8 = (int)((float)pfVar30 * fVar24 + fVar24);
          local_268 = (float *)(iVar6 / iVar8);
          if (((local_235 <= uVar4) || (iVar6 % iVar8 != 0)) || ((int)local_280 <= (int)local_268))
          goto LAB_004654b0;
          pfVar29 = DAT_00baa528;
          if ((*(int *)((int)local_248 + 0xc64) == 0x12) ||
             (pfVar29 = DAT_00baa2d0, local_228 = pfVar20, *(int *)((int)local_248 + 0xc64) == 0x13)
             ) {
            local_228 = pfVar29;
          }
          local_22c = (float *)0x10b;
          FUN_00956780();
          FUN_0092dc30(local_22c,0x3f000000,2,0,local_228,0);
          local_228 = DAT_00baa454;
          pfVar20 = DAT_00baa528;
          if ((*(int *)((int)param_1 + 0xc64) == 0x12) ||
             (pfVar20 = DAT_00baa2d0, *(int *)((int)param_1 + 0xc64) == 0x13)) {
            local_228 = pfVar20;
          }
          local_22c = (float *)0xb2;
          FUN_00956780();
          FUN_0092dc30(local_22c,0x3f800000,2,0,local_228,0);
          if (*(int *)((int)param_1 + 0x2c) != 0) {
            uVar4 = (int)(float)*(float **)((int)param_1 + 0xbb0) & 0x80000003;
            if ((int)uVar4 < 0) {
              uVar4 = (uVar4 - 1 | 0xfffffffc) + 1;
            }
            iVar6 = uVar4 + 6;
            local_25c = (float *)(DAT_00baa7a8 / (float)iVar6);
            pfVar20 = *(float **)((int)param_1 + 0xbb0);
            if (0 < iVar6) {
              do {
                local_22c = (float *)((float)pfVar20 + (float)local_25c);
                pfVar20 = local_22c;
                FUN_0041d520();
                local_230 = (float *)((float)pfVar20 * (float)DAT_00baa7b8);
                pfVar20 = local_22c;
                FUN_0041d540();
                local_27c = (float)pfVar20 * (float)DAT_00baa7b8;
                local_178[0] = 1;
                local_164 = 0x3f800000;
                local_278 = local_230;
                local_174 = _DAT_00babf20;
                uStack_170 = _UNK_00babf24;
                uStack_16c = _UNK_00babf28;
                uStack_168 = _UNK_00babf2c;
                iVar8 = FUN_006eef60();
                local_160 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa708;
                local_15c = _DAT_00bac820;
                uStack_158 = _UNK_00bac824;
                uStack_154 = _UNK_00bac828;
                uStack_150 = _UNK_00bac82c;
                FUN_00407170();
                iVar8 = *(int *)((int)param_1 + 0x2c);
                local_120 = 0;
                local_114 = DAT_00c7b644;
                local_10c = DAT_00c7b644;
                local_104 = DAT_00c7b644;
                local_118 = DAT_00c7b640;
                local_110 = DAT_00c7b640;
                local_108 = DAT_00c7b640;
                local_100 = 0xc47a0000;
                local_fc = 0;
                local_f8 = 0;
                local_f0 = 0;
                local_ec = 0x1e;
                local_e8 = 0;
                local_e4 = 0;
                local_e0 = 0;
                local_dc = &DAT_bf800000;
                local_d8 = 0;
                local_d4 = 0;
                if (iVar8 == 1) {
                  uStack_16c = 0xbd4ccccd;
LAB_004652ce:
                  uStack_170 = 0xbdcccccd;
                }
                else if (iVar8 == 2) {
                  uStack_16c = 0xbe19999a;
                  goto LAB_004652ce;
                }
                fVar26 = *(float *)((int)param_1 + 900) * DAT_00baa3e0;
                if (*(float *)((int)param_1 + 0x380) <= fVar26 &&
                    fVar26 != *(float *)((int)param_1 + 0x380)) {
                  local_120 = 0x80000;
                  if (iVar8 == 1) {
                    uStack_158 = 0x3be56042;
                  }
                  else if (iVar8 == 2) {
                    uStack_158 = 0x3b656042;
                  }
                }
                if ((*(int *)((int)param_1 + 0xbc0) < 3) && (uVar4 = FUN_006eef60(), uVar4 % 5 == 0)
                   ) {
                  local_120 = local_120 | 1;
                  local_164 = 0x3fc00000;
                }
                else {
                  local_e4 = 4;
                }
                local_28c = *(float *)((int)param_1 + 0x33c) + DAT_00ba9fe4;
                local_288 = (float *)(*(float *)((int)param_1 + 0x340) + DAT_00baa87c);
                FUN_006cb2e0(&local_28c,&local_27c,0,local_178);
                iVar6 = iVar6 + -1;
                pfVar20 = local_22c;
              } while (iVar6 != 0);
            }
            goto LAB_004653d0;
          }
          local_244 = DAT_00baa81c;
          local_234 = DAT_00baa7b8;
          AI_0043ef30();
          local_b8 = *(float *)((int)param_1 + 0xbb0);
          local_3c = 4;
          local_c8 = 0xbdcccccd;
          local_c4 = 0xbd75c28f;
          local_b0 = 0x3b03126f;
          local_240 = local_234;
          switch(*(int *)((int)param_1 + 0xbc0) % 5) {
          case 0:
            local_78 = 0x40000;
            goto LAB_00464fb2;
          case 1:
            local_78 = 0x80000;
LAB_00464fb2:
            local_74 = 0;
            break;
          case 3:
            local_244 = DAT_00baa7e8;
            if (((uint)local_268 & 1) == 0) {
              local_b8 = local_b8 + DAT_00baa278;
            }
            break;
          case 4:
            local_244 = DAT_00baa7e8;
            local_78 = local_78 | 0x42000;
            local_b0 = 0x3c1374bc;
            local_240 = DAT_00baa834;
          }
          local_23c = local_244;
          FUN_006cb2e0((int)param_1 + 0x33c,&local_240,9,local_d0);
          iVar6 = *(int *)((int)param_1 + 0xbc0) % 5;
          if (iVar6 < 2) {
            if (iVar6 == 0) {
              local_78 = 0x80000;
LAB_004650a5:
              local_74 = 0;
            }
            else if (iVar6 == 1) {
              local_78 = 0x40000;
              goto LAB_004650a5;
            }
            local_b0 = 0x3c75c28f;
            local_c4 = 0x3e19999a;
            local_258 = 0x41300000;
            local_254[0] = local_244;
            FUN_006cb2e0((int)param_1 + 0x33c,&local_258,9,local_d0);
          }
LAB_004653d0:
          if ((*(char *)((int)param_1 + 0xbc4) == '\0') &&
             (cVar2 = FUN_0040a5d0("1Attack",1), cVar2 != '\0')) {
            FUN_0040a1b0();
            *(undefined *)((int)param_1 + 0x8c) = 1;
          }
          fVar24 = DAT_00baa6fc;
          pfVar20 = DAT_00baa454;
          pfVar29 = DAT_00baa784;
          if ((1 < *(byte *)((int)param_1 + 0xbc4)) && (local_280 == (float *)((int)local_268 + 1)))
          {
            ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
            if (ppbVar11 != (byte **)0x0) {
              ppbVar10 = ppbVar11;
              if (&DAT_0000000f < ppbVar11[5]) {
                ppbVar10 = (byte **)*ppbVar11;
              }
              pcVar17 = "3FBAttack4End";
              do {
                bVar18 = *(byte *)ppbVar10;
                bVar23 = bVar18 < (byte)*pcVar17;
                if (bVar18 != *pcVar17) {
LAB_00465451:
                  uVar4 = -(uint)bVar23 | 1;
                  goto LAB_00465456;
                }
                if (bVar18 == 0) break;
                bVar18 = *(byte *)((int)ppbVar10 + 1);
                bVar23 = bVar18 < ((byte *)pcVar17)[1];
                if (bVar18 != ((byte *)pcVar17)[1]) goto LAB_00465451;
                ppbVar10 = (byte **)((int)ppbVar10 + 2);
                pcVar17 = (char *)((byte *)pcVar17 + 2);
              } while (bVar18 != 0);
              uVar4 = 0;
LAB_00465456:
              if ((uVar4 == 0) &&
                 ((*(byte *)(ppbVar11 + 0xd) == 0 || (*(char *)((int)param_1 + 0x8c) != '\0'))))
              goto LAB_004654b0;
            }
            cVar2 = FUN_0040a5d0("3FBAttack4End",1);
            fVar24 = DAT_00baa6fc;
            pfVar20 = DAT_00baa454;
            pfVar29 = DAT_00baa784;
            if (cVar2 != '\0') {
              FUN_0040a1b0();
              *(undefined *)((int)param_1 + 0x8c) = 1;
              fVar24 = DAT_00baa6fc;
              pfVar20 = DAT_00baa454;
              pfVar29 = DAT_00baa784;
            }
          }
LAB_004654b0:
          *(char *)((int)param_1 + 0xbc6) = *(char *)((int)param_1 + 0xbc6) + '\x01';
          local_264 = (float *)((int)local_264 + -1);
          local_235 = *(byte *)((int)param_1 + 0xbc6);
          fVar26 = param_1;
        } while (local_264 != (float *)0x0);
      }
    }
    else {
      if (1 < bVar18) {
        if (*(char *)((int)param_1 + 0xbc6) == '\0') {
          ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
          if (ppbVar11 != (byte **)0x0) {
            ppbVar10 = ppbVar11;
            if (&DAT_0000000f < ppbVar11[5]) {
              ppbVar10 = (byte **)*ppbVar11;
            }
            pcVar17 = "3FBAttack4Start";
            do {
              bVar18 = *(byte *)ppbVar10;
              bVar23 = bVar18 < (byte)*pcVar17;
              if (bVar18 != *pcVar17) {
LAB_00464ae0:
                uVar4 = -(uint)bVar23 | 1;
                goto LAB_00464ae5;
              }
              if (bVar18 == 0) break;
              bVar18 = *(byte *)((int)ppbVar10 + 1);
              bVar23 = bVar18 < ((byte *)pcVar17)[1];
              if (bVar18 != ((byte *)pcVar17)[1]) goto LAB_00464ae0;
              ppbVar10 = (byte **)((int)ppbVar10 + 2);
              pcVar17 = (char *)((byte *)pcVar17 + 2);
            } while (bVar18 != 0);
            uVar4 = 0;
LAB_00464ae5:
            if ((uVar4 == 0) &&
               ((*(byte *)(ppbVar11 + 0xd) == 0 || (*(char *)((int)param_1 + 0x8c) != '\0'))))
            goto LAB_00464b1c;
          }
          cVar2 = FUN_0040a5d0("3FBAttack4Start",1);
          if (cVar2 != '\0') {
            FUN_0040a1b0();
            *(undefined *)((int)param_1 + 0x8c) = 1;
          }
        }
LAB_00464b1c:
        if (*(int *)((int)param_1 + 0x7c) != 0) {
          if (*(char *)((int)param_1 + 0x8c) == '\0') {
LAB_00464bd6:
            puVar15 = *(undefined4 **)((int)param_1 + 0x7c);
            if (puVar15 == (undefined4 *)0x0) {
              puVar15 = (undefined4 *)&DAT_00b1a4ec;
            }
            else if (&DAT_0000000f < (undefined *)puVar15[5]) {
              puVar15 = (undefined4 *)*puVar15;
            }
            pcVar17 = "3FBAttack4Start";
            do {
              bVar18 = *(byte *)puVar15;
              bVar23 = bVar18 < (byte)*pcVar17;
              if (bVar18 != *pcVar17) {
LAB_00464c11:
                uVar4 = -(uint)bVar23 | 1;
                goto LAB_00464c16;
              }
              if (bVar18 == 0) break;
              bVar18 = *(byte *)((int)puVar15 + 1);
              bVar23 = bVar18 < ((byte *)pcVar17)[1];
              if (bVar18 != ((byte *)pcVar17)[1]) goto LAB_00464c11;
              puVar15 = (undefined4 *)((int)puVar15 + 2);
              pcVar17 = (char *)((byte *)pcVar17 + 2);
            } while (bVar18 != 0);
            uVar4 = 0;
LAB_00464c16:
            if (uVar4 == 0) {
              ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
              if (ppbVar11 != (byte **)0x0) {
                ppbVar10 = ppbVar11;
                if (&DAT_0000000f < ppbVar11[5]) {
                  ppbVar10 = (byte **)*ppbVar11;
                }
                pcVar17 = "3FBAttack4Loop";
                do {
                  bVar18 = *(byte *)ppbVar10;
                  bVar23 = bVar18 < (byte)*pcVar17;
                  if (bVar18 != *pcVar17) {
LAB_00464c54:
                    uVar4 = -(uint)bVar23 | 1;
                    goto LAB_00464c59;
                  }
                  if (bVar18 == 0) break;
                  bVar18 = *(byte *)((int)ppbVar10 + 1);
                  bVar23 = bVar18 < ((byte *)pcVar17)[1];
                  if (bVar18 != ((byte *)pcVar17)[1]) goto LAB_00464c54;
                  ppbVar10 = (byte **)((int)ppbVar10 + 2);
                  pcVar17 = (char *)((byte *)pcVar17 + 2);
                } while (bVar18 != 0);
                uVar4 = 0;
LAB_00464c59:
                if (uVar4 == 0) {
                  if ((*(byte *)(ppbVar11 + 0xd) != 0) && (*(char *)((int)param_1 + 0x8c) == '\0'))
                  {
                    pcVar17 = "3FBAttack4Loop";
                    goto LAB_00464ce8;
                  }
                  goto LAB_00464cff;
                }
              }
              pcVar17 = "3FBAttack4Loop";
              goto LAB_00464ce8;
            }
          }
          else {
            ppbVar11 = *(byte ***)((int)param_1 + 0x7c);
            if (&DAT_0000000f < ppbVar11[5]) {
              ppbVar11 = (byte **)*ppbVar11;
            }
            pcVar17 = "3FBAttack4Start";
            do {
              bVar18 = *(byte *)ppbVar11;
              bVar23 = bVar18 < (byte)*pcVar17;
              if (bVar18 != *pcVar17) {
LAB_00464b63:
                uVar4 = -(uint)bVar23 | 1;
                goto LAB_00464b68;
              }
              if (bVar18 == 0) break;
              bVar18 = *(byte *)((int)ppbVar11 + 1);
              bVar23 = bVar18 < ((byte *)pcVar17)[1];
              if (bVar18 != ((byte *)pcVar17)[1]) goto LAB_00464b63;
              ppbVar11 = (byte **)((int)ppbVar11 + 2);
              pcVar17 = (char *)((byte *)pcVar17 + 2);
            } while (bVar18 != 0);
            uVar4 = 0;
LAB_00464b68:
            if (uVar4 == 0) {
              if ((*(float *)((int)param_1 + 0x88) -
                   *(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x14c) <
                   DAT_00baa860) && (DAT_00baa860 <= *(float *)((int)param_1 + 0x88))) {
                FUN_006d6ba0(0x81,0x3f800000,2,0,0x3f800000);
              }
            }
            else if (*(char *)((int)param_1 + 0x8c) == '\0') goto LAB_00464bd6;
          }
          goto LAB_00464cff;
        }
        goto LAB_00464d4d;
      }
      if (bVar18 == 1) {
        FUN_0040a380("2Attack",0);
        fVar26 = DAT_00baad50;
        if (*(int *)((int)param_1 + 0x7c) != 0) {
          fVar26 = *(float *)((int)param_1 + 0x88);
        }
        if (((fVar26 - *(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x14c) <
              (float)DAT_00baa7a4) && (*(int *)((int)param_1 + 0x7c) != 0)) &&
           ((float)DAT_00baa7a4 <= *(float *)((int)param_1 + 0x88))) {
          FUN_006d6ba0(0x10c,0x3f800000,2,0,0x3f800000);
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          AI_0043ef30();
          local_b8 = *(float *)((int)param_1 + 0xbb0);
          iVar6 = *(int *)((int)param_1 + 0xbc0);
          local_bc = 0x3fc00000;
          if (*(int *)((int)param_1 + 0x2c) == 0) {
            local_3c = 4;
            if (iVar6 == 0) {
              local_78 = local_78 | 0x10000;
              local_240 = (float *)0x40e00000;
LAB_00464a11:
              local_23c = (float *)0x40800000;
            }
            else {
              if (iVar6 != 1) goto LAB_004654d5;
              local_240 = (float *)0x41200000;
              local_23c = (float *)0x41000000;
            }
LAB_00464a21:
            FUN_006cb2e0((int)param_1 + 0x33c,&local_240,9,local_d0);
          }
          else {
            if (iVar6 == 0) {
              local_78 = local_78 | 1;
              local_240 = (float *)0x41200000;
              goto LAB_00464a11;
            }
            if (iVar6 == 1) {
              local_78 = local_78 | 1;
              local_240 = (float *)0x41000000;
              local_23c = (float *)0x41000000;
              goto LAB_00464a21;
            }
          }
        }
      }
    }
LAB_004654d5:
    if (((*(byte *)((int)param_1 + 0xbc4) < 2) &&
        ((*(int *)((int)param_1 + 0x7c) == 0 || (*(char *)((int)param_1 + 0x8c) == '\0')))) ||
       (local_221 != 0)) {
      *(undefined4 *)((int)param_1 + 0xb64) = 3;
      uVar4 = FUN_006eef60();
      bVar18 = (char)((ulonglong)uVar4 % 0x5a) + 0xf;
      *(byte *)((int)param_1 + 0xbc6) = bVar18;
      if (*(int *)((int)param_1 + 0x2c) == 2) {
        *(byte *)((int)param_1 + 0xbc6) = bVar18 / 3;
      }
    }
  }
  else if (iVar6 == 9) {
    if (*(byte *)((int)param_1 + 0xbc4) < 2) goto LAB_0046646a;
    iVar6 = *(int *)((int)param_1 + 0xbc0);
    if (iVar6 != 0) {
      if (iVar6 != 1) {
        local_298 = 0.0;
        local_268 = (float *)0x0;
        local_280 = (float *)0x0;
        local_244 = (float *)0x0;
        local_234 = (float *)0x0;
        local_24c = 0.0;
        local_248 = 0.0;
        local_230 = (float *)0x0;
        if (0 < (int)local_264) {
          do {
            if (999 < iVar6) {
              if (iVar6 < 2000) {
                local_298 = (float)(iVar6 + -1000);
                local_280 = (float *)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) +
                                     (float)DAT_00baa81c);
                fVar26 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18);
                local_248 = DAT_00baae3c;
                local_234 = DAT_00baa98c;
              }
              else {
                if (2999 < iVar6) goto LAB_00465a75;
                local_298 = (float)(iVar6 + -2000);
                fVar26 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18);
                local_280 = (float *)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) -
                                     (float)DAT_00baa81c);
                local_248 = DAT_00baa950;
                local_234 = DAT_00baae48;
              }
              local_268 = (float *)(fVar26 + (float)DAT_00baa81c);
              local_24c = DAT_00baa950;
              local_244 = (float *)0x0;
            }
LAB_00465a75:
            pfVar20 = (float *)FUN_0067f0d0();
            iVar6 = *(int *)((int)param_1 + 0xba4);
            FUN_007e90f0();
            fVar26 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                     DAT_00ba9ff0;
            local_234 = (float *)((float)local_234 + fVar26 * *pfVar20 * DAT_00baa87c);
            local_244 = (float *)((float)local_244 + fVar26 * pfVar20[1] * DAT_00baa87c);
            uVar4 = (uint)local_298 & 0x80000007;
            bVar23 = uVar4 == 0;
            if ((int)uVar4 < 0) {
              bVar23 = (uVar4 - 1 | 0xfffffff8) == 0xffffffff;
            }
            if (bVar23) {
              local_235 = 1;
              local_22c = (float *)local_248;
              iVar6 = (int)(((int)local_298 >> 0x1f & 7U) + (int)local_298) >> 3;
              local_228 = (float *)(((float)(uint)*(byte *)((int)param_1 + 0xbc5) / DAT_00baaae4) *
                                   (float)iVar6);
              local_25c = (float *)local_24c;
              fVar26 = local_24c * local_24c + local_248 * local_248;
              FUN_00435a50();
              if (DAT_00ba9fe4 < fVar26) {
                local_25c = (float *)(((float)DAT_00baa454 / fVar26) * local_24c);
                local_22c = (float *)(((float)DAT_00baa454 / fVar26) * local_248);
              }
              fVar26 = (float)local_228 * (float)local_22c;
              local_228 = (float *)((float)local_228 * (float)local_25c * (float)DAT_00baa98c);
              local_22c = (float *)(fVar26 * (float)DAT_00baa98c);
              fVar26 = DAT_00baa630;
              FUN_00435a50();
              local_22c = (float *)((float)local_22c * fVar26);
              auVar28 = ZEXT416(local_22c);
              pfVar20 = (float *)((float)local_228 * fVar26);
              local_228 = pfVar20;
              local_288 = (float *)FUN_00694fb0(1000,0x13,0);
              fVar26 = (float)iVar6;
              local_25c = (float *)0xfffffff6;
              local_278 = (float *)((float)local_234 * fVar26 + (float)local_280);
              local_254[0] = (float *)((float)local_244 * fVar26 + (float)local_268);
              do {
                local_240 = (float *)(auVar28._0_4_ +
                                     local_248 * (float)(int)local_25c + (float)local_278);
                local_23c = (float *)((float)pfVar20 +
                                     local_24c * (float)(int)local_25c + (float)local_254[0]);
                cVar2 = FUN_00813360(&local_240,0x41200000);
                if (cVar2 != '\0') {
                  local_235 = 0;
                  uVar21 = FUN_006eef60();
                  FUN_00428b20(1000,0x13,&local_240,&DAT_00c7b640,param_1,2,uVar21);
                  FUN_006ac2a0(0x41200000,local_288[0xf],local_288[0x10],local_288[0x12]);
                }
                local_25c = (float *)((int)local_25c + 1);
                auVar28 = ZEXT416(local_22c);
                pfVar20 = local_228;
              } while ((int)local_25c < 10);
              if (local_235 != 0) goto LAB_00465fd1;
            }
            if (*(int *)((int)param_1 + 0xbc0) < 1000) break;
            iVar6 = *(int *)((int)param_1 + 0xbc0) + 1;
            local_230 = (float *)((int)local_230 + 1);
            *(int *)((int)param_1 + 0xbc0) = iVar6;
          } while ((int)local_230 < (int)local_264);
        }
        goto LAB_0046646a;
      }
      FUN_0040a380("3Appear",0);
      iVar6 = *(int *)((int)param_1 + 0x7c);
      fVar26 = DAT_00baad50;
      if (iVar6 != 0) {
        fVar26 = *(float *)((int)param_1 + 0x88);
      }
      if (0.0 <= fVar26 - *(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x14c)) {
LAB_004658ff:
        if ((iVar6 != 0) && (*(char *)((int)param_1 + 0x8c) != '\0')) goto LAB_0046646a;
      }
      else if (iVar6 != 0) {
        if (0.0 <= *(float *)((int)param_1 + 0x88)) {
          *(undefined *)((int)param_1 + 0x171) = 1;
          *(undefined4 *)((int)param_1 + 0x188) = 4;
          local_228 = (float *)0x0;
          do {
            iVar8 = FUN_006eef60();
            iVar6 = *(int *)(DAT_00c71678 + 0x18300);
            local_230 = (float *)((*(float *)(iVar6 + 0x20) - *(float *)(iVar6 + 0x18)) *
                                  (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)])
                                  * DAT_00ba9ff4 + *(float *)(iVar6 + 0x18));
            iVar19 = FUN_006eef60();
            iVar8 = DAT_00c71678;
            ppiVar22 = (int **)(DAT_00c71678 + 0x1baa8);
            local_24c = 0.0;
            iVar6 = *(int *)(DAT_00c71678 + 0x18300);
            fVar26 = *(float *)(iVar6 + 0x1c);
            fVar24 = *(float *)(iVar6 + 0x14);
            fVar27 = (float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) *
                     DAT_00ba9ff4;
            fVar25 = *(float *)(iVar6 + 0x14);
            *(float **)((int)param_1 + 0x340) = local_230;
            *(float *)((int)param_1 + 0x33c) = (fVar26 - fVar24) * fVar27 + fVar25;
            if (*(int *)(iVar8 + 0x1baac) - (int)*ppiVar22 >> 2 == 0) {
LAB_00465853:
              pfVar20 = (float *)((int)local_228 + 1);
              break;
            }
            while( true ) {
              piVar9 = ppiVar22[1];
              if ((int)piVar9 - (int)*ppiVar22 >> 2 == 0) {
                FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
                piVar9 = ppiVar22[1];
              }
              piVar12 = *ppiVar22;
              if ((uint)local_24c < (uint)((int)piVar9 - (int)piVar12 >> 2)) {
                piVar12 = piVar12 + (int)local_24c;
              }
              fVar26 = *(float *)(*piVar12 + 0x340) - *(float *)((int)param_1 + 0x340);
              fVar24 = *(float *)(*piVar12 + 0x33c) - *(float *)((int)param_1 + 0x33c);
              fVar26 = fVar26 * fVar26 + fVar24 * fVar24;
              FUN_00435a50();
              if (fVar26 < DAT_00baa9d0) break;
              ppiVar22 = (int **)(DAT_00c71678 + 0x1baa8);
              local_24c = (float)((int)local_24c + 1);
              if ((uint)(*(int *)(DAT_00c71678 + 0x1baac) - (int)*ppiVar22 >> 2) <= (uint)local_24c)
              goto LAB_00465853;
            }
            pfVar20 = (float *)((int)local_228 + 1);
            local_228 = pfVar20;
          } while ((int)pfVar20 < 0x14);
          FUN_00a112c0(1,"Isaac teleport: %d tries\n",pfVar20);
          pfVar20 = DAT_00baa528;
          if ((*(int *)((int)param_1 + 0xc64) == 0x12) ||
             (pfVar20 = DAT_00baa2d0, *(int *)((int)param_1 + 0xc64) == 0x13)) {
            local_244 = pfVar20;
          }
          local_22c = (float *)0xd6;
          FUN_00956780();
          FUN_0092dc30(local_22c,0x3f800000,2,0,local_244,0);
          iVar6 = *(int *)((int)param_1 + 0x7c);
        }
        goto LAB_004658ff;
      }
      *(undefined4 *)((int)param_1 + 0xbc0) = 0x1b;
      *(undefined4 *)((int)param_1 + 0xb64) = 8;
      *(undefined *)((int)param_1 + 0xbc6) = 0;
      goto LAB_0046646a;
    }
    FUN_0040a380("3FBAttack3",0);
    iVar6 = *(int *)((int)param_1 + 0x7c);
    fVar26 = DAT_00baad50;
    if (iVar6 != 0) {
      fVar26 = *(float *)((int)param_1 + 0x88);
    }
    if (DAT_00baa870 <= fVar26 - *(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x14c)
       ) {
LAB_004655d7:
      if ((iVar6 != 0) && (*(char *)((int)param_1 + 0x8c) != '\0')) goto LAB_0046646a;
    }
    else if (iVar6 != 0) {
      if (DAT_00baa870 <= *(float *)((int)param_1 + 0x88)) {
        FUN_006d6ba0(0xd7,0x3f800000,2,0,0x3f800000);
        iVar6 = *(int *)((int)param_1 + 0x7c);
      }
      goto LAB_004655d7;
    }
    uVar4 = FUN_006eef60();
    *(uint *)((int)param_1 + 0xbc0) = ((uVar4 & 1) + 1) * 1000;
    uVar3 = FUN_006eef60();
    *(undefined *)((int)param_1 + 0xbc5) = uVar3;
    uVar21 = FUN_006eef60();
    *(undefined4 *)((int)param_1 + 0xba4) = uVar21;
    *(undefined *)((int)param_1 + 0x171) = 0;
    *(undefined4 *)((int)param_1 + 0x188) = 0;
    *(undefined4 *)((int)param_1 + 0x33c) = DAT_00c7b640;
    *(undefined4 *)((int)param_1 + 0x340) = DAT_00c7b644;
    *(undefined4 *)((int)param_1 + 0x360) = DAT_00c7b640;
    *(undefined4 *)((int)param_1 + 0x364) = DAT_00c7b644;
  }
  else if (iVar6 == 0x10) {
    if (*(byte *)((int)param_1 + 0xbc4) == 1) {
      FUN_0040a380("1StandUp",0);
      fVar26 = DAT_00baad50;
      if (*(int *)((int)param_1 + 0x7c) != 0) {
        fVar26 = *(float *)((int)param_1 + 0x88);
      }
      if (((fVar26 - *(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x14c) <
            DAT_00baa87c) && (*(int *)((int)param_1 + 0x7c) != 0)) &&
         (DAT_00baa87c <= *(float *)((int)param_1 + 0x88))) {
        uVar21 = 0x36;
LAB_00465f0a:
        FUN_006d6ba0(uVar21,0x3f800000,2,0,0x3f800000);
      }
    }
    else if (1 < *(byte *)((int)param_1 + 0xbc4)) {
      FUN_0040a380("2Evolve",0);
      fVar26 = DAT_00baad50;
      if (*(int *)((int)param_1 + 0x7c) != 0) {
        fVar26 = *(float *)((int)param_1 + 0x88);
      }
      if (((fVar26 - *(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x14c) <
            DAT_00baa860) && (*(int *)((int)param_1 + 0x7c) != 0)) &&
         (DAT_00baa860 <= *(float *)((int)param_1 + 0x88))) {
        uVar21 = 0x10a;
        goto LAB_00465f0a;
      }
    }
    if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
LAB_00466460:
      *(undefined4 *)((int)param_1 + 0xb64) = 3;
    }
  }
  else if (iVar6 == 6) {
    if (*(int *)((int)param_1 + 0xbc0) == 0) {
      FUN_0040a380("3FBAttack3",0);
      iVar6 = *(int *)((int)param_1 + 0x7c);
      fVar26 = DAT_00baad50;
      if (iVar6 != 0) {
        fVar26 = *(float *)((int)param_1 + 0x88);
      }
      if (DAT_00baa870 <=
          fVar26 - *(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0x14c)) {
LAB_00465fc0:
        if ((iVar6 != 0) && (*(char *)((int)param_1 + 0x8c) != '\0')) goto LAB_0046646a;
      }
      else if (iVar6 != 0) {
        if (DAT_00baa870 <= *(float *)((int)param_1 + 0x88)) {
          FUN_006d6ba0(0xd7,0x3f800000,2,0,0x3f800000);
          iVar6 = *(int *)((int)param_1 + 0x7c);
        }
        goto LAB_00465fc0;
      }
LAB_00465fd1:
      *(undefined4 *)((int)param_1 + 0xbc0) = 1;
    }
    else if (*(int *)((int)param_1 + 0xbc0) == 1) {
      FUN_0040a380("3Appear",0);
      cVar2 = FUN_00456880();
      if (cVar2 != '\0') {
        ppfVar14 = (float **)((int)param_1 + 0xbb4);
        local_254[0] = (float *)0x43170000;
        ppfVar13 = local_254;
        if (DAT_00baaa48 < (float)*ppfVar14 || DAT_00baaa48 == (float)*ppfVar14) {
          ppfVar13 = ppfVar14;
        }
        local_230 = *ppfVar13;
        iVar6 = FUN_006be840();
        local_240 = *(float **)(iVar6 + 0x360);
        local_23c = *(float **)(iVar6 + 0x364);
        cVar2 = FUN_00a10630(&DAT_00c7b640);
        local_288 = *(float **)((int)param_1 + 0x370);
        if (cVar2 == '\0') {
          iVar6 = FUN_006be840();
          local_254[0] = *(float **)(iVar6 + 0x33c);
          local_278 = *(float **)(iVar6 + 0x340);
          pfVar20 = (float *)FUN_0067f070(local_2b4);
          local_240 = (float *)((float)local_230 * *pfVar20 + (float)local_254[0]);
        }
        else {
          iVar6 = FUN_006be840();
          local_254[0] = *(float **)(iVar6 + 0x33c);
          local_278 = *(float **)(iVar6 + 0x340);
          iVar6 = FUN_006be840();
          local_240 = *(float **)(iVar6 + 0x360);
          local_23c = *(float **)(iVar6 + 0x364);
          pfVar20 = (float *)FUN_00a10030(local_2b4);
          local_240 = (float *)((float)local_230 * *pfVar20 + (float)local_254[0]);
        }
        local_23c = (float *)((float)local_230 * pfVar20[1] + (float)local_278);
        ppfVar14 = (float **)FUN_00436090(local_260,&local_240,local_288);
        pfVar20 = (float *)0x0;
        local_234 = ppfVar14[1];
        local_228 = *ppfVar14;
        local_230 = (float *)0x0;
        iVar6 = FUN_006eef60();
        local_254[0] = (float *)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)])
                                 * DAT_00ba9ff4 * DAT_00baab30);
        do {
          uVar4 = 0;
          if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 == 0) {
LAB_004663f1:
            pfVar20 = (float *)((int)pfVar20 + 1);
            break;
          }
          while (iVar6 = FUN_009b92c0(uVar4), fVar26 = *(float *)(iVar6 + 0x33c) - (float)local_228,
                fVar24 = *(float *)(iVar6 + 0x340) - (float)local_234,
                DAT_00baac48 <= fVar24 * fVar24 + fVar26 * fVar26) {
            uVar4 = uVar4 + 1;
            if ((uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2) <=
                uVar4) goto LAB_004663f1;
          }
          uVar4 = (uint)pfVar20 & 0x80000003;
          if ((int)uVar4 < 0) {
            uVar4 = (uVar4 - 1 | 0xfffffffc) + 1;
          }
          local_22c = (float *)((float)uVar4 * DAT_00baa9b4 + (float)local_254[0]);
          local_278 = (float *)((float)(int)pfVar20 * DAT_00baa924 * DAT_00baa1d4 + DAT_00baaa48);
          local_25c = *(float **)((int)local_248 + 0x370);
          iVar6 = FUN_006be840();
          local_22c = (float *)((float)local_22c * DAT_00baa088);
          pfVar20 = local_22c;
          FUN_0041d520();
          local_288 = pfVar20;
          pfVar20 = local_22c;
          FUN_0041d540();
          local_240 = (float *)((float)pfVar20 * (float)local_278 + *(float *)(iVar6 + 0x33c));
          local_23c = (float *)((float)local_288 * (float)local_278 + *(float *)(iVar6 + 0x340));
          FUN_00812f50(&local_26c,&local_240,local_25c,local_25c,local_25c);
          local_228 = local_26c;
          pfVar20 = (float *)((int)local_230 + 1);
          local_234 = local_268;
          local_230 = pfVar20;
        } while ((int)pfVar20 < 0x14);
        FUN_00a112c0(1,"??? teleport: %d tries\n",pfVar20);
        param_1 = local_248;
        *(float **)((int)local_248 + 0x33c) = local_228;
        *(float **)((int)local_248 + 0x340) = local_234;
        FUN_006d6ba0(0xd6,0x3f800000,2,0,0x3f800000);
      }
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        *(undefined4 *)((int)param_1 + 0xbc0) = 0;
        goto LAB_00466460;
      }
    }
  }
LAB_0046646a:
  iVar6 = DAT_00c71678;
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (*(int *)((int)param_1 + 0x2c) == 2)) {
    local_254[0] = (float *)(*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x18) + DAT_00baa950);
    puVar15 = (undefined4 *)FUN_00812d00(local_29c);
    local_284 = *puVar15;
    local_280 = local_254[0];
    *(undefined4 *)((int)param_1 + 900) = 0;
    *(undefined4 *)(*(int *)(iVar6 + 0x18300) + 0x12d0) = 0;
    FUN_0041a790(local_2c4,(int)param_1 + 0x33c,2);
    uVar4 = 0;
    local_14 = 0;
    if (local_2b8 != 0) {
      do {
        iVar6 = uVar4 * 4;
        uVar4 = uVar4 + 1;
        *(undefined *)(*(int *)(local_2c0 + iVar6) + 0x173) = 1;
      } while (uVar4 < local_2b8);
    }
    uVar21 = FUN_006eef60();
    piVar9 = (int *)FUN_00428b20(0x197,0,&local_284,&DAT_00c7b640,param_1,0,uVar21);
    piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
    piVar9[0x5b] = piVar9[0x5b];
    (**(code **)(*piVar9 + 0xc))();
    FUN_007e1e70(0x1b,0x3da3d70a);
    local_14 = 0xffffffff;
    if (local_2c4[0] == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
    }
  }
  *(undefined4 *)((int)param_1 + 3000) = *(undefined4 *)((int)param_1 + 0x380);
LAB_004665cc:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

