/* Local J460 decompiler output.
 * VA: 0x006ae820
 * Entry: 006ae820
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: native base movement and collision
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; native base movement and collision */

void __fastcall HELPER_Entity_BaseUpdate(float *param_1)

{
  code *pcVar1;
  longlong lVar2;
  longlong lVar3;
  char cVar4;
  int iVar5;
  float fVar6;
  undefined4 uVar7;
  uint uVar8;
  float **ppfVar9;
  float **ppfVar10;
  int *piVar11;
  float *pfVar12;
  int iVar13;
  undefined4 *puVar14;
  undefined4 extraout_ECX;
  uint uVar15;
  uint uVar16;
  float *pfVar17;
  int unaff_EDI;
  bool bVar18;
  float *pfVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float *pfVar23;
  undefined8 uVar24;
  ulonglong uVar25;
  double dVar26;
  int *apiStack_328 [2];
  float *local_320;
  undefined4 uStack_31c;
  float *local_318;
  float *local_314;
  float *local_310;
  float *pfStack_30c;
  float *local_308;
  float *local_304;
  float *pfStack_300;
  float *pfStack_2fc;
  float *pfStack_2f8;
  float *pfStack_2f4;
  float fStack_2f0;
  uint uStack_2ec;
  float *local_2e8;
  float *local_2e4;
  float fStack_2e0;
  uint uStack_2dc;
  float *pfStack_2d8;
  float **ppfStack_2d4;
  uint uStack_2d0;
  undefined8 local_2c8;
  undefined4 uStack_2c0;
  float fStack_2bc;
  uint uStack_2b8;
  undefined4 uStack_2b4;
  uint uStack_2b0;
  float *pfStack_2ac;
  uint uStack_2a8;
  uint uStack_2a4;
  float fStack_294;
  float fStack_290;
  float fStack_28c;
  float fStack_288;
  float fStack_284;
  float fStack_280;
  float fStack_27c;
  float fStack_278;
  float fStack_274;
  float fStack_270;
  float *local_26c;
  undefined auStack_268 [8];
  int iStack_260;
  undefined4 local_240;
  undefined4 uStack_23c;
  undefined4 uStack_238;
  undefined4 uStack_234;
  undefined4 local_230;
  undefined4 uStack_22c;
  undefined4 uStack_228;
  undefined4 uStack_224;
  undefined8 local_220;
  undefined4 local_218;
  uint uStack_11c;
  ulonglong uStack_118;
  undefined4 uStack_110;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined auStack_e0 [16];
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined auStack_b4 [16];
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined auStack_88 [16];
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined auStack_5c [16];
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)apiStack_328;
  local_320 = (float *)param_1[0x5a];
  fVar6 = param_1[0x5b];
  local_2e8 = param_1;
  if (((uint)local_320 & 0x4000) == 0) {
    param_1[0xe8] = param_1[0xe9];
    param_1[0xe9] = param_1[0xe7] + param_1[0xe9];
    if ((((((uint)local_320 & 0x20) == 0) && ((int)param_1[0xfc] < 1)) ||
        (*(char *)((int)param_1 + 0x173) != '\0')) && (((uint)fVar6 & 1) == 0)) {
      local_310 = (float *)param_1[0x53];
      param_1[0x53] = (float)local_310 * param_1[0xe7];
      if (*(char *)((int)param_1 + 0x151) != '\0') {
        FUN_00409030();
        FUN_00409030();
        local_320 = (float *)param_1[0x5a];
        fVar6 = param_1[0x5b];
      }
      param_1[0x53] = (float)local_310;
    }
  }
  if (((uint)fVar6 & 0x8000) != 0) {
    uStack_31c = CONCAT13(*(char *)(param_1 + 100),(undefined3)uStack_31c);
    if (*(char *)(param_1 + 100) == '\0') {
      local_2e4 = (float *)param_1[0xd8];
      local_304 = (float *)param_1[0xd9];
      pfVar19 = (float *)((float)local_2e4 * (float)local_2e4 + (float)local_304 * (float)local_304)
      ;
      FUN_00435a50();
      fVar20 = param_1[0xc2] * param_1[0xc2] + param_1[0xc3] * param_1[0xc3];
      local_310 = pfVar19;
      FUN_00435a50();
      if (((float)local_310 < fVar20) ||
         (0.0 <= param_1[0xc2] * (float)local_2e4 + param_1[0xc3] * (float)local_304))
      goto LAB_006ae9c3;
    }
    else {
LAB_006ae9c3:
      local_310 = (float *)param_1[0xc2];
      fVar21 = (float)local_310 * (float)local_310 + param_1[0xc3] * param_1[0xc3];
      FUN_00435a50();
      fVar20 = DAT_00baa418;
      if (DAT_00baa630 <= fVar21) {
        param_1[0xdb] = param_1[0xda] * DAT_00baa418;
        if (((uint)fVar6 & 0x20000) == 0) {
          param_1[0xc2] = (float)local_310 * fVar20;
          local_308 = (float *)(param_1[0xc3] * fVar20);
          param_1[0xc3] = (float)local_308;
          cVar4 = *(char *)(param_1 + 100);
          pfVar19 = (float *)param_1[0x5a];
          fVar6 = param_1[0x5b];
        }
        else {
          local_308 = (float *)param_1[0xc3];
          pfVar19 = local_320;
          cVar4 = uStack_31c._3_1_;
        }
        local_2c8 = CONCAT44(local_2c8._4_4_,pfVar19);
        if (cVar4 != '\0') {
          if (((uint)fVar6 & 0x10000) != 0) {
            pfVar19 = (float *)FUN_00a10030();
            fVar6 = (float)local_308 * (float)local_308 + param_1[0xc2] * param_1[0xc2];
            FUN_00435a50();
            fVar20 = fVar6 * pfVar19[1] * DAT_00baa3a4;
            param_1[0xc2] = fVar6 * *pfVar19 * DAT_00baa3a4;
            param_1[0xc3] = fVar20;
            iVar5 = FUN_004360f0();
            fVar6 = (float)(iVar5 + -1) + (float)(iVar5 + -1) + (float)DAT_00baa81c;
            uVar24 = FUN_00435c70();
            (*(code *)((ulonglong)uVar24 >> 0x20))(fVar6,0,0,(int)uVar24,0x1e);
            param_1[0x5b] = (float)((uint)param_1[0x5b] & 0xfffeffff);
            param_1[0x5a] = param_1[0x5a];
          }
          param_1[0xbe] = (float)((int)param_1[0xbe] / 2);
        }
        param_1[0xd8] = param_1[0xc2];
        param_1[0xd9] = param_1[0xc3];
        goto LAB_006aeb95;
      }
    }
    param_1[0x5a] = (float)local_320;
    param_1[0x5b] = (float)((uint)fVar6 & 0xfffe7fff);
    param_1[0xbe] = 0.0;
  }
