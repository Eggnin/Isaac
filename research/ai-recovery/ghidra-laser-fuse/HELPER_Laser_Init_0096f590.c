/* Local J460 decompiler output.
 * VA: 0x0096f590
 * Entry: 0096f590
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: native laser Init
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; native laser Init */

void __thiscall
HELPER_Laser_Init(int param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_3,
                 undefined4 param_4)

{
  byte bVar1;
  byte **ppbVar2;
  char cVar3;
  byte **ppbVar4;
  uint uVar5;
  byte **ppbVar6;
  byte **ppbVar7;
  bool bVar8;
  
  FUN_006a93a0(param_1,param_2,param_3,param_4);
  if (*(int *)(param_1_00 + 0x330) != 0) {
    FUN_0040bd50(*(int *)(param_1_00 + 0x330) + 0x74,1);
    ppbVar6 = (byte **)(param_1_00 + 0x60);
    if (0xf < *(uint *)(param_1_00 + 0x74)) {
      ppbVar6 = (byte **)*ppbVar6;
    }
    ppbVar2 = *(byte ***)(param_1_00 + 0x7c);
    if (ppbVar2 != (byte **)0x0) {
      ppbVar4 = ppbVar2;
      ppbVar7 = ppbVar6;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar4 = (byte **)*ppbVar2;
      }
      do {
        bVar1 = *(byte *)ppbVar4;
        bVar8 = bVar1 < *(byte *)ppbVar7;
        if (bVar1 != *(byte *)ppbVar7) {
LAB_0096f610:
          uVar5 = -(uint)bVar8 | 1;
          goto LAB_0096f615;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar4 + 1);
        bVar8 = bVar1 < *(byte *)((int)ppbVar7 + 1);
        if (bVar1 != *(byte *)((int)ppbVar7 + 1)) goto LAB_0096f610;
        ppbVar4 = (byte **)((int)ppbVar4 + 2);
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
      } while (bVar1 != 0);
      uVar5 = 0;
LAB_0096f615:
      if ((uVar5 == 0) &&
         ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1_00 + 0x8c) != '\0'))))
      goto LAB_0096f648;
    }
    cVar3 = HELPER_0040a5d0_AnimationPredicateC(ppbVar6,1);
    if (cVar3 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1_00 + 0x8c) = 1;
    }
  }
LAB_0096f648:
  *(undefined2 *)(param_1_00 + 0x517) = 0;
  *(undefined4 *)(param_1_00 + 0x51c) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0x540) = 0;
  *(undefined4 *)(param_1_00 + 0x410) = DAT_00c7b640;
  *(undefined4 *)(param_1_00 + 0x414) = DAT_00c7b644;
  *(undefined4 *)(param_1_00 + 0x4e0) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0x41c) = 0;
  *(undefined4 *)(param_1_00 + 0x418) = 0;
  *(undefined4 *)(param_1_00 + 0x420) = 0;
  *(undefined4 *)(param_1_00 + 0x358) = 0;
  *(undefined4 *)(param_1_00 + 0x428) = 0;
  *(undefined4 *)(param_1_00 + 0x42c) = 0;
  *(undefined4 *)(param_1_00 + 0x430) = 0;
  *(undefined4 *)(param_1_00 + 0x434) = 0;
  *(undefined4 *)(param_1_00 + 0x438) = 0;
  *(undefined4 *)(param_1_00 + 0x43c) = 0;
  *(undefined4 *)(param_1_00 + 0x440) = 0;
  *(undefined4 *)(param_1_00 + 0x444) = 0;
  *(undefined4 *)(param_1_00 + 0x448) = 0;
  *(undefined4 *)(param_1_00 + 0x44c) = 0;
  *(undefined4 *)(param_1_00 + 0x450) = 0;
  *(undefined4 *)(param_1_00 + 0x454) = 0;
  *(undefined4 *)(param_1_00 + 0x4fc) = 0;
  *(undefined4 *)(param_1_00 + 0x4f8) = 0;
  *(undefined4 *)(param_1_00 + 0x458) = 0;
  *(undefined2 *)(param_1_00 + 0x45c) = 0xff01;
  *(undefined4 *)(param_1_00 + 0x184) = 3;
  *(undefined4 *)(param_1_00 + 0x460) = 0;
  *(undefined4 *)(param_1_00 + 0x4b8) = 0;
  *(undefined *)(param_1_00 + 0x45e) = 0;
  *(undefined *)(param_1_00 + 0x4c0) = 0;
  *(undefined4 *)(param_1_00 + 0x4d4) = 0;
  *(undefined4 *)(param_1_00 + 0x4d0) = 0;
  *(undefined4 *)(param_1_00 + 0x4bc) = 0x42a00000;
  *(undefined *)(param_1_00 + 0x4e4) = 0;
  *(undefined4 *)(param_1_00 + 0x4e8) = 0;
  *(undefined *)(param_1_00 + 0x500) = 0;
  *(undefined2 *)(param_1_00 + 0x514) = 0;
  *(undefined4 *)(param_1_00 + 0x4f0) = 0;
  *(undefined4 *)(param_1_00 + 0x4ec) = 0;
  *(undefined4 *)(param_1_00 + 0x504) = 0;
  *(undefined4 *)(param_1_00 + 0x508) = 0;
  *(undefined4 *)(param_1_00 + 0x50c) = 0;
  *(undefined4 *)(param_1_00 + 0x510) = 0;
  *(undefined4 *)(param_1_00 + 0x524) = *(undefined4 *)(param_1_00 + 0x520);
  *(undefined4 *)(param_1_00 + 0x4b0) = *(undefined4 *)(param_1_00 + 0x4ac);
  *(undefined4 *)(param_1_00 + 0x484) = *(undefined4 *)(param_1_00 + 0x480);
  *(undefined4 *)(param_1_00 + 0x49c) = *(undefined4 *)(param_1_00 + 0x498);
  *(undefined4 *)(param_1_00 + 0x490) = *(undefined4 *)(param_1_00 + 0x48c);
  *(undefined4 *)(param_1_00 + 0x4f4) = 0;
  *(undefined4 *)(param_1_00 + 0x544) = 0x7f800000;
  *(undefined4 *)(param_1_00 + 0x558) = 0x7f800000;
  *(undefined4 *)(param_1_00 + 0x55c) = 0;
  *(undefined4 *)(param_1_00 + 0x560) = 0;
  FUN_008615e0(param_1_00);
  return;
}

