/* Local J460 decompiler output.
 * VA: 0x00496fb0
 * Entry: 00496fb0
 * Dispatcher: 0x006c2990
 * Types: 410
 * Identities: 410.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00498f80; instructions=1827
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=410; identities=410.0.0; dispatcher=0x006c2990;
   end=0x00498f80; instructions=1827 */

void __fastcall AI_00496fb0(int **param_1)

{
  byte bVar1;
  float *pfVar2;
  double dVar3;
  float fVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  int *piVar8;
  int *piVar9;
  int *piVar10;
  int *piVar11;
  int *piVar12;
  int **ppiVar13;
  char cVar14;
  char cVar15;
  undefined4 uVar16;
  int iVar17;
  int *piVar18;
  uint uVar19;
  float *pfVar20;
  int iVar21;
  undefined4 uVar22;
  byte *pbVar23;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  char *pcVar24;
  int iVar25;
  bool bVar26;
  float fVar27;
  int *piVar28;
  int **ppiVar29;
  float fVar30;
  float fVar31;
  int **ppiVar32;
  int ***pppiVar33;
  undefined *puVar34;
  undefined auStack_1c8 [7];
  char local_1c1;
  int **local_1c0;
  int **local_1bc;
  int **local_1b8;
  float local_1b4;
  char local_1af;
  char local_1ae;
  char local_1ad;
  int **local_1ac;
  float local_1a8;
  int **local_1a4 [2];
  int *local_19c [8];
  undefined4 local_17c;
  undefined4 uStack_178;
  undefined4 local_174;
  int *local_170 [8];
  undefined4 local_150;
  undefined4 uStack_14c;
  undefined4 local_148;
  undefined local_144 [8];
  undefined4 local_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  undefined auStack_12c [16];
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined local_110 [144];
  undefined4 local_80;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_1c8;
  ppiVar29 = (int **)param_1[0xf0];
  if ((param_1[0xd] == param_1[10]) || (ppiVar29 == (int **)0x0)) {
    local_1ae = '\0';
    if ((param_1[0xd] != param_1[10]) || (local_1ae = '\0', ppiVar29 == (int **)0x0))
    goto LAB_00496ff7;
    local_1c1 = '\x01';
    local_1ae = '\0';
  }
  else {
    local_1ae = '\x01';
LAB_00496ff7:
    local_1c1 = '\0';
  }
  local_1ad = ((uint)param_1[0x5a] & 0x1000a00) != 0;
  if ((ppiVar29 == (int **)0x0) || (((uint)ppiVar29[0x5a] & 0x1000a00) != 0)) {
    local_1af = '\x01';
    if (ppiVar29 != (int **)0x0) goto LAB_00497042;
    param_1[0x2f1] = (int *)((int)param_1[0x2f1] + 1);
    local_1af = '\x01';
  }
  else {
    local_1af = '\0';
    if (ppiVar29 != (int **)0x0) {
LAB_00497042:
      if (DAT_00baab08 < (float)param_1[0xe0] - (float)ppiVar29[0xe0]) {
        param_1[0x2f1] = (int *)0x78;
      }
    }
  }
  ppiVar32 = (int **)0x0;
  if ((0.0 < (float)param_1[5]) && (piVar18 = param_1[2], piVar18 != param_1[3])) {
    do {
      if (piVar18[4] == 0x27) {
        *piVar18 = 0;
      }
      piVar18 = piVar18 + 0xe;
    } while (piVar18 != param_1[3]);
  }
  piVar12 = _UNK_00bac35c;
  piVar11 = _UNK_00bac358;
  piVar10 = _UNK_00bac354;
  piVar9 = _DAT_00bac350;
  piVar8 = _UNK_00bac11c;
  piVar7 = _UNK_00bac118;
  piVar6 = _UNK_00bac114;
  piVar5 = _DAT_00bac110;
  piVar28 = DAT_00baa528;
  piVar18 = DAT_00baa454;
  local_1a4[0] = param_1;
  if (param_1[0x2d9] == (int *)0x0) {
    param_1[0x2d9] = (int *)0x3;
    param_1[0x104] = (int *)0x0;
    param_1[0xdd] = (int *)0x3f99999a;
    param_1[0xde] = (int *)0x3f000000;
    local_17c = 0x3ec8c8ca;
    uStack_178 = 0x3ec8c8ca;
    local_174 = 0x3ea0a0a1;
    if (param_1 + 0x79 != local_19c) {
      *(undefined8 *)(param_1 + 0x81) = 0x3ec8c8ca3ec8c8ca;
      param_1[0x79] = piVar5;
      param_1[0x7a] = piVar6;
      param_1[0x7b] = piVar7;
      param_1[0x7c] = piVar8;
      param_1[0x83] = (int *)0x3ea0a0a1;
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
    }
    param_1[0x2f1] = (int *)0x0;
    local_1b8 = (int **)0x0;
    FUN_0044bcc0(1,&local_1b8);
    if (param_1[0xd] != param_1[10]) {
      uVar16 = FUN_006eef60();
      piVar18 = param_1[0xc];
      iVar17 = FUN_006eef60();
      fVar27 = (float)((double)iVar17 + (&DAT_00bacb00)[-(iVar17 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_1b8 = (int **)(fVar27 + fVar27);
      ppiVar29 = local_1b8;
      FUN_0041d540();
      local_1c0 = (int **)((float)ppiVar29 * DAT_00baa904 + (float)local_1a4[0][0xcf]);
      ppiVar32 = local_1b8;
      FUN_0041d520();
      ppiVar29 = local_1a4[0];
      local_1bc = (int **)((float)ppiVar32 * DAT_00baa904 + (float)local_1a4[0][0xd0]);
      piVar18 = (int *)FUN_006fe410(local_1a4[0][10],local_1a4[0][0xb],&local_1c0,
                                    local_1a4[0] + 0xd8,local_1a4[0],piVar18,uVar16,0);
      if (ppiVar29[10] == (int *)0x19a) {
        if (ppiVar29[0xf0] != (int *)0x0) {
          local_1b8 = ppiVar29 + 0xf0;
          FUN_004cf210(&local_1b8);
        }
        ppiVar29[0xf0] = piVar18;
        if (piVar18 != (int *)0x0) {
          FUN_004cdcf0(ppiVar29 + 0xf0);
        }
        if (piVar18[0xf0] != 0) {
          local_1b8 = (int **)(piVar18 + 0xf0);
          FUN_004cf210(&local_1b8);
        }
        piVar18[0xf0] = (int)ppiVar29;
        FUN_004cdcf0(piVar18 + 0xf0);
        if (((uint)ppiVar29[0x5b] & 0x10000000) != 0) {
          piVar18[0xe0] = (int)ppiVar29[0xe0];
          piVar18[0xe1] = (int)ppiVar29[0xe1];
          FUN_00aef12b();
          return;
        }
      }
    }
    goto LAB_00498f5b;
  }
  ppiVar13 = param_1 + 0x3c;
  if (param_1[0x2f1] == (int *)0x0) {
    if (ppiVar13 != param_1 + 0x6e) {
      *ppiVar13 = param_1[0x6e];
      param_1[0x3d] = param_1[0x6f];
      param_1[0x3e] = param_1[0x70];
      param_1[0x3f] = param_1[0x71];
      param_1[0x40] = param_1[0x72];
      param_1[0x41] = param_1[0x73];
      param_1[0x42] = param_1[0x74];
      param_1[0x43] = param_1[0x75];
      *(undefined8 *)(param_1 + 0x44) = *(undefined8 *)(param_1 + 0x76);
      param_1[0x46] = param_1[0x78];
    }
  }
  else {
    local_150 = 0;
    uStack_14c = 0;
    local_148 = 0;
    piVar18 = piVar28;
    if (ppiVar13 != local_170) {
      *(undefined (*) [16])(param_1 + 0x40) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x44) = 0;
      *ppiVar13 = piVar9;
      param_1[0x3d] = piVar10;
      param_1[0x3e] = piVar11;
      param_1[0x3f] = piVar12;
      param_1[0x46] = (int *)0x0;
    }
  }
  param_1[0xe2] = piVar18;
  piVar18 = param_1[0x2d9];
  local_1b8 = ppiVar29;
  if (piVar18 == (int *)0x3) {
    param_1[0x62] = (int *)&DAT_00000004;
    param_1[0x61] = (int *)&DAT_00000005;
    ppiVar32 = (int **)param_1[0x1f];
    if (ppiVar32 == (int **)0x0) {
LAB_00497403:
      cVar14 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar14 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppiVar32[5]) {
        ppiVar32 = (int **)*ppiVar32;
      }
      pbVar23 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppiVar32;
        bVar26 = bVar1 < *pbVar23;
        if (bVar1 != *pbVar23) {
LAB_004973e3:
          uVar19 = -(uint)bVar26 | 1;
          goto LAB_004973e8;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppiVar32 + 1);
        bVar26 = bVar1 < pbVar23[1];
        if (bVar1 != pbVar23[1]) goto LAB_004973e3;
        ppiVar32 = (int **)((int)ppiVar32 + 2);
        pbVar23 = pbVar23 + 2;
      } while (bVar1 != 0);
      uVar19 = 0;
LAB_004973e8:
      if ((uVar19 != 0) ||
         ((*(char *)(param_1[0x1f] + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00497403;
    }
    if (((((uint)param_1[0x5b] & 0x10000000) == 0) ||
        ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
       (piVar18 = param_1[0x104], param_1[0x104] = (int *)((int)piVar18 + 1), 0x14 < (int)piVar18))
    {
      uVar19 = FUN_006eef60();
      if ((((int)((ulonglong)uVar19 % 5) == 0) &&
          ((local_1ae != (char)((ulonglong)uVar19 % 5) || (ppiVar29 == (int **)0x0)))) &&
         (local_1ad == '\0')) {
        uVar19 = FUN_006eef60();
        if (uVar19 % 100 < 0x23) {
          if (local_1af == '\0') {
            param_1[0x2d9] = (int *)0x6;
            pfVar20 = (float *)FUN_006bec40(&local_1c0,0);
            iVar17 = FUN_006be840();
            fVar31 = *(float *)(iVar17 + 0x364) * DAT_00baa81c;
            fVar27 = pfVar20[1];
            param_1[0xcd] = (int *)(*(float *)(iVar17 + 0x360) * DAT_00baa81c + *pfVar20);
            param_1[0xce] = (int *)(fVar31 + fVar27);
            uVar19 = FUN_006eef60();
            iVar17 = DAT_00c71678;
            local_1a4[0] = (int **)(uVar19 & 0xffffff01);
            if ((uVar19 & 1) == 0) {
              param_1[0xce] = *(int **)(*(int *)(DAT_00c71678 + 0x18300) + 0x18);
            }
            else {
              param_1[0xcd] = *(int **)(*(int *)(DAT_00c71678 + 0x18300) + 0x14);
            }
            piVar18 = param_1[0xdc];
            FUN_00812f50(&local_1c0,param_1 + 0xcd,piVar18,piVar18,piVar18);
            ppiVar29 = local_1b8 + 0xcd;
            param_1[0xcd] = (int *)local_1c0;
            param_1[0xce] = (int *)local_1bc;
            param_1[0x2ec] = (int *)0x0;
            param_1[0x2f0] = (int *)0x0;
            local_1b8[0x2d9] = (int *)0x6;
            local_1b8[0x2f0] = (int *)0x0;
            local_1b8[0x2ec] = (int *)0x0;
            local_1b8[0xcd] = param_1[0xcd];
            local_1b8[0xce] = param_1[0xce];
            if ((char)local_1a4[0] == '\0') {
              local_1b8[0xce] = *(int **)(*(int *)(iVar17 + 0x18300) + 0x20);
            }
            else {
              *ppiVar29 = *(int **)(*(int *)(iVar17 + 0x18300) + 0x1c);
            }
            piVar18 = param_1[0xdc];
            local_1b8 = local_1b8 + 0xcd;
            FUN_00812f50(&local_1c0,ppiVar29,piVar18,piVar18,piVar18);
            *local_1b8 = (int *)local_1c0;
            local_1b8[1] = (int *)local_1bc;
          }
          else {
LAB_0049765b:
            param_1[0x2d9] = (int *)&DAT_00000008;
            param_1[0x2f0] = (int *)0x0;
            FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
            if (local_1af == '\0') {
              ppiVar29[0x2d9] = (int *)&DAT_00000008;
              ppiVar29[0x2f0] = (int *)0x0;
            }
          }
        }
        else {
          if (uVar19 % 100 < 0x55) goto LAB_0049765b;
          iVar17 = *(int *)(DAT_00c71678 + 0x18300);
          iVar21 = *(int *)(iVar17 + 0x12c8) + *(int *)(iVar17 + 0x12cc);
          iVar25 = *(int *)(iVar17 + 0x12c4) + *(int *)(iVar17 + 0x12c0);
          iVar17 = 0;
          if (0 < iVar21) {
            iVar17 = iVar21;
          }
          iVar21 = 0;
          if (0 < iVar25) {
            iVar21 = iVar25;
          }
          local_1c1 = iVar21 - iVar17 < 2;
          cVar15 = FUN_00417430(0,0x10000000);
          cVar14 = local_1c1;
          if (cVar15 != '\0') {
            iVar17 = FUN_006ac7e0(0xfb,0,extraout_ECX,0);
            iVar21 = FUN_006ac7e0(0x27,0,extraout_ECX_00,0);
            cVar14 = (uint)(iVar17 + iVar21) < 2;
          }
          if (cVar14 != '\0') {
            uVar19 = FUN_006eef60();
            piVar18 = (int *)((uVar19 % 3 != 0) + 0xd);
            param_1[0x2d9] = piVar18;
            if ((param_1[0xf0] != (int *)0x0) && (local_1af == '\0')) {
              local_1b8[0x2d9] = piVar18;
            }
          }
        }
      }
    }
  }
  else {
    if ((piVar18 == (int *)0xd) || (piVar18 == (int *)&DAT_0000000e)) {
      param_1[0x62] = (int *)&DAT_00000004;
      param_1[0x61] = (int *)&DAT_00000005;
      ppiVar29 = (int **)param_1[0x1f];
      if (ppiVar29 == (int **)0x0) {
LAB_00498bdf:
        cVar14 = FUN_0040a5d0(&DAT_00b1d2cc,1);
        if (cVar14 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppiVar32 = ppiVar29;
        if (&DAT_0000000f < ppiVar29[5]) {
          ppiVar32 = (int **)*ppiVar29;
        }
        pbVar23 = &DAT_00b1d2cc;
        do {
          bVar1 = *(byte *)ppiVar32;
          bVar26 = bVar1 < *pbVar23;
          if (bVar1 != *pbVar23) {
LAB_00498bc1:
            uVar19 = -(uint)bVar26 | 1;
            goto LAB_00498bc6;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppiVar32 + 1);
          bVar26 = bVar1 < pbVar23[1];
          if (bVar1 != pbVar23[1]) goto LAB_00498bc1;
          ppiVar32 = (int **)((int)ppiVar32 + 2);
          pbVar23 = pbVar23 + 2;
        } while (bVar1 != 0);
        uVar19 = 0;
LAB_00498bc6:
        if ((uVar19 != 0) ||
           ((*(char *)(ppiVar29 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_00498bdf;
      }
      if (param_1[0x1f] != (int *)0x0) {
        cVar14 = FUN_0040add0("Shoot");
        if (cVar14 != '\0') {
          if (param_1[0x2d9] == (int *)0xd) {
            uVar16 = FUN_006eef60();
            local_1b8 = (int **)((float)param_1[0xcf] + DAT_00ba9fe4);
            local_1b4 = (float)param_1[0xd0] + DAT_00baa87c;
            pppiVar33 = &local_1b8;
            uVar22 = 0xfb;
          }
          else {
            if (param_1[0x2d9] != (int *)&DAT_0000000e) goto LAB_00498e74;
            uVar16 = FUN_006eef60();
            local_1ac = (int **)((float)param_1[0xcf] + DAT_00ba9fe4);
            local_1a8 = (float)param_1[0xd0] + DAT_00baa87c;
            pppiVar33 = &local_1ac;
            uVar22 = 0x27;
          }
          local_1c0 = (int **)0x0;
          local_1bc = (int **)0x40a00000;
          uVar16 = FUN_006fe410(uVar22,0,pppiVar33,&local_1c0,param_1,0,uVar16,0);
          piVar18 = (int *)__RTDynamicCast(uVar16,0,&IsaacRepentancePlus::Entity::
                                                     RTTI_Type_Descriptor,
                                           &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0)
          ;
          (**(code **)(*piVar18 + 0xc))();
          FUN_006d6ba0(0x13a,0x3f800000,2,0,0x3f800000);
          uVar19 = FUN_006eef60();
          local_1b8 = (int **)0x0;
          local_1ac = (int **)(uVar19 % 3 + 2);
          if (local_1ac != (int **)0x0) {
            do {
              iVar17 = FUN_006eef60();
              piVar18 = (int *)FUN_006b64d0((float)((double)iVar17 +
                                                   (&DAT_00bacb00)[-(iVar17 >> 0x1f)]) *
                                            DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa2d0);
              if (local_1b8 == (int **)0x0) {
                fVar31 = (float)param_1[0xd0] + DAT_00baa87c;
                fVar27 = (float)param_1[0xcf] + DAT_00ba9fe4;
              }
              else {
                iVar17 = FUN_006eef60();
                fVar31 = (float)((double)iVar17 + (&DAT_00bacb00)[-(iVar17 >> 0x1f)]) * DAT_00ba9ff4
                ;
                fVar27 = fVar31 * DAT_00ba9fe4 + (float)param_1[0xcf];
                fVar31 = fVar31 * DAT_00baa87c + (float)param_1[0xd0];
              }
              piVar18[0xcf] = (int)fVar27;
              piVar18[0xd0] = (int)fVar31;
              auStack_12c = ZEXT816(0);
              local_13c = _DAT_00babf20;
              uStack_138 = _UNK_00babf24;
              uStack_134 = _UNK_00babf28;
              uStack_130 = _UNK_00babf2c;
              uStack_11c = 0x3ed70a3d;
              uStack_118 = 0x3edc28f6;
              uStack_114 = 0x3eb33333;
              (**(code **)(*piVar18 + 0x3c))(&local_13c,0xffffffff,0xff,0,1);
              (**(code **)(*piVar18 + 0xc))();
              local_1b8 = (int **)((int)local_1b8 + 1);
            } while ((int)local_1b8 < (int)local_1ac);
          }
        }
LAB_00498e74:
        if ((param_1[0x1f] != (int *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_00498e97;
      }
      param_1[0x2d9] = (int *)0x3;
LAB_00498e8d:
      param_1[0x104] = (int *)0x0;
      goto LAB_00498e97;
    }
    if (piVar18 == (int *)&DAT_00000008) {
      local_1b8 = DAT_00baa85c;
      if (param_1[0x2f1] != (int *)0x0) {
        local_1b8 = DAT_00baa89c;
      }
      if (param_1[0x2f0] == (int *)0x0) {
        ppiVar29 = (int **)param_1[0x1f];
        if (ppiVar29 == (int **)0x0) {
LAB_00497821:
          cVar14 = FUN_0040a5d0("RollStart",1);
          if (cVar14 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
        else {
          ppiVar32 = ppiVar29;
          if (&DAT_0000000f < ppiVar29[5]) {
            ppiVar32 = (int **)*ppiVar29;
          }
          pcVar24 = "RollStart";
          do {
            bVar1 = *(byte *)ppiVar32;
            bVar26 = bVar1 < (byte)*pcVar24;
            if (bVar1 != *pcVar24) {
LAB_00497802:
              uVar19 = -(uint)bVar26 | 1;
              goto LAB_00497807;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppiVar32 + 1);
            bVar26 = bVar1 < ((byte *)pcVar24)[1];
            if (bVar1 != ((byte *)pcVar24)[1]) goto LAB_00497802;
            ppiVar32 = (int **)((int)ppiVar32 + 2);
            pcVar24 = (char *)((byte *)pcVar24 + 2);
          } while (bVar1 != 0);
          uVar19 = 0;
LAB_00497807:
          if ((uVar19 != 0) ||
             ((*(char *)(ppiVar29 + 0xd) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_00497821;
        }
        if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
          iVar17 = FUN_006be840();
          local_1c0 = (int **)(*(float *)(iVar17 + 0x33c) - (float)param_1[0xcf]);
          local_1bc = (int **)(*(float *)(iVar17 + 0x340) - (float)param_1[0xd0]);
          pfVar20 = (float *)FUN_00a10030(local_1a4);
          fVar27 = pfVar20[1];
          piVar18 = (int *)((float)local_1b8 * *pfVar20 + (float)param_1[0xd8]);
          param_1[0xd8] = piVar18;
          param_1[0xd9] = (int *)((float)local_1b8 * fVar27 + (float)param_1[0xd9]);
          param_1[0x104] = (int *)0x0;
          if (local_1c1 != '\0') {
            piVar28 = (int *)((float)param_1[0xd9] * DAT_00baad50);
            param_1[0xd8] = (int *)((float)piVar18 * DAT_00baad50);
            param_1[0xd9] = piVar28;
          }
        }
        goto LAB_00498e97;
      }
      if (param_1[0x2f0] == (int *)0x1) {
        iVar17 = FUN_0040a780();
        if (iVar17 % 3 == 0) {
          uVar16 = FUN_006eef60();
          uVar22 = 0x5e;
          if (local_1c1 == '\0') {
            uVar22 = 0x17;
          }
          piVar18 = (int *)FUN_006fe410(1000,uVar22,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar16,0)
          ;
          fVar27 = DAT_00c37940 * (float)DAT_00baa630;
          piVar18[0x39] = (int)(DAT_00c3793c * (float)DAT_00baa630);
          piVar18[0x117] = 5;
          piVar18[0x3a] = (int)fVar27;
          piVar18[0x118] = 5;
          (**(code **)(*piVar18 + 0xc))();
        }
        FUN_0040a380("RollLoop",0);
        cVar14 = FUN_00a10630(&DAT_00c7b640);
        if (cVar14 != '\0') {
          pfVar20 = (float *)FUN_00a10030(local_144);
          fVar27 = pfVar20[1];
          param_1[0xd8] = (int *)((float)local_1b8 * *pfVar20);
          param_1[0xd9] = (int *)((float)local_1b8 * fVar27);
        }
        if ((((ppiVar29 == (int **)0x0) ||
             ((ppiVar29[0x2d9] == (int *)&DAT_00000008 && (ppiVar29[0x2f0] == (int *)0x1)))) &&
            ((piVar18 = param_1[0x104], param_1[0x104] = (int *)((int)piVar18 + 1),
             0x41 < (int)piVar18 || (local_1ad != '\0')))) &&
           ((uVar19 = FUN_006eef60(), uVar19 % 0x23 == 0 &&
            (cVar14 = FUN_00944a40(param_1 + 0xcf), cVar14 != '\0')))) {
          uVar19 = FUN_006eef60();
          if (uVar19 % 100 < 0x3c) {
            param_1[0x2f0] = (int *)0x2;
          }
          else {
            param_1[0x2f0] = (int *)(4 - (uint)(uVar19 % 100 < 0x46));
          }
        }
        goto LAB_00498e97;
      }
      FUN_0040a380("Taunt",0);
      if ((param_1[0x1f] != (int *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_00498e97;
      if (local_1ad != '\0') {
LAB_00498b2e:
        param_1[0x2d9] = (int *)0x3;
        param_1[0x2f0] = (int *)0x0;
        param_1[0x104] = (int *)0x0;
        if (ppiVar29 != (int **)0x0) {
          ppiVar29[0x2d9] = (int *)0x3;
          ppiVar29[0x2f0] = (int *)0x0;
          ppiVar29[0x104] = (int *)0x0;
        }
        goto LAB_00498e97;
      }
      piVar18 = param_1[0x2f0];
      if (piVar18 == (int *)0x2) {
        param_1[0x2d9] = (int *)0xa;
        param_1[0x2f0] = (int *)0x0;
        iVar17 = FUN_006be840();
        fVar27 = *(float *)(iVar17 + 0x33c);
        param_1[0xce] = (int *)(*(float *)(iVar17 + 0x340) - (float)param_1[0xd0]);
        param_1[0xcd] = (int *)(fVar27 - (float)param_1[0xcf]);
        param_1[0x104] = (int *)0x0;
        uVar16 = FUN_004238f0(0x3f4ccccd);
        iVar17 = FUN_0067f260();
        fVar27 = (float)iVar17 * DAT_00baa9b4 + DAT_00baaa78;
        FUN_00682740();
        ppiVar29 = (int **)(fVar27 * DAT_00baa088);
        local_1b8 = ppiVar29;
        FUN_0041d540();
        local_1c0 = ppiVar29;
        local_1bc = local_1b8;
        FUN_0041d520();
        local_1ac = (int **)0x0;
        local_1a8 = -40.0;
        FUN_0060b890(&local_1c0,0x28,uVar16,0x41000000);
        goto LAB_00498e97;
      }
      if (piVar18 == (int *)0x3) {
        param_1[0x2d9] = (int *)0xb;
      }
      else {
        if (piVar18 != (int *)&DAT_00000004) goto LAB_00498e97;
        param_1[0x2d9] = (int *)0xc;
      }
      param_1[0x2f0] = (int *)0x0;
      iVar17 = FUN_006be840();
      fVar27 = *(float *)(iVar17 + 0x340);
      param_1[0xcd] = (int *)(*(float *)(iVar17 + 0x33c) - (float)param_1[0xcf]);
      param_1[0xce] = (int *)(fVar27 - (float)param_1[0xd0]);
      goto LAB_00498e8d;
    }
    if (piVar18 == (int *)0xa) {
      param_1[0x62] = (int *)&DAT_00000004;
      param_1[0x61] = (int *)&DAT_00000005;
      local_1b8 = (int **)FUN_0067f260();
      *(bool *)(param_1 + 0x52) = local_1b8 == (int **)0x0;
      piVar18 = param_1[0x2f0];
      if (piVar18 == (int *)0x0) {
        FUN_0040a380((&PTR_s_LaserStartSide_00b1dbf4)[(int)local_1b8],0);
        goto LAB_00497cb0;
      }
      if (piVar18 == (int *)0x1) {
        if ((float)ppiVar32 < (float)param_1[5]) {
          pfVar2 = (float *)param_1[3];
          for (pfVar20 = (float *)param_1[2]; pfVar20 != pfVar2; pfVar20 = pfVar20 + 0xe) {
            *pfVar20 = *pfVar20 * (float)piVar28;
          }
        }
        FUN_0040a380((&PTR_s_LaserLoopSide_00b1dbe4)[(int)local_1b8],0);
        ppiVar29 = local_1b8;
        local_1c0 = (int **)0x0;
        local_1bc = (int **)0xc1f00000;
        if (local_1b8 == (int **)0x0) {
          local_1c0 = (int **)0xc20c0000;
        }
        else if (local_1b8 == (int **)0x2) {
          local_1c0 = (int **)0x420c0000;
        }
        fVar27 = (float)(int)local_1b8 * DAT_00baa9b4 + DAT_00baaa78;
        FUN_00682740(0x1e,&local_1c0,param_1,0);
        local_1b8 = (int **)FUN_0096f310(6,param_1 + 0xcf,fVar27);
        piVar18 = DAT_00baabfc;
        if (ppiVar29 == (int **)0x1) {
          piVar18 = DAT_00baadc0;
        }
        ppiVar29 = param_1 + 0x2fb;
        local_1b8[0xd6] = piVar18;
        if (*ppiVar29 != (int *)0x0) {
          local_1a4[0] = ppiVar29;
          FUN_004cf210(local_1a4);
        }
        *ppiVar29 = (int *)local_1b8;
        if (local_1b8 != (int **)0x0) {
          FUN_004cdcf0(ppiVar29);
        }
        (*(code *)(*local_1b8)[3])();
        param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
      }
      else if (piVar18 == (int *)0x2) {
LAB_00497dee:
        if (param_1[0x2fb] == (int *)0x0) {
          param_1[0x2f0] = (int *)0x3;
        }
      }
      else {
        bVar26 = piVar18 == (int *)0x3;
LAB_00497e0d:
        if (bVar26) {
          puVar34 = (&PTR_s_LaserEndSide_00b1dbd4)[(int)local_1b8];
LAB_00498b13:
          FUN_0040a380(puVar34,0);
          if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0'))
          goto LAB_00498b2e;
        }
      }
      goto LAB_00498e97;
    }
    if (piVar18 == (int *)0x6) {
      piVar18 = param_1[0x2f0];
      if (piVar18 == (int *)0x0) {
        FUN_0040a380("Jumping",0);
        param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
      }
      else if (piVar18 == (int *)0x1) {
        if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          FUN_0040a380("JumpLoop",0);
          param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
        }
      }
      else if ((piVar18 == (int *)0x2) &&
              (((float)param_1[0xce] - (float)param_1[0xd0]) *
               ((float)param_1[0xce] - (float)param_1[0xd0]) +
               ((float)param_1[0xcd] - (float)param_1[0xcf]) *
               ((float)param_1[0xcd] - (float)param_1[0xcf]) < (float)DAT_00baa630)) {
        param_1[0x2f0] = (int *)0x0;
        param_1[0x2d9] = (int *)0x7;
        param_1[0x62] = (int *)&DAT_00000004;
      }
      cVar14 = FUN_0040b090(&DAT_00b1d560);
      if (cVar14 != '\0') {
        FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
      }
      if ((1 < (int)param_1[0x2f0]) || (cVar14 = FUN_0040b090(&DAT_00b1d560), cVar14 != '\0')) {
        piVar18 = (int *)((float)param_1[0x2ec] + DAT_00baa08c);
        if ((float)DAT_00baa454 <= (float)(int *)((float)param_1[0x2ec] + DAT_00baa08c)) {
          piVar18 = DAT_00baa454;
        }
        fVar27 = (float)DAT_00baa454 - (float)piVar18;
        param_1[0x2ec] = piVar18;
        param_1[0xd0] =
             (int *)((float)piVar18 * (float)param_1[0xce] + fVar27 * (float)param_1[0xd0]);
        param_1[0xcf] =
             (int *)(fVar27 * (float)param_1[0xcf] + (float)piVar18 * (float)param_1[0xcd]);
        param_1[0x62] = (int *)0x0;
        param_1[0x61] = (int *)0x3;
      }
      goto LAB_00498e97;
    }
    if (piVar18 == (int *)0x7) {
      param_1[0x62] = (int *)&DAT_00000004;
      param_1[0x61] = (int *)&DAT_00000005;
      if (param_1[0x2f0] == (int *)0x0) {
        FUN_0040a380("Landing",0);
        param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
      }
      else {
        if (param_1[0x2f0] == (int *)0x1) {
          cVar14 = FUN_0040b030("Landed");
          if (cVar14 != '\0') {
            FUN_006d6ba0(0x45,0x3f800000,2,0,0x3f800000);
          }
          goto LAB_00497cb0;
        }
        if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          if (ppiVar29 == (int **)0x0) {
            param_1[0x2f0] = (int *)0x0;
            param_1[0x2d9] = (int *)0x3;
          }
          else if (ppiVar29[0x2f0] == (int *)0x2) {
            param_1[0x2f0] = (int *)0x0;
            ppiVar29[0x2f0] = (int *)0x0;
            param_1[0x2d9] = (int *)0x9;
            ppiVar29[0x2d9] = (int *)0x9;
          }
        }
      }
      goto LAB_00498e97;
    }
    if (piVar18 == (int *)0x9) {
      param_1[0x61] = (int *)&DAT_00000005;
      param_1[0x62] = (int *)&DAT_00000004;
      iVar17 = FUN_00703850(param_1 + 0xcf,0x4b18967f);
      piVar18 = *(int **)(iVar17 + 0x33c);
      piVar28 = *(int **)(iVar17 + 0x340);
      if (ppiVar29 != (int **)0x0) {
        piVar18 = ppiVar29[0xcf];
        piVar28 = ppiVar29[0xd0];
      }
      fVar31 = (float)((uint)((float)param_1[0xcf] - (float)piVar18) & DAT_00bacb40);
      fVar27 = (float)((uint)((float)param_1[0xd0] - (float)piVar28) & DAT_00bacb40);
      local_1c1 = fVar27 < fVar31;
      local_1a4[0] = (int **)0x0;
      if (fVar31 <= fVar27) {
        local_1a4[0] = (int **)((uint)((float)param_1[0xd0] < (float)piVar28) * 2 + 1);
      }
      else if ((float)param_1[0xcf] < (float)piVar18) {
        local_1a4[0] = (int **)0x2;
      }
      *(bool *)(param_1 + 0x52) = local_1a4[0] == (int **)0x0;
      dVar3 = DAT_00baa618;
      piVar18 = param_1[0x2f0];
      if (piVar18 == (int *)0x0) {
        FUN_0040a380((&PTR_s_LaserStartSide_00b1dbf4)[(int)local_1a4[0]],0);
        if (*(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] +
                    ((uint)param_1[0x2ff] & 3) * 4) == 0) {
          uVar16 = FUN_004238f0(0x3f4ccccd);
          fVar27 = (float)(int)local_1a4[0] * DAT_00baa9b4 + DAT_00baaa78;
          FUN_00682740();
          ppiVar29 = (int **)(fVar27 * DAT_00baa088);
          local_1b8 = ppiVar29;
          FUN_0041d540();
          local_1c0 = ppiVar29;
          local_1bc = local_1b8;
          FUN_0041d520();
          local_1ac = (int **)0x0;
          local_1a8 = -40.0;
          local_1a4[0] = (int **)FUN_0060b890(&local_1c0,0x2a,uVar16,0x41000000);
          uVar19 = (uint)param_1[0x2ff] & 3;
          ppiVar29 = (int **)(param_1[0x2fd][(uint)param_1[0x2ff] >> 2 & (int)param_1[0x2fe] - 1U] +
                             uVar19 * 4);
          ppiVar32 = local_1a4[0];
          if (*(int *)(param_1[0x2fd][(uint)param_1[0x2ff] >> 2 & (int)param_1[0x2fe] - 1U] +
                      uVar19 * 4) != 0) {
            local_1b8 = ppiVar29;
            FUN_004cf210(&local_1b8);
            ppiVar32 = local_1a4[0];
          }
LAB_00498270:
          *ppiVar29 = (int *)ppiVar32;
          if (ppiVar32 != (int **)0x0) {
            FUN_004cdcf0(ppiVar29);
          }
        }
LAB_00497cb0:
        if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
        }
      }
      else {
        if (piVar18 != (int *)0x1) {
          if (piVar18 == (int *)0x2) goto LAB_00497dee;
          if ((piVar18 != (int *)0x3) ||
             ((FUN_0040a380((&PTR_s_LaserEndSide_00b1dbd4)[(int)local_1a4[0]],0),
              param_1[0x1f] != (int *)0x0 && (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_00498e97;
          param_1[0x2d9] = (int *)0x3;
          param_1[0x2f0] = (int *)0x0;
          goto LAB_00498e8d;
        }
        if (DAT_00ba9fe4 < (float)param_1[5]) {
          pfVar2 = (float *)param_1[3];
          for (pfVar20 = (float *)param_1[2]; pfVar20 != pfVar2; pfVar20 = pfVar20 + 0xe) {
            *pfVar20 = (float)((double)*pfVar20 * dVar3);
          }
        }
        FUN_0040a380((&PTR_s_LaserLoopSide_00b1dbe4)[(int)local_1a4[0]],0);
        local_1c0 = (int **)0x0;
        local_1bc = (int **)0xc1f00000;
        if (local_1a4[0] == (int **)0x0) {
          local_1c0 = (int **)0xc20c0000;
        }
        else if (local_1a4[0] == (int **)0x2) {
          local_1c0 = (int **)0x420c0000;
        }
        fVar27 = (float)(int)local_1a4[0] * DAT_00baa9b4 + DAT_00baaa78;
        FUN_00682740(0xf,&local_1c0,param_1,0);
        local_1ac = (int **)FUN_0096f310(6,param_1 + 0xcf,fVar27);
        piVar18 = DAT_00baabfc;
        if (local_1a4[0] == (int **)0x1) {
          piVar18 = DAT_00baadc0;
        }
        local_1ac[0xd6] = piVar18;
        local_1ac[0x134] = (int *)0x42640000;
        if (ppiVar29 != (int **)0x0) {
          if (local_1c1 == '\0') {
            fVar27 = (float)((uint)((float)param_1[0xd0] - (float)ppiVar29[0xd0]) & DAT_00bacb40) -
                     _DAT_00baa9ac;
          }
          else {
            fVar27 = (float)((uint)((float)param_1[0xcf] - (float)ppiVar29[0xcf]) & DAT_00bacb40) -
                     _DAT_00baaa54;
          }
          local_1ac[0x134] = (int *)(fVar27 * DAT_00baa2d0);
        }
        (*(code *)(*local_1ac)[3])();
        ppiVar29 = param_1 + 0x2fb;
        if (param_1[0x2fb] != (int *)0x0) {
          local_1b8 = ppiVar29;
          FUN_004cf210(&local_1b8);
        }
        *ppiVar29 = (int *)local_1ac;
        FUN_004cdcf0(ppiVar29);
        param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
      }
      goto LAB_00498e97;
    }
    if (piVar18 != (int *)0xb) {
      if (piVar18 == (int *)0xc) {
        param_1[0x62] = (int *)&DAT_00000004;
        param_1[0x61] = (int *)&DAT_00000005;
        local_1ac = (int **)FUN_0067f260();
        fVar27 = DAT_00baa8e4;
        piVar18 = param_1[0x2f0];
        if (piVar18 == (int *)0x0) {
          puVar34 = (&PTR_s_LaserStartSide_00b1dbf4)[(int)local_1ac];
          *(bool *)(param_1 + 0x52) = local_1ac == (int **)0x0;
          FUN_0040a380(puVar34,0);
          if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
            FUN_006d6ba0(0x10,0x3f800000,2,0,0x3f800000);
            param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
            uVar19 = FUN_006eef60();
            param_1[0x2ec] = (int *)(float)((double)(uVar19 % 100) + DAT_00bacb00);
          }
        }
        else if (piVar18 == (int *)0x1) {
          piVar18 = (int *)((int)param_1[0x104] + 1);
          param_1[0x104] = piVar18;
          iVar17 = (uint)(param_1[0x2f1] == (int *)0x0) * 2;
          iVar21 = iVar17 + 5;
          if (fVar27 <= (float)param_1[0x2ec]) {
            if ((float)param_1[0x2ec] < DAT_00baa96c) {
              iVar21 = iVar17 + 6;
            }
          }
          else {
            iVar21 = iVar17 + 7;
          }
          if ((int)piVar18 % iVar21 == 0) {
            ppiVar29 = DAT_00baa7a4;
            if (param_1[0x2f1] != (int *)0x0) {
              ppiVar29 = DAT_00baa7e8;
            }
            local_1bc = (int **)0x0;
            local_1c0 = (int **)0x0;
            if (local_1ac == (int **)0x1) {
              local_1bc = (int **)((uint)ppiVar29 ^ DAT_00bacb70);
              AI_0043ef30();
              local_80 = 0xc1200000;
              local_1a4[0] = (int **)0x0;
            }
            else {
              ppiVar13 = ppiVar29;
              local_1a4[0] = ppiVar32;
              if (local_1ac != (int **)0x3) {
                ppiVar13 = local_1bc;
                if (local_1ac == (int **)0x0) {
                  local_1a4[0] = DAT_00baae14;
                  local_1c0 = (int **)((uint)ppiVar29 ^ DAT_00bacb70);
                }
                else if (local_1ac == (int **)0x2) {
                  local_1a4[0] = DAT_00baa8d0;
                  local_1c0 = ppiVar29;
                }
              }
              local_1bc = ppiVar13;
              AI_0043ef30();
              local_80 = 0x453b8000;
            }
            uVar16 = 4;
            if (DAT_00baa8e4 <= (float)param_1[0x2ec]) {
              if ((float)param_1[0x2ec] < DAT_00baa96c) {
                uVar16 = 3;
              }
            }
            else {
              uVar16 = 1;
            }
            FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
            local_1ac = (int **)((float)local_1a4[0] + (float)param_1[0xcf]);
            local_1a8 = (float)param_1[0xd0] - DAT_00baa854;
            FUN_006cb2e0(&local_1ac,&local_1c0,uVar16,local_110);
            piVar18 = param_1[0x104];
          }
          if (0x1e < (int)piVar18) {
            param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 1);
          }
        }
        else if (piVar18 == (int *)0x2) {
          puVar34 = (&PTR_s_LaserEndSide_00b1dbd4)[(int)local_1ac];
          goto LAB_00498b13;
        }
      }
      goto LAB_00498e97;
    }
    param_1[0x62] = (int *)&DAT_00000004;
    param_1[0x61] = (int *)&DAT_00000005;
    local_1b8 = (int **)FUN_0067f260();
    dVar3 = DAT_00baa618;
    piVar18 = param_1[0x2f0];
    if (piVar18 == (int *)0x0) {
      puVar34 = (&PTR_s_LaserStartSide_00b1dbf4)[(int)local_1b8];
      *(bool *)(param_1 + 0x52) = local_1b8 == (int **)0x0;
      FUN_0040a380(puVar34,0);
      if (*(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] +
                  ((uint)param_1[0x2ff] & 3) * 4) == 0) {
        uVar16 = FUN_004238f0(0x3f4ccccd);
        fVar27 = (float)(int)local_1b8 * DAT_00baa9b4 + DAT_00baaa78;
        FUN_00682740();
        ppiVar29 = (int **)(fVar27 * DAT_00baa088);
        local_1ac = ppiVar29;
        FUN_0041d540();
        local_1c0 = ppiVar29;
        local_1bc = local_1ac;
        FUN_0041d520();
        local_1ac = (int **)0x0;
        local_1a8 = -40.0;
        ppiVar32 = (int **)FUN_0060b890(&local_1c0,0x2a,uVar16,0x41000000);
        uVar19 = (uint)param_1[0x2ff] & 3;
        ppiVar29 = (int **)(param_1[0x2fd][(uint)param_1[0x2ff] >> 2 & (int)param_1[0x2fe] - 1U] +
                           uVar19 * 4);
        local_1b8 = ppiVar32;
        if (*(int *)(param_1[0x2fd][(uint)param_1[0x2ff] >> 2 & (int)param_1[0x2fe] - 1U] +
                    uVar19 * 4) != 0) {
          local_1ac = ppiVar29;
          FUN_004cf210(&local_1ac);
          ppiVar32 = local_1b8;
        }
        goto LAB_00498270;
      }
      goto LAB_00497cb0;
    }
    if (piVar18 == (int *)0x1) {
      if ((float)ppiVar32 < (float)param_1[5]) {
        pfVar2 = (float *)param_1[3];
        for (pfVar20 = (float *)param_1[2]; pfVar20 != pfVar2; pfVar20 = pfVar20 + 0xe) {
          *pfVar20 = (float)((double)*pfVar20 * dVar3);
        }
      }
      FUN_0040a380((&PTR_s_LaserLoopSide_00b1dbe4)[(int)local_1b8],0);
      ppiVar29 = local_1b8;
      local_1c0 = (int **)0x0;
      local_1bc = (int **)0xc1f00000;
      if (local_1b8 == (int **)0x0) {
        local_1c0 = (int **)0xc20c0000;
      }
      else if (local_1b8 == (int **)0x2) {
        local_1c0 = (int **)0x420c0000;
      }
      fVar27 = (float)(int)local_1b8 * DAT_00baa9b4 + DAT_00baaa78;
      FUN_00682740(0x3c,&local_1c0,param_1,0);
      local_1b8 = (int **)FUN_0096f310(6,param_1 + 0xcf,fVar27);
      piVar18 = DAT_00baabfc;
      if (ppiVar29 == (int **)0x1) {
        piVar18 = DAT_00baadc0;
      }
      local_1b8[0xd6] = piVar18;
      (*(code *)(*local_1b8)[3])();
      ppiVar29 = param_1 + 0x2fb;
      if (param_1[0x2fb] != (int *)0x0) {
        local_1ac = ppiVar29;
        FUN_004cf210(&local_1ac);
      }
      *ppiVar29 = (int *)local_1b8;
      FUN_004cdcf0(ppiVar29);
      uVar19 = FUN_006eef60();
      param_1[0x2f0] = (int *)((uVar19 & 1) + 2);
      goto LAB_00498e97;
    }
    bVar26 = piVar18 == (int *)&DAT_00000004;
    if (3 < (int)piVar18) goto LAB_00497e0d;
    if (param_1[0x2fb] == (int *)0x0) {
      param_1[0x2f0] = (int *)&DAT_00000004;
      goto LAB_00498e97;
    }
    local_1a4[0] = DAT_00baad74;
    if (piVar18 == (int *)0x3) {
      local_1a4[0] = DAT_00baa630;
    }
    iVar17 = __RTDynamicCast(param_1[0x2fb],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                             &IsaacRepentancePlus::Entity_Laser::RTTI_Type_Descriptor,0);
    fVar4 = DAT_00baab30;
    fVar31 = DAT_00baaa78;
    fVar27 = *(float *)(iVar17 + 0x41c);
    if (fVar27 < 0.0) {
      fVar27 = fVar27 + DAT_00baab30;
    }
    fVar27 = (float)local_1a4[0] + fVar27;
    switch(local_1b8) {
    case (int **)0x0:
      fVar30 = DAT_00baaa44;
      if ((double)fVar27 < _DAT_00baa738) {
LAB_00498820:
        if (fVar27 <= fVar30) {
LAB_00498825:
          param_1[0x2f0] = (int *)0x3;
        }
      }
      else {
        param_1[0x2f0] = (int *)0x2;
      }
      break;
    case (int **)0x1:
      fVar30 = DAT_00baaad4;
      if (fVar27 < DAT_00baab08) goto LAB_00498820;
      param_1[0x2f0] = (int *)0x2;
      break;
    case (int **)0x2:
      if (((float)DAT_00baa8d0 <= fVar27) && (fVar27 < DAT_00baaa78)) {
        param_1[0x2f0] = (int *)0x2;
        break;
      }
      if (DAT_00baab1c < fVar27) break;
      if (DAT_00baaa78 < fVar27) goto LAB_00498825;
      goto LAB_00498838;
    case (int **)0x3:
      fVar30 = DAT_00baa950;
      if (fVar27 < DAT_00baaa00) goto LAB_00498820;
      param_1[0x2f0] = (int *)0x2;
    }
    if (fVar31 < fVar27) {
      fVar27 = fVar27 - fVar4;
    }
LAB_00498838:
    FUN_00682740();
    FUN_0096ce90(fVar27);
  }
LAB_00498e97:
  piVar18 = param_1[0x2d9];
  if ((((piVar18 != (int *)0xa) && (piVar18 != (int *)0x9)) && (piVar18 != (int *)0xb)) &&
     (piVar18 != (int *)0xc)) {
    iVar17 = FUN_006be840();
    *(bool *)(param_1 + 0x52) = *(float *)(iVar17 + 0x33c) - (float)param_1[0xcf] < 0.0;
  }
  if ((param_1[0x1f] != (int *)0x0) && (cVar14 = FUN_0040add0("ScareSFX"), cVar14 != '\0')) {
    local_1b8 = (int **)0x3c0;
    FUN_00956780();
    FUN_0092dc30(local_1b8,0x3f800000,2,0,0x3f800000,0);
  }
  param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
  if (0 < (int)param_1[0x2f1]) {
    param_1[0x2f1] = (int *)((int)param_1[0x2f1] + -1);
  }
LAB_00498f5b:
  FUN_00aef12b();
  return;
}

