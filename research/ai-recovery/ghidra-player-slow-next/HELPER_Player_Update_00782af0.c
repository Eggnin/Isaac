/* Local J460 decompiler output.
 * VA: 0x00782af0
 * Entry: 00782af0
 * Dispatcher: 0x006c2990
 * Types: 1
 * Identities: 1.*
 * Evidence: Entity_Player vtable 0xB6BDD0 slot +0xC
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=1; identities=1.*; Entity_Player vtable 0xB6BDD0 slot
   +0xC */

void __fastcall HELPER_Player_Update(byte **param_1)

{
  byte *pbVar1;
  byte bVar2;
  code *pcVar3;
  char cVar4;
  undefined uVar5;
  short sVar6;
  uint uVar7;
  undefined4 uVar8;
  int iVar9;
  int iVar10;
  undefined4 *puVar11;
  uint uVar12;
  byte **ppbVar13;
  float *pfVar14;
  int *piVar15;
  byte **ppbVar16;
  undefined (*pauVar17) [16];
  byte *pbVar18;
  int **ppiVar19;
  char *pcVar20;
  int iVar21;
  char *pcVar22;
  bool bVar23;
  float10 fVar24;
  float fVar25;
  ulonglong uVar26;
  undefined in_XMM0 [16];
  undefined auVar27 [16];
  undefined auVar28 [16];
  undefined auVar29 [12];
  float fVar30;
  longlong lVar31;
  undefined8 uVar32;
  undefined in_stack_fffffda0 [16];
  undefined auVar33 [16];
  undefined auVar34 [16];
  undefined auVar35 [16];
  undefined auVar36 [16];
  undefined auVar37 [16];
  undefined auVar38 [16];
  undefined auVar39 [16];
  byte **in_stack_fffffdb8;
  undefined4 *in_stack_fffffdbc;
  undefined4 uVar40;
  TypeDescriptor *pTVar41;
  TypeDescriptor *pTVar42;
  undefined4 uVar43;
  undefined *puVar44;
  undefined4 uVar45;
  uint *puVar46;
  undefined local_228 [24];
  undefined local_210 [88];
  undefined local_1b8 [12];
  undefined local_1ac [20];
  undefined local_198 [8];
  undefined local_190 [4];
  byte **local_18c;
  byte **local_188;
  byte **local_184;
  byte **local_180;
  undefined local_17c [8];
  byte **local_174;
  byte **local_170;
  byte **local_16c;
  byte **local_168;
  undefined local_164 [4];
  byte **local_160;
  char *local_15c;
  undefined local_158 [4];
  byte **local_154;
  undefined local_150 [4];
  byte **local_14c;
  char *local_148;
  undefined local_144 [4];
  byte **local_140;
  undefined local_13c [4];
  byte **local_138;
  byte **local_134;
  byte **local_130;
  char local_12a;
  char local_129;
  undefined local_128 [3];
  char cStack_125;
  char local_122;
  char local_121;
  byte **local_120 [12];
  undefined local_f0 [88];
  byte *local_98 [11];
  undefined4 local_6c;
  undefined local_68 [8];
  undefined4 local_60;
  uint local_5c [4];
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined local_24 [16];
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00aff534;
  local_10 = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_154 = (byte **)0x0;
  local_15c = (char *)0x0;
  local_134 = param_1;
  local_14 = uVar7;
  if (((param_1[0xef] != (byte *)0x0) && (param_1[0xb] == (byte *)0x0)) &&
     (param_1[0x835] == (byte *)0x0)) {
    uVar8 = FUN_009a8500(&local_16c,param_1);
    local_8 = 0;
    FUN_007dd3d0(uVar8);
    local_8 = 0xffffffff;
    FUN_007dc660();
  }
  if (param_1[0x835] != (byte *)0x0) {
    FUN_00842230(uVar7);
  }
  FUN_004303e0();
  fVar25 = in_XMM0._0_4_;
  pbVar18 = param_1[0x7a0];
  if (pbVar18 != (byte *)0x0) {
    FUN_007d4340();
    *(float *)(pbVar18 + 0x478) = fVar25 * DAT_00baa4b0;
    pbVar18 = param_1[0x7a0];
    *(undefined4 *)(pbVar18 + 0x34c) = 0;
    *(undefined4 *)(pbVar18 + 0x350) = 0xc1700000;
    ppbVar16 = DAT_00baa2d0;
    if (((uint)param_1[0x5a] & 0x4000) == 0) {
      ppbVar16 = (byte **)0x0;
    }
    fVar25 = (float)((*(int *)(DAT_00c71678 + 0x264f8) - (int)param_1[0xca]) % 0x168) +
             (float)ppbVar16;
    in_XMM0 = ZEXT416((uint)fVar25);
    *(float *)(param_1[0x7a0] + 0xec) = fVar25;
  }
  pbVar18 = in_XMM0._0_4_;
  if ((param_1[0x4f0] == (byte *)0x1d) || (param_1[0x4f0] == (byte *)0x26)) {
    if (((param_1[0x79b] == (byte *)0x0) || (param_1[0x79b][0x170] != 0)) ||
       ((cVar4 = HELPER_Player_HasCollectible(0x26b,0), cVar4 == '\0' &&
        (cVar4 = HELPER_Player_HasCollectible(0x26b,0), cVar4 == '\0')))) {
      iVar9 = FUN_0040c3a0();
      pbVar18 = in_XMM0._0_4_;
      if (iVar9 != 0) {
        cVar4 = HELPER_Player_HasCollectible(0x26b,0);
        pbVar18 = in_XMM0._0_4_;
        if (cVar4 == '\0') {
          FUN_0040c3a0();
          cVar4 = HELPER_Player_HasCollectible(0x26b,0);
          pbVar18 = in_XMM0._0_4_;
          if (cVar4 == '\0') {
            cVar4 = FUN_007db700();
            pbVar18 = in_XMM0._0_4_;
            if (cVar4 == '\0') {
              pbVar18 = (byte *)FUN_0040c3a0();
              param_1[0x79b] = pbVar18;
              iVar9 = FUN_0040c3a0();
              uVar8 = 0;
              *(byte ***)(iVar9 + 0x1e6c) = param_1;
              FUN_0040c3a0(0);
              FUN_004cf1d0(uVar8);
              FUN_004cf1d0(0);
              FUN_007a6680(0);
              FUN_004173a0(0);
              param_1[0x79b][0x172] = 0;
              *(undefined4 *)(param_1[0x79b] + 0x161c) = 0xffffffff;
              FUN_00407480();
              FUN_00428a60();
              AI_0041af60(local_24,3,0xffffffff,0xffffffff,0,0);
              local_8 = 1;
              uVar7 = 0;
              iVar9 = FUN_004176f0();
              pbVar18 = in_XMM0._0_4_;
              auVar29 = in_stack_fffffda0._0_12_;
              if (iVar9 != 0) {
                do {
                  puVar11 = (undefined4 *)FUN_00417620(uVar7);
                  local_120[0] = (byte **)*puVar11;
                  pbVar18 = (byte *)FUN_004361f0();
                  if (pbVar18 == param_1[0x79b]) {
                    (**(code **)(*local_120[0] + 0x28))();
                  }
                  uVar7 = uVar7 + 1;
                  uVar12 = FUN_004176f0();
                  pbVar18 = in_XMM0._0_4_;
                  auVar29 = in_stack_fffffda0._0_12_;
                } while (uVar7 < uVar12);
              }
              uVar8 = FUN_006eef60();
              in_stack_fffffdb8 = (byte **)HELPER_Entity_Position(&local_16c);
              in_stack_fffffdbc = &DAT_00c7b640;
              in_stack_fffffda0._12_4_ = 0x78301e;
              in_stack_fffffda0._0_12_ = auVar29;
              HELPER_Entity_SpawnRelay(1000,0xf,in_stack_fffffdb8,&DAT_00c7b640,0,0,uVar8);
              FUN_00417860();
              FUN_009b9fc0(param_1[0x79b]);
              local_8 = 0xffffffff;
              FUN_004175b0();
            }
          }
        }
      }
    }
    else {
      local_14c = param_1 + 0x79a;
      FUN_004cf1d0(param_1[0x79b]);
      FUN_004cf1d0(param_1);
      *(undefined4 *)(param_1[0x79b] + 0x1e6c) = 0;
      local_120[0] = (byte **)param_1[0x586];
      param_1[0x79b] = (byte *)0x0;
      iVar9 = FUN_0040c3a0();
      if (*(char *)(iVar9 + 0x20e8) != '\0') {
        FUN_0040c3a0();
        iVar9 = FUN_0040c3a0();
        FUN_007ae4b0(iVar9 + 0x20ec);
        FUN_0040c3a0();
        iVar9 = FUN_0040c3a0();
        FUN_007b0070(iVar9 + 0x20ec);
        iVar9 = FUN_0040c3a0();
        *(undefined *)(iVar9 + 0x20e8) = 0;
      }
      FUN_007a6450(local_120[0],1);
      iVar9 = FUN_0040c3a0();
      if (*(char *)(iVar9 + 0x1824) == '\0') {
        FUN_0040c3a0();
        FUN_007bc740();
      }
      iVar9 = FUN_0040c3a0();
      *(undefined *)(iVar9 + 0x172) = 1;
      FUN_0040c3a0();
      param_1 = local_134;
      uVar8 = FUN_0067f070(&local_16c);
      local_120[0] = (byte **)0x41700000;
      uVar8 = FUN_004171d0(uVar8);
      uVar8 = FUN_00a10420(local_17c,uVar8);
      FUN_004288f0(uVar8);
      FUN_0040c3a0();
      FUN_00428910(param_1 + 0xd8);
      FUN_00417860();
      uVar8 = FUN_0040c3a0();
      FUN_009b9f60(uVar8);
      uVar43 = 0xffffffff;
      uVar8 = FUN_0040c3a0(0xffffffff);
      FUN_007596a0(uVar8,uVar43);
      iVar9 = FUN_0040c3a0();
      auVar27 = ZEXT816(0);
      *(undefined (*) [16])(iVar9 + 0x13f0) = auVar27;
      *(undefined *)(iVar9 + 0x1400) = 0;
      iVar9 = FUN_0040c3a0();
      pbVar18 = auVar27._0_4_;
      *(undefined4 *)(iVar9 + 0x1574) = 0xffff;
      FUN_0040c3a0();
      FUN_00763570();
      iVar9 = FUN_0040c3a0();
      *(undefined *)(iVar9 + 0x410) = 1;
      FUN_0040c3a0();
      FUN_00407f10();
      iVar9 = FUN_0040c3a0();
      *(undefined *)(iVar9 + 0x139a) = 0;
      FUN_0040c3a0();
      FUN_0040a760();
      iVar9 = FUN_0040c3a0();
      *(undefined *)(iVar9 + 0x1398) = 0;
    }
  }
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    if (*(short *)(param_1 + 0x765) != *(short *)((int)param_1 + 0x1d96)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 1);
      *(short *)((int)param_1 + 0x1d96) = *(short *)(param_1 + 0x765);
      FUN_00435fb0();
    }
    cVar4 = FUN_00417390();
    if (cVar4 != '\0') {
      FUN_00420ae0();
      cVar4 = FUN_0082ee30();
      if (cVar4 == '\0') {
        FUN_00428b50();
        cVar4 = FUN_0082ee30();
        if ((cVar4 == '\0') && (*(char *)(param_1 + 0x7f1) != '\0')) {
          FUN_007a4ba0(1);
        }
      }
    }
  }
  cVar4 = FUN_00417390();
  if ((cVar4 == '\0') && (param_1[0xd] == (byte *)0x388)) {
    cVar4 = FUN_00420160();
    if (cVar4 != '\0') {
      HELPER_ANM2_Update();
    }
    goto LAB_0078b272;
  }
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    FUN_00420ae0();
    cVar4 = FUN_0082ee30();
    if (cVar4 == '\0') {
      FUN_00428b50();
      cVar4 = FUN_0082ee30();
      if (cVar4 == '\0') {
        FUN_00407480();
        cVar4 = FUN_00827bb0();
        if (cVar4 != *(char *)(param_1 + 0x80b)) {
          if (cVar4 == '\0') {
            FUN_007d8d20();
          }
          else {
            FUN_007d8980();
          }
        }
      }
    }
  }
  if ((param_1[0xb] == (byte *)0x0) && (cVar4 = HELPER_Effect_PlayerGateA(), cVar4 == '\0')) {
    cVar4 = HELPER_Player_HasTrinket(0x67,0);
    if (cVar4 == '\0') {
LAB_007831dd:
      cVar4 = FUN_00930640(0x67);
      if (cVar4 == '\0') goto LAB_0078320d;
      FUN_009304f0(0x67,1);
    }
    else {
      iVar9 = FUN_0065cf30();
      iVar10 = FUN_00499dd0();
      if (iVar9 != iVar10) goto LAB_007831dd;
      iVar9 = FUN_00499dd0();
      iVar10 = FUN_005b1760();
      if (iVar9 != iVar10) goto LAB_007831dd;
      cVar4 = FUN_00930640(0x67);
      if (cVar4 != '\0') goto LAB_0078320d;
      in_stack_fffffdbc = (undefined4 *)0x7831db;
      FUN_00930330(0x67,1,1);
    }
    FUN_00436160(2);
    FUN_00763570();
  }
