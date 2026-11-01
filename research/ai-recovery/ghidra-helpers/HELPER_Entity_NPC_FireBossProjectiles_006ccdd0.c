/* Local J460 decompiler output.
 * VA: 0x006ccdd0
 * Entry: 006ccdd0
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_boss_attack
 * Evidence: Boss projectile emitter
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_boss_attack; Boss projectile
   emitter */

int * __thiscall
HELPER_Entity_NPC_FireBossProjectiles
          (int param_1_00,int param_1,float *param_2,float param_3,int param_4)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  float fVar7;
  float fVar8;
  float local_58;
  float local_54;
  int *local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  uint uStack_10;
  int iStack_c;
  
  local_48 = DAT_00baa454;
  if ((*(uint *)(param_1_00 + 0x16c) & 0x400000) != 0) {
    local_48 = DAT_00baa3a4;
  }
  if (0 < param_1) {
    local_44 = param_3 * DAT_00baa120 + _DAT_00baa20c;
    do {
      local_58 = *param_2;
      if (((NAN(local_58) || NAN(DAT_00c7b640)) == (local_58 == DAT_00c7b640)) ||
         ((NAN(param_2[1]) || NAN(DAT_00c7b644)) == (param_2[1] == DAT_00c7b644))) {
        local_54 = param_2[1] - *(float *)(param_1_00 + 0x340);
        local_58 = local_58 - *(float *)(param_1_00 + 0x33c);
        fVar7 = local_54 * local_54 + local_58 * local_58;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar7) {
          local_58 = (DAT_00baa454 / fVar7) * local_58;
          local_54 = local_54 * (DAT_00baa454 / fVar7);
        }
        iVar2 = FUN_006eef60();
        fVar8 = (float)((double)iVar2 + (&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa704;
        fVar8 = fVar8 + fVar8;
        iVar2 = FUN_006eef60();
        local_4c = (int *)((float)((double)iVar2 + (&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4
                          );
        fVar7 = fVar8;
        FUN_0041d540();
        fVar7 = fVar7 * (float)local_4c * DAT_00baa730 + local_58 * DAT_00baa7b8;
        FUN_0041d520();
        local_3c = fVar8 * (float)local_4c * DAT_00baa730 + local_54 * DAT_00baa7b8;
      }
      else {
        iVar2 = FUN_006eef60();
        fVar7 = (float)((double)iVar2 + (&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa704;
        local_4c = (int *)(fVar7 + fVar7);
        piVar4 = local_4c;
        FUN_0041d540();
        fVar7 = (float)piVar4 * DAT_00baa7b8;
        piVar4 = local_4c;
        FUN_0041d520();
        local_3c = (float)piVar4 * DAT_00baa7b8;
      }
      local_40 = fVar7;
      uVar3 = FUN_006eef60();
      local_38 = *(float *)(param_4 + 0x60) + *(float *)(param_1_00 + 0x33c);
      local_34 = *(float *)(param_1_00 + 0x340) + *(float *)(param_4 + 100);
      uVar3 = HELPER_Entity_CreateDispatcher
                        (9,*(undefined4 *)(param_4 + 0x94),&local_38,&local_40,param_1_00,0,uVar3,0)
      ;
      piVar4 = (int *)__RTDynamicCast(uVar3,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_Projectile::RTTI_Type_Descriptor,
                                      0);
      piVar4[0x106] = (int)local_44;
      iVar2 = FUN_006eef60();
      piVar4[0x105] =
           (int)((DAT_00baa784 -
                 (float)((double)iVar2 + (&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa8d0 * DAT_00baa3a4) - param_3);
      uVar5 = FUN_006eef60();
      iVar2 = FUN_006eef60();
      piVar4[0x108] =
           (int)(((float)((double)(uVar5 & 1) + DAT_00bacb00) * DAT_00baa280 + DAT_00baa3e0 +
                 (float)((double)iVar2 + (&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa0d0) * *(float *)(param_4 + 0x14) * local_48);
      fVar7 = *(float *)(param_4 + 0x9c);
      if (*(float *)(param_4 + 0x9c) < 0.0) {
        fVar7 = DAT_00baa454;
      }
      (**(code **)(*piVar4 + 0x40))(fVar7);
      piVar4[0x10e] = piVar4[0x10e] | *(uint *)(param_4 + 0x58);
      piVar4[0x10f] = piVar4[0x10f] | *(uint *)(param_4 + 0x5c);
      piVar4[0x104] = (int)(*(float *)(param_4 + 4) + (float)piVar4[0x104]);
      piVar4[0x106] = (int)((float)piVar4[0x106] + *(float *)(param_4 + 0xc));
      piVar4[0x105] = (int)(*(float *)(param_4 + 8) + (float)piVar4[0x105]);
      fVar7 = *(float *)(param_4 + 0x10);
      piVar4[0xd9] = (int)(fVar7 * (float)piVar4[0xd9]);
      piVar4[0xd8] = (int)(fVar7 * (float)piVar4[0xd8]);
      (**(code **)(*piVar4 + 0x3c))(param_4 + 0x2c,0xffffffff,0xff,0,1);
      if (piVar4[0xef] != 0) {
        local_4c = piVar4 + 0xef;
        FUN_004cf210(&local_4c);
      }
      piVar4[0xef] = param_1_00;
      FUN_004cdcf0(piVar4 + 0xef);
      piVar4[0x10b] = *(int *)(param_4 + 0x24);
      iVar2 = *(int *)(param_4 + 0x6c);
      piVar4[0xcd] = *(int *)(param_4 + 0x68);
      piVar4[0xce] = iVar2;
      iVar2 = *(int *)(param_4 + 0x80);
      piVar4[0x115] = *(int *)(param_4 + 0x84);
      piVar4[0x114] = iVar2;
      piVar4[0x116] = *(int *)(param_4 + 0x88);
      piVar4[0x117] = *(int *)(param_4 + 0x8c);
      piVar4[0x11c] = *(int *)(param_4 + 0xa0);
      cVar1 = FUN_00417430(0x1000000,0);
      if ((cVar1 != '\0') && (*(int *)(param_4 + 0x94) == 0xb)) {
        uStack_30 = *(undefined4 *)(param_1_00 + 0x28);
        uStack_20 = *(undefined4 *)(param_1_00 + 0x33c);
        uStack_1c = *(undefined4 *)(param_1_00 + 0x340);
        uStack_2c = *(undefined4 *)(param_1_00 + 0x2c);
        uStack_28 = *(undefined4 *)(param_1_00 + 0x34);
        uStack_24 = *(undefined4 *)(param_1_00 + 0x38);
        uStack_18 = *(undefined4 *)(param_1_00 + 0x360);
        uStack_14 = *(undefined4 *)(param_1_00 + 0x364);
        local_4c = (int *)(uint)((*(uint *)(param_1_00 + 0x168) & 0x100) != 0);
        if ((*(uint *)(param_1_00 + 0x168) & 0x20000000) == 0) {
          uVar5 = 0;
        }
        else {
          uVar5 = 2;
        }
        if ((*(uint *)(param_1_00 + 0x16c) & 0x400000) == 0) {
          uVar6 = 0;
        }
        else {
          uVar6 = 4;
        }
        uStack_10 = uVar6 | uVar5 | (uint)local_4c;
        iStack_c = param_1_00;
        FUN_006b5c10(&uStack_30,0xffffff6a,0,0);
      }
      FUN_006cb010(*(undefined4 *)(param_1_00 + 0x168),*(undefined4 *)(param_1_00 + 0x16c),
                   param_1_00);
      if (piVar4[0xef] != 0) {
        local_4c = piVar4 + 0xef;
        FUN_004cf210(&local_4c);
      }
      piVar4[0xef] = param_1_00;
      FUN_004cdcf0(piVar4 + 0xef);
      param_1 = param_1 + -1;
      piVar4[0xd] = *(int *)(param_1_00 + 0x28);
    } while (param_1 != 0);
    return piVar4;
  }
  return (int *)0x0;
}

