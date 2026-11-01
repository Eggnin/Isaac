/* Local J460 decompiler output.
 * VA: 0x0045d7d0
 * Entry: 0045d7d0
 * Dispatcher: 0x006c2990
 * Types: 267
 * Identities: 267.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0045e050; instructions=536
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=267; identities=267.0.0; dispatcher=0x006c2990;
   end=0x0045e050; instructions=536 */

void __fastcall AI_0045d7d0(int param_1)

{
  float *pfVar1;
  char cVar2;
  byte bVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  byte **ppbVar7;
  int *piVar8;
  byte *pbVar9;
  bool bVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  undefined local_c0 [4];
  undefined4 local_bc;
  undefined4 local_b8;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  *(undefined4 *)(param_1 + 0x184) = 2;
  iVar4 = FUN_006be840();
  pfVar1 = (float *)(param_1 + 0x33c);
  local_fc = *(float *)(iVar4 + 0x33c) - *pfVar1;
  local_f8 = *(float *)(iVar4 + 0x340) - *(float *)(param_1 + 0x340);
  iVar4 = *(int *)(param_1 + 0xb64);
  if (iVar4 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x410) = 0;
    FUN_00aef12b();
    return;
  }
  *(undefined4 *)(param_1 + 0x36c) = 0x3f4ccccd;
  if (iVar4 != 10) {
    uVar6 = *(undefined4 *)(param_1 + 0x370);
    FUN_00812f50(&local_f4,pfVar1,uVar6,uVar6,uVar6);
    *pfVar1 = local_f4;
    *(float *)(param_1 + 0x340) = local_f0;
    iVar4 = *(int *)(param_1 + 0xb64);
  }
  if (iVar4 == 4) {
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    FUN_0040a380(&DAT_00b1dce4,0);
    FUN_007e6650(0);
    if (((*(uint *)(param_1 + 0x16c) & 0x10000000) == 0) ||
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
      cVar2 = FUN_006ac710(0x3c,*(undefined4 *)(param_1 + 0x20));
      if ((cVar2 == '\0') || (bVar3 = FUN_006eef60(), 2 < (bVar3 & 3))) {
        bVar10 = false;
      }
      else {
        bVar10 = true;
      }
      if ((((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) && (!bVar10)) ||
         (0.0 < *(float *)(DAT_00c71678 + 0x26518))) {
        cVar2 = FUN_006ac710(10,*(undefined4 *)(param_1 + 0x20));
        if ((cVar2 == '\0') || (uVar5 = FUN_006eef60(), uVar5 % 6 != 0)) {
          if (((((DAT_00baa87c <= (float)((uint)local_f8 & DAT_00bacb40)) ||
                (cVar2 = FUN_006ac710(10,*(undefined4 *)(param_1 + 0x20)), cVar2 == '\0')) ||
               (uVar5 = FUN_006eef60(), (uVar5 & 1) != 0)) &&
              (((*(float *)(DAT_00c71678 + 0x26518) <= 0.0 ||
                (cVar2 = FUN_006ac710(10,*(undefined4 *)(param_1 + 0x20)), cVar2 == '\0')) ||
               (uVar5 = FUN_006eef60(), uVar5 % 5 != 0)))) ||
             (cVar2 = FUN_00417430(0x1000a00,0), cVar2 != '\0')) {
            if ((((float)((uint)local_fc & DAT_00bacb40) < DAT_00baa904) && (0.0 < local_f8)) &&
               ((cVar2 = FUN_006ac710(10,*(undefined4 *)(param_1 + 0x20)), cVar2 != '\0' &&
                (uVar5 = FUN_006eef60(), (uVar5 & 1) == 0)))) {
              *(undefined4 *)(param_1 + 0xb64) = 9;
              *(undefined4 *)(param_1 + 0x410) = 0;
              uVar6 = FUN_004238f0(0x3f4ccccd);
              fVar11 = DAT_00baa54c;
              FUN_0041d540();
              fVar12 = DAT_00baa54c;
              local_f4 = fVar11;
              FUN_0041d520();
              local_f0 = fVar12;
              FUN_0060b890(&local_f4,0x16,uVar6,0x40800000);
            }
          }
          else {
            FUN_006d6ba0(0x77,0x3f800000,2,0,0x3f800000);
            *(bool *)(param_1 + 0x148) = local_fc < 0.0;
            cVar2 = FUN_0040a5d0("Charge",1);
            if (cVar2 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x8c) = 1;
            }
            *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
            *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
            *(undefined4 *)(param_1 + 0xb64) = 10;
            *(undefined4 *)(param_1 + 0x410) = 0;
          }
        }
        else {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
      }
      else {
        *(undefined4 *)(param_1 + 0xb64) = 0x10;
        *(undefined4 *)(param_1 + 0x410) = 0;
        FUN_006d6ba0(0x68,0x3f800000,2,0,0x3f800000);
      }
    }
    goto LAB_0045e004;
  }
  if (iVar4 == 8) {
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    ppbVar7 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar7 == (byte **)0x0) {
LAB_0045dc27:
      cVar2 = FUN_0040a5d0(&DAT_00b1d2cc,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar7[5]) {
        ppbVar7 = (byte **)*ppbVar7;
      }
      pbVar9 = &DAT_00b1d2cc;
      do {
        bVar3 = *(byte *)ppbVar7;
        bVar10 = bVar3 < *pbVar9;
        if (bVar3 != *pbVar9) {
LAB_0045dc07:
          uVar5 = -(uint)bVar10 | 1;
          goto LAB_0045dc0c;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar7 + 1);
        bVar10 = bVar3 < pbVar9[1];
        if (bVar3 != pbVar9[1]) goto LAB_0045dc07;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pbVar9 = pbVar9 + 2;
      } while (bVar3 != 0);
      uVar5 = 0;
LAB_0045dc0c:
      if ((uVar5 != 0) ||
         ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' && (*(char *)(param_1 + 0x8c) == '\0')
          ))) goto LAB_0045dc27;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000);
        AI_0043ef30();
        local_bc = 0xc1880000;
        local_b8 = 0x3fa66666;
        local_f4 = 9.0;
        local_f0 = 12.0;
        FUN_006cb2e0(param_1 + 0x33c,&local_f4,9,local_c0);
      }
