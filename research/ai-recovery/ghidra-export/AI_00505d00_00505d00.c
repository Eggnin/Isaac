/* Local J460 decompiler output.
 * VA: 0x00505d00
 * Entry: 00505d00
 * Dispatcher: 0x006c2990
 * Types: 201
 * Identities: 201.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00506320; instructions=363
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=201; identities=201.0.0; dispatcher=0x006c2990;
   end=0x00506320; instructions=363 */

void __fastcall AI_00505d00(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  char cVar4;
  int iVar5;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  int *piVar9;
  int iVar10;
  float10 fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined auVar15 [16];
  double dVar16;
  float local_88;
  float local_84;
  double local_80;
  undefined8 local_78;
  
  iVar8 = *(int *)(param_1 + 0x3d4);
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
    *(uint *)(param_1 + 0x16c) = *(uint *)(param_1 + 0x16c) | 8;
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(undefined *)(param_1 + 0x3b0) = 1;
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    cVar4 = FUN_0040a5d0("Rotate",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
    if (iVar8 == 0) {
      iVar8 = *(int *)(DAT_00c71678 + 0x18300);
      iVar10 = (int)((*(float *)(param_1 + 0x33c) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
      if (((((-1 < iVar10) && (iVar10 < *(int *)(iVar8 + 0xc))) &&
           (iVar5 = (int)((*(float *)(param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0
                         ), -1 < iVar5)) &&
          ((iVar5 < *(int *)(iVar8 + 0x10) &&
           (uVar6 = iVar5 * *(int *)(iVar8 + 0xc) + iVar10, uVar6 < 0x1c0)))) &&
         (*(int *)(iVar8 + 0x76c + uVar6 * 4) < 0x3b7)) {
        *(undefined4 *)(iVar8 + 0x76c + uVar6 * 4) = 0x3b6;
      }
    }
    puVar7 = (undefined4 *)FUN_00407170();
    if ((undefined4 *)(param_1 + 0x1e4) != puVar7) {
      uVar1 = puVar7[1];
      uVar2 = puVar7[2];
      uVar3 = puVar7[3];
      *(undefined4 *)(param_1 + 0x1e4) = *puVar7;
      *(undefined4 *)(param_1 + 0x1e8) = uVar1;
      *(undefined4 *)(param_1 + 0x1ec) = uVar2;
      *(undefined4 *)(param_1 + 0x1f0) = uVar3;
      uVar1 = puVar7[5];
      uVar2 = puVar7[6];
      uVar3 = puVar7[7];
      *(undefined4 *)(param_1 + 500) = puVar7[4];
      *(undefined4 *)(param_1 + 0x1f8) = uVar1;
      *(undefined4 *)(param_1 + 0x1fc) = uVar2;
      *(undefined4 *)(param_1 + 0x200) = uVar3;
      *(undefined8 *)(param_1 + 0x204) = *(undefined8 *)(puVar7 + 8);
      *(undefined4 *)(param_1 + 0x20c) = puVar7[10];
    }
    *(undefined4 *)(param_1 + 500) = 0x3f800000;
    *(undefined4 *)(param_1 + 0x1f8) = 0x3f800000;
    *(undefined4 *)(param_1 + 0x1fc) = 0x3f800000;
    *(undefined4 *)(param_1 + 0x200) = 0x3f800000;
    return;
  }
  if ((*(char *)(param_1 + 0x173) != '\0') && (iVar8 == 0)) {
    iVar8 = *(int *)(DAT_00c71678 + 0x18300);
    uVar6 = FUN_00812c90();
    if ((uVar6 < 0x1c0) && (*(int *)(iVar8 + 0x76c + uVar6 * 4) < 0x3b7)) {
      *(undefined4 *)(iVar8 + 0x76c + uVar6 * 4) = 900;
    }
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  if (*(int *)(param_1 + 0xb64) != 4) {
    if (*(int *)(param_1 + 0xb64) != 3) {
      return;
    }
    iVar8 = FUN_0040a780();
    if (iVar8 != 0) {
      return;
    }
LAB_005062ff:
    if (*(int *)(param_1 + 0x7c) == 0) {
      return;
    }
    *(undefined *)(param_1 + 0x8c) = 0;
    return;
  }
  if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0')) {
    cVar4 = FUN_0040a5d0("Rotate",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
    iVar8 = FUN_006d6c20();
    if (iVar8 < 1) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
      goto LAB_005062ff;
    }
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
    auVar15 = ZEXT416((uint)(*(float *)(param_1 + 0xbb0) + DAT_00baa630));
    fVar13 = DAT_00baab30;
  }
  else {
    FUN_006d85a0();
    if (((NAN(local_88) || NAN(DAT_00c7b640)) != (local_88 == DAT_00c7b640)) &&
       ((NAN(local_84) || NAN(DAT_00c7b644)) != (local_84 == DAT_00c7b644))) {
      auVar15 = ZEXT416(*(uint *)(param_1 + 0xbb0));
      fVar13 = DAT_00baab30;
      goto LAB_00506056;
    }
    FUN_00499d60();
    floor((double)(local_84 * DAT_00baa948 * DAT_00baa2d0));
    auVar15 = ZEXT416(*(uint *)(param_1 + 0xbb0));
    FUN_00682a50();
    fVar13 = DAT_00baab30;
    fVar12 = auVar15._0_4_;
    *(float *)(param_1 + 0xbb0) = fVar12;
    if (0.0 <= fVar12) goto LAB_00506056;
    auVar15._0_4_ = fVar12 + fVar13;
  }
  *(int *)(param_1 + 0xbb0) = auVar15._0_4_;
LAB_00506056:
  if (fVar13 < auVar15._0_4_) {
    auVar15._0_4_ = auVar15._0_4_ - fVar13;
    *(float *)(param_1 + 0xbb0) = auVar15._0_4_;
  }
  fVar12 = auVar15._0_4_ * DAT_00baa088;
  fVar13 = fVar12;
  FUN_0041d520();
  local_80 = (double)fVar13;
  FUN_0041d540();
  local_78 = (double)(fVar12 * DAT_00baa2d0);
  fVar11 = (float10)_CIatan2();
  local_78 = (double)fVar11;
  fVar13 = (float)fVar11 * DAT_00baa948;
  if ((*(int *)(param_1 + 0x7c) == 0) || (FUN_00408e00(), *(int *)(param_1 + 0x7c) == 0)) {
    iVar8 = -1;
  }
  else {
    dVar16 = floor((double)*(float *)(param_1 + 0x88));
    iVar8 = (int)dVar16;
  }
  if (*(int *)(param_1 + 0x3c0) == 0) {
    uVar6 = FUN_006eef60();
    if (uVar6 % 3 == 0) {
      local_80 = -134217728.0;
      fVar14 = ((float)((iVar8 + 1) / 3) * DAT_00baa8d0 + DAT_00baaa78) * DAT_00baa088 -
               DAT_00baa54c;
      fVar12 = fVar14;
      FUN_0041d540();
      local_78 = (double)CONCAT44(local_78._4_4_,fVar12 * DAT_00baa87c + *(float *)(param_1 + 0x33c)
                                 );
      FUN_0041d520();
      local_78 = (double)CONCAT44(fVar14 * DAT_00baa848 + *(float *)(param_1 + 0x340),
                                  (undefined4)local_78);
      piVar9 = (int *)FUN_0096f310(2,&local_78,fVar13 + DAT_00baa9b4,2,&local_80,param_1,0);
      if (*(int **)(param_1 + 0x3c0) != (int *)0x0) {
        FUN_004cf210();
      }
      *(int **)(param_1 + 0x3c0) = piVar9;
      if (piVar9 != (int *)0x0) {
        FUN_004cdcf0();
      }
      piVar9[0x61] = 6;
      *(undefined *)(piVar9 + 0x146) = 1;
      (**(code **)(*piVar9 + 0xc))();
    }
  }
  else {
    iVar8 = __RTDynamicCast(*(int *)(param_1 + 0x3c0),0,
                            &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_Laser::RTTI_Type_Descriptor,0);
    fVar13 = fVar13 + DAT_00baa9b4;
    *(undefined4 *)(iVar8 + 0x420) = *(undefined4 *)(iVar8 + 0x41c);
    *(float *)(iVar8 + 0x418) = fVar13;
    *(float *)(iVar8 + 0x41c) = fVar13;
    *(float *)(iVar8 + 0xec) = fVar13 - DAT_00baa9b4;
  }
  iVar8 = FUN_006d6c20();
  if (0 < iVar8) {
    return;
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
  FUN_006d6ba0(0xd4,0x3f000000,2,0,0x3f800000);
  return;
}

