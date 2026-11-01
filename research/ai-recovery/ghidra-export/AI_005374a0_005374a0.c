/* Local J460 decompiler output.
 * VA: 0x005374a0
 * Entry: 005374a0
 * Dispatcher: 0x006c2990
 * Types: 219,285
 * Identities: 219.0.0,285.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00537e20; instructions=576
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=219,285; identities=219.0.0,285.0.0;
   dispatcher=0x006c2990; end=0x00537e20; instructions=576 */

void __fastcall AI_005374a0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  char cVar6;
  byte **ppbVar7;
  float *pfVar8;
  undefined4 uVar9;
  uint uVar10;
  int iVar11;
  undefined4 *puVar12;
  int *piVar13;
  char *pcVar14;
  byte *pbVar15;
  bool bVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  undefined4 local_128 [8];
  undefined4 local_108;
  undefined4 uStack_104;
  undefined4 local_100;
  float local_fc;
  float local_f8;
  undefined4 local_f4;
  byte *local_f0;
  undefined local_c0 [4];
  float local_bc;
  float local_b8;
  undefined4 local_b0;
  uint local_68;
  float local_60;
  undefined4 local_5c;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  iVar11 = *(int *)(param_1 + 0xb64);
  if (iVar11 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 0xd;
    cVar6 = FUN_0040a5d0("AppearDown",1);
    if (cVar6 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
    *(undefined4 *)(param_1 + 0x188) = 0;
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    uVar5 = _UNK_00babaec;
    uVar4 = _UNK_00babae8;
    uVar3 = _UNK_00babae4;
    uVar9 = _DAT_00babae0;
    if (*(int *)(param_1 + 0x28) != 0x11d) {
      local_108 = 0x3f4ccccd;
      uStack_104 = 0x3f4ccccd;
      local_100 = 0x3f4ccccd;
      if ((undefined4 *)(param_1 + 0x1e4) != local_128) {
        *(undefined8 *)(param_1 + 0x204) = 0x3f4ccccd3f4ccccd;
        *(undefined4 *)(param_1 + 0x1e4) = uVar9;
        *(undefined4 *)(param_1 + 0x1e8) = uVar3;
        *(undefined4 *)(param_1 + 0x1ec) = uVar4;
        *(undefined4 *)(param_1 + 0x1f0) = uVar5;
        *(undefined4 *)(param_1 + 0x20c) = 0x3f4ccccd;
        *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
        FUN_00aef12b();
        return;
      }
    }
    goto LAB_00537dff;
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
LAB_00537625:
    if (iVar11 == 0xd) {
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 0x10;
LAB_00537652:
        ppbVar2 = *(byte ***)(param_1 + 0x7c);
        if (ppbVar2 == (byte **)0x0) {
LAB_005376a6:
          cVar6 = FUN_0040a5d0("VanishDown",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
        else {
          ppbVar7 = ppbVar2;
          if (&DAT_0000000f < ppbVar2[5]) {
            ppbVar7 = (byte **)*ppbVar2;
          }
          pcVar14 = "VanishDown";
          do {
            bVar1 = *(byte *)ppbVar7;
            bVar16 = bVar1 < (byte)*pcVar14;
            if (bVar1 != *pcVar14) {
LAB_00537688:
              uVar10 = -(uint)bVar16 | 1;
              goto LAB_0053768d;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar7 + 1);
            bVar16 = bVar1 < ((byte *)pcVar14)[1];
            if (bVar1 != ((byte *)pcVar14)[1]) goto LAB_00537688;
            ppbVar7 = (byte **)((int)ppbVar7 + 2);
            pcVar14 = (char *)((byte *)pcVar14 + 2);
          } while (bVar1 != 0);
          uVar10 = 0;
LAB_0053768d:
          if ((uVar10 != 0) ||
             ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
          goto LAB_005376a6;
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 3;
          goto LAB_005376ea;
        }
        iVar11 = *(int *)(param_1 + 0xb64);
      }
    }
    else if (iVar11 == 0x10) goto LAB_00537652;
    if (iVar11 == 3) goto LAB_005376ea;
    if (iVar11 == 4) {
      *(undefined *)(param_1 + 0x171) = 1;
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      local_f0 = (&PTR_s_AppearLeft_00b61530)[*(int *)(param_1 + 0xbc0)];
      if (ppbVar2 == (byte **)0x0) {
LAB_00537acf:
        cVar6 = FUN_0040a5d0(local_f0,1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar7 = ppbVar2;
        pbVar15 = local_f0;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar7 = (byte **)*ppbVar2;
        }
        do {
          bVar1 = *(byte *)ppbVar7;
          bVar16 = bVar1 < *pbVar15;
          if (bVar1 != *pbVar15) {
LAB_00537ab0:
            uVar10 = -(uint)bVar16 | 1;
            goto LAB_00537ab5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar7 + 1);
          bVar16 = bVar1 < pbVar15[1];
          if (bVar1 != pbVar15[1]) goto LAB_00537ab0;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar1 != 0);
        uVar10 = 0;
LAB_00537ab5:
        if ((uVar10 != 0) ||
           ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_00537acf;
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
      }
    }
    else if (iVar11 == 8) {
      *(undefined4 *)(param_1 + 0x188) = 2;
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      local_f0 = (&PTR_s_ShootLeft_00b61540)[*(int *)(param_1 + 0xbc0)];
      if (ppbVar2 == (byte **)0x0) {
LAB_00537b93:
        cVar6 = FUN_0040a5d0(local_f0,1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar7 = ppbVar2;
        pbVar15 = local_f0;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar7 = (byte **)*ppbVar2;
        }
        do {
          bVar1 = *(byte *)ppbVar7;
          bVar16 = bVar1 < *pbVar15;
          if (bVar1 != *pbVar15) {
LAB_00537b70:
            uVar10 = -(uint)bVar16 | 1;
            goto LAB_00537b75;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar7 + 1);
          bVar16 = bVar1 < pbVar15[1];
          if (bVar1 != pbVar15[1]) goto LAB_00537b70;
          ppbVar7 = (byte **)((int)ppbVar7 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar1 != 0);
        uVar10 = 0;
LAB_00537b75:
        if ((uVar10 != 0) ||
           ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
        goto LAB_00537b93;
      }
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar6 = FUN_0040add0("Shoot");
        if ((cVar6 != '\0') && (cVar6 = FUN_00417430(0x1000a00,0), cVar6 == '\0')) {
          if (*(int *)(param_1 + 0x28) == 0x11d) {
            pfVar8 = (float *)FUN_0040b1d0("ShootPos");
            local_fc = *pfVar8 / DAT_00baa324;
            local_f8 = pfVar8[1] / DAT_00baa324;
            fVar17 = (float)*(int *)(param_1 + 0xbc0) * DAT_00baa9b4 - DAT_00baaa78;
            FUN_00682740();
            piVar13 = (int *)FUN_0096f310(1,param_1 + 0x33c,fVar17,0x19,&local_fc,param_1,0);
            if (*(int *)(param_1 + 0xbc0) == 1) {
              piVar13[0xd6] = DAT_00baadc0;
              (**(code **)(*piVar13 + 0xc))();
            }
            else {
              piVar13[0xd6] = DAT_00baabfc;
              (**(code **)(*piVar13 + 0xc))();
            }
          }
          else {
            FUN_006d6ba0(0x107,0x3f800000,2,0,0x3f800000);
            AI_0043ef30();
            pfVar8 = (float *)FUN_0040b1d0("ShootPos");
            local_60 = *pfVar8 / DAT_00baa324;
            local_bc = pfVar8[1] / DAT_00baa324;
            local_68 = local_68 | 0x10;
            local_5c = 0;
            local_b0 = 0x3fc00000;
            local_b8 = local_b8 + DAT_00baa81c;
            uVar10 = FUN_006eef60();
            FUN_006ccdd0((uVar10 & 3) + 6,param_1 + 0x334,0x40e00000,local_c0);
          }
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_00537dd5;
      }
      *(undefined4 *)(param_1 + 0xb64) = 9;
    }
    else if ((iVar11 == 9) &&
            ((FUN_0040a380((&PTR_s_VanishLeft_00b61550)[*(int *)(param_1 + 0xbc0)],0),
             *(int *)(param_1 + 0x7c) == 0 || (*(char *)(param_1 + 0x8c) == '\0')))) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
      *(undefined4 *)(param_1 + 0x410) = 0x3c;
      *(undefined4 *)(param_1 + 3000) = 0;
    }
  }
  else {
    FUN_006d8e40(1);
    iVar11 = *(int *)(param_1 + 0xb64);
    if (iVar11 != 3) {
      fVar17 = *(float *)(param_1 + 3000) - *(float *)(param_1 + 0x39c) / DAT_00baa9b4;
      if (fVar17 <= DAT_00ba9fe4) {
        fVar17 = DAT_00ba9fe4;
      }
      *(float *)(param_1 + 3000) = fVar17;
      goto LAB_00537625;
    }
    fVar17 = *(float *)(param_1 + 0x39c) / DAT_00baaa44 + *(float *)(param_1 + 3000);
    if (DAT_00baa454 <= fVar17) {
      fVar17 = DAT_00baa454;
    }
    *(float *)(param_1 + 3000) = fVar17;
LAB_005376ea:
    *(undefined4 *)(param_1 + 0x188) = 0;
    *(undefined *)(param_1 + 0x171) = 0;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      if (*(int *)(param_1 + 0x410) < 1) {
        uVar10 = FUN_006eef60();
        if (uVar10 % 0x1e == 0) {
          iVar11 = FUN_006be840();
          local_f4 = *(undefined4 *)(iVar11 + 0x33c);
          local_f0 = *(byte **)(iVar11 + 0x340);
          puVar12 = (undefined4 *)FUN_00813520(&local_fc,&local_f4,0x42f00000,1,0,0);
          *(undefined4 *)(param_1 + 0x33c) = *puVar12;
          *(undefined4 *)(param_1 + 0x340) = puVar12[1];
          *(undefined4 *)(param_1 + 0xb64) = 4;
          iVar11 = FUN_006be840();
          fVar17 = *(float *)(iVar11 + 0x33c);
          fVar20 = *(float *)(iVar11 + 0x340);
          *(float *)(param_1 + 0x334) = fVar17;
          *(float *)(param_1 + 0x338) = fVar20;
          fVar17 = fVar17 - *(float *)(param_1 + 0x33c);
          fVar20 = fVar20 - *(float *)(param_1 + 0x340);
          if ((float)((uint)fVar17 & DAT_00bacb40) <= (float)((uint)fVar20 & DAT_00bacb40)) {
            iVar11 = (uint)(0.0 <= fVar20) * 2 + 1;
          }
          else {
            iVar11 = 2;
            if (fVar17 < 0.0) {
              iVar11 = 0;
            }
          }
          *(int *)(param_1 + 0xbc0) = iVar11;
          if (*(int *)(param_1 + 0x28) == 0x11d) {
            uVar9 = FUN_004238f0(0x3f4ccccd);
            fVar17 = (float)*(int *)(param_1 + 0xbc0) * DAT_00baa9b4 - DAT_00baaa78;
            FUN_00682740();
            fVar17 = fVar17 * DAT_00baa088;
            local_f0 = (byte *)fVar17;
            FUN_0041d540();
            local_fc = fVar17;
            local_f8 = (float)local_f0;
            FUN_0041d520();
            local_f4 = 0;
            local_f0 = (byte *)0xc1d00000;
            FUN_0060b890(&local_fc,0x1e,uVar9,0x40800000);
          }
        }
      }
      else {
        *(int *)(param_1 + 0x410) =
             ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
             *(int *)(param_1 + 0x410);
      }
    }
    else {
      FUN_006d8b20(2);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa418;
      FUN_007e33c0(&DAT_00c7b640,0x3fb33333,0,1);
      if ((DAT_00baa454 <= *(float *)(param_1 + 3000)) || (cVar6 = FUN_006cae60(0,7), cVar6 != '\0')
         ) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        pfVar8 = (float *)FUN_006d85a0(&local_fc);
        fVar20 = *pfVar8 * DAT_00baaa5c;
        fVar17 = pfVar8[1] * DAT_00baaa5c;
        if (((NAN(fVar20) || NAN(DAT_00c7b640)) != (fVar20 == DAT_00c7b640)) &&
           ((NAN(fVar17) || NAN(DAT_00c7b644)) != (fVar17 == DAT_00c7b644))) {
          pfVar8 = (float *)FUN_0067f070(&local_fc);
          fVar20 = *pfVar8 * DAT_00baaa5c;
          fVar17 = pfVar8[1] * DAT_00baaa5c;
        }
        fVar19 = (float)((uint)fVar20 & DAT_00bacb40);
        *(float *)(param_1 + 0x338) = fVar17 + *(float *)(param_1 + 0x340);
        fVar18 = (float)((uint)fVar17 & DAT_00bacb40);
        *(float *)(param_1 + 0x334) = fVar20 + *(float *)(param_1 + 0x33c);
        if (fVar19 <= fVar18) {
          *(uint *)(param_1 + 0xbc0) = (uint)(0.0 <= fVar17) * 2 + 1;
        }
        else {
          uVar9 = 2;
          if (fVar20 < 0.0) {
            uVar9 = 0;
          }
          *(undefined4 *)(param_1 + 0xbc0) = uVar9;
        }
      }
    }
  }
LAB_00537dd5:
  if ((*(int *)(param_1 + 0xf1c) == -1) || (*(int *)(param_1 + 0xb64) != 3)) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa120;
  }
LAB_00537dff:
  FUN_00aef12b();
  return;
}

