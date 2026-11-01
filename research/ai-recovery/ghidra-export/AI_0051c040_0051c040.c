/* Local J460 decompiler output.
 * VA: 0x0051c040
 * Entry: 0051c040
 * Dispatcher: 0x006c2990
 * Types: 57,223
 * Identities: 223.0.0,57.0.0,57.1.0,57.2.0
 * Evidence: dispatcher=0x006c2990; end=0x0051cb30; instructions=607
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=57,223; identities=223.0.0,57.0.0,57.1.0,57.2.0;
   dispatcher=0x006c2990; end=0x0051cb30; instructions=607 */

void __fastcall AI_0051c040(float param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  char cVar3;
  int iVar4;
  float *pfVar5;
  uint uVar6;
  int *piVar7;
  undefined4 uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined4 uVar12;
  undefined4 local_130 [8];
  undefined4 local_110;
  undefined4 uStack_10c;
  undefined4 local_108;
  char local_104 [4];
  int local_100;
  uint local_f8;
  float local_f4;
  float local_f0;
  float *local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  undefined local_d0 [12];
  undefined4 local_c4;
  undefined4 local_bc;
  undefined4 local_b8;
  uint local_78;
  uint local_74;
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af44f0;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_d4 = param_1;
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    iVar4 = *(int *)((int)param_1 + 0x28);
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    uVar2 = _UNK_00babf2c;
    uVar1 = _UNK_00babf28;
    uVar12 = _UNK_00babf24;
    uVar8 = _DAT_00babf20;
    if (iVar4 == 0xdf) {
      local_110 = 0x3e828283;
      uStack_10c = 0x3e24a4a5;
      local_108 = 0x3e0c8c8d;
      puStack_20 = &stack0xfffffffc;
      if ((undefined4 *)((int)param_1 + 0x1e4) == local_130) goto LAB_0051cb09;
      *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
      *(undefined8 *)((int)param_1 + 0x204) = 0x3e24a4a53e828283;
      *(undefined4 *)((int)param_1 + 0x1e4) = uVar8;
      *(undefined4 *)((int)param_1 + 0x1e8) = uVar12;
      *(undefined4 *)((int)param_1 + 0x1ec) = uVar1;
      *(undefined4 *)((int)param_1 + 0x1f0) = uVar2;
      *(undefined4 *)((int)param_1 + 0x20c) = 0x3e0c8c8d;
      iVar4 = *(int *)((int)param_1 + 0x28);
    }
    uVar1 = uRam00c34e8c;
    uVar12 = uRam00c34e88;
    uVar8 = uRam00c34e84;
    puStack_20 = &stack0xfffffffc;
    if (((iVar4 == 0x39) && (puStack_20 = &stack0xfffffffc, *(int *)((int)param_1 + 0x2c) == 2)) &&
       (puStack_20 = &stack0xfffffffc,
       (undefined4 *)((int)param_1 + 0x1e4) != (undefined4 *)&DAT_00c34e80)) {
      *(undefined4 *)((int)param_1 + 0x1e4) = _DAT_00c34e80;
      *(undefined4 *)((int)param_1 + 0x1e8) = uVar8;
      *(undefined4 *)((int)param_1 + 0x1ec) = uVar12;
      *(undefined4 *)((int)param_1 + 0x1f0) = uVar1;
      uVar1 = uRam00c34e9c;
      uVar12 = uRam00c34e98;
      uVar8 = uRam00c34e94;
      *(undefined4 *)((int)param_1 + 500) = _DAT_00c34e90;
      *(undefined4 *)((int)param_1 + 0x1f8) = uVar8;
      *(undefined4 *)((int)param_1 + 0x1fc) = uVar12;
      *(undefined4 *)((int)param_1 + 0x200) = uVar1;
      *(undefined8 *)((int)param_1 + 0x204) = DAT_00c34ea0;
      *(undefined4 *)((int)param_1 + 0x20c) = DAT_00c34ea8;
      puStack_20 = &stack0xfffffffc;
    }
    goto LAB_0051cb09;
  }
  *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
  if (*(int *)((int)param_1 + 0xb64) == 4) {
    if (((*(uint *)((int)param_1 + 0x168) & 0x1000800) == 0) ||
       (*(int *)((int)param_1 + 0xf1c) != -1)) {
      puStack_20 = &stack0xfffffffc;
      FUN_007e6300(0);
    }
    else {
      puStack_20 = &stack0xfffffffc;
      iVar4 = FUN_006be840(local_24);
      local_d8 = *(float *)(iVar4 + 0x33c);
      local_d4 = *(float *)(iVar4 + 0x340);
      FUN_007e4940(&local_d8,0);
      *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
    }
    if (*(int *)((int)param_1 + 0xf1c) == -1) {
      uVar6 = FUN_006eef60();
      if ((uVar6 % 0x1e == 0) && (iVar4 = FUN_006d6c20(), iVar4 < 8)) goto LAB_0051c250;
    }
    else {
      cVar3 = FUN_006cae60(0,7);
      if ((cVar3 == '\0') && (cVar3 = FUN_006d8260(9), cVar3 == '\0')) {
        FUN_0040a380("Wiggle",0);
        goto LAB_0051c741;
      }
LAB_0051c250:
      if ((*(uint *)((int)param_1 + 0x168) & 0x1000a00) == 0) {
        *(undefined4 *)((int)param_1 + 0xb64) = 8;
        *(undefined4 *)((int)param_1 + 0x410) = 0;
        if (*(int *)((int)param_1 + 0xf1c) == -1) {
          *(undefined4 *)((int)param_1 + 0xf20) = DAT_00c7b640;
          fVar9 = DAT_00c7b644;
        }
        else {
          FUN_006d85a0(&local_d8);
          *(float *)((int)param_1 + 0xf20) = local_d8;
          fVar9 = local_d4;
        }
        *(float *)((int)param_1 + 0xf24) = fVar9;
      }
    }
    FUN_0040a380("Wiggle",0);
  }
  else {
    FUN_0040a380("Attack",0);
    if (*(int *)((int)param_1 + 0x7c) == 0) {
LAB_0051c731:
      *(undefined4 *)((int)param_1 + 0xb64) = 4;
    }
    else {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x30,0x3f4ccccd,2,0,0x3f800000);
      }
      if (*(int *)((int)param_1 + 0x7c) == 0) goto LAB_0051c731;
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        if (*(int *)((int)param_1 + 0x28) == 0x39) {
          AI_0043ef30();
          local_bc = 0x3fb33333;
          if (*(int *)((int)param_1 + 0x2c) == 2) {
            local_78 = local_78 | 0x2000;
            local_74 = local_74 | 0x400;
            local_c4 = 0xbd8f5c29;
            local_b8 = 0x3ec90fdb;
            local_d8 = 8.0;
            local_d4 = 8.0;
            FUN_006cb2e0((int)param_1 + 0x33c,&local_d8,9,local_d0);
          }
          else {
            local_d8 = 10.0;
            local_d4 = 0.0;
            FUN_006cb2e0((int)param_1 + 0x33c,&local_d8,8,local_d0);
          }
        }
        else if (*(int *)((int)param_1 + 0x28) == 0xdf) {
          iVar4 = FUN_006d6c20();
          if (iVar4 < 6) {
            if (*(int *)((int)param_1 + 0xf1c) == -1) {
              uVar6 = FUN_006eef60();
              cVar3 = uVar6 % 7 != 0;
            }
            else {
              cVar3 = FUN_00a10600(&DAT_00c7b640);
            }
            if (cVar3 == '\0') goto LAB_0051c54e;
            pfVar5 = (float *)FUN_0067f070(&local_e8);
            local_e0 = *pfVar5 * DAT_00baa8d0;
            local_dc = pfVar5[1] * DAT_00baa8d0;
            uVar8 = FUN_006eef60();
            pfVar5 = (float *)((int)param_1 + 0x33c);
            local_e8 = local_e0 + *pfVar5;
            local_e4 = local_dc + *(float *)((int)param_1 + 0x340);
            local_ec = pfVar5;
            iVar4 = FUN_006fe410(0xd9,0,&local_e8,&DAT_00c7b640,param_1,0,uVar8,0);
            *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
            uVar8 = FUN_006eef60();
            local_e8 = *pfVar5 - local_e0;
            local_e4 = *(float *)((int)param_1 + 0x340) - local_dc;
            iVar4 = FUN_006fe410(0xd9,0,&local_e8,&DAT_00c7b640,param_1,0,uVar8,0);
            *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
          }
          else {
LAB_0051c54e:
            AI_0043ef30();
            local_bc = 0x3fb33333;
            local_3c = 3;
            local_ec = (float *)((int)param_1 + 0x33c);
            local_e8 = 10.0;
            local_e4 = 0.0;
            FUN_006cb2e0(local_ec,&local_e8,8,local_d0);
          }
          AI_0041af60(local_104,0xd9,0xffffffff,0xffffffff,0,0);
          if (local_f8 != 0) {
            local_f0 = 0.0;
            uVar6 = 0;
            do {
              iVar4 = *(int *)(local_100 + uVar6 * 4);
              local_e0 = *(float *)(iVar4 + 0x33c) - *local_ec;
              local_dc = *(float *)(iVar4 + 0x340) - local_ec[1];
              fVar9 = local_e0 * local_e0 + local_dc * local_dc;
              FUN_00435a50();
              local_e4 = DAT_00baaa44 - fVar9;
              pfVar5 = &local_f0;
              if (0.0 <= DAT_00baaa44 - fVar9) {
                pfVar5 = &local_e4;
              }
              fVar10 = local_e0;
              fVar11 = local_dc;
              if (0.0 < fVar9) {
                fVar9 = (*pfVar5 * DAT_00baa120) / fVar9;
                fVar11 = local_dc * fVar9;
                fVar10 = local_e0 * fVar9;
              }
              fVar9 = *(float *)(iVar4 + 0x36c);
              if (NAN(fVar9) == (fVar9 == 0.0)) {
                *(float *)(iVar4 + 0x364) =
                     (*(float *)(iVar4 + 0x39c) * fVar11) / fVar9 + *(float *)(iVar4 + 0x364);
                *(float *)(iVar4 + 0x360) =
                     (*(float *)(iVar4 + 0x39c) * fVar10) / fVar9 + *(float *)(iVar4 + 0x360);
              }
              uVar6 = uVar6 + 1;
              param_1 = local_d4;
            } while (uVar6 < local_f8);
          }
          if (local_104[0] == '\0') {
            local_14 = 0;
            FUN_00a648b0(0,0);
            local_14 = 0xffffffff;
          }
        }
      }
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0'))
      goto LAB_0051c731;
    }
    *(int *)((int)param_1 + 0x410) = *(int *)((int)param_1 + 0x410) + 1;
  }
