/* Local J460 decompiler output.
 * VA: 0x00700060
 * Entry: 00700060
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.17.0
 * Evidence: Bomb Update explosion call
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.17.0; Bomb Update explosion call */

void __thiscall
HELPER_Explosion(int *param_1,int *param_2,float param_3,uint param_4,uint param_5,uint param_6,
                uint param_7,int **param_8,int param_9,float param_10,undefined4 param_11,
                int param_12,int param_13,undefined4 param_14)

{
  undefined4 uVar1;
  int iVar2;
  int **ppiVar3;
  int **ppiVar4;
  undefined4 unaff_EDI;
  uint uVar5;
  bool bVar6;
  float fVar7;
  float fVar8;
  int *piVar9;
  float fStack_108;
  float fStack_104;
  int *piStack_100;
  float fStack_fc;
  float *pfStack_f8;
  int *piStack_f4;
  int *piStack_f0;
  float fStack_ec;
  int iStack_e8;
  int *apiStack_e4 [4];
  int **ppiStack_d4;
  int *apiStack_c0 [5];
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined auStack_9c [16];
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined auStack_70 [16];
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined auStack_44 [16];
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  uint uStack_14;
  
  uStack_14 = DAT_00bf93b4 ^ (uint)&fStack_108;
  apiStack_e4[0] = param_2;
  ppiStack_d4 = param_8;
  iStack_e8 = param_9;
  fStack_fc = DAT_00baa98c;
  fVar7 = DAT_00baa9e4;
  if ((DAT_00baaa6c <= param_3) || (fVar7 = DAT_00baa9b4, DAT_00baaa30 < param_3)) {
    fStack_fc = fVar7;
  }
  fVar7 = DAT_00baa98c;
  apiStack_e4[1] = param_1;
  if (param_9 != 0) {
    piStack_f4 = (int *)(param_7 & DAT_00c347dc);
    if (((param_4 & DAT_00c347d0 | param_5 & DAT_00c347d4) != 0) ||
       ((param_6 & DAT_00c347d8 | (uint)piStack_f4) != 0)) {
      fStack_fc = DAT_00baaa1c;
      uVar1 = FUN_006eef60();
      piStack_100 = (int *)HELPER_Entity_CreateDispatcher
                                     (1000,0x77,&DAT_00c7b640,&DAT_00c7b640,0,0,uVar1,0);
      fVar7 = param_3 * DAT_00baa220;
      piStack_100[0x108] = (int)FUN_007008b0;
      piStack_100[0x109] = 2;
      piStack_100[0x10a] = 3;
      piStack_100[0xcf] = *param_2;
      piStack_100[0xd0] = param_2[1];
      (**(code **)(*piStack_100 + 0x40))(fVar7);
      fVar7 = param_10 * DAT_00baaa1c;
      piStack_100[0x10c] = param_12;
      piStack_100[0x11e] = (int)fVar7;
      piStack_100[0x10d] = param_13;
      if ((char)param_11 != '\0') {
        piStack_100[0x5a] = piStack_100[0x5a] | 0x400000;
        piStack_100[0x5b] = piStack_100[0x5b];
      }
      piStack_f0 = piStack_100 + 0xef;
      if (*piStack_f0 != 0) {
        piStack_f4 = piStack_f0;
        FUN_004cf210(&piStack_f4);
      }
      *piStack_f0 = param_9;
      FUN_004cdcf0(piStack_f0);
      fVar7 = DAT_00baa98c;
      if ((char)param_14 != '\0') {
        piStack_100[0x5b] = piStack_100[0x5b] | 0x400;
        piStack_100[0x5a] = piStack_100[0x5a];
      }
    }
  }
  piStack_100 = (int *)(param_7 & DAT_00c3459c);
  piStack_f4 = DAT_00baa380;
  if (((param_4 & DAT_00c34590 | param_5 & DAT_00c34594) != 0) ||
     ((param_6 & DAT_00c34598 | (uint)piStack_100) != 0)) {
    param_3 = param_3 * (float)DAT_00baa380;
  }
  piStack_f0 = (int *)((fStack_fc / fVar7) * param_10);
  if (((param_9 == 0) || ((*(int *)(param_9 + 0x28) != 1 && (iVar2 = FUN_006a9140(), iVar2 == 0))))
     && ((iVar2 = FUN_009bea80(0x3f), piVar9 = DAT_00baa380, iVar2 == 2 ||
         (piVar9 = DAT_00baa2d0, 2 < iVar2)))) {
    piStack_f0 = (int *)((float)piStack_f0 * (float)piVar9);
  }
  fStack_fc = fStack_fc * param_10;
  FUN_006ff2a0(param_2,param_3,fStack_fc,param_11,param_9,param_4,param_5,param_6,param_7,param_12,
               param_13,param_14);
  FUN_00703190(param_2,0);
  uVar1 = FUN_006eef60();
  piStack_100 = (int *)HELPER_Entity_CreateDispatcher
                                 (1000,1,param_2,&DAT_00c7b640,param_9,0,uVar1,0);
  ppiVar3 = ppiStack_d4;
  piVar9 = (int *)0x1;
  (**(code **)(*piStack_100 + 0x3c))(ppiStack_d4,0xffffffff,0xff,0);
  piStack_f0 = (int *)(param_6 & DAT_00c34bd8);
  if (((param_4 & DAT_00c34bd0 | param_5 & DAT_00c34bd4) != 0) ||
     (((uint)piStack_f0 | param_7 & DAT_00c34bdc) != 0)) {
    apiStack_e4[0] = *ppiVar3;
    apiStack_e4[1] = ppiVar3[1];
    apiStack_e4[2] = ppiVar3[2];
    apiStack_e4[3] = ppiVar3[3];
    ppiStack_d4 = (int **)0x0;
    FUN_00a0f550(0xffffffff);
    ppiVar3 = apiStack_e4;
    uVar5 = 0xc;
    ppiVar4 = apiStack_c0;
    do {
      if (*ppiVar3 != *ppiVar4) goto LAB_00700468;
      ppiVar3 = ppiVar3 + 1;
      ppiVar4 = ppiVar4 + 1;
      bVar6 = 3 < uVar5;
      uVar5 = uVar5 - 4;
    } while (bVar6);
    auStack_9c = ZEXT816(0);
    uStack_8c = 0;
    uStack_88 = 0;
    uStack_84 = 0;
    uStack_ac = _DAT_00bac4e0;
    uStack_a8 = _UNK_00bac4e4;
    uStack_a4 = _UNK_00bac4e8;
    uStack_a0 = _UNK_00bac4ec;
    (**(code **)(*piVar9 + 0x3c))(&uStack_ac,0xffffffff,0xff,0,1);
  }
LAB_00700468:
  fVar7 = fStack_fc;
  if (((param_4 & DAT_00c34560 | param_5 & DAT_00c34564) != 0) ||
     ((param_6 & DAT_00c34568 | param_7 & DAT_00c3456c) != 0)) {
    uStack_60 = 0;
    auStack_70 = ZEXT816(0);
    uStack_80 = _DAT_00bac170;
    uStack_7c = _UNK_00bac174;
    uStack_78 = _UNK_00bac178;
    uStack_74 = _UNK_00bac17c;
    uStack_5c = 0;
    uStack_58 = 0;
    (**(code **)(*piVar9 + 0x3c))(&uStack_80,0xffffffff,0xff,0,1);
  }
  fVar8 = fStack_104 * DAT_00c3793c;
  piVar9[0x3a] = (int)(fStack_104 * DAT_00c37940);
  piVar9[0x39] = (int)fVar8;
  if (((fVar7 == 0.0) || (*(int *)((int)fVar7 + 0x28) != 4)) || (*(int *)((int)fVar7 + 0x2c) != 0xf)
     ) {
    if (((param_4 & DAT_00c347d0 | param_5 & DAT_00c347d4) != 0) ||
       ((param_6 & DAT_00c347d8 | param_7 & DAT_00c347dc) != 0)) {
      fVar8 = param_10 * DAT_00c3793c;
      piVar9[0x3a] = (int)(param_10 * DAT_00c37940 + param_10 * DAT_00c37940);
      piVar9[0x39] = (int)(fVar8 + fVar8);
    }
  }
  else {
    uStack_34 = 0;
    auStack_44 = ZEXT816(0);
    uStack_30 = 0;
    uStack_2c = 0;
    uStack_54 = _DAT_00babfb0;
    uStack_50 = _UNK_00babfb4;
    uStack_4c = _UNK_00babfb8;
    uStack_48 = _UNK_00babfbc;
    (**(code **)(*piVar9 + 0x3c))(&uStack_54,0xffffffff,0xff,0,1);
  }
  if (((*(int *)(DAT_00c71678 + 0x2663c) == 0xc) && (fVar7 != 0.0)) &&
     ((*(int *)((int)fVar7 + 0x28) == 4 && (*(char *)((int)fVar7 + 0x448) != '\0')))) {
    uVar1 = FUN_006eef60();
    piVar9 = (int *)HELPER_Entity_CreateDispatcher(1000,0x68,pfStack_f8,&DAT_00c7b640,0,1,uVar1,0);
    *(undefined *)((int)piVar9 + 0x173) = 1;
    (**(code **)(*piVar9 + 0xc))();
  }
  if (((param_4 & DAT_00c34590 | param_5 & DAT_00c34594) != 0) ||
     ((param_6 & DAT_00c34598 | param_7 & DAT_00c3459c) != 0)) {
    apiStack_e4[0] =
         (int *)(~(DAT_00c34620 | DAT_00c34990 | DAT_00c34b90 | DAT_00c34560 | DAT_00c34590) &
                param_4);
    apiStack_e4[1] =
         (int *)(~(DAT_00c34624 | DAT_00c34994 | DAT_00c34b94 | DAT_00c34564 | DAT_00c34594) &
                param_5);
    apiStack_e4[2] =
         (int *)(~(DAT_00c34628 | DAT_00c34998 | DAT_00c34b98 | DAT_00c34568 | DAT_00c34598) &
                param_6);
    apiStack_e4[3] =
         (int *)(~(DAT_00c3462c | DAT_00c3499c | DAT_00c34b9c | DAT_00c3456c | DAT_00c3459c) &
                param_7);
    if ((1 < *(int *)(DAT_00c71678 + 0x26614)) &&
       (iVar2 = (**(code **)(**(int **)(DAT_00c71678 + 0x26620) + 4))(), iVar2 == 3)) {
      fStack_108 = DAT_00baa2b8;
    }
    iVar2 = 1;
    do {
      uVar5 = 0;
      fVar7 = (float)iVar2;
      do {
        piStack_f0 = (int *)(param_10 * *(float *)((int)&DAT_00c5d01c + uVar5) * fVar7 + *pfStack_f8
                            );
        fStack_ec = param_10 * *(float *)((int)&DAT_00c5d020 + uVar5) * fVar7 + pfStack_f8[1];
        FUN_00812f50(&fStack_104,&piStack_f0,0,0,0);
        if (((NAN(fStack_104) || NAN((float)piStack_f0)) != (fStack_104 == (float)piStack_f0)) &&
           ((NAN((float)piStack_100) || NAN(fStack_ec)) != ((float)piStack_100 == fStack_ec))) {
          HELPER_Explosion(&piStack_f0,param_3,apiStack_e4[0],apiStack_e4[1],apiStack_e4[2],
                           apiStack_e4[3],iStack_e8,fStack_fc,fStack_108 * param_10,1,4,0,0);
        }
        uVar5 = uVar5 + 8;
      } while (uVar5 < 0x20);
      iVar2 = iVar2 + 1;
      fVar7 = fStack_fc;
    } while (iVar2 < 3);
  }
  FUN_007009a0(pfStack_f8,unaff_EDI,param_4,param_5,param_6,param_7,fVar7,param_10);
  FUN_008207a0();
  FUN_00aef12b();
  return;
}

