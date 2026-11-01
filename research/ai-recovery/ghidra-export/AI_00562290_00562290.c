/* Local J460 decompiler output.
 * VA: 0x00562290
 * Entry: 00562290
 * Dispatcher: 0x006c2990
 * Types: 875
 * Identities: 875.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00562f00; instructions=771
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=875; identities=875.0.0; dispatcher=0x006c2990;
   end=0x00562f00; instructions=771 */

void __fastcall AI_00562290(int *param_1)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  char cVar6;
  uint uVar7;
  float *pfVar8;
  int iVar9;
  int *piVar10;
  undefined4 uVar11;
  byte **ppbVar12;
  char *pcVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined8 uVar18;
  char local_ac [4];
  int local_a8;
  uint local_a0;
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  float local_84;
  undefined4 *local_80;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  uint local_5c;
  uint local_58;
  uint local_54;
  int local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4ea0;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_84 = 0.0;
  local_80 = (undefined4 *)0x0;
  local_24 = uVar7;
  puVar5 = &stack0xfffffffc;
  if (param_1[0x3c7] != -1) {
    cVar6 = FUN_00956110(9,param_1[0x3c7],param_1,param_1);
    if (cVar6 != '\0') {
      local_4c = 0;
      local_48 = 0;
      local_44 = 0;
      local_40 = 0;
      local_3c = DAT_00c7b640;
      local_38 = DAT_00c7b644;
      local_34 = DAT_00c7b640;
      local_30 = DAT_00c7b644;
      uStack_2c = 0;
      local_28 = 0;
      (**(code **)(*param_1 + 0x24))(&local_4c);
    }
    pfVar8 = (float *)FUN_006d82d0(&local_94);
    puVar5 = puStack_20;
    if (((((NAN(*pfVar8) || NAN(DAT_00c7b640)) == (*pfVar8 == DAT_00c7b640)) ||
         ((NAN(pfVar8[1]) || NAN(DAT_00c7b644)) == (pfVar8[1] == DAT_00c7b644))) &&
        ((float)param_1[5] <= 0.0)) && (param_1[0x2d9] == 3)) {
      uVar18 = FUN_00435c70();
      (*(code *)((ulonglong)uVar18 >> 0x20))(0x40000000,0,0,(int)uVar18,0x1e);
      puVar5 = puStack_20;
    }
  }
  puStack_20 = puVar5;
  if (DAT_00ba9fe4 < (float)param_1[5]) {
    iVar9 = param_1[3];
    if (param_1[2] != iVar9) {
      local_80 = (undefined4 *)((float)param_1[0xcf] - *(float *)(iVar9 + -0x18));
      local_84 = (float)param_1[0xd0] - *(float *)(iVar9 + -0x14);
    }
    if (local_84 * local_84 + (float)local_80 * (float)local_80 < DAT_00baa004) {
      iVar9 = FUN_006eef60(uVar7);
      fVar15 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_80 = (undefined4 *)(fVar15 + fVar15);
      fVar15 = (float)local_80;
      FUN_0041d520();
      local_84 = fVar15;
      FUN_0041d540();
    }
    fVar15 = local_84 * local_84 + (float)local_80 * (float)local_80;
    FUN_00435a50();
    if (DAT_00ba9fe4 < fVar15) {
      local_80 = (undefined4 *)((DAT_00baa454 / fVar15) * (float)local_80);
      local_84 = local_84 * (DAT_00baa454 / fVar15);
    }
  }
  iVar9 = param_1[0x2d9];
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
  if (iVar9 != 0) {
    if (iVar9 != 3) {
      if (iVar9 == 8) {
        if ((param_1[0x3c7] != -1) &&
           ((pfVar8 = (float *)FUN_006d82d0(&local_94),
            (NAN(*pfVar8) || NAN(DAT_00c7b640)) == (*pfVar8 == DAT_00c7b640) ||
            ((NAN(pfVar8[1]) || NAN(DAT_00c7b644)) == (pfVar8[1] == DAT_00c7b644))))) {
          FUN_006d82d0(&local_94);
          piVar10 = (int *)FUN_00a10030(&local_9c);
          param_1[0xcd] = *piVar10;
          param_1[0xce] = piVar10[1];
        }
        cVar6 = FUN_0040add0("Shoot");
        if (cVar6 != '\0') {
          FUN_006d6ba0(0x25,0x3f800000,2,0,0x3f800000);
          uVar11 = FUN_006eef60();
          local_8c = (float)param_1[0xcd] * DAT_00baad74;
          local_88 = (float)param_1[0xce] * DAT_00baad74;
          piVar10 = (int *)FUN_00428b20(1000,0x8d,param_1 + 0xcf,&local_8c,param_1,1,uVar11);
          piVar10[0x117] = -1;
          piVar10[0x118] = -1;
          (**(code **)(*piVar10 + 0xc))();
          local_8c = (float)param_1[0xcf] - (float)param_1[0xcd] * DAT_00baa904;
          local_88 = (float)param_1[0xd0] - (float)param_1[0xce] * DAT_00baa904;
          FUN_0041a790(local_ac,&local_8c,0xffffffff);
          fVar15 = DAT_00baa81c;
          local_14 = 0;
          uVar7 = 0;
          if (local_a0 != 0) {
            do {
              piVar10 = *(int **)(local_a8 + uVar7 * 4);
              if (piVar10 != param_1) {
                fVar17 = (float)param_1[0xce];
                piVar10[0xd8] = (int)((float)piVar10[0xd8] - (float)param_1[0xcd] * fVar15);
                piVar10[0xd9] = (int)((float)piVar10[0xd9] - fVar17 * fVar15);
              }
              uVar7 = uVar7 + 1;
            } while (uVar7 < local_a0);
          }
          local_84 = 8.407791e-45;
          do {
            uVar11 = FUN_006eef60();
            iVar9 = FUN_006eef60();
            local_88 = ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088;
            fVar15 = local_88;
            FUN_0041d540();
            local_80 = (undefined4 *)fVar15;
            FUN_0041d520();
            fVar15 = local_88 * (float)param_1[0xcd];
            local_88 = (float)((uint)((float)local_80 * (float)param_1[0xcd] -
                                     local_88 * (float)param_1[0xce]) ^ DAT_00bacb70);
            local_80 = (undefined4 *)
                       ((uint)((float)local_80 * (float)param_1[0xce] + fVar15) ^ DAT_00bacb70);
            iVar9 = FUN_006eef60();
            local_98 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa87c + DAT_00baa7a4;
            local_9c = local_88 * local_98;
            local_98 = (float)local_80 * local_98;
            local_94 = (float)param_1[0xcf] - (float)param_1[0xcd] * DAT_00baa75c;
            local_90 = (float)param_1[0xd0] - (float)param_1[0xce] * DAT_00baa75c;
            piVar10 = (int *)FUN_00428b20(1000,99,&local_94,&local_9c,0,1,uVar11);
            iVar9 = FUN_006eef60();
            fVar15 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa528 + DAT_00baa454;
            local_30 = 0.0;
            piVar10[0x39] = (int)(fVar15 * (float)piVar10[0x39]);
            uStack_2c = 0;
            piVar10[0x3a] = (int)(fVar15 * (float)piVar10[0x3a]);
            iVar4 = _UNK_00bac33c;
            iVar3 = _UNK_00bac338;
            iVar2 = _UNK_00bac334;
            iVar9 = _DAT_00bac330;
            local_28 = 0;
            if (piVar10 + 0x3c != &local_50) {
              *(undefined (*) [16])(piVar10 + 0x40) = ZEXT416(0);
              *(undefined8 *)(piVar10 + 0x44) = 0;
              piVar10[0x3c] = iVar9;
              piVar10[0x3d] = iVar2;
              piVar10[0x3e] = iVar3;
              piVar10[0x3f] = iVar4;
              piVar10[0x46] = 0;
            }
            (**(code **)(*piVar10 + 0xc))();
            local_84 = (float)((int)local_84 + -1);
          } while (local_84 != 0.0);
          local_14 = 0xffffffff;
          if (local_ac[0] == '\0') {
            local_14 = 1;
            FUN_00a648b0(0,0);
            local_14 = 0xffffffff;
          }
        }
        cVar6 = FUN_0040ae70("Shoot");
        if (cVar6 != '\0') {
          if (*(char *)(param_1 + 100) != '\0') {
            fVar15 = (float)param_1[0x66] * (float)param_1[0x68] +
                     (float)param_1[0x65] * (float)param_1[0x67];
            local_80 = (undefined4 *)
                       ((float)param_1[0x65] - (float)param_1[0x67] * DAT_00baa5b4 * fVar15);
            local_84 = (float)param_1[0x66] - (float)param_1[0x68] * DAT_00baa5b4 * fVar15;
            param_1[0xd8] = (int)local_80;
            param_1[0xd9] = (int)local_84;
            fVar16 = (float)local_80 * (float)local_80 + local_84 * local_84;
            FUN_00435a50();
            fVar17 = (float)local_80;
            fVar15 = local_84;
            if (DAT_00ba9fe4 < fVar16) {
              fVar17 = (float)local_80 * (DAT_00baa454 / fVar16);
              fVar15 = local_84 * (DAT_00baa454 / fVar16);
            }
            param_1[0xcd] = (int)fVar17;
            param_1[0xce] = (int)fVar15;
          }
          fVar15 = (float)param_1[0xdb];
          fVar17 = (float)param_1[0x2ed];
          if ((NAN(fVar15) || NAN(DAT_00ba9fe4)) == (fVar15 == DAT_00ba9fe4)) {
            param_1[0xd9] =
                 (int)(((float)param_1[0xe7] * fVar17 * (float)param_1[0xce]) / fVar15 +
                      (float)param_1[0xd9]);
            param_1[0xd8] =
                 (int)(((float)param_1[0xe7] * fVar17 * (float)param_1[0xcd]) / fVar15 +
                      (float)param_1[0xd8]);
            fVar17 = (float)param_1[0x2ed];
          }
          fVar15 = (float)param_1[0xe7];
          fVar16 = DAT_00baa3a4;
          if ((NAN(fVar15) || NAN(DAT_00baa454)) == (fVar15 == DAT_00baa454)) {
            fVar16 = DAT_00baa3a4 / ((fVar15 + DAT_00baa3a4) - fVar15 * DAT_00baa3a4);
          }
          param_1[0x2ed] = (int)(fVar16 * fVar17);
        }
        if ((param_1[0x27] == 0) || (*(char *)(param_1 + 0x2b) == '\0')) {
          param_1[0x2d9] = 3;
        }
      }
      goto LAB_00562d95;
    }
    ppbVar12 = (byte **)param_1[0x27];
    if (ppbVar12 == (byte **)0x0) {
LAB_00562b68:
      cVar6 = FUN_0040aaf0("IdleOverlay",1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x2b) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar12[5]) {
        ppbVar12 = (byte **)*ppbVar12;
      }
      pcVar13 = "IdleOverlay";
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar14 = bVar1 < (byte)*pcVar13;
        if (bVar1 != *pcVar13) {
LAB_00562b50:
          uVar7 = -(uint)bVar14 | 1;
          goto LAB_00562b55;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar14 = bVar1 < ((byte *)pcVar13)[1];
        if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00562b50;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pcVar13 = (char *)((byte *)pcVar13 + 2);
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_00562b55:
      if ((uVar7 != 0) ||
         ((*(char *)(param_1[0x27] + 0x34) != '\0' && (*(char *)(param_1 + 0x2b) == '\0'))))
      goto LAB_00562b68;
    }
    if (((NAN((float)local_80) || NAN(DAT_00c7b640)) != ((float)local_80 == DAT_00c7b640)) &&
       ((NAN(local_84) || NAN(DAT_00c7b644)) != (local_84 == DAT_00c7b644))) goto LAB_00562d95;
    param_1[0x2d9] = 8;
    ppbVar12 = (byte **)param_1[0x27];
    if (ppbVar12 == (byte **)0x0) {
LAB_00562c09:
      cVar6 = FUN_0040aaf0("PootOverlay",1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x2b) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar12[5]) {
        ppbVar12 = (byte **)*ppbVar12;
      }
      pcVar13 = "PootOverlay";
      do {
        bVar1 = *(byte *)ppbVar12;
        bVar14 = bVar1 < (byte)*pcVar13;
        if (bVar1 != *pcVar13) {
LAB_00562bf1:
          uVar7 = -(uint)bVar14 | 1;
          goto LAB_00562bf6;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar12 + 1);
        bVar14 = bVar1 < ((byte *)pcVar13)[1];
        if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00562bf1;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pcVar13 = (char *)((byte *)pcVar13 + 2);
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_00562bf6:
      if ((uVar7 != 0) ||
         ((*(char *)(param_1[0x27] + 0x34) != '\0' && (*(char *)(param_1 + 0x2b) == '\0'))))
      goto LAB_00562c09;
    }
    fVar17 = (float)local_80;
    fVar15 = local_84;
    if ((param_1[0x3c7] != -1) &&
       ((pfVar8 = (float *)FUN_006d82d0(&local_94),
        (NAN(*pfVar8) || NAN(DAT_00c7b640)) == (*pfVar8 == DAT_00c7b640) ||
        (fVar17 = (float)local_80, fVar15 = local_84,
        (NAN(pfVar8[1]) || NAN(DAT_00c7b644)) == (pfVar8[1] == DAT_00c7b644))))) {
      FUN_006d82d0(&local_94);
      pfVar8 = (float *)FUN_00a10030(&local_9c);
      fVar17 = *pfVar8;
      fVar15 = pfVar8[1];
    }
    param_1[0xce] = (int)fVar15;
    param_1[0xcd] = (int)fVar17;
    param_1[0x2ed] = 0x40800000;
    *(bool *)(param_1 + 0x52) = fVar17 < 0.0;
    goto LAB_00562d95;
  }
  param_1[0x2d9] = 3;
  cVar6 = FUN_0040a5d0("Reference",1);
  if (((cVar6 != '\0') && (param_1[0x1f] != 0)) && (FUN_00408e00(), param_1[0x1f] != 0)) {
    *(undefined *)(param_1 + 0x23) = 0;
  }
  ppbVar12 = (byte **)param_1[0x27];
  if (ppbVar12 == (byte **)0x0) {
LAB_00562d66:
    cVar6 = FUN_0040aaf0("IdleOverlay",1);
    if (cVar6 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x2b) = 1;
    }
  }
  else {
    if (&DAT_0000000f < ppbVar12[5]) {
      ppbVar12 = (byte **)*ppbVar12;
    }
    pcVar13 = "IdleOverlay";
    do {
      bVar1 = *(byte *)ppbVar12;
      bVar14 = bVar1 < (byte)*pcVar13;
      if (bVar1 != *pcVar13) {
LAB_00562d48:
        uVar7 = -(uint)bVar14 | 1;
        goto LAB_00562d4d;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar12 + 1);
      bVar14 = bVar1 < ((byte *)pcVar13)[1];
      if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00562d48;
      ppbVar12 = (byte **)((int)ppbVar12 + 2);
      pcVar13 = (char *)((byte *)pcVar13 + 2);
    } while (bVar1 != 0);
    uVar7 = 0;
LAB_00562d4d:
    if ((uVar7 != 0) ||
       ((*(char *)(param_1[0x27] + 0x34) != '\0' && (*(char *)(param_1 + 0x2b) == '\0'))))
    goto LAB_00562d66;
  }
  param_1[0x61] = 6;
