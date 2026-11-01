/* Local J460 decompiler output.
 * VA: 0x00536d00
 * Entry: 00536d00
 * Dispatcher: 0x006c2990
 * Types: 216
 * Identities: 216.0.0,216.1.0,216.10.0
 * Evidence: dispatcher=0x006c2990; end=0x005374a0; instructions=478
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=216; identities=216.0.0,216.1.0,216.10.0;
   dispatcher=0x006c2990; end=0x005374a0; instructions=478 */

void __fastcall AI_00536d00(int *param_1)

{
  char cVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  double dVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  int *local_40;
  int *piStack_3c;
  int *local_38;
  int local_34;
  
  iVar4 = param_1[0xb];
  if (param_1[0x2d9] == 0) {
    if ((iVar4 == 1) && (param_1[0xef] == 0)) {
      FUN_006c0f30(param_1[10],0,param_1[0xc],param_1[0x319]);
      iVar4 = param_1[0xb];
      param_1[0xe0] = param_1[0xe1];
    }
    param_1[0x5a] = param_1[0x5a] | 0x40000;
    param_1[0x2d9] = 4;
    param_1[0x5b] = param_1[0x5b];
    if (iVar4 == 0) {
      FUN_0040a380(&DAT_00b1d734,0);
      uVar2 = FUN_006eef60();
      piVar3 = (int *)FUN_006fe410(param_1[10],1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar2,0);
      local_38 = piVar3;
      if (piVar3[0xef] != 0) {
        local_40 = piVar3 + 0xef;
        FUN_004cf210(&local_40);
      }
      piVar3[0xef] = (int)param_1;
      FUN_004cdcf0(piVar3 + 0xef);
      if (param_1[0xf0] != 0) {
        local_40 = param_1 + 0xf0;
        FUN_004cf210(&local_40);
      }
      param_1[0xf0] = (int)piVar3;
      FUN_004cdcf0(param_1 + 0xf0);
      (**(code **)(*piVar3 + 0xc))();
      local_40 = (int *)0x0;
      do {
        uVar2 = FUN_006eef60();
        uVar2 = FUN_006fe410(param_1[10],10,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar2,0);
        piVar3 = (int *)__RTDynamicCast(uVar2,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                        &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if (piVar3[0xef] != 0) {
          piStack_3c = piVar3 + 0xef;
          FUN_004cf210(&piStack_3c);
        }
        piVar3[0xef] = (int)param_1;
        FUN_004cdcf0(piVar3 + 0xef);
        if (piVar3[0xf0] != 0) {
          piStack_3c = piVar3 + 0xf0;
          FUN_004cf210(&piStack_3c);
        }
        piVar3[0xf0] = (int)local_38;
        FUN_004cdcf0(piVar3 + 0xf0);
        piVar3[0x5a] = piVar3[0x5a] & 0xfffffffb;
        piVar3[0x5b] = piVar3[0x5b];
        piVar3[0x2ed] = (int)((float)(int)local_40 / DAT_00baa82c);
        (**(code **)(*piVar3 + 0xc))();
        piVar3[0x5a] = piVar3[0x5a] | 0x40000;
        piVar3[0x5b] = piVar3[0x5b];
        local_40 = (int *)((int)local_40 + 1);
      } while ((int)local_40 < 0xc);
      return;
    }
    if (iVar4 == 1) {
      FUN_0040a380(&DAT_00b5fed4,0);
      param_1[0x2ec] = 0;
      param_1[0x61] = 0;
      return;
    }
    if (iVar4 == 10) {
      FUN_0040a380(&DAT_00b1d20c,0);
      param_1[0xd5] = -500;
      param_1[0x62] = 0;
      param_1[0x61] = 0;
      return;
    }
  }
  else if (iVar4 == 0) {
    local_34 = param_1[0x5b];
    if (param_1[0xf0] == 0) {
      param_1[0x5a] = param_1[0x5a] & 0xfffbffff;
      param_1[0x5b] = local_34;
      uVar2 = FUN_00435c70();
      (**(code **)(*param_1 + 0x24))(uVar2);
      uVar2 = FUN_006eef60();
      piVar3 = (int *)FUN_006fe410(0x18,0,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar2,0);
      (**(code **)(*piVar3 + 0xc))();
      FUN_006d88b0(piVar3);
      return;
    }
    param_1[0xdb] = 0x3f333333;
    if (((param_1[0x5a] & 0x1000800U) == 0) || (param_1[0x3c7] != -1)) {
      if (((param_1[0x5a] & 0x200U) == 0) || (param_1[0x3c7] != -1)) {
        iVar4 = FUN_006be840();
        local_38 = *(int **)(iVar4 + 0x33c);
        local_34 = *(int *)(iVar4 + 0x340);
        FUN_007e33c0(&local_38,0x3e800000,100,1);
      }
      else {
        FUN_007e6300(0);
      }
    }
    else {
      iVar4 = FUN_006be840();
      local_38 = *(int **)(iVar4 + 0x33c);
      local_34 = *(int *)(iVar4 + 0x340);
      FUN_007e4940(&local_38,0);
      if (0 < param_1[0x2d4]) {
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      }
    }
    uVar5 = FUN_006eef60();
    if (uVar5 % 10 == 0) {
      iVar4 = FUN_006eef60();
      FUN_006b64d0((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa2d0 + DAT_00baa198);
      return;
    }
  }
  else {
    if (iVar4 == 1) {
      iVar4 = param_1[0xef];
      if (iVar4 == 0) {
        param_1[0x5a] = param_1[0x5a] & 0xfffbffff;
        param_1[0x5b] = param_1[0x5b];
        uVar2 = FUN_00435c70();
        (**(code **)(*param_1 + 0x24))(uVar2);
        uVar2 = FUN_006eef60();
        piVar3 = (int *)FUN_006fe410(0x1a,0,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar2,0);
        (**(code **)(*piVar3 + 0xc))();
        FUN_006d88b0(piVar3);
      }
      else {
        local_40 = (int *)(((float)param_1[0xe7] * (float)DAT_00baa9d0) / DAT_00baa950 +
                          (float)param_1[0x2ef]);
        if ((float)DAT_00baa9d0 <= (float)local_40) {
          local_40 = DAT_00baa9d0;
        }
        param_1[0x2ef] = (int)local_40;
        dVar7 = (double)(float)param_1[0x2ec];
        _libm_sse2_cos_precise();
        local_38 = (int *)(((float)dVar7 * (float)local_40 + *(float *)(iVar4 + 0x33c)) -
                          (float)param_1[0xcf]);
        dVar7 = (double)(float)param_1[0x2ec];
        _libm_sse2_sin_precise();
        fVar8 = *(float *)(iVar4 + 0x340);
        param_1[0xd8] = (int)local_38;
        param_1[0xd9] = (int)(((float)dVar7 * (float)local_40 + fVar8) - (float)param_1[0xd0]);
        iVar4 = FUN_00447770();
        if (iVar4 == 0) {
          fVar8 = 0.0;
        }
        else {
          FUN_006d85a0(&local_38);
          fVar8 = (float)local_38 * DAT_00baa2d0;
          if ((float)local_38 * DAT_00baa2d0 <= DAT_00baad2c) {
            fVar8 = DAT_00baad2c;
          }
          if (DAT_00baa2d0 <= fVar8) {
            fVar8 = DAT_00baa2d0;
          }
        }
        fVar10 = (float)param_1[0x2ee];
        fVar9 = (float)param_1[0xe7] * DAT_00baa0d0;
        if (fVar9 < (float)((uint)(fVar10 - fVar8) & DAT_00bacb40)) {
          if (fVar8 <= fVar10) {
            fVar8 = fVar10 - fVar9;
          }
          else {
            fVar8 = fVar9 + fVar10;
          }
        }
        param_1[0x2ee] = (int)fVar8;
        fVar10 = DAT_00baa7a8;
        fVar8 = ((fVar8 + DAT_00baa454) * (float)param_1[0xe7] * DAT_00baa708) / DAT_00baa924 +
                (float)param_1[0x2ec];
        param_1[0x2ec] = (int)fVar8;
        while (fVar10 < fVar8) {
          fVar8 = (float)param_1[0x2ec] - fVar10;
          param_1[0x2ec] = (int)fVar8;
        }
        cVar1 = FUN_00417430(0x200,0);
        if (cVar1 != '\0') {
          iVar4 = param_1[0xef];
          *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) | 0x200;
          *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
          iVar4 = param_1[0x8a];
          iVar6 = FUN_00447770();
          *(int *)(iVar6 + 0x228) = iVar4;
          param_1[0xdb] = 0x3f333333;
          return;
        }
      }
      param_1[0xdb] = 0x3f333333;
      return;
    }
    if (iVar4 == 10) {
      iVar4 = param_1[0xef];
      if ((iVar4 != 0) && (iVar6 = param_1[0xf0], iVar6 != 0)) {
        fVar8 = (float)param_1[0x2ed];
        fVar10 = (float)((uint)(fVar8 - DAT_00baa2d0) & DAT_00bacb40);
        fVar10 = fVar10 + fVar10;
        fVar10 = ((*(float *)(iVar4 + 0x340) - (float)param_1[0x38]) - *(float *)(iVar6 + 0x340)) *
                 fVar8 + (DAT_00baa454 - fVar10 * fVar10) * DAT_00baa81c + *(float *)(iVar6 + 0x340)
                 + DAT_00baa7b8;
        param_1[0xd8] =
             (int)((((*(float *)(iVar4 + 0x33c) - (float)param_1[0x37]) - *(float *)(iVar6 + 0x33c))
                    * fVar8 + *(float *)(iVar6 + 0x33c) + DAT_00ba9fe4) - (float)param_1[0xcf]);
        param_1[0xd9] = (int)(fVar10 - (float)param_1[0xd0]);
        return;
      }
      (**(code **)(*param_1 + 0x28))();
    }
  }
  return;
}

