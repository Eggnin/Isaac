/* Local J460 decompiler output.
 * VA: 0x004d77b0
 * Entry: 004d77b0
 * Dispatcher: 0x006c2990
 * Types: 853
 * Identities: 853.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004d8349; instructions=634
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=853; identities=853.0.0; dispatcher=0x006c2990;
   end=0x004d8349; instructions=634 */

void __fastcall AI_004d77b0(int *param_1)

{
  byte **ppbVar1;
  code *pcVar2;
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  byte **ppbVar8;
  uint uVar9;
  uint *puVar10;
  undefined4 uVar11;
  int *piVar12;
  byte bVar13;
  int iVar14;
  char *pcVar15;
  byte *pbVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  double dVar23;
  undefined8 uVar24;
  float local_a0;
  float local_9c;
  float local_98;
  float local_94;
  undefined8 local_8c;
  char local_80 [4];
  int local_7c;
  float local_74;
  int local_70;
  float local_6c;
  int local_68;
  float local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  uVar9 = DAT_00bacb70;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af395d;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar7 = *(int *)(DAT_00c71678 + 0x18300);
  local_58 = (float)param_1[0xd8];
  fVar22 = 0.0;
  fVar21 = (float)param_1[0xd9];
  local_60 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  iVar6 = param_1[0x2d9];
  local_68 = iVar7;
  local_24 = uVar5;
  if (iVar6 == 0) {
    uVar9 = param_1[0xfb];
    local_8c = DAT_00b1f504;
    local_54 = DAT_00b1f50c;
    if (-1 < param_1[0xcb]) {
      param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
      param_1[0x5b] = param_1[0x5b];
    }
    if ((param_1[0xb] != 10) || (*(char *)((int)param_1 + 0x173) != '\0')) {
      param_1[0x2d9] = 3;
      iVar7 = FUN_006eef60(uVar5);
      local_60 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
      local_60 = local_60 + local_60;
      local_5c = local_60;
      FUN_0041d540();
      fVar21 = local_60;
      FUN_0041d520();
      param_1[0x106] = (int)local_5c;
      param_1[0x107] = (int)fVar21;
      if (uVar9 == 0) {
        FUN_00a112c0(0x10,"RNG Seed is zero!\n");
        pcVar2 = (code *)swi(3);
        (*pcVar2)();
        return;
      }
      uVar9 = uVar9 >> ((byte)local_8c & 0x1f) ^ uVar9;
      uVar9 = uVar9 << ((byte)((ulonglong)local_8c >> 0x20) & 0x1f) ^ uVar9;
      param_1[0x10f] = (uVar9 >> (SUB41(local_54,0) & 0x1f) ^ uVar9) % 0x1e + 10;
      fVar21 = (float)param_1[0x107];
      fVar19 = (float)param_1[0x106];
      goto LAB_004d7981;
    }
    param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
    param_1[0x5b] = param_1[0x5b];
    local_5c = 0.0;
    puStack_20 = &stack0xfffffffc;
    puVar3 = &stack0xfffffffc;
    if (param_1[0xc] != 0) {
      do {
        puStack_20 = puVar3;
        if (uVar9 == 0) {
          FUN_00a112c0(0x10,"RNG Seed is zero!\n");
          pcVar2 = (code *)swi(3);
          (*pcVar2)();
          return;
        }
        uVar9 = uVar9 >> ((byte)local_8c & 0x1f) ^ uVar9;
        bVar13 = (byte)((ulonglong)local_8c >> 0x20);
        uVar9 = uVar9 << (bVar13 & 0x1f) ^ uVar9;
        uVar9 = uVar9 >> (SUB41(local_54,0) & 0x1f) ^ uVar9;
        local_60 = (float)((double)uVar9 + (double)(&DAT_00bacb00)[-((int)uVar9 >> 0x1f)]) *
                   DAT_00ba9ff0 * DAT_00baa8fc - DAT_00baa870;
        if (uVar9 == 0) {
          FUN_00a112c0(0x10,"RNG Seed is zero!\n");
          pcVar2 = (code *)swi(3);
          (*pcVar2)();
          return;
        }
        uVar9 = uVar9 >> ((byte)local_8c & 0x1f) ^ uVar9;
        uVar9 = uVar9 << (bVar13 & 0x1f) ^ uVar9;
        uVar9 = uVar9 >> (SUB41(local_54,0) & 0x1f) ^ uVar9;
        local_9c = local_60 + (float)param_1[0xd0];
        local_a0 = ((float)((double)uVar9 + (double)(&DAT_00bacb00)[-((int)uVar9 >> 0x1f)]) *
                    DAT_00ba9ff0 * DAT_00baa8fc - DAT_00baa870) + (float)param_1[0xcf];
        uVar11 = FUN_006eef60(uVar5);
        piVar12 = (int *)FUN_00428b20(param_1[10],0,&local_a0,&DAT_00c7b640,0,0,uVar11);
        piVar12[0x5a] = piVar12[0x5a] & 0xfffffffb;
        piVar12[0x5b] = piVar12[0x5b];
        (**(code **)(*piVar12 + 0xc))();
        local_5c = (float)((int)local_5c + 1);
        puVar3 = puStack_20;
      } while ((uint)local_5c < (uint)param_1[0xc]);
    }
  }
  else {
    local_54 = fVar21;
    if (iVar6 == 3) {
      if ((*(int *)(iVar7 + 8) == 0x10) && (*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca] < 2)) {
        param_1[0x10f] = 0;
      }
      if (*(char *)(param_1 + 100) == '\0') {
        iVar6 = param_1[0x10f];
      }
      else {
        iVar6 = 0;
      }
      if ((((param_1[0x5a] & 0xb00U) != 0) || (param_1[0x3ce] != 0)) && (5 < iVar6)) {
        iVar6 = 5;
      }
      param_1[0x10f] = iVar6 - (int)local_60;
      if (param_1[0x2f1] == 0) {
        if ((float)param_1[0xe1] < (float)param_1[0xe0] ||
            (float)param_1[0xe1] == (float)param_1[0xe0]) {
          puStack_20 = &stack0xfffffffc;
          cVar4 = FUN_006ac710(4,0);
          if ((cVar4 != '\0') && (uVar9 = FUN_006eef60(), (uVar9 & 3) == 0)) {
            FUN_0041a790(local_80,param_1 + 0xcf,0x29);
            local_14 = 0;
            local_54 = 0.0;
            fVar21 = local_74;
            if (local_74 != 0.0) {
              do {
                iVar7 = *(int *)(local_7c + (int)local_54 * 4);
                if ((param_1[0x5a] & 0x100U) == 0) {
                  fVar22 = *(float *)(iVar7 + 0x28);
                  if ((fVar22 != 1.401298e-45) ||
                     (local_60 = fVar22, cVar4 = FUN_007c32c0(), fVar22 = local_60,
                     fVar21 = local_74, cVar4 != '\0')) goto LAB_004d7d27;
LAB_004d7d41:
                  param_1[0x2f1] = 1;
                  iVar7 = local_68;
                  break;
                }
                cVar4 = FUN_006ac560();
                if ((cVar4 != '\0') && ((*(uint *)(iVar7 + 0x168) & 0x20000000) == 0))
                goto LAB_004d7d41;
                fVar22 = *(float *)(iVar7 + 0x28);
                fVar21 = local_74;
LAB_004d7d27:
                if ((fVar22 == 1.195308e-42) && (*(int *)(iVar7 + 0xbc4) == 1)) goto LAB_004d7d41;
                local_54 = (float)((int)local_54 + 1);
                iVar7 = local_68;
              } while ((uint)local_54 < (uint)fVar21);
            }
            local_14 = 0xffffffff;
            if (local_80[0] == '\0') {
              local_14 = 1;
              FUN_00a648b0(0,0);
              local_14 = 0xffffffff;
            }
          }
        }
        else {
          param_1[0x2f1] = 1;
          puStack_20 = &stack0xfffffffc;
        }
      }
      else {
        puStack_20 = &stack0xfffffffc;
        uVar9 = FUN_006eef60(uVar5);
        if (uVar9 % 0x19 == 0) {
          param_1[0x2f1] = 0;
        }
      }
      local_5c = DAT_00baa454;
      if (param_1[0x10f] < 1) {
        iVar6 = FUN_006be840();
        local_58 = *(float *)(iVar6 + 0x33c);
        local_54 = *(float *)(iVar6 + 0x340);
        local_64 = local_58;
        local_60 = local_54;
        if ((((param_1[0x5a] & 0x100U) == 0) && (param_1[0x3ce] == 0)) &&
           ((param_1[0x2f1] != 1 ||
            (cVar4 = FUN_007f0df0(param_1 + 0xcf,&local_64,1,0,0,0,0), cVar4 == '\0')))) {
          cVar4 = FUN_00417430(0x800,0);
          if (cVar4 != '\0') {
            local_98 = local_58 - (float)param_1[0xcf];
            local_94 = local_54 - (float)param_1[0xd0];
            puVar10 = (uint *)FUN_00a10030();
            fVar22 = (float)(*puVar10 ^ DAT_00bacb70);
            param_1[0x107] = puVar10[1] ^ DAT_00bacb70;
            goto LAB_004d7f54;
          }
          cVar4 = FUN_00417430(0x200,0);
          if (cVar4 != '\0') {
            piVar12 = (int *)FUN_0067f070();
            param_1[0x106] = *piVar12;
            param_1[0x107] = piVar12[1];
          }
        }
        else {
          local_58 = local_58 - (float)param_1[0xcf];
          local_54 = local_54 - (float)param_1[0xd0];
          fVar19 = local_54 * local_54 + local_58 * local_58;
          FUN_00435a50();
          fVar22 = local_58;
          fVar21 = local_54;
          if (DAT_00ba9fe4 < fVar19) {
            fVar22 = local_58 * (DAT_00baa454 / fVar19);
            fVar21 = local_54 * (DAT_00baa454 / fVar19);
          }
          param_1[0x107] = (int)fVar21;
          local_5c = DAT_00baa630;
LAB_004d7f54:
          param_1[0x106] = (int)fVar22;
        }
        if (((NAN((float)param_1[0x106]) || NAN(DAT_00c7b640)) !=
             ((float)param_1[0x106] == DAT_00c7b640)) &&
           ((NAN((float)param_1[0x107]) || NAN(DAT_00c7b644)) !=
            ((float)param_1[0x107] == DAT_00c7b644))) {
          piVar12 = (int *)FUN_0067f070();
          param_1[0x106] = *piVar12;
          param_1[0x107] = piVar12[1];
        }
        local_54 = 0.0;
        do {
          iVar6 = FUN_007f0800();
          if (iVar6 == 0) break;
          iVar6 = FUN_006eef60();
          local_60 = (DAT_00baa9b4 -
                     (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baaa78) * DAT_00baa088;
          fVar21 = local_60;
          FUN_0041d540();
          local_58 = fVar21;
          fVar22 = local_60;
          FUN_0041d520();
          fVar21 = (float)param_1[0x106];
          local_54 = (float)((int)local_54 + 1);
          param_1[0x106] = (int)(local_58 * fVar21 - (float)param_1[0x107] * fVar22);
          param_1[0x107] = (int)(local_58 * (float)param_1[0x107] + fVar21 * fVar22);
        } while ((int)local_54 < 10);
        iVar6 = FUN_006eef60();
        param_1[0x108] =
             (int)(DAT_00baa630 -
                  (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa75c);
        iVar6 = FUN_006eef60();
        param_1[0x109] =
             (int)(((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa154) * local_5c);
        uVar9 = FUN_006eef60();
        param_1[0x10f] = uVar9 % 0x1e + 10;
      }
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      param_1[0xd8] =
           (int)((float)param_1[0x109] * (float)param_1[0x106] * (float)param_1[0xe7] +
                (float)param_1[0xd8]);
      local_60 = (float)param_1[0x108] * DAT_00baa088;
      param_1[0xd9] =
           (int)((float)param_1[0x107] * (float)param_1[0x109] * (float)param_1[0xe7] +
                (float)param_1[0xd9]);
      fVar21 = local_60;
      FUN_0041d540();
      local_5c = fVar21;
      fVar21 = local_60;
      FUN_0041d520();
      fVar22 = (float)param_1[0x106] * local_5c - (float)param_1[0x107] * fVar21;
      fVar21 = (float)param_1[0x106] * fVar21 + (float)param_1[0x107] * local_5c;
      param_1[0x106] = (int)fVar22;
      param_1[0x107] = (int)fVar21;
      if (*(int *)(iVar7 + 8) == 0x10) {
        param_1[0x107] = 0;
        fVar21 = 0.0;
        if (0.0 < fVar22) {
          param_1[0x106] = 0x3f800000;
          fVar19 = (float)param_1[0x106];
          goto LAB_004d7981;
        }
        param_1[0x106] = (int)&DAT_bf800000;
      }
      fVar19 = (float)param_1[0x106];
LAB_004d7981:
      fVar22 = 0.0;
    }
    else {
      puStack_20 = &stack0xfffffffc;
      fVar19 = local_58;
      if (iVar6 == 0x10) {
        if (param_1[0x2f0] == 0) {
          iVar14 = 3;
          param_1[0xd8] = param_1[0xcd];
          param_1[0xd9] = param_1[0xce];
          iVar6 = 0;
          fVar18 = (float)param_1[0xcd];
        }
        else {
          iVar6 = 2;
          iVar14 = 4;
          fVar18 = local_58;
          if (param_1[0xd] == 0x3b7) {
            iVar6 = 0;
          }
        }
        param_1[0x62] = iVar6;
        param_1[0x61] = iVar14;
        if (*(int *)(iVar7 + 8) == 0x10) {
          puStack_20 = &stack0xfffffffc;
          cVar4 = FUN_008279a0();
          if (cVar4 == '\0') {
            iVar7 = 3;
          }
          else {
            param_1[0x62] = 0;
            iVar7 = 0;
          }
          param_1[0x61] = iVar7;
          param_1[0xd9] = (int)((float)param_1[0xe7] * DAT_00baa354 + (float)param_1[0xd9]);
          param_1[0xd8] = (int)((float)param_1[0xe7] * fVar22 + fVar18);
          fVar19 = local_58;
          if (*(char *)(param_1 + 100) == '\0') goto LAB_004d7989;
          param_1[0xd4] = 0;
          param_1[0x2ec] = 0;
          param_1[0x2d9] = 3;
          param_1[0x61] = 5;
LAB_004d7945:
          FUN_006d6ba0(0x102,0x3f800000,2,0,0x3f800000);
          FUN_0040a380(&DAT_00b1d574,0);
          fVar21 = local_54;
          fVar19 = local_58;
        }
        else {
          if ((float)param_1[0xd4] < DAT_00baae30) {
            param_1[0x62] = 0;
            param_1[0x61] = 3;
          }
          if (param_1[0x2f0] == 2) {
            puStack_20 = &stack0xfffffffc;
            FUN_0040b220(0);
            FUN_004071f0();
            param_1[0x61] = 6;
            local_5c = (float)param_1[0xd8];
            local_60 = (float)param_1[0xd9];
            fVar21 = local_60 * local_60 + local_5c * local_5c;
            FUN_00435a50();
            if (0.0 < fVar21) {
              param_1[0xd8] = (int)(local_5c * ((float)param_1[0x2ed] / fVar21));
              param_1[0xd9] = (int)(local_60 * ((float)param_1[0x2ed] / fVar21));
            }
            fVar21 = local_54;
            fVar19 = local_58;
            if (*(char *)(param_1 + 100) != '\0') {
              param_1[0x2f0] = 1;
              FUN_00407170();
              FUN_0040b220(0);
              FUN_004071f0();
              param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa120);
              param_1[0xd9] = (int)((float)param_1[0xd9] * DAT_00baa120);
              param_1[0x5a] = param_1[0x5a] & 0xfbffffff;
              param_1[0x5b] = param_1[0x5b];
              fVar21 = local_54;
              fVar19 = local_58;
            }
          }
          else {
            fVar18 = (float)param_1[0x2ec] + DAT_00baa354;
            fVar20 = (float)param_1[0xd4] + fVar18;
            param_1[0x2ec] = (int)fVar18;
            param_1[0xd4] = (int)fVar20;
            puStack_20 = &stack0xfffffffc;
            if (fVar20 <= (float)((uint)fVar18 ^ uVar9)) goto LAB_004d7989;
            param_1[0xd4] = 0;
            param_1[0x2ec] = 0;
            param_1[0x2d9] = 3;
            puStack_20 = &stack0xfffffffc;
            if ((param_1[0x61] != 4) ||
               (puStack_20 = &stack0xfffffffc, iVar7 = FUN_007f0780(param_1[0xcf],param_1[0xd0]),
               iVar7 == 0)) {
              param_1[0x61] = 5;
              param_1[0x62] = 4;
              goto LAB_004d7945;
            }
            FUN_00435c70();
            (**(code **)(*param_1 + 0x24))();
            fVar21 = local_54;
            fVar19 = local_58;
          }
        }
        goto LAB_004d7981;
      }
    }
LAB_004d7989:
    if (param_1[0x2d9] == 0x10) {
      *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= fVar22 && fVar22 != (float)param_1[0xd8];
      ppbVar1 = (byte **)param_1[0x1f];
      if (ppbVar1 != (byte **)0x0) {
        ppbVar8 = ppbVar1;
        if (&DAT_0000000f < ppbVar1[5]) {
          ppbVar8 = (byte **)*ppbVar1;
        }
        pcVar15 = "Bullet";
        do {
          bVar13 = *(byte *)ppbVar8;
          bVar17 = bVar13 < (byte)*pcVar15;
          if (bVar13 != *pcVar15) {
LAB_004d854e:
            uVar9 = -(uint)bVar17 | 1;
            goto LAB_004d8553;
          }
          if (bVar13 == 0) break;
          bVar13 = *(byte *)((int)ppbVar8 + 1);
          bVar17 = bVar13 < ((byte *)pcVar15)[1];
          if (bVar13 != ((byte *)pcVar15)[1]) goto LAB_004d854e;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pcVar15 = (char *)((byte *)pcVar15 + 2);
        } while (bVar13 != 0);
        uVar9 = 0;
LAB_004d8553:
        if (uVar9 == 0) {
          if ((*(byte *)(ppbVar1 + 0xd) != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
            uVar24 = 0x100b60434;
            goto LAB_004d8837;
          }
          goto LAB_004d884e;
        }
      }
      uVar24 = 0x100b60434;
LAB_004d8837:
      cVar4 = FUN_0040a5d0(uVar24);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else if (((param_1[0x1f] == 0) || (*(char *)(param_1[0x1f] + 0x34) != '\0')) ||
            (*(char *)(param_1 + 0x23) == '\0')) {
      *(undefined *)(param_1 + 0x52) = 0;
      if (fVar19 < fVar22) {
        *(undefined *)(param_1 + 0x52) = 1;
      }
      FUN_00499d60();
      local_60 = (fVar21 * DAT_00baa948 + DAT_00baa888) / DAT_00baa910;
      dVar23 = floor((double)local_60);
      local_60 = (float)dVar23;
      switch((int)dVar23) {
      case 0:
        ppbVar1 = (byte **)param_1[0x1f];
        if (ppbVar1 != (byte **)0x0) {
          ppbVar8 = ppbVar1;
          if (&DAT_0000000f < ppbVar1[5]) {
            ppbVar8 = (byte **)*ppbVar1;
          }
          pcVar15 = "MoveHori";
          do {
            bVar13 = *(byte *)ppbVar8;
            bVar17 = bVar13 < (byte)*pcVar15;
            if (bVar13 != *pcVar15) {
LAB_004d8734:
              uVar9 = -(uint)bVar17 | 1;
              goto LAB_004d8739;
            }
            if (bVar13 == 0) break;
            bVar13 = *(byte *)((int)ppbVar8 + 1);
            bVar17 = bVar13 < ((byte *)pcVar15)[1];
            if (bVar13 != ((byte *)pcVar15)[1]) goto LAB_004d8734;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar15 = (char *)((byte *)pcVar15 + 2);
          } while (bVar13 != 0);
          uVar9 = 0;
LAB_004d8739:
          if (uVar9 == 0) {
            if ((*(byte *)(ppbVar1 + 0xd) != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              uVar24 = 0x100b6043c;
              break;
            }
            goto LAB_004d884e;
          }
        }
        uVar24 = 0x100b6043c;
        break;
      case 1:
        ppbVar1 = (byte **)param_1[0x1f];
        if (ppbVar1 != (byte **)0x0) {
          ppbVar8 = ppbVar1;
          if (&DAT_0000000f < ppbVar1[5]) {
            ppbVar8 = (byte **)*ppbVar1;
          }
          pcVar15 = "MoveDiagonalDown";
          do {
            bVar13 = *(byte *)ppbVar8;
            bVar17 = bVar13 < (byte)*pcVar15;
            if (bVar13 != *pcVar15) {
LAB_004d87a6:
              uVar9 = -(uint)bVar17 | 1;
              goto LAB_004d87ab;
            }
            if (bVar13 == 0) break;
            bVar13 = *(byte *)((int)ppbVar8 + 1);
            bVar17 = bVar13 < ((byte *)pcVar15)[1];
            if (bVar13 != ((byte *)pcVar15)[1]) goto LAB_004d87a6;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar15 = (char *)((byte *)pcVar15 + 2);
          } while (bVar13 != 0);
          uVar9 = 0;
LAB_004d87ab:
          if (uVar9 == 0) {
            if ((*(byte *)(ppbVar1 + 0xd) != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              uVar24 = 0x100b60448;
              break;
            }
            goto LAB_004d884e;
          }
        }
        uVar24 = 0x100b60448;
        break;
      case -2:
        ppbVar1 = (byte **)param_1[0x1f];
        if (ppbVar1 != (byte **)0x0) {
          ppbVar8 = ppbVar1;
          if (&DAT_0000000f < ppbVar1[5]) {
            ppbVar8 = (byte **)*ppbVar1;
          }
          pbVar16 = &DAT_00b6045c;
          do {
            bVar13 = *(byte *)ppbVar8;
            bVar17 = bVar13 < *pbVar16;
            if (bVar13 != *pbVar16) {
LAB_004d8650:
              uVar9 = -(uint)bVar17 | 1;
              goto LAB_004d8655;
            }
            if (bVar13 == 0) break;
            bVar13 = *(byte *)((int)ppbVar8 + 1);
            bVar17 = bVar13 < pbVar16[1];
            if (bVar13 != pbVar16[1]) goto LAB_004d8650;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pbVar16 = pbVar16 + 2;
          } while (bVar13 != 0);
          uVar9 = 0;
LAB_004d8655:
          if (uVar9 == 0) {
            if ((*(byte *)(ppbVar1 + 0xd) == 0) || (*(char *)(param_1 + 0x23) != '\0'))
            goto LAB_004d884e;
            uVar24 = 0x100b6045c;
            break;
          }
        }
        uVar24 = 0x100b6045c;
        break;
      case -1:
        ppbVar1 = (byte **)param_1[0x1f];
        if (ppbVar1 != (byte **)0x0) {
          ppbVar8 = ppbVar1;
          if (&DAT_0000000f < ppbVar1[5]) {
            ppbVar8 = (byte **)*ppbVar1;
          }
          pcVar15 = "MoveDiagonalUp";
          do {
            bVar13 = *(byte *)ppbVar8;
            bVar17 = bVar13 < (byte)*pcVar15;
            if (bVar13 != *pcVar15) {
LAB_004d86c2:
              uVar9 = -(uint)bVar17 | 1;
              goto LAB_004d86c7;
            }
            if (bVar13 == 0) break;
            bVar13 = *(byte *)((int)ppbVar8 + 1);
            bVar17 = bVar13 < ((byte *)pcVar15)[1];
            if (bVar13 != ((byte *)pcVar15)[1]) goto LAB_004d86c2;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar15 = (char *)((byte *)pcVar15 + 2);
          } while (bVar13 != 0);
          uVar9 = 0;
LAB_004d86c7:
          if (uVar9 == 0) {
            if ((*(byte *)(ppbVar1 + 0xd) != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              uVar24 = 0x100b60464;
              break;
            }
            goto LAB_004d884e;
          }
        }
        uVar24 = 0x100b60464;
        break;
      default:
        ppbVar1 = (byte **)param_1[0x1f];
        if (ppbVar1 != (byte **)0x0) {
          ppbVar8 = ppbVar1;
          if (&DAT_0000000f < ppbVar1[5]) {
            ppbVar8 = (byte **)*ppbVar1;
          }
          pcVar15 = "MoveDown";
          do {
            bVar13 = *(byte *)ppbVar8;
            bVar17 = bVar13 < (byte)*pcVar15;
            if (bVar13 != *pcVar15) {
LAB_004d8812:
              uVar9 = -(uint)bVar17 | 1;
              goto LAB_004d8817;
            }
            if (bVar13 == 0) break;
            bVar13 = *(byte *)((int)ppbVar8 + 1);
            bVar17 = bVar13 < ((byte *)pcVar15)[1];
            if (bVar13 != ((byte *)pcVar15)[1]) goto LAB_004d8812;
            ppbVar8 = (byte **)((int)ppbVar8 + 2);
            pcVar15 = (char *)((byte *)pcVar15 + 2);
          } while (bVar13 != 0);
          uVar9 = 0;
LAB_004d8817:
          if ((uVar9 == 0) &&
             ((*(byte *)(ppbVar1 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_004d884e;
        }
        uVar24 = 0x100b60488;
      }
      goto LAB_004d8837;
    }
LAB_004d884e:
    piVar12 = *(int **)(*(int *)(local_68 + 4) + 0x10);
    if ((((piVar12 == (int *)0x0) || (piVar12[2] != 0x10)) || (*piVar12 != 0x23)) ||
       (((float)param_1[0xd9] <= DAT_00ba9fe4 ||
        (fVar21 = *(float *)(local_68 + 0x20) - DAT_00baa8d0, (float)param_1[0xd0] <= fVar21))))
    goto LAB_004d88d6;
    local_70 = param_1[0xcf];
    local_6c = fVar21;
    uVar11 = FUN_006eef60(uVar5);
    piVar12 = (int *)FUN_00428b20(1000,0x10,&local_70,&DAT_00c7b640,0,0x42,uVar11);
    (**(code **)(*piVar12 + 0xc))();
  }
  (**(code **)(*param_1 + 0x28))();
LAB_004d88d6:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