LAB_006aeb95:
  fVar6 = param_1[0xe7];
  fVar20 = param_1[0xdb];
  if ((NAN(fVar6) || NAN((float)DAT_00baa454)) == (fVar6 == (float)DAT_00baa454)) {
    fVar20 = fVar20 / ((fVar20 + fVar6) - fVar20 * fVar6);
  }
  local_2e4 = param_1 + 0xcf;
  fVar6 = param_1[0xd8];
  fVar21 = param_1[0xd9];
  param_1[0xd8] = fVar20 * fVar6;
  param_1[0xd9] = fVar20 * fVar21;
  param_1[0xd0] = param_1[0xe7] * fVar20 * fVar21 + param_1[0xd0];
  *local_2e4 = param_1[0xe7] * fVar20 * fVar6 + *local_2e4;
  local_318 = (float *)param_1[0x5a];
  pfVar19 = (float *)param_1[0x5b];
  param_1[0xdb] = param_1[0xda];
  if (((uint)local_318 & 0x4000) == 0) {
    bVar18 = false;
    fVar6 = param_1[0x6b];
    if (param_1[0x6b] != param_1[0x6c]) {
      do {
        iVar5 = *(int *)((int)fVar6 + 0x34) + -1;
        *(int *)((int)fVar6 + 0x34) = iVar5;
        if (*(char *)((int)fVar6 + 0x38) != '\0') {
          bVar18 = true;
        }
        fVar20 = (float)((int)fVar6 + 0x3c);
        if (iVar5 == 0) {
          FUN_004b6ec0();
          bVar18 = true;
          param_1[0x6c] = (float)((int)param_1[0x6c] + -0x3c);
          fVar20 = fVar6;
        }
        fVar6 = fVar20;
      } while (fVar20 != param_1[0x6c]);
      if (bVar18) {
        fVar6 = param_1[0x6b];
        iVar13 = (int)param_1[0x6c] - (int)fVar6;
        iVar5 = iVar13 >> 0x1f;
        if (iVar13 / 0x3c + iVar5 == iVar5) {
          (**(code **)((int)*param_1 + 0x60))();
        }
        else {
          local_240 = *(undefined4 *)((int)fVar6 + 4);
          uStack_23c = *(undefined4 *)((int)fVar6 + 8);
          uStack_238 = *(undefined4 *)((int)fVar6 + 0xc);
          uStack_234 = *(undefined4 *)((int)fVar6 + 0x10);
          local_218 = *(undefined4 *)((int)fVar6 + 0x2c);
          local_230 = *(undefined4 *)((int)fVar6 + 0x14);
          uStack_22c = *(undefined4 *)((int)fVar6 + 0x18);
          uStack_228 = *(undefined4 *)((int)fVar6 + 0x1c);
          uStack_224 = *(undefined4 *)((int)fVar6 + 0x20);
          local_220 = *(undefined8 *)((int)fVar6 + 0x24);
          if (*(char *)((int)fVar6 + 0x38) != '\0') {
            FUN_006832e0();
            FUN_004071f0();
          }
          FUN_004073d0();
        }
      }
    }
    pfVar17 = (float *)param_1[0x5a];
    local_318 = (float *)param_1[0x5b];
    pfVar19 = local_318;
    if ((((uint)pfVar17 & 1) == 0) &&
       (((1 < (int)DAT_00c71678[0x9985] && (param_1[10] == 1.401298e-45)) ||
        ((int)param_1[10] - 10U < 0x3de)))) {
      cVar4 = FUN_00665c60();
      if ((cVar4 != '\0') || (cVar4 = FUN_00665c60(), cVar4 != '\0')) {
        pfVar17 = (float *)((uint)pfVar17 | 0x100);
        param_1[0x89] = 2.802597e-45;
        param_1[0x5a] = (float)pfVar17;
        param_1[0x5b] = (float)local_318;
      }
      local_310 = pfVar17;
      local_304 = local_318;
      cVar4 = FUN_00665c60();
      if (cVar4 != '\0') {
        pfVar17 = (float *)((uint)pfVar17 | 0x200);
        param_1[0x8a] = 2.802597e-45;
        local_318 = local_304;
        param_1[0x5a] = (float)pfVar17;
        param_1[0x5b] = (float)local_304;
      }
      local_310 = pfVar17;
      local_304 = local_318;
      cVar4 = FUN_00665c60();
      if (((cVar4 != '\0') || (cVar4 = FUN_00665c60(), cVar4 != '\0')) ||
         ((cVar4 = FUN_00665c60(), pfVar19 = local_318, cVar4 != '\0' &&
          ((((int)DAT_00c71678[0x993e] - (int)param_1[0xca]) / 0x3c & 1U) == 0)))) {
        pfVar17 = (float *)((uint)local_310 | 0x800);
        param_1[0x8c] = 2.802597e-45;
        param_1[0x5a] = (float)pfVar17;
        param_1[0x5b] = (float)local_304;
        pfVar19 = local_304;
      }
    }
    if (0 < (int)param_1[0x84]) {
      param_1[0x84] = (float)((int)param_1[0x84] + -1);
    }
    if (0 < (int)param_1[0x85]) {
      param_1[0x85] = (float)((int)param_1[0x85] + -1);
    }
    if ((0 < (int)param_1[0x86]) &&
       (fVar6 = (float)((int)param_1[0x86] + -1), param_1[0x86] = fVar6, (int)fVar6 < 1)) {
      pfVar17 = (float *)((uint)pfVar17 & 0xffffffdf);
      param_1[0x5a] = (float)pfVar17;
      param_1[0x5b] = (float)pfVar19;
    }
    if ((0 < (int)param_1[0x87]) &&
       (fVar6 = (float)((int)param_1[0x87] + -1), param_1[0x87] = fVar6, (int)fVar6 < 1)) {
      pfVar17 = (float *)((uint)pfVar17 & 0xffffffbf);
      param_1[0x5b] = (float)pfVar19;
      param_1[0x5a] = (float)pfVar17;
      param_1[200] = 2.0;
    }
    if ((0 < (int)param_1[0x88]) &&
       (fVar6 = param_1[0x88], param_1[0x88] = (float)((int)fVar6 + -1), (int)fVar6 + -1 < 1)) {
      pfVar17 = (float *)((uint)pfVar17 & 0xffffff7f);
      param_1[0x5a] = (float)pfVar17;
      param_1[0x5b] = (float)pfVar19;
    }
    local_314 = pfVar19;
    if ((0 < (int)param_1[0x89]) &&
       (fVar6 = (float)((int)param_1[0x89] + -1), param_1[0x89] = fVar6, (int)fVar6 < 1)) {
      param_1[0x5b] = (float)pfVar19;
      pfVar17 = (float *)((uint)pfVar17 & 0xfffffeff);
      param_1[0x5a] = (float)pfVar17;
      if (param_1[0xf1] != 0.0) {
        local_320 = pfVar19;
        local_26c = param_1 + 0xf1;
        FUN_004cf210();
        pfVar17 = (float *)param_1[0x5a];
        pfVar19 = (float *)param_1[0x5b];
        param_1[0xf1] = 0.0;
      }
    }
    if ((0 < (int)param_1[0x8a]) &&
       (fVar6 = param_1[0x8a], param_1[0x8a] = (float)((int)fVar6 + -1), (int)fVar6 + -1 < 1)) {
      pfVar17 = (float *)((uint)pfVar17 & 0xfffffdff);
      param_1[0x5a] = (float)pfVar17;
      param_1[0x5b] = (float)pfVar19;
    }
    if ((0 < (int)param_1[0x8c]) &&
       (fVar6 = (float)((int)param_1[0x8c] + -1), param_1[0x8c] = fVar6, (int)fVar6 < 1)) {
      pfVar17 = (float *)((uint)pfVar17 & 0xfffff7ff);
      param_1[0x5b] = (float)pfVar19;
      param_1[0x5a] = (float)pfVar17;
    }
    fVar6 = param_1[0xee];
    fVar20 = param_1[0xed];
    if ((NAN(fVar6) || NAN(fVar20)) == (fVar6 == fVar20)) {
      param_1[0xed] = (fVar6 - fVar20) * DAT_00baa784 * DAT_00baa0b4 + fVar20;
    }
    local_320 = pfVar19;
    if ((0 < (int)param_1[0x8f]) &&
       (fVar6 = (float)((int)param_1[0x8f] + -1), param_1[0x8f] = fVar6, (int)fVar6 < 1)) {
      FUN_006b5f40();
      pfVar17 = (float *)param_1[0x5a];
      pfVar19 = (float *)param_1[0x5b];
    }
    if (0 < (int)param_1[0x8d]) {
      fVar6 = (float)((int)param_1[0x8d] + -1);
      param_1[0x8d] = fVar6;
      if ((int)fVar6 < 1) {
        param_1[0x5b] = (float)pfVar19;
        param_1[0x5a] = (float)((uint)pfVar17 & 0xffffefff);
        param_1[0xc9] = 2.0;
      }
                    /* WARNING: Load size is inaccurate */
      if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c80a98) &&
         (FUN_00aef29d(), DAT_00c80a98 == -1)) {
        _DAT_00c80ab0 = ZEXT816(0);
        _DAT_00c80ac0 = 0;
        _DAT_00c80aa0 = _DAT_00bac7b0;
        uRam00c80aa4 = _UNK_00bac7b4;
        uRam00c80aa8 = _UNK_00bac7b8;
        uRam00c80aac = _UNK_00bac7bc;
        _DAT_00c80ac4 = 0;
        _DAT_00c80adc = ZEXT816(0);
        _DAT_00c80ac8 = 0;
        _DAT_00c80aec = 0x3e34b4b5;
        _DAT_00c80acc = _DAT_00bac680;
        uRam00c80ad0 = _UNK_00bac684;
        uRam00c80ad4 = _UNK_00bac688;
        uRam00c80ad8 = _UNK_00bac68c;
        _DAT_00c80af0 = 0;
        _DAT_00c80b08 = ZEXT816(0);
        _DAT_00c80af4 = 0;
        _DAT_00c80b18 = 0x3eb4b4b5;
        _DAT_00c80af8 = _DAT_00bac590;
        uRam00c80afc = _UNK_00bac594;
        uRam00c80b00 = _UNK_00bac598;
        uRam00c80b04 = _UNK_00bac59c;
        _DAT_00c80b1c = 0;
        _DAT_00c80b34 = ZEXT816(0);
        _DAT_00c80b20 = 0;
        _DAT_00c80b44 = 0x3e8c8c8d;
        _DAT_00c80b24 = _DAT_00bac680;
        uRam00c80b28 = _UNK_00bac684;
        uRam00c80b2c = _UNK_00bac688;
        uRam00c80b30 = _UNK_00bac68c;
        _DAT_00c80b48 = 0x3dc8c8ca;
        _DAT_00c80b60 = ZEXT816(0);
        _DAT_00c80b4c = 0;
        _DAT_00c80b70 = 0x3e48c8ca;
        _DAT_00c80b50 = _DAT_00bac7b0;
        uRam00c80b54 = _UNK_00bac7b4;
        uRam00c80b58 = _UNK_00bac7b8;
        uRam00c80b5c = _UNK_00bac7bc;
        _DAT_00c80b74 = 0x3e48c8ca;
        _DAT_00c80b8c = ZEXT816(0);
        _DAT_00c80b78 = 0;
        _DAT_00c80b9c = 0x3dc8c8ca;
        unique0x10001ef6 = _UNK_00bac7b4;
        _DAT_00c80b7c = _DAT_00bac7b0;
        unique0x10001efa = _UNK_00bac7b8;
        unique0x10001efe = _UNK_00bac7bc;
        _DAT_00c80ba0 = 0x3dc8c8ca;
        _DAT_00c80ba4 = 0;
        FUN_00aef253();
      }
      (**(code **)((int)*param_1 + 0x3c))
                (&DAT_00c80aa0 + (((int)DAT_00c71678[0x993e] - (int)param_1[0xca]) % 6) * 0x2c,1,
                 0xff,0,1);
      pfVar17 = (float *)param_1[0x5a];
      pfVar19 = (float *)param_1[0x5b];
    }
    pfStack_30c = pfVar17;
    if ((0 < (int)param_1[0x8b]) &&
       (fVar6 = (float)((int)param_1[0x8b] + -1), param_1[0x8b] = fVar6, (int)fVar6 < 1)) {
      param_1[0x5b] = (float)pfVar19;
      param_1[0x5a] = (float)(float *)((uint)pfVar17 & 0xfffffbff);
      pfStack_30c = (float *)((uint)pfVar17 & 0xfffffbff);
    }
    local_314 = pfVar17;
    if (0 < (int)param_1[0xba]) {
      fVar6 = (float)((int)param_1[0xba] + -1);
      param_1[0xba] = fVar6;
      if ((int)fVar6 < 1) {
        param_1[0x5a] = (float)pfStack_30c;
        param_1[0x5b] = (float)((uint)pfVar19 & 0xfffffffb);
        param_1[0xbb] = 0.0;
      }
                    /* WARNING: Load size is inaccurate */
      if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c80ba8) &&
         (FUN_00aef29d(), DAT_00c80ba8 == -1)) {
        _DAT_00c80bc0 = ZEXT816(0);
        _DAT_00c80bd0 = 0;
        _DAT_00c80bb0 = _DAT_00bac7b0;
        uRam00c80bb4 = _UNK_00bac7b4;
        uRam00c80bb8 = _UNK_00bac7b8;
        uRam00c80bbc = _UNK_00bac7bc;
        _DAT_00c80bd4 = 0;
        _DAT_00c80bec = ZEXT816(0);
        _DAT_00c80bd8 = 0;
        _DAT_00c80bfc = 0x3e34b4b5;
        _DAT_00c80bdc = _DAT_00bac600;
        uRam00c80be0 = _UNK_00bac604;
        uRam00c80be4 = _UNK_00bac608;
        uRam00c80be8 = _UNK_00bac60c;
        _DAT_00c80c00 = 0;
        _DAT_00c80c18 = ZEXT816(0);
        _DAT_00c80c04 = 0;
        _DAT_00c80c28 = 0x3eb4b4b5;
        _DAT_00c80c08 = _DAT_00bac460;
        uRam00c80c0c = _UNK_00bac464;
        uRam00c80c10 = _UNK_00bac468;
        uRam00c80c14 = _UNK_00bac46c;
        _DAT_00c80c2c = 0;
        _DAT_00c80c44 = ZEXT816(0);
        _DAT_00c80c30 = 0;
        _DAT_00c80c54 = 0x3e20a0a1;
        _DAT_00c80c34 = _DAT_00bac320;
        uRam00c80c38 = _UNK_00bac324;
        uRam00c80c3c = _UNK_00bac328;
        uRam00c80c40 = _UNK_00bac32c;
        _DAT_00c80c58 = 0;
        _DAT_00c80c70 = ZEXT816(0);
        _DAT_00c80c5c = 0;
        _DAT_00c80c80 = 0;
        _DAT_00c80c60 = _DAT_00bac610;
        uRam00c80c64 = _UNK_00bac614;
        uRam00c80c68 = _UNK_00bac618;
        uRam00c80c6c = _UNK_00bac61c;
        _DAT_00c80c84 = 0;
        _DAT_00c80c9c = ZEXT816(0);
        _DAT_00c80c88 = 0;
        _DAT_00c80cac = 0x3e8c8c8d;
        _DAT_00c80c8c = _DAT_00bac670;
        uRam00c80c90 = _UNK_00bac674;
        uRam00c80c94 = _UNK_00bac678;
        uRam00c80c98 = _UNK_00bac67c;
        _DAT_00c80cb0 = 0;
        _DAT_00c80cb4 = 0;
        FUN_00aef253();
      }
      fVar6 = (param_1[0xd0] - param_1[0xe4]) * (param_1[0xd0] - param_1[0xe4]) +
              (param_1[0xcf] - param_1[0xe3]) * (param_1[0xcf] - param_1[0xe3]);
      FUN_00435a50();
      pfVar19 = (float *)((fVar6 * DAT_00baa08c) / param_1[0xe7]);
      if ((float)pfVar19 <= (float)DAT_00ba9fe4) {
        pfVar19 = DAT_00ba9fe4;
      }
      if ((float)DAT_00baa454 <= (float)pfVar19) {
        pfVar19 = DAT_00baa454;
      }
      FUN_00407170(&DAT_00c80bb0 +
                   ((uint)((int)DAT_00c71678[0x993e] - (int)param_1[0xca]) % 6) * 0x2c,pfVar19);
      uVar7 = FUN_006832e0();
      (**(code **)((int)*param_1 + 0x3c))(uVar7,1,0xff,0,1);
      pfStack_30c = (float *)param_1[0x5a];
      pfVar19 = (float *)param_1[0x5b];
    }
    if ((0 < (int)param_1[0xbc]) &&
       (fVar6 = param_1[0xbc], param_1[0xbc] = (float)((int)fVar6 + -1), (int)fVar6 + -1 < 1)) {
      pfVar19 = (float *)((uint)pfVar19 & 0xfff7ffff);
      param_1[0x5a] = (float)pfStack_30c;
      param_1[0x5b] = (float)pfVar19;
    }
    local_320 = pfStack_30c;
    if ((0 < (int)param_1[0xbd]) &&
       (fVar6 = (float)((int)param_1[0xbd] + -1), param_1[0xbd] = fVar6, (int)fVar6 < 1)) {
      pfVar19 = (float *)((uint)pfVar19 & 0xffefffff);
      param_1[0x5a] = (float)pfStack_30c;
      pfVar17 = DAT_00c71678;
      fVar6 = 0.0;
      param_1[0x5b] = (float)pfVar19;
      local_304 = (float *)pfVar17[0x60c0];
      if (local_304[0x499] != 0.0) {
        do {
          iVar5 = *(int *)((int)local_304[0x497] + (int)fVar6 * 4);
          if (((1 < (int)DAT_00c71678[0x9985]) && (*(int *)(iVar5 + 0x28) == 1)) ||
             (*(int *)(iVar5 + 0x28) - 10U < 0x3de)) {
            local_310 = (float *)(iVar5 + 0x3c4);
            if ((*(float **)(iVar5 + 0x3c4) == param_1) &&
               ((*(uint *)(iVar5 + 0x168) & 0x20000100) == 0)) {
              if (*(float **)(iVar5 + 0x3c4) != (float *)0x0) {
                fStack_2bc = (float)(iVar5 + 0x3c4);
                FUN_004cf210();
              }
              *local_310 = 0.0;
            }
          }
          fVar6 = (float)((int)fVar6 + 1);
        } while ((uint)fVar6 < (uint)local_304[0x499]);
        local_320 = (float *)param_1[0x5a];
        pfVar19 = (float *)param_1[0x5b];
      }
    }
    if ((0 < (int)param_1[0xbf]) &&
       (fVar6 = (float)((int)param_1[0xbf] + -1), param_1[0xbf] = fVar6, (int)fVar6 < 1)) {
      pfVar19 = (float *)((uint)pfVar19 & 0xffbfffff);
      param_1[0x5a] = (float)local_320;
      param_1[0x5b] = (float)pfVar19;
    }
    local_2c8 = CONCAT44(local_2c8._4_4_,local_320);
    if ((param_1[0xc4] != 0.0) && (((uint)pfVar19 & 0x80000) == 0)) {
      (**(code **)(*(int *)param_1[0xc4] + 0x28))();
      local_320 = (float *)param_1[0x5a];
      pfVar19 = (float *)param_1[0x5b];
    }
    if ((0 < (int)param_1[0xbe]) &&
       (fVar6 = (float)((int)param_1[0xbe] + -1), param_1[0xbe] = fVar6, (int)fVar6 < 1)) {
      pfVar19 = (float *)((uint)pfVar19 & 0xfffe7fff);
      param_1[0x5a] = (float)local_320;
      param_1[0x5b] = (float)pfVar19;
    }
    if ((0 < (int)param_1[0xc0]) &&
       (fVar6 = param_1[0xc0], param_1[0xc0] = (float)((int)fVar6 + -1), (int)fVar6 + -1 < 1)) {
      pfVar19 = (float *)((uint)pfVar19 & 0xfffbffff);
      param_1[0x5a] = (float)local_320;
      param_1[0x5b] = (float)pfVar19;
    }
    if ((0 < (int)param_1[0xc1]) &&
       (fVar6 = (float)((int)param_1[0xc1] + -1), param_1[0xc1] = fVar6, (int)fVar6 < 1)) {
      pfVar19 = (float *)((uint)pfVar19 & 0xfeffffff);
      param_1[0x5a] = (float)local_320;
      param_1[0x5b] = (float)pfVar19;
    }
    if (0 < (int)param_1[0x8e]) {
      param_1[0x8e] = (float)((int)param_1[0x8e] + -1);
    }
    local_318 = local_320;
    local_314 = local_320;
    if (0 < (int)param_1[0xfc]) {
      param_1[0xfc] = (float)((int)param_1[0xfc] + -1);
    }
  }
  if (((uint)local_318 & 0x4000) == 0) {
    if (*(char *)(param_1 + 0xec) == '\0') {
      pfVar19 = (float *)param_1[2];
      uStack_31c = uStack_31c & 0xffffff;
      fStack_284 = DAT_00c7b640;
      fStack_280 = DAT_00c7b644;
      fStack_27c = DAT_00c7b640;
      fStack_278 = DAT_00c7b644;
      fStack_294 = 0.0;
      fStack_290 = fStack_294;
      fStack_28c = fStack_294;
      fStack_288 = fStack_294;
      fStack_274 = fStack_294;
      fStack_270 = fStack_294;
      if (pfVar19 != (float *)param_1[3]) {
        local_320 = pfVar19 + 0xb;
        do {
          if (*pfVar19 <= 0.0) {
LAB_006af89c:
            cVar4 = uStack_31c._3_1_;
          }
          else {
            if (((uint)DAT_00c71678[0x9951] >> 6 & 1) != 0) {
              FUN_00a0f550();
              FUN_00703580();
            }
            local_2c8 = CONCAT44(local_320[-8],(undefined4)local_2c8);
            if ((((uint)local_320[-9] & 0x202) != 0) && (((uint)local_320[-9] & 4) == 0)) {
              uStack_2b4 = 0x2b;
              FUN_00956780();
              FUN_0092dc30();
              param_1 = local_2e8;
            }
            fVar6 = param_1[0xe0] - *pfVar19;
            param_1[0xe0] = fVar6;
            if ((0.0 < fVar6) || (((uint)local_320[-9] & 1) != 0)) {
              if (((uint)param_1[0x5a] & 0x2000000) == 0) {
                if (fVar6 < 0.0) {
                  param_1[0xe0] = 0.0;
                }
                if ((param_1[10] == 5.703285e-43) || (param_1[10] == 1.332635e-42)) {
                  auStack_b4 = ZEXT816(0);
                  uStack_a4 = 0x3ec8c8ca;
                  uStack_a0 = 0;
                  uStack_c4 = _DAT_00bac3a0;
                  uStack_c0 = _UNK_00bac3a4;
                  uStack_bc = _UNK_00bac3a8;
                  uStack_b8 = _UNK_00bac3ac;
                  uStack_9c = 0;
                  puVar14 = &uStack_c4;
                }
                else {
                  auStack_e0 = ZEXT816(0);
                  uStack_d0 = 0x3f48c8ca;
                  uStack_cc = 0;
                  uStack_f0 = _DAT_00bac4b0;
                  uStack_ec = _UNK_00bac4b4;
                  uStack_e8 = _UNK_00bac4b8;
                  uStack_e4 = _UNK_00bac4bc;
                  uStack_c8 = 0;
                  puVar14 = &uStack_f0;
                }
                (**(code **)((int)*param_1 + 0x3c))(puVar14);
              }
              goto LAB_006af89c;
            }
            fStack_294 = local_320[-7];
            fStack_290 = local_320[-6];
            fStack_28c = local_320[-5];
            fStack_288 = local_320[-4];
            fStack_284 = local_320[-3];
            fStack_280 = local_320[-2];
            fStack_27c = local_320[-1];
            fStack_278 = *local_320;
            fStack_274 = local_320[1];
            fStack_270 = local_320[2];
            uStack_31c = CONCAT13(1,(undefined3)uStack_31c);
            cVar4 = '\x01';
          }
          pfVar19 = pfVar19 + 0xe;
          local_320 = local_320 + 0xe;
        } while (pfVar19 != (float *)param_1[3]);
        if (cVar4 != '\0') {
          (**(code **)((int)*param_1 + 0x24))();
        }
      }
    }
    param_1[3] = param_1[2];
    param_1[5] = 0.0;
    param_1[6] = 0.0;
    param_1[7] = 0.0;
    local_318 = (float *)param_1[0x5a];
    pfVar19 = (float *)param_1[0x5b];
  }
  if (((uint)local_318 & 0x4000) == 0) {
    if (((1 < (int)DAT_00c71678[0x9985]) && (param_1[10] == 1.401298e-45)) ||
       ((int)param_1[10] - 10U < 0x3de)) {
      local_308 = (float *)&DAT_00000014;
      if ((((uint)local_318 & 0x40) != 0) &&
         (fVar6 = param_1[0xb8], param_1[0xb8] = (float)((int)fVar6 + 1), (int)fVar6 % 0x14 == 1)) {
        auStack_88 = ZEXT816(0);
        uStack_78 = 0;
        uStack_98 = _DAT_00bac1d0;
        uStack_94 = _UNK_00bac1d4;
        uStack_90 = _UNK_00bac1d8;
        uStack_8c = _UNK_00bac1dc;
        uStack_74 = 0x3f000000;
        uStack_70 = 0;
        (**(code **)((int)*param_1 + 0x3c))(&uStack_98,2,0xff,0,1);
        uVar7 = FUN_00435c70();
        (**(code **)((int)*param_1 + 0x20))(param_1[200],0x8000,0,uVar7,0x1e);
        local_318 = (float *)param_1[0x5a];
        pfVar19 = (float *)param_1[0x5b];
      }
      pfStack_2d8 = local_318;
      if (((uint)local_318 & 0x1000) != 0) {
        fVar6 = param_1[0xb9];
        param_1[0xb9] = (float)((int)fVar6 + 1);
        if ((int)fVar6 % (int)local_308 == 1) {
          auStack_5c = ZEXT816(0);
          uStack_4c = 0x3f000000;
          uStack_6c = _DAT_00bac1c0;
          uStack_68 = _UNK_00bac1c4;
          uStack_64 = _UNK_00bac1c8;
          uStack_60 = _UNK_00bac1cc;
          uStack_48 = 0x3e99999a;
          uStack_44 = 0;
          (**(code **)((int)*param_1 + 0x3c))(&uStack_6c,2,0xff,0,1);
          uVar7 = FUN_00435c70();
          (**(code **)((int)*param_1 + 0x20))(param_1[0xc9],0x8000,0,uVar7,0x1e);
          pfStack_2d8 = (float *)param_1[0x5a];
          pfVar19 = (float *)param_1[0x5b];
        }
      }
      if ((((uint)pfVar19 & 4) != 0) && (cVar4 = FUN_006a8fa0(), cVar4 == '\0')) {
        fVar6 = (param_1[0xd0] - param_1[0xe4]) * (param_1[0xd0] - param_1[0xe4]) +
                (param_1[0xcf] - param_1[0xe3]) * (param_1[0xcf] - param_1[0xe3]);
        FUN_00435a50();
        pfVar19 = DAT_00c71678;
        local_310 = (float *)(fVar6 * param_1[0xe7] * DAT_00baa08c + param_1[0xbb]);
        param_1[0xbb] = (float)local_310;
        fVar6 = pfVar19[1];
        if ((fVar6 == 5.605194e-45) || (fVar6 == 7.006492e-45)) {
          fVar6 = (float)((int)*DAT_00c71678 + 1);
        }
        else {
          fVar6 = *pfVar19;
        }
        local_304 = (float *)((float)(int)fVar6 * DAT_00baa1f8 + DAT_00baa6ec);
        pfStack_2f4 = local_310;
        dVar26 = floor((double)(float)local_310);
        local_308 = (float *)(float)dVar26;
        pfVar19 = local_304;
        if (1 < (int)DAT_00c71678[0x9985]) {
          pfVar19 = DAT_00baa454;
        }
        pfVar17 = local_308;
        if ((float)DAT_00baa81c <= (float)local_308) {
          pfVar17 = DAT_00baa81c;
        }
        param_1[0xbb] = (float)pfStack_2f4 - (float)local_308;
        fVar6 = (float)pfVar17 * (float)pfVar19;
        if ((float)DAT_00ba9fe4 < fVar6) {
          uVar7 = FUN_00435c70();
          (**(code **)((int)*param_1 + 0x20))(fVar6,0,0,uVar7);
          local_310 = (float *)0x0;
          if (0.0 < (float)local_308) {
            do {
              pfStack_2d8 = (float *)(((param_1[0xe3] - param_1[0xcf]) * (float)local_310) /
                                      (float)local_308 + param_1[0xcf]);
              ppfStack_2d4 = (float **)
                             (((param_1[0xe4] - param_1[0xd0]) * (float)local_310) /
                              (float)local_308 + param_1[0xd0]);
              pfStack_2f4 = (float *)FUN_006eef60();
              ppfVar9 = &pfStack_2f4;
              pfStack_2f8 = DAT_00c71678;
              local_318 = (float *)0x0;
              uStack_2c0 = 0x2e;
              local_314 = (float *)0x3e8;
              FUN_008646e0(&local_314,&uStack_2c0,&pfStack_2d8,&DAT_00c7b640,0);
              if (1 < (int)DAT_00c71678[0x9985]) {
                apiStack_328[0] = (int *)DAT_00c71678[0x9988];
                uVar8 = FUN_006eef60();
                local_2c8 = DAT_00b1f66c;
                local_318 = (float *)DAT_00b1f674;
                uStack_2c0 = DAT_00b1f674;
                uStack_31c = uVar8;
                if (unaff_EDI == 5) {
                  if (uStack_2dc < 0x12d) {
                    if (uStack_2dc == 300) {
                      while ((ppfVar9 == (float **)0x0 ||
                             (cVar4 = (**(code **)(*apiStack_328[0] + 0x24))(ppfVar9), cVar4 != '\0'
                             ))) {
                        if (uStack_31c == 0) {
                          FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                          pcVar1 = (code *)swi(3);
                          (*pcVar1)();
                          return;
                        }
                        uVar8 = uStack_31c >> ((byte)local_2c8 & 0x1f) ^ uStack_31c;
                        uVar8 = uVar8 << ((byte)(local_2c8 >> 0x20) & 0x1f) ^ uVar8;
                        uVar8 = uVar8 >> ((byte)local_318 & 0x1f) ^ uVar8;
                        uStack_31c = uVar8;
                        uVar7 = FUN_00734180(uVar8,0x19,10,10,1);
                        uStack_118 = DAT_00b1f66c;
                        uStack_110 = DAT_00b1f674;
                        uStack_11c = uVar8;
                        ppfVar9 = (float **)FUN_00865340(&uStack_11c,uVar7,1,1,0);
                      }
                    }
                    else {
                      if (uStack_2dc == 0x46) {
                        uStack_2ec = (uint)ppfVar9 >> 0xb;
                        do {
                          if (ppfVar9 != (float **)0x0) {
                            pcVar1 = *(code **)(*apiStack_328[0] + 0x28);
                            uVar7 = FUN_00734a80(ppfVar9,0);
                            cVar4 = (*pcVar1)(uVar7);
                            uVar8 = uStack_31c;
                            if (cVar4 == '\0') goto LAB_006b019c;
                          }
                          if (uVar8 == 0) {
                            FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                            pcVar1 = (code *)swi(3);
                            (*pcVar1)();
                            return;
                          }
                          uVar8 = uVar8 >> ((byte)local_2c8 & 0x1f) ^ uVar8;
                          uVar8 = uVar8 << ((byte)(local_2c8 >> 0x20) & 0x1f) ^ uVar8;
                          uVar8 = uVar8 >> ((byte)local_318 & 0x1f) ^ uVar8;
                          uStack_31c = uVar8;
                          uVar16 = FUN_00734900(uVar8);
                          ppfVar9 = (float **)(uVar16 | (uStack_2ec & 1) << 0xb);
                        } while( true );
                      }
                      if (uStack_2dc == 100) {
                        ppfVar10 = ppfVar9;
                        if ((ppfVar9 == (float **)0x19) ||
                           (((ppfStack_2d4 = ppfVar9, FUN_004288a0(auStack_268,&ppfStack_2d4),
                             *(char *)(iStack_260 + 0xd) == '\0' &&
                             (*(int *)(iStack_260 + 0x10) <= (int)ppfVar9)) &&
                            (iStack_260 != apiStack_328[0][8])))) {
                          bVar18 = false;
                        }
                        else {
                          bVar18 = true;
                        }
                        if ((ppfVar9 == (float **)0x0) || (ppfVar9 = ppfVar10, bVar18)) {
                          ppfVar9 = (float **)(**(code **)(*apiStack_328[0] + 0x84))(0);
                        }
                      }
                    }
                  }
                  else if (uStack_2dc == 0x15e) {
                    while ((ppfVar9 == (float **)0x0 ||
                           (cVar4 = (**(code **)(*apiStack_328[0] + 0x2c))(ppfVar9), cVar4 != '\0'))
                          ) {
                      ppfVar9 = (float **)FUN_00733ca0(0);
                    }
                  }
                }
              }
LAB_006b019c:
              local_318 = (float *)FUN_006f0090(unaff_EDI,0);
              lVar2 = CONCAT44(local_314,local_310);
              if (local_318 == (float *)0x0) {
                pfVar19 = (float *)0x0;
              }
              else {
                uVar25 = FUN_00a68490();
                pfVar17 = local_318;
                uVar16 = (uint)(uVar25 >> 0x20);
                lVar2 = (uVar25 & 0xffffffff) * 0x431bde82;
                pfStack_30c = (float *)((ulonglong)lVar2 >> 0x20);
                uVar25 = (ulonglong)uVar16 * 0xd7b634db +
                         ((uVar25 & 0xffffffff) * 0xd7b634db >> 0x20);
                uVar15 = (uint)(uVar25 >> 0x20);
                lVar2 = lVar2 + (uVar25 & 0xffffffff);
                uStack_2ec = (uint)lVar2;
                uVar8 = (uint)((ulonglong)lVar2 >> 0x20);
                lVar2 = (ulonglong)uVar16 * 0x431bde82 +
                        (ulonglong)CONCAT14(CARRY4(uVar15,uVar8),uVar15 + uVar8);
                uVar8 = (uint)((ulonglong)lVar2 >> 0x20);
                uStack_31c = (uint)lVar2 >> 0x12 | uVar8 * 0x4000;
                apiStack_328[0] = (int *)(uVar8 >> 0x12);
                pfVar19 = local_318 + 0xf2;
                local_318[0xd] = 0.0;
                local_318[0xe] = 0.0;
                if (*pfVar19 != 0.0) {
                  pfStack_2fc = pfVar19;
                  FUN_004cf210(&pfStack_2fc);
                }
                fVar6 = *pfVar17;
                *pfVar19 = 0.0;
                pfVar17[0xcf] = (float)pfStack_2f4;
                pfVar17[0xd0] = fStack_2f0;
                pfVar17[0xd8] = DAT_00c7b640;
                pfVar17[0xd9] = DAT_00c7b644;
                (**(code **)((int)fVar6 + 4))(unaff_EDI,uStack_2dc,ppfVar9,local_310);
                fVar6 = *(float *)((int)local_314[0x60c0] + 0x1214);
                *(int *)((int)local_314[0x60c0] + 0x1214) = (int)fVar6 + 1;
                pfVar17[8] = fVar6;
                FUN_00418500(pfVar17);
                cVar4 = FUN_007078f0(pfVar17);
                if (cVar4 != '\0') {
                  FUN_007079c0(pfVar17,extraout_ECX);
                }
                if ((*(char *)((int)pfVar17 + 0x172) != '\0') &&
                   (local_314[0x19dd6] != local_314[0x19dd7])) {
                  fStack_280 = pfVar17[0xb];
                  fVar6 = pfVar17[10];
                  ppfVar9 = (float **)(local_314 + 0x19de0);
                  fStack_284 = fVar6;
                  FUN_009e24a0(&local_320,&fStack_284);
                  if (local_320 == *ppfVar9) {
                    fStack_278 = -NAN;
                    fStack_27c = fVar6;
                    ppfVar10 = (float **)FUN_009e24a0(&local_26c,&fStack_27c);
                    local_320 = *ppfVar10;
                    if (local_320 == *ppfVar9) goto LAB_006b0415;
                  }
                  uVar8 = 0;
                  pfVar19 = DAT_00c71678 + 0x6eaa;
                  if ((int)DAT_00c71678[0x6eab] - (int)*pfVar19 >> 2 != 0) {
                    do {
                      if ((int)pfVar19[1] - (int)*pfVar19 >> 2 == 0) {
                        FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
                      }
                      FUN_009e0680(6,local_318,&pfStack_2f4,&DAT_00c7b640);
                      uVar8 = uVar8 + 1;
                      pfVar19 = DAT_00c71678 + 0x6eaa;
                    } while (uVar8 < (uint)((int)DAT_00c71678[0x6eab] - (int)*pfVar19 >> 2));
                  }
                }
LAB_006b0415:
                uVar25 = FUN_00a68490();
                uVar8 = (uint)(uVar25 >> 0x20);
                lVar3 = (uVar25 & 0xffffffff) * 0x431bde82;
                uStack_2ec = (uint)((ulonglong)lVar3 >> 0x20);
                lVar2 = (ulonglong)uVar8 * 0x431bde82;
                uVar25 = (ulonglong)uVar8 * 0xd7b634db +
                         ((uVar25 & 0xffffffff) * 0xd7b634db >> 0x20);
                uVar16 = (uint)(uVar25 >> 0x20);
                lVar3 = lVar3 + (uVar25 & 0xffffffff);
                pfStack_30c = (float *)lVar3;
                uVar8 = (uint)((ulonglong)lVar3 >> 0x20);
                lVar3 = lVar2 + (ulonglong)CONCAT14(CARRY4(uVar16,uVar8),uVar16 + uVar8);
                uVar15 = (uint)((ulonglong)lVar3 >> 0x20);
                uVar8 = (uint)lVar3 >> 0x12 | uVar15 * 0x4000;
                uVar16 = uVar8 - uStack_31c;
                bVar18 = CARRY4(DAT_00c7b630,uVar16);
                DAT_00c7b630 = DAT_00c7b630 + uVar16;
                DAT_00c7b634 = DAT_00c7b634 +
                               (((uVar15 >> 0x12) - (int)apiStack_328[0]) -
                               (uint)(uVar8 < uStack_31c)) + (uint)bVar18;
                pfVar19 = local_318;
              }
              local_314 = (float *)((ulonglong)lVar2 >> 0x20);
              local_310 = (float *)lVar2;
              uVar7 = FUN_006b62b0();
              FUN_00431570(uVar7);
              iVar5 = FUN_006eef60();
              fVar20 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198;
              fVar6 = fVar20 * DAT_00c3793c;
              pfVar19[0x3a] = fVar20 * DAT_00c37940;
              pfVar19[0x39] = fVar6;
              (**(code **)((int)*pfVar19 + 0xc))();
              uVar7 = FUN_006eef60();
              piVar11 = (int *)HELPER_Entity_CreateDispatcher
                                         (1000,7,&pfStack_2f4,&DAT_00c7b640,0,0,uVar7,0);
              (**(code **)(*piVar11 + 0xc))();
              uVar7 = FUN_006eef60();
              uVar8 = FUN_006eef60();
              iVar5 = FUN_006eef60();
              fVar6 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa704;
              pfStack_30c = (float *)(fVar6 + fVar6);
              fVar6 = (float)pfStack_30c;
              FUN_0041d540();
              fStack_274 = fVar6 * DAT_00baa784;
              fVar6 = (float)pfStack_30c;
              FUN_0041d520();
              fStack_270 = fVar6 * DAT_00baa2d0 * DAT_00baa784;
              iVar5 = FUN_006eef60();
              fVar6 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa704;
              pfStack_30c = (float *)(fVar6 + fVar6);
              pfVar19 = pfStack_30c;
              FUN_0041d540();
              local_2e4 = (float *)((float)pfVar19 * DAT_00baa2d0 * local_304[0xdc] + *pfStack_300);
              pfVar19 = pfStack_30c;
              FUN_0041d520();
              param_1 = local_304;
              fStack_2e0 = (float)pfVar19 * DAT_00baa2d0 * local_304[0xdc] + pfStack_300[1];
              piVar11 = (int *)HELPER_Entity_CreateDispatcher
                                         (1000,5,&local_2e4,&fStack_274,local_304,uVar8 % 3,uVar7,0)
              ;
              (**(code **)(*piVar11 + 0xc))();
              local_310 = (float *)((float)local_310 + (float)DAT_00baa454);
            } while ((float)local_310 < (float)local_308);
          }
        }
      }
    }
    if ((*(char *)((int)param_1 + 0x173) == '\0') && (((uint)param_1[0x5b] & 0x80000) != 0)) {
      pfVar19 = DAT_00baa454;
      cVar4 = FUN_006a8db0();
      if ((cVar4 != '\0') &&
         (pfVar17 = (float *)param_1[0xef], (float *)param_1[0xef] != (float *)0x0)) {
        do {
          pfVar23 = pfVar17;
          pfVar17 = (float *)pfVar23[0xef];
        } while (pfVar17 != (float *)0x0);
        if (pfVar23 != param_1) goto LAB_006b0a5d;
      }
      local_304 = (float *)0x0;
      fStack_2bc = DAT_00c71678[0x60c0];
      pfStack_2f8 = pfVar19;
      if (*(int *)((int)fStack_2bc + 0x1264) != 0) {
        do {
          pfVar19 = *(float **)(*(int *)((int)fStack_2bc + 0x125c) + (int)local_304 * 4);
          local_308 = pfVar19;
          cVar4 = FUN_006a8db0();
          if (cVar4 != '\0') {
            local_308 = pfVar19;
            for (pfVar17 = (float *)pfVar19[0xef]; pfVar17 != (float *)0x0;
                pfVar17 = (float *)pfVar17[0xef]) {
              local_308 = pfVar17;
              param_1 = local_2e8;
            }
          }
          pfVar17 = (float *)FUN_006a89f0();
          if ((((pfVar17 != local_308) &&
               (((int)DAT_00c71678[0x9985] < 2 || (cVar4 = FUN_006a8fa0(), cVar4 == '\0')))) &&
              ((cVar4 = HELPER_Entity_DamageFilter(), cVar4 != '\0' ||
               ((((fVar6 = pfVar19[10], fVar6 == 1.261169e-44 || (fVar6 == 2.802597e-45)) ||
                 (fVar6 == 5.605194e-45)) ||
                (((fVar6 == 7.006492e-45 && (pfVar19[0x14d] == 0.0)) &&
                 ((cVar4 = FUN_006ee340(), cVar4 == '\0' || (pfVar19[0xc] != 0.0)))))))))) &&
             (pfVar19 != param_1)) {
            fVar6 = pfVar19[0xcf];
            fVar20 = param_1[0xcf];
            if ((((NAN(fVar6) || NAN(fVar20)) == (fVar6 == fVar20)) ||
                ((NAN(pfVar19[0xd0]) || NAN(param_1[0xd0])) == (pfVar19[0xd0] == param_1[0xd0]))) &&
               ((NAN(pfVar19[0xdb]) || NAN((float)DAT_00ba9fe4)) ==
                (pfVar19[0xdb] == (float)DAT_00ba9fe4))) {
              local_308 = (float *)(fVar20 - fVar6);
              pfStack_2fc = (float *)(param_1[0xd0] - pfVar19[0xd0]);
              local_2e4 = (float *)((float)pfStack_2fc * (float)pfStack_2fc +
                                   (float)local_308 * (float)local_308);
              if ((float)local_2e4 < DAT_00baac70) {
                pfVar17 = local_2e4;
                FUN_00435a50();
                local_310 = pfVar17;
                pfVar23 = local_2e4;
                FUN_00435a50();
                pfVar17 = DAT_00baa454;
                fVar6 = DAT_00baa1f8;
                if (0.0 < (float)pfVar23) {
                  local_308 = (float *)((float)local_308 * ((float)DAT_00baa454 / (float)pfVar23));
                  pfStack_2fc = (float *)((float)pfStack_2fc *
                                         ((float)DAT_00baa454 / (float)pfVar23));
                }
                fVar20 = pfVar19[10];
                if ((((1 < (int)DAT_00c71678[0x9985]) && (fVar20 == 1.401298e-45)) ||
                    ((int)fVar20 - 10U < 0x3de)) ||
                   ((fVar20 == 2.802597e-45 || (fVar21 = DAT_00baa8e0, fVar20 == 5.605194e-45)))) {
                  fVar21 = DAT_00baa9a0;
                }
                if ((((1 < (int)DAT_00c71678[0x9985]) && (fVar20 == 1.401298e-45)) ||
                    (((int)fVar20 - 10U < 0x3de || (fVar20 == 5.605194e-45)))) &&
                   ((float)local_310 < pfVar19[0xdc] + param_1[0xdc] + DAT_00baa85c)) {
                  pfStack_2f8 = (float *)((float)pfStack_2f8 * DAT_00baa3a4);
                }
                if (DAT_00baa7e8 <= (float)local_310) {
                  fVar22 = (float)DAT_00baa454 / (float)local_310;
                }
                else {
                  fVar22 = (float)local_310 * _DAT_00baa07c;
                }
                if (fVar20 == 1.261169e-44) {
                  fStack_2f0 = 0.5;
                  pfVar17 = (float *)((float)((int)DAT_00c71678[0x993e] - (int)pfVar19[0xca]) /
                                     DAT_00baa8d0);
                  if ((float)DAT_00baa454 <= (float)pfVar17) {
                    pfVar17 = DAT_00baa454;
                  }
                  fVar22 = (float)pfVar17 * fVar22;
                  pfVar23 = (float *)((fVar21 * fVar22) / pfVar19[0xdb]);
                  fStack_2e0 = (float)DAT_00baa454 - (fVar22 + fVar22);
                  pfVar17 = &fStack_2e0;
                  if (fStack_2e0 <= DAT_00baa2d0) {
                    pfVar17 = &fStack_2f0;
                  }
                  fVar20 = *pfVar17;
                  pfVar19[0xd9] = fVar20 * pfVar19[0xd9];
                  pfVar19[0xd8] = fVar20 * pfVar19[0xd8];
                  if ((fVar6 < fVar22) && (pfVar19[0x106] <= 0.0 && pfVar19[0x106] != 0.0)) {
                    pfVar19[0x106] = 0.0;
                  }
                  if (((*(char *)((int)pfVar19 + 0x173) == '\0') &&
                      ((float)local_2e4 < param_1[0xdc] * param_1[0xdc])) &&
                     ((0xf < (int)DAT_00c71678[0x993e] - (int)pfVar19[0xca] &&
                      (DAT_00baae30 < pfVar19[0x104])))) {
                    *(undefined *)((int)pfVar19 + 0x173) = 1;
                  }
                }
                else {
                  local_314 = (float *)((fVar21 * fVar22) / pfVar19[0xdb]);
                  pfVar23 = local_314;
                  if (fVar20 == 2.802597e-45) {
                    fStack_2f0 = 0.5;
                    fStack_2e0 = (float)DAT_00baa454 - (fVar22 + fVar22);
                    pfVar12 = &fStack_2e0;
                    if (fStack_2e0 <= DAT_00baa2d0) {
                      pfVar12 = &fStack_2f0;
                    }
                    fVar6 = *pfVar12 * pfVar19[0xd9];
                    fVar20 = *pfVar12 * pfVar19[0xd8];
                    pfVar19[0xd9] = fVar6;
                    pfVar19[0xd8] = fVar20;
                    local_320 = DAT_00c34b64;
                    fStack_2e0 = (float)((uint)pfVar19[0x10c] & DAT_00c34b68);
                    fStack_2f0 = (float)((uint)pfVar19[0x10d] & DAT_00c34b6c);
                    uStack_2b8 = DAT_00c34b6c;
                    uStack_2d0 = DAT_00c34b60;
                    param_1 = local_2e8;
                    if (((((uint)pfVar19[0x10a] & DAT_00c34b60 |
                          (uint)pfVar19[0x10b] & (uint)DAT_00c34b64) != 0) ||
                        (((uint)fStack_2e0 | (uint)fStack_2f0) != 0)) &&
                       (fVar6 * fVar6 + fVar20 * fVar20 < (float)pfVar17)) {
                      uStack_2b0 = ~DAT_00c34b60 & (uint)pfVar19[0x10a];
                      local_320 = (float *)(~(uint)DAT_00c34b64 & (uint)pfVar19[0x10b]);
                      uStack_2a8 = ~DAT_00c34b68 & (uint)pfVar19[0x10c];
                      uStack_2a4 = ~DAT_00c34b6c & (uint)pfVar19[0x10d];
                      pfStack_2ac = local_320;
                      FUN_00676150();
                      pfVar23 = local_314;
                    }
                  }
                }
                pfVar19[0xd8] = (float)local_308 * (float)pfVar23 + pfVar19[0xd8];
                pfVar19[0xd9] = (float)pfStack_2fc * (float)pfVar23 + pfVar19[0xd9];
              }
            }
          }
          local_304 = (float *)((int)local_304 + 1);
        } while (local_304 < *(float **)((int)fStack_2bc + 0x1264));
      }
      param_1[0xd9] = (float)pfStack_2f8 * param_1[0xd9];
      param_1[0xd8] = (float)pfStack_2f8 * param_1[0xd8];
    }
  }
