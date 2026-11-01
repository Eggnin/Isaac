/* Local J460 decompiler output.
 * VA: 0x006d6690
 * Entry: 006d6690
 * Dispatcher: 0x006c2990
 * Types: 292
 * Identities: 292.0.0,292.1.0
 * Evidence: dispatcher=0x006c2990; end=0x006d6971; instructions=180
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=292; identities=292.0.0,292.1.0; dispatcher=0x006c2990;
   end=0x006d6971; instructions=180 */

void __fastcall AI_006d6690(int *param_1)

{
  int *piVar1;
  code *pcVar2;
  int iVar3;
  uint uVar4;
  float *pfVar5;
  undefined4 uVar6;
  int iVar7;
  float fVar8;
  float fVar9;
  undefined4 uVar10;
  char *pcVar11;
  float local_48;
  int local_44;
  float local_40;
  int local_3c;
  uint local_c;
  
  fVar8 = DAT_00baa454;
  local_c = DAT_00bf93b4 ^ (uint)&local_48;
  if (param_1[0x2d9] == 0) {
    param_1[0x5b] = param_1[0x5b];
    iVar3 = 0x10;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x20d0011;
    if (fVar8 < (float)param_1[0xe0]) {
      iVar3 = 3;
    }
    param_1[0x2d9] = iVar3;
    if (param_1[0xf5] == 0) {
      param_1[0xd5] = 100;
      FUN_00aef12b();
      return;
    }
    goto LAB_006d6b85;
  }
  if (0.0 < (float)param_1[5]) {
    local_40 = DAT_00baa454;
    uVar4 = FUN_006eef60();
    fVar8 = local_40;
    if (uVar4 % 3 == 0) {
      fVar8 = DAT_00baa630;
    }
    fVar9 = DAT_00baa75c;
    if (((param_1[6] & 4U) != 0) || (fVar9 = fVar8, 0.0 < fVar8)) {
      local_48 = 1.0;
      local_40 = (float)param_1[0xe0] - fVar9;
      pfVar5 = &local_40;
      if ((float)param_1[0xe0] - fVar9 <= DAT_00baa454) {
        pfVar5 = &local_48;
      }
      param_1[0xe0] = (int)*pfVar5;
    }
    param_1[3] = param_1[2];
    param_1[5] = 0;
    param_1[6] = 0;
    param_1[7] = 0;
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') || ((float)param_1[0xe0] <= DAT_00baa454)) {
    if (param_1[0x2d9] != 0x10) {
      uVar6 = FUN_006eef60();
      local_48 = (float)param_1[0xcf];
      local_44 = param_1[0xd0];
      FUN_006fe410(1000,1,&local_48,&DAT_00c7b640,param_1,0,uVar6,0);
      local_40 = (float)param_1[0xcf];
      local_3c = param_1[0xd0];
      FUN_00703190(&local_40,param_1);
      local_48 = (float)param_1[0xcf];
      local_44 = param_1[0xd0];
      FUN_006ff2a0(&local_48,0x42c80000,0x42960000,0,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                   DAT_00c7910c,0x1004,0,0);
      uVar6 = FUN_00407170();
      iVar3 = FUN_006eef60();
      local_48 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa75c + DAT_00baa630;
      uVar4 = FUN_006eef60();
      local_3c = param_1[0xd0];
      local_40 = (float)param_1[0xcf];
      FUN_00703330(&local_40,0x1b,uVar4 % 3 + 2,local_48,uVar6,0x47c35000,0);
      FUN_006ee440(1,0);
      uVar4 = param_1[0xf7];
      if (uVar4 == 0) {
        FUN_00a112c0(0x10,"RNG Seed is zero!\n");
        uVar4 = param_1[0xf7];
        if (uVar4 == 0) {
          pcVar2 = (code *)swi(3);
          (*pcVar2)();
          return;
        }
      }
      uVar4 = uVar4 >> ((byte)param_1[0xf8] & 0x1f) ^ uVar4;
      uVar4 = uVar4 << ((byte)param_1[0xf9] & 0x1f) ^ uVar4;
      uVar4 = uVar4 >> ((byte)param_1[0xfa] & 0x1f) ^ uVar4;
      param_1[0xf7] = uVar4;
      if (uVar4 % 100 == 0) {
        iVar7 = FUN_007e9020(2);
        iVar3 = DAT_00c71678;
        if ((((iVar7 == 0) &&
             (iVar7 = *(int *)(DAT_00c71678 + 0x1aed4),
             400 < (int)(*(int *)(DAT_00c71678 + 0x1aed8) - iVar7 & 0xfffffff8U))) &&
            (*(char *)(iVar7 + 0x194) != '\0')) && (*(char *)(iVar7 + 0x195) != '\0')) {
          *(undefined *)(iVar7 + 0x194) = 0;
          piVar1 = (int *)(iVar3 + 0x1aee0);
          *piVar1 = *piVar1 + -1;
          FUN_006ee440(1,0);
          uVar6 = FUN_006eef60();
          uVar10 = 0x32;
        }
        else {
          iVar7 = *(int *)(DAT_00c71678 + 0x1aed4);
          if ((((int)(*(int *)(DAT_00c71678 + 0x1aed8) - iVar7 & 0xfffffff8U) < 0x149) ||
              (*(char *)(iVar7 + 0x14c) == '\0')) || (*(char *)(iVar7 + 0x14d) == '\0'))
          goto LAB_006d6a94;
          *(undefined *)(iVar7 + 0x14c) = 0;
          piVar1 = (int *)(iVar3 + 0x1aee0);
          *piVar1 = *piVar1 + -1;
          FUN_006ee440(1,0);
          uVar6 = FUN_006eef60();
          uVar10 = 0x29;
        }
        FUN_006fe410(5,0x15e,param_1 + 0xcf,&local_48,0,uVar10,uVar6,0);
      }
    }
LAB_006d6a94:
    if (param_1[0xf5] == 0) {
      *(undefined *)((int)param_1 + 0x173) = 0;
      param_1[0x2d9] = 0x10;
      param_1[0xe0] = 0x3f000000;
    }
    else {
      (**(code **)(*param_1 + 0x28))();
    }
  }
  if (param_1[0x2d9] != 3) {
    if (param_1[0x2d9] == 0x10) {
      param_1[0x62] = 0;
      FUN_0040a380("Blown",0);
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa1f8);
    }
    goto LAB_006d6b85;
  }
  fVar8 = (float)param_1[0xe0];
  if (fVar8 <= DAT_00baa6fc) {
    if (DAT_00baa630 < fVar8) {
      pcVar11 = "IdleMedium";
      goto LAB_006d6b0c;
    }
    if (DAT_00baa454 < fVar8) {
      pcVar11 = "ReadyToExplode";
      goto LAB_006d6b0c;
    }
  }
  else {
    pcVar11 = "Idle";
LAB_006d6b0c:
    FUN_0040a380(pcVar11,0);
  }
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  if (-4 < param_1[0x2f0]) {
    param_1[0x2f0] = param_1[0x2f0] + -1;
    FUN_00aef12b();
    return;
  }
LAB_006d6b85:
  FUN_00aef12b();
  return;
}

