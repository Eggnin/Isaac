/* Local J460 decompiler output.
 * VA: 0x004ecc10
 * Entry: 004ecc10
 * Dispatcher: 0x006c2990
 * Types: 841
 * Identities: 841.0.0,841.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004ed840; instructions=790
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=841; identities=841.0.0,841.1.0; dispatcher=0x006c2990;
   end=0x004ed840; instructions=790 */

void __fastcall AI_004ecc10(int param_1)

{
  float *pfVar1;
  byte bVar2;
  byte **ppbVar3;
  undefined uVar4;
  char cVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  int *piVar9;
  byte **ppbVar10;
  byte *pbVar11;
  char *pcVar12;
  uint uVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  double dVar17;
  int *local_a8;
  undefined *local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  int local_94;
  float local_90;
  byte *local_8c;
  float local_88;
  byte *local_84;
  float local_80;
  float local_7c;
  byte *local_78;
  undefined **local_74;
  undefined local_6d;
  undefined4 local_6c;
  undefined4 local_68;
  undefined local_64;
  undefined4 local_5c;
  uint local_58;
  uint local_54;
  undefined2 local_50;
  undefined local_4e;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined local_14;
  undefined3 uStack_13;
  
  iVar7 = DAT_00c71678;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xff;
  uStack_13 = 0xffffff;
  puStack_18 = &LAB_00af3ded;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_74 = &PTR_s_HeadWalkDown_00c5c330;
  local_80 = (float)((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  local_24 = uVar6;
  if (*(int *)(iVar7 + 0x26584) == 0x2c) {
    FUN_0074f690();
LAB_004eccbf:
    local_94 = FUN_0082d030();
  }
  else {
    puStack_20 = &stack0xfffffffc;
    if (*(int *)(iVar7 + 0x1830c) != 2) goto LAB_004eccbf;
    local_94 = 0x23;
    puStack_20 = &stack0xfffffffc;
  }
  iVar7 = *(int *)(param_1 + 0xb64);
  if (iVar7 != 0) {
    if (iVar7 == 4) {
      if (DAT_00baa06c <
          *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
          *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364)) {
        iVar7 = FUN_0067f170(uVar6);
        fVar16 = *(float *)(iVar7 + 4);
        FUN_00499d60();
        *(float *)(param_1 + 0xbb0) = fVar16 * DAT_00baa948;
      }
      iVar7 = FUN_006ac760();
      if ((iVar7 != 0) && (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) {
        FUN_006d6ba0(0x74,0x3f4ccccd,0x78,0,0x3f800000);
      }
      FUN_007e6ff0();
      FUN_007e5340(0x3f4ccccd,0);
      if (*(int *)(param_1 + 0x410) < 0) {
        *(int *)(param_1 + 0x410) = (int)local_80 + *(int *)(param_1 + 0x410);
      }
      else {
        iVar7 = FUN_006be840();
        pfVar1 = (float *)(param_1 + 0x33c);
        local_a0 = *(float *)(iVar7 + 0x33c);
        local_9c = *(float *)(iVar7 + 0x340);
        local_80 = local_9c - *(float *)(param_1 + 0x340);
        local_78 = (byte *)(local_a0 - *pfVar1);
        fVar16 = (float)local_78 * (float)local_78 + local_80 * local_80;
        local_88 = local_9c;
        local_7c = local_a0;
        FUN_00435a50();
        if (0.0 < fVar16) {
          local_78 = (byte *)((float)local_78 * (DAT_00baa454 / fVar16));
          local_80 = local_80 * (DAT_00baa454 / fVar16);
        }
        FUN_0067f1d0();
        fVar16 = local_88 - *(float *)(param_1 + 0x340);
        fVar16 = fVar16 * fVar16 + (local_7c - *pfVar1) * (local_7c - *pfVar1);
        FUN_00435a50();
        if (((fVar16 < DAT_00baaae8) &&
            (DAT_00baa3e0 < (float)local_78 * local_90 + (float)local_8c * local_80)) &&
           (cVar5 = FUN_007f0df0(pfVar1,&local_a0,3,900,0,0,0), cVar5 != '\0')) {
          pbVar11 = local_8c;
          FUN_00499d60();
          *(float *)(param_1 + 0xbb0) = (float)pbVar11 * DAT_00baa948;
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
      }
    }
    else if (iVar7 == 8) {
      if (*(int *)(param_1 + 0x410) == 0) {
LAB_004ecd6c:
        local_74 = &PTR_s_AttackStartDown_00c5c320;
        cVar5 = FUN_0040add0();
        if (cVar5 == '\0') {
          iVar7 = *(int *)(param_1 + 0x410);
        }
        else {
          FUN_006d6ba0(0x131,0x3f800000,0x5a,0,0x3f800000);
          FUN_006d6ba0(0x130,0x3f800000,0xf,0,0x3f800000);
          *(undefined4 *)(param_1 + 0x410) = 0x3c;
          iVar7 = 0x3c;
        }
        if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
          local_74 = &PTR_s_Attack00_00c5c2f0;
        }
LAB_004ecdf1:
        if (iVar7 < 1) goto LAB_004ed33c;
      }
      else {
        iVar7 = *(int *)(param_1 + 0x9c);
        if (*(int *)(param_1 + 0x410) < 1) {
          local_74 = &PTR_s_AttackEndDown_00c5c2e0;
          if ((iVar7 != 0) && (*(char *)(param_1 + 0xac) != '\0')) goto LAB_004ed33c;
          *(undefined4 *)(param_1 + 0xb64) = 4;
          uVar6 = FUN_006eef60();
          iVar7 = -0x3c - uVar6 % 0x1e;
          *(int *)(param_1 + 0x410) = iVar7;
          goto LAB_004ecdf1;
        }
        if ((iVar7 == 0) || (*(char *)(iVar7 + 0x34) == '\0')) goto LAB_004ecd6c;
        local_74 = &PTR_s_Attack00_00c5c2f0;
      }
      if (0 < (int)local_80) {
        fVar16 = (float)(param_1 + 0x33c);
        local_7c = fVar16;
        do {
          uVar6 = *(int *)(param_1 + 0x410) - 1;
          *(uint *)(param_1 + 0x410) = uVar6;
          if ((uVar6 & 1) == 0) {
            iVar7 = FUN_006eef60();
            local_84 = (byte *)((((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)])
                                  * DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa81c +
                                *(float *)(param_1 + 0xbb0)) * DAT_00baa088);
            fVar15 = (float)local_84;
            FUN_0041d520();
            local_78 = (byte *)fVar15;
            fVar15 = (float)local_84;
            FUN_0041d540();
            local_84 = (byte *)0x1;
            local_8c = (byte *)((float)local_78 * DAT_00baa7e8);
            if (*(int *)(param_1 + 0x2c) == 1) {
              local_84 = &DAT_00000004;
            }
            local_98 = fVar15 * DAT_00baa7e8;
            local_a4 = &DAT_00c34d78;
            if (local_94 != 0x20) {
              local_a4 = &DAT_00c34e28;
            }
            local_90 = local_98;
            local_78 = local_8c;
            fVar15 = DAT_00baa54c;
            FUN_0041d540();
            local_9c = fVar15;
            fVar15 = DAT_00baa54c;
            FUN_0041d520();
            local_88 = fVar15;
            do {
              uVar8 = FUN_006eef60();
              piVar9 = (int *)FUN_00428b20(9,2,fVar16,&local_90,param_1,1,uVar8);
              (**(code **)(*piVar9 + 0x3c))(local_a4,0xffffffff,0xff);
              piVar9[0x105] = (int)((float)piVar9[0x105] * DAT_00baa280);
              if (piVar9[0xef] != 0) {
                local_a8 = piVar9 + 0xef;
                FUN_004cf210(&local_a8);
              }
              piVar9[0xef] = param_1;
              FUN_004cdcf0(piVar9 + 0xef);
              FUN_006cb2a0(piVar9);
              (**(code **)(*piVar9 + 0xc))();
              local_84 = local_84 + -1;
              fVar16 = (float)(param_1 + 0x33c);
              local_90 = local_98 * local_9c - local_88 * (float)local_78;
              local_8c = (byte *)((float)local_78 * local_9c + local_88 * local_98);
              local_98 = local_90;
              local_78 = local_8c;
            } while (local_84 != (byte *)0x0);
          }
          FUN_006be840();
          FUN_00435a50();
          fVar16 = local_7c;
          FUN_00499d60();
          uVar8 = *(undefined4 *)(param_1 + 0xbb0);
          FUN_00682a50();
          local_80 = (float)((int)local_80 + -1);
          *(undefined4 *)(param_1 + 0xbb0) = uVar8;
        } while (local_80 != 0.0);
        local_80 = 0.0;
        if (*(int *)(param_1 + 0x410) < 1) {
          *(undefined4 *)(param_1 + 0x410) = 0xffffffff;
        }
      }
    }
LAB_004ed33c:
    local_58 = 0xf;
    local_5c = 8;
    local_6c._0_1_ = s_WalkDown_00b1e044[0];
    local_6c._1_1_ = s_WalkDown_00b1e044[1];
    local_6c._2_1_ = s_WalkDown_00b1e044[2];
    local_6c._3_1_ = s_WalkDown_00b1e044[3];
    local_68._0_1_ = s_WalkDown_00b1e044[4];
    local_68._1_1_ = s_WalkDown_00b1e044[5];
    local_68._2_1_ = s_WalkDown_00b1e044[6];
    local_68._3_1_ = s_WalkDown_00b1e044[7];
    local_64 = 0;
    local_54 = DAT_00b1e020;
    local_40 = 0xf;
    local_44 = 6;
    local_50 = DAT_00b1e024;
    local_4e = 0;
    local_28 = 0xf;
    local_2c = 8;
    local_3c._0_1_ = s_WalkHori_00b1dd30[0];
    local_3c._1_1_ = s_WalkHori_00b1dd30[1];
    local_3c._2_1_ = s_WalkHori_00b1dd30[2];
    local_3c._3_1_ = s_WalkHori_00b1dd30[3];
    local_38._0_1_ = s_WalkHori_00b1dd30[4];
    local_38._1_1_ = s_WalkHori_00b1dd30[5];
    local_38._2_1_ = s_WalkHori_00b1dd30[6];
    local_38._3_1_ = s_WalkHori_00b1dd30[7];
    local_34 = 0;
    local_14 = 2;
    uStack_13 = 0;
    FUN_006c15c0(&local_3c,&local_54,&local_6c,0x3dcccccd);
    local_14 = 1;
    uVar4 = local_14;
    local_14 = 1;
    if (0xf < local_28) {
      uVar13 = local_28 + 1;
      uVar6 = local_3c;
      if (0xfff < uVar13) {
        uVar6 = *(uint *)(local_3c - 4);
        uVar13 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar6) - 4) goto LAB_004ed489;
      }
      FUN_00aef15c(uVar6,uVar13);
    }
    local_14 = 0;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar13 = local_40 + 1;
      uVar6 = local_54;
      if (0xfff < uVar13) {
        uVar6 = *(uint *)(local_54 - 4);
        uVar13 = local_40 + 0x24;
        uVar4 = local_14;
        if (0x1f < (local_54 - uVar6) - 4) goto LAB_004ed489;
      }
      FUN_00aef15c(uVar6,uVar13);
    }
    local_14 = 0xff;
    uStack_13 = 0xffffff;
    local_44 = 0;
    local_40 = 0xf;
    local_54 = local_54 & 0xffffff00;
    if (0xf < local_58) {
      uVar13 = local_58 + 1;
      uVar6 = local_6c;
      if (0xfff < uVar13) {
        uVar6 = *(uint *)(local_6c - 4);
        uVar13 = local_58 + 0x24;
        uVar4 = local_14;
        if (0x1f < (local_6c - uVar6) - 4) {
LAB_004ed489:
          local_14 = uVar4;
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar6,uVar13);
    }
    local_6d = *(undefined *)(param_1 + 0x148);
    local_5c = 0;
    local_58 = 0xf;
    local_6c = local_6c & 0xffffff00;
    iVar7 = FUN_0040b220();
    *(undefined *)(iVar7 + 0x32) = local_6d;
    *(undefined *)(param_1 + 0x148) = 0;
    if (local_74 != &PTR_s_Attack00_00c5c2f0) {
      local_7c = *(float *)(param_1 + 0xbb0) * DAT_00baa088;
      fVar16 = local_7c;
      FUN_0041d540();
      local_88 = fVar16;
      fVar16 = local_7c;
      FUN_0041d520();
      if ((float)((uint)local_88 & DAT_00bacb40) <= (float)((uint)fVar16 & DAT_00bacb40)) {
        cVar5 = (0.0 <= fVar16) * '\x02' + '\x01';
      }
      else {
        cVar5 = '\x02';
        if (local_88 < 0.0) {
          cVar5 = '\0';
        }
      }
      if (*(int *)(param_1 + 0x2c) == 1) {
        local_78 = local_74[3];
        iVar7 = FUN_0040b220();
        *(undefined *)(iVar7 + 0x32) = 0;
      }
      else if (cVar5 == '\x03') {
        local_78 = *local_74;
      }
      else if (cVar5 == '\x01') {
        local_78 = local_74[1];
      }
      else {
        local_78 = local_74[2];
        local_6d = cVar5 == '\0';
        iVar7 = FUN_0040b220();
        *(undefined *)(iVar7 + 0x32) = local_6d;
        iVar7 = FUN_0040b220();
        *(undefined *)(iVar7 + 0x32) = local_6d;
      }
      if ((local_74 == &PTR_s_HeadWalkDown_00c5c330) &&
         ((*(int *)(param_1 + 0x7c) == 0 || (*(char *)(param_1 + 0x8c) == '\0')))) {
        cVar5 = FUN_0040aaf0(local_78,1);
        if ((cVar5 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
          FUN_00408e00();
        }
      }
      else {
        ppbVar3 = *(byte ***)(param_1 + 0x9c);
        if (ppbVar3 != (byte **)0x0) {
          ppbVar10 = ppbVar3;
          pbVar11 = local_78;
          if (&DAT_0000000f < ppbVar3[5]) {
            ppbVar10 = (byte **)*ppbVar3;
          }
          do {
            bVar2 = *(byte *)ppbVar10;
            bVar14 = bVar2 < *pbVar11;
            if (bVar2 != *pbVar11) {
LAB_004ed706:
              uVar6 = -(uint)bVar14 | 1;
              goto LAB_004ed70b;
            }
            if (bVar2 == 0) break;
            bVar2 = *(byte *)((int)ppbVar10 + 1);
            bVar14 = bVar2 < pbVar11[1];
            if (bVar2 != pbVar11[1]) goto LAB_004ed706;
            ppbVar10 = (byte **)((int)ppbVar10 + 2);
            pbVar11 = pbVar11 + 2;
          } while (bVar2 != 0);
          uVar6 = 0;
LAB_004ed70b:
          if ((uVar6 == 0) &&
             ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1 + 0xac) != '\0'))))
          goto LAB_004ed822;
        }
        cVar5 = FUN_0040aaf0(local_78,1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0xac) = 1;
        }
      }
      goto LAB_004ed822;
    }
    local_7c = (DAT_00baa9b4 - *(float *)(param_1 + 0xbb0)) * DAT_00baa0b4 + DAT_00baa2d0;
    dVar17 = floor((double)local_7c);
    local_7c = (float)dVar17;
    iVar7 = 3;
    if (*(int *)(param_1 + 0x2c) != 1) {
      iVar7 = 0xc;
    }
    ppbVar3 = *(byte ***)(param_1 + 0x9c);
    local_84 = local_74[((int)dVar17 + 0xc) % iVar7];
    if (ppbVar3 == (byte **)0x0) {
LAB_004ed588:
      cVar5 = FUN_0040aaf0(local_84,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0xac) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar3;
      pbVar11 = local_84;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar10 = (byte **)*ppbVar3;
      }
      do {
        bVar2 = *(byte *)ppbVar10;
        bVar14 = bVar2 < *pbVar11;
        if (bVar2 != *pbVar11) {
LAB_004ed572:
          uVar6 = -(uint)bVar14 | 1;
          goto LAB_004ed577;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar10 + 1);
        bVar14 = bVar2 < pbVar11[1];
        if (bVar2 != pbVar11[1]) goto LAB_004ed572;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar2 != 0);
      uVar6 = 0;
