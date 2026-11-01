/* Local J460 decompiler output.
 * VA: 0x00506320
 * Entry: 00506320
 * Dispatcher: 0x006c2990
 * Types: 202
 * Identities: 202.0.0,202.10.0,202.10.1,202.11.0,202.11.1
 * Evidence: dispatcher=0x006c2990; end=0x00506bd0; instructions=503
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=202;
   identities=202.0.0,202.10.0,202.10.1,202.11.0,202.11.1; dispatcher=0x006c2990; end=0x00506bd0;
   instructions=503 */

void __fastcall AI_00506320(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  float fVar5;
  int iVar6;
  char cVar7;
  int iVar8;
  char *pcVar9;
  undefined4 *puVar10;
  byte **ppbVar11;
  uint uVar12;
  float *pfVar13;
  undefined4 uVar14;
  byte *pbVar15;
  bool bVar16;
  float fVar17;
  float local_c8;
  float local_c4;
  float local_c0;
  float local_bc;
  byte *local_b8;
  undefined local_b4 [4];
  undefined4 local_b0;
  float local_a8;
  float local_a4;
  uint local_8;
  
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if (*(int *)(param_1 + 0xb74) == 1) {
    if (((*(int *)(param_1 + 0x3d4) == 0) && (*(char *)(param_1 + 0x173) == '\0')) &&
       (-1 < *(int *)(param_1 + 0x434))) {
      FUN_004565e0(*(int *)(param_1 + 0x434),3999);
      FUN_00aef12b();
      return;
    }
    goto LAB_00506b7e;
  }
  iVar8 = *(int *)(param_1 + 0xb64);
  if (iVar8 != 0) {
    if (iVar8 == 3) {
      if ((*(int *)(param_1 + 0x2c) == 10) || (*(int *)(param_1 + 0x2c) == 0xb)) {
        local_b8 = &DAT_00b601c4;
        ppbVar2 = *(byte ***)(param_1 + 0x7c);
        if (*(int *)(param_1 + 0x30) != 0) {
          local_b8 = &DAT_00b1d428;
        }
        if (ppbVar2 == (byte **)0x0) {
LAB_0050670c:
          cVar7 = FUN_0040a5d0(local_b8,1);
          if (cVar7 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
        else {
          ppbVar11 = ppbVar2;
          pbVar15 = local_b8;
          if (&DAT_0000000f < ppbVar2[5]) {
            ppbVar11 = (byte **)*ppbVar2;
          }
          do {
            bVar1 = *(byte *)ppbVar11;
            bVar16 = bVar1 < *pbVar15;
            if (bVar1 != *pbVar15) {
LAB_005066f0:
              uVar12 = -(uint)bVar16 | 1;
              goto LAB_005066f5;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar11 + 1);
            bVar16 = bVar1 < pbVar15[1];
            if (bVar1 != pbVar15[1]) goto LAB_005066f0;
            ppbVar11 = (byte **)((int)ppbVar11 + 2);
            pbVar15 = pbVar15 + 2;
          } while (bVar1 != 0);
          uVar12 = 0;
LAB_005066f5:
          if ((uVar12 != 0) ||
             ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
          goto LAB_0050670c;
        }
        if (*(int *)(param_1 + 0xba0) < 1) {
          pcVar9 = "ShootAndRotate1";
          *(undefined4 *)(param_1 + 0xb64) = 8;
          if (*(int *)(param_1 + 0x30) != 0) {
            pcVar9 = "ShootAndRotate2";
          }
          cVar7 = FUN_0040a5d0(pcVar9,1);
          if (cVar7 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
        }
      }
      else {
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          switch(*(undefined4 *)(param_1 + 0x30)) {
          case 0:
            pcVar9 = "IdleLeft";
            break;
          case 1:
            pcVar9 = "IdleUp";
            break;
          case 2:
            pcVar9 = "IdleRight";
            break;
          case 3:
            pcVar9 = "IdleDown";
            break;
          default:
            goto LAB_00506629;
          }
          FUN_0040a380(pcVar9,0);
        }
LAB_00506629:
        if (*(int *)(param_1 + 0xba0) < 1) {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          switch(*(undefined4 *)(param_1 + 0x30)) {
          case 0:
            FUN_0040a380("ShootLeft",0);
            break;
          case 1:
            FUN_0040a380("ShootUp",0);
            break;
          case 2:
            FUN_0040a380("ShootRight",0);
            break;
          case 3:
            FUN_0040a380("ShootDown",0);
          }
        }
      }
      if (0 < *(int *)(param_1 + 0xba0)) {
        *(int *)(param_1 + 0xba0) =
             ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
             *(int *)(param_1 + 0xba0);
      }
    }
    else if (iVar8 == 8) {
      if ((*(int *)(param_1 + 0x2c) == 10) || (*(int *)(param_1 + 0x2c) == 0xb)) {
        if (*(int *)(param_1 + 0x7c) == 0) {
LAB_00506a0e:
          *(undefined4 *)(param_1 + 0xb64) = 3;
          *(uint *)(param_1 + 0x30) = (uint)(*(int *)(param_1 + 0x30) == 0);
        }
        else {
          cVar7 = FUN_0040add0("Shoot");
          if (cVar7 != '\0') {
            FUN_006d6ba0(0x106,0x3f800000,0,0,0x3f800000);
            uVar14 = AI_0043ef30();
            local_c0 = 10.0;
            local_bc = 0.0;
            FUN_006cb2e0(param_1 + 0x33c,&local_c0,(*(int *)(param_1 + 0x30) != 0) + '\x06',uVar14);
          }
          if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
          goto LAB_00506a0e;
        }
        iVar8 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                             *(undefined4 *)(DAT_00c71678 + 0x1830c));
        if (((*(uint *)(iVar8 + 0x44) >> 1 & 1) != 0) ||
           (((*(int *)(param_1 + 0x2c) == 10 && (iVar8 = FUN_006d6c20(), iVar8 < 1)) &&
            (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec) < 1)))) {
          pcVar9 = "CloseEyes1";
          if (*(int *)(param_1 + 0x30) != 0) {
            pcVar9 = "CloseEyes2";
          }
          cVar7 = FUN_0040a5d0(pcVar9,1);
          if (cVar7 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
          *(undefined4 *)(param_1 + 0xb64) = 0x10;
        }
      }
      else {
        AI_0043ef30();
        local_a8 = local_a8 - _DAT_00baa128;
        local_b0 = 0x41500000;
        local_a4 = local_a4 * _DAT_00baa488;
        cVar7 = FUN_0040b030("Shoot");
        if (cVar7 != '\0') {
          local_b8 = DAT_00c7b640;
          local_c4 = DAT_00c7b644;
          pfVar13 = (float *)FUN_0040b1d0("Bullet");
          pbVar15 = local_b8;
          if (pfVar13 != (float *)0x0) {
            local_c4 = pfVar13[1] / DAT_00baa324;
            pbVar15 = (byte *)(*pfVar13 / DAT_00baa324);
          }
          local_c0 = *(float *)(param_1 + 0xbb0) * DAT_00baa7b8;
          local_c8 = (float)pbVar15 + *(float *)(param_1 + 0x33c);
          local_c4 = local_c4 + *(float *)(param_1 + 0x340);
          local_bc = *(float *)(param_1 + 0xbb4) * DAT_00baa7b8;
          FUN_006cb2e0(&local_c8,&local_c0,0,local_b4);
          FUN_006d6ba0(0x106,0x3f800000,2,0,0x3f800000);
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 3;
          switch(*(undefined4 *)(param_1 + 0x30)) {
          case 0:
            pcVar9 = "IdleDown";
            break;
          case 1:
            pcVar9 = "IdleUp";
            break;
          case 2:
            pcVar9 = "IdleLeft";
            break;
          case 3:
            pcVar9 = "IdleRight";
            break;
          default:
            goto LAB_0050694d;
          }
          FUN_0040a380(pcVar9,0);
        }
LAB_0050694d:
        iVar8 = FUN_00740db0();
        if ((*(uint *)(iVar8 + 0x44) >> 1 & 1) != 0) {
          FUN_0040a380("CloseEyes",0);
          *(undefined4 *)(param_1 + 0xb64) = 0x10;
        }
      }
    }
    else if ((iVar8 == 0x10) &&
            ((*(int *)(param_1 + 0x7c) == 0 || (*(char *)(param_1 + 0x8c) == '\0')))) {
      if ((*(int *)(param_1 + 0x2c) == 10) || (*(int *)(param_1 + 0x2c) == 0xb)) {
        pcVar9 = "ClosedEyes1";
        if (*(int *)(param_1 + 0x30) != 0) {
          pcVar9 = "ClosedEyes2";
        }
        cVar7 = FUN_0040a5d0(pcVar9,1);
        if (cVar7 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        FUN_0040a380("ClosedEyes",0);
      }
    }
    goto LAB_00506b10;
  }
  FUN_007e6ff0();
  iVar6 = DAT_00c71678;
  fVar5 = DAT_00baa904;
  iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
  *(undefined *)(param_1 + 0x3b0) = 1;
  *(undefined4 *)(param_1 + 0xf18) = 1;
  fVar17 = (float)(*(int *)(param_1 + 0x434) / iVar8) * fVar5 + DAT_00baaa00;
  *(float *)(param_1 + 0x334) = (float)(*(int *)(param_1 + 0x434) % iVar8) * fVar5 + fVar5;
  *(float *)(param_1 + 0x338) = fVar17;
  *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x40000001;
  *(uint *)(param_1 + 0x16c) = *(uint *)(param_1 + 0x16c) | 0x2008;
  switch(*(undefined4 *)(param_1 + 0x30)) {
  case 0:
    *(undefined **)(param_1 + 0xbb0) = &DAT_bf800000;
    *(undefined4 *)(param_1 + 0xbb4) = 0;
    break;
  case 1:
    *(undefined **)(param_1 + 0xbb4) = &DAT_bf800000;
    goto LAB_00506470;
  case 2:
    *(undefined4 *)(param_1 + 0xbb0) = 0x3f800000;
    *(undefined4 *)(param_1 + 0xbb4) = 0;
    break;
  case 3:
    *(undefined4 *)(param_1 + 0xbb4) = 0x3f800000;
LAB_00506470:
    *(undefined4 *)(param_1 + 0xbb0) = 0;
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
  if ((*(int *)(param_1 + 0x2c) == 10) || (*(int *)(param_1 + 0x2c) == 0xb)) {
    *(undefined4 *)(param_1 + 0xba0) = 0x16;
    iVar8 = FUN_00740bc0(*(undefined4 *)(iVar6 + 0x18304),*(undefined4 *)(iVar6 + 0x1830c));
    if (((*(uint *)(iVar8 + 0x44) >> 1 & 1) != 0) ||
       (((*(int *)(param_1 + 0x2c) == 10 && (iVar8 = FUN_006d6c20(), iVar8 < 1)) &&
        (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec) < 1)))) {
      pcVar9 = "ClosedEyes1";
      if (*(int *)(param_1 + 0x30) != 0) {
        pcVar9 = "ClosedEyes2";
      }
      cVar7 = FUN_0040a5d0(pcVar9,1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      goto LAB_00506546;
    }
  }
  else {
    *(undefined4 *)(param_1 + 0xba0) = 0x14;
    iVar8 = FUN_00740bc0(*(undefined4 *)(iVar6 + 0x18304),*(undefined4 *)(iVar6 + 0x1830c));
    if ((*(uint *)(iVar8 + 0x44) >> 1 & 1) != 0) {
      FUN_0040a380("ClosedEyes",0);
LAB_00506546:
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
    }
  }
  puVar10 = (undefined4 *)FUN_00407170();
  if ((undefined4 *)(param_1 + 0x1e4) != puVar10) {
    uVar14 = puVar10[1];
    uVar3 = puVar10[2];
    uVar4 = puVar10[3];
    *(undefined4 *)(param_1 + 0x1e4) = *puVar10;
    *(undefined4 *)(param_1 + 0x1e8) = uVar14;
    *(undefined4 *)(param_1 + 0x1ec) = uVar3;
    *(undefined4 *)(param_1 + 0x1f0) = uVar4;
    uVar14 = puVar10[5];
    uVar3 = puVar10[6];
    uVar4 = puVar10[7];
    *(undefined4 *)(param_1 + 500) = puVar10[4];
    *(undefined4 *)(param_1 + 0x1f8) = uVar14;
    *(undefined4 *)(param_1 + 0x1fc) = uVar3;
    *(undefined4 *)(param_1 + 0x200) = uVar4;
    *(undefined8 *)(param_1 + 0x204) = *(undefined8 *)(puVar10 + 8);
    *(undefined4 *)(param_1 + 0x20c) = puVar10[10];
  }
  *(undefined4 *)(param_1 + 500) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x1f8) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x1fc) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x200) = 0x3f800000;
LAB_00506b10:
  if ((*(char *)(param_1 + 0x173) != '\0') && (-1 < *(int *)(param_1 + 0x32c))) {
    FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),0xffffffff);
    FUN_004e45c0(&local_c0,param_1 + 0x32c);
  }
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
LAB_00506b7e:
  FUN_00aef12b();
  return;
}

