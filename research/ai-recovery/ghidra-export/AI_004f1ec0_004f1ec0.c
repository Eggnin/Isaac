/* Local J460 decompiler output.
 * VA: 0x004f1ec0
 * Entry: 004f1ec0
 * Dispatcher: 0x006c2990
 * Types: 890
 * Identities: 890.0.0,890.0.1
 * Evidence: dispatcher=0x006c2990; end=0x004f2c20; instructions=799
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=890; identities=890.0.0,890.0.1; dispatcher=0x006c2990;
   end=0x004f2c20; instructions=799 */

void __fastcall AI_004f1ec0(float param_1)

{
  char cVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  uint *puVar6;
  float **ppfVar7;
  float *pfVar8;
  int iVar9;
  float fVar10;
  float fVar11;
  undefined auStack_e0 [4];
  float fStack_dc;
  float fStack_d8;
  float *pfStack_d4;
  float *pfStack_d0;
  float *pfStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  undefined auStack_b8 [148];
  undefined4 uStack_24;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_e0;
  switch(*(undefined4 *)((int)param_1 + 0xb64)) {
  case 0:
    *(uint *)((int)param_1 + 0x168) = *(uint *)((int)param_1 + 0x168) | 0x10000;
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    *(undefined4 *)((int)param_1 + 0x16c) = *(undefined4 *)((int)param_1 + 0x16c);
    if (((-1 < *(int *)((int)param_1 + 0x32c)) || (cVar1 = FUN_00417430(0,0x80), cVar1 != '\0')) &&
       (*(int *)((int)param_1 + 0x30) == 0)) {
      FUN_00812d00(&pfStack_d4);
      fStack_dc = ((float)pfStack_d4 + (float)pfStack_d4) - *(float *)((int)param_1 + 0x33c);
      fStack_d8 = ((float)pfStack_d0 + (float)pfStack_d0) - *(float *)((int)param_1 + 0x340);
      piVar2 = (int *)FUN_006fe410(0x37a,0,&fStack_dc,&DAT_00c7b640,param_1,1,
                                   *(undefined4 *)((int)param_1 + 0x3ec),0);
      FUN_006c0f30(*(undefined4 *)((int)param_1 + 0x28),*(undefined4 *)((int)param_1 + 0x2c),1,
                   *(undefined4 *)((int)param_1 + 0xc64));
      cVar1 = FUN_00417430(0,0x80);
      if (cVar1 != '\0') {
        piVar2[0x5b] = piVar2[0x5b] | 0x80;
        piVar2[0x5a] = piVar2[0x5a];
      }
      (**(code **)(*piVar2 + 0xc))();
      if (*(int *)((int)param_1 + 0x3c0) != 0) {
        pfStack_cc = (float *)((int)param_1 + 0x3c0);
        FUN_004cf210(&pfStack_cc);
      }
      *(int **)((int)param_1 + 0x3c0) = piVar2;
      FUN_004cdcf0((int **)((int)param_1 + 0x3c0));
      pfVar8 = (float *)(piVar2 + 0xef);
      if (piVar2[0xef] != 0) {
        pfStack_cc = pfVar8;
        FUN_004cf210(&pfStack_cc);
      }
      *pfVar8 = param_1;
      FUN_004cdcf0(pfVar8);
      FUN_00aef12b();
      return;
    }
    break;
  case 3:
    pfStack_d4 = (float *)((int)param_1 + 0x33c);
    FUN_004cdd80(pfStack_d4,900);
    iVar9 = FUN_006be840();
    fStack_dc = *(float *)(iVar9 + 0x33c);
    fStack_d8 = *(float *)(iVar9 + 0x340);
    FUN_007e33c0(&fStack_dc,0x3f800000,900,1);
    if (DAT_00baa454 <=
        *(float *)((int)param_1 + 0x360) * *(float *)((int)param_1 + 0x360) +
        *(float *)((int)param_1 + 0x364) * *(float *)((int)param_1 + 0x364)) {
      iVar9 = FUN_0067f260();
      *(int *)((int)param_1 + 0xbc0) = iVar9;
      FUN_0040a380((&PTR_s_WalkLeft2_00b60b20)[iVar9],0);
    }
    else {
      *(undefined4 *)((int)param_1 + 0xbc0) = 0xffffffff;
      FUN_0040a6e0("WalkDown2",0);
    }
    cVar1 = FUN_006ac710(3,*(undefined4 *)((int)param_1 + 0x20));
    if (((cVar1 != '\0') && (cVar1 = FUN_00417430(0x1000a00,0), cVar1 == '\0')) &&
       ((cVar1 = FUN_00417430(0x20000000,0), cVar1 == '\0' ||
        (iVar9 = FUN_006be840(), *(int *)(iVar9 + 0x28) != 1)))) {
      iVar9 = FUN_006be840();
      fStack_c8 = *(float *)(iVar9 + 0x33c);
      fStack_dc = *(float *)(iVar9 + 0x340);
      iVar9 = FUN_006be840();
      pfStack_cc = *(float **)(iVar9 + 0x360);
      fStack_c0 = *(float *)(iVar9 + 0x364);
      iVar9 = FUN_006eef60();
      fVar10 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa85c;
      fStack_c8 = (float)pfStack_cc * fVar10 + fStack_c8;
      fStack_c4 = fStack_c0 * fVar10 + fStack_dc;
      FUN_00812f50(&fStack_dc,&fStack_c8,0x41a00000,0x41a00000,0x41a00000);
      iVar9 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
      fStack_c0 = (float)(*(int *)((int)param_1 + 0x434) % iVar9) * DAT_00baa904 + DAT_00baa904;
      fStack_bc = (float)(*(int *)((int)param_1 + 0x434) / iVar9) * DAT_00baa904 + DAT_00baaa00;
      fVar11 = fStack_c0 - fStack_dc;
      fVar10 = fStack_bc - fStack_d8;
      if (((float)((uint)fVar11 & DAT_00bacb40) < DAT_00baa87c) ||
         ((float)((uint)fVar10 & DAT_00bacb40) < DAT_00baa87c)) {
        fVar10 = fVar10 * fVar10 + fVar11 * fVar11;
        FUN_00435a50();
        if ((fVar10 < DAT_00baaa94) &&
           (cVar1 = FUN_007f0df0(&fStack_c0,&fStack_dc,3,999,0,0,0), cVar1 != '\0')) {
          *(undefined4 *)((int)param_1 + 0xb64) = 9;
          *(undefined4 *)((int)param_1 + 0x410) = 0;
          pfStack_d0 = (float *)(fStack_d8 - pfStack_d4[1]);
          pfStack_d4 = (float *)(fStack_dc - *pfStack_d4);
          iVar9 = FUN_0067f260();
          *(int *)((int)param_1 + 0xbc0) = iVar9;
          FUN_0040a380((&PTR_s_AttackLeft2_00b60b10)[iVar9],0);
          FUN_00aef12b();
          return;
        }
      }
    }
    break;
  case 4:
    if ((*(int *)((int)param_1 + 0x3c0) == 0) && (*(int *)((int)param_1 + 0x3bc) == 0)) {
      FUN_0040a380("Transition",0);
      *(undefined4 *)((int)param_1 + 0xb64) = 0x10;
      FUN_00aef12b();
      return;
    }
    if (*(int *)((int)param_1 + 0x30) == 0) {
      cVar1 = FUN_006ac710(0x1e,*(undefined4 *)((int)param_1 + 0x20));
      if ((cVar1 != '\0') && (uVar3 = FUN_006eef60(), uVar3 % 3 == 0)) {
        FUN_006d6ba0(0x74,0x3f4ccccd,0x78,0,0x3f800000);
      }
      pfStack_cc = (float *)((int)param_1 + 0x33c);
      uVar4 = FUN_00812c90(pfStack_cc);
      FUN_004565e0(uVar4,900);
      FUN_007e6ff0();
      FUN_007e5340(0x3fa00000,0);
      *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
      if (DAT_00baa454 <=
          *(float *)((int)param_1 + 0x360) * *(float *)((int)param_1 + 0x360) +
          *(float *)((int)param_1 + 0x364) * *(float *)((int)param_1 + 0x364)) {
        uVar3 = FUN_0067f260();
        *(uint *)((int)param_1 + 0xbc0) = uVar3;
LAB_004f259c:
        FUN_0040a380((&PTR_s_WalkLeft_00b60b00)[uVar3],0);
      }
      else {
        *(undefined4 *)((int)param_1 + 0xbc0) = 0xffffffff;
        FUN_0040a6e0("WalkDown",0);
      }
    }
    else {
      FUN_00812d00(&pfStack_d4);
      fVar10 = *(float *)(*(int *)((int)param_1 + 0x3bc) + 0x33c);
      fVar11 = *(float *)(*(int *)((int)param_1 + 0x3bc) + 0x340);
      pfStack_cc = (float *)((int)param_1 + 0x33c);
      *(undefined4 *)((int)param_1 + 0x184) = 0;
      *(float *)((int)param_1 + 0x360) =
           (((float)pfStack_d4 + (float)pfStack_d4) - fVar10) - *pfStack_cc;
      *(float *)((int)param_1 + 0x364) =
           (((float)pfStack_d0 + (float)pfStack_d0) - fVar11) - *(float *)((int)param_1 + 0x340);
      uVar4 = FUN_00812c90(pfStack_cc);
      FUN_004565e0(uVar4,900);
      FUN_007e6ff0();
      iVar9 = FUN_00447770();
      iVar9 = *(int *)(iVar9 + 0xbc0);
      *(int *)((int)param_1 + 0xbc0) = iVar9;
      if (iVar9 != -1) {
        uVar3 = iVar9 + 2U & 0x80000003;
        if ((int)uVar3 < 0) {
          uVar3 = (uVar3 - 1 | 0xfffffffc) + 1;
        }
        goto LAB_004f259c;
      }
      FUN_0040a6e0("WalkDown",0);
    }
    cVar1 = FUN_006ac710(3,*(undefined4 *)((int)param_1 + 0x20));
    if (((cVar1 != '\0') && (cVar1 = FUN_00417430(0x1000a00,0), cVar1 == '\0')) &&
       ((cVar1 = FUN_00417430(0x20000000,0), cVar1 == '\0' ||
        (iVar9 = FUN_006be840(), *(int *)(iVar9 + 0x28) != 1)))) {
      iVar9 = FUN_006be840();
      fStack_dc = *(float *)(iVar9 + 0x33c);
      fStack_c8 = *(float *)(iVar9 + 0x340);
      iVar9 = FUN_006be840();
      pfStack_d4 = *(float **)(iVar9 + 0x360);
      fStack_c0 = *(float *)(iVar9 + 0x364);
      iVar9 = FUN_006eef60();
      fVar10 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa85c;
      fStack_dc = (float)pfStack_d4 * fVar10 + fStack_dc;
      fStack_d8 = fStack_c0 * fVar10 + fStack_c8;
      FUN_00812f50(&pfStack_d4,&fStack_dc,0x41a00000,0x41a00000,0x41a00000);
      iVar9 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
      fStack_dc = (float)(*(int *)((int)param_1 + 0x434) % iVar9) * DAT_00baa904 + DAT_00baa904;
      fStack_d8 = (float)(*(int *)((int)param_1 + 0x434) / iVar9) * DAT_00baa904 + DAT_00baaa00;
      fVar11 = fStack_dc - (float)pfStack_d4;
      fVar10 = fStack_d8 - (float)pfStack_d0;
      if (((float)((uint)fVar11 & DAT_00bacb40) < DAT_00baa87c) ||
         ((float)((uint)fVar10 & DAT_00bacb40) < DAT_00baa87c)) {
        fVar10 = fVar10 * fVar10 + fVar11 * fVar11;
        FUN_00435a50();
        if ((fVar10 < DAT_00baaa94) &&
           (cVar1 = FUN_007f0df0(&fStack_dc,&pfStack_d4,3,999,0,0,0), cVar1 != '\0')) {
          *(undefined4 *)((int)param_1 + 0xb64) = 8;
          *(undefined4 *)((int)param_1 + 0x410) = 0;
          fStack_dc = (float)pfStack_d4 - *pfStack_cc;
          fStack_d8 = (float)pfStack_d0 - pfStack_cc[1];
          iVar9 = FUN_0067f260();
          *(int *)((int)param_1 + 0xbc0) = iVar9;
          FUN_0040a380((&PTR_s_AttackLeft_00b60af0)[iVar9],0);
          *(undefined4 *)((int)param_1 + 0xbc4) = 0;
          iVar9 = FUN_004567e0();
          if (iVar9 == 0) {
            iVar9 = FUN_00447770();
          }
          else {
            iVar9 = FUN_004567e0();
          }
          if (iVar9 != 0) {
            *(undefined4 *)(iVar9 + 0xb64) = 8;
            *(undefined4 *)(iVar9 + 0x410) = 0;
            *(undefined4 *)(iVar9 + 0xbc0) = *(undefined4 *)((int)param_1 + 0xbc0);
            *(undefined4 *)(iVar9 + 0xbc4) = 1;
            uVar3 = *(int *)((int)param_1 + 0xbc0) + 2U & 0x80000003;
            if ((int)uVar3 < 0) {
              uVar3 = (uVar3 - 1 | 0xfffffffc) + 1;
            }
            FUN_0040a380((&PTR_s_AttackLeft_00b60af0)[uVar3],0);
            FUN_00aef12b();
            return;
          }
        }
      }
    }
    break;
  case 8:
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      cVar1 = FUN_0040add0("Shoot");
      if (cVar1 != '\0') {
        iVar9 = FUN_00447770();
        if (iVar9 == 0) {
          iVar9 = FUN_004567e0();
        }
        else {
          iVar9 = FUN_00447770();
        }
        if ((*(int *)((int)param_1 + 0xbc4) == 0) || (iVar9 == 0)) {
          if ((*(int *)((int)param_1 + 0xf1c) == -1) ||
             (cVar1 = FUN_00a10630(&DAT_00c7b640), cVar1 == '\0')) {
            iVar9 = FUN_006be840();
            pfVar8 = &fStack_c8;
            fStack_dc = *(float *)(iVar9 + 0x33c) - *(float *)((int)param_1 + 0x33c);
            fStack_d8 = *(float *)(iVar9 + 0x340) - *(float *)((int)param_1 + 0x340);
          }
          else {
            pfVar8 = &fStack_c0;
          }
          ppfVar7 = (float **)FUN_00a10100(pfVar8,0x41200000);
          pfStack_d4 = *ppfVar7;
          pfStack_d0 = ppfVar7[1];
        }
        else {
          if ((*(int *)(iVar9 + 0xf1c) == -1) ||
             (cVar1 = FUN_00a10630(&DAT_00c7b640), cVar1 == '\0')) {
            iVar5 = FUN_006be840();
            pfVar8 = &fStack_c8;
            fStack_dc = *(float *)(iVar5 + 0x33c) - *(float *)(iVar9 + 0x33c);
            fStack_d8 = *(float *)(iVar5 + 0x340) - *(float *)(iVar9 + 0x340);
          }
          else {
            pfVar8 = &fStack_c0;
          }
          puVar6 = (uint *)FUN_00a10100(pfVar8,0x41200000);
          pfStack_d4 = (float *)(*puVar6 ^ DAT_00bacb70);
          pfStack_d0 = (float *)(puVar6[1] ^ DAT_00bacb70);
        }
        AI_0043ef30();
        uStack_24 = 0x10;
        FUN_006d6ba0(0x1ca,0x3f800000,2,0,0x3f800000);
        FUN_006cb2e0((int)param_1 + 0x33c,&pfStack_d4,0,auStack_b8);
      }
      if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
      goto LAB_004f2a55;
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    goto LAB_004f2a55;
  case 9:
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      cVar1 = FUN_0040add0("Shoot");
      if (cVar1 != '\0') {
        if ((*(int *)((int)param_1 + 0xf1c) == -1) ||
           (cVar1 = FUN_00a10630(&DAT_00c7b640), cVar1 == '\0')) {
          iVar9 = FUN_006be840();
          pfStack_d4 = (float *)(*(float *)(iVar9 + 0x33c) - *(float *)((int)param_1 + 0x33c));
          pfStack_d0 = (float *)(*(float *)(iVar9 + 0x340) - *(float *)((int)param_1 + 0x340));
          pfVar8 = (float *)FUN_00a10100(&fStack_c8,0x41200000);
        }
        else {
          pfVar8 = (float *)FUN_00a10100(&fStack_c0,0x41200000);
        }
        fStack_dc = *pfVar8;
        fStack_d8 = pfVar8[1];
        AI_0043ef30();
        uStack_24 = 0x10;
        FUN_006d6ba0(0x1ca,0x3f800000,2,0,0x3f800000);
        FUN_006cb2e0((int)param_1 + 0x33c,&fStack_dc,0,auStack_b8);
      }
      if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
      goto LAB_004f2a55;
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
LAB_004f2a55:
    *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa1f8;
    FUN_00aef12b();
    return;
  case 0x10:
    fVar10 = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
    *(undefined4 *)((int)param_1 + 0x184) = 5;
    *(float *)((int)param_1 + 0x36c) = fVar10;
    if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
      *(undefined4 *)((int)param_1 + 0xb64) = 3;
    }
  }
  FUN_00aef12b();
  return;
}

