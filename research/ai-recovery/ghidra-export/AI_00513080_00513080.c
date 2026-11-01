/* Local J460 decompiler output.
 * VA: 0x00513080
 * Entry: 00513080
 * Dispatcher: 0x006c2990
 * Types: 12,248
 * Identities: 12.0.0,248.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005135d0; instructions=326
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=12,248; identities=12.0.0,248.0.0;
   dispatcher=0x006c2990; end=0x005135d0; instructions=326 */

void __fastcall AI_00513080(float param_1)

{
  float *pfVar1;
  byte bVar2;
  byte **ppbVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  byte **ppbVar8;
  uint uVar9;
  char *pcVar10;
  bool bVar11;
  float fVar12;
  float *pfStack_134;
  undefined auStack_124 [4];
  float local_120;
  float local_11c;
  float local_118;
  float local_114;
  undefined local_110 [4];
  undefined auStack_10c [8];
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  float afStack_e0 [22];
  uint uStack_88;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_124;
  *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa354;
  if (0 < *(int *)((int)param_1 + 0xba0)) {
    *(int *)((int)param_1 + 0xba0) =
         ((int)*(float *)((int)param_1 + 0x3a0) - (int)*(float *)((int)param_1 + 0x3a4)) +
         *(int *)((int)param_1 + 0xba0);
    if (*(int *)((int)param_1 + 0xf1c) == -1) {
      *(float *)((int)param_1 + 0xf20) = DAT_00c7b640;
      fVar12 = DAT_00c7b644;
    }
    else {
      pfStack_134 = &local_118;
      FUN_006d85a0();
      if (((NAN(local_118) || NAN(DAT_00c7b640)) != (local_118 == DAT_00c7b640)) &&
         ((NAN(local_114) || NAN(DAT_00c7b644)) != (local_114 == DAT_00c7b644))) goto LAB_0051314c;
      *(float *)((int)param_1 + 0xf20) = local_118;
      fVar12 = local_114;
    }
    *(float *)((int)param_1 + 0xf24) = fVar12;
  }
LAB_0051314c:
  if (*(int *)((int)param_1 + 0xba0) < 1) {
    pfStack_134 = (float *)0x7;
    cVar4 = FUN_006cae60(0);
    if (cVar4 != '\0') {
      if ((*(int *)(DAT_00c71678 + 0x269c8) == 1) || (*(int *)(DAT_00c71678 + 0x269c8) == 3)) {
        bVar2 = 1;
      }
      else {
        bVar2 = 0;
      }
      pfStack_134 = (float *)0x0;
      *(uint *)((int)param_1 + 0xba0) = (-(uint)bVar2 & 0xfffffff2) + 0x1c;
      FUN_0040a380("Attack");
      if (*(int *)((int)param_1 + 0xf1c) == -1) {
        *(float *)((int)param_1 + 0xf20) = DAT_00c7b640;
        fVar12 = DAT_00c7b644;
      }
      else {
        pfStack_134 = &local_118;
        FUN_006d85a0();
        *(float *)((int)param_1 + 0xf20) = local_118;
        fVar12 = local_114;
      }
      *(float *)((int)param_1 + 0xf24) = fVar12;
    }
  }
  if (*(int *)((int)param_1 + 0x7c) != 0) {
    pfStack_134 = (float *)0xb1d2dc;
    cVar4 = FUN_0040add0();
    if (cVar4 != '\0') {
      pfStack_134 = (float *)0x51322c;
      iVar5 = FUN_006be840();
      local_118 = *(float *)(iVar5 + 0x33c) - *(float *)((int)param_1 + 0x33c);
      local_114 = *(float *)(iVar5 + 0x340) - *(float *)((int)param_1 + 0x340);
      local_110 = (undefined  [4])local_118;
      if ((*(int *)((int)param_1 + 0xf1c) != -1) &&
         ((fVar12 = *(float *)((int)param_1 + 0xf20),
          (NAN(fVar12) || NAN(DAT_00c7b640)) == (fVar12 == DAT_00c7b640) ||
          ((NAN(*(float *)((int)param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
           (*(float *)((int)param_1 + 0xf24) == DAT_00c7b644))))) {
        local_114 = *(float *)((int)param_1 + 0xf24);
        local_110 = (undefined  [4])fVar12;
        local_118 = fVar12;
      }
      local_11c = DAT_00baa81c;
      if ((*(int *)(DAT_00c71678 + 0x269c8) != 1) && (*(int *)(DAT_00c71678 + 0x269c8) != 3)) {
        local_11c = DAT_00baa7b8;
      }
      fVar12 = local_114 * local_114 + local_118 * local_118;
      pfStack_134 = (float *)0x5132fd;
      local_120 = local_114;
      FUN_00435a50();
      if (0.0 < fVar12) {
        local_114 = (local_11c / fVar12) * local_120;
        local_118 = (local_11c / fVar12) * (float)local_110;
      }
      pfStack_134 = (float *)0x513336;
      uVar6 = FUN_00407170();
      pfStack_134 = (float *)0x51333d;
      pfStack_134 = (float *)FUN_006eef60();
      piVar7 = (int *)FUN_00428b20(1000,2,(float *)((int)param_1 + 0x33c),&DAT_00c7b640,0,5);
      pfStack_134 = (float *)0x1;
      (**(code **)(*piVar7 + 0x3c))(uVar6,0xffffffff,0xff,0);
      pfVar1 = (float *)(piVar7 + 0xef);
      piVar7[0x37] = 0;
      piVar7[0x38] = -0x3ee00000;
      piVar7[0xd6] = 0x3f800000;
      if (*pfVar1 != 0.0) {
        pfStack_134 = pfVar1;
        FUN_004cf210(&pfStack_134);
      }
      *pfVar1 = param_1;
      FUN_004cdcf0(pfVar1);
      fVar12 = *(float *)((int)param_1 + 0x33c);
      piVar7[0x11b] = (int)((float)piVar7[0xd0] - *(float *)((int)param_1 + 0x340));
      local_114 = _UNK_00babbac;
      local_118 = _UNK_00babba8;
      local_11c = (float)_UNK_00babba4;
      local_120 = _DAT_00babba0;
      piVar7[0x11a] = (int)((float)piVar7[0xcf] - fVar12);
      *(undefined *)(piVar7 + 0x52) = 1;
      *(undefined *)(piVar7 + 0x119) = 1;
      uStack_100 = 0x3f19999a;
      uStack_fc = 0x3dcccccd;
      _local_110 = ZEXT816(0);
      uStack_f8 = 0x3dcccccd;
      (**(code **)(*piVar7 + 0x3c))(&local_120,0xffffffff,0xff,0,1);
      pfStack_134 = (float *)0x51344e;
      AI_0043ef30();
      if (*(int *)((int)param_1 + 0x28) == 0xf8) {
        uStack_88 = uStack_88 | 1;
        pfStack_134 = (float *)0x1;
        auStack_10c._0_4_ = _DAT_00babd20;
        auStack_10c._4_4_ = _UNK_00babd24;
        uStack_104 = _UNK_00babd28;
        uStack_100 = _UNK_00babd2c;
        uStack_fc = _DAT_00bac700;
        uStack_f8 = _UNK_00bac704;
        uStack_f4 = _UNK_00bac708;
        uStack_f0 = _UNK_00bac70c;
        uStack_ec = 0x3e851eb8;
        uStack_e8 = 0x3d4ccccd;
        uStack_e4 = 0x3ecccccd;
        (**(code **)(*piVar7 + 0x3c))(local_110 + 4,0xffffffff,0xff,0);
      }
      pfStack_134 = afStack_e0;
      FUN_006cb2e0((float *)((int)param_1 + 0x33c),&local_118,0);
      uVar6 = DAT_00baa528;
      if ((*(int *)((int)param_1 + 0xc64) == 0x12) ||
         (uVar6 = DAT_00baa2d0, *(int *)((int)param_1 + 0xc64) == 0x13)) {
        local_11c = (float)uVar6;
      }
      local_120 = 2.045896e-43;
      pfStack_134 = (float *)0x513507;
      FUN_00956780();
      pfStack_134 = (float *)0x0;
      FUN_0092dc30(local_120,0x3f800000,2,0,local_11c);
    }
    if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
    goto LAB_005135b8;
  }
  ppbVar3 = *(byte ***)((int)param_1 + 0x7c);
  if (ppbVar3 != (byte **)0x0) {
    ppbVar8 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar8 = (byte **)*ppbVar3;
    }
    pcVar10 = "Shake";
    do {
      bVar2 = *(byte *)ppbVar8;
      bVar11 = bVar2 < (byte)*pcVar10;
      if (bVar2 != *pcVar10) {
LAB_00513580:
        uVar9 = -(uint)bVar11 | 1;
        goto LAB_00513585;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar8 + 1);
      bVar11 = bVar2 < ((byte *)pcVar10)[1];
      if (bVar2 != ((byte *)pcVar10)[1]) goto LAB_00513580;
      ppbVar8 = (byte **)((int)ppbVar8 + 2);
      pcVar10 = (char *)((byte *)pcVar10 + 2);
    } while (bVar2 != 0);
    uVar9 = 0;
LAB_00513585:
    if ((uVar9 == 0) &&
       ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)((int)param_1 + 0x8c) != '\0'))))
    goto LAB_005135b8;
  }
  pfStack_134 = (float *)0x1;
  cVar4 = FUN_0040a5d0("Shake");
  if (cVar4 != '\0') {
    pfStack_134 = (float *)0x5135b1;
    FUN_0040a1b0();
    *(undefined *)((int)param_1 + 0x8c) = 1;
  }
LAB_005135b8:
  FUN_00aef12b();
  return;
}

