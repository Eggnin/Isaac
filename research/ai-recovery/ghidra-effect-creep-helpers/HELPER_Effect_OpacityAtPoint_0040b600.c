/* Local J460 decompiler output.
 * VA: 0x0040b600
 * Entry: 0040b600
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.*
 * Evidence: Effect Update 0x5EB8CC..0x5EBFA6 call site
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.*; Effect Update
   0x5EB8CC..0x5EBFA6 call site */

void HELPER_Effect_OpacityAtPoint(undefined4 *param_1,int param_2,float param_3,float param_4)

{
  int iVar1;
  int *piVar2;
  char cVar3;
  int iVar4;
  float *pfVar5;
  int **ppiVar6;
  int *extraout_ECX;
  int *extraout_ECX_00;
  int *piVar7;
  float fVar8;
  float in_XMM2_Da;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float local_190;
  float local_18c;
  float local_178;
  float local_174;
  float local_120;
  float local_11c;
  float local_118;
  float local_114;
  float local_100;
  float local_fc;
  float local_f8;
  undefined4 local_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 local_e4;
  undefined local_e0 [4];
  int *local_dc;
  undefined local_d8 [4];
  int *local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  float local_c0;
  undefined4 *local_b8;
  uint local_b4;
  float local_b0;
  int local_ac;
  float local_a8;
  int *local_a4;
  float local_a0;
  float local_9c;
  undefined local_98 [24];
  float local_80;
  float local_7c;
  char local_6c;
  float local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af0c80;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_b8 = param_1;
  local_b0 = in_XMM2_Da;
  FUN_00a0f550(0);
  iVar4 = local_a4[1];
  if ((iVar4 != 0) && (local_b4 = 0, *(int *)(iVar4 + 0x1c) != 0)) {
    local_ac = 0;
    do {
      iVar1 = *(int *)(*(int *)(iVar4 + 0x18) + 4 + local_ac);
      if ((iVar1 != 0) &&
         ((iVar4 = *(int *)(*(int *)(iVar4 + 0x18) + local_ac), param_2 < 0 || (iVar4 == param_2))))
      {
        FUN_0040bbf0(*(int *)(local_a4[2] + local_b4 * 4) * 0x6c + iVar1);
        piVar2 = local_a4;
        iVar4 = FUN_0040b220(iVar4);
        if ((local_6c != '\0') && (*(char *)(iVar4 + 0x74) != '\0')) {
          pfVar5 = (float *)FUN_00408590(local_d8);
          local_a8 = *pfVar5;
          local_14 = 0;
          piVar7 = local_d4;
          if (((local_d4 != (int *)0x0) &&
              (cVar3 = (**(code **)(*local_d4 + 0xc))(), piVar7 = extraout_ECX, cVar3 != '\0')) &&
             (DAT_00c7163c != (code *)0x0)) {
            (*DAT_00c7163c)(local_d8);
            piVar7 = extraout_ECX_00;
          }
          local_14 = 0xffffffff;
          if (local_a8 != 0.0) {
            FUN_004098a0(&local_118,piVar7,local_98,iVar4,&DAT_00c7b640,&DAT_00c7b640,*piVar2);
            FUN_00409cb0(&local_190,&stack0x00000014,local_98,iVar4,&DAT_00c7b640,&DAT_00c7b640,
                         *piVar2);
            iVar1 = *piVar2;
            fVar8 = local_3c + *(float *)(iVar4 + 0x3c);
            fVar11 = *(float *)(iVar1 + 0xa4);
            if ((NAN(fVar11) == (fVar11 == 0.0)) || (NAN(fVar8) == (fVar8 == 0.0))) {
              fVar12 = local_80 * *(float *)(iVar4 + 0x34);
              fVar10 = *(float *)(iVar1 + 0xa0);
              fVar9 = local_7c * *(float *)(iVar4 + 0x38);
              if (*(float *)(iVar1 + 0x9c) < 0.0 != fVar12 < 0.0) {
                if (*(float *)(iVar1 + 0x9c) < 0.0) {
                  fVar8 = (float)((uint)fVar8 ^ DAT_00bacb70);
                  fVar11 = (float)((uint)fVar11 ^ DAT_00bacb70);
                }
                if (fVar12 < 0.0) {
                  fVar8 = (float)((uint)fVar8 ^ DAT_00bacb70);
                }
              }
              if (*(char *)(iVar4 + 0x33) != '\0') {
                fVar9 = (float)((uint)fVar9 ^ DAT_00bacb70);
              }
              if (*(char *)(iVar1 + 0x101) != '\0') {
                fVar10 = (float)((uint)fVar10 ^ DAT_00bacb70);
              }
              if (fVar10 < 0.0 != fVar9 < 0.0) {
                if (fVar10 < 0.0) {
                  fVar8 = (float)((uint)fVar8 ^ DAT_00bacb70);
                  fVar11 = (float)((uint)fVar11 ^ DAT_00bacb70);
                }
                if (fVar9 < 0.0) {
                  fVar8 = (float)((uint)fVar8 ^ DAT_00bacb70);
                }
              }
              local_a0 = (float)((uint)(fVar8 + fVar11) ^ DAT_00bacb70) * DAT_00baa088;
              FUN_00a10760(&DAT_00c7b640);
              fVar11 = local_a0;
              FUN_0041d540();
              local_9c = fVar11;
              FUN_0041d520();
              fVar11 = local_a0 * param_3;
              param_3 = local_9c * param_3 - local_a0 * param_4;
              param_4 = local_9c * param_4 + fVar11;
            }
            local_a0 = param_3;
            local_9c = param_4;
            if (((local_190 < param_3) && (local_d0 = local_178, param_3 < local_178)) &&
               ((local_18c < param_4 && (local_a8 = local_174, param_4 < local_174)))) {
              if ((NAN(local_190) || NAN(local_178)) != (local_190 == local_178)) {
                FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
                local_9c = param_4;
              }
              fVar11 = (local_a0 - local_190) / (local_d0 - local_190);
              if (fVar11 <= DAT_00ba9fe4) {
                fVar11 = DAT_00ba9fe4;
              }
              if (DAT_00baa454 <= fVar11) {
                fVar11 = DAT_00baa454;
              }
              param_3 = (local_100 - local_118) * fVar11 + local_118;
              if ((NAN(local_18c) || NAN(local_a8)) != (local_18c == local_a8)) {
                FUN_00a112c0(0x10,"Start and End parameters cannot be the same!");
              }
              fVar11 = (local_9c - local_18c) / (local_a8 - local_18c);
              if (fVar11 <= DAT_00ba9fe4) {
                fVar11 = DAT_00ba9fe4;
              }
              if (DAT_00baa454 <= fVar11) {
                fVar11 = DAT_00baa454;
              }
              param_4 = (local_fc - local_114) * fVar11 + local_114;
              ppiVar6 = (int **)FUN_00408590(local_e0);
              local_14 = 1;
              (**(code **)(**ppiVar6 + 0x2c))(&local_cc,(int)param_3,(int)param_4);
              local_14 = 2;
              if (((local_dc != (int *)0x0) &&
                  (cVar3 = (**(code **)(*local_dc + 0xc))(), cVar3 != '\0')) &&
                 (DAT_00c7163c != (code *)0x0)) {
                (*DAT_00c7163c)(local_e0);
              }
              local_14 = 0xffffffff;
              if (local_b0 <= local_c0) {
                FUN_004071c0(*local_a4 + 0xa8);
                FUN_004072e0();
                FUN_004072e0();
                local_cc = local_120 * local_cc + local_100;
                local_c8 = local_11c * local_c8 + local_fc;
                local_c4 = local_118 * local_c4 + local_f8;
                local_c0 = local_114 * local_c0;
                FUN_00a0f720(&local_cc);
                goto LAB_0040bbc1;
              }
            }
          }
        }
      }
      local_ac = local_ac + 0x10;
      local_b4 = local_b4 + 1;
      iVar4 = local_a4[1];
      param_1 = local_b8;
    } while (local_b4 < *(uint *)(iVar4 + 0x1c));
  }
  param_1[4] = local_e4;
  *param_1 = local_f4;
  param_1[1] = uStack_f0;
  param_1[2] = uStack_ec;
  param_1[3] = uStack_e8;
LAB_0040bbc1:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

