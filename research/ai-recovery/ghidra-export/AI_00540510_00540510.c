/* Local J460 decompiler output.
 * VA: 0x00540510
 * Entry: 00540510
 * Dispatcher: 0x006c2990
 * Types: 258
 * Identities: 258.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00540df0; instructions=466
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=258; identities=258.0.0; dispatcher=0x006c2990;
   end=0x00540df0; instructions=466 */

void __fastcall AI_00540510(int param_1)

{
  int iVar1;
  char cVar2;
  uint uVar3;
  float *pfVar4;
  int iVar5;
  float *pfVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  char local_108 [4];
  int local_104;
  uint local_fc;
  float local_f8;
  int local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4880;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar3;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x34c) = 0;
    *(undefined4 *)(param_1 + 0x350) = 0xc1f00000;
    puStack_20 = &stack0xfffffffc;
  }
  else {
    FUN_006bec40(&local_ec,0);
    pfVar4 = (float *)(param_1 + 0x33c);
    local_f0 = local_ec - *pfVar4;
    local_e0 = local_e8 - *(float *)(param_1 + 0x340);
    local_dc = local_f0;
    local_d8 = local_e0;
    if (*(int *)(param_1 + 0xb64) == 4) {
      FUN_0040a380(&DAT_00b1bc54,0);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        fVar7 = local_e0 * _DAT_00c5c850 + local_f0 * _DAT_00c5c84c;
        fVar9 = DAT_00baae30;
        if (DAT_00baae30 < fVar7) {
          fVar9 = fVar7;
        }
        fVar8 = local_e0 * _DAT_00c5c858 + local_f0 * _DAT_00c5c854;
        fVar7 = fVar9;
        if (fVar9 < fVar8) {
          fVar7 = fVar8;
        }
        uVar3 = (uint)(fVar9 < fVar8);
        fVar9 = local_e0 * _DAT_00c5c860 + local_f0 * _DAT_00c5c85c;
        if (fVar7 < fVar9) {
          uVar3 = 2;
          fVar7 = fVar9;
        }
        if (fVar7 < local_e0 * _DAT_00c5c868 + local_f0 * _DAT_00c5c864) {
          uVar3 = 3;
        }
        fVar9 = *(float *)(&DAT_00c5c84c + uVar3 * 8) * local_f0 +
                *(float *)(&DAT_00c5c850 + uVar3 * 8) * local_e0;
        local_d4 = (float)((uint)(*(float *)(&DAT_00c5c84c + uVar3 * 8) * fVar9) ^ DAT_00bacb70);
        local_d8 = (float)((uint)(*(float *)(&DAT_00c5c850 + uVar3 * 8) * fVar9) ^ DAT_00bacb70);
        if ((((*(int *)(param_1 + 0xba0) == 0) && (uVar3 = FUN_006eef60(), uVar3 % 0xf == 0)) &&
            (fVar9 = (local_ec + local_d4) - *pfVar4,
            fVar7 = (local_e8 + local_d8) - *(float *)(param_1 + 0x340),
            fVar7 * fVar7 + fVar9 * fVar9 < DAT_00baabe0)) &&
           (local_f0 * local_f0 + local_e0 * local_e0 < DAT_00baac9c)) {
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0xba0) = 0x1e;
        }
        local_d4 = (local_ec + local_d4 * DAT_00baa3a4) - *pfVar4;
        local_d8 = (local_e8 + local_d8 * DAT_00baa3a4) - *(float *)(param_1 + 0x340);
        fVar8 = local_d4 * local_d4 + local_d8 * local_d8;
        FUN_00435a50();
        fVar7 = local_d4;
        fVar9 = local_d8;
        if (DAT_00ba9fe4 < fVar8) {
          fVar7 = (DAT_00baa2b8 / fVar8) * local_d4;
          fVar9 = (DAT_00baa2b8 / fVar8) * local_d8;
        }
        *(float *)(param_1 + 0x360) =
             fVar7 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             fVar9 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
        FUN_0041a790(local_108,pfVar4,4);
        local_14 = 0;
        if (local_fc != 0) {
          iVar5 = 0;
          uVar3 = 0;
          local_f4 = 0;
          local_f0 = local_f0 * local_f0 + local_e0 * local_e0;
          if (local_f0 <= 0.0) {
            local_f0 = 0.0;
          }
          if (DAT_00baac34 <= local_f0) {
            local_f0 = DAT_00baac34;
          }
          local_f0 = local_f0 / DAT_00baac34;
          local_f8 = DAT_00c7b640;
          local_e0 = DAT_00c7b644;
          fVar9 = DAT_00baac34;
          if (local_fc != 0) {
            do {
              iVar1 = *(int *)(local_104 + uVar3 * 4);
              fVar8 = *(float *)(param_1 + 0x33c) - *(float *)(iVar1 + 0x33c);
              fVar10 = *(float *)(param_1 + 0x340) - *(float *)(iVar1 + 0x340);
              local_d8 = *(float *)(iVar1 + 0x364);
              fVar7 = *(float *)(iVar1 + 0x360);
              if (0.0 < fVar7 * fVar8 + local_d8 * fVar10) {
                local_e8 = DAT_00baa454 - (fVar10 * fVar10 + fVar8 * fVar8) / fVar9;
                local_d4 = (float)((uint)fVar7 ^ DAT_00bacb70);
                if ((float)((uint)fVar7 ^ DAT_00bacb70) * fVar10 + local_d8 * fVar8 < 0.0) {
                  local_d8 = (float)((uint)local_d8 ^ DAT_00bacb70);
                  local_d4 = fVar7;
                }
                fVar8 = local_d4 * local_d4 + local_d8 * local_d8;
                FUN_00435a50();
                fVar7 = local_d4;
                fVar9 = local_d8;
                if (0.0 < fVar8) {
                  fVar8 = (local_e8 * DAT_00baa2d0 * local_f0) / fVar8;
                  fVar7 = local_d4 * fVar8;
                  fVar9 = local_d8 * fVar8;
                }
                local_f8 = fVar9 + local_f8;
                local_e0 = fVar7 + local_e0;
                iVar5 = local_f4 + 1;
                fVar9 = DAT_00baac34;
                local_f4 = iVar5;
              }
              uVar3 = uVar3 + 1;
            } while (uVar3 < local_fc);
            if (0 < iVar5) {
              if ((*(char *)(param_1 + 400) == '\0') ||
                 (uVar3 = FUN_006eef60(), iVar5 = local_f4, (uVar3 & 1) != 0)) {
                *(float *)(param_1 + 0x360) =
                     (local_f8 / (float)iVar5) * *(float *)(param_1 + 0x39c) +
                     *(float *)(param_1 + 0x360);
                *(float *)(param_1 + 0x364) =
                     (local_e0 / (float)iVar5) * *(float *)(param_1 + 0x39c) +
                     *(float *)(param_1 + 0x364);
              }
              else {
                fVar9 = (float)((uint)(local_f8 / (float)local_f4) ^ DAT_00bacb70);
                fVar7 = (float)((uint)(local_e0 / (float)local_f4) ^ DAT_00bacb70);
                *(float *)(param_1 + 0x360) =
                     (fVar9 + fVar9) * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
                *(float *)(param_1 + 0x364) =
                     (fVar7 + fVar7) * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
              }
            }
          }
        }
        local_14 = 0xffffffff;
        if (local_108[0] == '\0') {
          local_14 = 1;
          FUN_00a648b0(0,0);
        }
      }
      else {
        pfVar4 = (float *)FUN_006d82d0(&local_ec);
        fVar9 = pfVar4[1] * DAT_00baa2b8;
        *(float *)(param_1 + 0x360) =
             *pfVar4 * DAT_00baa2b8 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             fVar9 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
        if ((*(int *)(param_1 + 0xba0) == 0) && (cVar2 = FUN_006cae60(0,7), cVar2 != '\0')) {
          FUN_006d9050(1);
          *(undefined4 *)(param_1 + 0xb64) = 8;
          *(undefined4 *)(param_1 + 0xba0) = 0x1e;
        }
      }
    }
    else if (*(int *)(param_1 + 0xb64) == 8) {
      FUN_0040a380("Shooting",0);
      FUN_006d9050(0);
      if ((*(int *)(param_1 + 0x7c) != 0) && (cVar2 = FUN_0040add0("Shoot"), cVar2 != '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        pfVar6 = (float *)(param_1 + 0xf20);
        if (((NAN(*pfVar6) || NAN(DAT_00c7b640)) != (*pfVar6 == DAT_00c7b640)) &&
           ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) !=
            (*(float *)(param_1 + 0xf24) == DAT_00c7b644))) {
          pfVar6 = &local_dc;
        }
        local_d4 = *pfVar6;
        local_d8 = pfVar6[1];
        local_e8 = (float)AI_0043ef30(uVar3);
        fVar9 = local_d8 * local_d8 + local_d4 * local_d4;
        FUN_00435a50();
        if (fVar9 <= DAT_00ba9fe4) {
          local_e4 = local_d4;
          local_e0 = local_d8;
        }
        else {
          local_e0 = (DAT_00baa81c / fVar9) * local_d8;
          local_e4 = (DAT_00baa81c / fVar9) * local_d4;
        }
        FUN_006cb2e0(pfVar4,&local_e4,0,local_e8);
        FUN_006d6ba0(0x92,0x3f800000,2,0,0x3f800000);
      }
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    if (0 < *(int *)(param_1 + 0xba0)) {
      *(int *)(param_1 + 0xba0) =
           ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
           *(int *)(param_1 + 0xba0);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