LAB_006b0a5d:
  if ((((((uint)param_1[0x5a] & 0x4000) == 0) &&
       ((float)DAT_00ba9fe4 < *(float *)((int)DAT_00c71678[0x60c0] + 0x7240))) &&
      (*(char *)(DAT_00c7169c + 0x2a3c9) != '\0')) &&
     (((FUN_006b6ed0(), param_1[0x62] != 0.0 && (param_1[0x61] == 7.006492e-45)) ||
      ((local_2c8 & 0x80) != 0)))) {
    fVar6 = param_1[0xd8] * param_1[0xd8] + param_1[0xd9] * param_1[0xd9];
    FUN_00435a50();
    if ((DAT_00baa06c < fVar6) && (iVar5 = FUN_006ac760(), iVar5 != 0)) {
      uVar7 = FUN_006eef60();
      HELPER_Entity_CreateDispatcher(1000,0x85,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar7,0);
    }
  }
  if (DAT_00baac34 <=
      (float)((uint)param_1[0xcf] & DAT_00bacb40) + (float)((uint)param_1[0xd0] & DAT_00bacb40)) {
    FUN_00a112c0(0x10,"Invalid entity position detected: %.2f, %.2f (%d.%d.%d)\n",
                 (double)param_1[0xcf],(double)param_1[0xd0],param_1[10],param_1[0xb],param_1[0xc]);
  }
  FUN_00aef12b();
  return;
}

