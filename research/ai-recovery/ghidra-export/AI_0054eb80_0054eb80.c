/* Local J460 decompiler output.
 * VA: 0x0054eb80
 * Entry: 0054eb80
 * Dispatcher: 0x006c2990
 * Types: 881
 * Identities: 881.0.0,881.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0054f670; instructions=567
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=881; identities=881.0.0,881.1.0; dispatcher=0x006c2990;
   end=0x0054f670; instructions=567 */

void __fastcall AI_0054eb80(float param_1)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  char *pcVar7;
  float *pfVar8;
  int iVar9;
  undefined4 extraout_ECX;
  float fVar10;
  float fVar11;
  undefined auStack_10c [4];
  float local_108;
  undefined4 local_104;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  undefined local_ec [224];
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_10c;
  local_f0 = param_1;
  if (*(int *)((int)param_1 + 0xb74) == 3) {
    if ((*(int *)(*(int *)((int)param_1 + 0xb7c) + 0x28) != 4) ||
       (0 < *(int *)((int)param_1 + 0xbc0))) goto LAB_0054f64e;
    local_f8 = *(float *)((int)param_1 + 3000);
    local_f4 = local_f8 * local_f8;
    fVar10 = *(float *)((int)param_1 + 0xbbc) * *(float *)((int)param_1 + 0xbbc) + local_f4;
    FUN_00435a50();
    if (fVar10 <= DAT_00baa280) goto LAB_0054f64e;
    *(undefined4 *)((int)param_1 + 0xbc0) = 0x1e;
    *(float *)((int)param_1 + 0xbb0) = *(float *)((int)param_1 + 0xbb0) - DAT_00baa75c;
    local_100 = *(float *)((int)param_1 + 0xbbc);
    fVar11 = local_100 * local_100 + local_f4;
    FUN_00435a50();
    if (fVar11 <= DAT_00ba9fe4) goto LAB_0054f64e;
    fVar10 = (DAT_00baa280 / fVar11) * local_100;
    *(float *)((int)param_1 + 3000) = local_f8 * (DAT_00baa280 / fVar11);
  }
  else {
    if (*(int *)((int)param_1 + 0xb64) == 0) {
      *(undefined *)((int)param_1 + 0x171) = 0;
      *(undefined4 *)((int)param_1 + 0x188) = 0;
      *(undefined4 *)((int)param_1 + 0x184) = 0;
      *(undefined4 *)((int)param_1 + 0xb64) = 3;
      uVar4 = FUN_006eef60();
      *(uint *)((int)param_1 + 0xf18) = *(uint *)((int)param_1 + 0xf18) | 4;
      uVar6 = *(undefined4 *)((int)param_1 + 0x16c);
      *(undefined4 *)((int)param_1 + 0x16c) = uVar6;
      *(uint *)((int)param_1 + 0x410) = -0x1e - uVar4 % 0x3c;
      uVar4 = *(uint *)((int)param_1 + 0x168) & 0xfffffffb;
      *(uint *)((int)param_1 + 0x168) = uVar4;
      if (*(int *)((int)param_1 + 0x2c) == 1) {
        *(undefined4 *)((int)param_1 + 0x16c) = uVar6;
        *(uint *)((int)param_1 + 0x168) = uVar4 | 0x10000;
      }
    }
    if (0 < *(int *)((int)param_1 + 0xbc0)) {
      *(int *)((int)param_1 + 0xbc0) =
           ((int)*(float *)((int)param_1 + 0x3a0) - (int)*(float *)((int)param_1 + 0x3a4)) +
           *(int *)((int)param_1 + 0xbc0);
    }
    if (*(int *)((int)param_1 + 0xb64) == 3) {
      fVar10 = *(float *)((int)param_1 + 0x36c) * DAT_00baa418;
      iVar9 = *(int *)((int)param_1 + 0x410);
      *(undefined4 *)((int)param_1 + 0x184) = 0;
      *(float *)((int)param_1 + 0x36c) = fVar10;
      if (iVar9 < 1) {
        *(undefined4 *)((int)param_1 + 0x188) = 0;
        *(undefined *)((int)param_1 + 0x171) = 0;
        if (iVar9 < 0) {
          iVar2 = ((int)*(float *)((int)param_1 + 0x3a4) - (int)*(float *)((int)param_1 + 0x3a0)) +
                  iVar9;
          iVar9 = 0;
          if (iVar2 < 0) {
            iVar9 = iVar2;
          }
          *(int *)((int)param_1 + 0x410) = iVar9;
        }
        if (iVar9 == 0) {
          iVar9 = *(int *)(DAT_00c71678 + 0x18300);
          local_100 = *(float *)(iVar9 + 0x14);
          local_f4 = *(float *)(iVar9 + 0x1c);
          local_108 = *(float *)(iVar9 + 0x18);
          local_f8 = *(float *)(iVar9 + 0x20);
          pfVar8 = (float *)FUN_0067f070(local_ec);
          iVar9 = FUN_006eef60();
          fVar10 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baaae0 + DAT_00baa950;
          local_100 = (local_100 + local_f4) * DAT_00baa2d0 + fVar10 * *pfVar8;
          local_fc = (local_f8 + local_108) * DAT_00baa2d0 + fVar10 * pfVar8[1];
          FUN_00812f50(&local_108,&local_100,0x41a00000,0x41a00000,0x41a00000);
          local_100 = local_108;
          local_fc = (float)local_104;
          pfVar8 = (float *)FUN_00813520(local_ec,&local_100,0,1,0,0);
          local_100 = *pfVar8;
          local_fc = pfVar8[1];
          local_f8 = local_100;
          local_f4 = local_fc;
          iVar9 = FUN_00703950(&local_100);
          fVar11 = local_f4 - *(float *)(iVar9 + 0x340);
          fVar10 = local_f8 - *(float *)(iVar9 + 0x33c);
          local_108 = fVar11 * fVar11 + fVar10 * fVar10;
          uVar4 = FUN_006eef60();
          if ((((uVar4 & 1) == 0) && (DAT_00baac40 < local_108)) && (local_108 < DAT_00baac64)) {
            *(undefined4 *)((int)param_1 + 0x360) = DAT_00c7b640;
            *(undefined4 *)((int)param_1 + 0x364) = DAT_00c7b644;
            *(float *)((int)param_1 + 0x334) = local_f8;
            *(float *)((int)param_1 + 0x338) = local_f4;
            *(float *)((int)param_1 + 0x33c) = local_f8;
            *(float *)((int)param_1 + 0x340) = local_f4;
            FUN_006c04b0(0);
            FUN_006d6ba0(2,0x3f4ccccd,2,0,0x3f800000);
            FUN_0040a380("DigOut",0);
            *(undefined4 *)((int)param_1 + 0x410) = 1;
            *(undefined4 *)((int)param_1 + 0x188) = 4;
            *(undefined *)((int)param_1 + 0x171) = 1;
          }
        }
      }
      else {
        *(float *)((int)param_1 + 0x360) =
             *(float *)((int)param_1 + 0x334) - *(float *)((int)param_1 + 0x33c);
        *(float *)((int)param_1 + 0x364) =
             *(float *)((int)param_1 + 0x338) - *(float *)((int)param_1 + 0x340);
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
          pfVar8 = (float *)FUN_006bec40(local_ec,0);
          local_100 = pfVar8[1] - *(float *)((int)param_1 + 0x340);
          local_108 = *pfVar8 - *(float *)((int)param_1 + 0x33c);
          fVar10 = local_100 * local_100 + local_108 * local_108;
          FUN_00435a50();
          fVar11 = (local_100 / fVar10) * DAT_00baa7e8;
          *(float *)((int)param_1 + 0x360) = (local_108 / fVar10) * DAT_00baa7e8;
          *(float *)((int)param_1 + 0x364) = fVar11;
          *(undefined4 *)((int)param_1 + 0xbb4) = 0x40000000;
          *(undefined4 *)((int)param_1 + 0xbb0) = 0xc0a00000;
          *(undefined4 *)((int)param_1 + 0xb64) = 6;
          *(undefined4 *)((int)param_1 + 0x184) = 3;
          *(float *)((int)param_1 + 3000) = local_108 / fVar10;
          *(float *)((int)param_1 + 0xbbc) = local_100 / fVar10;
          FUN_00499380();
          FUN_00499380();
          FUN_00499190((int)param_1 + 0x33c);
          local_104 = *(undefined4 *)((int)param_1 + 0xbb4);
          local_108 = 0.0;
          FUN_00499190(&local_108);
          *(undefined4 *)((int)param_1 + 0x15c) =
               *(undefined4 *)(*(int *)((int)param_1 + 0x330) + 0x24);
          FUN_006d6ba0(0x1d0,0x3f4ccccd,4,0,0x3f99999a);
          *(undefined4 *)((int)param_1 + 0xba4) = 4;
        }
      }
    }
    else if (*(int *)((int)param_1 + 0xb64) == 6) {
      *(undefined *)((int)param_1 + 0x171) = 1;
      if (((0.0 < *(float *)((int)param_1 + 0xbb0)) &&
          (DAT_00baada8 < *(float *)((int)param_1 + 0xbb4))) &&
         (*(int *)((int)param_1 + 0x188) == 4)) {
        *(undefined4 *)((int)param_1 + 0x188) = 0;
        *(undefined4 *)((int)param_1 + 0x15c) = 0;
        FUN_006d6ba0(0x42,0x3f4ccccd,4,0,0x3f99999a);
      }
      if (*(char *)((int)param_1 + 400) != '\0') {
        fVar10 = *(float *)((int)param_1 + 3000) * *(float *)((int)param_1 + 3000) +
                 *(float *)((int)param_1 + 0xbbc) * *(float *)((int)param_1 + 0xbbc);
        FUN_00435a50();
        puVar5 = (undefined4 *)FUN_00a10100(&local_108,fVar10);
        *(undefined4 *)((int)param_1 + 3000) = *puVar5;
        *(undefined4 *)((int)param_1 + 0xbbc) = puVar5[1];
      }
      uVar6 = 4;
      if (DAT_00baada8 < *(float *)((int)param_1 + 0xbb4)) {
        uVar6 = 0;
      }
      *(undefined4 *)((int)param_1 + 0x188) = uVar6;
      if (((0 < *(int *)((int)param_1 + 0xba4)) &&
          (iVar9 = ((int)*(float *)((int)param_1 + 0x3a0) - (int)*(float *)((int)param_1 + 0x3a4)) +
                   *(int *)((int)param_1 + 0xba4), *(int *)((int)param_1 + 0xba4) = iVar9, iVar9 < 1
          )) && (*(int *)((int)param_1 + 0x2c) == 1)) {
        uVar6 = AI_0043ef30();
        local_108 = 7.0;
        local_104 = 0;
        FUN_006cb2e0((int)param_1 + 0x33c,&local_108,7,uVar6);
      }
      pcVar7 = "Idle";
      if (*(float *)((int)param_1 + 0x364) < 0.0) {
        pcVar7 = "IdleBack";
      }
      FUN_0040a380(pcVar7,0);
      pfVar8 = (float *)FUN_00499230(extraout_ECX);
      fVar10 = *(float *)((int)param_1 + 0x33c) - *pfVar8;
      fVar11 = *(float *)((int)param_1 + 0x340) - pfVar8[1];
      fVar10 = fVar10 * fVar10 + fVar11 * fVar11;
      FUN_00435a50();
      if ((DAT_00baa6fc < fVar10) || (DAT_00baa85c < *(float *)((int)param_1 + 0xbb4))) {
        FUN_00499190((float *)((int)param_1 + 0x33c));
        local_104 = *(undefined4 *)((int)param_1 + 0xbb4);
        local_108 = 0.0;
        FUN_00499190(&local_108);
      }
      uVar4 = *(uint *)((int)param_1 + 0xc14);
      while (0x14 < uVar4) {
        uVar4 = uVar4 - 1;
        *(uint *)((int)param_1 + 0xc14) = uVar4;
        if (uVar4 == 0) {
          *(undefined4 *)((int)param_1 + 0xc10) = 0;
        }
        piVar1 = (int *)((int)param_1 + 0xc28);
        *piVar1 = *piVar1 + -1;
        if (*piVar1 == 0) {
          *(undefined4 *)((int)param_1 + 0xc24) = 0;
        }
      }
      if (DAT_00baa7e8 < *(float *)((int)param_1 + 0xbb4)) {
        *(undefined4 *)((int)param_1 + 0xb64) = 3;
        *(undefined4 *)((int)param_1 + 0x184) = 0;
        uVar4 = FUN_006eef60();
        *(undefined *)((int)param_1 + 0x171) = 0;
        *(uint *)((int)param_1 + 0x410) = -0x14 - uVar4 % 0x28;
      }
      fVar10 = *(float *)((int)param_1 + 0x36c) * DAT_00baa304;
      *(float *)((int)param_1 + 0x36c) = fVar10;
      fVar11 = *(float *)((int)param_1 + 3000) * DAT_00baa70c;
      if (NAN(fVar10) == (fVar10 == 0.0)) {
        *(float *)((int)param_1 + 0x364) =
             (*(float *)((int)param_1 + 0x39c) * *(float *)((int)param_1 + 0xbbc) * DAT_00baa70c) /
             fVar10 + *(float *)((int)param_1 + 0x364);
        *(float *)((int)param_1 + 0x360) =
             (*(float *)((int)param_1 + 0x39c) * fVar11) / fVar10 + *(float *)((int)param_1 + 0x360)
        ;
      }
    }
    if (*(int *)((int)param_1 + 0xb64) == 6) {
      local_108 = *(float *)((int)param_1 + 0xbb4);
      fVar10 = *(float *)((int)param_1 + 0x39c) * DAT_00baa280 + *(float *)((int)param_1 + 0xbb0);
      *(float *)((int)param_1 + 0xbb0) = fVar10;
      fVar10 = fVar10 * *(float *)((int)param_1 + 0x39c) + local_108;
      bVar3 = fVar10 <= DAT_00baada8;
      *(float *)((int)param_1 + 0xbb4) = fVar10;
      *(float *)((int)param_1 + 0x350) = fVar10;
      iVar9 = FUN_0040b220(0);
      param_1 = local_f0;
      fVar10 = DAT_00baada8;
      *(bool *)(iVar9 + 0x74) = bVar3;
      if (local_108 <= fVar10 != *(float *)((int)local_f0 + 0xbb4) <= fVar10) {
        uVar6 = FUN_006eef60();
        iVar9 = FUN_006fe410(1000,0x92,(int)param_1 + 0x33c,&DAT_00c7b640,0,0,uVar6,0);
        *(undefined4 *)(iVar9 + 0x358) = 0x40800000;
        uVar6 = FUN_00407170();
        FUN_00703330((int)param_1 + 0x33c,4,3,0x40a00000,uVar6,0x47c35000,0x20000);
      }
    }
    else {
      *(undefined4 *)((int)param_1 + 0x350) = 0;
      *(undefined4 *)((int)param_1 + 0xbb4) = 0;
      iVar9 = FUN_0040b220(0);
      *(undefined *)(iVar9 + 0x74) = 1;
    }
    if ((*(float *)((int)param_1 + 0x14) <= 0.0) || (0 < *(int *)((int)param_1 + 0xbc0)))
    goto LAB_0054f64e;
    *(undefined4 *)((int)param_1 + 0xbc0) = 10;
    *(float *)((int)param_1 + 0xbb0) = *(float *)((int)param_1 + 0xbb0) - DAT_00baa6fc;
    local_f0 = *(float *)((int)param_1 + 3000);
    local_108 = *(float *)((int)param_1 + 0xbbc);
    fVar10 = local_f0 * local_f0 + local_108 * local_108;
    FUN_00435a50();
    if (fVar10 <= DAT_00baa280) goto LAB_0054f64e;
    *(float *)((int)param_1 + 3000) = local_f0 * DAT_00baa3a4;
    fVar10 = local_108 * DAT_00baa3a4;
  }
  *(float *)((int)param_1 + 0xbbc) = fVar10;
LAB_0054f64e:
  FUN_00aef12b();
  return;
}

