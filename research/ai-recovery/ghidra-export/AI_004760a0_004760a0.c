/* Local J460 decompiler output.
 * VA: 0x004760a0
 * Entry: 004760a0
 * Dispatcher: 0x006c2990
 * Types: 51
 * Identities: 51.0.0,51.1.0,51.10.0,51.11.0,51.20.0,51.21.0,51.30.0,51.31.0
 * Evidence: dispatcher=0x006c2990; end=0x00476860; instructions=435
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=51;
   identities=51.0.0,51.1.0,51.10.0,51.11.0,51.20.0,51.21.0,51.30.0,51.31.0; dispatcher=0x006c2990;
   end=0x00476860; instructions=435 */

void __fastcall AI_004760a0(int param_1)

{
  undefined4 *puVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  char *pcVar10;
  int iVar11;
  undefined4 uVar12;
  int *piVar13;
  uint uVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  undefined4 local_60 [11];
  undefined4 local_34 [12];
  
  if (*(int *)(param_1 + 0xb64) == 0) {
    uVar14 = *(uint *)(param_1 + 0x2c);
    if (uVar14 < 0x1e) {
      if (uVar14 < 0x14) {
        if (uVar14 < 10) {
          FUN_0040a380("Walk0",0);
        }
        else {
          pcVar10 = "Walk2";
          if (uVar14 % 10 != 1) {
            pcVar10 = "Walk1";
          }
          FUN_0040a380(pcVar10,0);
          *(float *)(param_1 + 0x380) = *(float *)(param_1 + 0x380) / DAT_00baa6fc;
          *(float *)(param_1 + 900) = *(float *)(param_1 + 900) / DAT_00baa6fc;
        }
      }
      else {
        pcVar10 = "Walk3";
        *(float *)(param_1 + 0x15c) = *(float *)(*(int *)(param_1 + 0x330) + 0x24) * DAT_00baa3a4;
        if (uVar14 % 10 != 1) {
          pcVar10 = "Walk2";
        }
        FUN_0040a380(pcVar10,0);
        *(float *)(param_1 + 0x380) = *(float *)(param_1 + 0x380) * DAT_00baa1d4;
        *(float *)(param_1 + 900) = *(float *)(param_1 + 900) * DAT_00baa1d4;
      }
    }
    else {
      pcVar10 = "Walk4";
      if (uVar14 % 10 != 1) {
        pcVar10 = "Walk3";
      }
      *(float *)(param_1 + 0x15c) = *(float *)(*(int *)(param_1 + 0x330) + 0x24) * DAT_00baa304;
      FUN_0040a380(pcVar10,0);
      *(float *)(param_1 + 0x380) = *(float *)(param_1 + 0x380) / DAT_00baa784;
      *(float *)(param_1 + 900) = *(float *)(param_1 + 900) / DAT_00baa784;
    }
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0xb64) = 4;
    iVar11 = FUN_006eef60();
    fVar15 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    fVar15 = fVar15 + fVar15;
    fVar16 = fVar15;
    FUN_0041d540();
    FUN_0041d520();
    puVar1 = (undefined4 *)(param_1 + 0x1e4);
    *(float *)(param_1 + 0x360) = fVar16;
    *(float *)(param_1 + 0x364) = fVar15;
    uVar9 = _UNK_00bac98c;
    uVar8 = _UNK_00bac988;
    uVar7 = _UNK_00bac984;
    uVar6 = _DAT_00bac980;
    uVar5 = _UNK_00babb0c;
    uVar4 = ram0x00babb08;
    uVar3 = s_fff_fff__00babb00._4_4_;
    uVar12 = s_fff_fff__00babb00._0_4_;
    if (*(uint *)(param_1 + 0x2c) % 10 == 1) {
      if (puVar1 != local_60) {
        *puVar1 = 0x3f4ccccd;
        *(undefined4 *)(param_1 + 0x1e8) = 0x3f400000;
        *(undefined4 *)(param_1 + 0x1ec) = 0x3f800000;
        *(undefined4 *)(param_1 + 0x1f0) = 0x3f800000;
        *(undefined8 *)(param_1 + 0x204) = 0;
        *(undefined4 *)(param_1 + 500) = uVar6;
        *(undefined4 *)(param_1 + 0x1f8) = uVar7;
        *(undefined4 *)(param_1 + 0x1fc) = uVar8;
        *(undefined4 *)(param_1 + 0x200) = uVar9;
        *(undefined4 *)(param_1 + 0x20c) = 0;
        return;
      }
    }
    else if (puVar1 != local_34) {
      *puVar1 = 0x3f666666;
      *(undefined4 *)(param_1 + 0x1e8) = 0x3f666666;
      *(undefined4 *)(param_1 + 0x1ec) = 0x3f666666;
      *(undefined4 *)(param_1 + 0x1f0) = 0x3f800000;
      *(undefined8 *)(param_1 + 0x204) = 0;
      *(undefined4 *)(param_1 + 500) = uVar12;
      *(undefined4 *)(param_1 + 0x1f8) = uVar3;
      *(undefined4 *)(param_1 + 0x1fc) = uVar4;
      *(undefined4 *)(param_1 + 0x200) = uVar5;
      *(undefined4 *)(param_1 + 0x20c) = 0;
      return;
    }
  }
  else {
    if ((*(char *)(param_1 + 0x173) != '\0') && (*(uint *)(param_1 + 0x2c) < 0x1e)) {
      iVar11 = FUN_006eef60();
      fVar15 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      fVar15 = fVar15 + fVar15;
      fVar16 = fVar15;
      FUN_0041d540();
      fVar16 = fVar16 * DAT_00baa81c;
      FUN_0041d520();
      fVar15 = fVar15 * DAT_00baa81c;
      uVar12 = FUN_007e90f0();
      local_68 = fVar16 + *(float *)(param_1 + 0x33c);
      fVar17 = fVar15 * DAT_00baa280;
      local_70 = fVar16 * DAT_00baa280;
      local_64 = fVar15 + *(float *)(param_1 + 0x340);
      local_6c = fVar17;
      piVar13 = (int *)FUN_006fe410(*(undefined4 *)(param_1 + 0x28),*(int *)(param_1 + 0x2c) + 10,
                                    &local_68,&local_70,param_1,0,uVar12,0);
      piVar13[0x5a] = piVar13[0x5a] & 0xfffffffb;
      piVar13[0x5b] = piVar13[0x5b];
      (**(code **)(*piVar13 + 0xc))();
      uVar12 = FUN_007e90f0();
      local_68 = fVar16 * DAT_00baad24;
      local_64 = fVar15 * DAT_00baad24;
      local_70 = *(float *)(param_1 + 0x33c) - fVar16;
      local_6c = *(float *)(param_1 + 0x340) - fVar15;
      piVar13 = (int *)FUN_006fe410(*(undefined4 *)(param_1 + 0x28),*(int *)(param_1 + 0x2c) + 10,
                                    &local_70,&local_68,param_1,0,uVar12,0);
      piVar13[0x5a] = piVar13[0x5a] & 0xfffffffb;
      piVar13[0x5b] = piVar13[0x5b];
      (**(code **)(*piVar13 + 0xc))();
      if ((*(uint *)(param_1 + 0x2c) % 10 == 1) &&
         (uVar14 = FUN_006eef60(), *(uint *)(param_1 + 0x2c) / 10 < (uVar14 & 1) + 1)) {
        uVar12 = FUN_007e90f0();
        local_64 = (float)((uint)fVar16 ^ DAT_00bacb70) * DAT_00baa280;
        local_70 = *(float *)(param_1 + 0x33c) - fVar16;
        local_6c = *(float *)(param_1 + 0x340) - fVar15;
        local_68 = fVar17;
        piVar13 = (int *)FUN_006fe410(*(undefined4 *)(param_1 + 0x28),*(int *)(param_1 + 0x2c) + 10,
                                      &local_70,&local_68,param_1,0,uVar12,0);
        piVar13[0x5a] = piVar13[0x5a] & 0xfffffffb;
        piVar13[0x5b] = piVar13[0x5b];
        (**(code **)(*piVar13 + 0xc))();
      }
    }
    uVar14 = DAT_00bacb70;
    if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
       (*(float *)(param_1 + 0x340) <= DAT_00baab14 && DAT_00baab14 != *(float *)(param_1 + 0x340)))
    {
      *(undefined4 *)(param_1 + 0x340) = 0x43a00000;
      fVar16 = *(float *)(param_1 + 0x360) * 0.0 + *(float *)(param_1 + 0x364);
      fVar16 = fVar16 + fVar16;
      *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x364) - fVar16;
      *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x360) - fVar16 * 0.0;
    }
    fVar16 = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    *(float *)(param_1 + 0x36c) = fVar16;
    if ((*(uint *)(param_1 + 0x168) & 0x200) != 0) {
      FUN_007e6300(0);
      return;
    }
    uVar2 = *(uint *)(param_1 + 0x2c);
    fVar15 = DAT_00baa1d4;
    if (((9 < uVar2) && (fVar15 = DAT_00baa244, 0x13 < uVar2)) && (uVar2 < 0x1e)) {
      fVar15 = DAT_00baa2b8;
    }
    fVar17 = *(float *)(param_1 + 0x360);
    fVar18 = fVar15 * DAT_00c37940;
    fVar15 = DAT_00c3793c * fVar15;
    if (fVar17 < 0.0) {
      fVar15 = (float)((uint)fVar15 ^ uVar14);
    }
    if (*(float *)(param_1 + 0x364) <= 0.0 && *(float *)(param_1 + 0x364) != 0.0) {
      fVar18 = (float)((uint)fVar18 ^ uVar14);
    }
    if (NAN(fVar16) == (fVar16 == 0.0)) {
      fVar17 = fVar17 + (*(float *)(param_1 + 0x39c) * fVar15) / fVar16;
      *(float *)(param_1 + 0x364) =
           (*(float *)(param_1 + 0x39c) * fVar18) / fVar16 + *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x360) = fVar17;
    }
    *(bool *)(param_1 + 0x148) = fVar17 < 0.0;
    if ((*(uint *)(param_1 + 0x168) & 0x1000800) != 0) {
      iVar11 = FUN_006be840();
      fVar15 = (float)((uint)(*(float *)(iVar11 + 0x340) - *(float *)(param_1 + 0x340)) ^
                      DAT_00bacb70);
      fVar17 = (float)((uint)(*(float *)(iVar11 + 0x33c) - *(float *)(param_1 + 0x33c)) ^
                      DAT_00bacb70);
      fVar16 = fVar15 * fVar15 + fVar17 * fVar17;
      FUN_00435a50();
      if (0.0 < fVar16) {
        fVar18 = (DAT_00baaa00 - fVar16) * DAT_00baa08c;
        if (fVar18 <= 0.0) {
          fVar18 = 0.0;
        }
        if (DAT_00baa454 <= fVar18) {
          fVar18 = DAT_00baa454;
        }
        fVar15 = (fVar18 / fVar16) * fVar15;
        fVar17 = (fVar18 / fVar16) * fVar17;
      }
      fVar16 = *(float *)(param_1 + 0x36c);
      if (NAN(fVar16) == (fVar16 == 0.0)) {
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * fVar15) / fVar16 + *(float *)(param_1 + 0x364);
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * fVar17) / fVar16 + *(float *)(param_1 + 0x360);
      }
    }
  }
  return;
}