LAB_0078320d:
  if (param_1[0xb] == (byte *)0x2) {
    FUN_00417920();
    cVar4 = FUN_004178f0();
    if (cVar4 == '\0') {
LAB_0078328a:
      FUN_00417430(0x4000,0);
      if (param_1[0xf1] == (byte *)0x0) {
        FUN_00407480();
        local_130 = (byte **)FUN_00428a50();
        uVar7 = 0;
        iVar9 = FUN_004176f0();
        if (iVar9 != 0) {
          do {
            FUN_00417610(uVar7);
            local_120[0] = (byte **)FUN_00435e00();
            if ((local_120[0] != (byte **)0x0) && (cVar4 = FUN_006d8990(), cVar4 != '\0')) {
              FUN_006a9320(local_120[0]);
              uVar8 = HELPER_Entity_Position(&local_16c);
              FUN_007dd3b0(uVar8);
              FUN_007dd3b0(&DAT_00c7b640);
              param_1[0xcd] = (byte *)0x3f800000;
              break;
            }
            uVar7 = uVar7 + 1;
            uVar12 = FUN_004176f0();
          } while (uVar7 < uVar12);
        }
      }
      else {
        local_14c = (byte **)((float)param_1[0xcd] + DAT_00baa120);
        local_120[0] = (byte **)0x3f800000;
        puVar11 = (undefined4 *)FUN_0040c780();
        local_120[0] = (byte **)*puVar11;
        param_1[0xcd] = (byte *)local_120[0];
        uVar8 = HELPER_Entity_Position(&local_16c);
        uVar8 = HELPER_Vector_Interpolate(uVar8,0);
        FUN_007dd3b0(uVar8);
        FUN_007dd3b0(&DAT_00c7b640);
      }
    }
    else {
      FUN_00a20390(local_17c,param_1[0x586]);
      local_8 = 2;
      iVar9 = FUN_0040c3a0();
      if (iVar9 != 0) {
        FUN_0040c3a0();
        cVar4 = FUN_007538f0();
        if (cVar4 != '\0') {
          local_8 = 0xffffffff;
          FUN_004242b0();
          goto LAB_0078328a;
        }
      }
      FUN_00417860();
      FUN_009ba000(param_1,0);
      FUN_004242b0();
    }
    goto LAB_0078b272;
  }
  *(undefined *)(param_1 + 0x776) = 0;
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    if (*(char *)(param_1 + 0x9b5) == '\0') {
      param_1[0x9b4] = (byte *)0x0;
    }
    else {
      param_1[0x9b4] = param_1[0x9b4] + 1;
    }
    *(undefined *)(param_1 + 0x9b5) = 0;
  }
  if (*(char *)((int)param_1 + 0x172) == '\0') goto LAB_0078b272;
  if (*(char *)(param_1 + 0x4c7) != '\0') {
    FUN_007829a0();
  }
  ppbVar16 = param_1 + 0xcf;
  if (param_1[0x50f] != (byte *)0x0) {
    FUN_004288f0(ppbVar16);
    FUN_00428910(&DAT_00c7b640);
  }
  if (param_1[0x510] != (byte *)0x0) {
    FUN_004288f0(ppbVar16);
    FUN_00428910(&DAT_00c7b640);
  }
  local_120[0] = (byte **)param_1[0x511];
  if (local_120[0] != (byte **)0x0) {
    uVar8 = FUN_00a0fe90();
    FUN_004172f0(uVar8);
    FUN_004288f0(ppbVar16);
    FUN_00428910(&DAT_00c7b640);
  }
  if (param_1[0x79e] != (byte *)0x0) {
    FUN_004288f0(ppbVar16);
    FUN_00428910(&DAT_00c7b640);
  }
  if (param_1[0x79f] != (byte *)0x0) {
    FUN_004288f0(ppbVar16);
    FUN_00428910(&DAT_00c7b640);
  }
  if (param_1[0x7a0] != (byte *)0x0) {
    FUN_004288f0(ppbVar16);
    FUN_00428910(&DAT_00c7b640);
  }
  iVar9 = FUN_0040c3a0();
  if (iVar9 != 0) {
    FUN_0040c3a0();
    ppbVar13 = (byte **)FUN_004b7080();
    if (ppbVar13 == param_1) {
      FUN_0040c3a0();
      FUN_004288f0(ppbVar16);
      FUN_0040c3a0();
      FUN_00428910(param_1 + 0xd8);
    }
  }
  if (param_1[0x7a2] != (byte *)0x0) {
    FUN_004288f0(ppbVar16);
    FUN_00428910(&DAT_00c7b640);
  }
  FUN_00757a10();
  param_1[0xe7] = pbVar18;
  local_12a = FUN_007ab110();
  cVar4 = FUN_00417430(0,0x2000000);
  fVar25 = DAT_00baa304;
  if (cVar4 == '\0') {
    if (((float)param_1[0xd4] <= 0.0 && (float)param_1[0xd4] != 0.0) ||
       ((float)param_1[0x79c] <= 0.0 && (float)param_1[0x79c] != 0.0)) {
      if (((*(char *)(param_1 + 0x55c) == '\0') && (param_1[0x61] == &DAT_00000005)) ||
         (cVar4 = FUN_00417430(0,0x4000000), cVar4 != '\0')) {
        fVar30 = DAT_00baa198;
        fVar25 = DAT_00ba9fe4;
        pbVar18 = (byte *)((float)param_1[0x7e2] - (float)param_1[0x79c]);
        param_1[0x7e2] = pbVar18;
        if (fVar25 < (float)pbVar18) {
          param_1[0x7e3] = (byte *)((float)param_1[0x7e3] - (float)pbVar18 * fVar30);
        }
        param_1[0xd4] = (byte *)((float)param_1[0x79c] + (float)param_1[0xd4]);
        cVar4 = FUN_00417430(0,0x4000000);
        fVar25 = DAT_00baa304;
        if (cVar4 == '\0') {
          param_1[0x79c] = (byte *)((float)param_1[0x79c] + DAT_00baa490);
        }
        else {
          pbVar18 = (byte *)((float)param_1[0x79c] + DAT_00baa304);
          param_1[0x79c] = pbVar18;
          if (((float)pbVar18 < 0.0) ||
             ((float)param_1[0xd4] <= DAT_00baae04 && DAT_00baae04 != (float)param_1[0xd4])) {
            param_1[0x61] = (byte *)0x3;
          }
          else {
            param_1[0x61] = (byte *)((uint)(*(char *)(param_1 + 0x55c) == '\0') * 2 + 3);
          }
        }
        if (0.0 < (float)param_1[0xd4]) {
          param_1[0xd4] = (byte *)0x0;
          param_1[0x79c] = (byte *)0x0;
          cVar4 = FUN_00417430(0,0x4000000);
          fVar25 = DAT_00baa304;
          if (cVar4 != '\0') {
            FUN_00417400(0,0x4000000);
            FUN_00420ae0();
            cVar4 = FUN_0082ee30();
            fVar25 = DAT_00baa304;
            if (cVar4 == '\0') {
              FUN_00428b50();
              cVar4 = FUN_0082ee30();
              fVar25 = DAT_00baa304;
              if ((cVar4 == '\0') &&
                 (*(undefined *)(param_1 + 0x104) = 1, fVar25 = DAT_00baa304,
                 param_1[0x4f0] == &DAT_00000023)) {
                FUN_00703670(4);
                FUN_006b6470(499,2,0,0x3f800000);
                in_stack_fffffdbc = (undefined4 *)0x1d3;
                in_stack_fffffdb8 = (byte **)0x783818;
                FUN_006b6470(0x1d3,2,0,0x3f800000);
                fVar25 = DAT_00baa304;
              }
            }
          }
        }
      }
      else {
        param_1[0xd4] = (byte *)0x0;
        param_1[0x79c] = (byte *)0x0;
        fVar25 = DAT_00baa304;
      }
    }
  }
  else {
    param_1[0x79c] = (byte *)0x0;
  }
  fVar30 = DAT_00baa630;
  if (param_1[0x4f0] == &DAT_00000023) {
    pbVar18 = param_1[0x7e3];
    pbVar1 = param_1[0x7e2];
    param_1[0x7e2] = (byte *)((float)pbVar18 + (float)pbVar1);
    if (((float)(byte *)((float)pbVar18 + (float)pbVar1) < 0.0) ||
       (param_1[0x7e2] = (byte *)0x0, (float)pbVar18 <= 0.0)) {
      pbVar18 = (byte *)((float)pbVar18 + fVar25);
    }
    else if (fVar30 <= (float)pbVar18) {
      pbVar18 = (byte *)((float)pbVar18 * _DAT_00baad28);
    }
    else {
      pbVar18 = (byte *)0x0;
    }
    param_1[0x7e3] = pbVar18;
  }
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    FUN_00435c70();
    cVar4 = HELPER_Player_HasCollectible(0x278,0);
    if ((cVar4 == '\0') && (cVar4 = FUN_009305f0(0x278), cVar4 == '\0')) {
      local_168 = (byte **)param_1[7];
    }
    else {
      local_168 = (byte **)param_1[7];
      param_1[6] = (byte *)((uint)param_1[6] & 0xffff7fff);
      param_1[7] = (byte *)local_168;
    }
    if (((uint)param_1[6] & 0x8000) == 0) {
      if ((0 < (int)param_1[0x7aa]) && (cVar4 = FUN_006ac710(3,0), cVar4 != '\0')) {
        param_1[0x7aa] = (byte *)0x0;
        FUN_00420af0();
        FUN_0092e230(0x24e);
      }
    }
    else {
      local_140 = (byte **)((uint)local_140 & 0xffffff00);
      FUN_004561a0(local_128);
      uVar8 = FUN_00456190(local_120);
      cVar4 = FUN_0042c710(uVar8);
      while (cVar4 != '\0') {
        pfVar14 = (float *)FUN_0040c3a0();
        if (((NAN(*pfVar14) || NAN(DAT_00ba9fe4)) == (*pfVar14 == DAT_00ba9fe4)) ||
           (iVar9 = FUN_0040c3a0(), (*(uint *)(iVar9 + 8) & 0x8000) == 0)) {
          FUN_004a11b0();
        }
        else {
          iVar9 = FUN_0040c3a0();
          if (*(int *)(iVar9 + 0x10) != 0) {
            iVar9 = FUN_0040c3a0();
            FUN_00499960(iVar9 + 0x10);
          }
          iVar9 = FUN_0040c3a0();
          local_140 = (byte **)((uint)local_140 & 0xff);
          if (*(int *)(iVar9 + 0x18) == 0x3b6) {
            local_140 = (byte **)0x1;
          }
          puVar11 = (undefined4 *)FUN_00499290(&local_138,_local_128);
          _local_128 = (byte **)*puVar11;
        }
        uVar8 = FUN_00456190(local_120);
        cVar4 = FUN_0042c710(uVar8);
        param_1 = local_134;
      }
      param_1[6] = (byte *)((uint)param_1[6] & 0xffff7fff);
      param_1[0x7aa] = param_1[0x7aa] + 1;
      param_1[7] = param_1[7];
      if ((char)local_140 == '\0') {
        HELPER_Entity_AddFlags(0x40,0);
        FUN_00420af0();
        cVar4 = FUN_0092e560(0x24e);
        if (cVar4 == '\0') {
          FUN_00420af0();
          in_stack_fffffdbc = (undefined4 *)0x1;
          in_stack_fffffdb8 = (byte **)0x3f800000;
          FUN_0092dc30(0x24e,0x3f800000,1,0,0x3f800000,0);
        }
      }
    }
    uVar32 = in_stack_fffffda0._0_8_;
    if ((0 < (int)param_1[0x7aa]) && (*(char *)((int)param_1 + 0x173) == '\0')) {
      local_14c = (byte **)0x3f800000;
      local_160 = (byte **)((float)(int)param_1[0x7aa] / DAT_00baa8d0);
      puVar11 = (undefined4 *)FUN_0040c780();
      local_148 = (char *)*puVar11;
      cVar4 = FUN_00417430(0x40,0);
      pcVar3 = *(code **)(*param_1 + 0x3c);
      if (cVar4 == '\0') {
        ppbVar16 = (byte **)local_148;
        HELPER_Float_Interpolate();
        local_14c = ppbVar16;
        ppbVar16 = (byte **)local_148;
        HELPER_Float_Interpolate();
        local_160 = ppbVar16;
        HELPER_Float_Interpolate();
        in_stack_fffffda0._8_4_ = 0x783cb9;
        in_stack_fffffda0._0_8_ = uVar32;
        in_stack_fffffda0._12_4_ = 0x3f800000;
        in_stack_fffffdb8 = (byte **)FUN_00435b50();
        in_stack_fffffdbc = (undefined4 *)0x2;
        (*pcVar3)(in_stack_fffffdb8,2,0,0,1);
        if (0x14 < (int)param_1[0x7aa]) {
          cVar4 = FUN_006ac710(2,0);
          uVar32 = in_stack_fffffda0._0_8_;
          goto joined_r0x00783ce0;
        }
      }
      else {
        HELPER_Float_Interpolate(0);
        in_stack_fffffda0._8_4_ = 0x783ba8;
        in_stack_fffffda0._0_8_ = uVar32;
        in_stack_fffffda0._12_4_ = 0x3f800000;
        in_stack_fffffdb8 = (byte **)FUN_00435b50();
        in_stack_fffffdbc = (undefined4 *)0x2;
        (*pcVar3)(in_stack_fffffdb8,2,0,0,1);
        if (0x14 < (int)param_1[0x7aa]) {
          cVar4 = FUN_006ac710(2,0);
          uVar32 = in_stack_fffffda0._0_8_;
joined_r0x00783ce0:
          if (cVar4 != '\0') {
            pcVar3 = *(code **)(*param_1 + 0x3c);
            in_stack_fffffda0._8_4_ = 0x783d45;
            in_stack_fffffda0._0_8_ = uVar32;
            in_stack_fffffda0._12_4_ = 0x3f800000;
            in_stack_fffffdb8 = (byte **)FUN_00435b50();
            in_stack_fffffdbc = (undefined4 *)0x3;
            (*pcVar3)(in_stack_fffffdb8,3,0xffffffff,1,1);
          }
        }
      }
      if (0x1e < (int)param_1[0x7aa]) {
        param_1[0x4ef] = (byte *)0x0;
        param_1[0x7aa] = param_1[0x7aa] + -0x1e;
        cVar4 = FUN_00417430(0x40,0);
        auVar29 = in_stack_fffffda0._0_12_;
        if (cVar4 == '\0') {
          uVar8 = FUN_006eef60();
          in_stack_fffffdbc = &DAT_00c7b640;
          in_stack_fffffdb8 = param_1 + 0xcf;
          in_stack_fffffda0._12_4_ = 0x783de6;
          in_stack_fffffda0._0_12_ = auVar29;
          piVar15 = (int *)HELPER_Entity_SpawnRelay
                                     (1000,0x13,in_stack_fffffdb8,&DAT_00c7b640,0,0,uVar8);
          FUN_004316b0(local_60);
          FUN_004b7070(local_5c[0]);
          FUN_00435dd0();
          FUN_0040a720(3);
          (**(code **)(*piVar15 + 0xc))();
        }
        else {
          (**(code **)(*param_1 + 0x20))(0x3f800000,0,0,local_68,0x1e);
          in_stack_fffffdbc = (undefined4 *)0x24f;
          in_stack_fffffdb8 = (byte **)0x783dbc;
          FUN_006b6470(0x24f,2,0,0x3f800000);
        }
      }
    }
    if (0 < (int)param_1[199]) {
      FUN_00417850();
      cVar4 = FUN_00429550();
      if ((cVar4 != '\0') && (*(short *)((int)param_1 + 0x2ed2) == 0)) {
        pcVar3 = *(code **)(*param_1 + 0x3c);
        in_stack_fffffdb8 = (byte **)FUN_0040d0e0(0x3f800000,0x3ecccccd,0x3ecccccd,0x3ecccccd);
        in_stack_fffffdbc = (undefined4 *)0x3;
        (*pcVar3)(in_stack_fffffdb8,3,0xffffffff,1,1);
      }
    }
    FUN_00417850();
    cVar4 = FUN_00429550();
    if (((cVar4 == '\0') && (cVar4 = FUN_00417430(0x40,0), cVar4 != '\0')) &&
       ((int)param_1[0x7aa] < 1)) {
      FUN_00417400(0x40,0);
    }
  }
  HELPER_Entity_BaseUpdate();
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    HELPER_ANM2_Update();
    cVar4 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b64ba4);
    auVar29 = in_stack_fffffda0._0_12_;
    if (cVar4 != '\0') {
      uVar8 = FUN_006eef60();
      in_stack_fffffdbc = &DAT_00c7b640;
      in_stack_fffffdb8 = param_1 + 0xcf;
      in_stack_fffffda0._12_4_ = 0x783f2c;
      in_stack_fffffda0._0_12_ = auVar29;
      piVar15 = (int *)HELPER_Entity_SpawnRelay(1000,0xc,in_stack_fffffdb8,&DAT_00c7b640,0,10,uVar8)
      ;
      FUN_004564b0(local_134);
      FUN_00435cf0(0xc1200000);
      uVar8 = FUN_00417200();
      FUN_0042d9b0(uVar8);
      HELPER_Effect_ScaleAccessor();
      uVar8 = FUN_00a0fe90();
      FUN_00a10510(&local_184,uVar8);
      uVar8 = FUN_00782630(local_17c);
      uVar8 = FUN_00a10420(&local_174,uVar8);
      FUN_004563c0(uVar8);
      HELPER_Entity_AddFlags(0,0x1000);
      (**(code **)(*piVar15 + 0xc))();
      FUN_00435eb0(0);
      param_1 = local_134;
    }
  }
  cVar4 = FUN_00a205a0(param_1[0x586]);
  if (cVar4 == '\0') {
    FUN_00428b50();
    cVar4 = FUN_0082ee30();
    if (cVar4 == '\0') {
      FUN_00a112c0(1,"Controller %d has disconnected.\n",param_1[0x586]);
      if ((param_1[0xb] == (byte *)0x0) || (param_1[0xef] != (byte *)0x0)) {
        FUN_00753cf0();
        FUN_009b7680();
      }
      else {
        FUN_00417860();
        FUN_009ba000(param_1,0);
        uVar8 = FUN_006eef60();
        HELPER_Entity_Position(&local_16c);
        uVar43 = FUN_00a0fe90();
        uVar43 = FUN_00a10420(local_17c,uVar43);
        HELPER_Entity_SpawnRelay(1000,0xf,uVar43,&DAT_00c7b640,0,0,uVar8);
      }
      goto LAB_0078b272;
    }
  }
  if ((*(char *)(param_1 + 0x4e6) != '\0') &&
     (cVar4 = HELPER_0040a550_AnimationPredicateB(&DAT_00b1a4ec), cVar4 != '\0')) {
    *(undefined *)(param_1 + 0x4e6) = 0;
  }
  FUN_00417850();
  cVar4 = FUN_00429550();
  if ((cVar4 != '\0') && (cVar4 = HELPER_0040a550_AnimationPredicateB("LightTravel"), cVar4 != '\0')
     ) {
    FUN_0044bf90(0);
  }
  if ((*(char *)((int)param_1 + 0x1399) != '\0') && (*(char *)(param_1 + 0x4e6) == '\0')) {
    *(undefined *)((int)param_1 + 0x1399) = 0;
    cVar4 = HELPER_Player_HasCollectible(0x23f,0);
    if ((cVar4 != '\0') && (cVar4 = FUN_00930680(0x37), cVar4 == '\0')) {
      local_14c = (byte **)0x1;
      local_120[0] = (byte **)(int)(DAT_00baa784 - (float)param_1[0x55b]);
      puVar11 = (undefined4 *)FUN_0041cb80();
      uVar8 = *puVar11;
      if ((int)param_1[0x4d1] < 2) {
        uVar8 = 1;
      }
      FUN_005cbd00(0x23f);
      iVar9 = FUN_007e9020(uVar8);
      if (iVar9 == 0) {
        FUN_006b6470(0xb5,0x14,0,0x3f800000);
        FUN_006b6470(0x1e,2,0,0x3f800000);
        uVar8 = FUN_00407170(&DAT_00c7b640,0x3f800000);
        in_stack_fffffdb8 = (byte **)&DAT_00b6bc94;
        FUN_006b31b0(&DAT_00b6bc94,param_1,uVar8);
        iVar9 = HELPER_Global_ModuloCountdown();
        iVar9 = iVar9 + 1;
        if (0 < iVar9) {
          do {
            FUN_007bf640(param_1 + 0xcf,&DAT_00c7b640);
            iVar9 = iVar9 + -1;
          } while (iVar9 != 0);
        }
        in_stack_fffffdbc = (undefined4 *)0x784279;
        FUN_00930390(0x37,1,1);
        FUN_00763570();
      }
    }
  }
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    FUN_00407480();
    cVar4 = HELPER_Player_HasCollectible(0x281,0);
    if (((cVar4 != '\0') && (iVar9 = FUN_004566b0(), 0 < iVar9)) &&
       (iVar9 = HELPER_Entity_TimeoutCrossed(), iVar9 != 0)) {
      local_130 = (byte **)FUN_00428a50();
      local_140 = (byte **)0x0;
      uVar7 = 0;
      iVar9 = FUN_004176f0();
      if (iVar9 == 0) {
        ppbVar16 = (byte **)0x0;
LAB_0078438c:
        iVar9 = HELPER_Global_ModuloCountdown();
        uVar32 = in_stack_fffffda0._0_8_;
        if (iVar9 != 0) goto LAB_0078439a;
LAB_007843b5:
        if (param_1[0x589] == (byte *)0xffffffff) {
          puVar11 = (undefined4 *)FUN_00a0fe90();
        }
        else {
          puVar11 = (undefined4 *)FUN_0067f1d0();
        }
        local_16c = (byte **)*puVar11;
        local_168 = (byte **)puVar11[1];
        uVar8 = FUN_006eef60();
        param_1 = local_134;
        local_120[0] = (byte **)0x40400000;
        uVar43 = FUN_00a104e0(&local_184,local_120);
        uVar43 = FUN_00a10420(local_17c,uVar43);
        ppbVar16 = (byte **)HELPER_Entity_SpawnRelay(2,1,param_1 + 0xcf,uVar43,param_1,0,uVar8);
        local_130 = ppbVar16;
        FUN_00753720(1);
        fVar25 = (float)param_1[200] - DAT_00baa730;
        if (fVar25 < DAT_00ba9fe4) {
          fVar25 = fVar25 * DAT_00baadc0;
          FUN_00431260();
          fVar25 = (float)((uint)fVar25 ^ DAT_00bacb70) / DAT_00baa81c;
        }
        else {
          fVar25 = fVar25 + fVar25;
          FUN_00431260();
          fVar25 = fVar25 * (float)DAT_00baa2d0;
        }
        local_160 = (byte **)(fVar25 + DAT_00baa730);
        local_14c = (byte **)0x3f800000;
        HELPER_FloatBound();
        (**(code **)(*ppbVar16 + 0x40))(0x40600000);
        pauVar17 = (undefined (*) [16])FUN_00435c20(&DAT_00c34bb0);
        auVar27 = *pauVar17;
        FUN_00676150(auVar27._0_4_,auVar27._4_4_,auVar27._8_4_,auVar27._12_4_);
        fVar25 = auVar27._0_4_;
        FUN_006a92a0(param_1);
        FUN_0067efe0();
        FUN_00676120(fVar25 * DAT_00baa198 + DAT_00baa3e0);
        FUN_00675fc0(0xc0c00000);
        FUN_00444c70(0);
        FUN_00444c90(0xbcf5c28f);
        pcVar3 = *(code **)(*ppbVar16 + 0x3c);
        FUN_0067efe0(0,0,0);
        auVar27._8_4_ = 0x3f800000;
        auVar27._0_8_ = uVar32;
        auVar27._12_4_ = 0x402ccccd;
        in_stack_fffffda0._8_8_ = auVar27._8_8_;
        in_stack_fffffda0._0_8_ = 0x7845cc00000000;
        uVar8 = FUN_00435b50();
        in_stack_fffffdbc = (undefined4 *)0xff;
        in_stack_fffffdb8 = (byte **)0xffffffff;
        (*pcVar3)(uVar8,0xffffffff,0xff,0,1);
        (**(code **)(*local_130 + 0xc))();
      }
      else {
        do {
          FUN_00417620(uVar7);
          local_120[0] = (byte **)FUN_00435e40();
          if (local_120[0] != (byte **)0x0) {
            puVar44 = &DAT_00c34810;
            FUN_004177c0(local_24);
            FUN_00417170(puVar44);
            cVar4 = FUN_004171b0();
            if ((cVar4 != '\0') && (ppbVar16 = (byte **)FUN_0042a260(), ppbVar16 == param_1)) {
              local_140 = (byte **)((int)local_140 + 1);
            }
          }
          uVar7 = uVar7 + 1;
          uVar12 = FUN_004176f0();
        } while (uVar7 < uVar12);
        ppbVar16 = local_140;
        if (local_140 < (byte **)0xc) goto LAB_0078438c;
LAB_0078439a:
        if (ppbVar16 < &DAT_00000014) {
          iVar9 = HELPER_Global_ModuloCountdown();
          uVar32 = in_stack_fffffda0._0_8_;
          if (iVar9 == 0) goto LAB_007843b5;
        }
      }
    }
  }
  if (((*(char *)((int)param_1 + 0x139a) != '\0') &&
      (cVar4 = HELPER_0040a550_AnimationPredicateB(&DAT_00b1a4ec), cVar4 != '\0')) &&
     (cVar4 = HELPER_0040a550_AnimationPredicateB("LiftItem"), cVar4 == '\0')) {
    *(undefined *)((int)param_1 + 0x139a) = 0;
    FUN_00407f10();
    FUN_00407f10();
  }
  FUN_007b9b50();
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    HELPER_FuseWrite_007d4e01();
  }
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    FUN_00420ae0();
    cVar4 = FUN_0082ee30();
    if (cVar4 == '\0') {
      FUN_00428b50();
      cVar4 = FUN_0082ee30();
      if (cVar4 == '\0') {
        if (*(char *)((int)param_1 + 0x13b6) == '\0') {
          if (param_1[0x4ee] != (byte *)0x0) {
            FUN_00424510();
            local_8 = 3;
            _local_128 = (byte **)FUN_005cbd00(0xac);
            FUN_00424510();
            local_8 = CONCAT31(local_8._1_3_,4);
            local_129 = '\0';
            iVar9 = 0;
            local_122 = '\0';
            iVar10 = HELPER_Player_TrinketMultiplier(0xac);
            if (iVar10 == 2) {
              iVar9 = 0x19;
            }
            else if (iVar10 == 3) {
              iVar9 = 0x32;
            }
            pbVar18 = param_1[0x4ee];
            if (pbVar18 == (byte *)0x1) {
              uVar7 = FUN_007e9020(100);
              local_120[0] = (byte **)0x1;
              if (iVar9 + 0x32U <= uVar7) {
                local_122 = '\x01';
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x2;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x4;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x5;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x6;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x7;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x8;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x9;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xb;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xc;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xd;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x14;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x15;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x16;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x18;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x12;
              }
              FUN_007dc620(local_120);
              local_129 = '\x01';
            }
            else if (pbVar18 == (byte *)0x2) {
              local_129 = '\x01';
              local_122 = '\x01';
              uVar7 = FUN_007e9020(100);
              if (uVar7 < iVar9 + 0x32U) {
                local_120[0] = (byte **)0x2;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x4;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x9;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xb;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xc;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x18;
              }
              else {
                local_120[0] = (byte **)0x1;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x5;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x6;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x7;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x8;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xd;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x14;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x15;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x16;
LAB_00784aac:
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x12;
              }
LAB_007852a3:
              FUN_007dc620(local_120);
            }
            else {
              if (pbVar18 == (byte *)0x3) {
                local_129 = '\x01';
                local_122 = '\x01';
                uVar7 = FUN_007e9020(100);
                if (uVar7 < iVar9 + 0x19U) {
                  uVar7 = FUN_007e9020(100);
                  if (uVar7 < 0x32) {
                    FUN_00424530();
                    FUN_007499a0(1,0);
                    local_120[0] = (byte **)0xffffffff;
                    FUN_0042c850(local_120);
                  }
                  else {
                    FUN_00424530();
                    FUN_007499a0(0,1);
                    local_120[0] = (byte **)0xffffffff;
                    FUN_0042c850(local_120);
                  }
                  goto LAB_007852b2;
                }
                local_120[0] = (byte **)0x1;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x2;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x4;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x5;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x6;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x7;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x8;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x9;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xa;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xb;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xc;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xd;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x14;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x15;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x18;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0x12;
                FUN_007dc620(local_120);
                local_120[0] = (byte **)0xfffffffe;
                FUN_0042c850(local_120);
              }
              else {
                if (pbVar18 == &DAT_00000005) {
                  local_129 = '\x01';
                  local_122 = '\x01';
                  uVar7 = FUN_007e9020(100);
                  if (uVar7 < iVar9 + 0x32U) {
                    local_120[0] = (byte **)0x7;
                    FUN_007dc620(local_120);
                    local_120[0] = (byte **)&DAT_00000008;
                    goto LAB_007852a3;
                  }
                  local_120[0] = (byte **)0x1;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x2;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x4;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x5;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x6;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x7;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x8;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x9;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0xb;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0xc;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0xd;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x14;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x15;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x18;
LAB_00785224:
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x12;
                }
                else {
                  if (pbVar18 != &DAT_00000004) {
                    if (pbVar18 == (byte *)0x7) {
                      local_129 = '\x01';
                      local_122 = '\x01';
                      uVar7 = FUN_007e9020(100);
                      if (iVar9 + 10U <= uVar7) {
                        local_120[0] = (byte **)0x1;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x2;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x4;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x5;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x6;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x7;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x8;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x9;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0xb;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0xc;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0xd;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x18;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x7;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x8;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x14;
                        FUN_007dc620(local_120);
                        local_120[0] = (byte **)0x15;
                        goto LAB_00785224;
                      }
                      local_120[0] = (byte **)0xfffffffe;
                      FUN_0042c850(local_120);
                    }
                    else if (pbVar18 == (byte *)0x6) {
                      local_129 = '\x01';
                      local_122 = '\x01';
                      uVar7 = FUN_007e9020(100);
                      local_120[0] = (byte **)0xa;
                      if (0x31 < uVar7) {
                        local_120[0] = (byte **)&DAT_00000005;
                      }
                      goto LAB_007852a3;
                    }
                    goto LAB_007852b2;
                  }
                  local_129 = '\x01';
                  local_122 = '\x01';
                  uVar7 = FUN_007e9020(100);
                  if (uVar7 < iVar9 + 0x32U) {
                    local_120[0] = (byte **)0x14;
                    FUN_007dc620(local_120);
                    local_120[0] = (byte **)0x15;
                    goto LAB_00784aac;
                  }
                  local_120[0] = (byte **)0x1;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x2;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x4;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x5;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x6;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x7;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x8;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x9;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0xb;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0xc;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0xd;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x18;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x7;
                  FUN_007dc620(local_120);
                  local_120[0] = (byte **)0x8;
                }
                FUN_007dc620(local_120);
              }
              local_120[0] = (byte **)0xfffffffa;
              FUN_0042c850(local_120);
            }
LAB_007852b2:
            FUN_005cbe20();
            local_8 = CONCAT31(local_8._1_3_,5);
            local_154 = (byte **)0x0;
            FUN_00424530();
            iVar9 = FUN_0056ff80();
            if (0 < iVar9) {
              iVar9 = 0;
              do {
                FUN_00424530();
                iVar10 = FUN_00421800();
                ppbVar16 = (byte **)(iVar9 + iVar10);
                local_130 = ppbVar16;
                if (*(int *)(iVar9 + 0x10 + iVar10) != 0) {
                  FUN_00424530();
                  pbVar18 = (byte *)FUN_004f8930();
                  if (ppbVar16[3] == pbVar18) {
                    uVar7 = 0;
                    iVar10 = FUN_00417840();
                    if (iVar10 != 0) {
                      do {
                        piVar15 = (int *)FUN_0042c810(uVar7);
                        if (*(int *)(local_130[4] + 8) == *piVar15) {
                          local_140 = (byte **)*local_130;
                          FUN_00557b00(&local_138,&local_140);
                          uVar8 = FUN_004561a0(local_120);
                          cVar4 = FUN_00557bb0(uVar8);
                          if (cVar4 != '\0') {
                            FUN_004e45c0(&local_16c,&local_140);
                            ppbVar16 = local_130;
                            cVar4 = FUN_00436010();
                            if (((cVar4 != '\0') && (local_122 != '\0')) ||
                               ((cVar4 = FUN_00436010(), cVar4 == '\0' && (local_129 != '\0')))) {
                              cVar4 = local_122;
                              if (ppbVar16[0x10] == (byte *)0x0) {
                                cVar4 = local_129;
                              }
                              if (cVar4 != '\0') {
                                FUN_0042c850(&local_140);
                              }
                            }
                          }
                          break;
                        }
                        uVar7 = uVar7 + 1;
                        uVar12 = FUN_00417840();
                      } while (uVar7 < uVar12);
                    }
                  }
                }
                iVar9 = iVar9 + 0xb8;
                ppbVar16 = (byte **)((int)local_154 + 1);
                local_154 = ppbVar16;
                FUN_00424530();
                iVar10 = FUN_0056ff80();
                param_1 = local_134;
              } while ((int)ppbVar16 < iVar10);
            }
            in_stack_fffffdb8 = (byte **)0x0;
            iVar9 = FUN_00417840();
            if (iVar9 != 0) {
              uVar8 = FUN_00417840();
              uVar8 = FUN_007e9020(uVar8);
              puVar11 = (undefined4 *)FUN_0042c810(uVar8);
              in_stack_fffffdb8 = (byte **)*puVar11;
            }
            if ((param_1[0x4ee] == (byte *)0x6) &&
               (piVar15 = (int *)FUN_0042c810(0), *piVar15 == 10)) {
              if (in_stack_fffffdb8 == (byte **)0x0) {
                FUN_00424530();
                in_stack_fffffdb8 = (byte **)FUN_007484c0(5,0,_local_128,0);
                goto LAB_007854cf;
              }
LAB_007854d3:
              FUN_00424530();
              FUN_00428ae0(0xffffffff);
              in_stack_fffffdbc = (undefined4 *)0xffffffff;
              FUN_006fd7c0(in_stack_fffffdb8,0xffffffff,3,param_1,0xffffffff);
            }
            else {
LAB_007854cf:
              if (in_stack_fffffdb8 != (byte **)0x0) goto LAB_007854d3;
              iVar9 = HELPER_Player_TrinketMultiplier(4);
              in_stack_fffffdb8 = (byte **)(local_128 + 2);
              if ((float)iVar9 <= (float)DAT_00baa454) {
                in_stack_fffffdbc = (undefined4 *)0x2c;
              }
              else {
                in_stack_fffffdbc = (undefined4 *)0x1a3;
              }
              FUN_005b39d0(in_stack_fffffdb8,in_stack_fffffdbc,1,0xffffffff,0);
            }
            FUN_00424420();
            FID_conflict__Tidy();
            local_8 = 0xffffffff;
            FID_conflict__Tidy();
          }
        }
        else {
          iVar9 = HELPER_Player_TrinketMultiplier(4);
          in_stack_fffffdb8 = (byte **)(local_128 + 2);
          if ((float)iVar9 <= (float)DAT_00baa454) {
            in_stack_fffffdbc = (undefined4 *)0x2c;
            FUN_005b39d0(in_stack_fffffdb8,0x2c,1,0xffffffff,0);
          }
          else {
            in_stack_fffffdbc = (undefined4 *)0x1a3;
            FUN_005b39d0(in_stack_fffffdb8,0x1a3,1,0xffffffff,0);
          }
        }
        *(undefined *)((int)param_1 + 0x13b6) = 0;
        param_1[0x4ee] = (byte *)0x0;
      }
    }
  }
  ppbVar16 = param_1 + 0x568;
  local_120[0] = ppbVar16;
  if ((param_1[0x568] != (byte *)0x0) &&
     (cVar4 = HELPER_Player_HasCollectible(0x216,0), cVar4 == '\0')) {
    cVar4 = FUN_0042a320();
    uVar32 = in_stack_fffffda0._0_8_;
    if (cVar4 == '\0') {
      FUN_005b19d0();
      FUN_005cbd00(*ppbVar16);
      uVar8 = FUN_007e90f0();
      pbVar18 = *local_120[0];
      FUN_00407480();
      uVar43 = FUN_00813520(&local_16c,local_134 + 0xcf,0x42200000,0,0,0);
      param_1 = local_134;
      uVar45 = 0;
      pTVar42 = &IsaacRepentancePlus::Entity_Pickup::RTTI_Type_Descriptor;
      pTVar41 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar40 = 0;
      auVar33._8_4_ = uVar43;
      auVar33._0_8_ = uVar32;
      auVar33._12_4_ = &DAT_00c7b640;
      auVar34._8_8_ = auVar33._8_8_;
      auVar34._0_8_ = 0x6400000000;
      in_stack_fffffda0._4_12_ = auVar34._4_12_;
      in_stack_fffffda0._0_4_ = 5;
      uVar8 = HELPER_Entity_SpawnRelay(5,in_stack_fffffda0._4_12_,local_134,pbVar18,uVar8);
      __RTDynamicCast(uVar8,uVar40,pTVar41,pTVar42,uVar45);
      FUN_005b1990(param_1[0x569]);
      FUN_005b1920(param_1[0x56a]);
      in_stack_fffffdbc = (undefined4 *)param_1[0x568];
      ppbVar16 = param_1 + 0x568;
      in_stack_fffffdb8 = (byte **)0x785669;
      FUN_0078f840(in_stack_fffffdbc,0,1,1);
      FUN_005b19d0();
    }
  }
  cVar4 = HELPER_Player_HasCollectible(0x3b,0);
  if ((cVar4 != '\0') && (cVar4 = FUN_007da770(), cVar4 == '\0')) {
    local_120[0] = param_1 + 0x5b2;
    puVar11 = (undefined4 *)FUN_0042c810(0x3b);
    *puVar11 = 0;
    local_130 = (byte **)0x1;
    do {
      if (*ppbVar16 == &DAT_0000003b) {
        *ppbVar16 = (byte *)0x22;
        piVar15 = (int *)FUN_0042c810(0x22);
        *piVar15 = *piVar15 + 1;
      }
      param_1 = local_134;
      local_130 = (byte **)((int)local_130 + -1);
      ppbVar16 = ppbVar16 + -8;
    } while (-1 < (int)local_130);
    FUN_007d3200(0);
  }
  FUN_00417850();
  cVar4 = FUN_00429550();
  if ((((cVar4 != '\0') && (param_1[0xb] == (byte *)0x0)) &&
      (cVar4 = HELPER_Player_HasCollectible(0x1f1,0), cVar4 != '\0')) &&
     (cVar4 = FUN_009305f0(0x1f1), cVar4 == '\0')) {
    lVar31 = FUN_00a15b10();
    local_168 = (byte **)((ulonglong)(lVar31 - (int)param_1[0x7e4]) >> 0x20);
    if ((local_168 != (byte **)0x0) || (15000 < (uint)(lVar31 - (int)param_1[0x7e4]))) {
      in_stack_fffffdbc = (undefined4 *)0x78577d;
      FUN_009302e0(0x1f1,1,1);
      uVar7 = 0;
      FUN_00417860();
      iVar9 = FUN_00417840();
      if (iVar9 != 0) {
        do {
          FUN_00417860();
          local_130 = (byte **)FUN_009b92c0(uVar7);
          if ((local_130 != param_1) && (ppbVar16 = (byte **)FUN_0040c3a0(), local_130 != ppbVar16))
          {
            FUN_00431310(param_1);
            in_stack_fffffdbc = (undefined4 *)0x7857e1;
            FUN_006add70(local_68,0x5a,0);
          }
          uVar7 = uVar7 + 1;
          FUN_00417860();
          uVar12 = FUN_00417840();
        } while (uVar7 < uVar12);
      }
    }
  }
  cVar4 = FUN_00665c60(0x34);
  if (cVar4 != '\0') {
    HELPER_Entity_AddFlags(0x8000000,0);
  }
  cVar4 = FUN_00417430(0x8000000,0);
  if (cVar4 == '\0') {
    pbVar18 = param_1[0x597] + -1;
    if ((int)pbVar18 < 0) {
      pbVar18 = (byte *)0x0;
    }
    param_1[0x597] = pbVar18;
  }
  else {
    param_1[0x597] = &DAT_0000003c;
  }
  param_1[0x4de] = (byte *)0x0;
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    if (((param_1[0xb] == (byte *)0x1) && (*(char *)(param_1 + 0x6c6) != '\0')) &&
       (cVar4 = FUN_007ab110(), cVar4 != '\0')) {
      pcVar22 = "Appear";
      HELPER_Effect_SpriteAccessor();
      pbVar18 = (byte *)FUN_00407380();
      do {
        bVar2 = *pbVar18;
        bVar23 = bVar2 < (byte)*pcVar22;
        if (bVar2 != *pcVar22) {
LAB_007858c0:
          uVar7 = -(uint)bVar23 | 1;
          goto LAB_007858c5;
        }
        if (bVar2 == 0) break;
        bVar2 = pbVar18[1];
        bVar23 = bVar2 < ((byte *)pcVar22)[1];
        if (bVar2 != ((byte *)pcVar22)[1]) goto LAB_007858c0;
        pbVar18 = pbVar18 + 2;
        pcVar22 = (char *)((byte *)pcVar22 + 2);
      } while (bVar2 != 0);
      uVar7 = 0;
LAB_007858c5:
      if (uVar7 == 0) {
        FUN_007abe20("Glitch");
      }
      else {
        pcVar22 = "Glitch";
        HELPER_Effect_SpriteAccessor();
        pbVar18 = (byte *)FUN_00407380();
        do {
          bVar2 = *pbVar18;
          bVar23 = bVar2 < (byte)*pcVar22;
          if (bVar2 != *pcVar22) {
LAB_00785910:
            uVar7 = -(uint)bVar23 | 1;
            goto LAB_00785915;
          }
          if (bVar2 == 0) break;
          bVar2 = pbVar18[1];
          bVar23 = bVar2 < ((byte *)pcVar22)[1];
          if (bVar2 != ((byte *)pcVar22)[1]) goto LAB_00785910;
          pbVar18 = pbVar18 + 2;
          pcVar22 = (char *)((byte *)pcVar22 + 2);
        } while (bVar2 != 0);
        uVar7 = 0;
LAB_00785915:
        if (uVar7 == 0) {
          FUN_007bf040();
        }
      }
    }
    if (param_1[0x504] != (byte *)0x0) {
      FUN_004288f0(param_1 + 0xcf);
      FUN_00428910(param_1 + 0xd8);
      cVar4 = FUN_004173b0();
      if (cVar4 != '\0') {
        pbVar18 = param_1[0x504];
        iVar9 = FUN_0040b1a0(0);
        if ((iVar9 != 0) || ((1 < (int)param_1[0x7cb] && (iVar9 = FUN_0040b1a0(0), iVar9 != 0)))) {
          FUN_0067f2e0();
          *(float *)(pbVar18 + 0x350) = (float)local_168 * (float)param_1[0x53d];
        }
      }
    }
    cVar4 = FUN_009305f0(0x1f1);
    if (cVar4 != '\0') {
      in_stack_fffffdbc = (undefined4 *)0x7859db;
      cVar4 = FUN_00a20920(4,param_1[0x586],0);
      if (cVar4 == '\0') {
        in_stack_fffffdbc = (undefined4 *)0x7859f3;
        cVar4 = FUN_00a20920(6,param_1[0x586],0);
        if (cVar4 != '\0') goto LAB_00785a2e;
        in_stack_fffffdbc = (undefined4 *)0x785a0b;
        cVar4 = FUN_00a20920(5,param_1[0x586],0);
        if (cVar4 != '\0') goto LAB_00785a2e;
        in_stack_fffffdbc = (undefined4 *)0x785a23;
        cVar4 = FUN_00a20920(7,param_1[0x586],0);
        local_121 = '\0';
        if (cVar4 != '\0') goto LAB_00785a2e;
      }
      else {
LAB_00785a2e:
        local_121 = '\x01';
      }
      FUN_00417900();
      cVar4 = FUN_007538d0();
      if (cVar4 == '\0') {
joined_r0x00785a7e:
        if (local_121 == '\0') goto LAB_00785b62;
      }
      else {
        FUN_00a0fe80();
        cVar4 = FUN_007b9f60(&local_16c,0);
        if (cVar4 == '\0') goto joined_r0x00785a7e;
      }
      FUN_009304a0(0x1f1,1);
      FUN_00407480();
      iVar9 = FUN_00813ce0();
      if (6 < iVar9) {
        FUN_00930550(0x30,0xffffffff);
        FUN_00930390(0x30,0,0x1e);
        FUN_006b6470(0x50,2,0,0x3f800000);
        FUN_00703670(10);
        uVar8 = FUN_00407170();
        FUN_006b66a0(uVar8);
        in_stack_fffffdbc = SUB164(_DAT_00c79100,0);
        in_stack_fffffdb8 = (byte **)0x42480000;
        in_stack_fffffda0._4_4_ = param_1;
        in_stack_fffffda0._0_4_ = param_1 + 0xcf;
        in_stack_fffffda0._8_8_ = 0;
        FUN_006fed60(param_1 + 0xcf,param_1,0,0,0x42480000,in_stack_fffffdbc,SUB164(_DAT_00c79100,4)
                     ,SUB164(_DAT_00c79100,8),SUB164(_DAT_00c79100,0xc));
        param_1[0x55d] = (byte *)((uint)param_1[0x55d] | (uint)param_1[0x542]);
        FUN_00763570();
        FUN_00753790();
      }
    }
