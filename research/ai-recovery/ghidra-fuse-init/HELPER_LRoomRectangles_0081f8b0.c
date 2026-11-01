/* Local J460 decompiler output.
 * VA: 0x0081f8b0
 * Entry: 0081f8b0
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Native clamp sub-rectangles
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Native clamp sub-rectangles */

float * __thiscall HELPER_LRoomRectangles(int param_1_00,float *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  
  fVar6 = DAT_00baa904;
  fVar5 = DAT_00baa87c;
  iVar10 = *(int *)(*(int *)(*(int *)(param_1_00 + 4) + 0x10) + 0x48);
  if (iVar10 - 9U < 4) {
    iVar10 = iVar10 * 0x20;
    iVar9 = *(int *)(&DAT_00c35b80 + iVar10);
    iVar7 = *(int *)(&DAT_00c35b98 + iVar10);
    iVar1 = *(int *)(&DAT_00c35b94 + iVar10);
    iVar2 = *(int *)(&DAT_00c35b9c + iVar10);
    iVar3 = *(int *)(&DAT_00c35b84 + iVar10);
    iVar8 = *(int *)(&DAT_00c35b88 + iVar10);
    iVar4 = *(int *)(&DAT_00c35b8c + iVar10);
    iVar10 = *(int *)(&DAT_00c35b90 + iVar10);
    if ((((iVar7 < 0) || (iVar11 = *(int *)(param_1_00 + 0xc), iVar11 <= iVar7)) || (iVar2 < 0)) ||
       (*(int *)(param_1_00 + 0x10) <= iVar2)) {
      iVar11 = *(int *)(param_1_00 + 0xc);
      iVar7 = -1;
    }
    else {
      iVar7 = iVar11 * iVar2 + iVar7;
    }
    fVar12 = (float)(iVar7 % iVar11) * DAT_00baa904 + DAT_00baa904 + DAT_00baa87c;
    fVar13 = (float)(iVar7 / iVar11) * DAT_00baa904 + DAT_00baaa00 + DAT_00baa87c;
    if (((iVar10 < 0) || (iVar11 <= iVar10)) ||
       ((iVar1 < 0 || (*(int *)(param_1_00 + 0x10) <= iVar1)))) {
      iVar10 = -1;
    }
    else {
      iVar10 = iVar11 * iVar1 + iVar10;
    }
    fVar17 = ((float)(iVar10 % iVar11) * DAT_00baa904 + DAT_00baa904) - DAT_00baa87c;
    fVar18 = ((float)(iVar10 / iVar11) * DAT_00baa904 + DAT_00baaa00) - DAT_00baa87c;
    if (((iVar8 < 0) || (iVar11 <= iVar8)) ||
       ((iVar4 < 0 || (*(int *)(param_1_00 + 0x10) <= iVar4)))) {
      iVar8 = -1;
    }
    else {
      iVar8 = iVar11 * iVar4 + iVar8;
    }
    fVar16 = (float)(iVar8 / iVar11) * DAT_00baa904 + DAT_00baaa00 + DAT_00baa87c;
    if ((((iVar9 < 0) || (iVar11 <= iVar9)) || (iVar3 < 0)) ||
       (*(int *)(param_1_00 + 0x10) <= iVar3)) {
      iVar9 = -1;
    }
    else {
      iVar9 = iVar11 * iVar3 + iVar9;
    }
    fVar15 = (float)(iVar9 % iVar11) * DAT_00baa904;
    fVar14 = (float)(iVar9 / iVar11) * DAT_00baa904 + DAT_00baaa00;
    param_1[2] = (float)(iVar8 % iVar11) * DAT_00baa904 + DAT_00baa904 + DAT_00baa87c;
    param_1[3] = fVar16;
    param_1[4] = fVar17;
    param_1[5] = fVar18;
    param_1[1] = fVar14 - fVar5;
    param_1[6] = fVar12;
    *param_1 = (fVar15 + fVar6) - fVar5;
    param_1[7] = fVar13;
    return param_1;
  }
  fVar5 = *(float *)(param_1_00 + 0x14);
  fVar6 = *(float *)(param_1_00 + 0x18);
  param_1[1] = *(float *)(param_1_00 + 0x18);
  param_1[3] = *(float *)(param_1_00 + 0x20);
  fVar12 = *(float *)(param_1_00 + 0x14);
  *param_1 = fVar5;
  fVar5 = *(float *)(param_1_00 + 0x1c);
  param_1[4] = fVar12;
  param_1[5] = fVar6;
  fVar6 = *(float *)(param_1_00 + 0x20);
  param_1[2] = fVar5;
  param_1[6] = fVar5;
  param_1[7] = fVar6;
  return param_1;
}

