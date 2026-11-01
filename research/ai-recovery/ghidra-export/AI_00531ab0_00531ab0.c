/* Local J460 decompiler output.
 * VA: 0x00531ab0
 * Entry: 00531ab0
 * Dispatcher: 0x006c2990
 * Types: 206,207
 * Identities: 206.0.0,206.1.0,207.0.0,207.1.0
 * Evidence: dispatcher=0x006c2990; end=0x005321d0; instructions=459
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=206,207; identities=206.0.0,206.1.0,207.0.0,207.1.0;
   dispatcher=0x006c2990; end=0x005321d0; instructions=459 */

void __fastcall AI_00531ab0(int param_1)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  bool bVar7;
  float fVar8;
  uint local_120;
  uint local_11c;
  float local_118;
  undefined4 local_114;
  char local_109;
  uint local_108;
  uint local_104;
  undefined local_100 [4];
  undefined4 local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  int local_54;
  undefined local_50;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined local_38;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4745;
  local_1c = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar2;
  iVar3 = FUN_009be080(0x179,DAT_00c71678 + 0x1baa8,1);
  if ((iVar3 == 0) || ((*(uint *)(param_1 + 0x168) & 0x20000000) != 0)) {
    local_109 = '\0';
  }
  else {
    local_109 = '\x01';
  }
  iVar3 = *(int *)(param_1 + 0xb64);
  if (iVar3 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    goto LAB_005321a6;
  }
  if (iVar3 == 4) {
    *(undefined4 *)(param_1 + 0x14c) = 0x3f800000;
    local_114 = *(undefined4 *)(param_1 + 0x16c);
    if (*(int *)(param_1 + 0x28) == 0xce) {
      if (((*(uint *)(param_1 + 0x168) & 0x200) == 0) && (local_109 == '\0')) {
        if (*(int *)(param_1 + 0xf1c) == -1) {
          iVar3 = FUN_006be840();
          local_108 = *(uint *)(iVar3 + 0x33c);
          local_104 = *(uint *)(iVar3 + 0x340);
          FUN_007e4940(&local_108,0);
        }
        else {
          iVar3 = FUN_006be840();
          local_108 = *(uint *)(iVar3 + 0x33c);
          local_104 = *(uint *)(iVar3 + 0x340);
          FUN_007e33c0(&local_108,0x3f266666,900,1);
        }
        iVar3 = FUN_006d6c20();
        if (iVar3 < 6) {
          if (*(int *)(param_1 + 0xf1c) == -1) {
            if (((*(int *)(param_1 + 0xb50) < 1) && (iVar3 = FUN_0067f010(), iVar3 == 0)) ||
               (iVar3 = FUN_0067f010(), iVar3 == 0)) goto LAB_00531c82;
          }
          else {
            cVar1 = FUN_006d8260(9);
            if ((cVar1 != '\0') || (cVar1 = FUN_006cae60(0,7), cVar1 != '\0')) {
LAB_00531c82:
              cVar1 = FUN_00417430(0x1000800,0);
              bVar7 = cVar1 == '\0';
LAB_00531dd2:
              if (bVar7) goto LAB_00531dd4;
            }
          }
        }
      }
      else {
LAB_00531de0:
        if (*(int *)(param_1 + 0xf1c) == -1) {
          FUN_007e6300(0);
        }
        else {
          iVar3 = FUN_006be840();
          local_108 = *(uint *)(iVar3 + 0x33c);
          local_104 = *(uint *)(iVar3 + 0x340);
          FUN_007e33c0(&local_108,0x3f266666,900,1);
        }
      }
    }
    else if ((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) {
      cVar1 = FUN_00417430(0x200,0);
      if ((cVar1 != '\0') || (local_109 != '\0')) goto LAB_00531de0;
      iVar3 = FUN_006be840();
      local_108 = *(uint *)(iVar3 + 0x33c);
      local_104 = *(uint *)(iVar3 + 0x340);
      FUN_007e33c0(&local_108,0x3f266666,900,1);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        if (*(char *)(param_1 + 0xb40) != '\0') {
          uVar2 = FUN_006eef60();
          bVar7 = uVar2 % 0x32 == 0;
          goto LAB_00531dd2;
        }
      }
      else {
        cVar1 = FUN_006d8260(9);
        if ((cVar1 != '\0') || (cVar1 = FUN_006cae60(0,7), cVar1 != '\0')) {
LAB_00531dd4:
          *(undefined4 *)(param_1 + 0xb64) = 8;
        }
      }
    }
    else if (*(int *)(param_1 + 0xf1c) == -1) {
      iVar3 = FUN_006be840();
      local_108 = *(uint *)(iVar3 + 0x33c);
      local_104 = *(uint *)(iVar3 + 0x340);
      FUN_007e4940(&local_108,0);
    }
    else {
      iVar3 = FUN_006be840();
      local_108 = *(uint *)(iVar3 + 0x33c);
      local_104 = *(uint *)(iVar3 + 0x340);
      FUN_007e33c0(&local_108,0x3f266666,900,1);
    }
    local_40 = 0xf;
    local_44 = 4;
    local_54 = 0x6b6c6157;
    local_50 = 0;
    local_28 = 0xf;
    local_2c = 4;
    local_3c = 0x6b6c6157;
    local_38 = 0;
    local_14 = 1;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    if (0xf < local_28) {
      uVar6 = local_28 + 1;
      uVar2 = local_3c;
      if (0xfff < uVar6) {
        uVar2 = *(uint *)(local_3c - 4);
        uVar6 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar2) - 4) goto LAB_00531ef4;
      }
      FUN_00aef15c(uVar2,uVar6);
    }
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar2 = local_40 + 1;
      iVar3 = local_54;
      if (0xfff < uVar2) {
        iVar3 = *(int *)(local_54 + -4);
        uVar2 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar3) - 4U) {
LAB_00531ef4:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar3,uVar2);
    }
    *(undefined4 *)(param_1 + 0x36c) = 0x3f4ccccd;
    goto LAB_005321a6;
  }
  if (iVar3 != 8) goto LAB_005321a6;
  if (*(int *)(param_1 + 0x28) == 0xce) {
    FUN_0040a380("Lay Egg",0);
    if (*(int *)(param_1 + 0xf1c) != -1) {
      *(undefined4 *)(param_1 + 0x14c) = 0x3fc00000;
    }
    if (*(int *)(param_1 + 0x7c) == 0) goto LAB_00532184;
    cVar1 = FUN_0040add0(&DAT_00b61144);
    if (cVar1 != '\0') {
      FUN_006d6ba0(0x9f,0x3f800000,2,0,0x3f800000);
      if (*(int *)(param_1 + 0x2c) == 0) {
        FUN_0067f070(&local_108);
        uVar4 = FUN_006eef60();
        FUN_00428b20(0x55,0,param_1 + 0x33c,&local_108,param_1,0,uVar4);
        uVar2 = FUN_006eef60();
        if (uVar2 % 0x14 == 0) {
          uVar4 = FUN_006eef60();
          local_120 = local_108 ^ DAT_00bacb70;
          local_11c = local_104 ^ DAT_00bacb70;
          FUN_00428b20(0x55,0,param_1 + 0x33c,&local_120,param_1,0,uVar4);
        }
      }
      else if (*(int *)(param_1 + 0x2c) == 1) {
        uVar4 = FUN_006eef60();
        FUN_00428b20(0x1e,2,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar4);
        uVar4 = FUN_006eef60();
        FUN_00428b20(1000,0x19,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar4);
      }
    }
LAB_00532175:
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) goto LAB_00532184;
  }
  else {
    FUN_0040a380("Attack",0);
    if (*(int *)(param_1 + 0xf1c) != -1) {
      *(undefined4 *)(param_1 + 0x14c) = 0x3fc00000;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar1 = FUN_0040add0("Shoot");
      if (cVar1 != '\0') {
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
        AI_0043ef30(uVar2);
        iVar3 = *(int *)(param_1 + 0x2c);
        local_f4 = 0x3f000000;
        local_f8 = 0xc1200000;
        local_fc = 0x41200000;
        iVar5 = FUN_006eef60();
        local_114 = 0;
        fVar8 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4;
        local_118 = fVar8 + fVar8 + DAT_00baa7e8;
        FUN_006cb2e0(param_1 + 0x33c,&local_118,8 - (uint)(iVar3 != 0),local_100);
      }
      goto LAB_00532175;
    }
LAB_00532184:
    *(undefined4 *)(param_1 + 0xb64) = 4;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa2d0;
LAB_005321a6:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

