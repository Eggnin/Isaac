/* Local J460 decompiler output.
 * VA: 0x00452c60
 * Entry: 00452c60
 * Dispatcher: 0x006c2990
 * Types: 411
 * Identities: big_horn.attack_helper
 * Evidence: Called during Big Horn State 13 discharge
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=411; identities=big_horn.attack_helper; Called during
   Big Horn State 13 discharge */

void __fastcall HELPER_00452c60_BigHornAttackHelperA(int param_1,int param_2)

{
  int iVar1;
  char cVar2;
  float fVar3;
  float fVar4;
  
  fVar3 = *(float *)(param_1 + 0x33c) / *(float *)(param_2 + 0x374) -
          *(float *)(param_2 + 0x33c) / *(float *)(param_2 + 0x374);
  fVar4 = *(float *)(param_1 + 0x340) / *(float *)(param_2 + 0x378) -
          *(float *)(param_2 + 0x340) / *(float *)(param_2 + 0x378);
  if ((((fVar4 * fVar4 + fVar3 * fVar3 < *(float *)(param_2 + 0x370) * *(float *)(param_2 + 0x370))
       && (iVar1 = *(int *)(param_1 + 0x184), iVar1 != 0)) && (iVar1 != 3)) &&
     (((iVar1 != 1 && (iVar1 != 2)) && (*(int *)(param_1 + 0x3fc) == 0)))) {
    cVar2 = FUN_009305f0(0x271);
    if (cVar2 == '\0') {
      FUN_007abe20("FallIn");
      *(undefined *)(param_1 + 0x410) = 0;
      *(undefined4 *)(param_1 + 0x188) = 0;
      *(undefined4 *)(param_1 + 0x3fc) = 1;
      *(undefined4 *)(param_1 + 0x400) = 0;
    }
  }
  return;
}