LAB_00785b62:
    FUN_00417850();
    cVar4 = FUN_00429550();
    if (cVar4 == '\0') {
LAB_00785bc0:
      FUN_00779b40();
      FUN_00780f40();
      FUN_00791a40(0);
      FUN_007a3d30();
      FUN_0077b020();
      FUN_007a42b0();
    }
    else {
      pbVar18 = param_1[0x86];
      FUN_00407480();
      FUN_004360d0();
      cVar4 = FUN_009305f0(0x1de);
      if (((cVar4 == '\0') || (*(short *)((int)param_1 + 0x2ed2) != 0)) && (pbVar18 == (byte *)0x0))
      goto LAB_00785bc0;
      FUN_007dd3b0(&DAT_00c7b640);
    }
    ppbVar16 = (byte **)FUN_00499da0();
    local_154 = ppbVar16;
    cVar4 = FUN_007db700();
    if (cVar4 != '\0') {
      ppbVar16 = (byte **)FUN_0040c3a0();
      local_154 = ppbVar16;
    }
    uVar32 = in_stack_fffffda0._0_8_;
    if (ppbVar16 != (byte **)0x0) {
      FUN_00428b50();
      cVar4 = FUN_0082ee30();
      uVar32 = in_stack_fffffda0._0_8_;
      if (cVar4 == '\0') {
        FUN_00420ae0();
        cVar4 = FUN_0082ee30();
        uVar32 = in_stack_fffffda0._0_8_;
        if (cVar4 == '\0') {
          FUN_00a0fe80();
          ppbVar16 = (byte **)0x0;
          local_140 = (byte **)0x0;
          iVar9 = FUN_004178d0();
          uVar32 = in_stack_fffffda0._0_8_;
          if (iVar9 != 0) {
            do {
              local_120[0] = (byte **)FUN_00417870(ppbVar16);
              if ((local_120[0] != param_1) &&
                 ((local_120[0] == local_154 ||
                  (ppbVar13 = (byte **)FUN_0042a260(), ppbVar13 == local_154)))) {
                uVar8 = HELPER_Entity_Position(&local_16c);
                FUN_00a10480(&local_184,uVar8);
                fVar24 = (float10)FUN_00a0fed0();
                local_130 = (byte **)(float)fVar24;
                cVar4 = FUN_00a10630(&DAT_00c7b640);
                ppbVar16 = local_140;
                if ((cVar4 != '\0') && ((float)local_130 < DAT_00baaa38)) {
                  local_14c = (byte **)0x3f000000;
                  FUN_004171d0(&local_184);
                  uVar8 = FUN_00a105a0(local_13c,&local_130);
                  FUN_00a10450(uVar8);
                  ppbVar16 = local_140;
                }
              }
              ppbVar16 = (byte **)((int)ppbVar16 + 1);
              local_140 = ppbVar16;
              ppbVar13 = (byte **)FUN_004178d0();
              uVar32 = in_stack_fffffda0._0_8_;
            } while (ppbVar16 < ppbVar13);
          }
          fVar24 = (float10)FUN_00a0fea0();
          local_120[0] = (byte **)(float)fVar24;
          if (DAT_00baa630 < (float)local_120[0]) {
            FUN_00a100b0(0x40000000);
          }
          HELPER_Entity_AddVelocity(local_17c,0);
        }
      }
    }
    if ((param_1[0xb] == (byte *)0x0) && (*(char *)((int)param_1 + 0x20a9) == '\0')) {
      cVar4 = HELPER_Player_HasCollectible(0x18d,0);
      if ((cVar4 == '\0') ||
         (((int *)param_1[0x4f8] == (int *)0x0 ||
          (cVar4 = (**(code **)(*(int *)param_1[0x4f8] + 0x34))(), cVar4 == '\0')))) {
        if ((int *)param_1[0x50c] != (int *)0x0) {
          (**(code **)(*(int *)param_1[0x50c] + 0x28))();
        }
      }
      else {
        local_174 = (byte **)param_1[0x58c];
        local_170 = (byte **)param_1[0x58d];
        iVar9 = FUN_007826c0();
        if ((iVar9 == 0) &&
           ((cVar4 = FUN_00a10600(&DAT_00c7b640), cVar4 != '\0' ||
            (cVar4 = HELPER_Player_HasCollectible(0x1d1,0), cVar4 == '\0')))) {
          uVar8 = FUN_0067f1d0();
          FUN_007dd3b0(uVar8);
        }
        else {
          FUN_00a0ffc0();
        }
        in_stack_fffffdb8 = (byte **)param_1[0x50c];
        __RTDynamicCast(in_stack_fffffdb8,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                        &IsaacRepentancePlus::Entity_Laser::RTTI_Type_Descriptor,0);
        if (param_1[0x50c] == (byte *)0x0) {
          uVar8 = FUN_006eef60();
          uVar40 = 0;
          pTVar42 = &IsaacRepentancePlus::Entity_Laser::RTTI_Type_Descriptor;
          pTVar41 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar43 = 0;
          auVar35._8_4_ = param_1 + 0xcf;
          auVar35._0_8_ = uVar32;
          auVar35._12_4_ = &DAT_00c7b640;
          auVar36._8_8_ = auVar35._8_8_;
          auVar36._0_8_ = 0x700000000;
          auVar37._4_12_ = auVar36._4_12_;
          auVar37._0_4_ = 7;
          uVar32 = auVar37._0_8_;
          in_stack_fffffdb8 = (byte **)HELPER_Entity_SpawnRelay(7,auVar37._4_12_,param_1,0,uVar8);
          piVar15 = (int *)__RTDynamicCast(in_stack_fffffdb8,uVar43,pTVar41,pTVar42,uVar40);
          FUN_006a92a0(param_1);
          (**(code **)(*piVar15 + 0xc))();
          FUN_006b5b50();
        }
        local_120[0] = (byte **)0x41400000;
        uVar8 = FUN_00a104e0(&local_16c,local_120);
        in_stack_fffffdbc = (undefined4 *)0x785f36;
        uVar8 = FUN_007aa850(&local_184,6,uVar8);
        FUN_004172f0(uVar8);
        fVar24 = (float10)FUN_00a10390();
        local_120[0] = (byte **)(float)fVar24;
        ppbVar16 = local_120[0];
        FUN_00682740();
        FUN_0096ce90(ppbVar16);
        if ((float)local_170 <= DAT_00baad2c) {
          uVar8 = 0xc1200000;
        }
        else {
          uVar8 = 0x453b8000;
        }
        FUN_00435cf0(uVar8);
        cVar4 = FUN_007ab110();
        if ((cVar4 == '\0') || (cVar4 = FUN_007bf490(), cVar4 != '\0')) {
          uVar8 = 0;
        }
        else {
          uVar8 = 1;
        }
        FUN_0044bf90(uVar8);
        local_120[0] = (byte **)&DAT_00000005;
        ppbVar16 = (byte **)FUN_0041cb80();
        param_1[0x4ce] = *ppbVar16;
      }
      local_140 = (byte **)((uint)local_140 & 0xffffff00);
      cVar4 = FUN_00417430(0x4000,0);
      if (cVar4 == '\0') {
        FUN_00417850();
        cVar4 = FUN_00429550();
        if ((cVar4 != '\0') && (*(short *)((int)param_1 + 0x2ed2) != 0)) {
          sVar6 = *(short *)((int)param_1 + 0x2ed2) + -1;
          *(short *)((int)param_1 + 0x2ed2) = sVar6;
          local_140 = (byte **)((uint)local_140 & 0xff);
          if (sVar6 == 0) {
            local_140 = (byte **)0x1;
          }
        }
      }
      FUN_00407480();
      FUN_004360d0();
      cVar4 = FUN_009305f0(0x1de);
      if (((cVar4 != '\0') &&
          ((param_1[0x58b] != (byte *)0xffffffff || ((*(byte *)(param_1 + 0x4de) & 4) != 0)))) ||
         ((char)local_140 != '\0')) {
        FUN_00407480();
        FUN_004360d0();
        FUN_009304a0(0x1de,1);
        FUN_00407480();
        FUN_00821940(0);
        *(undefined2 *)((int)param_1 + 0x2ed2) = 0;
      }
    }
    if (param_1[0x589] != (byte *)0xffffffff) {
      param_1[0x4de] = (byte *)((uint)param_1[0x4de] | 2);
    }
    if (param_1[0x58b] != (byte *)0xffffffff) {
      param_1[0x4de] = (byte *)((uint)param_1[0x4de] | 4);
    }
    cVar4 = HELPER_Player_HasCollectible(0xd2,0);
    if ((cVar4 == '\0') || (param_1[0x4de] != (byte *)0x0)) {
      if ((NAN((float)param_1[0xdf]) || NAN(DAT_00baabc4)) != ((float)param_1[0xdf] == DAT_00baabc4)
         ) {
        FUN_0042ca00();
        uVar8 = FUN_0072fda0(4);
        FUN_0075d850(uVar8);
        param_1[0xdf] = *(byte **)(param_1[0xcc] + 0x44);
      }
      param_1[0x4dd] = (byte *)0x0;
    }
    else {
      pbVar18 = param_1[0x4dd];
      param_1[0x4dd] = pbVar18 + 1;
      if (0x3c < (int)pbVar18) {
        if ((NAN((float)param_1[0xdf]) || NAN(DAT_00baabc4)) ==
            ((float)param_1[0xdf] == DAT_00baabc4)) {
          FUN_009568e0(0x35a,2,0,0x3f800000);
          FUN_0042ca00();
          uVar43 = 0;
          uVar8 = FUN_0072fda0(4);
          FUN_0075d1d0(uVar8,uVar43);
          param_1[0xdf] = (byte *)0x447a0000;
          uVar8 = FUN_006eef60();
          uVar43 = 0;
          pTVar42 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
          pTVar41 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          in_stack_fffffdbc = (undefined4 *)0x0;
          auVar38._8_4_ = param_1 + 0xcf;
          auVar38._0_8_ = uVar32;
          auVar38._12_4_ = &DAT_00c7b640;
          auVar39._8_8_ = auVar38._8_8_;
          auVar39._0_8_ = 0xf00000000;
          in_stack_fffffdb8 = (byte **)HELPER_Entity_SpawnRelay(1000,auVar39._4_12_,param_1,2,uVar8)
          ;
          piVar15 = (int *)__RTDynamicCast(in_stack_fffffdb8,in_stack_fffffdbc,pTVar41,pTVar42,
                                           uVar43);
          param_1 = local_134;
          uVar8 = FUN_00a0fe90();
          uVar8 = FUN_00a10420(&local_184,uVar8);
          FUN_004172f0(uVar8);
          FUN_00435cf0((float)param_1[0xd4] + (float)DAT_00baa454);
          (**(code **)(*piVar15 + 0xc))();
        }
        if ((param_1[0xb] == (byte *)0x1) || (*(char *)((int)param_1 + 0x20a9) != '\0')) {
          FUN_00407170();
          FUN_00682fb0(0x3f800000,0x3f800000,0x3f800000,0x3f800000);
          in_stack_fffffdb8 = local_98;
          in_stack_fffffdbc = (undefined4 *)0x2;
          (**(code **)(*param_1 + 0x3c))(in_stack_fffffdb8,2,0,0,1);
        }
      }
    }
    if ((NAN((float)param_1[0xdf]) || NAN(DAT_00baabc4)) == ((float)param_1[0xdf] == DAT_00baabc4))
    {
      param_1[0xdf] = *(byte **)(param_1[0xcc] + 0x44);
    }
    cVar4 = FUN_009305f0(0x251);
    if (((cVar4 == '\0') && ((int)param_1[0x622] < 1)) &&
       (cVar4 = FUN_009305f0(0x2ca), cVar4 == '\0')) {
      FUN_00417400(0x40000000,0);
    }
    else {
      HELPER_Entity_AddFlags(0x40000000,0);
    }
    cVar4 = FUN_00753780();
    if (cVar4 != '\0') {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | (uint)param_1[0x542]);
      FUN_00763570();
    }
    FUN_00753790();
    cVar4 = FUN_00417430(0x4000,0);
    if (cVar4 == '\0') {
      FUN_00930820();
      FUN_00794e50();
    }
    if ((param_1[0x7b9] != (byte *)0x0) && (iVar9 = FUN_00435df0(), iVar9 != 0)) {
      fVar24 = (float10)FUN_0085e360();
      FUN_00a10350(local_13c,(float)fVar24);
      local_120[0] = (byte **)0xc1600000;
      uVar8 = FUN_004171d0(local_13c);
      FUN_00753750(uVar8);
      in_stack_fffffdbc = (undefined4 *)0x7863f7;
      FUN_007aa850(&local_174,0xffffffff,local_13c);
      local_120[0] = (byte **)0x41500000;
      uVar8 = FUN_004171d0(local_13c);
      FUN_00a10450(uVar8);
      local_170 = (byte **)((float)local_170 - (float)param_1[0x53f] * (float)DAT_00baa75c);
      FUN_004172f0(&local_174);
      if ((float)local_138 <= DAT_00baad2c) {
        uVar8 = 0xc2200000;
      }
      else {
        uVar8 = 0x453b8000;
      }
      ppbVar16 = local_138;
      FUN_00435cf0(uVar8);
      cVar4 = FUN_00417430(0x4000,0);
      if (cVar4 == '\0') {
        local_160 = (byte **)FUN_006eef60();
        FUN_0067efe0();
        fVar25 = (float)ppbVar16 * DAT_00baa9b4 - DAT_00baa910;
        FUN_00a102e0(&local_16c,fVar25);
        FUN_0067efe0();
        ppbVar16 = (byte **)(fVar25 * DAT_00baa81c + DAT_00baa7a4);
        local_120[0] = ppbVar16;
        in_stack_fffffdbc = (undefined4 *)FUN_00a104e0(&local_184,local_120);
        local_130 = local_134 + 0xcf;
        FUN_00a10420(local_17c,&local_174);
        local_14c = (byte **)0x41600000;
        uVar8 = FUN_004171d0(local_13c);
        in_stack_fffffdb8 = (byte **)FUN_00a10480(local_158,uVar8);
        piVar15 = (int *)HELPER_Entity_SpawnRelay
                                   (1000,99,in_stack_fffffdb8,in_stack_fffffdbc,0,1,local_160);
        HELPER_Effect_ScaleAccessor();
        FUN_0067efe0();
        local_160 = (byte **)((float)ppbVar16 * DAT_00baa528 + (float)DAT_00baa454);
        ppbVar16 = local_160;
        uVar8 = FUN_00a104e0(local_190,&local_160);
        FUN_0042d9b0(uVar8);
        FUN_00435dd0();
        uVar8 = FUN_004238f0(0x3f800000);
        FUN_004073d0(uVar8);
        FUN_00435cf0(0x41a00000);
        (**(code **)(*piVar15 + 0xc))();
        iVar9 = HELPER_Global_ModuloCountdown();
        if (iVar9 == 0) {
          local_160 = (byte **)FUN_006eef60();
          FUN_0067efe0();
          fVar25 = (float)ppbVar16 * DAT_00baa9b4 - DAT_00baa910;
          FUN_00a102e0(&local_16c,fVar25);
          FUN_0067efe0();
          local_120[0] = (byte **)(fVar25 * DAT_00baa6fc + DAT_00baa630);
          ppbVar16 = local_120[0];
          in_stack_fffffdbc = (undefined4 *)FUN_00a104e0(&local_184,local_120);
          FUN_00a10420(local_17c,&local_174);
          local_14c = (byte **)0x41600000;
          uVar8 = FUN_004171d0(local_13c);
          in_stack_fffffdb8 = (byte **)FUN_00a10480(local_158,uVar8);
          piVar15 = (int *)HELPER_Entity_SpawnRelay
                                     (1000,0x3a,in_stack_fffffdb8,in_stack_fffffdbc,0,0,local_160);
          (**(code **)(*piVar15 + 0xc))();
        }
        iVar9 = HELPER_Global_ModuloCountdown();
        param_1 = local_134;
        if (iVar9 == 0) {
          local_160 = (byte **)FUN_006eef60();
          FUN_0067efe0();
          fVar25 = (float)ppbVar16 * DAT_00baa8d0 - DAT_00baa854;
          FUN_00a102e0(&local_16c,fVar25);
          FUN_0067efe0();
          local_120[0] = (byte **)(fVar25 * DAT_00baa784 + DAT_00baa7a4);
          in_stack_fffffdbc = (undefined4 *)FUN_00a104e0(&local_184,local_120);
          uVar8 = FUN_00a0fe90();
          FUN_00a10420(local_144,uVar8);
          local_14c = (byte **)0x41600000;
          uVar8 = FUN_004171d0(local_13c);
          in_stack_fffffdb8 = (byte **)FUN_00a10480(local_190,uVar8);
          piVar15 = (int *)HELPER_Entity_SpawnRelay
                                     (9,5,in_stack_fffffdb8,in_stack_fffffdbc,local_134,0,local_160)
          ;
          uVar8 = 0x80;
          FUN_00417850();
          cVar4 = FUN_00429550();
          if (cVar4 == '\0') {
            uVar8 = 0x80000080;
          }
          FUN_00447740(uVar8,0);
          (**(code **)(*piVar15 + 0xc))();
          param_1 = local_134;
        }
      }
    }
  }
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    HELPER_ANM2_Update();
    HELPER_ANM2_Update();
    HELPER_ANM2_Update();
    iVar9 = 7;
    do {
      HELPER_ANM2_Update();
      param_1 = local_134;
      iVar9 = iVar9 + -1;
    } while (iVar9 != 0);
    HELPER_ANM2_Update();
  }
  local_120[0] = param_1 + 0x12;
  uVar8 = FUN_00417200();
  FUN_00420170(uVar8);
  uVar8 = FUN_00417200();
  FUN_00420170(uVar8);
  uVar8 = FUN_00417200();
  FUN_00420170(uVar8);
  auVar28 = ZEXT416(DAT_00baa950);
  local_14c = DAT_00baa950;
  if ((param_1[0xb] == (byte *)0x0) && (*(char *)((int)param_1 + 0x20a9) == '\0')) {
    FUN_00420170(param_1 + 0x53c);
    cVar4 = FUN_00420160();
    if ((cVar4 != '\0') &&
       ((cVar4 = FUN_0040a4d0(&DAT_00b1a4ec), cVar4 != '\0' &&
        (iVar9 = FUN_0040b1d0("ItemWalk"), iVar9 != 0)))) {
      FUN_00417200();
      uVar8 = FUN_00a10510(local_13c,iVar9 + 0x10);
      FUN_00420170(uVar8);
    }
    local_16c = DAT_00c3793c;
    local_168 = DAT_00c37940;
    if ((-1 < (int)param_1[0x49b]) &&
       ((iVar9 = FUN_005cbd10(param_1[0x49b]), *(int *)(iVar9 + 0x114) == 0 ||
        ((iVar9 = FUN_005cbd10(param_1[0x49b]), *(int *)(*(int *)(iVar9 + 0x114) + 4) != 0x256 &&
         (iVar9 = FUN_005cbd10(param_1[0x49b]), *(int *)(*(int *)(iVar9 + 0x114) + 4) != 0x2b0))))))
    {
      FUN_005cbd10(param_1[0x49b]);
      HELPER_Effect_SpriteAccessor();
      cVar4 = FUN_004073a0();
      if (cVar4 == '\0') {
        HELPER_Effect_SpriteAccessor();
        iVar9 = FUN_0040a220(param_1[0x49c]);
        if (iVar9 != 0) {
          ppbVar16 = *(byte ***)(iVar9 + 0x1c);
          FUN_0041d510();
          local_160 = ppbVar16;
          FUN_0041d510();
          uVar8 = FUN_00a0fe90();
          FUN_007dd3b0(uVar8);
        }
      }
    }
    local_148 = (char *)DAT_00c3793c;
    local_188 = DAT_00c3793c;
    _local_128 = DAT_00c37940;
    local_18c = DAT_00c37940;
    local_154 = (byte **)0x0;
    cVar4 = HELPER_Player_HasCollectible(0x1ed,0);
    if (((cVar4 != '\0') || (cVar4 = FUN_009305f0(0x1ed), cVar4 != '\0')) &&
       (cVar4 = FUN_007ab110(), cVar4 != '\0')) {
      uVar7 = (int)(param_1[0x4d0] + ((int)param_1[0x762] * 2 - (int)param_1[0x4d1])) / 2;
      FUN_00417850();
      cVar4 = FUN_00429550();
      if (cVar4 != '\0') {
        uVar7 = uVar7 >> 2;
      }
      local_160 = (byte **)((float)uVar7 / DAT_00baa89c);
      local_18c = (byte **)((float)DAT_00baa454 -
                           ((float)DAT_00baa454 - (float)local_160) *
                           ((float)DAT_00baa454 - (float)local_160));
      fVar25 = (float)local_160 * DAT_00baa804 * (float)local_160 + (float)DAT_00baa454;
      local_140 = (byte **)(((fVar25 + fVar25) * DAT_00baa708) / DAT_00baa8d0);
      iVar9 = FUN_004074b0();
      local_130 = (byte **)((float)local_18c * (float)DAT_00baa2d0);
      fVar25 = (float)iVar9 * (float)local_140;
      FUN_00417150();
      fVar25 = (fVar25 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0) * DAT_00baa4b0;
      FUN_00505b40();
      local_154 = (byte **)((fVar25 - DAT_00baa198) * (float)local_130 + (float)DAT_00baa454);
      iVar9 = FUN_004074b0();
      fVar25 = (float)(iVar9 + -3) * (float)local_140;
      FUN_00417150();
      fVar25 = (fVar25 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0) * DAT_00baa4b0;
      FUN_00505b40();
      fVar25 = (fVar25 - DAT_00baa198) * (float)local_160 * (float)local_160;
      local_148 = (char *)(((float)DAT_00baa454 / (float)local_154 - (float)DAT_00baa454) *
                           (float)DAT_00baa2d0 + (float)DAT_00baa454 + fVar25);
      _local_128 = (byte **)(fVar25 * (float)DAT_00baa2d0 + (float)local_154);
      iVar9 = FUN_004074b0();
      fVar25 = (float)(iVar9 + 10) * (float)local_140;
      FUN_00417150();
      fVar25 = (fVar25 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0) * DAT_00baa4b0;
      FUN_00505b40();
      local_154 = (byte **)((fVar25 - DAT_00baa198) * (float)local_130);
      iVar9 = FUN_004074b0();
      fVar25 = (float)(iVar9 + 0x14) * (float)local_140;
      FUN_00417150();
      fVar25 = (fVar25 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0) * DAT_00baa4b0;
      FUN_00505b40();
      local_18c = (byte **)((fVar25 - DAT_00baa198) * (float)local_18c * DAT_00baa120 +
                           (float)DAT_00baa454);
      local_188 = (byte **)((float)DAT_00baa454 / (float)local_18c);
    }
    local_184 = DAT_00c3793c;
    local_174 = DAT_00c7b640;
    local_180 = DAT_00c37940;
    local_170 = DAT_00c7b644;
    if (-1 < (int)param_1[0x48f]) {
      FUN_005cbd10(param_1[0x48f]);
      iVar9 = FUN_0040b1d0("HeadTransform");
      if ((iVar9 != 0) && (*(char *)(iVar9 + 0xc) != '\0')) {
        FUN_007dd3b0(iVar9);
        FUN_007dd3b0(iVar9 + 0x10);
        if (param_1[0x4f0] == (byte *)0x20) {
          iVar10 = 0;
          iVar9 = FUN_0042d040();
          if (iVar9 != 0) {
            FUN_0042d040();
            iVar10 = FUN_0067efb0();
          }
          local_170 = (byte **)((float)local_170 - ((float)iVar10 + (float)iVar10));
        }
      }
    }
    FUN_005cd460(8);
    FUN_00407170();
    FUN_00407170();
    cVar4 = HELPER_Player_HasCollectible(0xca,0);
    if ((cVar4 != '\0') &&
       (((cVar4 = HELPER_Player_HasCollectible(0xd2,0), cVar4 != '\0' &&
         ((NAN((float)param_1[0xdf]) || NAN(DAT_00baabc4)) != ((float)param_1[0xdf] == DAT_00baabc4)
         )) || (cVar4 = FUN_00930680(0x3b), cVar4 != '\0')))) {
                    /* WARNING: Load size is inaccurate */
      if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c811c8) &&
         (FUN_00aef29d(&DAT_00c811c8), DAT_00c811c8 == -1)) {
        local_8 = 6;
        in_stack_fffffdbc = (undefined4 *)0x3f800000;
        in_stack_fffffdb8 = (byte **)0x3dcccccd;
        FUN_00435b50();
        local_8 = 0xffffffff;
        FUN_00aef253(&DAT_00c811c8);
      }
      FUN_006831c0(&DAT_00c811cc);
      FUN_006831c0(&DAT_00c811cc);
    }
    pbVar18 = param_1[0x640];
    if ((int)pbVar18 < 1) {
      local_160 = (byte **)param_1[0x829];
      if (DAT_00ba9fe4 < (float)local_160) {
        if ((float)DAT_00baa454 <= (float)local_160) {
          FUN_004074b0();
          FUN_00417160();
        }
        goto LAB_00786ffb;
      }
    }
    else {
      local_160 = (byte **)((float)(int)pbVar18 / (float)(int)param_1[0x641]);
      if ((int)param_1[0x641] <= (int)pbVar18) {
        FUN_004074b0();
        FUN_00417160();
      }
LAB_00786ffb:
      uVar8 = FUN_00435a80();
      FUN_006831c0(uVar8);
    }
    if ((0 < (int)param_1[0x6ba]) || (iVar9 = FUN_00930a70(699), iVar9 == 4)) {
      FUN_004074b0();
      FUN_00417160();
      uVar8 = FUN_00435a80();
      FUN_006831c0(uVar8);
    }
    if (0 < (int)param_1[0x7be]) {
      cVar4 = FUN_00417430(0x4000,0);
      if (cVar4 == '\0') {
        param_1[0x7be] = param_1[0x7be] + -1;
      }
      local_130 = (byte **)0x6;
      local_160 = (byte **)(8 - (int)param_1[0x7be]);
      FUN_0041cb60();
      local_140 = (byte **)0x0;
      piVar15 = (int *)FUN_0041cb80();
      fVar25 = *(float *)(&DAT_00b6bc98 + *piVar15 * 4);
      local_188 = (byte **)((DAT_00baa630 - fVar25) * (float)local_188);
      local_148 = (char *)((DAT_00baa630 - fVar25) * (float)local_148);
      _local_128 = (byte **)(fVar25 * (float)_local_128);
      local_18c = (byte **)(fVar25 * (float)local_18c);
      local_154 = (byte **)((fVar25 - (float)DAT_00baa454) * (float)DAT_00baa75c + (float)local_154)
      ;
    }
    if (DAT_00ba9fe4 < (float)param_1[0x7bf]) {
      local_160 = (byte **)((float)param_1[0x7bf] - (float)param_1[0xe7]);
      local_130 = (byte **)0x0;
      ppbVar16 = (byte **)HELPER_FloatBound();
      pbVar18 = *ppbVar16;
      param_1[0x7bf] = pbVar18;
      fVar25 = (((float)pbVar18 + (float)pbVar18) * DAT_00baa708) / DAT_00baa81c;
      FUN_00417160();
      fVar30 = (float)param_1[0x7bf] + (float)DAT_00baa454;
      local_160 = (byte **)((float)DAT_00baa454 -
                           ((float)param_1[0x7bf] / DAT_00baa87c) * fVar25 * DAT_00baa280);
      fVar25 = ((fVar30 + fVar30) * DAT_00baa708) / DAT_00baa81c;
      FUN_00417160();
      fVar25 = (float)DAT_00baa454 -
               (((float)param_1[0x7bf] + (float)DAT_00baa454) / DAT_00baa87c) *
               fVar25 * DAT_00baa280;
      _local_128 = (byte **)((float)local_160 * (float)_local_128);
      local_148 = (char *)((DAT_00baa630 - (float)local_160) * (float)local_148);
      local_188 = (byte **)((DAT_00baa630 - fVar25) * (float)local_188);
      local_18c = (byte **)(fVar25 * (float)local_18c);
      local_154 = (byte **)((fVar25 - (float)DAT_00baa454) * DAT_00baa6fc + (float)local_154);
    }
    cVar4 = HELPER_Player_HasCollectible(0x251,0);
    if (((cVar4 != '\0') && ((int)param_1[0x7a4] < 1)) &&
       (iVar9 = HELPER_Entity_AgeModulo(), iVar9 % 0x1e < 2)) {
      in_stack_fffffdbc = (undefined4 *)0x3f800000;
      in_stack_fffffdb8 = (byte **)0x787351;
      uVar8 = FUN_0040d0e0(0x3f800000,0x3e99999a,0,0);
      FUN_006831c0(uVar8);
    }
    iVar9 = FUN_00930a30(0x3f);
    if ((iVar9 != 0) && (uVar7 = *(uint *)(iVar9 + 8), (int)uVar7 < 0x5a)) {
      ppbVar16 = (byte **)(uVar7 & 0x8000000f);
      if ((int)ppbVar16 < 0) {
        ppbVar16 = (byte **)(((uint)((int)ppbVar16 + -1) | 0xfffffff0) + 1);
      }
      local_160 = (byte **)(uVar7 & 0x80000007);
      if ((int)local_160 < 0) {
        local_160 = (byte **)(((uint)((int)local_160 + -1) | 0xfffffff8) + 1);
      }
      if (0x17 < (int)uVar7) {
        local_160 = ppbVar16;
      }
      if ((int)local_160 < 5) {
        uVar8 = FUN_0040d0e0(0x3f800000,0x3e99999a,0,0);
        uVar43 = FUN_00407170();
        in_stack_fffffdbc = &local_6c;
        in_stack_fffffdb8 = (byte **)0x787423;
        FUN_006832e0(in_stack_fffffdbc,uVar43,uVar8,(float)(int)local_160 * DAT_00baa1d4);
        FUN_006831c0(&local_6c);
        FUN_006831c0(&local_6c);
      }
    }
    uVar26 = 0;
    local_130 = (byte **)0x0;
    if (1 < (int)param_1[0x7b4]) {
      local_5c[0] = _DAT_00babc60;
      local_5c[1] = _UNK_00babc64;
      local_5c[2] = _UNK_00babc68;
      local_5c[3] = _UNK_00babc6c;
      local_4c = 0x40000000;
      local_48 = 0x3f800000;
      local_44 = 0;
      local_160 = (byte **)0x6;
      piVar15 = (int *)FUN_0041cb60();
      local_130 = (byte **)local_5c[*piVar15];
      uVar26 = ZEXT48(local_130);
    }
    auVar28._8_8_ = 0;
    auVar28._0_8_ = uVar26;
    cVar4 = FUN_009305f0(0x2c0);
    if (cVar4 != '\0') {
      fVar25 = (float)param_1[0xe9] * DAT_00baa54c;
      FUN_00417160();
      local_174 = (byte **)(fVar25 + (float)local_174);
      fVar25 = (float)param_1[0xe9] * _DAT_00baa4c4;
      FUN_00417160();
      auVar28 = ZEXT416((uint)(((float)DAT_00baa454 -
                               (fVar25 * (float)DAT_00baa2d0 + (float)DAT_00baa2d0)) * DAT_00baa280)
                       );
      in_stack_fffffdbc = (undefined4 *)0x0;
      in_stack_fffffdb8 = (byte **)0x0;
      FUN_00435b50();
      FUN_006831c0(&local_6c);
      FUN_006831c0(&local_6c);
    }
    iVar9 = FUN_00421770();
    if (iVar9 == 0x2a) {
      if (param_1[0x4f0] == &DAT_00000023) {
        FUN_0042ca00();
        local_138 = (byte **)FUN_0072fda0(0x6a);
        ppbVar16 = param_1 + 0x48b;
        local_160 = (byte **)0x0;
        do {
          if (((-1 < (int)*ppbVar16) && (*(char *)(ppbVar16 + 3) == '\0')) &&
             (local_140 = (byte **)FUN_005cbd10(*ppbVar16), (byte **)local_140[0x45] == local_138))
          {
            FUN_0041e470();
            cVar4 = FUN_004073a0();
            if (cVar4 == '\0') {
              if ((*(char *)(param_1 + 0x4e6) == '\0') && (*(char *)((int)param_1 + 0x139a) == '\0')
                 ) {
                cVar4 = FUN_0040aa70(&DAT_00b1a4ec);
                if (cVar4 != '\0') {
                  FUN_0040a940("Pulse",1);
                  puVar44 = local_24;
                  uVar8 = 0x7876a1;
                  pauVar17 = (undefined (*) [16])FUN_00780560(puVar44,0);
                  uVar43 = 0;
                  auVar27 = *pauVar17;
                  local_24 = auVar27;
                  FUN_00435bc0(0,0);
                  fVar25 = auVar27._0_4_;
                  FUN_00780eb0(in_stack_fffffdb8,in_stack_fffffdbc,uVar8,puVar44,uVar43);
                  FUN_00435bc0(0,0);
                  FUN_00780ec0(in_stack_fffffdbc,uVar8,puVar44,uVar43);
                  if (DAT_00baa528 <= fVar25) {
                    local_14c = DAT_00baa9ec;
                  }
                  uVar8 = FUN_00505b60();
                  ppbVar16 = local_134;
                  uVar43 = FUN_0067f070(local_13c);
                  uVar43 = FUN_00a10420(local_164,uVar43);
                  auVar27 = ZEXT416(local_14c);
                  HELPER_Explosion(uVar43,local_14c,local_24._0_12_,local_24._12_4_,uVar8,ppbVar16,
                                   0x3fa00000,1,4,0,1);
                  FUN_007dd3b0(&DAT_00c7b640);
                  pcVar3 = *(code **)(*ppbVar16 + 0x54);
                  FUN_0067f070(local_150);
                  FUN_0067efe0();
                  auVar28._4_12_ = auVar27._4_12_;
                  auVar28._0_4_ = (byte **)(auVar27._0_4_ * DAT_00baa6fc + DAT_00baa630);
                  local_138 = auVar28._0_4_;
                  uVar8 = FUN_00a104e0(local_164,&local_138);
                  FUN_00431310(0);
                  (*pcVar3)(local_68,uVar8,0x41000000);
                  param_1 = local_134;
                }
              }
              else {
                FUN_0040ac60();
              }
            }
            else {
              FUN_0040a940("Pulse",0);
            }
            FUN_0041e470();
            cVar4 = FUN_004073a0();
            if (cVar4 == '\0') {
              FUN_0041e470();
              iVar9 = FUN_0040ace0("HeadAnim");
              if (iVar9 != 0) {
                FUN_00a10570(iVar9 + 0x10);
                FUN_00a10450(iVar9);
                FUN_006831c0(iVar9 + 0x18);
                FUN_006831c0(iVar9 + 0x18);
              }
            }
            break;
          }
          local_160 = (byte **)((int)local_160 + 1);
          ppbVar16 = ppbVar16 + 4;
        } while (local_160 < &DAT_0000000f);
        goto LAB_0078784d;
      }
    }
    else {
LAB_0078784d:
      if (param_1[0x4f0] == &DAT_00000023) {
        local_170 = (byte **)((float)local_170 + (float)param_1[0x7e2]);
        auVar28 = ZEXT416(local_170);
      }
    }
    cVar4 = FUN_00417430(0,4);
    if (((cVar4 != '\0') && ((byte **)param_1[0xa3] == param_1)) && ((int)param_1[0x4e3] < 0x96)) {
      FUN_004238f0(0x3f800000);
      FUN_006831c0(&local_6c);
      FUN_006831c0(&local_6c);
    }
    cVar4 = FUN_007cf8c0();
    if (cVar4 == '\0') {
      FUN_00417900();
      FUN_00925df0();
      local_14c = auVar28._0_4_;
      fVar24 = (float10)FUN_00407270();
      FUN_00407280((float)(fVar24 * (float10)(float)local_14c));
      fVar24 = (float10)FUN_00407270();
      FUN_00407280((float)(fVar24 * (float10)(float)local_14c));
    }
    if (*(char *)(param_1 + 0x4e6) == '\0') {
LAB_00787961:
      local_121 = '\0';
    }
    else {
      cVar4 = FUN_0075d9c0(0x271,0xffffffff);
      local_121 = '\x01';
      if (cVar4 != '\0') goto LAB_00787961;
    }
    local_160 = param_1 + 0x12;
    iVar9 = 0;
    local_14c = param_1 + 0x48e;
    do {
      if (*(char *)local_14c == '\0') {
        puVar44 = local_f0;
        FUN_0040b200(iVar9);
        FUN_004071f0(puVar44);
        ppbVar16 = param_1 + 0x540;
        if (local_121 == '\0') {
          uVar8 = FUN_00a10510(local_144,param_1 + 0x53e);
          FUN_0040b200(iVar9);
          FUN_007dd3b0(uVar8);
          FUN_00a10510(local_198,param_1 + 0x540);
          uVar8 = FUN_00a10510(local_24 + 8,&local_16c);
          FUN_0040b200(iVar9);
          FUN_007dd3b0(uVar8);
          iVar10 = FUN_0040b200(iVar9);
          *(float *)(iVar10 + 0x34) = (float)local_188 * *(float *)(iVar10 + 0x34);
          iVar10 = FUN_0040b200(iVar9);
          *(float *)(iVar10 + 0x38) = (float)local_18c * *(float *)(iVar10 + 0x38);
          local_138 = (byte **)(((float)param_1[0x541] - (float)param_1[0x53f]) * DAT_00baa6bc +
                               (float)local_154 * DAT_00baa7e8);
          iVar10 = FUN_0040b200(iVar9);
          *(float *)(iVar10 + 0x44) = (float)local_138 + *(float *)(iVar10 + 0x44);
          goto LAB_00787b47;
        }
LAB_00787a31:
        FUN_0040b200(iVar9);
        FUN_007dd3b0(ppbVar16);
        puVar11 = &DAT_00c7b640;
        FUN_0040b200(iVar9);
        FUN_007dd3b0(puVar11);
      }
      else {
        ppbVar16 = local_98;
        FUN_0040b200(iVar9);
        FUN_004071f0(ppbVar16);
        ppbVar16 = param_1 + 0x53e;
        FUN_0040b200(iVar9);
        FUN_007dd3b0(ppbVar16);
        if (local_121 != '\0') {
          ppbVar16 = (byte **)&DAT_00c3793c;
          goto LAB_00787a31;
        }
        iVar10 = FUN_0040b200(iVar9);
        *(float *)(iVar10 + 0x34) = (float)local_148 * *(float *)(iVar10 + 0x34);
        iVar10 = FUN_0040b200(iVar9);
        *(float *)(iVar10 + 0x38) = (float)_local_128 * *(float *)(iVar10 + 0x38);
LAB_00787b47:
        iVar10 = FUN_0040b200(iVar9);
        auVar28 = ZEXT416(local_130);
        *(byte ***)(iVar10 + 0x40) = local_130;
      }
      iVar9 = iVar9 + 1;
      local_14c = local_14c + 4;
    } while (iVar9 < 0xf);
    FUN_005cbe20();
    local_8 = 7;
    local_154 = (byte **)0x0;
    do {
      local_130 = param_1 + (int)local_154 * 4 + 0x48b;
      pbVar18 = *local_130;
      if (-1 < (int)pbVar18) {
        if (*(char *)(local_130 + 3) == '\0') {
          FUN_005cbd10(pbVar18);
          if ((byte **)0x3 < local_154) {
            uVar8 = FUN_00407410();
            FUN_004071c0(uVar8);
            goto LAB_00787c20;
          }
          uVar8 = FUN_00407410();
          FUN_004073d0(uVar8);
        }
        else {
          FUN_005cbd10(pbVar18);
          uVar8 = FUN_00407410();
          FUN_004071c0(uVar8);
LAB_00787c20:
          uVar8 = FUN_004072e0();
          FUN_004073d0(uVar8);
          param_1 = local_134;
        }
        FUN_005cbd10(*local_130);
        uVar8 = FUN_00417200();
        FUN_00420170(uVar8);
        ppbVar16 = local_130;
        FUN_005cbd10(*local_130);
        local_14c = (byte **)FUN_0040b200(ppbVar16[1]);
        iVar9 = FUN_0040b200(local_154);
        FUN_007dd3b0(iVar9 + 0x34);
        iVar9 = FUN_0040b200(local_154);
        ppbVar16 = local_14c;
        FUN_007dd3b0(iVar9 + 0x40);
        ppbVar13 = local_130;
        if (local_154 == (byte **)0x0) {
          ppbVar16[0x23] = (byte *)((uint)ppbVar16[0x23] | 1);
        }
        FUN_004e45c0(local_24 + 8,local_130);
        if (((*(char *)(ppbVar13 + 3) != '\0') &&
            (iVar9 = FUN_005cbd10(*ppbVar13), *(int *)(iVar9 + 0x114) != 0)) &&
           ((iVar9 = FUN_005cbd10(*ppbVar13), **(int **)(iVar9 + 0x114) == 0 &&
            (iVar9 = FUN_005cbd10(*ppbVar13), *(int *)(*(int *)(iVar9 + 0x114) + 4) == 0x5a)))) {
          local_140 = (byte **)0x0;
          iVar9 = FUN_0042d040();
          if (iVar9 != 0) {
            FUN_0042d040();
            local_140 = (byte **)FUN_0067efb0();
          }
          cVar4 = FUN_007bf490();
          if (cVar4 != '\0') {
            local_140 = (byte **)0x0;
          }
          FUN_005cbd10(*ppbVar13);
          local_138 = (byte **)((float)(int)local_140 * DAT_00baa9c4);
          iVar9 = FUN_0040b200(ppbVar13[1]);
          auVar28 = ZEXT416(local_138);
          *(byte ***)(iVar9 + 0x94) = local_138;
        }
      }
      local_154 = (byte **)((int)local_154 + 1);
    } while (local_154 < &DAT_0000000f);
    cVar4 = FUN_00417430(0x4000,0);
    if (cVar4 == '\0') {
      FUN_0042c770(&local_140);
      uVar8 = FUN_004561a0(&local_14c);
      cVar4 = FUN_0042c710(uVar8);
      if (cVar4 != '\0') {
        local_160 = param_1 + 0x488;
        do {
          puVar11 = (undefined4 *)FUN_005cba30();
          local_138 = (byte **)FUN_005cbd10(*puVar11);
          FUN_005cd460(8);
          HELPER_ANM2_Update();
          FUN_0041e470();
          cVar4 = FUN_004073a0();
          if (cVar4 == '\0') {
            FUN_0041e470();
            FUN_00452bf0(local_5c + 1);
            local_8 = CONCAT31(local_8._1_3_,8);
            local_15c = (char *)((uint)local_15c | 1);
            local_154 = (byte **)local_15c;
            iVar9 = FUN_006da7d0(0,7,"SubAnim");
            _local_128 = (byte **)CONCAT13(1,local_128);
            if (iVar9 != 0) goto LAB_00787ec4;
          }
          else {
LAB_00787ec4:
            _local_128 = (byte **)((uint)_local_128 & 0xffffff);
          }
          local_8 = 7;
          if (((uint)local_15c & 1) != 0) {
            local_15c = (char *)((uint)local_15c & 0xfffffffe);
            thunk_FUN_0040d040();
          }
          if (cStack_125 != '\0') {
            FUN_0041e470();
            iVar9 = FUN_004073c0();
            if (iVar9 != 0) {
              uVar7 = 0;
              iVar9 = FUN_00440e40();
              if (iVar9 != 0) {
                do {
                  FUN_0041e470();
                  ppbVar16 = (byte **)FUN_0040a220(uVar7);
                  local_138 = ppbVar16;
                  if (ppbVar16 != (byte **)0x0) {
                    FUN_0040b200(uVar7);
                    FUN_007dd3b0(ppbVar16);
                    ppbVar16 = local_138 + 6;
                    FUN_0040b200(uVar7);
                    FUN_00a10570(ppbVar16);
                  }
                  uVar7 = uVar7 + 1;
                  uVar12 = FUN_00440e40();
                } while (uVar7 < uVar12);
              }
            }
          }
          FUN_006518f0(&local_130,0);
          uVar8 = FUN_004561a0(&local_14c);
          cVar4 = FUN_0042c710(uVar8);
          param_1 = local_134;
        } while (cVar4 != '\0');
      }
    }
    local_8 = 0xffffffff;
    FUN_00424420();
  }
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    if ((param_1[0xb] == (byte *)0x0) && (*(char *)((int)param_1 + 0x20a9) == '\0')) {
      iVar9 = FUN_00930980(0x11a);
      if (iVar9 != 0) {
        FUN_0042ca00();
        iVar10 = HELPER_ItemConfig_GetCollectible(0x11a);
        local_160 = *(byte ***)(iVar10 + 0x78);
        local_138 = (byte **)0x0;
        cVar4 = FUN_00417430(0x4000,0);
        ppbVar16 = local_138;
        if (cVar4 != '\0') {
          ppbVar16 = DAT_00baa2d0;
        }
        local_14c = (byte **)((float)DAT_00baa454 -
                             (((float)*(int *)(iVar9 + 8) - (float)ppbVar16) - (float)DAT_00baa454)
                             / ((float)(int)local_160 - DAT_00baa630));
        auVar28 = ZEXT416(local_14c);
        FUN_00a10480(local_24 + 8,param_1 + 0xcf);
        FUN_00a104e0(local_198,&local_14c);
        uVar8 = FUN_00a104e0(&local_16c,&local_14c);
        FUN_00a10450(uVar8);
        FUN_007dd3b0(&DAT_00c7b640);
        FUN_00421780();
        iVar10 = FUN_004176f0();
        if ((iVar10 == 0x21) && (*(int *)(iVar9 + 8) == 1)) {
          uVar8 = FUN_006eef60();
          HELPER_Entity_SpawnRelay(1000,0x3d,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar8);
          FUN_006a92a0(param_1);
          auVar28 = ZEXT416(param_1[0xdc]);
          FUN_00435ef0(param_1[0xdc],0x42b40000);
          FUN_00435e90(10);
        }
      }
      uVar5 = FUN_009305f0(0x146);
      _local_128 = (byte **)CONCAT13(uVar5,local_128);
      cVar4 = HELPER_Player_HasCollectible(0x3b,0);
      if ((cVar4 != '\0') && ((cVar4 = FUN_009305f0(0x11a), cVar4 != '\0' || (cStack_125 != '\0'))))
      {
        iVar9 = HELPER_Entity_TimeoutCrossed();
        if (iVar9 != 0) {
          pcVar3 = *(code **)(*param_1 + 0x3c);
          uVar8 = FUN_00435b50();
          (*pcVar3)(uVar8,4,1,1,1);
        }
        iVar9 = HELPER_Entity_TimeoutCrossed();
        if (iVar9 != 0) {
          FUN_00a10420(&local_16c,param_1 + 0xd3);
          local_138 = (byte **)FUN_0040b430("extra");
          if (local_138 != (byte **)0x0) {
            HELPER_Effect_SpriteAccessor();
            uVar8 = FUN_00452be0();
            iVar9 = FUN_0040a220(uVar8);
            if (iVar9 != 0) {
              FUN_0067f2e0();
              uVar8 = FUN_00a0fe90();
              FUN_00a10420(&local_184,uVar8);
              uVar8 = FUN_00a10510(local_17c,param_1 + 0x53c);
              FUN_00a10450(uVar8);
            }
          }
          uVar8 = FUN_006eef60();
          local_138 = (byte **)0x3dcccccd;
          FUN_00a104e0(local_24 + 8,&local_138);
          FUN_0067efe0();
          auVar29 = auVar28._4_12_;
          fVar25 = auVar28._0_4_ * DAT_00baa7a4;
          uVar43 = FUN_00a0fe90();
          uVar43 = FUN_00a10420(&local_184,uVar43);
          param_1 = local_134;
          local_160 = (byte **)HELPER_Entity_SpawnRelay
                                         (1000,0x3b,&local_16c,uVar43,local_134,0,uVar8);
          FUN_00a114d0(2,0);
          FUN_00435dd0();
          puVar46 = local_5c + 2;
          FUN_0040b200(0);
          FUN_00a115c0(puVar46);
          local_14c = (byte **)FUN_004238f0(0x3f800000);
          FUN_00435dd0();
          ppbVar16 = local_14c;
          FUN_0040b200(0);
          FUN_004071f0(ppbVar16);
          FUN_0067efe0();
          fVar25 = fVar25 * DAT_00baa81c + DAT_00baa630;
          FUN_00435eb0(fVar25);
          iVar9 = HELPER_Global_ModuloCountdown();
          FUN_00435e90(iVar9 + 10);
          FUN_0067efe0();
          auVar28._0_4_ = (byte **)(fVar25 * DAT_00baa1f8 + DAT_00baa280);
          auVar28._4_12_ = auVar29;
          local_14c = auVar28._0_4_;
          FUN_00a104e0(local_17c,&local_14c);
          uVar8 = FUN_00a10510(&local_174,&DAT_00c3793c);
          FUN_0042d9b0(uVar8);
          FUN_00440e90(0xfffff830);
        }
        iVar9 = HELPER_Entity_TimeoutCrossed();
        if (iVar9 != 0) {
          FUN_00424530();
          iVar9 = FUN_004360f0();
          local_14c = (byte **)((float)iVar9 * DAT_00baa198 + DAT_00baa630);
          local_138 = (byte **)((float)param_1[0xdc] + DAT_00baa904);
          auVar28 = ZEXT416(local_138);
          FUN_00407480();
          FUN_00428a60();
          FUN_0041a790(local_24,param_1 + 0xcf,10);
          local_8 = 9;
          ppbVar16 = (byte **)0x0;
          local_130 = (byte **)0x0;
          iVar9 = FUN_004176f0();
          if (iVar9 != 0) {
            do {
              FUN_00417620(ppbVar16);
              cVar4 = HELPER_Entity_DamageFilter(0);
              if ((cVar4 == '\0') ||
                 (puVar11 = (undefined4 *)FUN_00417620(ppbVar16), (byte **)*puVar11 == param_1)) {
LAB_0078863e:
                FUN_00417620(ppbVar16);
                cVar4 = FUN_00431540();
                if ((cVar4 != '\0') && (cStack_125 == '\0')) {
                  FUN_00417620(ppbVar16);
                  cVar4 = HELPER_Effect_PlayerGateA();
                  if (cVar4 == '\0') {
                    FUN_00417620(ppbVar16);
                    uVar7 = FUN_00417830();
                    if ((uVar7 & 0x80000000) == 0) {
                      FUN_00417620(ppbVar16);
                      FUN_00652f80(param_1);
                    }
                  }
                }
              }
              else {
                FUN_00417620(ppbVar16);
                cVar4 = FUN_00417430(0x20000000,0);
                if (cVar4 != '\0') goto LAB_0078863e;
                ppiVar19 = (int **)FUN_00417620(ppbVar16);
                pcVar3 = *(code **)(**ppiVar19 + 0x20);
                FUN_00431310(local_134);
                auVar28 = ZEXT416(local_14c);
                (*pcVar3)(local_14c,0x40000000,0,local_68,0x1e);
                FUN_00417620(local_130);
                param_1 = local_134;
                FUN_00431310(local_134);
                FUN_006ae280(local_68,0x96,0,0);
                ppbVar16 = local_130;
              }
              ppbVar16 = (byte **)((int)ppbVar16 + 1);
              local_130 = ppbVar16;
              ppbVar13 = (byte **)FUN_004176f0();
            } while (ppbVar16 < ppbVar13);
          }
          local_8 = 0xffffffff;
          FUN_004175b0();
        }
      }
      cVar4 = FUN_009305f0(0x2c1);
      if ((cVar4 != '\0') &&
         ((((cVar4 = FUN_00a209c0(4,param_1[0x586],0), cVar4 != '\0' ||
            (cVar4 = FUN_00a209c0(6,param_1[0x586],0), cVar4 != '\0')) ||
           (cVar4 = FUN_00a209c0(5,param_1[0x586],0), cVar4 != '\0')) ||
          (cVar4 = FUN_00a209c0(7,param_1[0x586],0), cVar4 != '\0')))) {
        FUN_009304a0(0x2c1,0xffffffff);
      }
    }
    FUN_0079f3c0();
    if (0 < (int)param_1[0x4ef]) {
      param_1[0x4ef] = param_1[0x4ef] + -1;
    }
    if (0 < (int)param_1[0x105]) {
      param_1[0x105] = param_1[0x105] + -1;
    }
    if (0 < (int)param_1[0x106]) {
      param_1[0x106] = param_1[0x106] + -1;
    }
    if (0 < (int)param_1[0x621]) {
      param_1[0x621] = param_1[0x621] + -1;
    }
    cVar4 = FUN_00417430(0x4000,0);
    if (cVar4 == '\0') {
      if (param_1[0xbb3] != (byte *)0x0) {
        param_1[0xbb3] = param_1[0xbb3] + -1;
      }
      if ((*(short *)(param_1 + 0xbb2) < 0) &&
         (sVar6 = *(short *)(param_1 + 0xbb2) + 1, *(short *)(param_1 + 0xbb2) = sVar6, sVar6 == 0))
      {
        FUN_005b17c0(0x197);
        pbVar18 = (byte *)FUN_007e9020(4);
        param_1[0x64b] = pbVar18;
        FUN_009302e0(0x197,1,1);
        FUN_0042ca00();
        uVar43 = 0;
        uVar8 = FUN_0072fda0(0x11);
        FUN_0075d1d0(uVar8,uVar43);
        FUN_007c7c60();
      }
    }
    if (0 < (int)param_1[0x6ba]) {
      param_1[0x6ba] = param_1[0x6ba] + -1;
    }
    if ((0 < (int)param_1[0x630]) &&
       (pbVar18 = param_1[0x630] + -1, param_1[0x630] = pbVar18, pbVar18 == (byte *)0x0)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 1);
      FUN_00763570();
    }
    if ((0 < (int)param_1[0x631]) &&
       (pbVar18 = param_1[0x631] + -1, param_1[0x631] = pbVar18, pbVar18 == (byte *)0x0)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 2);
      FUN_00763570();
    }
    if ((0 < (int)param_1[0x632]) &&
       (pbVar18 = param_1[0x632] + -1, param_1[0x632] = pbVar18, pbVar18 == (byte *)0x0)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 0x10);
      FUN_00763570();
    }
    if ((0 < (int)param_1[0x633]) &&
       (pbVar18 = param_1[0x633] + -1, param_1[0x633] = pbVar18, pbVar18 == (byte *)0x0)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 0xc);
      FUN_00763570();
    }
    if ((0 < (int)param_1[0x634]) &&
       (pbVar18 = param_1[0x634] + -1, param_1[0x634] = pbVar18, pbVar18 == (byte *)0x0)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 0x400);
      FUN_00763570();
    }
    if ((0 < (int)param_1[0x635]) &&
       (pbVar18 = param_1[0x635] + -1, param_1[0x635] = pbVar18, pbVar18 == (byte *)0x0)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 0x800);
      FUN_00763570();
    }
    if ((0 < (int)param_1[0x636]) &&
       (pbVar18 = param_1[0x636] + -1, param_1[0x636] = pbVar18, pbVar18 == (byte *)0x0)) {
      param_1[0x55d] = (byte *)((uint)param_1[0x55d] | 0x800);
      FUN_00763570();
    }
    if (0 < (int)param_1[0x637]) {
      param_1[0x637] = param_1[0x637] + -1;
    }
    if (0 < (int)param_1[0x638]) {
      param_1[0x638] = param_1[0x638] + -1;
    }
    local_122 = '\0';
    cVar4 = FUN_007bf490();
    if (cVar4 == '\0') {
      if (local_12a == '\0') {
        cVar4 = FUN_007ab110();
        local_129 = '\x01';
        if (cVar4 != '\0') goto LAB_00788a54;
      }
LAB_00788a4d:
      local_129 = '\0';
    }
    else {
      local_14c = (byte **)FUN_0040b1a0(0);
      if (local_14c != (byte **)0x0) {
        local_122 = *(char *)(local_14c + 3);
        uVar7 = 0;
        local_138 = param_1 + 0x3fe;
        iVar9 = FUN_00440e40();
        if (iVar9 != 0) {
          do {
            uVar8 = FUN_00417200();
            uVar8 = FUN_00a10510(local_24 + 8,uVar8);
            FUN_0040b200(uVar7);
            FUN_007dd3b0(uVar8);
            iVar9 = FUN_0040b200(uVar7);
            uVar7 = uVar7 + 1;
            *(char *)(iVar9 + 0x74) = local_122;
            uVar12 = FUN_00440e40();
            param_1 = local_134;
          } while (uVar7 < uVar12);
        }
      }
      if ((*(char *)(param_1 + 0x5f6) == '\0') || (local_122 != '\0')) {
        FUN_00407480();
        iVar9 = FUN_00813ce0();
        if (iVar9 != 0) goto LAB_00788a4d;
      }
      local_129 = '\x01';
    }
