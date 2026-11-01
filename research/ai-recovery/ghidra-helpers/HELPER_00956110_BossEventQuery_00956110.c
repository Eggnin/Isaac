/* Local J460 decompiler output.
 * VA: 0x00956110
 * Entry: 00956110
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: boss_event
 * Evidence: Called with Ultra Greed event ids 4..11
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=boss_event; Called with Ultra Greed event
   ids 4..11 */

uint HELPER_00956110_BossEventQuery(uint param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  
  uVar3 = param_1;
  iVar1 = DAT_00c7169c;
  if ((*(int *)(DAT_00c7169c + 8) == 2) && (DAT_00c71690 != 0)) {
    cVar2 = FUN_00864c30(param_3,0,param_1,(int)&param_1 + 3);
    if (cVar2 != '\0') {
      return param_1 >> 0x18;
    }
  }
  iVar4 = *(int *)(iVar1 + 0x4b3d8);
  if ((iVar4 != *(int *)(iVar1 + 0x4b3dc)) && (param_2 == -1)) {
    uVar5 = 0;
    if (*(int *)(iVar1 + 0x4b3dc) - iVar4 >> 2 != 0) {
      do {
        cVar2 = (**(code **)(**(int **)(iVar4 + uVar5 * 4) + 0x30))(uVar3);
        if (cVar2 != '\0') {
          return 1;
        }
        uVar5 = uVar5 + 1;
        iVar4 = *(int *)(iVar1 + 0x4b3d8);
      } while (uVar5 < (uint)(*(int *)(iVar1 + 0x4b3dc) - iVar4 >> 2));
    }
    return 0;
  }
  param_1 = uVar3;
  uVar3 = (**(code **)(PTR_vftable_00c57b18 + 0x74))
                    (param_2,HELPER_00a20940_BossEventQueryCallback,&param_1,0,0);
  return uVar3;
}