LAB_00562d95:
  local_80 = (undefined4 *)FUN_0040ac70(1);
  if (local_80 != (undefined4 *)0x0) {
    iVar9 = FUN_0040b220(0);
    *(undefined4 *)(iVar9 + 0x40) = *local_80;
    *(undefined4 *)(iVar9 + 0x44) = local_80[1];
    iVar9 = FUN_0040b220(0);
    *(undefined4 *)(iVar9 + 0x34) = local_80[4];
    *(undefined4 *)(iVar9 + 0x38) = local_80[5];
    local_88 = (float)local_80[0x11];
    iVar9 = FUN_0040b220(0);
    *(float *)(iVar9 + 0x3c) = local_88;
    FUN_00aefca0();
    if (param_1[0x1f] != 0) {
      FUN_00408e00();
    }
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (uVar7 = param_1[0x5a] & 0x1000000, uVar7 == 0))
  {
    local_7c = _DAT_00bac7b0;
    uStack_78 = _UNK_00bac7b4;
    uStack_74 = _UNK_00bac7b8;
    uStack_70 = _UNK_00bac7bc;
    local_6c = _DAT_00babbc0;
    uStack_68 = _UNK_00babbc4;
    uStack_64 = _UNK_00babbc8;
    uStack_60 = _UNK_00babbcc;
    local_5c = uVar7;
    local_58 = uVar7;
    local_54 = uVar7;
    FUN_00700060(param_1 + 0xcf,0x41c80000,0,0,0,0,&local_7c,param_1,0x3f800000,1,4,0,0);
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