LAB_00788a54:
    cVar4 = FUN_007ab110();
    if (cVar4 == '\0') {
      cVar4 = FUN_007bf490();
      _local_128 = (byte **)((uint)_local_128 & 0xffffff);
      if (cVar4 != '\0') goto LAB_00788a71;
    }
    else {
LAB_00788a71:
      _local_128 = (byte **)CONCAT13(1,local_128);
    }
    local_12a = *(char *)(param_1 + 0x55c);
    local_121 = '\x01';
    cVar4 = FUN_0075d9c0(0x271,1);
    if (cVar4 != '\0') {
      _local_128 = (byte **)CONCAT13(1,local_128);
      local_12a = '\0';
      FUN_00420ae0();
      cVar4 = FUN_0082ee30();
      if (cVar4 == '\0') {
        FUN_00428b50();
        cVar4 = FUN_0082ee30();
        local_121 = '\x01';
        if (cVar4 != '\0') goto LAB_00788ade;
      }
      else {
LAB_00788ade:
        local_121 = '\0';
      }
      local_122 = '\0';
      *(undefined *)(param_1 + 0x4e6) = 0;
    }
    cVar4 = FUN_00417430(0x4000,0);
    if ((cVar4 == '\0') && (cStack_125 != '\0')) {
      if (local_129 != '\0') {
        FUN_0075e1d0();
      }
      local_148 = "WalkDown";
      pcVar22 = "PickupWalkDown";
      if (local_122 != '\0') {
        local_148 = "PickupWalkDown";
      }
      local_154 = DAT_00baa454;
      FUN_00779900(&local_174);
      cVar4 = FUN_00a10600(&DAT_00c7b640);
      if (cVar4 == '\0') {
        ppbVar16 = local_174;
        FUN_0041d510();
        local_138 = ppbVar16;
        if (local_122 == '\0') {
          ppbVar16 = local_170;
          FUN_0041d510();
          if ((float)local_138 <= (float)ppbVar16) {
            pcVar22 = "WalkDown";
            pcVar20 = (char *)&DAT_00b1e020;
            ppbVar16 = local_170;
          }
          else {
            pcVar22 = "WalkRight";
            pcVar20 = "WalkLeft";
            ppbVar16 = local_174;
          }
        }
        else {
          ppbVar16 = local_170;
          FUN_0041d510();
          if ((float)local_138 <= (float)ppbVar16) {
            pcVar20 = "PickupWalkUp";
            ppbVar16 = local_170;
          }
          else {
            pcVar22 = "PickupWalkRight";
            pcVar20 = "PickupWalkLeft";
            ppbVar16 = local_174;
          }
        }
        local_140 = (byte **)pcVar22;
        if ((float)ppbVar16 <= DAT_00ba9fe4) {
          local_140 = (byte **)pcVar20;
        }
        if (((param_1[0xb] == (byte *)0x0) && (*(char *)((int)param_1 + 0x20a9) == '\0')) &&
           (local_121 != '\0')) {
          HELPER_0040a380_AnimationActionA(local_140,0);
        }
        local_148 = (char *)(param_1 + 0x48e);
        local_120[0] = (byte **)&DAT_0000000f;
        do {
          if (((-1 < (int)*(byte **)((int)local_148 + -0xc)) && (*local_148 != '\0')) &&
             ((iVar9 = FUN_005cbd10(*(byte **)((int)local_148 + -0xc)), param_1[0xb] != (byte *)0x1
              && (*(char *)((int)param_1 + 0x20a9) == '\0')))) {
            if (((*(int *)(iVar9 + 0x114) != 0) && (cVar4 = FUN_00722c80(), cVar4 != '\0')) &&
               (*(int *)(*(int *)(iVar9 + 0x114) + 4) == 0x4c)) {
              local_154 = (byte **)((float)local_154 + (float)local_154);
            }
            if ((local_122 == '\0') ||
               ((cVar4 = FUN_00722c80(), cVar4 != '\0' &&
                (*(int *)(*(int *)(iVar9 + 0x114) + 4) == 0x5a)))) {
              if ((*(char *)(iVar9 + 0x11c) == '\0') &&
                 (HELPER_0040a380_AnimationActionA(local_140,0), *(char *)(iVar9 + 0x11e) != '\0'))
              {
                FUN_0040c340(local_140);
                local_8 = 0x11;
                uVar8 = FUN_0060c790("_Overlay");
                local_8 = CONCAT31(local_8._1_3_,0x12);
                FUN_0040a920(uVar8,0);
                thunk_FUN_0040d040();
                local_8 = 0xffffffff;
                thunk_FUN_0040d040();
              }
            }
            else {
              FUN_0040a910();
            }
          }
          local_148 = (char *)((int)local_148 + 0x10);
          local_120[0] = (byte **)((int)local_120[0] + -1);
        } while (local_120[0] != (byte **)0x0);
      }
      else {
        if (((param_1[0xb] == (byte *)0x0) && (*(char *)((int)param_1 + 0x20a9) == '\0')) &&
           (local_121 != '\0')) {
          if ((local_12a == '\0') || (param_1[0x4f0] == &DAT_00000023)) {
            FUN_0040a6e0(local_148,0);
          }
          else {
            HELPER_0040a380_AnimationActionA(local_148,0);
          }
        }
        local_130 = param_1 + 0x48e;
        _local_128 = (byte **)0xf;
        do {
          if (((-1 < (int)local_130[-3]) && (*(char *)local_130 != '\0')) &&
             ((iVar9 = FUN_005cbd10(local_130[-3]), param_1[0xb] != (byte *)0x1 &&
              (*(char *)((int)param_1 + 0x20a9) == '\0')))) {
            if (((*(int *)(iVar9 + 0x114) != 0) && (cVar4 = FUN_00722c80(), cVar4 != '\0')) &&
               (*(int *)(*(int *)(iVar9 + 0x114) + 4) == 0x4c)) {
              local_154 = (byte **)((float)local_154 + (float)local_154);
            }
            if (*(char *)(iVar9 + 0x11c) == '\0') {
              if ((local_122 == '\0') ||
                 ((cVar4 = FUN_00722c80(), cVar4 != '\0' &&
                  (*(int *)(*(int *)(iVar9 + 0x114) + 4) == 0x5a)))) {
                if ((**(int **)(iVar9 + 0x114) == 3) && ((*(int **)(iVar9 + 0x114))[1] == 0x271)) {
                  FUN_0040a6e0("WalkIdle",0);
                }
                else {
                  if (local_12a == '\0') {
                    FUN_0040c340(local_148);
                    local_8 = 10;
                    FUN_0060c790("_Idle");
                    local_8 = CONCAT31(local_8._1_3_,0xc);
                    thunk_FUN_0040d040();
                    iVar10 = FUN_0040bcb0(local_5c + 1);
                    if (iVar10 == 0) {
                      FUN_0040a6e0(local_148,0);
                    }
                    else {
                      FUN_0040a360(local_5c + 1);
                    }
                    local_8 = 0xffffffff;
                    thunk_FUN_0040d040();
                  }
                  else {
                    HELPER_0040a380_AnimationActionA(local_148,0);
                  }
                  if (*(char *)(iVar9 + 0x11e) != '\0') {
                    FUN_0040c340(local_148);
                    if (local_12a == '\0') {
                      local_8 = 0xf;
                      uVar8 = FUN_0060c790("_Overlay");
                      local_8 = CONCAT31(local_8._1_3_,0x10);
                      FUN_0040a690(uVar8,0);
                    }
                    else {
                      local_8 = 0xd;
                      uVar8 = FUN_0060c790("_Overlay");
                      local_8 = CONCAT31(local_8._1_3_,0xe);
                      FUN_0040a920(uVar8,0);
                    }
                    thunk_FUN_0040d040();
                    local_8 = 0xffffffff;
                    thunk_FUN_0040d040();
                  }
                }
              }
              else {
                FUN_0040a910();
              }
            }
          }
          local_130 = local_130 + 4;
          _local_128 = (byte **)((int)_local_128 + -1);
        } while (_local_128 != (byte **)0x0);
        _local_128 = (byte **)0x0;
      }
      auVar28 = ZEXT416(DAT_00baa454);
      local_140 = DAT_00baa454;
      cVar4 = FUN_0040a4d0(&DAT_00b1a4ec);
      ppbVar16 = local_140;
      if (cVar4 != '\0') {
        fVar24 = (float10)FUN_00a0fea0();
        local_120[0] = (byte **)(float)fVar24;
        ppbVar16 = local_140;
        if ((float)local_120[0] < DAT_00baa6a4) {
          ppbVar16 = local_120[0];
          FUN_00a15640(0x3f800000);
        }
        auVar28 = ZEXT416(local_120[0]);
        if (DAT_00baa7a4 < (float)local_120[0]) {
          FUN_00a15640(0x40000000);
          ppbVar16 = auVar28._0_4_;
        }
        if (0 < (int)param_1[0x597]) {
          uVar8 = 0x3f800000;
          fVar24 = (float10)FUN_00a10180(param_1 + 0xd8);
          local_138 = (byte **)(float)fVar24;
          FUN_00a15640(uVar8);
          fVar24 = (float10)FUN_00a0fea0();
          local_138 = (byte **)(float)(fVar24 * (float10)(float)local_138);
          ppbVar13 = DAT_00baa2d0;
          if ((float)DAT_00baa2d0 <= (float)local_138) {
            ppbVar13 = local_138;
          }
          auVar28 = ZEXT416(ppbVar13);
          ppbVar16 = DAT_00baa75c;
          if ((float)ppbVar13 <= (float)DAT_00baa75c) {
            ppbVar16 = ppbVar13;
          }
        }
      }
      local_140 = (byte **)((float)ppbVar16 * (float)local_154);
      FUN_00440e50(local_140);
      ppbVar16 = param_1 + 0x48e;
      local_120[0] = (byte **)&DAT_0000000f;
      do {
        if ((-1 < (int)ppbVar16[-3]) && (*(char *)ppbVar16 != '\0')) {
          FUN_005cbd10(ppbVar16[-3]);
          auVar28 = ZEXT416(local_140);
          FUN_00440e50(local_140);
        }
        ppbVar16 = ppbVar16 + 4;
        local_120[0] = (byte **)((int)local_120[0] + -1);
      } while (local_120[0] != (byte **)0x0);
    }
    cVar4 = FUN_0040c2d0();
    if ((cVar4 == '\0') && (cVar4 = FUN_007ab110(), cVar4 != '\0')) {
      uVar8 = FUN_0040d0c0();
      FUN_007abe20(uVar8);
      FUN_0040c2f0();
    }
    local_14c = param_1 + 0x542;
    cVar4 = FUN_009305f0(0x4d);
    if (((cVar4 != '\0') || (cVar4 = FUN_009305f0(0x5d), cVar4 != '\0')) ||
       ((cVar4 = FUN_009305f0(299), cVar4 != '\0' &&
        (iVar9 = FUN_00930980(299), *(int *)(iVar9 + 8) != 0)))) {
      FUN_00407480();
      FUN_00a10030(local_24 + 8);
      local_138 = (byte **)0x42200000;
      uVar8 = FUN_00a104e0(local_198,&local_138);
      uVar8 = FUN_00a10420(&local_16c,uVar8);
      local_120[0] = (byte **)FUN_00812c90(uVar8);
      param_1 = local_134;
      if (-1 < (int)local_120[0]) {
        FUN_00407480();
        param_1 = local_134;
        FUN_00431310(local_134);
        FUN_00813b30(local_120[0],1,local_68);
      }
    }
    if (((uint)param_1[0x5a] & 0x80) != 0) {
      auVar27 = ZEXT416(param_1[0xeb]);
      FUN_00431260();
      auVar28._4_12_ = auVar27._4_12_;
      auVar28._0_4_ = (byte **)(auVar27._0_4_ * (float)param_1[0xdb]);
      param_1[0xdb] = (byte *)auVar28._0_4_;
    }
    FUN_00407480();
    iVar9 = FUN_0043ef20();
    if ((iVar9 == 0x37) &&
       (auVar28 = ZEXT416((uint)DAT_00baab14),
       (float)param_1[0xd0] <= DAT_00baab14 && DAT_00baab14 != (float)param_1[0xd0])) {
      param_1[0xd0] = (byte *)0x43a00000;
      cVar4 = FUN_009305f0(0x251);
      if (cVar4 != '\0') {
        FUN_009304a0(0x251,0xffffffff);
        param_1[0x7a5] = (byte *)0xffffffff;
        FUN_007c8240();
        uVar43 = 0;
        uVar8 = FUN_00a0fe90(0);
        HELPER_Entity_AddVelocity(uVar8,uVar43);
      }
      cVar4 = FUN_009305f0(0x82);
      if ((cVar4 != '\0') || (cVar4 = FUN_009305f0(0xb5), cVar4 != '\0')) {
        param_1[0x622] = (byte *)0x0;
        FUN_009304a0(0x82,0xffffffff);
        FUN_009304a0(0xb5,0xffffffff);
        FUN_00703670(8);
        uVar43 = 0;
        uVar8 = FUN_00a0fe90(0);
        HELPER_Entity_AddVelocity(uVar8,uVar43);
      }
    }
    cVar4 = FUN_00a10630(&DAT_00c7b640);
    if (cVar4 != '\0') {
      local_14c = (byte **)0x40000000;
      fVar24 = (float10)FUN_00a0fea0();
      local_120[0] = (byte **)0x3f800000;
      local_138 = (byte **)(float)fVar24;
      HELPER_FloatBound();
      pfVar14 = (float *)FUN_0040c780();
      local_160 = (byte **)(*pfVar14 * (float)DAT_00baa2d0);
      FUN_00a10540(&local_160);
      fVar24 = (float10)FUN_00a0fed0();
      auVar28 = ZEXT416((uint)DAT_00baa06c);
      local_138 = (byte **)(float)fVar24;
      if ((float)local_138 < DAT_00baa06c) {
        FUN_007dd3b0(&DAT_00c7b640);
      }
    }
    FUN_007b9aa0();
    if (*(char *)((int)param_1 + 0x173) != '\0') goto LAB_007894ef;
  }
  else {
LAB_007894ef:
    ppbVar16 = (byte **)FUN_007828f0();
    local_140 = ppbVar16;
    FUN_00420ae0();
    cVar4 = FUN_0082ee30();
    if (cVar4 == '\0') {
      FUN_00428b50();
      local_12a = FUN_0082ee30();
      if (local_12a != '\0') goto LAB_00789743;
      HELPER_Effect_SpriteAccessor();
      pbVar18 = (byte *)FUN_00407380();
      do {
        bVar2 = *pbVar18;
        bVar23 = bVar2 < *(byte *)ppbVar16;
        if (bVar2 != *(byte *)ppbVar16) {
LAB_00789567:
          uVar7 = -(uint)bVar23 | 1;
          goto LAB_0078956c;
        }
        if (bVar2 == 0) break;
        bVar2 = pbVar18[1];
        bVar23 = bVar2 < *(byte *)((int)ppbVar16 + 1);
        if (bVar2 != *(byte *)((int)ppbVar16 + 1)) goto LAB_00789567;
        pbVar18 = pbVar18 + 2;
        ppbVar16 = (byte **)((int)ppbVar16 + 2);
      } while (bVar2 != 0);
      uVar7 = 0;
LAB_0078956c:
      if (uVar7 != 0) {
        *(undefined *)((int)param_1 + 0x171) = 1;
        FUN_007abe20(local_140);
        iVar9 = HELPER_Player_TrinketMultiplier(0x15);
        if (iVar9 < 1) {
LAB_007895b1:
          iVar9 = HELPER_Player_TrinketMultiplier(0x15);
          if (1 < iVar9) {
            uVar7 = FUN_004074b0();
            uVar7 = uVar7 & 0x80000003;
            if ((int)uVar7 < 0) {
              uVar7 = (uVar7 - 1 | 0xfffffffc) + 1;
            }
            if (uVar7 == 2) goto LAB_007895db;
          }
        }
        else {
          uVar7 = FUN_004074b0();
          uVar7 = uVar7 & 0x80000003;
          if ((int)uVar7 < 0) {
            uVar7 = (uVar7 - 1 | 0xfffffffc) + 1;
          }
          if (uVar7 != 3) goto LAB_007895b1;
LAB_007895db:
          FUN_00930330(0x17,1,1);
        }
        FUN_007d2470(&DAT_00c7b640);
        iVar9 = FUN_0040b430("ghost");
        if (iVar9 != 0) {
          *(undefined *)(iVar9 + 0x74) = 1;
        }
        if ((((param_1[0xef] == (byte *)0x0) && (param_1[0xb] == (byte *)0x0)) &&
            (*(char *)((int)param_1 + 0x20a9) == '\0')) && (cVar4 = FUN_007cbb60(), cVar4 == '\0'))
        {
          ppbVar16 = (byte **)0x0;
          local_120[0] = (byte **)0x0;
          iVar9 = FUN_004178d0();
          if (iVar9 != 0) {
            do {
              ppbVar16 = (byte **)FUN_00417870(ppbVar16);
              if ((((ppbVar16 != param_1) &&
                   (ppbVar13 = (byte **)FUN_00417820(), ppbVar16 != ppbVar13)) &&
                  ((iVar9 = FUN_0042a260(), iVar9 == 0 && (iVar9 = FUN_00417270(), iVar9 == 0)))) &&
                 ((cVar4 = HELPER_Effect_PlayerGateA(), cVar4 == '\0' ||
                  (cVar4 = FUN_007cbb60(), cVar4 != '\0')))) goto LAB_007896f1;
              ppbVar16 = (byte **)((int)local_120[0] + 1);
              local_120[0] = ppbVar16;
              ppbVar13 = (byte **)FUN_004178d0();
            } while (ppbVar16 < ppbVar13);
          }
          FUN_00417850();
          cVar4 = FUN_00429550();
          if (cVar4 == '\0') {
            FUN_00959130();
            FUN_0095a680();
          }
        }
LAB_007896f1:
        if ((((param_1[0xb] == (byte *)0x1) && (iVar9 = FUN_006dae00(), iVar9 == 0x3b)) &&
            (param_1[0xef] != (byte *)0x0)) && (cVar4 = FUN_004173b0(), cVar4 != '\0')) {
          FUN_004361c0();
          FUN_00930330(0xb4,1,1);
        }
        FUN_007dd3b0(&DAT_00c7b640);
      }
    }
    else {
LAB_00789743:
      local_12a = '\x01';
    }
    auVar28 = ZEXT416((byte *)((float)param_1[0xdb] * DAT_00baa304));
    param_1[0xdb] = (byte *)((float)param_1[0xdb] * DAT_00baa304);
    if ((param_1[0x4f0] == (byte *)0x13) || (param_1[0x4f0] == &DAT_00000014)) {
      cVar4 = FUN_006f0040();
      local_121 = '\x01';
      if (cVar4 == '\0') goto LAB_00789784;
    }
    else {
LAB_00789784:
      local_121 = '\0';
    }
    FUN_00417900();
    iVar9 = FUN_007538e0();
    _local_128 = (byte **)CONCAT13(iVar9 == 0,local_128);
    cVar4 = FUN_00423960();
    if (cVar4 == '\0') {
LAB_007897da:
      cVar4 = cStack_125;
    }
    else {
      FUN_00417920();
      iVar9 = FUN_0090ac70(param_1);
      if (iVar9 == 0) goto LAB_007897da;
      iVar9 = FUN_00753d50();
      cVar4 = iVar9 == 0;
    }
    if ((local_121 == '\0') || (uVar8 = 10, cVar4 == '\0')) {
      uVar8 = 9;
    }
    if ((((param_1[0x560] == (byte *)0x28d) && (cVar4 = FUN_0040a4d0(&DAT_00b1a4ec), cVar4 != '\0'))
        && (cVar4 = FUN_009561e0(uVar8,param_1[0x586],0,0), cVar4 != '\0')) &&
       (((local_154 = (byte **)FUN_0040b430("ghost"), local_154 != (byte **)0x0 &&
         (*local_154 != (byte *)0x0)) && (*(char *)(local_154 + 0x1d) != '\0')))) {
      FUN_00a0fe80();
      HELPER_Effect_SpriteAccessor();
      uVar8 = FUN_00452be0();
      local_138 = (byte **)FUN_0040a220(uVar8);
      if ((local_138 != (byte **)0x0) && (*(char *)(local_138 + 0xb) != '\0')) {
        HELPER_Effect_SpriteAccessor();
        iVar9 = FUN_004073c0();
        iVar10 = FUN_00452be0();
        if (-1 < *(int *)(iVar9 + 0x38 + iVar10 * 4)) {
          HELPER_Effect_SpriteAccessor();
          FUN_004073c0();
          FUN_00409cb0(local_228,&DAT_00c7b640,local_138,local_154,&DAT_00c7b640,&DAT_00c7b640,
                       param_1 + 0x12);
          FUN_00a10420(local_24 + 8,local_210);
          local_138 = (byte **)0x3f000000;
          FUN_00a104e0(local_198,&local_138);
          uVar8 = FUN_0067f2e0();
          FUN_007dd3b0(uVar8);
        }
        uVar8 = FUN_006eef60();
        piVar15 = (int *)HELPER_Entity_SpawnRelay(1000,0x90,param_1 + 0xcf,&DAT_00c7b640,0,2,uVar8);
        FUN_004172f0(&local_16c);
        FUN_00435dd0();
        FUN_0067efe0();
        auVar29 = auVar28._4_12_;
        fVar25 = auVar28._0_4_ * DAT_00baab30;
        FUN_0043ee80(fVar25);
        FUN_00435dd0();
        local_138 = (byte **)0x3fc00000;
        uVar8 = FUN_00a104e0(local_24 + 8,&local_138);
        FUN_00420170(uVar8);
        (**(code **)(*piVar15 + 0x40))(0x43480000);
        (**(code **)(*piVar15 + 0xc))();
        FUN_0067efe0();
        param_1 = local_134;
        auVar28._0_4_ = (byte **)(fVar25 * DAT_00baa198 + DAT_00baa3e0);
        auVar28._4_12_ = auVar29;
        FUN_006b6470(0x1dd,2,0,auVar28._0_4_);
        FUN_00703670(0xe);
        *(undefined *)(local_154 + 0x1d) = 0;
      }
    }
    local_18c = param_1 + 0x12;
    if (param_1[0x4f0] == &DAT_00000023) {
      cVar4 = FUN_0040a4d0(local_140);
      if ((cVar4 != '\0') && (iVar9 = FUN_0040a780(), iVar9 == 0x13)) {
        FUN_0042a020();
        FUN_0069d9d0(1,1);
        FUN_0069d9d0(0xc,1);
        FUN_0069d9d0(10,1);
        uVar7 = 0;
        do {
          FUN_009f9050();
          uVar7 = uVar7 + 4;
        } while (uVar7 < 0x10);
        FUN_009f9050();
        iVar9 = FUN_00421770();
        if (iVar9 == 0x2a) {
          uVar8 = FUN_00407170();
          auVar28 = _DAT_00c347d0;
          HELPER_Explosion(param_1 + 0xcf,0x42700000,_DAT_00c347d0,uVar8,param_1,0x3f800000,1,4,0,1)
          ;
        }
        else {
          FUN_006b31b0(&local_154,param_1,param_1 + 0x6e,&DAT_00c7b640,0x3f800000);
          FUN_006b6470(0x1b,2,0,0x3f800000);
        }
      }
    }
    else {
      cVar4 = FUN_0040a4d0(local_140);
      if ((cVar4 != '\0') &&
         (cVar4 = HELPER_0040b030_AnimationEventPredicateD("DeathSound"), cVar4 != '\0')) {
        cVar4 = FUN_007db700();
        if (cVar4 == '\0') {
          FUN_007c9ad0();
          FUN_006b6470(0xd9,2,0,auVar28._0_4_);
        }
        if (param_1[0x4f0] == (byte *)0x19) {
          local_14c = param_1 + 0xcf;
          uVar8 = FUN_00a0fe90();
          uVar8 = FUN_00a10480(local_198,uVar8);
          FUN_00704360(uVar8,0x42f00000,param_1,1,0);
          uVar8 = FUN_006eef60();
          uVar43 = FUN_00a0fe90();
          uVar43 = FUN_00a10480(local_198,uVar43);
          HELPER_Entity_SpawnRelay(0xf5,0,uVar43,&DAT_00c7b640,0,0,uVar8);
          local_120[0] = (byte **)0x6;
          do {
            uVar8 = FUN_006eef60();
            FUN_00a0fe90();
            FUN_0067efe0();
            auVar29 = auVar28._4_12_;
            fVar25 = auVar28._0_4_ * DAT_00baa904 - DAT_00baa87c;
            FUN_00a102e0(local_198,fVar25);
            FUN_0067efe0();
            ppbVar16 = (byte **)(fVar25 * DAT_00baa87c + DAT_00baa7a4);
            local_138 = ppbVar16;
            uVar43 = FUN_00a104e0(&local_16c,&local_138);
            uVar40 = FUN_00a0fe90();
            uVar40 = FUN_00a10480(local_17c,uVar40);
            piVar15 = (int *)HELPER_Entity_SpawnRelay(1000,99,uVar40,uVar43,0,1,uVar8);
            HELPER_Effect_ScaleAccessor();
            FUN_0067efe0();
            auVar28._0_4_ = (byte **)((float)ppbVar16 * DAT_00baa528 + (float)DAT_00baa454);
            auVar28._4_12_ = auVar29;
            local_160 = auVar28._0_4_;
            uVar8 = FUN_00a104e0(&local_174,&local_160);
            FUN_0042d9b0(uVar8);
            FUN_00435dd0();
            uVar8 = FUN_004238f0(0x3f800000);
            FUN_004073d0(uVar8);
            (**(code **)(*piVar15 + 0xc))();
            local_120[0] = (byte **)((int)local_120[0] + -1);
          } while (local_120[0] != (byte **)0x0);
          local_130 = (byte **)0x0;
          local_120[0] = (byte **)0x0;
          param_1 = local_134;
          if (0 < (int)local_134[0x7d5]) {
            do {
              if (0x12 < (int)local_130) break;
              uVar8 = FUN_006eef60();
              FUN_00a0fe90();
              FUN_0067efe0();
              auVar29 = auVar28._4_12_;
              fVar25 = auVar28._0_4_ * DAT_00baa904 - DAT_00baa87c;
              FUN_00a102e0(local_198,fVar25);
              FUN_0067efe0();
              auVar28._0_4_ = (byte **)(fVar25 * DAT_00baa7a4 + DAT_00baa6fc);
              auVar28._4_12_ = auVar29;
              local_138 = auVar28._0_4_;
              uVar43 = FUN_00a104e0(&local_16c,&local_138);
              uVar40 = FUN_00a0fe90();
              uVar40 = FUN_00a10480(local_17c,uVar40);
              piVar15 = (int *)HELPER_Entity_SpawnRelay(5,0x2a,uVar40,uVar43,0,0,uVar8);
              FUN_005b19f0(local_130);
              (**(code **)(*piVar15 + 0xc))();
              param_1 = local_134;
              FUN_007d65e0(0xffffffff);
              local_130 = (byte **)((int)local_130 + 1);
            } while ((int)local_130 < (int)param_1[0x7d5]);
          }
        }
      }
    }
    if ((local_12a == '\0') &&
       (((cVar4 = FUN_0040a4d0(local_140), cVar4 != '\0' &&
         ((iVar9 = FUN_0040a780(), 7 < iVar9 || (param_1[0x4f0] == &DAT_00000023)))) ||
        (cVar4 = HELPER_0040a550_AnimationPredicateB(&DAT_00b1a4ec), cVar4 != '\0')))) {
      local_154 = param_1 + 0x79a;
      iVar9 = FUN_0040c3a0();
      if ((iVar9 != 0) && (iVar9 = FUN_0040c3a0(), *(char *)(iVar9 + 0x173) == '\0')) {
        FUN_0040c3a0();
        FUN_0040c3a0();
        uVar8 = FUN_007828f0();
        cVar4 = FUN_0040a4d0(uVar8);
        if (cVar4 == '\0') {
          FUN_00417860();
          cVar4 = FUN_009bf990();
          if (cVar4 == '\0') {
            pbVar18 = param_1[0x5aa];
            pbVar1 = param_1[0x5ab];
            iVar9 = FUN_0040c3a0();
            *(byte **)(iVar9 + 0x16a8) = pbVar18;
            *(byte **)(iVar9 + 0x16ac) = pbVar1;
            ppbVar16 = local_134 + 0x59f;
            FUN_0040c3a0(ppbVar16);
            FUN_00499960(ppbVar16);
            piVar15 = (int *)FUN_0040c3a0();
            pcVar3 = *(code **)(*piVar15 + 0x24);
            uVar8 = FUN_00435c70();
            (*pcVar3)(uVar8);
            iVar9 = FUN_0040c3a0();
            *(undefined *)(iVar9 + 0x171) = 1;
            FUN_0040c3a0();
            FUN_0040c3a0();
            uVar8 = FUN_007828f0();
            FUN_007abe20(uVar8);
          }
          else {
            FUN_0040c3a0();
            cVar4 = FUN_0042a320();
            if (cVar4 == '\0') {
              piVar15 = (int *)FUN_0040c3a0();
              pcVar3 = *(code **)(*piVar15 + 0x24);
              uVar8 = FUN_00435c70();
              (*pcVar3)(uVar8);
            }
          }
        }
      }
    }
    cVar4 = HELPER_0040a550_AnimationPredicateB(local_140);
    param_1 = local_134;
    if (cVar4 != '\0') {
      *(undefined *)((int)local_134 + 0x171) = 0;
    }
  }
  if (((uint)param_1[0x5a] & 0x4000) == 0) {
    cVar4 = HELPER_Player_HasCollectible(0x177,0);
    if (cVar4 == '\0') {
LAB_0078a11e:
      _local_128 = (byte **)((uint)_local_128 & 0xffffff);
    }
    else {
      FUN_0040c340(&DAT_00b1a4ec);
      local_8 = 0x13;
      local_15c = (char *)((uint)local_15c | 2);
      local_154 = (byte **)local_15c;
      cVar4 = FUN_007ad680(0x177,local_5c + 1);
      _local_128 = (byte **)CONCAT13(1,local_128);
      if (cVar4 == '\0') goto LAB_0078a11e;
    }
    local_8 = 0xffffffff;
    if (((uint)local_15c & 2) != 0) {
      local_15c = (char *)((uint)local_15c & 0xfffffffd);
      thunk_FUN_0040d040();
    }
    if (cStack_125 != '\0') {
      FUN_007ad5a0(0x177);
    }
    cVar4 = HELPER_Player_HasCollectible(399,0);
    if (cVar4 == '\0') {
LAB_0078a1b2:
      _local_128 = (byte **)((uint)_local_128 & 0xffffff);
    }
    else {
      FUN_0040c340(&DAT_00b1a4ec);
      local_8 = 0x14;
      local_15c = (char *)((uint)local_15c | 4);
      local_154 = (byte **)local_15c;
      cVar4 = FUN_007ad680(399,local_5c + 1);
      _local_128 = (byte **)CONCAT13(1,local_128);
      if (cVar4 == '\0') goto LAB_0078a1b2;
    }
    local_8 = 0xffffffff;
    if (((uint)local_15c & 4) != 0) {
      local_15c = (char *)((uint)local_15c & 0xfffffffb);
      thunk_FUN_0040d040();
    }
    if (cStack_125 != '\0') {
      FUN_007ad5a0(399);
    }
    cVar4 = FUN_00930680(0x75);
    if (cVar4 == '\0') {
LAB_0078a242:
      _local_128 = (byte **)((uint)_local_128 & 0xffffff);
    }
    else {
      FUN_0040c340(&DAT_00b1a4ec);
      local_8 = 0x15;
      local_15c = (char *)((uint)local_15c | 8);
      local_154 = (byte **)local_15c;
      cVar4 = FUN_007ad720(0x75,local_5c + 1);
      _local_128 = (byte **)CONCAT13(1,local_128);
      if (cVar4 == '\0') goto LAB_0078a242;
    }
    local_8 = 0xffffffff;
    if (((uint)local_15c & 8) != 0) {
      thunk_FUN_0040d040();
    }
    if (cStack_125 != '\0') {
      FUN_007ad610(0x75);
      FUN_0042ca00();
      uVar8 = FUN_0072fda0(0x75);
      FUN_0075d850(uVar8);
    }
  }
  FUN_007b8cb0();
  if ((param_1[0xb] == (byte *)0x1) || (*(char *)((int)param_1 + 0x20a9) != '\0')) {
    FUN_007ba2b0();
  }
  if ((0 < (int)param_1[0x6cb]) &&
     (pbVar18 = param_1[0x6cb] + -1, param_1[0x6cb] = pbVar18, pbVar18 == (byte *)0x0)) {
    FUN_009568e0(param_1[0x6c9],2,0,0x3f800000);
    param_1[0x6c9] = (byte *)0x0;
  }
  cVar4 = FUN_00431760(7);
  ppbVar16 = auVar28._0_4_;
  if (cVar4 != '\0') {
    ppbVar13 = param_1 + 0x562;
    local_120[0] = (byte **)0x0;
    do {
      if (ppbVar13[-2] != (byte *)0x0) {
        pbVar18 = (byte *)FUN_00791320(local_120[0]);
        *ppbVar13 = pbVar18;
      }
      ppbVar16 = auVar28._0_4_;
      local_120[0] = (byte **)((int)local_120[0] + 1);
      ppbVar13 = ppbVar13 + 8;
    } while (local_120[0] < &DAT_00000004);
    if (param_1[0x4f0] == (byte *)0x19) {
      param_1[0x7d5] = (byte *)0x9;
    }
  }
  cVar4 = FUN_00665c60(1);
  if ((cVar4 != '\0') && (param_1[0xb] == (byte *)0x0)) {
    FUN_00428cd0();
    fVar24 = (float10)FUN_00a0fea0();
    local_138 = (byte **)(float)(fVar24 * (float10)DAT_00baa120 + (float10)(float)DAT_00baa2d0);
    ppbVar16 = local_138;
    FUN_007e24c0(local_138);
  }
  cVar4 = FUN_00665c60(2);
  if ((cVar4 != '\0') && (param_1[0xb] == (byte *)0x0)) {
    FUN_00428cd0();
    ppbVar16 = (byte **)0x0;
    FUN_00a155f0();
    FUN_007e24c0(ppbVar16);
  }
  cVar4 = FUN_00665c60(0x25);
  if (cVar4 != '\0') {
    pcVar3 = *(code **)(*param_1 + 0x3c);
    uVar8 = FUN_0040d0e0(0x3f800000,0,0,0);
    (*pcVar3)(uVar8,0xffffffff,0xff,0,1);
    uVar8 = FUN_0040d0e0(0x3f800000,0,0,0);
    FUN_004073d0(uVar8);
  }
  cVar4 = FUN_00665c60(0xe);
  if (cVar4 != '\0') {
    pcVar3 = *(code **)(*param_1 + 0x3c);
    uVar8 = FUN_0040d0e0(0,0,0,0);
    (*pcVar3)(uVar8,0xffffffff,0xff,0,1);
    uVar8 = FUN_0040d0e0(0,0,0,0);
    FUN_004073d0(uVar8);
  }
  cVar4 = FUN_00665c60(0x35);
  if (cVar4 != '\0') {
    FUN_00407170();
    FUN_00682fb0(0x3f800000,0x3f800000,0x3f800000,0x3f800000);
    (**(code **)(*param_1 + 0x3c))(local_98,0xffffffff,0xff,0,1);
    FUN_004073d0(local_98);
  }
  cVar4 = FUN_00665c60(0x18);
  if (cVar4 != '\0') {
    FUN_00407480();
    ppbVar13 = (byte **)FUN_00812c90(param_1 + 0xcf);
    local_120[0] = ppbVar13;
    FUN_00407480();
    iVar9 = FUN_00436060(ppbVar13);
    if (iVar9 == 0) {
      local_12a = '\0';
      _local_128 = (byte **)((uint)_local_128 & 0xffffff);
LAB_0078a679:
      local_121 = '\0';
    }
    else {
      iVar10 = FUN_004073c0();
      local_12a = iVar10 == 0xe;
      if ((bool)local_12a) {
        iVar10 = FUN_004176f0();
        _local_128 = (byte **)CONCAT13(iVar10 == 1000,local_128);
LAB_0078a64a:
        iVar10 = FUN_004073c0();
        if ((iVar10 != 1) && (iVar10 = FUN_004073c0(), iVar10 != 10)) goto LAB_0078a679;
        local_121 = '\x01';
      }
      else {
        local_121 = '\0';
        _local_128 = (byte **)((uint)_local_128 & 0xffffff);
        if (iVar9 != 0) goto LAB_0078a64a;
      }
    }
    FUN_00407480();
    FUN_00812f00(local_24 + 8,local_120[0]);
    FUN_00a0ff00();
    if ((float)ppbVar16 < DAT_00baa87c - (float)param_1[0xdc] * (float)DAT_00baa2d0) {
      FUN_00407480();
      cVar4 = FUN_007ea190();
      if ((cVar4 == '\0') &&
         (((iVar9 == 0 || (cStack_125 != '\0')) || ((local_121 != '\0' && (local_12a == '\0')))))) {
        FUN_00407480();
        FUN_005cbd00(0x24);
        uVar8 = FUN_007e90f0();
        FUN_007ebca0(local_120[0],0xe,0,uVar8,0);
        FUN_006b6470(0x25,2,0,0x3f800000);
      }
    }
  }
  cVar4 = FUN_00665c60(0x1a);
  if ((cVar4 != '\0') && (iVar9 = FUN_004074b0(), 0x3c < iVar9)) {
    FUN_00407480();
    iVar9 = FUN_00813ce0();
    if ((10 < iVar9) && (cVar4 = FUN_007ab110(), cVar4 != '\0')) {
      FUN_00420ae0();
      cVar4 = FUN_0082ee30();
      if (cVar4 == '\0') {
        FUN_00428b50();
        cVar4 = FUN_0082ee30();
        if (cVar4 == '\0') {
          fVar24 = (float10)FUN_00a0fea0();
          local_138 = (byte **)(float)fVar24;
          if (DAT_00baa198 <= (float)local_138) {
LAB_0078a826:
            fVar24 = (float10)FUN_00a0fea0();
            local_138 = (byte **)(float)fVar24;
            if ((DAT_00baa198 <= (float)local_138) || (*(char *)(param_1 + 100) == '\0'))
            goto LAB_0078a874;
          }
          else {
            fVar24 = (float10)FUN_00a0fea0();
            local_138 = (byte **)(float)fVar24;
            if (DAT_00baa120 <= (float)local_138) goto LAB_0078a826;
          }
          pcVar3 = *(code **)(*param_1 + 0x20);
          uVar8 = FUN_00435c70();
          (*pcVar3)(0x3f800000,0x20000,0,uVar8,0x1e);
        }
      }
    }
  }
