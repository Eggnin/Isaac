/* Local J460 decompiler output.
 * VA: 0x0055c810
 * Entry: 0055c810
 * Dispatcher: 0x006c2990
 * Types: 814
 * Identities: 814.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0055cef0; instructions=387
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=814; identities=814.0.0; dispatcher=0x006c2990;
   end=0x0055cef0; instructions=387 */

void __fastcall AI_0055c810(int param_1)

{
  char cVar1;
  undefined4 *puVar2;
  int iVar3;
  float *pfVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  undefined local_44 [4];
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  char local_2d;
  int local_2c [5];
  uint local_18;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_40 = 0.0;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0x184) = 6;
    *(undefined4 *)(param_1 + 0x350) = 0xc1000000;
    *(undefined4 *)(param_1 + 0xbb0) = 0x42b40000;
    break;
  default:
    goto switchD_0055c84d_caseD_1;
  case 3:
    iVar3 = FUN_0055c6a0(&local_40);
    FUN_0040a380((&PTR_s_IdleLeft_00b61560)[iVar3],0);
    *(float *)(param_1 + 0xec) = local_40;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar5 = FUN_006eef60();
      if ((uVar5 & 3) != 0) goto switchD_0055c84d_caseD_1;
      iVar3 = FUN_006be840();
      cVar1 = FUN_00417430(0x200,0);
      if (cVar1 == '\0') {
        uVar5 = FUN_006eef60();
        if ((uVar5 & 1) == 0) {
          local_38 = *(float *)(iVar3 + 0x340);
          local_3c = *(float *)(iVar3 + 0x33c);
          cVar1 = FUN_007f0df0(param_1 + 0x33c,&local_3c,3,0,0,0,0);
          if (cVar1 != '\0') {
            *(float *)(param_1 + 3000) = DAT_00c7b640;
            *(float *)(param_1 + 0xbbc) = DAT_00c7b644;
            *(undefined4 *)(param_1 + 0xb64) = 4;
            goto switchD_0055c84d_caseD_1;
          }
        }
        uVar5 = FUN_006eef60();
        if (uVar5 % 3 != 0) goto switchD_0055c84d_caseD_1;
      }
      puVar2 = (undefined4 *)FUN_0067f070(&local_3c);
    }
    else {
      pfVar4 = (float *)FUN_006d82d0(&local_3c);
      if (((NAN(*pfVar4) || NAN(DAT_00c7b640)) != (*pfVar4 == DAT_00c7b640)) &&
         ((NAN(pfVar4[1]) || NAN(DAT_00c7b644)) != (pfVar4[1] == DAT_00c7b644)))
      goto switchD_0055c84d_caseD_1;
      puVar2 = (undefined4 *)FUN_006d82d0(&local_3c);
    }
    *(undefined4 *)(param_1 + 3000) = *puVar2;
    *(undefined4 *)(param_1 + 0xbbc) = puVar2[1];
    *(undefined4 *)(param_1 + 0xb64) = 4;
    goto switchD_0055c84d_caseD_1;
  case 4:
    local_34 = (float)FUN_0055c6a0(&local_38);
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0')) {
      FUN_00452bf0(local_2c);
      local_40 = 1.401298e-45;
      cVar1 = FUN_004561b0();
      if (cVar1 == '\0') goto LAB_0055caf8;
      local_2d = '\x01';
