/* Local J460 decompiler output.
 * VA: 0x006ad750
 * Entry: 006ad750
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.*
 * Evidence: Effect Update 0x5EB8CC..0x5EBFA6 call site
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.*; Effect Update
   0x5EB8CC..0x5EBFA6 call site */

void __thiscall
HELPER_Effect_StatusApply(int *param_1_00,undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int *piVar2;
  char cVar3;
  char cVar4;
  int extraout_EDX;
  char param_11;
  
  cVar3 = FUN_006acd10(param_1);
  if (cVar3 == '\0') {
    FUN_006ad350(param_2,param_1);
    cVar4 = FUN_006a8db0();
    cVar3 = param_11;
    if (cVar4 != '\0') {
      piVar2 = (int *)param_1_00[0xef];
      while (piVar1 = piVar2, piVar1 != (int *)0x0) {
        param_1_00 = piVar1;
        piVar2 = (int *)piVar1[0xef];
      }
    }
    if (extraout_EDX < 1) {
      if (extraout_EDX < 0) {
        if ((param_1_00[0x5a] & 1U) == 0) {
          param_1_00[0x88] = 2;
          param_1_00[0x5a] = param_1_00[0x5a] | 0x80;
          param_1_00[0x5b] = param_1_00[0x5b];
        }
      }
    }
    else if (((param_1_00[0x5a] & 1U) == 0) && ((param_1_00[0x8e] < 1 || (param_11 != '\0')))) {
      param_1_00[0x88] = param_1_00[0x88] + extraout_EDX;
      param_1_00[0x5a] = param_1_00[0x5a] | 0x80;
      param_1_00[0x5b] = param_1_00[0x5b];
      (**(code **)(*param_1_00 + 0x3c))(&stack0x00000010,extraout_EDX,0xff,0,1);
      if ((cVar3 == '\0') && (cVar3 = FUN_006ae7a0(), cVar3 != '\0')) {
        param_1_00[0x8e] = 0xf0;
      }
    }
    param_1_00[0xeb] = param_3;
    FUN_006a8a20();
  }
  return;
}

