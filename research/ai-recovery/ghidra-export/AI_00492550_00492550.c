/* Local J460 decompiler output.
 * VA: 0x00492550
 * Entry: 00492550
 * Dispatcher: 0x006c2990
 * Types: 291
 * Identities: 291.0.0,291.1.0,291.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00493200; instructions=823
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=291; identities=291.0.0,291.1.0,291.2.0;
   dispatcher=0x006c2990; end=0x00493200; instructions=823 */

void __fastcall AI_00492550(int *param_1)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  byte **ppbVar5;
  undefined4 uVar6;
  int iVar7;
  float *pfVar8;
  int *piVar9;
  byte **ppbVar10;
  undefined4 *puVar11;
  float *pfVar12;
  char *pcVar13;
  byte *pbVar14;
  int iVar15;
  bool bVar16;
  float fVar17;
  float fVar18;
  float local_30;
  float local_2c;
  float local_28;
  int *local_24;
  float local_20 [2];
  float local_18;
  int local_14;
  float local_10;
  float local_c;
  
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 2;
    param_1[0x62] = 0;
    param_1[0x61] = 3;
    param_1[0xd7] = 0;
    param_1[0xd5] = 0xc1c;
    local_c = 0.5;
    local_10 = 1.0;
    FUN_006ac2a0(param_1[0xdc],0x3f800000,0x3f000000,*(undefined4 *)(param_1[0xcc] + 0x48));
    fVar17 = (float)param_1[0xdc] * DAT_00baa2d0;
    param_1[0x5a] = param_1[0x5a] | 0x4000011;
    param_1[0x5b] = param_1[0x5b];
    FUN_00812f50(&local_10,param_1 + 0xcf,fVar17,param_1[0xdc],fVar17);
    param_1[0xcf] = (int)local_10;
    param_1[0xd0] = (int)local_c;
    param_1[0x2ec] = 0x3f800000;
    FUN_006c04b0(1);
  }
  iVar7 = *(int *)(DAT_00c71678 + 0x18300);
  iVar15 = (int)(((float)param_1[0xcf] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  if (((((-1 < iVar15) && (iVar15 < *(int *)(iVar7 + 0xc))) &&
       (iVar3 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0),
       -1 < iVar3)) &&
      ((iVar3 < *(int *)(iVar7 + 0x10) &&
       (uVar4 = iVar3 * *(int *)(iVar7 + 0xc) + iVar15, uVar4 < 0x1c0)))) &&
     (*(int *)(iVar7 + 0x76c + uVar4 * 4) < 0x3b7)) {
    *(undefined4 *)(iVar7 + 0x76c + uVar4 * 4) = 900;
  }
  if (param_1[0x2d9] == 2) {
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 == (byte **)0x0) {
LAB_00492742:
      cVar2 = FUN_0040a5d0("Appear",1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar5 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar5 = (byte **)*ppbVar10;
      }
      pcVar13 = "Appear";
      do {
        bVar1 = *(byte *)ppbVar5;
        bVar16 = bVar1 < (byte)*pcVar13;
        if (bVar1 != *pcVar13) {
LAB_00492724:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_00492729;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar5 + 1);
        bVar16 = bVar1 < ((byte *)pcVar13)[1];
        if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00492724;
        ppbVar5 = (byte **)((int)ppbVar5 + 2);
        pcVar13 = (char *)((byte *)pcVar13 + 2);
      } while (bVar1 != 0);
      uVar4 = 0;
LAB_00492729:
      if ((uVar4 != 0) || ((*(byte *)(ppbVar10 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00492742;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x62] = 3;
    }
  }
  if (param_1[0x2d9] == 2) {
LAB_004928f2:
    iVar7 = param_1[0xb];
    if ((((iVar7 != 3) && (param_1[0x2d9] == 3)) && ((param_1[0x5a] & 0x20000000U) == 0)) &&
       (local_2c = 0.0,
       *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0)) {
      do {
        iVar7 = FUN_00417870(local_2c);
        fVar17 = *(float *)(iVar7 + 0x33c) / (float)param_1[0xdd] -
                 (float)param_1[0xcf] / (float)param_1[0xdd];
        fVar18 = *(float *)(iVar7 + 0x340) / (float)param_1[0xde] -
                 (float)param_1[0xd0] / (float)param_1[0xde];
        if ((((fVar18 * fVar18 + fVar17 * fVar17 < (float)param_1[0xdc] * (float)param_1[0xdc]) &&
             (iVar15 = *(int *)(iVar7 + 0x184), iVar15 != 0)) &&
            ((iVar15 != 3 && ((iVar15 != 1 && (iVar15 != 2)))))) && (*(int *)(iVar7 + 0x3fc) == 0))
        {
          cVar2 = FUN_009305f0(0x271);
          if (cVar2 == '\0') {
            FUN_007abe20("FallIn");
            *(undefined *)(iVar7 + 0x410) = 0;
            *(undefined4 *)(iVar7 + 0x188) = 0;
            *(undefined4 *)(iVar7 + 0x3fc) = 1;
            *(undefined4 *)(iVar7 + 0x400) = 0;
          }
          param_1[0x2d9] = 0x10;
          if (param_1[0xef] != 0) {
            local_24 = param_1 + 0xef;
            FUN_004cf210(&local_24);
          }
          param_1[0xef] = iVar7;
          FUN_004cdcf0(param_1 + 0xef);
          param_1[0x104] = 0;
        }
        local_2c = (float)((int)local_2c + 1);
      } while ((uint)local_2c <
               (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
      iVar7 = param_1[0xb];
    }
    if (iVar7 == 1) {
      local_24 = (int *)0x0;
      local_10 = *(float *)(DAT_00c71678 + 0x18300);
      if (*(int *)((int)local_10 + 0x1264) != 0) {
        do {
          iVar7 = *(int *)(*(int *)((int)local_10 + 0x125c) + (int)local_24 * 4);
          iVar15 = *(int *)(iVar7 + 0x28);
          if (((iVar15 == 1) || (iVar15 == 2)) || (iVar15 == 9)) {
            local_30 = *(float *)(iVar7 + 0x33c);
            local_2c = *(float *)(iVar7 + 0x340);
            if ((iVar15 == 1) && (iVar15 = *(int *)(iVar7 + 0x1e68), iVar15 != 0)) {
              fVar18 = local_30 - *(float *)(iVar15 + 0x33c);
              fVar17 = local_2c - *(float *)(iVar15 + 0x340);
              if (fVar17 * fVar17 + fVar18 * fVar18 < DAT_00baabf8) {
                local_30 = (local_30 + *(float *)(iVar15 + 0x33c)) * DAT_00baa2d0;
                local_2c = (local_2c + *(float *)(iVar15 + 0x340)) * DAT_00baa2d0;
              }
            }
            local_20[0] = (float)param_1[0xcf];
            local_18 = (float)param_1[0xd0];
            local_30 = local_20[0] - local_30;
            local_2c = local_18 - local_2c;
            fVar17 = local_2c * local_2c + local_30 * local_30;
            FUN_00435a50();
            if (0.0 < fVar17) {
              local_30 = local_30 * (DAT_00baa454 / fVar17);
              local_2c = local_2c * (DAT_00baa454 / fVar17);
            }
            local_28 = DAT_00baa3e0;
            if (*(int *)(iVar7 + 0x28) == 1) {
              local_28 = DAT_00baa304;
            }
            local_28 = local_28 * (float)param_1[0x2ec];
            fVar18 = local_20[0] - *(float *)(iVar7 + 0x33c);
            fVar17 = local_18 - *(float *)(iVar7 + 0x340);
            fVar18 = fVar17 * fVar17 + fVar18 * fVar18;
            FUN_00435a50();
            fVar17 = *(float *)(iVar7 + 0x36c);
            local_20[0] = 0.0;
            local_18 = ((DAT_00baab08 - fVar18) * local_28) / DAT_00baab08;
            pfVar12 = &local_18;
            if (local_18 <= 0.0) {
              pfVar12 = local_20;
            }
            pfVar8 = &local_28;
            if (*pfVar12 <= local_28 && local_28 != *pfVar12) {
              pfVar8 = pfVar12;
            }
            fVar18 = *pfVar8;
            if (NAN(fVar17) == (fVar17 == 0.0)) {
              *(float *)(iVar7 + 0x360) =
                   (fVar18 * local_30 * *(float *)(iVar7 + 0x39c)) / fVar17 +
                   *(float *)(iVar7 + 0x360);
              *(float *)(iVar7 + 0x364) =
                   (*(float *)(iVar7 + 0x39c) * fVar18 * local_2c) / fVar17 +
                   *(float *)(iVar7 + 0x364);
            }
          }
          local_24 = (int *)((int)local_24 + 1);
        } while (local_24 < *(int **)((int)local_10 + 0x1264));
      }
    }
    if ((param_1[0x2d9] == 2) || (param_1[0x2d9] == 3)) {
      if (*(char *)(param_1 + 100) != '\0') {
        param_1[0x2d9] = 5;
      }
      iVar7 = param_1[0x104];
      if (iVar7 < 1) {
        if ((iVar7 == 0) &&
           (iVar7 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                                 *(undefined4 *)(DAT_00c71678 + 0x1830c)),
           (*(uint *)(iVar7 + 0x44) >> 1 & 1) != 0)) {
          param_1[0x104] = 5;
        }
      }
      else {
        param_1[0x104] = iVar7 + -1;
        if (iVar7 + -1 == 0) {
          param_1[0x2d9] = 5;
        }
      }
    }
  }
  else if (param_1[0x2d9] == 3) {
    iVar7 = param_1[0xb];
    if ((iVar7 == 0) || (iVar7 == 2)) {
      ppbVar10 = (byte **)param_1[0x1f];
      if (ppbVar10 != (byte **)0x0) {
        ppbVar5 = ppbVar10;
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar5 = (byte **)*ppbVar10;
        }
        pbVar14 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppbVar5;
          bVar16 = bVar1 < *pbVar14;
          if (bVar1 != *pbVar14) {
LAB_004928b6:
            uVar4 = -(uint)bVar16 | 1;
            goto LAB_004928bb;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar5 + 1);
          bVar16 = bVar1 < pbVar14[1];
          if (bVar1 != pbVar14[1]) goto LAB_004928b6;
          ppbVar5 = (byte **)((int)ppbVar5 + 2);
          pbVar14 = pbVar14 + 2;
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_004928bb:
        if ((uVar4 == 0) &&
           ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_004928f2;
      }
      pcVar13 = "Idle";
    }
    else {
      if (iVar7 != 1) {
        if (iVar7 == 3) {
          FUN_0040a380(&DAT_00b1bc54,0);
          uVar6 = FUN_006eef60();
          FUN_006fe410(0x129,0,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6,0);
          param_1[0xb] = 1;
          param_1[0x2ec] = 0x3f0ccccd;
        }
        goto LAB_004928f2;
      }
      ppbVar10 = (byte **)param_1[0x1f];
      if (ppbVar10 != (byte **)0x0) {
        ppbVar5 = ppbVar10;
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar5 = (byte **)*ppbVar10;
        }
        pcVar13 = "Suction";
        do {
          bVar1 = *(byte *)ppbVar5;
          bVar16 = bVar1 < (byte)*pcVar13;
          if (bVar1 != *pcVar13) {
LAB_004927f0:
            uVar4 = -(uint)bVar16 | 1;
            goto LAB_004927f5;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar5 + 1);
          bVar16 = bVar1 < ((byte *)pcVar13)[1];
          if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_004927f0;
          ppbVar5 = (byte **)((int)ppbVar5 + 2);
          pcVar13 = (char *)((byte *)pcVar13 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_004927f5:
        if (uVar4 == 0) {
          if ((*(byte *)(ppbVar10 + 0xd) == 0) || (*(char *)(param_1 + 0x23) != '\0'))
          goto LAB_004928f2;
          pcVar13 = "Suction";
          goto LAB_004928db;
        }
      }
      pcVar13 = "Suction";
    }
LAB_004928db:
    cVar2 = FUN_0040a5d0(pcVar13,1);
    if (cVar2 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    goto LAB_004928f2;
  }
  if (param_1[0x2d9] == 0x10) {
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    piVar9 = (int *)__RTDynamicCast(param_1[0xef],0,
                                    &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                    &IsaacRepentancePlus::Entity_Player::RTTI_Type_Descriptor,0);
    local_24 = piVar9;
    if ((param_1[0xb] == 2) && (param_1[0x1f] != 0)) {
      if (*(char *)(param_1 + 0x23) == '\0') {
LAB_00492ec1:
        puVar11 = (undefined4 *)param_1[0x1f];
        if (puVar11 == (undefined4 *)0x0) {
          puVar11 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar11[5]) {
          puVar11 = (undefined4 *)*puVar11;
        }
        pcVar13 = "Disappear";
        do {
          bVar1 = *(byte *)puVar11;
          bVar16 = bVar1 < (byte)*pcVar13;
          if (bVar1 != *pcVar13) {
LAB_00492f00:
            uVar4 = -(uint)bVar16 | 1;
            goto LAB_00492f05;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)puVar11 + 1);
          bVar16 = bVar1 < ((byte *)pcVar13)[1];
          if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00492f00;
          puVar11 = (undefined4 *)((int)puVar11 + 2);
          pcVar13 = (char *)((byte *)pcVar13 + 2);
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00492f05:
        if (uVar4 != 0) goto LAB_0049307e;
        if (piVar9 == (int *)0x0) goto LAB_00493149;
        if (*(char *)((int)piVar9 + 0x173) == '\0') {
          FUN_0081e9d0(&local_10,0);
          pfVar12 = (float *)FUN_00813520(local_20,&local_10,0,1,0,0);
          local_10 = *pfVar12;
          local_c = pfVar12[1];
          fVar17 = (float)param_1[0xdc] * DAT_00baa2d0;
          FUN_00812f50(&local_18,&local_10,fVar17,param_1[0xdc],fVar17);
          local_10 = local_18;
          local_c = (float)local_14;
          param_1[0xcf] = (int)local_18;
          param_1[0xd0] = local_14;
          FUN_007cd950(&local_10,0,0);
          param_1[0xd8] = DAT_00c7b640;
          param_1[0xd9] = DAT_00c7b644;
          ppbVar10 = (byte **)param_1[0x1f];
          if (ppbVar10 != (byte **)0x0) {
            if (&DAT_0000000f < ppbVar10[5]) {
              ppbVar10 = (byte **)*ppbVar10;
            }
            pcVar13 = "Appear";
            do {
              bVar1 = *(byte *)ppbVar10;
              bVar16 = bVar1 < (byte)*pcVar13;
              if (bVar1 != *pcVar13) {
LAB_00493048:
                uVar4 = -(uint)bVar16 | 1;
                goto LAB_0049304d;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar10 + 1);
              bVar16 = bVar1 < ((byte *)pcVar13)[1];
              if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00493048;
              ppbVar10 = (byte **)((int)ppbVar10 + 2);
              pcVar13 = (char *)((byte *)pcVar13 + 2);
            } while (bVar1 != 0);
            uVar4 = 0;
LAB_0049304d:
            if (uVar4 == 0) {
              if ((*(char *)(param_1[0x1f] + 0x34) != '\0') && (*(char *)(param_1 + 0x23) == '\0'))
              {
                pcVar13 = "Appear";
                goto LAB_00492e8f;
              }
              goto LAB_00493086;
            }
          }
          pcVar13 = "Appear";
          goto LAB_00492e8f;
        }
      }
      else {
        ppbVar10 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar10 = (byte **)*ppbVar10;
        }
        pbVar14 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppbVar10;
          bVar16 = bVar1 < *pbVar14;
          if (bVar1 != *pbVar14) {
LAB_00492e06:
            uVar4 = -(uint)bVar16 | 1;
            goto LAB_00492e0b;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar10 + 1);
          bVar16 = bVar1 < pbVar14[1];
          if (bVar1 != pbVar14[1]) goto LAB_00492e06;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pbVar14 = pbVar14 + 2;
        } while (bVar1 != 0);
        uVar4 = 0;
LAB_00492e0b:
        if (((uVar4 != 0) || (piVar9 == (int *)0x0)) || (piVar9[0xff] != 2)) {
          if (*(char *)(param_1 + 0x23) != '\0') goto LAB_0049307e;
          goto LAB_00492ec1;
        }
        ppbVar10 = (byte **)param_1[0x1f];
        if (ppbVar10 != (byte **)0x0) {
          if (&DAT_0000000f < ppbVar10[5]) {
            ppbVar10 = (byte **)*ppbVar10;
          }
          pcVar13 = "Disappear";
          do {
            bVar1 = *(byte *)ppbVar10;
            bVar16 = bVar1 < (byte)*pcVar13;
            if (bVar1 != *pcVar13) {
LAB_00492e60:
              uVar4 = -(uint)bVar16 | 1;
              goto LAB_00492e65;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar10 + 1);
            bVar16 = bVar1 < ((byte *)pcVar13)[1];
            if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00492e60;
            ppbVar10 = (byte **)((int)ppbVar10 + 2);
            pcVar13 = (char *)((byte *)pcVar13 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_00492e65:
          if ((uVar4 != 0) ||
             ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_00492e88;
          goto LAB_00493086;
        }
LAB_00492e88:
        pcVar13 = "Disappear";
LAB_00492e8f:
        cVar2 = FUN_0040a5d0(pcVar13,1);
        if (cVar2 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
          piVar9 = local_24;
        }
      }
    }
    else {
LAB_0049307e:
      if (piVar9 == (int *)0x0) goto LAB_00493149;
    }
LAB_00493086:
    if (((piVar9[0xff] == 3) || (piVar9[0xff] == 0)) || (*(char *)((int)piVar9 + 0x173) != '\0')) {
      if (param_1[0xb] == 2) {
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
          ppbVar10 = (byte **)param_1[0x1f];
          if (&DAT_0000000f < ppbVar10[5]) {
            ppbVar10 = (byte **)*ppbVar10;
          }
          pcVar13 = "Appear";
          do {
            bVar1 = *(byte *)ppbVar10;
            bVar16 = bVar1 < (byte)*pcVar13;
            if (bVar1 != *pcVar13) {
LAB_00493125:
              uVar4 = -(uint)bVar16 | 1;
              goto LAB_0049312a;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar10 + 1);
            bVar16 = bVar1 < ((byte *)pcVar13)[1];
            if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_00493125;
            ppbVar10 = (byte **)((int)ppbVar10 + 2);
            pcVar13 = (char *)((byte *)pcVar13 + 2);
          } while (bVar1 != 0);
          uVar4 = 0;
LAB_0049312a:
          if (uVar4 == 0) goto LAB_00493137;
        }
        if (*(char *)(param_1 + 100) == '\0') goto LAB_00493149;
      }
LAB_00493137:
      param_1[0x2d9] = 5;
    }
    else {
      fVar17 = ((float)param_1[0xd0] - (float)piVar9[0xd0]) * DAT_00baa120;
      piVar9[0xd8] = (int)(((float)param_1[0xcf] - (float)piVar9[0xcf]) * DAT_00baa120);
      piVar9[0xd9] = (int)fVar17;
    }
  }
LAB_00493149:
  if (param_1[0x2d9] != 5) {
    return;
  }
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  ppbVar10 = (byte **)param_1[0x1f];
  if (ppbVar10 != (byte **)0x0) {
    ppbVar5 = ppbVar10;
    if (&DAT_0000000f < ppbVar10[5]) {
      ppbVar5 = (byte **)*ppbVar10;
    }
    pcVar13 = "Disappear";
    do {
      bVar1 = *(byte *)ppbVar5;
      bVar16 = bVar1 < (byte)*pcVar13;
      if (bVar1 != *pcVar13) {
LAB_004931a0:
        uVar4 = -(uint)bVar16 | 1;
        goto LAB_004931a5;
      }
      if (bVar1 == 0) break;
      bVar1 = *(byte *)((int)ppbVar5 + 1);
      bVar16 = bVar1 < ((byte *)pcVar13)[1];
      if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_004931a0;
      ppbVar5 = (byte **)((int)ppbVar5 + 2);
      pcVar13 = (char *)((byte *)pcVar13 + 2);
    } while (bVar1 != 0);
    uVar4 = 0;
LAB_004931a5:
    if ((uVar4 == 0) && ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
    goto LAB_004931dc;
  }
  cVar2 = FUN_0040a5d0("Disappear",1);
  if (cVar2 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x23) = 1;
  }
LAB_004931dc:
  if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
    (**(code **)(*param_1 + 0x28))();
  }
  return;
}

