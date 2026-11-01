/* Local J460 decompiler output.
 * VA: 0x004e8380
 * Entry: 004e8380
 * Dispatcher: 0x006c2990
 * Types: 883
 * Identities: 883.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004e8fa0; instructions=716
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=883; identities=883.0.0; dispatcher=0x006c2990;
   end=0x004e8fa0; instructions=716 */

uint __fastcall AI_004e8380(float param_1)

{
  char cVar1;
  bool bVar2;
  uint uVar3;
  undefined4 *puVar4;
  char *pcVar5;
  uint uVar6;
  float *pfVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int **ppiVar12;
  int *piVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  char local_6c [4];
  int local_68;
  undefined local_64 [4];
  uint local_60;
  float local_5c;
  int *local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  int *local_40;
  int *local_3c;
  undefined4 *local_38;
  float local_34;
  float local_30;
  int *local_2c;
  float local_28;
  undefined local_21;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3a3d;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar10 = *(int *)(DAT_00c71678 + 0x18300);
  iVar11 = (int)((*(float *)((int)param_1 + 0x33c) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  iVar9 = (int)((*(float *)((int)param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
  if ((((-1 < iVar11) && (iVar11 < *(int *)(iVar10 + 0xc))) && (-1 < iVar9)) &&
     ((iVar9 < *(int *)(iVar10 + 0x10) &&
      (local_34 = (float)(*(int *)(iVar10 + 0xc) * iVar9 + iVar11), (uint)local_34 < 0x1c0)))) {
    iVar9 = *(int *)(iVar10 + 0x76c + (int)local_34 * 4);
    local_38 = (undefined4 *)0x3e8;
    iVar11 = iVar9 % 1000;
    if (iVar11 < 900) {
      *(int *)(iVar10 + 0x76c + (int)local_34 * 4) = (iVar9 - iVar11) + 900;
    }
  }
  local_50 = param_1;
  puVar4 = (undefined4 *)FUN_006be840(uVar3);
  local_38 = puVar4;
  FUN_006bec40(&local_5c,0);
  local_28 = local_5c;
  local_30 = local_5c - *(float *)((int)param_1 + 0x33c);
  local_2c = local_58;
  local_34 = (float)local_58 - *(float *)((int)param_1 + 0x340);
  piVar13 = (int *)(local_30 * local_30 + local_34 * local_34);
  FUN_00435a50();
  uVar3 = *(uint *)((int)param_1 + 0xb64);
  local_58 = piVar13;
  if (uVar3 == 0) {
    uVar3 = FUN_006eef60();
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    *(uint *)((int)param_1 + 0xba4) = uVar3 % 0x32 + 10;
    ExceptionList = local_1c;
    return uVar3 / 0x32;
  }
  if (uVar3 == 4) {
    if ((float)((uint)local_34 & DAT_00bacb40) <= (float)((uint)local_30 & DAT_00bacb40)) {
      pcVar5 = "IdleRight";
      local_21 = local_30 < 0.0;
    }
    else {
      pcVar5 = "IdleUp";
      local_21 = false;
      if (0.0 <= local_34) {
        pcVar5 = "IdleDown";
      }
    }
    FUN_0040a380(pcVar5,0);
    *(undefined *)((int)param_1 + 0x148) = local_21;
    fVar15 = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
    iVar10 = (int)*(float *)((int)param_1 + 0x3a4) - (int)*(float *)((int)param_1 + 0x3a0);
    *(int *)((int)param_1 + 0xbc0) = *(int *)((int)param_1 + 0xbc0) - iVar10;
    *(int *)((int)param_1 + 0xba4) = *(int *)((int)param_1 + 0xba4) - iVar10;
    *(float *)((int)param_1 + 0x36c) = fVar15;
    fVar15 = local_28;
    piVar13 = local_2c;
    if ((puVar4[10] == 1) && ((*(uint *)((int)param_1 + 0x168) & 0x1000a00) == 0)) {
      local_4c = (float)puVar4[0x58c];
      local_48 = (float)puVar4[0x58d];
      if (((NAN(local_4c) || NAN(DAT_00c7b640)) == (local_4c == DAT_00c7b640)) ||
         ((NAN(local_48) || NAN(DAT_00c7b644)) == (local_48 == DAT_00c7b644))) {
        local_40 = (int *)0x0;
        local_3c = (int *)((local_4c * local_30 + local_48 * local_34) * DAT_00baad2c);
        ppiVar12 = &local_3c;
        if ((float)local_3c <= 0.0) {
          ppiVar12 = &local_40;
        }
        puVar4 = local_38;
        if (0.0 < (float)*ppiVar12) {
          pfVar7 = (float *)FUN_00a10030(local_64);
          fVar15 = DAT_00baa54c;
          FUN_0041d540();
          fVar16 = DAT_00baa54c;
          local_48 = fVar15;
          FUN_0041d520();
          fVar14 = local_48 * *pfVar7 - fVar16 * pfVar7[1];
          fVar15 = local_48 * pfVar7[1] + fVar16 * *pfVar7;
          if (0.0 < fVar14 * local_30 + fVar15 * local_34) {
            fVar14 = fVar14 * DAT_00baad50;
            fVar15 = fVar15 * DAT_00baad50;
          }
          local_4c = fVar14 * (float)*ppiVar12 + (local_28 - local_30 * DAT_00baa2d0);
          local_48 = fVar15 * (float)*ppiVar12 + ((float)local_2c - local_34 * DAT_00baa2d0);
          FUN_00812f50(&local_44,&local_4c,0x41a00000,0x41a00000,0x41a00000);
          puVar4 = local_38;
          param_1 = local_50;
          fVar15 = local_44;
          piVar13 = local_40;
        }
      }
    }
    fVar14 = (float)puVar4[0xcf] - *(float *)((int)param_1 + 0x33c);
    fVar16 = (float)puVar4[0xd0] - *(float *)((int)param_1 + 0x340);
    if (DAT_00baabe0 < fVar16 * fVar16 + fVar14 * fVar14) {
      local_28 = (fVar15 - *(float *)((int)param_1 + 0x33c)) * DAT_00baa06c;
      local_2c = (int *)(((float)piVar13 - *(float *)((int)param_1 + 0x340)) * DAT_00baa06c);
      fVar16 = local_28 * local_28 + (float)local_2c * (float)local_2c;
      FUN_00435a50();
      fVar15 = local_28;
      piVar13 = local_2c;
      if (0.0 < fVar16) {
        fVar15 = local_28 * (DAT_00baa454 / fVar16);
        piVar13 = (int *)((float)local_2c * (DAT_00baa454 / fVar16));
      }
      fVar16 = *(float *)((int)param_1 + 0x36c);
      if (NAN(fVar16) == (fVar16 == 0.0)) {
        *(float *)((int)param_1 + 0x364) =
             (*(float *)((int)param_1 + 0x39c) * (float)piVar13) / fVar16 +
             *(float *)((int)param_1 + 0x364);
        *(float *)((int)param_1 + 0x360) =
             (*(float *)((int)param_1 + 0x39c) * fVar15) / fVar16 + *(float *)((int)param_1 + 0x360)
        ;
      }
    }
    if ((*(uint *)((int)param_1 + 0x168) & 0x1000a00) != 0) {
      ExceptionList = local_1c;
      return 0;
    }
    uVar3 = FUN_006be7e0(puVar4);
    if ((char)uVar3 == '\0') {
      ExceptionList = local_1c;
      return uVar3;
    }
    if (DAT_00baa9d0 <= (float)local_58) {
      ExceptionList = local_1c;
      return uVar3;
    }
    uVar3 = FUN_006eef60();
    if ((uVar3 & 7) != 0) {
      ExceptionList = local_1c;
      return uVar3 & 7;
    }
    local_5c = (float)puVar4[0xcf] - *(float *)((int)param_1 + 0x33c);
    local_58 = (int *)((float)puVar4[0xd0] - *(float *)((int)param_1 + 0x340));
    FUN_0067f170();
    FUN_006d0c60(local_6c,0x373,0xffffffff);
    local_14 = 0;
    uVar3 = 0;
    if (local_60 != 0) {
      do {
        fVar15 = *(float *)(local_68 + uVar3 * 4);
        if ((((fVar15 != 0.0) &&
             (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)((int)fVar15 + 0x28) == 1)) ||
              (*(int *)((int)fVar15 + 0x28) - 10U < 0x3de)))) &&
            (((fVar15 != param_1 &&
              (local_21 = (*(uint *)((int)fVar15 + 0x168) & 0x20000000) != 0,
              (bool)local_21 == ((*(uint *)((int)param_1 + 0x168) & 0x20000000) != 0))) &&
             (*(int *)((int)fVar15 + 0xb64) == 8)))) &&
           (*(undefined4 **)((int)fVar15 + 0x3c4) == puVar4)) {
          fVar16 = (float)puVar4[0xcf] - *(float *)((int)fVar15 + 0x33c);
          fVar15 = (float)puVar4[0xd0] - *(float *)((int)fVar15 + 0x340);
          if ((float)((uint)fVar16 & DAT_00bacb40) <= (float)((uint)fVar15 & DAT_00bacb40)) {
            uVar6 = (uint)(0.0 <= fVar15) * 2 + 1;
          }
          else {
            uVar6 = 2;
            if (fVar16 < 0.0) {
              uVar6 = 0;
            }
          }
          if ((float)((uint)local_54 & DAT_00bacb40) <= (float)((uint)local_50 & DAT_00bacb40)) {
            uVar8 = (uint)(0.0 <= local_50) * 2 + 1;
          }
          else {
            uVar8 = 2;
            local_58 = (int *)0x0;
            if (local_54 < 0.0) {
              uVar8 = 0;
            }
          }
          if (uVar6 == uVar8) goto LAB_004e8f2e;
        }
        uVar3 = uVar3 + 1;
      } while (uVar3 < local_60);
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 8;
    *(float *)((int)param_1 + 0x334) = local_54;
    *(float *)((int)param_1 + 0x338) = local_50;
    *(undefined4 *)((int)param_1 + 0xbc0) = 0x14;
    if (*(int *)((int)param_1 + 0x3c4) != 0) {
      local_58 = (int *)((int)param_1 + 0x3c4);
      FUN_004cf210(&local_58);
    }
    *(int *)((int)param_1 + 0x3c4) = (int)puVar4;
    FUN_004cdcf0((int *)((int)param_1 + 0x3c4));
    if ((float)((uint)*(float *)((int)param_1 + 0x338) & DAT_00bacb40) <=
        (float)(*(uint *)((int)param_1 + 0x334) & DAT_00bacb40)) {
      FUN_0040a380("ChaseRight",0);
      bVar2 = *(float *)((int)param_1 + 0x334) <= 0.0 && *(float *)((int)param_1 + 0x334) != 0.0;
      uVar8 = (uint)bVar2;
      *(bool *)((int)param_1 + 0x148) = bVar2;
    }
    else {
      pcVar5 = "ChaseUp";
      if (0.0 <= *(float *)((int)param_1 + 0x338)) {
        pcVar5 = "ChaseDown";
      }
      uVar8 = FUN_0040a380(pcVar5,0);
      *(undefined *)((int)param_1 + 0x148) = 0;
    }
LAB_004e8f2e:
    if (local_6c[0] != '\0') {
      ExceptionList = local_1c;
      return uVar8;
    }
    local_14 = 1;
    uVar3 = FUN_00a648b0(0,0);
    ExceptionList = local_1c;
    return uVar3;
  }
  if (uVar3 != 8) {
    ExceptionList = local_1c;
    return uVar3;
  }
  if (*(int *)((int)param_1 + 0x7c) == 0) {
    fVar15 = *(float *)((int)param_1 + 0x36c);
  }
  else {
    cVar1 = FUN_0040ae70("Shoot");
    fVar15 = *(float *)((int)param_1 + 0x36c);
    if (cVar1 != '\0') {
      fVar15 = fVar15 * DAT_00baa3e0;
      *(float *)((int)param_1 + 0x36c) = fVar15;
      fVar16 = (float)(*(uint *)((int)param_1 + 0x338) ^ DAT_00bacb70);
      if (NAN(fVar15) == (fVar15 == 0.0)) {
        *(float *)((int)param_1 + 0x360) =
             ((float)(*(uint *)((int)param_1 + 0x334) ^ DAT_00bacb70) *
             *(float *)((int)param_1 + 0x39c)) / fVar15 + *(float *)((int)param_1 + 0x360);
        *(float *)((int)param_1 + 0x364) =
             (fVar16 * *(float *)((int)param_1 + 0x39c)) / fVar15 + *(float *)((int)param_1 + 0x364)
        ;
      }
      goto LAB_004e872b;
    }
  }
  *(float *)((int)param_1 + 0x36c) = fVar15 * DAT_00baa354;
  if (((0 < *(int *)((int)param_1 + 0xbc0)) || (cVar1 = FUN_0040b090(&DAT_00b1d6f4), cVar1 == '\0'))
     && (puVar4 != (undefined4 *)0x0)) {
    local_5c = ((float)puVar4[0xd8] * DAT_00baa81c + (float)puVar4[0xcf]) -
               *(float *)((int)param_1 + 0x334) * DAT_00baa9d0;
    local_58 = (int *)(((float)puVar4[0xd9] * DAT_00baa81c + (float)puVar4[0xd0]) -
                      *(float *)((int)param_1 + 0x338) * DAT_00baa9d0);
    FUN_00812f50(&local_54,&local_5c,0,0,0);
    local_30 = (local_50 - *(float *)((int)param_1 + 0x340)) * DAT_00baa0a0;
    local_34 = (local_54 - *(float *)((int)param_1 + 0x33c)) * DAT_00baa0a0;
    fVar14 = local_30 * local_30 + local_34 * local_34;
    FUN_00435a50();
    fVar15 = local_34;
    fVar16 = local_30;
    if (DAT_00baa85c < fVar14) {
      fVar15 = local_34 * (DAT_00baa85c / fVar14);
      fVar16 = local_30 * (DAT_00baa85c / fVar14);
    }
    fVar14 = *(float *)((int)param_1 + 0x36c);
    if (NAN(fVar14) == (fVar14 == 0.0)) {
      *(float *)((int)param_1 + 0x364) =
           (*(float *)((int)param_1 + 0x39c) * fVar16) / fVar14 + *(float *)((int)param_1 + 0x364);
      *(float *)((int)param_1 + 0x360) =
           (*(float *)((int)param_1 + 0x39c) * fVar15) / fVar14 + *(float *)((int)param_1 + 0x360);
    }
  }
LAB_004e872b:
  if (0 < *(int *)((int)param_1 + 0xbc0)) {
    uVar3 = ((int)*(float *)((int)param_1 + 0x3a0) - (int)*(float *)((int)param_1 + 0x3a4)) +
            *(int *)((int)param_1 + 0xbc0);
    *(uint *)((int)param_1 + 0xbc0) = uVar3;
    if (0 < (int)uVar3) {
      ExceptionList = local_1c;
      return uVar3;
    }
    if ((float)((uint)*(float *)((int)param_1 + 0x338) & DAT_00bacb40) <=
        (float)(*(uint *)((int)param_1 + 0x334) & DAT_00bacb40)) {
      FUN_0040a380("AttackRight",0);
      bVar2 = *(float *)((int)param_1 + 0x334) <= 0.0 && *(float *)((int)param_1 + 0x334) != 0.0;
    }
    else {
      pcVar5 = "AttackUp";
      if (0.0 <= *(float *)((int)param_1 + 0x338)) {
        pcVar5 = "AttackDown";
      }
      FUN_0040a380(pcVar5,0);
      bVar2 = false;
    }
    *(bool *)((int)param_1 + 0x148) = bVar2;
    uVar3 = FUN_006d6ba0(0xa7,0x3f4ccccd,2,0,0x3f933333);
    ExceptionList = local_1c;
    return uVar3;
  }
  if (*(int *)((int)param_1 + 0x7c) != 0) {
    uVar3 = FUN_0040add0("Shoot");
    if ((char)uVar3 != '\0') {
      fVar15 = *(float *)((int)param_1 + 0x338);
      local_5c = 0.0;
      local_58 = (int *)0xc20c0000;
      FUN_00499d60();
      local_4c = *(float *)((int)param_1 + 0x334) * DAT_00baa868 + *(float *)((int)param_1 + 0x33c);
      local_48 = *(float *)((int)param_1 + 0x340) + 0.0;
      piVar13 = (int *)FUN_0096f310(1,&local_4c,fVar15 * DAT_00baa948,0xe,&local_5c,param_1,0);
      piVar13[0x138] = 0x3f19999a;
      FUN_0097fc10();
      fVar15 = DAT_00baad2c;
      piVar13[0x134] = 0x43200000;
      iVar10 = DAT_00baabc4;
      if (*(float *)((int)param_1 + 0x338) <= fVar15 && fVar15 != *(float *)((int)param_1 + 0x338))
      {
        iVar10 = DAT_00baadc0;
      }
      piVar13[0xd6] = iVar10;
      uVar3 = (**(code **)(*piVar13 + 0xc))();
    }
    if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0')) {
      ExceptionList = local_1c;
      return uVar3;
    }
  }
  *(undefined4 *)((int)param_1 + 0xb64) = 4;
  uVar3 = FUN_006eef60();
  *(uint *)((int)param_1 + 0xba4) = uVar3 % 0x32 + 0x1e;
  uVar3 = FUN_006eef60();
  uVar6 = uVar3 / 0x3c;
  *(uint *)((int)param_1 + 0xbc0) = uVar3 % 0x3c + 0x1e;
  if (*(int *)((int)param_1 + 0x3c4) != 0) {
    local_38 = (undefined4 *)((int)param_1 + 0x3c4);
    uVar6 = FUN_004cf210(&local_38);
  }
  *(undefined4 *)((int)param_1 + 0x3c4) = 0;
  ExceptionList = local_1c;
  return uVar6;
}

