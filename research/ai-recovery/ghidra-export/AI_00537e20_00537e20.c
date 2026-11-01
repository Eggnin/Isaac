/* Local J460 decompiler output.
 * VA: 0x00537e20
 * Entry: 00537e20
 * Dispatcher: 0x006c2990
 * Types: 231,964
 * Identities: 231.0.0,231.1.0,964.0.0
 * Evidence: dispatcher=0x006c2990; end=0x005381c0; instructions=229
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=231,964; identities=231.0.0,231.1.0,964.0.0;
   dispatcher=0x006c2990; end=0x005381c0; instructions=229 */

void __fastcall AI_00537e20(int param_1)

{
  char cVar1;
  int iVar2;
  float *pfVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  char *pcVar8;
  float local_20;
  float local_1c;
  float local_18;
  undefined4 local_14;
  
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x80000000;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    return;
  }
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  fVar4 = *(float *)(param_1 + 0x36c) * DAT_00baa2d0;
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x36c) = fVar4;
  if (*(int *)(param_1 + 0x28) == 0xe7) {
    if (*(int *)(param_1 + 0x2c) != 0) {
      iVar2 = FUN_006be840();
      fVar4 = *(float *)(iVar2 + 0x33c) - *(float *)(param_1 + 0x33c);
      fVar5 = *(float *)(iVar2 + 0x340) - *(float *)(param_1 + 0x340);
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0')) {
        if (*(int *)(param_1 + 0xf1c) != -1) {
          pfVar3 = (float *)FUN_006d85a0(&local_20);
          fVar4 = *pfVar3;
          fVar5 = pfVar3[1];
        }
        if (((NAN(fVar4) == (fVar4 == 0.0)) && ((float)((uint)fVar5 & DAT_00bacb40) < DAT_00baa87c))
           && ((float)((uint)fVar4 & DAT_00bacb40) < DAT_00baa9a0)) {
          if (fVar4 <= 0.0) {
            if (*(int *)(param_1 + 0x7c) == 0) {
              local_14 = (float)CONCAT31(local_14._1_3_,1);
            }
            else {
              local_14 = (float)CONCAT31(local_14._1_3_,*(char *)(param_1 + 0x8c) == '\0');
            }
            pcVar8 = "SwingLeft";
          }
          else if (*(int *)(param_1 + 0x7c) == 0) {
            local_14 = (float)CONCAT31(local_14._1_3_,1);
            pcVar8 = "SwingRight";
          }
          else {
            local_14 = (float)CONCAT31(local_14._1_3_,*(char *)(param_1 + 0x8c) == '\0');
            pcVar8 = "SwingRight";
          }
          FUN_0040a380(pcVar8,local_14);
        }
      }
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar1 = FUN_0040add0(&DAT_00b1d3b0);
        if (cVar1 != '\0') {
          local_14 = 3.489233e-43;
          FUN_00956780();
          FUN_0092dc30(local_14,0x3f800000,2,0,0x3f800000,0);
          local_14 = 3.61535e-43;
          FUN_00956780();
          FUN_0092dc30(local_14,0x3f800000,2,0,0x3f4ccccd,0);
          fVar6 = *(float *)(param_1 + 0x33c) - DAT_00baa904;
          fVar4 = *(float *)(param_1 + 0x33c) + DAT_00baa904;
          fVar7 = *(float *)(param_1 + 0x340) - DAT_00baa87c;
          fVar5 = *(float *)(param_1 + 0x340) + DAT_00baa87c;
          cVar1 = FUN_0040a4d0("SwingRight");
          if (cVar1 == '\0') {
            local_18 = -40.0;
            local_14 = 0.0;
          }
          else {
            local_20 = 40.0;
            local_1c = 0.0;
          }
          pfVar3 = &local_18;
          if (cVar1 != '\0') {
            pfVar3 = &local_20;
          }
          local_20 = fVar4 + *pfVar3;
          local_18 = fVar6 + *pfVar3;
          local_1c = fVar5 + pfVar3[1];
          local_14 = fVar7 + pfVar3[1];
          FUN_006fefd0(&local_18,&local_20,param_1);
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_0053816a;
      }
    }
    FUN_0040a380(&DAT_00b1bc54,0);
  }
LAB_0053816a:
  if (*(int *)(param_1 + 0x28) == 0x3c4) {
    *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
    for (pfVar3 = *(float **)(param_1 + 8); pfVar3 != *(float **)(param_1 + 0xc);
        pfVar3 = pfVar3 + 0xe) {
      *(float *)(param_1 + 0xbb0) = *(float *)(param_1 + 0xbb0) + *pfVar3;
    }
  }
  return;
}

