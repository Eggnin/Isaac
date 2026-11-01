/* Local J460 decompiler output.
 * VA: 0x00500990
 * Entry: 00500990
 * Dispatcher: 0x006c2990
 * Types: 825
 * Identities: 825.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00500f70; instructions=347
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=825; identities=825.0.0; dispatcher=0x006c2990;
   end=0x00500f70; instructions=347 */

void __fastcall AI_00500990(int *param_1)

{
  float *pfVar1;
  int **ppiVar2;
  int *piVar3;
  char cVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  undefined4 uVar10;
  float fVar11;
  float fVar12;
  int **ppiStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  int **ppiStack_38;
  float fStack_34;
  
  iVar9 = *(int *)(DAT_00c71678 + 0x18300);
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2d9] = 3;
    pfVar1 = (float *)(param_1 + 0xcf);
    param_1[0xcd] = (int)*pfVar1;
    param_1[0xce] = param_1[0xd0];
    FUN_004071f0(&DAT_00c34d4c);
    iVar6 = FUN_00548f30(pfVar1,pfVar1,0xffffffff);
    if (iVar6 < 0) {
      (**(code **)(*param_1 + 0x28))();
    }
    else {
      param_1[0x2f0] = iVar6;
      if (iVar6 < 0x1c0) {
        *(undefined2 *)(iVar9 + 0xe6c + iVar6 * 2) = 5;
        iVar6 = param_1[0x2f0];
      }
      fVar12 = (float)(iVar6 % *(int *)(iVar9 + 0xc)) * DAT_00baa904 + DAT_00baa904;
      fVar11 = (float)(iVar6 / *(int *)(iVar9 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
      *pfVar1 = fVar12;
      param_1[0xcd] = (int)fVar12;
      param_1[0xd0] = (int)fVar11;
      param_1[0xce] = (int)fVar11;
    }
    break;
  case 3:
    FUN_0040a380("DigIn",0);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2f0] = -1;
      if ((float)param_1[5] < (float)param_1[0xe0]) {
        param_1[0x2d9] = 4;
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        param_1[0x62] = 0;
        *(undefined *)((int)param_1 + 0x171) = 0;
      }
      else {
        param_1[0x2d9] = 6;
      }
    }
    break;
  case 4:
    uVar10 = FUN_00812c90(param_1 + 0xcf);
    uVar5 = FUN_006bec40(&ppiStack_38,0);
    ppiStack_38 = (int **)FUN_00548f30(param_1 + 0xcf,uVar5,uVar10);
    if ((int)ppiStack_38 < 0) {
      (**(code **)(*param_1 + 0x28))();
      return;
    }
    ppiStack_48 = (int **)((float)((int)ppiStack_38 % *(int *)(iVar9 + 0xc)) * DAT_00baa904 +
                          DAT_00baa904);
    fStack_40 = (float)((int)ppiStack_38 / *(int *)(iVar9 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
    iVar6 = FUN_006be840();
    iVar7 = FUN_007f0780(*(undefined4 *)(iVar6 + 0x33c),*(undefined4 *)(iVar6 + 0x340));
    fVar11 = (float)param_1[0xd0] - *(float *)(iVar6 + 0x340);
    fVar12 = (float)param_1[0xcf] - *(float *)(iVar6 + 0x33c);
    fVar11 = fVar11 * fVar11 + fVar12 * fVar12;
    FUN_00435a50();
    uVar8 = FUN_006eef60();
    if (((uVar8 & 1) == 0) && (((iVar7 != 1 || (DAT_00baa9d0 < fVar11)) && (fVar11 < DAT_00baabc4)))
       ) {
      param_1[0xcd] = (int)ppiStack_48;
      param_1[0xce] = (int)fStack_40;
      param_1[0xcf] = (int)ppiStack_48;
      param_1[0xd0] = (int)fStack_40;
    }
    if (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) == ((float)param_1[0xcd] == DAT_00c7b640))
       || ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) ==
           ((float)param_1[0xce] == DAT_00c7b644))) {
      param_1[0x2f0] = (int)ppiStack_38;
      if (ppiStack_38 < (int **)0x1c0) {
        *(undefined2 *)(iVar9 + 0xe6c + (int)ppiStack_38 * 2) = 5;
      }
      param_1[0x2d9] = 6;
      *(undefined *)((int)param_1 + 0x171) = 1;
    }
    break;
  case 6:
    FUN_0040a380("DigOut",0);
    uVar8 = param_1[0x2f0];
    param_1[0x62] = 4;
    if (-1 < (int)uVar8) {
      piVar3 = *(int **)(*(int *)(iVar9 + 4) + 0x10);
      if (((piVar3 != (int *)0x0) && (piVar3[2] == 0x10)) && (*piVar3 == 0x23)) {
LAB_00500f32:
        uVar10 = FUN_00435c70();
        (**(code **)(*param_1 + 0x24))(uVar10);
        return;
      }
      iVar6 = *(int *)(iVar9 + 0x24 + uVar8 * 4);
      if (iVar6 == 0) {
        iVar6 = *(int *)(iVar9 + 0x76c + uVar8 * 4);
        if ((iVar6 < 3000) || (3999 < iVar6)) goto LAB_00500f32;
      }
      else if (*(int *)(iVar6 + 0x3c) != 1) goto LAB_00500f32;
      if (uVar8 < 0x1c0) {
        *(undefined2 *)(iVar9 + 0xe6c + uVar8 * 2) = 5;
      }
    }
    if (param_1[0x1f] != 0) {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        iVar9 = FUN_006be840();
        ppiStack_48 = *(int ***)(iVar9 + 0x33c);
        fStack_44 = *(float *)(iVar9 + 0x340);
        fStack_40 = fStack_44;
        ppiStack_38 = ppiStack_48;
        cVar4 = FUN_00417430(0x1000a00,0);
        if (cVar4 == '\0') {
          pfVar1 = (float *)(param_1 + 0xcf);
          cVar4 = FUN_007f0df0(pfVar1,&ppiStack_48,3,999,0,0,0);
          if (cVar4 != '\0') {
            FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
            ppiStack_38 = (int **)((float)ppiStack_38 - *pfVar1);
            fStack_34 = fStack_40 - (float)param_1[0xd0];
            FUN_00a10030(&fStack_40);
            uVar10 = FUN_006eef60();
            ppiStack_38 = (int **)(fStack_40 * DAT_00baa848);
            ppiStack_48 = (int **)(fStack_40 * DAT_00baa81c + *pfVar1);
            fStack_34 = fStack_3c * DAT_00baa848;
            fStack_44 = fStack_3c * DAT_00baa81c + (float)param_1[0xd0];
            iVar9 = FUN_006fe410(0x21,10,&ppiStack_48,&ppiStack_38,param_1,1,uVar10,0);
            ppiVar2 = (int **)(iVar9 + 0x3bc);
            if (*(int *)(iVar9 + 0x3bc) != 0) {
              ppiStack_38 = ppiVar2;
              FUN_004cf210(&ppiStack_38);
            }
            *ppiVar2 = param_1;
            FUN_004cdcf0(ppiVar2);
          }
        }
      }
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    }
    param_1[0x2d9] = 3;
  }
  fVar11 = (float)param_1[0xcd];
  if (((NAN(fVar11) || NAN(DAT_00c7b640)) == (fVar11 == DAT_00c7b640)) ||
     ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644))) {
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    fVar12 = (float)param_1[0xdb] * DAT_00baa3a4;
    param_1[0xd8] = (int)(fVar11 - (float)param_1[0xcf]);
    param_1[0xdb] = (int)fVar12;
  }
  return;
}

