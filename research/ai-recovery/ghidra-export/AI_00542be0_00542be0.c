/* Local J460 decompiler output.
 * VA: 0x00542be0
 * Entry: 00542be0
 * Dispatcher: 0x006c2990
 * Types: 300
 * Identities: 300.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005430d0; instructions=304
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=300; identities=300.0.0; dispatcher=0x006c2990;
   end=0x005430d0; instructions=304 */

void __fastcall AI_00542be0(int param_1)

{
  float *pfVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  float *pfVar5;
  undefined4 uVar6;
  float fVar7;
  float fStack_bc;
  float fStack_b8;
  uint local_8;
  
  fVar7 = DAT_00baa1d4;
  local_8 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  iVar3 = *(int *)(param_1 + 0xb64);
  if (iVar3 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar4 = FUN_006eef60();
      iVar3 = (uVar4 % 5 + 1) * 0x1e;
    }
    else {
      iVar3 = 0x1e;
    }
    *(int *)(param_1 + 0x410) = iVar3;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    FUN_00aef12b();
    return;
  }
  if ((0.0 < *(float *)(param_1 + 0x14)) && (iVar3 == 3)) {
    pfVar5 = *(float **)(param_1 + 8);
    pfVar1 = *(float **)(param_1 + 0xc);
    if (pfVar5 != pfVar1) {
      do {
        *pfVar5 = *pfVar5 * fVar7;
        pfVar5 = pfVar5 + 0xe;
      } while (pfVar5 != pfVar1);
      iVar3 = *(int *)(param_1 + 0xb64);
    }
  }
  switch(iVar3) {
  case 3:
    if (*(int *)(param_1 + 0xbc0) == 0) {
      FUN_0040a380(&DAT_00b1d5b0,0);
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
      }
    }
    else {
      FUN_0040a380("Blocking",0);
      *(int *)(param_1 + 0x410) =
           *(int *)(param_1 + 0x410) +
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
      if ((*(int *)(param_1 + 0x410) < 1) &&
         (((*(int *)(param_1 + 0xf1c) == -1 || (cVar2 = FUN_006cae60(0,7), cVar2 != '\0')) ||
          (cVar2 = FUN_006d8260(9), cVar2 != '\0')))) {
        uVar4 = FUN_006eef60();
        *(uint *)(param_1 + 0xb64) = uVar4 & 1 | 8;
        if (*(int *)(param_1 + 0xf1c) != -1) {
          cVar2 = FUN_006d8260(9);
          *(uint *)(param_1 + 0xb64) = (cVar2 != '\0') + 8;
          FUN_006d9050(1);
        }
      }
    }
  default:
    goto LAB_00543055;
  case 8:
  case 9:
    if (*(int *)(param_1 + 0xf1c) == -1) {
      *(float *)(param_1 + 0xf20) = DAT_00c7b640;
      fVar7 = DAT_00c7b644;
code_r0x00542e09:
      *(float *)(param_1 + 0xf24) = fVar7;
    }
    else {
      FUN_006d85a0(&fStack_bc);
      if (((NAN(fStack_bc) || NAN(DAT_00c7b640)) == (fStack_bc == DAT_00c7b640)) ||
         ((NAN(fStack_b8) || NAN(DAT_00c7b644)) == (fStack_b8 == DAT_00c7b644))) {
        *(float *)(param_1 + 0xf20) = fStack_bc;
        fVar7 = fStack_b8;
        goto code_r0x00542e09;
      }
    }
    if ((*(int *)(param_1 + 0xf1c) != -1) &&
       (((NAN(*(float *)(param_1 + 0xf20)) || NAN(DAT_00c7b640)) ==
         (*(float *)(param_1 + 0xf20) == DAT_00c7b640) ||
        ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
         (*(float *)(param_1 + 0xf24) == DAT_00c7b644))))) {
      fVar7 = *(float *)(param_1 + 0xf24);
      FUN_00499d60();
      *(uint *)(param_1 + 0xb64) =
           ((int)((fVar7 * DAT_00baa948 + DAT_00baab30 + DAT_00baa888) / DAT_00baa910) & 1U) + 8;
    }
    FUN_0040a380("Reveal",0);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
        uVar6 = AI_0043ef30();
        fStack_bc = 7.0;
        fStack_b8 = 0.0;
        FUN_006cb2e0(param_1 + 0x33c,&fStack_bc,(*(int *)(param_1 + 0xb64) == 9) + '\x06',uVar6);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_00543055;
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar4 = FUN_006eef60();
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      iVar3 = (uVar4 % 3 + 1) * 0x1e;
    }
    else {
      iVar3 = 0x1e;
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
    }
    break;
  case 0x10:
    if (0 < *(int *)(param_1 + 0x410)) {
      FUN_0040a380("Revealed",0);
      *(int *)(param_1 + 0x410) =
           *(int *)(param_1 + 0x410) +
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
      if (*(int *)(param_1 + 0x410) < 1) {
        if ((*(int *)(param_1 + 0xf1c) != -1) &&
           ((cVar2 = FUN_006cae60(0,7), cVar2 != '\0' || (cVar2 = FUN_006d8260(9), cVar2 != '\0'))))
        {
          *(undefined4 *)(param_1 + 0x410) = 1;
        }
        if (*(int *)(param_1 + 0x410) < 1) {
          FUN_006d6ba0(0x26,0x3f000000,2,0,0x3f800000);
        }
      }
      goto LAB_00543055;
    }
    FUN_0040a380(&DAT_00b1d5b0,0);
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_00543055;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar4 = FUN_006eef60();
      iVar3 = (uVar4 % 5 + 1) * 0x1e;
    }
    else {
      iVar3 = 0x1e;
    }
  }
  *(int *)(param_1 + 0x410) = iVar3;
LAB_00543055:
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  FUN_00aef12b();
  return;
}

