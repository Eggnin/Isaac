/* Local J460 decompiler output.
 * VA: 0x0048f110
 * Entry: 0048f110
 * Dispatcher: 0x006c2990
 * Types: 403
 * Identities: 403.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00490680; instructions=1462
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=403; identities=403.0.0; dispatcher=0x006c2990;
   end=0x00490680; instructions=1462 */

void __fastcall AI_0048f110(float param_1)

{
  byte bVar1;
  uint uVar2;
  longlong lVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  char cVar6;
  uint uVar7;
  int iVar8;
  byte **ppbVar9;
  undefined4 *puVar10;
  float *pfVar11;
  undefined4 uVar12;
  byte **ppbVar13;
  int *piVar14;
  float fVar15;
  byte *pbVar16;
  char *pcVar17;
  uint *puVar18;
  float fVar19;
  undefined4 uVar20;
  int iVar21;
  code *pcVar22;
  bool bVar23;
  undefined4 local_e0 [8];
  undefined4 local_c0;
  undefined4 uStack_bc;
  undefined4 local_b8;
  char local_b4 [4];
  int local_b0;
  uint local_a8;
  char local_a4 [4];
  int local_a0;
  float local_98;
  undefined local_94;
  int local_90;
  undefined4 local_8c;
  float local_88;
  int local_84;
  int local_80;
  float local_7c;
  float local_78;
  char local_71;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  code *local_58;
  float local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  uVar5 = _UNK_00babaec;
  uVar4 = _UNK_00babae8;
  uVar12 = _UNK_00babae4;
  uVar20 = _DAT_00babae0;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2db6;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_78 = *(float *)((int)param_1 + 0x30);
  local_68 = param_1;
  local_24 = uVar7;
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 0xd;
    *(undefined4 *)((int)param_1 + 0x410) = 0;
    *(undefined4 *)((int)param_1 + 0x184) = 3;
    local_c0 = 0x3f4ccccd;
    uStack_bc = 0x3f4ccccd;
    local_b8 = 0x3f4ccccd;
    puStack_20 = &stack0xfffffffc;
    if ((undefined4 *)((int)param_1 + 0x1e4) != local_e0) {
      *(undefined8 *)((int)param_1 + 0x204) = 0x3f4ccccd3f4ccccd;
      *(undefined4 *)((int)param_1 + 0x1e4) = uVar20;
      *(undefined4 *)((int)param_1 + 0x1e8) = uVar12;
      *(undefined4 *)((int)param_1 + 0x1ec) = uVar4;
      *(undefined4 *)((int)param_1 + 0x1f0) = uVar5;
      *(undefined4 *)((int)param_1 + 0x20c) = 0x3f4ccccd;
      *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
      puStack_20 = &stack0xfffffffc;
    }
    goto LAB_00490653;
  }
  *(int *)((int)param_1 + 0x410) = *(int *)((int)param_1 + 0x410) + 1;
  local_64 = 0.0;
  local_94 = 0;
  local_90 = 0;
  local_8c = 0;
  local_88 = 0.0;
  local_14._0_1_ = 0;
  local_14._1_3_ = 0;
  iVar8 = FUN_006d0dd0(local_a4,*(undefined4 *)((int)param_1 + 0x20));
  local_71 = '\x01';
  local_94 = 1;
  local_90 = *(int *)(iVar8 + 4);
  local_8c = *(undefined4 *)(iVar8 + 8);
  local_88 = *(float *)(iVar8 + 0xc);
  local_84 = local_90;
  local_6c = local_88;
  if (local_a4[0] == '\0') {
    local_14._0_1_ = 1;
    FUN_00a648b0(0,0,uVar7);
    local_14._0_1_ = 0;
  }
  AI_0041af60(local_a4,0xd4,0xffffffff,0xffffffff,0,1);
  local_14 = CONCAT31(local_14._1_3_,2);
  local_58 = (code *)0x0;
  local_5c = local_98;
  local_80 = local_a0;
  fVar19 = local_98;
  if (local_98 != 0.0) {
    do {
      if ((*(uint *)(*(int *)(local_a0 + (int)local_58 * 4) + 0x168) & 0x20000000) != 0) {
        if ((uint)fVar19 <= local_58) {
          FUN_00a112c0(0x10,"EL: invalid index for remove\n");
        }
        fVar19 = (float)((int)fVar19 - 1);
        for (fVar15 = (float)local_58; local_98 = fVar19, (uint)fVar15 < (uint)fVar19;
            fVar15 = (float)((int)fVar15 + 1)) {
          *(undefined4 *)(local_a0 + (int)fVar15 * 4) =
               *(undefined4 *)(local_a0 + 4 + (int)fVar15 * 4);
        }
      }
      local_58 = (code *)((int)local_58 + 1);
      param_1 = local_68;
    } while (local_58 < (uint)fVar19);
  }
  local_5c = fVar19;
  fVar19 = 0.0;
  if (local_6c != 0.0) {
    do {
      iVar8 = *(int *)(local_84 + (int)fVar19 * 4);
      if ((*(int *)(DAT_00c71678 + 0x26614) < 2) || (*(int *)(iVar8 + 0x28) != 1)) {
        iVar21 = *(int *)(iVar8 + 0x28);
        if ((iVar21 - 10U < 0x3de) && (((iVar21 != 0x21 && (iVar21 != 0x11)) && (iVar21 != 0x124))))
        {
          if (iVar21 == 0x375) {
            bVar23 = *(int *)(iVar8 + 0x2c) == 10;
          }
          else {
            if ((iVar21 == 0x3c0) || (iVar21 == 0x3c5)) goto LAB_0048f38d;
            bVar23 = iVar21 == 0xf5;
          }
          if (!bVar23) goto LAB_0048f378;
        }
      }
      else {
LAB_0048f378:
        if ((*(char *)(iVar8 + 0x173) == '\0') && (*(int *)(iVar8 + 0x28) != 0x3c3)) {
          local_64 = (float)((int)local_64 + 1);
        }
      }
LAB_0048f38d:
      fVar19 = (float)((int)fVar19 + 1);
      param_1 = local_68;
    } while ((uint)fVar19 < (uint)local_6c);
  }
  if ((*(int *)((int)param_1 + 0x7c) != 0) && (cVar6 = FUN_0040add0("ArmsUp"), cVar6 != '\0')) {
    local_58 = (code *)DAT_00baa454;
    fVar19 = DAT_00baa528;
    if ((*(int *)((int)param_1 + 0xc64) == 0x12) ||
       (fVar19 = DAT_00baa2d0, *(int *)((int)param_1 + 0xc64) == 0x13)) {
      local_58 = (code *)fVar19;
    }
    local_54 = 1.362062e-42;
    FUN_00956780();
    FUN_0092dc30(local_54,0x3f800000,2,0,local_58,0);
  }
  iVar8 = *(int *)((int)param_1 + 0xb64);
  local_58 = free_exref;
  if (iVar8 == 3) {
    ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
    if (ppbVar13 == (byte **)0x0) {
LAB_0048f49e:
      cVar6 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)((int)param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar9 = ppbVar13;
      if (&DAT_0000000f < ppbVar13[5]) {
        ppbVar9 = (byte **)*ppbVar13;
      }
      pbVar16 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar23 = bVar1 < *pbVar16;
        if (bVar1 != *pbVar16) {
LAB_0048f480:
          uVar7 = -(uint)bVar23 | 1;
          goto LAB_0048f485;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar23 = bVar1 < pbVar16[1];
        if (bVar1 != pbVar16[1]) goto LAB_0048f480;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pbVar16 = pbVar16 + 2;
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_0048f485:
      if ((uVar7 != 0) ||
         ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
      goto LAB_0048f49e;
    }
    if (0x96 < *(int *)((int)param_1 + 0x410)) {
      *(undefined4 *)((int)param_1 + 0x410) = 0;
      *(undefined4 *)((int)param_1 + 0xb64) = 0xd;
    }
LAB_004905ca:
    FUN_007e6650(0);
    fVar19 = *(float *)((int)param_1 + 0x36c);
    pcVar22 = local_58;
  }
  else {
    if (iVar8 == 0xd) {
      puVar10 = *(undefined4 **)((int)param_1 + 0x7c);
      if (puVar10 == (undefined4 *)0x0) {
        puVar10 = (undefined4 *)&DAT_00b1a4ec;
      }
      else if (&DAT_0000000f < (undefined *)puVar10[5]) {
        puVar10 = (undefined4 *)*puVar10;
      }
      pcVar17 = "Summon";
      do {
        bVar1 = *(byte *)puVar10;
        bVar23 = bVar1 < (byte)*pcVar17;
        if (bVar1 != *pcVar17) {
LAB_0048f530:
          uVar7 = -(uint)bVar23 | 1;
          goto LAB_0048f535;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)puVar10 + 1);
        bVar23 = bVar1 < ((byte *)pcVar17)[1];
        if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048f530;
        puVar10 = (undefined4 *)((int)puVar10 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_0048f535:
      if (uVar7 != 0) {
        local_54 = 5.843415e-43;
        FUN_00956780();
        FUN_0092dc30(local_54,0x3f800000,2,0,0x3f800000,0);
      }
      ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar13 == (byte **)0x0) {
LAB_0048f5ce:
        cVar6 = FUN_0040a5d0("Summon",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)((int)param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar9 = ppbVar13;
        if (&DAT_0000000f < ppbVar13[5]) {
          ppbVar9 = (byte **)*ppbVar13;
        }
        pcVar17 = "Summon";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar23 = bVar1 < (byte)*pcVar17;
          if (bVar1 != *pcVar17) {
LAB_0048f5b0:
            uVar7 = -(uint)bVar23 | 1;
            goto LAB_0048f5b5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar23 = bVar1 < ((byte *)pcVar17)[1];
          if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048f5b0;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar1 != 0);
        uVar7 = 0;
LAB_0048f5b5:
        if ((uVar7 != 0) ||
           ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
        goto LAB_0048f5ce;
      }
      iVar8 = 1;
      fVar19 = *(float *)((int)param_1 + 900) * DAT_00baa1d4;
      if (*(float *)((int)param_1 + 0x380) <= fVar19 && fVar19 != *(float *)((int)param_1 + 0x380))
      {
        iVar8 = 2;
      }
      if (((int)local_64 < iVar8) || (*(int *)((int)param_1 + 0xbc4) != 0)) {
        if (*(int *)((int)param_1 + 0x7c) != 0) {
          cVar6 = FUN_0040add0("Summon");
          if (cVar6 != '\0') {
            if (*(int *)((int)param_1 + 0xbc4) != 0) {
              *(undefined4 *)((int)param_1 + 0xbc4) = 0;
            }
            iVar8 = FUN_006eef60();
            local_5c = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
            local_5c = local_5c + local_5c;
            fVar19 = local_5c;
            FUN_0041d520();
            local_54 = fVar19;
            fVar19 = local_5c;
            FUN_0041d540();
            local_70 = fVar19 * DAT_00baa97c + *(float *)((int)param_1 + 0x33c);
            local_6c = local_54 * DAT_00baa97c + *(float *)((int)param_1 + 0x340);
            pfVar11 = (float *)FUN_00813520(&local_60,&local_70,0,0,0,0);
            uVar20 = 0xe3;
            local_70 = *pfVar11;
            local_6c = pfVar11[1];
            if (local_78 == 1.401298e-45) {
              uVar20 = 0x115;
            }
            uVar7 = *(uint *)((int)param_1 + 0x16c) & 0x10000000;
            if ((uVar7 == 0) || (iVar8 = FUN_006ac7e0(uVar20,0,uVar7,0), iVar8 == 0)) {
              uVar12 = FUN_006eef60();
              iVar8 = FUN_00428b20(uVar20,0,&local_70,&DAT_00c7b640,param_1,0,uVar12);
              *(undefined4 *)(iVar8 + 0xc7c) = *(undefined4 *)((int)param_1 + 0x20);
              if ((*(uint *)((int)param_1 + 0x16c) & 0x10000000) != 0) {
                *(undefined4 *)(iVar8 + 0x380) = 0x41200000;
                *(undefined4 *)(iVar8 + 900) = 0x41200000;
              }
            }
          }
          goto LAB_0049059d;
        }
      }
      else {
LAB_0049059d:
        if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
        goto LAB_004905ca;
      }
LAB_004905ac:
      *(undefined4 *)((int)param_1 + 0x410) = 0;
      *(undefined4 *)((int)param_1 + 0xbc0) = 0;
      *(undefined4 *)((int)param_1 + 0xb64) = 0x10;
      goto LAB_004905ca;
    }
    if (iVar8 == 0x10) {
      iVar8 = *(int *)((int)param_1 + 0xbc0);
      if (iVar8 == 0) {
        if (*(int *)((int)param_1 + 0x7c) == 0) {
LAB_0048f83d:
          ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
          if (ppbVar13 == (byte **)0x0) {
LAB_0048f891:
            cVar6 = FUN_0040a5d0("FadeOut",1);
            if (cVar6 != '\0') {
              FUN_0040a1b0();
              *(undefined *)((int)param_1 + 0x8c) = 1;
            }
          }
          else {
            ppbVar9 = ppbVar13;
            if (&DAT_0000000f < ppbVar13[5]) {
              ppbVar9 = (byte **)*ppbVar13;
            }
            pcVar17 = "FadeOut";
            do {
              bVar1 = *(byte *)ppbVar9;
              bVar23 = bVar1 < (byte)*pcVar17;
              if (bVar1 != *pcVar17) {
LAB_0048f873:
                uVar7 = -(uint)bVar23 | 1;
                goto LAB_0048f878;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar9 + 1);
              bVar23 = bVar1 < ((byte *)pcVar17)[1];
              if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048f873;
              ppbVar9 = (byte **)((int)ppbVar9 + 2);
              pcVar17 = (char *)((byte *)pcVar17 + 2);
            } while (bVar1 != 0);
            uVar7 = 0;
LAB_0048f878:
            if ((uVar7 != 0) ||
               ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
            goto LAB_0048f891;
          }
          FUN_006d6ba0(0x3cd,0x3f800000,2,0,0x3f800000);
        }
        else {
          ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
          if (*(char *)((int)param_1 + 0x8c) == '\0') {
            if (&DAT_0000000f < ppbVar13[5]) {
              ppbVar13 = (byte **)*ppbVar13;
            }
            pcVar17 = "FadeOut";
            do {
              bVar1 = *(byte *)ppbVar13;
              bVar23 = bVar1 < (byte)*pcVar17;
              if (bVar1 != *pcVar17) {
LAB_0048f830:
                uVar7 = -(uint)bVar23 | 1;
                goto joined_r0x0048f837;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar13 + 1);
              bVar23 = bVar1 < ((byte *)pcVar17)[1];
              if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048f830;
              ppbVar13 = (byte **)((int)ppbVar13 + 2);
              pcVar17 = (char *)((byte *)pcVar17 + 2);
            } while (bVar1 != 0);
            uVar7 = 0;
          }
          else {
            if (&DAT_0000000f < ppbVar13[5]) {
              ppbVar13 = (byte **)*ppbVar13;
            }
            pcVar17 = "FadeOut";
            do {
              bVar1 = *(byte *)ppbVar13;
              bVar23 = bVar1 < (byte)*pcVar17;
              if (bVar1 != *pcVar17) {
LAB_0048f7f0:
                uVar7 = -(uint)bVar23 | 1;
                goto joined_r0x0048f837;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar13 + 1);
              bVar23 = bVar1 < ((byte *)pcVar17)[1];
              if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048f7f0;
              ppbVar13 = (byte **)((int)ppbVar13 + 2);
              pcVar17 = (char *)((byte *)pcVar17 + 2);
            } while (bVar1 != 0);
            uVar7 = 0;
          }
joined_r0x0048f837:
          if (uVar7 != 0) goto LAB_0048f83d;
        }
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
          *(undefined4 *)((int)param_1 + 0x410) = 0;
          *(undefined4 *)((int)param_1 + 0xbc0) = 1;
          *(undefined *)((int)param_1 + 0x3b0) = 1;
          *(undefined4 *)((int)param_1 + 0x188) = 0;
          *(undefined4 *)((int)param_1 + 0xbc4) = 0;
        }
      }
      else {
        if (iVar8 != 1) {
          if (iVar8 != 2) {
            if (iVar8 != 3) goto LAB_004905ca;
            ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
            if (ppbVar13 == (byte **)0x0) {
LAB_0048fd74:
              cVar6 = FUN_0040a5d0("FadeIn",1);
              if (cVar6 != '\0') {
                FUN_0040a1b0();
                *(undefined *)((int)param_1 + 0x8c) = 1;
              }
            }
            else {
              ppbVar9 = ppbVar13;
              if (&DAT_0000000f < ppbVar13[5]) {
                ppbVar9 = (byte **)*ppbVar13;
              }
              pcVar17 = "FadeIn";
              do {
                bVar1 = *(byte *)ppbVar9;
                bVar23 = bVar1 < (byte)*pcVar17;
                if (bVar1 != *pcVar17) {
LAB_0048fd56:
                  uVar7 = -(uint)bVar23 | 1;
                  goto LAB_0048fd5b;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar9 + 1);
                bVar23 = bVar1 < ((byte *)pcVar17)[1];
                if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048fd56;
                ppbVar9 = (byte **)((int)ppbVar9 + 2);
                pcVar17 = (char *)((byte *)pcVar17 + 2);
              } while (bVar1 != 0);
              uVar7 = 0;
LAB_0048fd5b:
              if ((uVar7 != 0) ||
                 ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
              goto LAB_0048fd74;
            }
            pcVar22 = local_58;
            if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
              *(undefined4 *)((int)param_1 + 0x410) = 0;
              if ((*(int *)((int)param_1 + 0xbc4) == 0) || (3 < (uint)local_6c)) {
                if (local_78 == 1.401298e-45) {
                  uVar20 = 3;
                  if (local_5c == 0.0) {
                    uVar20 = 0xe;
                  }
                  *(undefined4 *)((int)param_1 + 0xb64) = uVar20;
                  *(undefined4 *)((int)param_1 + 0xbc0) = 0;
                }
                else {
                  *(undefined4 *)((int)param_1 + 0xb64) = 8;
                  local_5c = 5.857428e-43;
                  FUN_00956780();
                  FUN_0092dc30(local_5c,0x3f800000,2,0,0x3f800000,0);
                  *(undefined4 *)((int)param_1 + 0xbc0) = 0;
                  iVar8 = FUN_006be840();
                  fVar19 = *(float *)(iVar8 + 0x340) - *(float *)((int)param_1 + 0x340);
                  FUN_00499d60();
                  local_5c = fVar19;
                  iVar8 = FUN_006eef60();
                  local_6c = -32.0;
                  iVar21 = 0;
                  local_70 = 0.0;
                  *(float *)((int)param_1 + 0xbb0) =
                       ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baa950 - DAT_00baa8d0) +
                       local_5c * DAT_00baa948 + DAT_00baaa78;
                  do {
                    local_40 = ZEXT816(0);
                    local_30 = 0;
                    local_2c = 0;
                    local_50 = _DAT_00babe20;
                    uStack_4c = _UNK_00babe24;
                    uStack_48 = _UNK_00babe28;
                    uStack_44 = _UNK_00babe2c;
                    local_28 = 0;
                    fVar19 = ((float)iVar21 * DAT_00baaa00 + *(float *)((int)param_1 + 0xbb0)) *
                             DAT_00baa088;
                    local_5c = fVar19;
                    FUN_0041d520();
                    local_54 = fVar19;
                    fVar19 = local_5c;
                    FUN_0041d540();
                    local_7c = fVar19;
                    local_78 = local_54;
                    FUN_0060b890(&local_7c,0x19,&local_50,0x40800000);
                    iVar21 = iVar21 + 1;
                    pcVar22 = local_58;
                  } while (iVar21 < 4);
                }
              }
              else {
                *(undefined4 *)((int)param_1 + 0xb64) = 0xd;
                *(undefined4 *)((int)param_1 + 0xbc0) = 0;
              }
            }
            goto LAB_004903be;
          }
          ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
          if (ppbVar13 == (byte **)0x0) {
LAB_0048fa7e:
            cVar6 = FUN_0040a5d0("Faded",1);
            if (cVar6 != '\0') {
              FUN_0040a1b0();
              *(undefined *)((int)param_1 + 0x8c) = 1;
            }
          }
          else {
            ppbVar9 = ppbVar13;
            if (&DAT_0000000f < ppbVar13[5]) {
              ppbVar9 = (byte **)*ppbVar13;
            }
            pcVar17 = "Faded";
            do {
              bVar1 = *(byte *)ppbVar9;
              bVar23 = bVar1 < (byte)*pcVar17;
              if (bVar1 != *pcVar17) {
LAB_0048fa60:
                uVar7 = -(uint)bVar23 | 1;
                goto LAB_0048fa65;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar9 + 1);
              bVar23 = bVar1 < ((byte *)pcVar17)[1];
              if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048fa60;
              ppbVar9 = (byte **)((int)ppbVar9 + 2);
              pcVar17 = (char *)((byte *)pcVar17 + 2);
            } while (bVar1 != 0);
            uVar7 = 0;
LAB_0048fa65:
            if ((uVar7 != 0) ||
               ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
            goto LAB_0048fa7e;
          }
          iVar8 = *(int *)(DAT_00c71678 + 0x18300);
          FUN_00812d00(&local_60);
          iVar21 = *(int *)(iVar8 + 4);
          local_68 = local_5c;
          if ((iVar21 != 0) && (iVar21 = *(int *)(iVar21 + 0x10), iVar21 != 0)) {
            iVar21 = *(int *)(iVar21 + 0x48);
            if (iVar21 == 0xb) {
              uVar7 = 0x84;
            }
            else if (iVar21 == 0xc) {
              uVar7 = 0x77;
            }
            else if (iVar21 == 9) {
              uVar7 = 0x148;
            }
            else {
              if (iVar21 != 10) goto LAB_0048fb2b;
              uVar7 = 0x13b;
            }
            lVar3 = (longlong)*(int *)(iVar8 + 0xc);
            local_60 = (float)(int)((longlong)(ulonglong)uVar7 % lVar3) * DAT_00baa904 +
                       DAT_00baa904;
            local_68 = (float)(int)((longlong)(ulonglong)uVar7 / lVar3) * DAT_00baa904 +
                       DAT_00baaa00;
          }
LAB_0048fb2b:
          local_54 = local_60 - *(float *)((int)param_1 + 0x33c);
          local_6c = local_68 - *(float *)((int)param_1 + 0x340);
          fVar15 = local_54 * local_54 + local_6c * local_6c;
          local_64 = local_60;
          FUN_00435a50();
          fVar19 = local_6c;
          if (0.0 < fVar15) {
            local_54 = local_54 * (DAT_00baa454 / fVar15);
            fVar19 = local_6c * (DAT_00baa454 / fVar15);
          }
          fVar15 = *(float *)((int)param_1 + 0x36c);
          local_54 = local_54 * DAT_00baa4b0;
          if (NAN(fVar15) == (fVar15 == 0.0)) {
            *(float *)((int)param_1 + 0x364) =
                 (*(float *)((int)param_1 + 0x39c) * fVar19 * DAT_00baa4b0) / fVar15 +
                 *(float *)((int)param_1 + 0x364);
            *(float *)((int)param_1 + 0x360) =
                 (*(float *)((int)param_1 + 0x39c) * local_54) / fVar15 +
                 *(float *)((int)param_1 + 0x360);
          }
          local_5c = *(float *)((int)param_1 + 0x360);
          local_54 = *(float *)((int)param_1 + 0x364);
          fVar19 = local_5c * local_5c + local_54 * local_54;
          FUN_00435a50();
          if ((DAT_00baa70c < fVar19) && (0.0 < fVar19)) {
            fVar19 = DAT_00baa70c / fVar19;
            *(float *)((int)param_1 + 0x360) = local_5c * fVar19;
            *(float *)((int)param_1 + 0x364) = local_54 * fVar19;
          }
          if (*(int *)((int)param_1 + 0x410) < 0x79) {
            fVar19 = *(float *)((int)param_1 + 0x340) - local_68;
            fVar15 = *(float *)((int)param_1 + 0x33c) - local_64;
            fVar19 = fVar19 * fVar19 + fVar15 * fVar15;
            FUN_00435a50();
            if (DAT_00baa910 <= fVar19) goto LAB_004905ca;
          }
          uVar7 = *(uint *)((int)param_1 + 0x16c) & 0x10000000;
          if (uVar7 != 0) {
            uVar20 = 0xe3;
            if (local_78 == 1.401298e-45) {
              uVar20 = 0x115;
            }
            iVar8 = FUN_006ac7e0(uVar20,0,uVar7,0);
            if (iVar8 != 0) goto LAB_004905ca;
          }
          *(undefined4 *)((int)param_1 + 0x410) = 0;
          *(undefined4 *)((int)param_1 + 0xbc0) = 3;
          if ((*(uint *)((int)param_1 + 0x16c) & 0x10000000) != 0) {
            *(undefined4 *)((int)param_1 + 0xbc4) = 0;
          }
          *(undefined *)((int)param_1 + 0x3b0) = 0;
          *(undefined4 *)((int)param_1 + 0x188) = 4;
          goto LAB_004905ca;
        }
        ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
        if (ppbVar13 == (byte **)0x0) {
LAB_0048f973:
          cVar6 = FUN_0040a5d0("Faded",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)((int)param_1 + 0x8c) = 1;
          }
        }
        else {
          ppbVar9 = ppbVar13;
          if (&DAT_0000000f < ppbVar13[5]) {
            ppbVar9 = (byte **)*ppbVar13;
          }
          pcVar17 = "Faded";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar23 = bVar1 < (byte)*pcVar17;
            if (bVar1 != *pcVar17) {
LAB_0048f955:
              uVar7 = -(uint)bVar23 | 1;
              goto LAB_0048f95a;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar23 = bVar1 < ((byte *)pcVar17)[1];
            if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048f955;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar17 = (char *)((byte *)pcVar17 + 2);
          } while (bVar1 != 0);
          uVar7 = 0;
LAB_0048f95a:
          if ((uVar7 != 0) ||
             ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
          goto LAB_0048f973;
        }
        iVar8 = FUN_00703950((float *)((int)param_1 + 0x33c));
        fVar19 = *(float *)((int)param_1 + 0x340) - *(float *)(iVar8 + 0x340);
        fVar15 = *(float *)((int)param_1 + 0x33c) - *(float *)(iVar8 + 0x33c);
        fVar19 = fVar19 * fVar19 + fVar15 * fVar15;
        FUN_00435a50();
        uVar7 = (uint)(fVar19 < *(float *)((int)local_68 + 0x370) + *(float *)(iVar8 + 0x370));
        *(uint *)((int)local_68 + 0xbc4) = uVar7;
        param_1 = local_68;
        if ((local_64 == 0.0) || (uVar7 != 0)) {
          *(undefined4 *)((int)local_68 + 0x410) = 0;
          *(undefined4 *)((int)local_68 + 0xbc0) = 2;
        }
      }
      goto LAB_004905ca;
    }
    if (iVar8 != 8) {
      if (iVar8 != 0xe) goto LAB_004905ca;
      puVar10 = *(undefined4 **)((int)param_1 + 0x7c);
      if (puVar10 == (undefined4 *)0x0) {
        puVar10 = (undefined4 *)&DAT_00b1a4ec;
      }
      else if (&DAT_0000000f < (undefined *)puVar10[5]) {
        puVar10 = (undefined4 *)*puVar10;
      }
      pcVar17 = "Summon";
      do {
        bVar1 = *(byte *)puVar10;
        bVar23 = bVar1 < (byte)*pcVar17;
        if (bVar1 != *pcVar17) {
LAB_00490417:
          uVar7 = -(uint)bVar23 | 1;
          goto LAB_0049041c;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)puVar10 + 1);
        bVar23 = bVar1 < ((byte *)pcVar17)[1];
        if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_00490417;
        puVar10 = (undefined4 *)((int)puVar10 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_0049041c:
      if (uVar7 != 0) {
        local_5c = 5.843415e-43;
        FUN_00956780();
        FUN_0092dc30(local_5c,0x3f800000,2,0,0x3f800000,0);
      }
      ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar13 == (byte **)0x0) {
LAB_004904b5:
        cVar6 = FUN_0040a5d0("Summon",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)((int)param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar9 = ppbVar13;
        if (&DAT_0000000f < ppbVar13[5]) {
          ppbVar9 = (byte **)*ppbVar13;
        }
        pcVar17 = "Summon";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar23 = bVar1 < (byte)*pcVar17;
          if (bVar1 != *pcVar17) {
LAB_00490497:
            uVar7 = -(uint)bVar23 | 1;
            goto LAB_0049049c;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar23 = bVar1 < ((byte *)pcVar17)[1];
          if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_00490497;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar1 != 0);
        uVar7 = 0;
LAB_0049049c:
        if ((uVar7 != 0) ||
           ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
        goto LAB_004904b5;
      }
      if (*(int *)((int)param_1 + 0x7c) == 0) goto LAB_004905ac;
      cVar6 = FUN_0040add0("Summon");
      if (cVar6 != '\0') {
        iVar8 = 2;
        do {
          iVar21 = FUN_006eef60();
          local_5c = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
          local_5c = local_5c + local_5c;
          fVar19 = local_5c;
          FUN_0041d520();
          local_54 = fVar19;
          fVar19 = local_5c;
          FUN_0041d540();
          local_7c = fVar19 * DAT_00baa97c + *(float *)((int)param_1 + 0x33c);
          local_78 = local_54 * DAT_00baa97c + *(float *)((int)param_1 + 0x340);
          uVar20 = FUN_006eef60();
          FUN_00428b20(0xd4,1,&local_7c,&DAT_00c7b640,param_1,0,uVar20);
          iVar8 = iVar8 + -1;
        } while (iVar8 != 0);
      }
      goto LAB_0049059d;
    }
    iVar8 = *(int *)((int)param_1 + 0xbc0);
    if (iVar8 == 0) {
      ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar13 == (byte **)0x0) {
LAB_0048fffe:
        cVar6 = FUN_0040a5d0("BlastStart",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)((int)param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar9 = ppbVar13;
        if (&DAT_0000000f < ppbVar13[5]) {
          ppbVar9 = (byte **)*ppbVar13;
        }
        pcVar17 = "BlastStart";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar23 = bVar1 < (byte)*pcVar17;
          if (bVar1 != *pcVar17) {
LAB_0048ffe0:
            uVar7 = -(uint)bVar23 | 1;
            goto LAB_0048ffe5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar23 = bVar1 < ((byte *)pcVar17)[1];
          if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0048ffe0;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar1 != 0);
        uVar7 = 0;
LAB_0048ffe5:
        if ((uVar7 != 0) ||
           ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
        goto LAB_0048fffe;
      }
      pcVar22 = local_58;
      if ((*(int *)((int)param_1 + 0x7c) != 0) &&
         (cVar6 = FUN_0040add0("Blast"), pcVar22 = local_58, cVar6 != '\0')) {
        uVar7 = FUN_006eef60();
        local_5c = (float)(uVar7 % 0x1e + 0xf);
        uVar7 = FUN_006eef60();
        local_54 = DAT_00baad74;
        if ((uVar7 & 1) != 0) {
          local_54 = DAT_00baa630;
        }
        local_54 = ((float)((double)(int)local_6c +
                           (double)(&DAT_00bacb00)[-((int)local_6c >> 0x1f)]) * DAT_00baa1d4 +
                   DAT_00baa454) * local_54;
        AI_0041af60(local_b4,7,0xffffffff,0xffffffff,0,1);
        uVar7 = 0;
        local_14 = CONCAT31(local_14._1_3_,3);
        if (local_a8 != 0) {
          do {
            iVar8 = *(int *)(local_b0 + uVar7 * 4);
            if ((((*(char *)(iVar8 + 0x4c0) != '\0') &&
                 (fVar19 = *(float *)(iVar8 + 0x4cc), NAN(fVar19) == (fVar19 == 0.0))) &&
                (fVar15 = *(float *)(iVar8 + 0x3bc), fVar15 != 0.0)) &&
               ((((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)((int)fVar15 + 0x28) == 1)) ||
                 (*(int *)((int)fVar15 + 0x28) - 10U < 0x3de)) && (fVar15 != param_1)))) {
              local_54 = fVar19;
              uVar7 = FUN_006eef60();
              local_5c = (float)(uVar7 % 10 + 5);
              break;
            }
            uVar7 = uVar7 + 1;
          } while (uVar7 < local_a8);
        }
        iVar8 = 0;
        local_7c = 0.0;
        local_78 = 0.0;
        do {
          local_70 = *(float *)((int)param_1 + 0x33c) + 0.0;
          local_6c = *(float *)((int)param_1 + 0x340) - DAT_00baa8d0;
          piVar14 = (int *)FUN_0096f310(1,&local_70,
                                        (float)iVar8 * DAT_00baaa00 +
                                        *(float *)((int)param_1 + 0xbb0),0x78,&local_7c,param_1,0);
          piVar14[0x131] = (int)local_5c;
          *(undefined *)(piVar14 + 0x130) = 1;
          piVar14[0x132] = 0x44e10000;
          piVar14[0x133] = (int)local_54;
          (**(code **)(*piVar14 + 0xc))();
          pcVar22 = local_58;
          iVar8 = iVar8 + 1;
        } while (iVar8 < 4);
        if (local_b4[0] == '\0') {
          puVar18 = (uint *)(DAT_00c7de78 + 0x30);
          if (DAT_00c7de78 == 0) {
            puVar18 = &DAT_00c7f618;
          }
          if (local_b0 != 0) {
            uVar2 = *(uint *)(local_b0 + -4);
            uVar7 = *puVar18;
            *puVar18 = *puVar18 - uVar2;
            puVar18[1] = puVar18[1] - (uint)(uVar7 < uVar2);
            (*local_58)((uint *)(local_b0 + -4));
          }
        }
      }
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        *(undefined4 *)((int)param_1 + 0x410) = 0;
        *(undefined4 *)((int)param_1 + 0xbc0) = 1;
      }
    }
    else if (iVar8 == 1) {
      *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3e0;
      ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar13 == (byte **)0x0) {
LAB_004902cf:
        cVar6 = FUN_0040a5d0("Blasting",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)((int)param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar9 = ppbVar13;
        if (&DAT_0000000f < ppbVar13[5]) {
          ppbVar9 = (byte **)*ppbVar13;
        }
        pcVar17 = "Blasting";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar23 = bVar1 < (byte)*pcVar17;
          if (bVar1 != *pcVar17) {
LAB_004902b1:
            uVar7 = -(uint)bVar23 | 1;
            goto LAB_004902b6;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar23 = bVar1 < ((byte *)pcVar17)[1];
          if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_004902b1;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar1 != 0);
        uVar7 = 0;
LAB_004902b6:
        if ((uVar7 != 0) ||
           ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
        goto LAB_004902cf;
      }
      pcVar22 = local_58;
      if (0x78 < *(int *)((int)param_1 + 0x410)) {
        *(undefined4 *)((int)param_1 + 0x410) = 0;
        *(undefined4 *)((int)param_1 + 0xbc0) = 2;
      }
    }
    else {
      if (iVar8 != 2) goto LAB_004905ca;
      ppbVar13 = *(byte ***)((int)param_1 + 0x7c);
      if (ppbVar13 == (byte **)0x0) {
LAB_00490370:
        cVar6 = FUN_0040a5d0("BlastEnd",1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)((int)param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar9 = ppbVar13;
        if (&DAT_0000000f < ppbVar13[5]) {
          ppbVar9 = (byte **)*ppbVar13;
        }
        pcVar17 = "BlastEnd";
        do {
          bVar1 = *(byte *)ppbVar9;
          bVar23 = bVar1 < (byte)*pcVar17;
          if (bVar1 != *pcVar17) {
LAB_00490352:
            uVar7 = -(uint)bVar23 | 1;
            goto LAB_00490357;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar9 + 1);
          bVar23 = bVar1 < ((byte *)pcVar17)[1];
          if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_00490352;
          ppbVar9 = (byte **)((int)ppbVar9 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar1 != 0);
        uVar7 = 0;
LAB_00490357:
        if ((uVar7 != 0) ||
           ((*(byte *)(ppbVar13 + 0xd) != 0 && (*(char *)((int)param_1 + 0x8c) == '\0'))))
        goto LAB_00490370;
      }
      pcVar22 = local_58;
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        *(undefined4 *)((int)param_1 + 0x410) = 0;
        *(undefined4 *)((int)param_1 + 0xbc0) = 0;
        *(undefined4 *)((int)param_1 + 0xb64) = 3;
      }
    }
LAB_004903be:
    fVar19 = *(float *)((int)param_1 + 0x36c) * DAT_00baa354;
  }
  *(float *)((int)param_1 + 0x36c) = fVar19 * DAT_00baa3e0;
  if (local_a4[0] == '\0') {
    puVar18 = (uint *)(DAT_00c7de78 + 0x30);
    if (DAT_00c7de78 == 0) {
      puVar18 = &DAT_00c7f618;
    }
    if (local_80 != 0) {
      uVar2 = *(uint *)(local_80 + -4);
      uVar7 = *puVar18;
      *puVar18 = *puVar18 - uVar2;
      puVar18[1] = puVar18[1] - (uint)(uVar7 < uVar2);
      (*pcVar22)((uint *)(local_80 + -4));
    }
  }
  if (local_71 == '\0') {
    puVar18 = (uint *)(DAT_00c7de78 + 0x30);
    if (DAT_00c7de78 == 0) {
      puVar18 = &DAT_00c7f618;
    }
    if (local_84 != 0) {
      uVar2 = *(uint *)(local_84 + -4);
      uVar7 = *puVar18;
      *puVar18 = *puVar18 - uVar2;
      puVar18[1] = puVar18[1] - (uint)(uVar7 < uVar2);
      (*pcVar22)((uint *)(local_84 + -4));
    }
  }
LAB_00490653:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