LAB_0055cb02:
      if (0xf < local_18) {
        uVar5 = local_18 + 1;
        iVar3 = local_2c[0];
        if (0xfff < uVar5) {
          iVar3 = *(int *)(local_2c[0] + -4);
          uVar5 = local_18 + 0x24;
          if (0x1f < (local_2c[0] - iVar3) - 4U) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar3,uVar5);
      }
    }
    else {
LAB_0055caf8:
      local_2d = '\0';
      if (((uint)local_40 & 1) != 0) goto LAB_0055cb02;
    }
    if (local_2d == '\0') {
      FUN_0040a380((&PTR_s_WalkLeft_00b60b00)[(int)local_34],0);
    }
    else {
      FUN_0040a5d0((&PTR_s_WalkLeft_00b60b00)[(int)local_34],0);
    }
    *(float *)(param_1 + 0xec) = local_38;
    if (*(int *)(param_1 + 0xf1c) != -1) {
      FUN_006d82d0(&local_3c);
      if (((NAN(local_3c) || NAN(DAT_00c7b640)) == (local_3c == DAT_00c7b640)) ||
         ((NAN(local_38) || NAN(DAT_00c7b644)) == (local_38 == DAT_00c7b644))) {
        *(float *)(param_1 + 3000) = local_3c;
        *(float *)(param_1 + 0xbbc) = local_38;
      }
      else {
        fVar6 = *(float *)(param_1 + 0x39c);
        fVar7 = DAT_00baa438;
        if ((NAN(fVar6) || NAN(DAT_00baa454)) == (fVar6 == DAT_00baa454)) {
          fVar7 = DAT_00baa438 / ((fVar6 + DAT_00baa438) - fVar6 * DAT_00baa438);
        }
        *(float *)(param_1 + 0xbbc) = fVar7 * *(float *)(param_1 + 0xbbc);
        *(float *)(param_1 + 3000) = fVar7 * *(float *)(param_1 + 3000);
      }
    }
    local_34 = *(float *)(param_1 + 3000);
    local_40 = *(float *)(param_1 + 0xbbc);
    if (((NAN(local_34) || NAN(DAT_00c7b640)) != (local_34 == DAT_00c7b640)) &&
       ((NAN(local_40) || NAN(DAT_00c7b644)) != (local_40 == DAT_00c7b644))) {
      iVar3 = FUN_006be840();
      local_3c = *(float *)(iVar3 + 0x33c) - *(float *)(param_1 + 0x33c);
      local_38 = *(float *)(iVar3 + 0x340) - *(float *)(param_1 + 0x340);
      pfVar4 = (float *)FUN_00a10030(local_44);
      local_34 = *pfVar4;
      local_40 = pfVar4[1];
      cVar1 = FUN_00417430(0x1000800,0);
      if (cVar1 != '\0') {
        local_34 = local_34 * DAT_00baad50;
        local_40 = local_40 * DAT_00baad50;
      }
    }
    if (((*(uint *)(param_1 + 0x168) & 0x200) != 0) && (*(int *)(param_1 + 0xf1c) == -1)) {
      local_34 = local_34 * DAT_00baa2d0;
      local_40 = local_40 * DAT_00baa2d0;
    }
    local_38 = *(float *)(param_1 + 0xbb0);
    fVar6 = local_40;
    FUN_00499d60();
    fVar7 = fVar6 * DAT_00baa948 - *(float *)(param_1 + 0xbb0);
    fVar6 = *(float *)(param_1 + 0xbb0);
    if (DAT_00baab30 < (float)((uint)fVar7 & DAT_00bacb40)) {
      FUN_00499d20();
      fVar6 = local_38;
    }
    if (fVar7 <= DAT_00baaa78) {
      if (fVar7 < DAT_00baae7c) {
        fVar7 = fVar7 + DAT_00baab30;
      }
    }
    else {
      fVar7 = fVar7 - DAT_00baab30;
    }
    fVar6 = fVar7 * DAT_00baa198 + fVar6;
    if (DAT_00baab30 < (float)((uint)fVar6 & DAT_00bacb40)) {
      FUN_00499d20();
    }
    if (fVar6 <= DAT_00baaa78) {
      if (fVar6 < DAT_00baae7c) {
        fVar6 = fVar6 + DAT_00baab30;
      }
    }
    else {
      fVar6 = fVar6 - DAT_00baab30;
    }
    *(float *)(param_1 + 0xbb0) = fVar6;
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar1 = FUN_0040add0(&DAT_00b616e4);
      if (cVar1 != '\0') {
        fVar6 = DAT_00baa804;
        if (*(int *)(param_1 + 0xf1c) == -1) {
          iVar3 = FUN_006eef60();
          fVar6 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa6fc + DAT_00baa7a4;
        }
        *(float *)(param_1 + 0x360) =
             local_34 * fVar6 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             local_40 * fVar6 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
      goto switchD_0055c84d_caseD_1;
    }
    break;
  case 6:
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0x188) = 0;
    *(undefined4 *)(param_1 + 0x360) = *(undefined4 *)(param_1 + 3000);
    *(undefined4 *)(param_1 + 0x364) = *(undefined4 *)(param_1 + 0xbbc);
    fVar6 = *(float *)(param_1 + 0x39c) * DAT_00baa354 + *(float *)(param_1 + 0xbb0);
    fVar7 = *(float *)(param_1 + 0x39c) * fVar6;
    *(float *)(param_1 + 0xbb0) = fVar6;
    fVar6 = fVar7 + *(float *)(param_1 + 0x350);
    *(float *)(param_1 + 0x350) = fVar6;
    if (fVar6 + fVar7 <= DAT_00baadb4) {
      FUN_0040a380("IdleDown",0);
      goto switchD_0055c84d_caseD_1;
    }
    *(undefined4 *)(param_1 + 0xbb0) = 0x42b40000;
    *(undefined4 *)(param_1 + 0x350) = 0xc1000000;
    *(float *)(param_1 + 0x334) = DAT_00c7b640;
    *(float *)(param_1 + 0x338) = DAT_00c7b644;
    *(undefined4 *)(param_1 + 0x184) = 6;
    *(undefined4 *)(param_1 + 0x188) = 4;
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
switchD_0055c84d_caseD_1:
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa418;
  FUN_00aef12b();
  return;
}

