/* Local J460 decompiler output.
 * VA: 0x006bec40
 * Entry: 006bec40
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_attack
 * Evidence: NPC projectile helper
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_attack; NPC projectile helper */

void __thiscall HELPER_Entity_NPC_ProjectileHelper(int param_1_00,float *param_1,float param_2)

{
  undefined4 uVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  float *pfVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float local_20 [2];
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  iVar3 = DAT_00c71678;
  local_c = *(float *)(param_1_00 + 0x16c);
  uVar4 = *(uint *)(param_1_00 + 0x168);
  if ((uVar4 & 0x200) != 0) {
    if ((((NAN(*(float *)(param_1_00 + 0xc2c)) || NAN(DAT_00c7b640)) !=
          (*(float *)(param_1_00 + 0xc2c) == DAT_00c7b640)) &&
        ((NAN(*(float *)(param_1_00 + 0xc30)) || NAN(DAT_00c7b644)) !=
         (*(float *)(param_1_00 + 0xc30) == DAT_00c7b644))) ||
       (((uVar4 & 0x4000) == 0 &&
        ((cVar2 = FUN_006fd350(), cVar2 == '\0' && (*(int *)(iVar3 + 0x264f8) % 0xf == 0)))))) {
      local_18 = *(float *)(param_1_00 + 0x370);
      iVar3 = FUN_006eef60();
      local_20[0] = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa704;
      local_20[0] = local_20[0] + local_20[0];
      iVar3 = FUN_006eef60();
      local_10 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4;
      iVar3 = FUN_006eef60();
      fVar6 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
              local_10 * DAT_00baaad4;
      fVar8 = local_20[0];
      FUN_0041d540();
      local_10 = fVar8 * fVar6 + *(float *)(param_1_00 + 0x33c);
      fVar8 = local_20[0];
      FUN_0041d520();
      local_c = fVar8 * fVar6 + *(float *)(param_1_00 + 0x340);
      FUN_00812f50(&local_18,&local_10,local_18,local_18,local_18);
      *(float *)(param_1_00 + 0xc2c) = local_18;
      *(float *)(param_1_00 + 0xc30) = local_14;
    }
    fVar8 = *(float *)(param_1_00 + 0xc2c);
    param_1[1] = *(float *)(param_1_00 + 0xc30);
    *param_1 = fVar8;
    return;
  }
  if ((uVar4 & 0x1000800) != 0) {
    iVar3 = *(int *)(param_1_00 + 0x28);
    if (iVar3 == 0x10) {
      if (*(int *)(param_1_00 + 0x2c) == 2) {
LAB_006bee6f:
        iVar3 = FUN_006be840();
        fVar8 = *(float *)(param_1_00 + 0x33c);
        local_20[0] = *(float *)(param_1_00 + 0x340);
        local_18 = *(float *)(iVar3 + 0x33c) - fVar8;
        local_10 = *(float *)(iVar3 + 0x340) - local_20[0];
        fVar6 = local_18;
        if (((NAN(param_2) == (param_2 == 0.0)) &&
            (fVar7 = local_10 * local_10 + local_18 * local_18, NAN(fVar7) == (fVar7 == 0.0))) &&
           (FUN_00435a50(), fVar6 = local_18, 0.0 < fVar7)) {
          local_10 = local_10 * (param_2 / fVar7);
          fVar6 = local_18 * (param_2 / fVar7);
        }
        uVar1 = *(undefined4 *)(param_1_00 + 0x370);
        fVar8 = fVar8 - fVar6;
        local_20[0] = local_20[0] - local_10;
        local_10 = fVar8;
        local_c = local_20[0];
        FUN_00812f50(&local_18,&local_10,uVar1,uVar1,uVar1);
        if (((NAN(fVar8) || NAN(local_18)) != (fVar8 == local_18)) &&
           ((NAN(local_20[0]) || NAN(local_14)) != (local_20[0] == local_14))) {
          *(float *)(param_1_00 + 0xc2c) = DAT_00c7b640;
          *(float *)(param_1_00 + 0xc30) = DAT_00c7b644;
          *param_1 = local_18;
          param_1[1] = local_14;
          return;
        }
        cVar2 = FUN_00a10600(&DAT_00c7b640);
        if (cVar2 == '\0') {
          uVar4 = FUN_006eef60();
          cVar2 = FUN_006ac710(uVar4 % 0xf + 5,0);
          if (cVar2 == '\0') {
            fVar8 = *(float *)(param_1_00 + 0xc30);
            *param_1 = *(float *)(param_1_00 + 0xc2c);
            param_1[1] = fVar8;
            return;
          }
        }
        local_10 = *(float *)(param_1_00 + 0x370);
        pfVar5 = (float *)FUN_0067f070(local_20);
        iVar3 = FUN_006eef60();
        fVar8 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
                DAT_00baa9d0;
        local_18 = *(float *)(param_1_00 + 0x33c) - fVar8 * *pfVar5;
        local_14 = *(float *)(param_1_00 + 0x340) - fVar8 * pfVar5[1];
        FUN_00812f50(&local_10,&local_18,local_10,local_10,local_10);
        *(float *)(param_1_00 + 0xc2c) = local_10;
        *(float *)(param_1_00 + 0xc30) = local_c;
        *param_1 = local_10;
        param_1[1] = local_c;
        return;
      }
    }
    else if ((iVar3 != 0x16) && (iVar3 != 0xcd)) goto LAB_006bee6f;
  }
  iVar3 = FUN_006be840();
  fVar8 = *(float *)(iVar3 + 0x33c);
  param_1[1] = *(float *)(iVar3 + 0x340);
  *param_1 = fVar8;
  return;
}

