/* Local J460 decompiler output.
 * VA: 0x00468180
 * Entry: 00468180
 * Dispatcher: 0x006c2990
 * Types: 101
 * Identities: 101.0.0,101.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00468942; instructions=449
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=101; identities=101.0.0,101.1.0; dispatcher=0x006c2990;
   end=0x00468942; instructions=449 */

void __fastcall AI_00468180(int *param_1)

{
  float fVar1;
  code *pcVar2;
  longlong lVar3;
  longlong lVar4;
  int *piVar5;
  char cVar6;
  byte bVar7;
  undefined *puVar8;
  uint uVar9;
  uint uVar10;
  int *piVar11;
  undefined4 uVar12;
  int iVar13;
  int *piVar14;
  float *pfVar15;
  int iVar16;
  int iVar17;
  int iVar18;
  undefined4 *puVar19;
  undefined4 extraout_ECX;
  float *pfVar20;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  uint uVar21;
  int *unaff_ESI;
  uint *puVar22;
  undefined4 unaff_EDI;
  bool bVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  ulonglong uVar27;
  undefined4 uVar28;
  undefined4 uVar29;
  undefined4 uVar30;
  uint uVar31;
  undefined8 *puVar32;
  char *pcVar33;
  int *piVar34;
  float fStack_348;
  uint uStack_344;
  int iStack_340;
  uint *local_33c;
  int *piStack_338;
  int *piStack_334;
  undefined4 uStack_330;
  float *pfStack_32c;
  int *piStack_328;
  int *piStack_324;
  float fStack_320;
  float fStack_31c;
  float local_318;
  float local_314;
  int *piStack_310;
  int *local_30c;
  float fStack_308;
  int iStack_304;
  undefined8 *puStack_300;
  float fStack_2fc;
  undefined4 uStack_2f8;
  undefined4 uStack_2f4;
  uint uStack_2f0;
  uint uStack_2ec;
  float fStack_2e8;
  int *piStack_2e4;
  float fStack_2e0;
  int *piStack_2dc;
  uint uStack_2d8;
  int iStack_2d4;
  int iStack_2d0;
  undefined4 uStack_2cc;
  float fStack_2ac;
  float fStack_2a8;
  undefined8 uStack_2a4;
  float *pfStack_29c;
  float fStack_298;
  int iStack_294;
  undefined4 uStack_290;
  uint *puStack_274;
  float *pfStack_270;
  undefined4 uStack_26c;
  undefined4 uStack_268;
  float fStack_264;
  int *piStack_260;
  float fStack_25c;
  int *piStack_258;
  undefined4 uStack_254;
  undefined4 uStack_250;
  undefined4 uStack_24c;
  undefined4 uStack_248;
  undefined4 uStack_244;
  undefined4 uStack_240;
  float fStack_23c;
  int *piStack_238;
  float fStack_234;
  int *piStack_230;
  undefined4 uStack_22c;
  undefined4 uStack_228;
  float fStack_224;
  int *piStack_220;
  float fStack_21c;
  int *piStack_218;
  float fStack_214;
  int *piStack_210;
  float fStack_20c;
  int *piStack_208;
  float fStack_204;
  int *piStack_200;
  float fStack_1fc;
  int *piStack_1f8;
  float fStack_1f4;
  int *piStack_1f0;
  undefined auStack_1ec [8];
  int iStack_1e4;
  undefined auStack_1c4 [8];
  undefined auStack_1bc [8];
  undefined auStack_1b4 [20];
  uint uStack_1a0;
  undefined8 uStack_19c;
  float *pfStack_194;
  undefined4 uStack_174;
  undefined4 uStack_170;
  undefined4 uStack_16c;
  undefined4 uStack_168;
  undefined auStack_164 [16];
  undefined4 uStack_154;
  undefined4 uStack_150;
  undefined4 uStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  undefined4 uStack_140;
  undefined4 uStack_13c;
  undefined auStack_138 [16];
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined4 uStack_110;
  undefined auStack_10c [16];
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined auStack_f0 [44];
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  int aiStack_48 [4];
  undefined4 uStack_38;
  int aiStack_34 [2];
  float afStack_2c [8];
  uint local_c;
  
  uVar9 = DAT_00bacb70;
  fVar24 = DAT_00baa2d0;
  local_c = DAT_00bf93b4 ^ (uint)&fStack_348;
  iVar13 = param_1[0x2d9];
  local_30c = param_1;
  if (iVar13 == 0) {
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x2d9] = 3;
    FUN_00aef12b();
    return;
  }
  if (((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) && (param_1[0x2e9] < 1)) {
    if (iVar13 == 7) {
      if (param_1[0x2f0] == 0) {
        iVar13 = param_1[0x2f1];
        param_1[0x2f1] = iVar13 + 1;
        if ((iVar13 < (int)((param_1[0xb] != 1) + 3)) || (uVar9 = FUN_006eef60(), uVar9 % 7 == 0)) {
          iVar13 = param_1[0x2f1];
          if (4 < iVar13) {
            iVar13 = 4;
          }
          local_33c = (uint *)(iVar13 + -1);
          if (((int)local_33c / 2 == 0) || (param_1[0xb] == 1)) {
            pcVar33 = "StompArm";
          }
          else {
            pcVar33 = "StompLeg";
          }
          cVar6 = FUN_0040a5d0(pcVar33,1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
          *(byte *)(param_1 + 0x52) = ~(byte)local_33c & 1;
        }
        else {
          param_1[0x2d9] = 4;
          FUN_0040a380(&DAT_00b1cddc,0);
          param_1[0x104] = 0;
          local_314 = (float)((uint)DAT_00c37940 ^ DAT_00bacb70);
          local_318 = (float)((uint)DAT_00c3793c ^ DAT_00bacb70);
          FUN_006ac2a0(*(undefined4 *)(param_1[0xcc] + 0x38),local_318,local_314,0xffffffff);
        }
      }
      else {
        (**(code **)(*param_1 + 0x28))();
      }
    }
    else if (iVar13 == 6) {
      param_1[0x2d9] = 7;
      local_314 = (float)((uint)DAT_00c37940 ^ uVar9);
      local_318 = (float)((uint)DAT_00c3793c ^ uVar9);
      FUN_006ac2a0(*(float *)(param_1[0xcc] + 0x38) * fVar24,local_318,local_314,0xffffffff);
    }
    else {
      param_1[0x2d9] = 3;
      FUN_0040a380(&DAT_00b1bc54,0);
    }
  }
  if ((((param_1[0x2d9] == 4) || (param_1[0x2d9] == 7)) && (param_1[0x1f] != 0)) &&
     (cVar6 = FUN_0040add0(&DAT_00b1d574), cVar6 != '\0')) {
    if (param_1[0x2d9] == 4) {
      FUN_006d6ba0(0x34,0x3f333333,2,0,0x3f800000);
      FUN_00456570();
      local_33c = (uint *)param_1[0xcf];
      pfStack_32c = (float *)param_1[0xd0];
      fStack_25c = 1.821688e-44;
      iVar13 = DAT_00c71678[0x60c0];
      fStack_264 = 0.025;
      uStack_268 = 0x3d23d70a;
      *(int *)(iVar13 + 0x70fc) = *(int *)(iVar13 + 0x70fc) + 1;
      piStack_328 = (int *)(*(uint *)(iVar13 + 0x70fc) & 0x80000001);
      if ((int)piStack_328 < 0) {
        piStack_328 = (int *)(((uint)((int)piStack_328 + -1) | 0xfffffffe) + 1);
      }
      puStack_274 = local_33c;
      pfStack_270 = pfStack_32c;
      if ((int *)0x1 < piStack_328) {
        FUN_00a112c0(0x10,"Shockwave id is too large!");
      }
      puVar8 = (undefined *)((int)piStack_328 + 0x407);
      *(uint **)(iVar13 + (int)puVar8 * 0x1c) = local_33c;
      *(float **)(iVar13 + 4 + (int)puVar8 * 0x1c) = pfStack_32c;
      *(undefined4 *)(iVar13 + 8 + (int)puVar8 * 0x1c) = uStack_26c;
      *(undefined4 *)(iVar13 + 0xc + (int)puVar8 * 0x1c) = 0x3d23d70a;
      *(undefined4 *)(iVar13 + 0x10 + (int)puVar8 * 0x1c) = 0x3ccccccd;
      *(int **)(iVar13 + 0x14 + (int)puVar8 * 0x1c) = piStack_260;
      *(undefined4 *)(iVar13 + 0x18 + (int)puVar8 * 0x1c) = 0xd;
      FUN_00703670(0xc);
      auStack_164 = ZEXT816(0);
      uStack_154 = 0;
      uStack_150 = 0;
      uStack_14c = 0;
      uStack_174 = _DAT_00babea0;
      uStack_170 = _UNK_00babea4;
      uStack_16c = _UNK_00babea8;
      uStack_168 = _UNK_00babeac;
      FUN_006b6550(param_1 + 0xcf,&uStack_174);
    }
    else {
      FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
      FUN_00703670(8);
      uVar12 = FUN_006eef60();
      piVar14 = (int *)FUN_006fe410(1000,0x10,param_1 + 0xcf,&DAT_00c7b640,param_1,2,uVar12,0);
      bVar7 = FUN_006eef60();
      piVar14[0x37] = 0;
      piVar14[0x38] = 0x41700000;
      auStack_138 = ZEXT816(0);
      *(byte *)(piVar14 + 0x52) = ~bVar7 & 1;
      uStack_128 = 0;
      uStack_124 = 0;
      uStack_120 = 0;
      uStack_148 = _DAT_00babdb0;
      uStack_144 = _UNK_00babdb4;
      uStack_140 = _UNK_00babdb8;
      uStack_13c = _UNK_00babdbc;
      (**(code **)(*piVar14 + 0x3c))(&uStack_148,0xffffffff,0xff,0,1);
      if (piVar14[0xef] != 0) {
        piStack_310 = piVar14 + 0xef;
        FUN_004cf210(&piStack_310);
      }
      piVar14[0xef] = (int)param_1;
      FUN_004cdcf0(piVar14 + 0xef);
      fVar24 = (float)param_1[0xcf];
      fVar25 = (float)param_1[0xd0];
      *(undefined *)(piVar14 + 0x119) = 1;
      piVar14[0x11a] = (int)((float)piVar14[0xcf] - fVar24);
      piVar14[0x11b] = (int)((float)piVar14[0xd0] - fVar25);
      (**(code **)(*piVar14 + 0xc))();
    }
    fVar24 = DAT_00baab08;
    if ((param_1[0x5b] & 0x10000000U) != 0) {
      fVar24 = DAT_00baa924;
    }
    FUN_006ff2a0(param_1 + 0xcf,fVar24,0x42300000,0,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                 DAT_00c7910c,0x1000000,0,0);
    if (param_1[0x2d9] == 4) {
      AI_0043ef30();
      if (param_1[0xb] == 1) {
        uStack_c4 = _DAT_00babf20;
        uStack_c0 = _UNK_00babf24;
        uStack_bc = _UNK_00babf28;
        uStack_b8 = _UNK_00babf2c;
        uStack_a4 = 0x3f800000;
        uStack_a0 = 0x3f800000;
        uStack_9c = 0x3f800000;
      }
      iStack_294 = 0x41200000;
      uStack_290 = 0;
      FUN_006cb2e0(param_1 + 0xcf,&iStack_294,8,auStack_f0);
    }
    if (param_1[0xb] == 1) {
      puStack_300 = (undefined8 *)FUN_006eef60();
      piStack_334 = param_1 + 0xcf;
      piStack_324 = DAT_00c71678;
      uStack_330 = 0;
      iStack_340 = 0x19;
      iStack_304 = 1000;
      piVar14 = param_1;
      FUN_008646e0(&iStack_304,&iStack_340,piStack_334,&DAT_00c7b640,param_1,&uStack_330,
                   &puStack_300);
      fVar24 = fStack_320;
      if (1 < DAT_00c71678[0x9985]) {
        piVar11 = (int *)DAT_00c71678[0x9988];
        uVar9 = FUN_006eef60();
        uStack_2a4 = DAT_00b1f66c;
        pfStack_32c = DAT_00b1f674;
        pfStack_29c = DAT_00b1f674;
        if (fVar24 == 7.006492e-45) {
          if (piVar14 < (int *)0x12d) {
            if (piVar14 == (int *)0x12c) {
              while ((unaff_ESI == (int *)0x0 ||
                     (cVar6 = (**(code **)(*piVar11 + 0x24))(unaff_ESI), cVar6 != '\0'))) {
                if (uVar9 == 0) {
                  FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                  pcVar2 = (code *)swi(3);
                  (*pcVar2)();
                  return;
                }
                uVar9 = uVar9 >> ((byte)uStack_2a4 & 0x1f) ^ uVar9;
                uVar9 = uVar9 << ((byte)((ulonglong)uStack_2a4 >> 0x20) & 0x1f) ^ uVar9;
                uVar9 = uVar9 >> ((byte)pfStack_32c & 0x1f) ^ uVar9;
                uVar12 = FUN_00734180(uVar9,0x19,10,10,1);
                uStack_19c = DAT_00b1f66c;
                pfStack_194 = DAT_00b1f674;
                uStack_1a0 = uVar9;
                unaff_ESI = (int *)FUN_00865340(&uStack_1a0,uVar12,1,1,0);
              }
            }
            else {
              if (piVar14 == (int *)0x46) {
                uVar21 = (uint)unaff_ESI >> 0xb;
                uVar31 = uVar9;
                do {
                  if (unaff_ESI != (int *)0x0) {
                    pcVar2 = *(code **)(*piVar11 + 0x28);
                    uVar12 = FUN_00734a80(unaff_ESI,0);
                    uVar9 = uVar31;
                    cVar6 = (*pcVar2)(uVar12);
                    if (cVar6 == '\0') goto LAB_004688af;
                  }
                  piStack_338 = DAT_00c71678 + 0x69d0;
                  if (uVar9 == 0) {
                    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                    pcVar2 = (code *)swi(3);
                    (*pcVar2)();
                    return;
                  }
                  uVar9 = uVar9 >> ((byte)uStack_2a4 & 0x1f) ^ uVar9;
                  uVar9 = uVar9 << ((byte)((ulonglong)uStack_2a4 >> 0x20) & 0x1f) ^ uVar9;
                  uVar9 = uVar9 >> ((byte)pfStack_32c & 0x1f) ^ uVar9;
                  uVar31 = uVar9;
                  uVar10 = FUN_00734900(uVar9);
                  unaff_ESI = (int *)(uVar10 | (uVar21 & 1) << 0xb);
                } while( true );
              }
              if (piVar14 == (int *)0x64) {
                if ((unaff_ESI == (int *)0x19) ||
                   (((piStack_338 = unaff_ESI, FUN_004288a0(auStack_1ec,&piStack_338),
                     *(char *)(iStack_1e4 + 0xd) == '\0' &&
                     (*(int *)(iStack_1e4 + 0x10) <= (int)unaff_ESI)) && (iStack_1e4 != piVar11[8]))
                   )) {
                  bVar23 = false;
                }
                else {
                  bVar23 = true;
                }
                if ((unaff_ESI == (int *)0x0) || (bVar23)) {
                  unaff_ESI = (int *)(**(code **)(*piVar11 + 0x84))(0);
                }
              }
            }
          }
          else if (piVar14 == (int *)0x15e) {
            while ((unaff_ESI == (int *)0x0 ||
                   (cVar6 = (**(code **)(*piVar11 + 0x2c))(unaff_ESI), param_1 = piStack_328,
                   cVar6 != '\0'))) {
              unaff_ESI = (int *)FUN_00733ca0(0);
            }
          }
        }
      }
LAB_004688af:
      if (((param_1[0x5a] & 0x20000000U) != 0) && (fVar24 == 1.401298e-42)) {
        switch(piVar14) {
        case (int *)0x16:
          piVar14 = (int *)0x2e;
          break;
        case (int *)0x17:
          piVar14 = (int *)0x35;
          break;
        case (int *)0x18:
          piVar14 = (int *)0xcc;
          break;
        case (int *)0x19:
          piVar14 = (int *)0x2c;
          break;
        case (int *)0x1a:
          piVar14 = (int *)0x2d;
        }
      }
      piVar11 = (int *)FUN_006f0090(fVar24,0);
      lVar3 = CONCAT44(piStack_338,piStack_324);
      if (piVar11 != (int *)0x0) {
        uVar27 = FUN_00a68490();
        piVar5 = piStack_328;
        uVar31 = (uint)(uVar27 >> 0x20);
        lVar3 = (uVar27 & 0xffffffff) * 0x431bde82;
        uStack_344 = (uint)((ulonglong)lVar3 >> 0x20);
        lVar4 = (ulonglong)uVar31 * 0xd7b634db;
        fStack_348 = (float)((ulonglong)lVar4 >> 0x20);
        uVar27 = lVar4 + ((uVar27 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar21 = (uint)(uVar27 >> 0x20);
        lVar3 = lVar3 + (uVar27 & 0xffffffff);
        local_314 = (float)lVar3;
        uVar9 = (uint)((ulonglong)lVar3 >> 0x20);
        lVar3 = (ulonglong)uVar31 * 0x431bde82 +
                (ulonglong)CONCAT14(CARRY4(uVar21,uVar9),uVar21 + uVar9);
        uVar9 = (uint)((ulonglong)lVar3 >> 0x20);
        pfStack_32c = (float *)((uint)lVar3 >> 0x12 | uVar9 * 0x4000);
        uVar9 = uVar9 >> 0x12;
        piVar11[0xd] = piStack_328[10];
        piVar11[0xe] = piStack_328[0xb];
        piVar34 = piVar11;
        if (piVar11[0xf2] != 0) {
          piStack_324 = piVar11 + 0xf2;
          FUN_004cf210(&piStack_324);
        }
        piVar11[0xf2] = (int)piVar5;
        FUN_004cdcf0(piVar11 + 0xf2);
        piVar11[0xcf] = piVar5[0xcf];
        piVar11[0xd0] = piVar5[0xd0];
        piVar11[0xd8] = (int)DAT_00c7b640;
        piVar11[0xd9] = (int)DAT_00c7b644;
        (**(code **)(*piVar11 + 4))(fVar24,piVar14,unaff_ESI,fStack_31c);
        iVar13 = *(int *)(*(int *)(iStack_340 + 0x18300) + 0x1214);
        *(int *)(*(int *)(iStack_340 + 0x18300) + 0x1214) = iVar13 + 1;
        piVar11[8] = iVar13;
        FUN_00418500(piVar11);
        cVar6 = FUN_006b5b90(1);
        if (cVar6 != '\0') {
          if ((piVar5[0x5b] & 0x10000000U) == 0) {
            cVar6 = FUN_00417430(0x20000000,0);
            if (cVar6 != '\0') {
              uVar30 = 0;
              uVar29 = 0;
              uVar28 = 0xffffffff;
              uVar12 = FUN_00435c70(0xffffffff,0,0);
              FUN_006ad870(uVar12,uVar28,uVar29,uVar30);
            }
          }
          else {
            uVar31 = piVar11[0x5b];
            iVar13 = piVar11[0x5a];
            piVar11[0x5a] = iVar13;
            piVar11[0x5b] = uVar31 | 0x10000000;
            if ((fVar24 != 1.261169e-44) && (fVar24 != 9.809089e-45)) {
              piVar11[0x5a] = iVar13;
              piVar11[0x5b] = uVar31 | 0x10000020;
            }
            iStack_2d4 = piVar5[0x99];
            if (iStack_2d4 == 0) {
              uStack_2f8 = 0;
              uStack_2f4 = 0;
              uStack_2f0 = 0;
              uStack_2ec = 0;
              fStack_1f4 = DAT_00c7b640;
              piStack_1f0 = DAT_00c7b644;
              fStack_2e8 = DAT_00c7b640;
              piStack_2e4 = DAT_00c7b644;
              fStack_224 = DAT_00c7b640;
              piStack_220 = DAT_00c7b644;
              fStack_2e0 = DAT_00c7b640;
              piStack_2dc = DAT_00c7b644;
LAB_00468d9e:
              uVar31 = 0;
              if (iStack_2d4 != 0) goto LAB_00468da8;
              uVar31 = 0;
LAB_00468dc8:
              uStack_344 = 0;
              if (iStack_2d4 != 0) goto LAB_00468dd4;
LAB_00468ded:
              uStack_2d8 = 0;
            }
            else {
              uStack_2f8 = *(undefined4 *)(iStack_2d4 + 0x28);
              fStack_2e8 = *(float *)(iStack_2d4 + 0x33c);
              piStack_2e4 = *(int **)(iStack_2d4 + 0x340);
              uStack_2f4 = *(undefined4 *)(iStack_2d4 + 0x2c);
              uStack_2f0 = *(uint *)(iStack_2d4 + 0x34);
              uStack_2ec = *(uint *)(iStack_2d4 + 0x38);
              fStack_2e0 = *(float *)(iStack_2d4 + 0x360);
              piStack_2dc = *(int **)(iStack_2d4 + 0x364);
              fStack_204 = fStack_2e8;
              piStack_200 = piStack_2e4;
              fStack_1fc = fStack_2e0;
              piStack_1f8 = piStack_2dc;
              if ((*(uint *)(iStack_2d4 + 0x168) & 0x100) == 0) goto LAB_00468d9e;
              uVar31 = 1;
LAB_00468da8:
              if ((*(uint *)(iStack_2d4 + 0x168) & 0x20000000) == 0) goto LAB_00468dc8;
              uStack_344 = 2;
LAB_00468dd4:
              if ((*(uint *)(iStack_2d4 + 0x16c) & 0x400000) == 0) goto LAB_00468ded;
              uStack_2d8 = 4;
            }
            uStack_2d8 = uVar31 | uStack_344 | uStack_2d8;
            FUN_006ad870(&uStack_2f8,0xffffffff,0,0);
            if ((int)fVar24 - 10U < 0x3de) {
              FUN_004a5d10(piVar14,1);
            }
          }
          iVar13 = __RTDynamicCast(piVar5,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
          piVar14 = (int *)__RTDynamicCast(piVar11,0,
                                           &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                           &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0)
          ;
          if ((iVar13 != 0) && (piVar14 != (int *)0x0)) {
            cVar6 = FUN_00417430(1,0);
            if (cVar6 == '\0') {
              cVar6 = FUN_00417430(0,0x1000000);
              if (cVar6 != '\0') {
                puStack_274 = (uint *)0x0;
                pfStack_270 = (float *)0x0;
                uStack_26c = 0;
                uStack_268 = 0;
                fStack_21c = DAT_00c7b640;
                piStack_218 = DAT_00c7b644;
                fStack_264 = DAT_00c7b640;
                piStack_260 = DAT_00c7b644;
                fStack_214 = DAT_00c7b640;
                piStack_210 = DAT_00c7b644;
                fStack_25c = DAT_00c7b640;
                piStack_258 = DAT_00c7b644;
                uStack_254 = 0;
                uStack_250 = 0;
                FUN_006b78d0(&puStack_274,0x5a);
              }
              cVar6 = FUN_00417430(0x1000000,0);
              if (cVar6 != '\0') {
                uStack_24c = 0;
                uStack_248 = 0;
                uStack_244 = 0;
                uStack_240 = 0;
                fStack_20c = DAT_00c7b640;
                piStack_208 = DAT_00c7b644;
                fStack_23c = DAT_00c7b640;
                piStack_238 = DAT_00c7b644;
                local_314 = DAT_00c7b640;
                piStack_310 = DAT_00c7b644;
                fStack_234 = DAT_00c7b640;
                piStack_230 = DAT_00c7b644;
                uStack_22c = 0;
                uStack_228 = 0;
                FUN_006b5c10(&uStack_24c,0x5a,0,0);
                if (0 < piVar14[0x8f]) {
                  piVar14[0x5a] = piVar14[0x5a] | 0x1000000;
                  piVar14[0x5b] = piVar14[0x5b];
                  piVar14[0xed] = piVar14[0xee];
                }
              }
            }
            fVar25 = *(float *)(iVar13 + 0xf48) * (float)piVar14[0x30e];
            piVar14[0x30e] = (int)fVar25;
            fVar25 = fVar25 * (float)piVar14[0xed];
            fVar24 = fVar25 * DAT_00c3793c;
            piVar14[0x3a] = (int)(fVar25 * DAT_00c37940);
            piVar14[0x39] = (int)fVar24;
            piVar14[0x3d2] = (int)(*(float *)(iVar13 + 0xf48) * (float)piVar14[0x3d2]);
            piVar14[0x3d1] = (int)(*(float *)(iVar13 + 0xf44) * (float)piVar14[0x3d1]);
            piVar14[0xe1] = (int)(*(float *)(iVar13 + 0xf44) * (float)piVar14[0xe1]);
            pcVar2 = *(code **)(*piVar14 + 0x4c);
            piVar14[0xe0] = (int)(*(float *)(iVar13 + 0xf44) * (float)piVar14[0xe0]);
            cVar6 = (*pcVar2)();
            if (cVar6 != '\0') {
              puVar22 = (uint *)(piVar14 + 0x3d5);
              uStack_344 = *(uint *)(iVar13 + 0xf54);
              if (*puVar22 != uStack_344) {
                if (*puVar22 != 0) {
                  local_33c = puVar22;
                  FUN_004cf210(&local_33c);
                }
                *puVar22 = uStack_344;
                if (uStack_344 != 0) {
                  FUN_004cdcf0(puVar22);
                }
              }
            }
          }
        }
        cVar6 = FUN_007078f0(piVar11);
        if (cVar6 != '\0') {
          FUN_007079c0(piVar11,extraout_ECX);
        }
        if ((*(char *)((int)piVar11 + 0x172) != '\0') &&
           (*(int *)(iStack_340 + 0x67758) != *(int *)(iStack_340 + 0x6775c))) {
          iStack_294 = piVar11[0xb];
          pfVar20 = (float *)(iStack_340 + 0x67780);
          fStack_298 = (float)piVar11[10];
          FUN_009e24a0(&fStack_348,&fStack_298);
          if (fStack_348 == *pfVar20) {
            iStack_2d0 = piVar11[10];
            uStack_2cc = 0xffffffff;
            pfVar15 = (float *)FUN_009e24a0(&local_30c,&iStack_2d0);
            fStack_348 = *pfVar15;
            if (fStack_348 == *pfVar20) goto LAB_004692a0;
          }
          piVar14 = DAT_00c71678 + 0x6eaa;
          uVar31 = 0;
          if (DAT_00c71678[0x6eab] - *piVar14 >> 2 != 0) {
            do {
              if (piVar14[1] - *piVar14 >> 2 == 0) {
                FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
              }
              FUN_009e0680(6,piVar11,unaff_EDI,&DAT_00c7b640);
              piVar14 = DAT_00c71678 + 0x6eaa;
              uVar31 = uVar31 + 1;
            } while (uVar31 < (uint)(DAT_00c71678[0x6eab] - *piVar14 >> 2));
          }
        }
LAB_004692a0:
        piVar11 = piVar34;
        uVar27 = FUN_00a68490();
        fStack_348 = (float)(uVar27 >> 0x20);
        lVar4 = (uVar27 & 0xffffffff) * 0x431bde82;
        local_33c = (uint *)((ulonglong)lVar4 >> 0x20);
        lVar3 = (ulonglong)(uint)fStack_348 * 0x431bde82;
        uVar27 = (ulonglong)(uint)fStack_348 * 0xd7b634db +
                 ((uVar27 & 0xffffffff) * 0xd7b634db >> 0x20);
        uVar21 = (uint)(uVar27 >> 0x20);
        lVar4 = lVar4 + (uVar27 & 0xffffffff);
        local_314 = (float)lVar4;
        uVar31 = (uint)((ulonglong)lVar4 >> 0x20);
        lVar4 = lVar3 + (ulonglong)CONCAT14(CARRY4(uVar21,uVar31),uVar21 + uVar31);
        uVar21 = (uint)((ulonglong)lVar4 >> 0x20);
        pfVar20 = (float *)((uint)lVar4 >> 0x12 | uVar21 * 0x4000);
        uVar31 = (int)pfVar20 - (int)pfStack_32c;
        bVar23 = CARRY4(DAT_00c7b630,uVar31);
        DAT_00c7b630 = DAT_00c7b630 + uVar31;
        DAT_00c7b634 = DAT_00c7b634 + (((uVar21 >> 0x12) - uVar9) - (uint)(pfVar20 < pfStack_32c)) +
                       (uint)bVar23;
        param_1 = piStack_328;
      }
      piStack_338 = (int *)((ulonglong)lVar3 >> 0x20);
      piStack_324 = (int *)lVar3;
      piVar14 = (int *)__RTDynamicCast(piVar11,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                       &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
      fVar24 = DAT_00c37940 * DAT_00baa630;
      piVar14[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
      piVar14[0x3a] = (int)fVar24;
      (**(code **)(*piVar14 + 0xc))();
    }
  }
  iVar13 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  switch(param_1[0x2d9]) {
  case 3:
    cVar6 = FUN_00417430(0,0x10000000);
    if (((cVar6 == '\0') || ((*(byte *)(*(int *)(DAT_00c71678[0x60c0] + 4) + 0x44) & 1) == 0)) &&
       (uVar9 = FUN_006eef60(), uVar9 % 0x14 == 0)) {
      aiStack_48[0] = 6;
      aiStack_48[1] = 9;
      aiStack_48[2] = 9;
      aiStack_48[3] = 8;
      uStack_38 = 8;
      iVar18 = *(int *)(DAT_00c71678[0x60c0] + 0x12c4) + *(int *)(DAT_00c71678[0x60c0] + 0x12c0);
      iVar13 = 0;
      if (0 < iVar18) {
        iVar13 = iVar18;
      }
      if (iVar13 < 4) {
        uVar9 = FUN_006eef60();
        uVar31 = 5;
      }
      else {
        uVar9 = FUN_006eef60();
        uVar31 = 3;
      }
      param_1[0x2d9] = aiStack_48[uVar9 % uVar31];
      param_1[0x104] = 0;
      param_1[0x2f1] = 0;
    }
    break;
  case 4:
    FUN_0040a380(&DAT_00b1cddc,0);
    cVar6 = FUN_0040b090(&DAT_00b1d574);
    param_1[0x62] = -(uint)(cVar6 != '\0') & 4;
    cVar6 = FUN_0040b090(&DAT_00b1d574);
    if ((cVar6 != '\0') && (0 < iVar13)) {
      do {
        iVar18 = param_1[0x104];
        param_1[0x104] = iVar18 + 1;
        if ((param_1[0xb] == 1) && (iVar18 + 1 < 0x18)) {
          iVar18 = FUN_006eef60();
          fVar24 = (float)((double)iVar18 + (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
          piStack_334 = (int *)(fVar24 + fVar24);
          local_33c = (uint *)((float)param_1[0x104] + (float)param_1[0x104] + DAT_00baa924);
          piVar14 = piStack_334;
          FUN_0041d540();
          pfStack_29c = (float *)((float)piVar14 * (float)local_33c + (float)param_1[0xcf]);
          piVar14 = piStack_334;
          FUN_0041d520();
          fStack_298 = (float)piVar14 * (float)local_33c + (float)param_1[0xd0];
          uVar12 = FUN_006eef60();
          uVar12 = FUN_006fe410(1000,0x19,&pfStack_29c,&DAT_00c7b640,param_1,0,uVar12,0);
          piVar14 = (int *)__RTDynamicCast(uVar12,0,&IsaacRepentancePlus::Entity::
                                                     RTTI_Type_Descriptor,
                                           &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor
                                           ,0);
          fVar25 = (float)param_1[0x104] * DAT_00baa0d0 + DAT_00baa454;
          fVar24 = fVar25 * DAT_00c3793c;
          piVar14[0x3a] = (int)(fVar25 * DAT_00c37940);
          piVar14[0x39] = (int)fVar24;
          (**(code **)(*piVar14 + 0xc))();
        }
        iVar13 = iVar13 + -1;
      } while (iVar13 != 0);
    }
    iVar13 = FUN_0040a780();
    if (iVar13 == 0) {
      iVar13 = FUN_006be840();
      param_1[0xcf] = *(int *)(iVar13 + 0x33c);
      param_1[0xd0] = param_1[0xce];
    }
    break;
  case 6:
    cVar6 = FUN_0040b090(&DAT_00b1d560);
    iVar13 = 4;
    if (cVar6 != '\0') {
      iVar13 = 0;
    }
    uVar12 = 0;
    param_1[0x62] = iVar13;
    pcVar33 = "Up";
    goto LAB_0046a02e;
  case 7:
    if (param_1[0x2e9] < 1) {
      cVar6 = FUN_0040b090(&DAT_00b1d560);
      if ((cVar6 == '\0') && (cVar6 = FUN_0040b090(&DAT_00b1d574), cVar6 != '\0')) {
        iVar13 = 4;
      }
      else {
        iVar13 = 0;
      }
      param_1[0x62] = iVar13;
      if (param_1[0x2f0] == 0) {
        iVar13 = FUN_0040a780();
        if (iVar13 == 0) {
          iVar18 = FUN_006be840();
          iVar13 = *(int *)(iVar18 + 0x340);
          param_1[0xcf] = *(int *)(iVar18 + 0x33c);
          param_1[0xd0] = iVar13;
        }
      }
      else {
        piStack_334 = (int *)param_1[0x2f1];
        if (4 < (int)piStack_334) {
          piStack_334 = (int *)&DAT_00000004;
        }
        if (((int)piStack_334 / 2 == 0) || (pcVar33 = "StompLeg", param_1[0xb] == 1)) {
          pcVar33 = "StompArm";
        }
        FUN_0040a380(pcVar33,0);
        *(byte *)(param_1 + 0x52) = ~(byte)piStack_334 & 1;
      }
      break;
    }
    iVar13 = param_1[0x2e9] - iVar13;
    param_1[0x2e9] = iVar13;
    if (0 < iVar13) break;
    uVar12 = 1;
    pcVar33 = "StompArm";
LAB_0046a02e:
    FUN_0040a380(pcVar33,uVar12);
    break;
  case 8:
    FUN_0040a380(&DAT_00b1d2cc,0);
    cVar6 = FUN_0040b030("Shoot");
    if (cVar6 != '\0') {
      FUN_006d6ba0(0x10,0x3f800000,2,0,0x3f800000);
      auStack_10c = ZEXT816(0);
      uStack_fc = 0x3ecccccd;
      uStack_11c = _DAT_00babca0;
      uStack_118 = _UNK_00babca4;
      uStack_114 = _UNK_00babca8;
      uStack_110 = _UNK_00babcac;
      uStack_f8 = 0x3ec28f5c;
      uStack_f4 = 0x3eae147b;
      iVar13 = FUN_006b6830(param_1 + 0xcf,&uStack_11c);
      *(undefined4 *)(iVar13 + 0x34c) = 0;
      *(undefined4 *)(iVar13 + 0x350) = 0xc1d00000;
      if (param_1[0xb] == 0) {
        uVar9 = FUN_006eef60();
        iVar13 = (uVar9 & 1) + 2;
        cVar6 = FUN_00417430(0,0x10000000);
        if (cVar6 != '\0') {
          iVar18 = FUN_006ac7e0(0x55,0,extraout_ECX_00,0);
          if (3 - iVar18 <= iVar13) {
            iVar13 = 3 - iVar18;
          }
        }
        if (0 < iVar13) {
          pfVar20 = (float *)(param_1 + 0xcf);
          do {
            FUN_00813520(&piStack_2e4,pfVar20,0x42c80000,0,0,0);
            uVar12 = FUN_006eef60();
            uVar12 = FUN_006fe410(0x55,0,&piStack_2e4,&DAT_00c7b640,param_1,0,uVar12,0);
            iVar16 = __RTDynamicCast(uVar12,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                     &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
            piStack_334 = DAT_00c71678 + 0x60c0;
            iVar18 = *piStack_334;
            uStack_344 = (uint)(((float)piStack_2e4 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
            iVar17 = (int)((fStack_2e0 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
            if (((-1 < (int)uStack_344) &&
                (param_1 = local_30c, (int)uStack_344 < *(int *)(iVar18 + 0xc))) &&
               ((-1 < iVar17 &&
                (((iVar17 < *(int *)(iVar18 + 0x10) &&
                  (uVar9 = iVar17 * *(int *)(iVar18 + 0xc) + uStack_344, uVar9 < 0x1c0)) &&
                 (*(int *)(iVar18 + 0x76c + uVar9 * 4) < 0x3b7)))))) {
              *(undefined4 *)(iVar18 + 0x76c + uVar9 * 4) = 900;
            }
            fVar24 = *(float *)(iVar16 + 0x33c);
            pfVar20 = (float *)(param_1 + 0xcf);
            *(float *)(iVar16 + 0x334) = fVar24;
            fVar25 = *(float *)(iVar16 + 0x340);
            *(float *)(iVar16 + 0x338) = fVar25;
            fVar26 = *pfVar20;
            *(float *)(iVar16 + 0x33c) = fVar26;
            fVar1 = (float)param_1[0xd0];
            *(float *)(iVar16 + 0x340) = fVar1;
            *(undefined4 *)(iVar16 + 0xb64) = 6;
            *(undefined4 *)(iVar16 + 0xbbc) = 0xc1000000;
            fVar26 = (fVar24 - fVar26) * DAT_00baa0bc;
            fVar24 = (fVar25 - fVar1) * DAT_00baa0bc;
            *(float *)(iVar16 + 0x360) = fVar26;
            *(float *)(iVar16 + 0xbb0) = fVar26;
            *(float *)(iVar16 + 0x364) = fVar24;
            *(float *)(iVar16 + 0xbb4) = fVar24;
            *(float *)(iVar16 + 0x350) = *(float *)(iVar16 + 0x350) - DAT_00baa81c;
            iVar13 = iVar13 + -1;
          } while (iVar13 != 0);
        }
      }
      else {
        cVar6 = FUN_00417430(0,0x10000000);
        if ((cVar6 == '\0') || (uVar9 = FUN_006ac7e0(0x1d,1,extraout_ECX_01,0), uVar9 < 3)) {
          uVar12 = FUN_006eef60();
          uVar12 = FUN_006fe410(0x1d,1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar12,0);
          fVar24 = (float)__RTDynamicCast(uVar12,0,&IsaacRepentancePlus::Entity::
                                                    RTTI_Type_Descriptor,
                                          &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
          fStack_320 = fVar24;
          iVar13 = FUN_006be840();
          uVar12 = *(undefined4 *)(iVar13 + 0x340);
          piStack_334 = (int *)((int)fVar24 + 0x48);
          *(undefined4 *)((int)fVar24 + 0x334) = *(undefined4 *)(iVar13 + 0x33c);
          *(undefined4 *)((int)fVar24 + 0x338) = uVar12;
          *(undefined4 *)((int)fVar24 + 0xb64) = 4;
          *(undefined4 *)((int)fVar24 + 0x410) = 5;
          cVar6 = FUN_0040a5d0(&DAT_00b1de1c,1);
          piVar14 = piStack_334;
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(piVar14 + 0x11) = 1;
            fVar24 = fStack_320;
          }
          if (*(int *)((int)fVar24 + 0x7c) != 0) {
            FUN_00408e00();
          }
        }
      }
    }
    break;
  case 9:
    FUN_0040a380(&DAT_00b1d2ec,0);
    cVar6 = FUN_0040b090(&DAT_00b1d560);
    if ((cVar6 == '\0') || (cVar6 = FUN_0040b090(&DAT_00b1d574), cVar6 != '\0')) {
      iVar13 = 4;
    }
    else {
      iVar13 = 0;
    }
    param_1[0x62] = iVar13;
    if (param_1[0x104] == 0) {
      param_1[0x104] = 1;
      iStack_304 = (param_1[0xb] != 1) + 3;
      piStack_334 = (int *)FUN_0067f010();
      iVar13 = 5;
      piVar14 = aiStack_34;
      do {
        piVar14[1] = 0;
        *piVar14 = 0;
        iVar13 = iVar13 + -1;
        piVar14 = piVar14 + 2;
      } while (iVar13 != 0);
      aiStack_34[0] = param_1[0xcf];
      puStack_300 = (undefined8 *)(param_1 + 0xcf);
      aiStack_34[1] = param_1[0xd0];
      pfStack_32c = afStack_2c;
      piStack_328 = (int *)0x0;
      uStack_344 = 0x10;
      do {
        piVar14 = piStack_328;
        local_314 = 0.0;
        local_318 = 0.0;
        fStack_320 = (float)FUN_006be840();
        if (piStack_334 == piVar14) {
          fStack_308 = *(float *)((int)fStack_320 + 0x33c);
          fStack_2fc = *(float *)((int)fStack_320 + 0x340);
          fStack_31c = *(float *)((int)fStack_320 + 0x364);
          fStack_320 = *(float *)((int)fStack_320 + 0x360);
          iVar13 = FUN_006eef60();
          fVar24 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa87c;
          fStack_2a8 = fVar24 * fStack_31c + fStack_2fc;
          fStack_2ac = fVar24 * fStack_320 + fStack_308;
          pfVar20 = (float *)FUN_00813520(auStack_1c4,&fStack_2ac,0x41a00000,0,0,0);
          iVar13 = FUN_006eef60();
          fStack_348 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c;
          iVar13 = FUN_006eef60();
          local_314 = fStack_348 + pfVar20[1];
          local_318 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) + *pfVar20;
        }
        else {
          uVar9 = FUN_006eef60();
          local_33c = (uint *)0x5;
          do {
            if ((uVar9 & 3) == 0) {
              iVar13 = FUN_006eef60();
              uStack_2a4 = *(undefined8 *)((int)fStack_320 + 0x33c);
              fVar24 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa9d0 + DAT_00baa9a0;
              puVar8 = auStack_1bc;
              puVar32 = &uStack_2a4;
            }
            else {
              iVar13 = FUN_006eef60();
              puVar8 = auStack_1b4;
              fVar24 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baab54;
              puVar32 = puStack_300;
            }
            pfVar20 = (float *)FUN_00813520(puVar8,puVar32,fVar24,1,0,0);
            iVar13 = FUN_006eef60();
            fStack_348 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c;
            iVar13 = FUN_006eef60();
            local_314 = fStack_348 + pfVar20[1];
            local_33c = (uint *)((int)local_33c + -1);
            local_318 = ((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) + *pfVar20;
          } while (local_33c != (uint *)0x0);
          local_33c = (uint *)0x0;
          param_1 = local_30c;
        }
        *pfStack_32c = local_318;
        pfStack_32c[1] = local_314;
        pfStack_32c = pfStack_32c + 2;
        uVar12 = FUN_006eef60();
        iVar18 = FUN_006fe410(0x65,param_1[0xb],&local_318,&DAT_00c7b640,param_1,0,uVar12,0);
        *(uint *)(iVar18 + 0x168) = *(uint *)(iVar18 + 0x168) | 0x80000000;
        *(undefined4 *)(iVar18 + 0x16c) = *(undefined4 *)(iVar18 + 0x16c);
        *(undefined4 *)(iVar18 + 0xbc0) = 1;
        *(undefined4 *)(iVar18 + 0xb64) = 7;
        iVar13 = param_1[0x2f1];
        param_1[0x2f1] = iVar13 + 1;
        *(int *)(iVar18 + 0xbc4) = iVar13;
        *(uint *)(iVar18 + 0xba4) = uStack_344;
        cVar6 = FUN_0040a5d0("StompArm",1);
        if (((cVar6 != '\0') && (*(int *)(iVar18 + 0x7c) != 0)) &&
           (FUN_00408e00(), *(int *)(iVar18 + 0x7c) != 0)) {
          *(undefined *)(iVar18 + 0x8c) = 0;
        }
        *(undefined4 *)(iVar18 + 0x188) = 0;
        uStack_2ec = (uint)DAT_00c37940 ^ DAT_00bacb70;
        uStack_2f0 = (uint)DAT_00c3793c ^ DAT_00bacb70;
        FUN_006ac2a0(*(float *)(param_1[0xcc] + 0x38) * DAT_00baa2d0,uStack_2f0,uStack_2ec,
                     0xffffffff);
        uStack_344 = uStack_344 + 10;
        piStack_328 = (int *)((int)piStack_328 + 1);
      } while ((int)piStack_328 < iStack_304);
    }
  }
  if ((DAT_00ba9fe4 < (float)param_1[5]) &&
     (puVar19 = (undefined4 *)param_1[2], puVar19 != (undefined4 *)param_1[3])) {
    do {
      if (puVar19[4] == 0x65) {
        *puVar19 = 0;
      }
      puVar19 = puVar19 + 0xe;
    } while (puVar19 != (undefined4 *)param_1[3]);
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0x2f0] == 0)) {
    iVar13 = DAT_00c71678[0x60c0];
    *(undefined4 *)(iVar13 + 0x7214) = 0x1e;
    *(undefined4 *)(iVar13 + 0x7218) = 7;
  }
  FUN_00aef12b();
  return;
}