LAB_0078a874:
  cVar4 = FUN_00665c60(0x1b);
  if ((cVar4 != '\0') && (cVar4 = FUN_00417430(0x4000,0), cVar4 == '\0')) {
    iVar9 = FUN_004074b0();
    iVar9 = 0x545 - iVar9 % 0x546;
    if (iVar9 == 0) {
      pcVar3 = *(code **)(*param_1 + 0x20);
      uVar8 = FUN_00435c70();
      (*pcVar3)(0x3f800000,0x20000,0,uVar8,0x1e);
      uVar8 = 0x41000000;
    }
    else {
      if (((iVar9 != (iVar9 / 0x1e) * 0x1e) || (0x96 < iVar9)) &&
         ((iVar9 != (iVar9 / 0xf) * 0xf || (0x96 < iVar9)))) goto LAB_0078a970;
      uVar8 = 0x40800000;
    }
    FUN_009568e0(0x23,0,0,uVar8);
  }
LAB_0078a970:
  cVar4 = FUN_00665c60(0x1c);
  if ((cVar4 != '\0') && (cVar4 = FUN_00417430(0x4000,0), cVar4 == '\0')) {
    iVar9 = FUN_004074b0();
    iVar9 = 53999 - iVar9;
    if ((iVar9 < 1) && (cVar4 = FUN_007ab110(), cVar4 != '\0')) {
      pcVar3 = *(code **)(*param_1 + 0x20);
      uVar8 = FUN_00435c70();
      cVar4 = (*pcVar3)(0x3f800000,0x20000,0,uVar8,0x1e);
      if (cVar4 != '\0') {
        uVar8 = 0x41000000;
LAB_0078aa68:
        FUN_009568e0(0x23,0,0,uVar8);
      }
    }
    else if (((iVar9 == (iVar9 / 0x1e) * 0x1e) && (iVar9 < 0x385)) ||
            ((iVar9 == (iVar9 / 0xf) * 0xf && (iVar9 < 0x12d)))) {
      uVar8 = 0x40800000;
      goto LAB_0078aa68;
    }
  }
  local_168 = (byte **)param_1[0x5b];
  pbVar18 = param_1[0x5a];
  if (((uint)pbVar18 & 0x4000) != 0) {
    FUN_00417400(0x8000,0);
    local_168 = (byte **)param_1[0x5b];
    pbVar18 = param_1[0x5a];
  }
  if (((uint)pbVar18 & 0x4000) == 0) {
    FUN_00417400(0x8000000,0);
    cVar4 = FUN_00417430(0,4);
    if ((cVar4 != '\0') && ((byte **)param_1[0xa3] == param_1)) {
      pbVar18 = param_1[0x4d1];
      pbVar1 = param_1[0x769];
      if (0 < (int)pbVar18 - (int)pbVar1) {
        if (((int)param_1[0x4d3] < 1) && ((int)param_1[0x762] < 1)) {
          FUN_007cafe0();
          iVar9 = FUN_007dd380();
          if ((int)pbVar18 - (int)pbVar1 <= iVar9) goto LAB_0078ac08;
        }
        cVar4 = FUN_007db6b0();
        if (cVar4 == '\0') {
          iVar9 = HELPER_Entity_FrameCount();
          pbVar18 = param_1[0x4e3] + -iVar9;
          param_1[0x4e3] = pbVar18;
          if ((int)pbVar18 < 1) {
            param_1[0x4e3] = (byte *)0x258;
            pcVar3 = *(code **)(*param_1 + 0x20);
            uVar8 = FUN_00435c70();
            ppbVar16 = DAT_00baa454;
            FUN_00665a30();
            (*pcVar3)(ppbVar16,0x2042020,0,uVar8,0x1e);
            param_1 = local_134;
          }
          else if ((int)pbVar18 < 0x1e) {
            uVar7 = (uint)pbVar18 & 0x80000003;
            bVar23 = uVar7 == 0;
            if ((int)uVar7 < 0) {
              bVar23 = (uVar7 - 1 | 0xfffffffc) == 0xffffffff;
            }
            if (bVar23) {
              pcVar3 = *(code **)(*param_1 + 0x3c);
              uVar8 = FUN_0042cfd0(0x3f800000,0,0);
              (*pcVar3)(uVar8,4,2,1,1);
            }
          }
          goto LAB_0078ac1d;
        }
      }
LAB_0078ac08:
      FUN_00417400(0,4);
      param_1[0x4e3] = (byte *)0x0;
    }
LAB_0078ac1d:
    if (param_1[0x4f0] == (byte *)0x16) {
      pbVar18 = param_1[0x4d1];
      iVar9 = FUN_007d4320();
      if (((iVar9 < (int)pbVar18) || (1 < (int)param_1[0x4d3])) ||
         ((param_1[0x4d3] == (byte *)0x1 && (0 < (int)(param_1[0x762] + (int)pbVar18))))) {
        if (param_1[0x7bd] == (byte *)0x0) {
          param_1[0x7bd] = (byte *)0x12c;
        }
        else {
          pbVar18 = param_1[0x7bd] + -1;
          param_1[0x7bd] = pbVar18;
          if ((int)pbVar18 < 1) {
            pbVar18 = param_1[0x4d1];
            iVar9 = FUN_007d4320();
            if (iVar9 < (int)pbVar18) {
              FUN_00758a70(0xffffffff,0,0);
              param_1[0x7bd] = (byte *)0x12c;
            }
            else {
              if ((1 < (int)param_1[0x4d3]) ||
                 ((param_1[0x4d3] == (byte *)0x1 && (0 < (int)(param_1[0x762] + (int)pbVar18))))) {
                FUN_00758d00(0xffffffff,0);
              }
              param_1[0x7bd] = (byte *)0x12c;
            }
          }
        }
        goto LAB_0078ace4;
      }
    }
    param_1[0x7bd] = (byte *)0x0;
  }
