/* Local J460 decompiler output.
 * VA: 0x00525650
 * Entry: 00525650
 * Dispatcher: 0x006c2990
 * Types: 53
 * Identities: 53.0.0,53.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00526470; instructions=811
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=53; identities=53.0.0,53.1.0; dispatcher=0x006c2990;
   end=0x00526470; instructions=811 */

void __fastcall AI_00525650(int param_1)

{
  char cVar1;
  float *pfVar2;
  undefined4 uVar3;
  char *pcVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float local_f8;
  float local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  int local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  undefined local_c1;
  undefined local_c0 [8];
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_ac;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_e4 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
    *(undefined4 *)(param_1 + 0xba4) = 0;
    *(undefined4 *)(param_1 + 0xba0) = 0;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    if (*(int *)(param_1 + 0x2c) == 0) {
      *(undefined4 *)(param_1 + 0xbc4) = 1;
      *(undefined4 *)(param_1 + 0x184) = 5;
      FUN_00aef12b();
      return;
    }
    *(undefined4 *)(param_1 + 0x184) = 3;
    FUN_00aef12b();
    return;
  }
  local_dc = (float)FUN_006be840();
  if ((local_dc == 0.0) || (*(int *)((int)local_dc + 0x28) != 1)) {
    local_f0 = 0.0;
    if ((float)((uint)*(float *)((int)local_dc + 0x360) & DAT_00bacb40) <=
        (float)((uint)*(float *)((int)local_dc + 0x364) & DAT_00bacb40)) {
      iVar5 = (uint)(0.0 <= *(float *)((int)local_dc + 0x364)) * 2 + 1;
    }
    else {
      iVar5 = 2;
      if (*(float *)((int)local_dc + 0x360) < 0.0) {
        iVar5 = 0;
      }
    }
  }
  else {
    iVar5 = *(int *)((int)local_dc + 0x1628);
    local_f0 = local_dc;
  }
  local_e0 = 0.0;
  local_d4 = 0.0;
  local_d8 = DAT_00baa454;
  if (*(int *)(param_1 + 0xf1c) == -1) {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa380;
    local_cc = *(float *)((int)local_dc + 0x33c);
    local_e8 = *(float *)((int)local_dc + 0x340);
    FUN_00812d00(&local_f8);
    local_c8 = (float)(iVar5 + 2U & 0x80000003);
    if ((int)local_c8 < 0) {
      local_c8 = (float)(((int)local_c8 - 1U | 0xfffffffc) + 1);
    }
    if (((*(uint *)(param_1 + 0x168) & 0x200) != 0) &&
       (local_c8 = (float)((int)local_c8 + 2U & 0x80000003), (int)local_c8 < 0)) {
      local_c8 = (float)(((int)local_c8 - 1U | 0xfffffffc) + 1);
    }
    local_f8 = local_f8 * DAT_00baa630;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    *(float *)(param_1 + 0x33c) = local_f8 - local_cc;
    *(float *)(param_1 + 0x340) = local_f4 * DAT_00baa630 - local_e8;
    fVar8 = (float)(*(uint *)((int)local_dc + 0x360) ^ DAT_00bacb70);
    fVar6 = (float)(*(uint *)((int)local_dc + 0x364) ^ DAT_00bacb70);
    *(float *)(param_1 + 0x360) = fVar8 + fVar8;
    *(float *)(param_1 + 0x364) = fVar6 + fVar6;
  }
  else {
    FUN_006d82d0(&local_d0);
    local_e0 = local_d0;
    local_d4 = local_cc;
    local_c8 = *(float *)(param_1 + 0x360) * DAT_00baa2d0;
    *(float *)(param_1 + 0x360) = local_c8;
    local_dc = *(float *)(param_1 + 0x364) * DAT_00baa2d0;
    *(float *)(param_1 + 0x364) = local_dc;
    fVar8 = DAT_00baa388;
    FUN_00435a50();
    local_e8 = local_e0 * DAT_00baa2d0;
    iVar5 = 2;
    local_cc = local_d4 * DAT_00baa2d0;
    local_f4 = fVar8;
    do {
      if ((NAN(local_e0) == (local_e0 == 0.0)) || (NAN(local_d4) == (local_d4 == 0.0))) {
        fVar6 = local_c8 * local_e0 + local_dc * local_d4;
        fVar7 = fVar6 * local_d4;
        fVar6 = fVar6 * local_e0;
        fVar8 = DAT_00baa3a4;
        FUN_00435a50();
        local_dc = (local_dc - fVar7) * fVar8 + fVar7;
        local_c8 = (local_c8 - fVar6) * fVar8 + fVar6;
        fVar8 = local_f4;
      }
      fVar6 = *(float *)(param_1 + 0x39c);
      fVar7 = (local_dc * local_d4 + local_c8 * local_e0) * DAT_00baad0c;
      if (fVar7 <= 0.0) {
        fVar7 = 0.0;
      }
      fVar9 = (fVar7 + DAT_00baa6fc) * DAT_00baa280;
      fVar9 = (fVar9 * DAT_00baa1d4 - fVar9) * 0.0 + fVar9;
      fVar7 = fVar8;
      if ((NAN(fVar6) || NAN(local_d8)) == (fVar6 == local_d8)) {
        fVar7 = fVar8 / ((fVar6 + fVar8) - fVar6 * fVar8);
      }
      local_dc = (local_cc * fVar9 * fVar6 + local_dc) * fVar7;
      local_c8 = (local_e8 * fVar9 * fVar6 + local_c8) * fVar7;
      *(float *)(param_1 + 0x364) = local_dc;
      *(float *)(param_1 + 0x360) = local_c8;
      iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    *(float *)(param_1 + 0x360) = local_c8 + local_c8;
    *(float *)(param_1 + 0x364) = local_dc + local_dc;
    pfVar2 = (float *)FUN_006d85a0(&local_d0);
    if (((NAN(*pfVar2) || NAN(DAT_00c7b640)) == (*pfVar2 == DAT_00c7b640)) ||
       ((NAN(pfVar2[1]) || NAN(DAT_00c7b644)) == (pfVar2[1] == DAT_00c7b644))) {
      pfVar2 = (float *)FUN_006d85a0(&local_d0);
      if ((float)((uint)*pfVar2 & DAT_00bacb40) <= (float)((uint)pfVar2[1] & DAT_00bacb40)) {
        local_c8 = (float)((uint)(0.0 <= pfVar2[1]) * 2 + 1);
      }
      else {
        local_c8 = 2.802597e-45;
        if (*pfVar2 < 0.0) {
          local_c8 = 0.0;
        }
      }
    }
    else {
      fVar8 = *(float *)(param_1 + 0x364);
      fVar6 = *(float *)(param_1 + 0x360);
      if (fVar6 * fVar6 + fVar8 * fVar8 <= DAT_00baa06c) {
        local_c8 = 4.203895e-45;
      }
      else if ((float)((uint)fVar6 & DAT_00bacb40) <= (float)((uint)fVar8 & DAT_00bacb40)) {
        local_c8 = (float)((uint)(0.0 <= fVar8) * 2 + 1);
      }
      else {
        local_c8 = 2.802597e-45;
        if (fVar6 < 0.0) {
          local_c8 = 0.0;
        }
      }
    }
  }
  if (0 < *(int *)(param_1 + 0xba0)) {
    *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) - local_e4;
  }
  if (0 < *(int *)(param_1 + 0xba4)) {
    *(int *)(param_1 + 0xba4) = *(int *)(param_1 + 0xba4) - local_e4;
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
    if (local_f0 != 0.0) {
      if (*(int *)((int)local_f0 + 0x13e0) == 0) {
        iVar5 = 0;
      }
      else {
        iVar5 = (int)*(float *)(*(int *)((int)local_f0 + 0x13e0) + 0xc);
      }
      if (*(int *)(param_1 + 0xbc0) < iVar5) goto LAB_00525d33;
      goto LAB_00525f84;
    }
  }
  else {
    cVar1 = FUN_006cae60(0,7);
    if (cVar1 != '\0') {
LAB_00525d33:
      if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) && (*(int *)(param_1 + 0xba0) < 1)) {
        AI_0043ef30();
        local_b8 = 0x3f800000;
        local_b4 = 0xbdced917;
        local_ac = 0x3fb33333;
        FUN_0067f1d0();
        if (*(int *)(param_1 + 0xf1c) != -1) {
          FUN_006d85a0(&local_f8);
          pfVar2 = (float *)FUN_0067f170();
          local_d0 = *pfVar2;
          local_cc = pfVar2[1];
        }
        fVar6 = *(float *)(param_1 + 0x360) * DAT_00baa304;
        fVar7 = *(float *)(param_1 + 0x364) * DAT_00baa304;
        fVar8 = fVar7 * local_cc + fVar6 * local_d0;
        fVar9 = local_cc * fVar8;
        fVar8 = local_d0 * fVar8;
        if (fVar8 * local_d0 + fVar9 * local_cc < 0.0) {
          fVar6 = fVar6 - fVar8;
          fVar7 = fVar7 - fVar9;
        }
        local_ec = *(float *)(param_1 + 0x33c);
        local_d0 = local_d0 * DAT_00baa81c + fVar6;
        local_e8 = *(float *)(param_1 + 0x340);
        local_cc = local_cc * DAT_00baa81c + fVar7;
        if (*(int *)(param_1 + 0xbc4) != 0) {
          iVar5 = FUN_006eef60();
          fVar8 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa198 + DAT_00baa1f8;
          local_ec = local_ec - (float)*(int *)(param_1 + 0xbc4) * local_cc * fVar8;
          local_e8 = local_e8 - (float)*(int *)(param_1 + 0xbc4) * local_d0 * fVar8;
        }
        if (*(int *)(param_1 + 0x2c) == 1) {
          *(undefined4 *)(param_1 + 0xba0) = 0x1e;
          uVar3 = 2;
        }
        else {
          if (*(int *)(param_1 + 0xf1c) != -1) {
            *(undefined4 *)(param_1 + 0xba0) = 10;
          }
          uVar3 = 0;
        }
        FUN_006cb2e0(&local_ec,&local_d0,uVar3,local_c0);
        *(undefined4 *)(param_1 + 0xba4) = 3;
        *(int *)(param_1 + 0xbc4) = -*(int *)(param_1 + 0xbc4);
      }
    }
    if (local_f0 != 0.0) {
LAB_00525f84:
      if (*(int *)((int)local_f0 + 0x13e0) == 0) {
        iVar5 = 0;
      }
      else {
        iVar5 = (int)*(float *)(*(int *)((int)local_f0 + 0x13e0) + 0xc);
      }
      *(int *)(param_1 + 0xbc0) = iVar5;
    }
  }
  local_e4 = *(int *)(param_1 + 0xba4);
  if (local_c8 == 4.203895e-45) {
    local_cc = 2.802597e-45;
    if (local_e4 < 1) {
      local_cc = 0.0;
    }
    cVar1 = FUN_0040aaf0("HeadDown",1);
    if ((cVar1 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
      FUN_00408e00();
    }
  }
  else if (local_c8 == 1.401298e-45) {
    cVar1 = FUN_0040aaf0("HeadUp",1);
    if ((cVar1 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
      FUN_00408e00();
    }
  }
  else {
    cVar1 = FUN_0040aaf0("HeadHori",1);
    if ((cVar1 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
      FUN_00408e00();
    }
    local_c1 = local_c8 == 0.0;
    iVar5 = FUN_0040b220(1);
    *(undefined *)(iVar5 + 0x32) = local_c1;
  }
  if (*(int *)(param_1 + 0xf1c) != -1) {
    iVar5 = *(int *)(param_1 + 0x2c);
    pcVar4 = "WalkDown";
    if (iVar5 != 1) {
      pcVar4 = "WalkVert";
    }
    local_c1 = false;
    if (((NAN(local_e0) || NAN(DAT_00c7b640)) == (local_e0 == DAT_00c7b640)) ||
       ((NAN(local_d4) || NAN(DAT_00c7b644)) == (local_d4 == DAT_00c7b644))) {
      if ((float)((uint)local_e0 & DAT_00bacb40) <= (float)((uint)local_d4 & DAT_00bacb40)) {
        if ((iVar5 == 1) && (pcVar4 = (char *)&DAT_00b1e020, 0.0 <= local_d4)) {
          pcVar4 = "WalkDown";
        }
      }
      else {
        pcVar4 = "WalkHori";
        local_c1 = local_e0 < 0.0;
      }
    }
    else if (iVar5 != 1) {
      cVar1 = FUN_0040a5d0(pcVar4,1);
      if (((cVar1 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
         (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
        *(undefined *)(param_1 + 0x8c) = 0;
      }
      goto LAB_00526181;
    }
    FUN_0040a380(pcVar4,0);
LAB_00526181:
    iVar5 = FUN_0040b220(0);
    local_cc = local_d8;
    *(undefined *)(iVar5 + 0x32) = local_c1;
    fVar8 = local_d8;
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
      fVar7 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
              *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
      FUN_00435a50();
      fVar6 = local_cc;
      fVar8 = local_cc;
      if (fVar7 < DAT_00baa6a4) {
        fVar8 = (fVar7 - local_d8) / DAT_00baa4cc;
        if (fVar8 <= 0.0) {
          fVar8 = 0.0;
        }
        if (local_d8 <= fVar8) {
          fVar8 = local_d8;
        }
        fVar6 = local_d8;
        fVar8 = fVar8 * DAT_00baa2d0 + DAT_00baa2d0;
      }
      if (DAT_00baa7a4 < fVar7) {
        fVar8 = (fVar7 - DAT_00baa7a4) * DAT_00baa1d4;
        if (fVar8 <= 0.0) {
          fVar8 = 0.0;
        }
        if (fVar6 <= fVar8) {
          fVar8 = fVar6;
        }
        fVar8 = fVar8 + fVar6;
      }
    }
    *(float *)(param_1 + 0x14c) = fVar8;
    FUN_00aef12b();
    return;
  }
  fVar8 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
          *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
  FUN_00435a50();
  if (local_d8 <= fVar8) {
    if ((float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40) <
        (float)(*(uint *)(param_1 + 0x360) & DAT_00bacb40)) {
      FUN_0040a380("WalkHori",0);
      local_c1 = *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
      iVar5 = FUN_0040b220(0);
      *(undefined *)(iVar5 + 0x32) = local_c1;
      FUN_00aef12b();
      return;
    }
    if (*(int *)(param_1 + 0x2c) != 0) {
      if (*(float *)(param_1 + 0x364) <= DAT_00ba9fe4) {
        pcVar4 = (char *)&DAT_00b1e020;
      }
      else {
        pcVar4 = "WalkDown";
      }
      goto LAB_00526455;
    }
  }
  else {
    fVar8 = (float)((uint)(*(float *)(param_1 + 0x33c) - *(float *)(param_1 + 0x334)) & DAT_00bacb40
                   );
    if ((fVar8 < local_d8) &&
       ((float)((uint)(*(float *)(param_1 + 0x340) - *(float *)(param_1 + 0x338)) & DAT_00bacb40) <
        local_d8)) {
      if (*(int *)(param_1 + 0x2c) == 0) {
        FUN_0040a6e0("WalkVert",0);
        FUN_00aef12b();
        return;
      }
      pcVar4 = (char *)&DAT_00b1e020;
      if (local_c8 != 1.401298e-45) {
        pcVar4 = "WalkDown";
      }
      FUN_0040a6e0(pcVar4,0);
      FUN_00aef12b();
      return;
    }
    fVar6 = (float)((uint)(*(float *)(param_1 + 0x340) - *(float *)(param_1 + 0x338)) & DAT_00bacb40
                   );
    if (fVar6 < fVar8) {
      FUN_0040a380("WalkHori",0);
      local_c1 = *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
      iVar5 = FUN_0040b220(0);
      *(undefined *)(iVar5 + 0x32) = local_c1;
      FUN_00aef12b();
      return;
    }
    if (*(int *)(param_1 + 0x2c) != 0) {
      if (fVar6 <= DAT_00ba9fe4) {
        pcVar4 = "WalkDown";
      }
      else {
        pcVar4 = (char *)&DAT_00b1e020;
      }
      goto LAB_00526455;
    }
  }
  pcVar4 = "WalkVert";
LAB_00526455:
  FUN_0040a380(pcVar4,0);
  FUN_00aef12b();
  return;
}

