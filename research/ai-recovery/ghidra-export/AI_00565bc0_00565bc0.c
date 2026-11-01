/* Local J460 decompiler output.
 * VA: 0x00565bc0
 * Entry: 00565bc0
 * Dispatcher: 0x006c2990
 * Types: 837
 * Identities: 837.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00565dd0; instructions=139
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=837; identities=837.0.0; dispatcher=0x006c2990;
   end=0x00565dd0; instructions=139 */

void __fastcall AI_00565bc0(int *param_1)

{
  float *pfVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  
  iVar2 = param_1[0x2d9];
  if (iVar2 == 0) {
    pfVar1 = (float *)(param_1 + 0xcf);
    iVar5 = FUN_00548f30(pfVar1,pfVar1,0xffffffff);
    iVar2 = DAT_00c71678;
    if (iVar5 < 0) {
      (**(code **)(*param_1 + 0x28))();
      return;
    }
    if (iVar5 < 0x1c0) {
      *(undefined2 *)(*(int *)(DAT_00c71678 + 0x18300) + 0xe6c + iVar5 * 2) = 5;
    }
    iVar2 = *(int *)(*(int *)(iVar2 + 0x18300) + 0xc);
    fVar7 = (float)(iVar5 % iVar2) * DAT_00baa904 + DAT_00baa904;
    fVar6 = (float)(iVar5 / iVar2) * DAT_00baa904 + DAT_00baaa00;
    param_1[0xcd] = (int)fVar7;
    *pfVar1 = fVar7;
    param_1[0xce] = (int)fVar6;
    param_1[0xd0] = (int)fVar6;
    param_1[0x2d9] = 3;
    param_1[0x61] = 0;
  }
  else if (iVar2 == 3) {
    FUN_0040a380(&DAT_00b1bc54,0);
    param_1[0x104] = param_1[0x104] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    if (0x1e < param_1[0x104]) {
      FUN_00956780();
      FUN_0092dc30(0x18c,0x3f800000,2,0,0x3f800000,0);
      FUN_0040a380("Leave",0);
      param_1[0x2d9] = 8;
    }
  }
  else if (iVar2 == 8) {
    iVar2 = FUN_006ac760();
    if (iVar2 != 0) {
      uVar3 = FUN_006eef60();
      piVar4 = (int *)FUN_006fe410(1000,0x85,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar3,0);
      (**(code **)(*piVar4 + 0xc))();
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      (**(code **)(*param_1 + 0x28))();
    }
  }
  param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
  param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
  return;
}