LAB_0078ace4:
  uVar5 = FUN_007bf5c0();
  ppbVar16 = param_1 + 0x6c7;
  *(undefined *)(param_1 + 0x5f6) = uVar5;
  cVar4 = FUN_00a10630(&DAT_00c7b640);
  if (cVar4 != '\0') {
    FUN_00a10480(local_24 + 8,param_1 + 0xcf);
    fVar24 = (float10)FUN_00a0fea0();
    local_138 = (byte **)(float)fVar24;
    if ((float)DAT_00baa454 < (float)local_138) {
      FUN_00a10480(local_24 + 8,param_1 + 0xcf);
      local_138 = (byte **)0x3e3851ec;
      uVar8 = FUN_00a104e0(local_198,&local_138);
      ppbVar16 = (byte **)FUN_00a10420(&local_16c,uVar8);
    }
    FUN_004288f0(ppbVar16);
  }
  cVar4 = FUN_006f8120();
  if (cVar4 == '\0') {
    if ((int)(param_1[0x4d3] + (int)param_1[0x4d1]) < 2) {
      iVar9 = FUN_00753cb0();
      FUN_00424530();
      iVar10 = FUN_0040c3a0();
      iVar21 = iVar10 - iVar9;
      if (9 < iVar10) {
        if (iVar10 < 0xc) {
          iVar21 = iVar21 + -1;
        }
        else {
          iVar21 = 10 - iVar9;
        }
      }
      if (2 < iVar21) {
        FUN_00421800();
        FUN_00929a20(0x149);
      }
    }
    else {
      FUN_00424530();
      uVar8 = FUN_0040c3a0();
      FUN_00753c80(uVar8);
    }
  }
  cVar4 = FUN_00417430(0x4000,0);
  if ((cVar4 == '\0') && (cVar4 = HELPER_Effect_PlayerGateA(), cVar4 == '\0')) {
    pbVar18 = param_1[0x5a];
    if (((uint)pbVar18 & 0x100) == 0) {
      if (((uint)pbVar18 & 0x200) != 0) {
        local_15c = "Confuse";
        goto LAB_0078af55;
      }
      if (((uint)pbVar18 & 0x1000) != 0) {
        local_15c = "Burning";
        goto LAB_0078af55;
      }
      if (((uint)pbVar18 & 0x40) != 0) {
        local_15c = "Poison";
        goto LAB_0078af55;
      }
      if (((uint)pbVar18 & 0x800) != 0) {
        local_15c = &DAT_00b67628;
        goto LAB_0078af55;
      }
      if (((uint)param_1[0x5b] & 4) != 0) {
        local_15c = "BleedingOut";
        goto LAB_0078af55;
      }
      if (((uint)pbVar18 & 0x80) != 0) {
        FUN_00417850();
        cVar4 = FUN_00429550();
        if (cVar4 != '\0') {
          local_15c = &DAT_00b6769c;
          goto LAB_0078af55;
        }
      }
      if (0 < (int)param_1[199]) {
        FUN_00417850();
        cVar4 = FUN_00429550();
        if ((cVar4 != '\0') && (*(short *)((int)param_1 + 0x2ed2) == 0)) {
          local_15c = "Pause";
          goto LAB_0078af55;
        }
      }
      FUN_0040a910();
    }
    else {
      local_15c = "Charm";
LAB_0078af55:
      cVar4 = FUN_00420160();
      if (cVar4 == '\0') {
        FUN_0040c340("gfx/StatusEffects.anm2");
        local_8 = 0x16;
        FUN_0040bd50(local_5c + 1,1);
        local_8 = 0xffffffff;
        thunk_FUN_0040d040();
      }
      cVar4 = FUN_0040a4d0(&DAT_00b1a4ec);
      if (cVar4 != '\0') {
        HELPER_ANM2_Update();
      }
      HELPER_0040a380_AnimationActionA(local_15c,0);
    }
    HELPER_Effect_SpriteAccessor();
    local_138 = (byte **)FUN_0040bc90();
    cVar4 = FUN_007ab110();
    if (cVar4 == '\0') {
      local_120[0] = (byte **)0xffffffff;
    }
    else {
      FUN_0041e470();
      local_120[0] = (byte **)FUN_0040bc90();
    }
    uVar8 = FUN_0040ac50();
    uVar43 = FUN_0040a780();
    uVar8 = FUN_00753830(param_1 + 0xcf,param_1 + 0xd8,local_138,uVar43,local_120[0],uVar8);
    FUN_00839840(uVar8);
    cVar4 = FUN_0042a2c0();
    if (cVar4 != '\0') {
      FUN_00424530();
      iVar9 = FUN_0040c3a0();
      if ((iVar9 == 0xc) && (cVar4 = FUN_006ac710(0x96,0), cVar4 != '\0')) {
        FUN_00407480();
        FUN_007537e0();
        iVar9 = HELPER_Global_ModuloCountdown();
        if ((iVar9 == 0) && (cVar4 = FUN_004a5d00(), cVar4 == '\0')) {
          FUN_007059f0(0x1e,0x3f);
        }
      }
    }
    cVar4 = FUN_0042a2c0();
    if ((cVar4 != '\0') && (cVar4 = FUN_004a5d00(), cVar4 != '\0')) {
      FUN_00839830();
    }
  }
  uVar8 = 0x78b0fe;
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    cVar4 = HELPER_Effect_PlayerGateA();
    if (cVar4 != '\0') {
      thunk_FUN_007dce00();
    }
    FUN_0060c560(local_1ac);
    uVar40 = FUN_00499270(local_24 + 4);
    uVar43 = 0x78b149;
    cVar4 = FUN_0060c450(uVar40);
    while (cVar4 != '\0') {
      piVar15 = (int *)FUN_0060c420();
      *piVar15 = *piVar15 + -1;
      uVar40 = 0x78b169;
      piVar15 = (int *)FUN_0060c420();
      if (*piVar15 < 1) {
        FUN_00479d50(local_1ac);
        uVar43 = FUN_007dc6d0(local_1b8,uVar8,uVar43,uVar40);
        FUN_0078b330(uVar43);
      }
      else {
        FUN_0060c410();
      }
      uVar40 = FUN_00499270(local_24 + 4);
      uVar43 = 0x78b1c5;
      cVar4 = FUN_0060c450(uVar40);
    }
    *(undefined2 *)(param_1 + 0x765) = 0;
  }
  if (*(char *)((int)param_1 + 0x20a9) != '\0') {
    FUN_00417850();
    cVar4 = FUN_00429550();
    if (cVar4 != '\0') {
      param_1[0x62] = (byte *)0x0;
    }
    param_1[0x61] = (byte *)0x3;
  }
  cVar4 = FUN_007db700();
  if (cVar4 != '\0') {
    param_1[0x62] = (byte *)0x0;
  }
  FUN_00417850();
  cVar4 = FUN_00429550();
  if (cVar4 != '\0') {
    FUN_00417850();
    piVar15 = (int *)FUN_004176f0();
    (**(code **)(*piVar15 + 0x58))(param_1);
  }
  cVar4 = FUN_00417430(0x4000,0);
  if (cVar4 == '\0') {
    param_1[0x5ae] = (byte *)0x0;
  }
  FUN_00864130(param_1);
LAB_0078b272:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

