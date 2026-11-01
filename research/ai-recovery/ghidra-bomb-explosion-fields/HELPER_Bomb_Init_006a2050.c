/* Local J460 decompiler output.
 * VA: 0x006a2050
 * Entry: 006a2050
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Native constructor defaults for ExplosionDamage, scale and countdown fields
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Native constructor defaults for
   ExplosionDamage, scale and countdown fields */

void __thiscall
HELPER_Bomb_Init(int param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_3,
                undefined4 param_4)

{
  byte bVar1;
  int iVar2;
  byte **ppbVar3;
  code *pcVar4;
  char cVar5;
  uint uVar6;
  byte **ppbVar7;
  byte *pbVar8;
  uint uVar9;
  int iVar10;
  bool bVar11;
  char *pcVar12;
  undefined auStack_74 [7];
  char local_6d;
  uint local_6c;
  int *local_68;
  float local_64;
  float fStack_60;
  float fStack_5c;
  int iStack_58;
  undefined4 local_44;
  undefined4 uStack_40;
  int local_3c;
  float local_38;
  float local_34;
  float local_30;
  int local_24;
  undefined4 local_14;
  uint local_10;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_74;
  FUN_006a93a0(param_1,param_2,param_3,param_4);
  iVar2 = *(int *)(param_1_00 + 0x2c);
  *(undefined4 *)(param_1_00 + 0x418) = 0x42c80000;
  *(undefined4 *)(param_1_00 + 0x410) = 0x2d;
  *(undefined4 *)(param_1_00 + 0x458) = 0;
  *(undefined4 *)(param_1_00 + 0x45c) = 0;
  if ((((iVar2 == 3) || (iVar2 == 4)) || (iVar2 == 8)) || (iVar2 == 0x12)) {
    uVar6 = *(uint *)(param_1_00 + 0x3dc);
    if (uVar6 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      uVar6 = *(uint *)(param_1_00 + 0x3dc);
      if (uVar6 == 0) {
        pcVar4 = (code *)swi(3);
        (*pcVar4)();
        return;
      }
    }
    uVar6 = uVar6 >> ((byte)*(undefined4 *)(param_1_00 + 0x3e0) & 0x1f) ^ uVar6;
    uVar6 = uVar6 << ((byte)*(undefined4 *)(param_1_00 + 0x3e4) & 0x1f) ^ uVar6;
    uVar6 = uVar6 >> ((byte)*(undefined4 *)(param_1_00 + 1000) & 0x1f) ^ uVar6;
    *(uint *)(param_1_00 + 0x3dc) = uVar6;
    *(int *)(param_1_00 + 0x410) = *(int *)(param_1_00 + 0x410) + uVar6 % 0x1e;
  }
  iVar2 = *(int *)(param_1_00 + 0x2c);
  if (iVar2 == 0xf) {
    *(undefined4 *)(param_1_00 + 0x410) = 0x5e;
    *(undefined4 *)(param_1_00 + 0x418) = 0x41a00000;
  }
  else if ((iVar2 == 0x11) || (iVar2 == 0x14)) {
    *(undefined4 *)(param_1_00 + 0x410) = 0x57;
    *(undefined4 *)(param_1_00 + 0x418) = 0x43960000;
  }
  *(undefined4 *)(param_1_00 + 0x434) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0x42c) = 0;
  *(undefined4 *)(param_1_00 + 0x420) = 0;
  *(undefined4 *)(param_1_00 + 0x184) = 5;
  *(undefined4 *)(param_1_00 + 0x430) = 0x40004;
  *(undefined *)(param_1_00 + 0x448) = 0;
  *(undefined4 *)(param_1_00 + 0x438) = 0;
  *(undefined4 *)(param_1_00 + 0x43c) = 0;
  *(undefined4 *)(param_1_00 + 0x440) = 0;
  *(undefined4 *)(param_1_00 + 0x444) = 0;
  *(undefined *)(param_1_00 + 0x460) = 0;
  *(undefined4 *)(param_1_00 + 0x424) = 0;
  *(undefined4 *)(param_1_00 + 0x41c) = 0;
  *(undefined4 *)(param_1_00 + 0x44c) = 0x3f800000;
  *(undefined4 *)(param_1_00 + 0x450) = 0;
  if (*(int *)(param_1_00 + 0x330) != 0) {
    FUN_0040bd50(*(int *)(param_1_00 + 0x330) + 0x74,1);
  }
  *(undefined4 *)(param_1_00 + 0x9cc) = *(undefined4 *)(param_1_00 + 0x9c8);
  iVar2 = *(int *)(param_1_00 + 0x2c);
  *(undefined2 *)(param_1_00 + 0x462) = 0;
  if (iVar2 == 2) {
    ppbVar3 = *(byte ***)(param_1_00 + 0x7c);
    if (ppbVar3 != (byte **)0x0) {
      ppbVar7 = ppbVar3;
      if (&DAT_0000000f < ppbVar3[5]) {
        ppbVar7 = (byte **)*ppbVar3;
      }
      pbVar8 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar7;
        bVar11 = bVar1 < *pbVar8;
        if (bVar1 != *pbVar8) {
LAB_006a2260:
          uVar6 = -(uint)bVar11 | 1;
          goto LAB_006a2265;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar7 + 1);
        bVar11 = bVar1 < pbVar8[1];
        if (bVar1 != pbVar8[1]) goto LAB_006a2260;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pbVar8 = pbVar8 + 2;
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_006a2265:
      if ((uVar6 == 0) &&
         ((*(byte *)(ppbVar3 + 0xd) == 0 || (*(char *)(param_1_00 + 0x8c) != '\0'))))
      goto LAB_006a2468;
    }
    pcVar12 = "Idle";
  }
  else if (((iVar2 == 4) || (iVar2 == 3)) || ((iVar2 == 8 || ((iVar2 == 0x11 || (iVar2 == 0x12))))))
  {
    if (*(int *)(param_1_00 + 0x30) == 1) {
      cVar5 = HELPER_0040a5d0_AnimationPredicateC("BombReturn",1);
      if (cVar5 != '\0') {
        HELPER_AnimationState_Loop();
        *(undefined *)(param_1_00 + 0x8c) = 1;
      }
      FUN_00823590(&local_38,param_1_00 + 0x33c);
      local_64 = local_38 * DAT_00baa630;
      local_44 = 0;
      uStack_40 = 0;
      local_3c = 0;
      fStack_60 = local_34 * DAT_00baa630;
      iStack_58 = 0x3f800000;
      local_6c = 0;
      fStack_5c = local_30 * DAT_00baa630;
      if (*(int *)(param_1_00 + 200) != 0) {
        do {
          local_68 = (int *)FUN_0040b220(local_6c);
          if (*local_68 == 0) {
            local_24 = 0;
            local_10 = 0xf;
            local_14 = 0;
          }
          else {
            FUN_0040cf50(*local_68 + 8);
          }
          uVar6 = local_10;
          iVar2 = local_24;
          local_6d = FUN_0040cae0(&DAT_00b1d57c,4);
          if (0xf < uVar6) {
            uVar9 = uVar6 + 1;
            iVar10 = iVar2;
            if (0xfff < uVar9) {
              iVar10 = *(int *)(iVar2 + -4);
              uVar9 = uVar6 + 0x24;
              if (0x1f < (iVar2 - iVar10) - 4U) {
                    /* WARNING: Subroutine does not return */
                _invalid_parameter_noinfo_noreturn();
              }
            }
            FUN_00aef15c(iVar10,uVar9);
          }
          if ((local_6d != '\0') && ((float *)(local_68 + 0x12) != &local_64)) {
            local_68[0x12] = (int)local_64;
            local_68[0x13] = (int)fStack_60;
            local_68[0x14] = (int)fStack_5c;
            local_68[0x15] = iStack_58;
            *(undefined (*) [16])(local_68 + 0x16) = ZEXT816(0);
            *(ulonglong *)(local_68 + 0x1a) = CONCAT44(uStack_40,local_44);
            local_68[0x1c] = local_3c;
          }
          local_6c = local_6c + 1;
        } while (local_6c < *(uint *)(param_1_00 + 200));
      }
      goto LAB_006a2468;
    }
    pcVar12 = "Appear";
  }
  else {
    pcVar12 = "Pulse";
  }
  cVar5 = HELPER_0040a5d0_AnimationPredicateC(pcVar12,1);
  if (cVar5 != '\0') {
    HELPER_AnimationState_Loop();
    *(undefined *)(param_1_00 + 0x8c) = 1;
  }
LAB_006a2468:
  *(undefined4 *)(param_1_00 + 0x428) = 0;
  *(undefined *)(param_1_00 + 0x461) = 0;
  if ((*(int *)(param_1_00 + 0x2c) == 0x13) || (*(int *)(param_1_00 + 0x2c) == 0x14)) {
    *(uint *)(param_1_00 + 0x168) = *(uint *)(param_1_00 + 0x168) | 0x4000000;
    *(undefined4 *)(param_1_00 + 0x16c) = *(undefined4 *)(param_1_00 + 0x16c);
    *(undefined4 *)(param_1_00 + 0x350) = 0xc1600000;
  }
  FUN_00861ea0(param_1_00);
  FUN_00aef12b();
  return;
}