LAB_0051c741:
  if ((*(int *)((int)param_1 + 0x28) == 0xdf) && (uVar6 = FUN_006eef60(), uVar6 % 10 == 0)) {
    iVar4 = FUN_006eef60();
    piVar7 = (int *)FUN_006b64d0((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)])
                                 * DAT_00ba9ff4 + DAT_00baa198);
    (**(code **)(*piVar7 + 0x3c))((int)param_1 + 0x1e4,0xffffffff,0xff,0,1);
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (*(short *)((int)param_1 + 0xc76) == 0)) {
    iVar4 = FUN_006eef60();
    local_d4 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
    local_d4 = local_d4 + local_d4;
    fVar9 = local_d4;
    FUN_0041d540();
    local_dc = fVar9 * DAT_00baa81c;
    fVar9 = local_d4;
    FUN_0041d520();
    local_e0 = fVar9 * DAT_00baa81c;
    if (*(int *)((int)param_1 + 0x28) == 0x39) {
      if (*(int *)((int)param_1 + 0x2c) == 0) {
        uVar8 = FUN_006eef60();
        local_d8 = local_dc + *(float *)((int)param_1 + 0x33c);
        local_d4 = local_e0 + *(float *)((int)param_1 + 0x340);
        FUN_006fe410(0x20,0,&local_d8,&DAT_00c7b640,param_1,0,uVar8,0);
        uVar8 = FUN_006eef60();
        local_d8 = *(float *)((int)param_1 + 0x33c) - local_dc;
        pfVar5 = &local_d8;
        local_d4 = *(float *)((int)param_1 + 0x340) - local_e0;
        uVar12 = 0x20;
      }
      else if (*(int *)((int)param_1 + 0x2c) == 2) {
        uVar8 = FUN_006eef60();
        local_d8 = local_dc + *(float *)((int)param_1 + 0x33c);
        local_d4 = local_e0 + *(float *)((int)param_1 + 0x340);
        FUN_006fe410(0x35e,0,&local_d8,&DAT_00c7b640,param_1,0,uVar8,0);
        uVar8 = FUN_006eef60();
        local_d8 = *(float *)((int)param_1 + 0x33c) - local_dc;
        pfVar5 = &local_d8;
        local_d4 = *(float *)((int)param_1 + 0x340) - local_e0;
        uVar12 = 0x35e;
      }
      else {
        uVar8 = FUN_006eef60();
        local_d8 = local_dc + *(float *)((int)param_1 + 0x33c);
        local_d4 = local_e0 + *(float *)((int)param_1 + 0x340);
        FUN_006fe410(0x28,0,&local_d8,&DAT_00c7b640,param_1,0,uVar8,0);
        uVar8 = FUN_006eef60();
        local_d8 = *(float *)((int)param_1 + 0x33c) - local_dc;
        pfVar5 = &local_d8;
        local_d4 = *(float *)((int)param_1 + 0x340) - local_e0;
        uVar12 = 0x28;
      }
    }
    else {
      if (*(int *)((int)param_1 + 0x28) != 0xdf) goto LAB_0051cb09;
      uVar8 = FUN_006eef60();
      local_d8 = local_dc + *(float *)((int)param_1 + 0x33c);
      local_d4 = local_e0 + *(float *)((int)param_1 + 0x340);
      FUN_006fe410(0xdc,0,&local_d8,&DAT_00c7b640,param_1,0,uVar8,0);
      uVar8 = FUN_006eef60();
      local_f4 = *(float *)((int)param_1 + 0x33c) - local_dc;
      pfVar5 = &local_f4;
      local_f0 = *(float *)((int)param_1 + 0x340) - local_e0;
      uVar12 = 0xdc;
    }
    FUN_006fe410(uVar12,0,pfVar5,&DAT_00c7b640,param_1,0,uVar8,0);
  }
LAB_0051cb09:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