LAB_004ed577:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0xac) == '\0'))))
      goto LAB_004ed588;
    }
    iVar7 = FUN_0040b220();
    *(undefined *)(iVar7 + 0x32) = 0;
    iVar7 = FUN_0040b220();
    *(undefined *)(iVar7 + 0x32) = 0;
    goto LAB_004ed822;
  }
  *(undefined4 *)(param_1 + 0xb64) = 4;
  *(undefined4 *)(param_1 + 0xbb0) = 0;
  *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x10000;
  *(undefined4 *)(param_1 + 0x410) = 0;
  *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
  ppbVar3 = *(byte ***)(param_1 + 0x9c);
  if (ppbVar3 == (byte **)0x0) {
LAB_004ed7ca:
    cVar5 = FUN_0040aaf0("HeadAppear",1);
    if (cVar5 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0xac) = 1;
    }
  }
  else {
    ppbVar10 = ppbVar3;
    if (&DAT_0000000f < ppbVar3[5]) {
      ppbVar10 = (byte **)*ppbVar3;
    }
    pcVar12 = "HeadAppear";
    do {
      bVar2 = *(byte *)ppbVar10;
      bVar14 = bVar2 < (byte)*pcVar12;
      if (bVar2 != *pcVar12) {
LAB_004ed7b4:
        uVar6 = -(uint)bVar14 | 1;
        goto LAB_004ed7b9;
      }
      if (bVar2 == 0) break;
      bVar2 = *(byte *)((int)ppbVar10 + 1);
      bVar14 = bVar2 < ((byte *)pcVar12)[1];
      if (bVar2 != ((byte *)pcVar12)[1]) goto LAB_004ed7b4;
      ppbVar10 = (byte **)((int)ppbVar10 + 2);
      pcVar12 = (char *)((byte *)pcVar12 + 2);
    } while (bVar2 != 0);
    uVar6 = 0;
LAB_004ed7b9:
    if ((uVar6 != 0) || ((*(byte *)(ppbVar3 + 0xd) != 0 && (*(char *)(param_1 + 0xac) == '\0'))))
    goto LAB_004ed7ca;
  }
  cVar5 = FUN_0040a5d0("WalkVert",1);
  if (((cVar5 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
     (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
    *(undefined *)(param_1 + 0x8c) = 0;
  }
LAB_004ed822:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

