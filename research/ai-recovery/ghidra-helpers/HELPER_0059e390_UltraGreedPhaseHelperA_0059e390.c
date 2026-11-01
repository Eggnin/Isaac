/* Local J460 decompiler output.
 * VA: 0x0059e390
 * Entry: 0059e390
 * Dispatcher: 0x006c2990
 * Types: 406
 * Identities: ultra_greed.phase_helper
 * Evidence: Called in Ultra Greed death/final states
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=406; identities=ultra_greed.phase_helper; Called in
   Ultra Greed death/final states */

void __fastcall HELPER_0059e390_UltraGreedPhaseHelperA(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  TypeDescriptor *pTVar4;
  TypeDescriptor *pTVar5;
  undefined4 uVar6;
  undefined local_24 [12];
  float local_18;
  float local_10;
  float local_c;
  float local_8;
  
  iVar1 = FUN_006eef60();
  local_8 = ((float)((double)iVar1 + (double)(&DAT_00bacb00)[-(iVar1 >> 0x1f)]) * DAT_00ba9ff4 -
            DAT_00baa454) * DAT_00baaa84;
  iVar1 = FUN_006eef60();
  local_10 = ((float)((double)iVar1 + (double)(&DAT_00bacb00)[-(iVar1 >> 0x1f)]) * DAT_00ba9ff4 -
             DAT_00baa2d0) * _DAT_00baaa08;
  local_c = local_8;
  FUN_0040b590(local_24,local_10,local_8,DAT_00c7b640,DAT_00c7b644,0x3f666666,0xffffffff);
  if (DAT_00baa454 <= local_18) {
    uVar2 = FUN_006eef60();
    uVar6 = 0;
    pTVar5 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar4 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar3 = 0;
    uVar2 = HELPER_Entity_SpawnRelay(1000,0x67,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar2);
    iVar1 = __RTDynamicCast(uVar2,uVar3,pTVar4,pTVar5,uVar6);
    *(float *)(iVar1 + 0xdc) = local_10;
    *(undefined4 *)(iVar1 + 0x354) = 1000;
    *(float *)(iVar1 + 0xe0) = local_8;
  }
  return;
}