LAB_0045dde8:
      if (*(int *)(param_1 + 0x7c) != 0) {
        if (*(char *)(param_1 + 0x8c) == '\0') {
          *(undefined4 *)(param_1 + 0xb64) = 4;
          *(undefined4 *)(param_1 + 0x410) = 0;
        }
        goto LAB_0045e004;
      }
    }
  }
  else if (iVar4 == 9) {
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    ppbVar7 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar7 == (byte **)0x0) {
LAB_0045dd40:
      cVar2 = FUN_0040a5d0(&DAT_00b1d2ec,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar7[5]) {
        ppbVar7 = (byte **)*ppbVar7;
      }
      pbVar9 = &DAT_00b1d2ec;
      do {
        bVar3 = *(byte *)ppbVar7;
        bVar10 = bVar3 < *pbVar9;
        if (bVar3 != *pbVar9) {
LAB_0045dd20:
          uVar5 = -(uint)bVar10 | 1;
          goto LAB_0045dd25;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar7 + 1);
        bVar10 = bVar3 < pbVar9[1];
        if (bVar3 != pbVar9[1]) goto LAB_0045dd20;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pbVar9 = pbVar9 + 2;
      } while (bVar3 != 0);
      uVar5 = 0;
LAB_0045dd25:
      if ((uVar5 != 0) ||
         ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' && (*(char *)(param_1 + 0x8c) == '\0')
          ))) goto LAB_0045dd40;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        local_f4 = 0.0;
        local_100 = *(float *)(param_1 + 0x33c) + 0.0;
        local_f0 = -20.0;
        local_fc = *(float *)(param_1 + 0x340) + DAT_00baa784;
        piVar8 = (int *)FUN_0096f310(1,&local_100,0x42b40000,10,&local_f4,param_1,0);
        (**(code **)(*piVar8 + 0xc))();
      }
      goto LAB_0045dde8;
    }
  }
  else {
    if (iVar4 != 10) {
      if (iVar4 == 0x10) {
        FUN_0040a380("Darkness",0);
        *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
        iVar4 = DAT_00c71678;
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          *(undefined4 *)(param_1 + 0xb64) = 4;
          *(undefined4 *)(param_1 + 0x410) = 0;
          *(undefined4 *)(iVar4 + 0x2651c) = 0x3f800000;
          *(undefined4 *)(iVar4 + 0x26514) = 0xb4;
        }
      }
      goto LAB_0045e004;
    }
    cVar2 = FUN_0040b030("Charge");
    if (cVar2 != '\0') {
      *(undefined4 *)(param_1 + 0x410) = 1;
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      FUN_0040a380("Charge Shake",0);
    }
    fVar12 = DAT_00baa9d0;
    fVar11 = DAT_00baa280;
    if (0 < *(int *)(param_1 + 0x410)) {
      uVar6 = DAT_00baa884;
      if (*(char *)(param_1 + 0x148) != '\0') {
        uVar6 = DAT_00baadf0;
      }
      fVar14 = (float)((uint)local_f8 ^ DAT_00bacb70) / DAT_00baa9d0;
      *(undefined4 *)(param_1 + 0x360) = uVar6;
      fVar13 = fVar11;
      if ((fVar11 < fVar14) || (fVar13 = fVar14, DAT_00baad24 <= fVar14)) {
        *(float *)(param_1 + 0x364) =
             *(float *)(param_1 + 0x364) -
             (*(float *)(param_1 + 0x39c) * fVar13) / *(float *)(param_1 + 0x36c);
      }
      else {
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * fVar11) / *(float *)(param_1 + 0x36c) +
             *(float *)(param_1 + 0x364);
      }
    }
    fVar11 = *(float *)(param_1 + 0x360);
    fVar13 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14);
    fVar14 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c);
    if ((fVar11 <= 0.0) || (*pfVar1 <= fVar14 + fVar12)) {
      if ((fVar11 < 0.0) && (fVar13 = fVar13 - fVar12, *pfVar1 <= fVar13 && fVar13 != *pfVar1)) {
        *pfVar1 = fVar14 + fVar12;
        goto LAB_0045df5e;
      }
    }
    else {
      *pfVar1 = fVar13 - fVar12;
LAB_0045df5e:
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
    }
    if ((*(int *)(param_1 + 0x410) < 3) ||
       (((0.0 <= fVar11 ||
         (*(float *)(param_1 + 0x334) < *pfVar1 || *(float *)(param_1 + 0x334) == *pfVar1)) &&
        ((fVar11 <= 0.0 ||
         (*pfVar1 < *(float *)(param_1 + 0x334) || *pfVar1 == *(float *)(param_1 + 0x334)))))))
    goto LAB_0045e004;
  }
  *(undefined4 *)(param_1 + 0xb64) = 4;
  *(undefined4 *)(param_1 + 0x410) = 0;
LAB_0045e004:
  if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
     (*(float *)(param_1 + 0x340) <= DAT_00baab14 && DAT_00baab14 != *(float *)(param_1 + 0x340))) {
    *(undefined4 *)(param_1 + 0x340) = 0x43a00000;
  }
  FUN_00aef12b();
  return;
}

