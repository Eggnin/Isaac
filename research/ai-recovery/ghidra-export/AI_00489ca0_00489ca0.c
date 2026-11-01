/* Local J460 decompiler output.
 * VA: 0x00489ca0
 * Entry: 00489ca0
 * Dispatcher: 0x006c2990
 * Types: 269,401
 * Identities: 269.0.0,269.1.0,401.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0048ae30; instructions=1027
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=269,401; identities=269.0.0,269.1.0,401.0.0;
   dispatcher=0x006c2990; end=0x0048ae30; instructions=1027 */

void __fastcall AI_00489ca0(float param_1)

{
  char cVar1;
  undefined4 uVar2;
  float *pfVar3;
  uint uVar4;
  float *pfVar5;
  int iVar6;
  undefined4 uVar7;
  int *piVar8;
  char *pcVar9;
  int iVar10;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  float fVar11;
  float fVar12;
  float local_e8;
  char local_e1;
  float local_e0;
  float local_dc;
  char local_d5;
  float local_d4;
  float local_d0;
  float local_cc;
  undefined local_c8 [8];
  undefined local_c0 [8];
  undefined local_b8 [8];
  undefined4 local_b0;
  undefined4 local_ac;
  float local_a0;
  undefined4 local_94;
  uint local_60;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_e8;
  local_e8 = param_1;
  if (*(int *)((int)param_1 + 0x2c) == 1) {
    FUN_005983f0();
    FUN_00aef12b();
    return;
  }
  local_d4 = *(float *)((int)param_1 + 0x28);
  if ((local_d4 != 5.619207e-43) || (local_e1 = '\x01', *(int *)((int)param_1 + 0x30) != 1)) {
    local_e1 = '\0';
  }
  *(int *)((int)param_1 + 0xbc4) = *(int *)((int)param_1 + 0xbc4) + 1;
  iVar6 = *(int *)((int)param_1 + 0xb64);
  if (iVar6 == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 3;
    if (((*(int *)((int)param_1 + 0x30) == 2) && (local_d4 == 3.769493e-43)) &&
       (*(int *)((int)param_1 + 0x34) != 0x10d)) {
      uVar2 = FUN_006eef60();
      uVar7 = *(undefined4 *)((int)param_1 + 0x30);
      pfVar3 = (float *)FUN_0067f070(&local_e0);
      local_d0 = *pfVar3 * DAT_00baa904 + *(float *)((int)local_e8 + 0x33c);
      local_cc = pfVar3[1] * DAT_00baa904 + *(float *)((int)local_e8 + 0x340);
      FUN_006fe410(*(undefined4 *)((int)local_e8 + 0x28),*(undefined4 *)((int)local_e8 + 0x2c),
                   &local_d0,(int)local_e8 + 0x360,local_e8,uVar7,uVar2,0);
    }
    FUN_006c04b0(1);
    FUN_00aef12b();
    return;
  }
  if (iVar6 == 3) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if ((((*(uint *)((int)param_1 + 0x16c) & 0x10000000) == 0) ||
        ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
       (uVar4 = FUN_006eef60(), uVar4 % 0x1e == 0)) {
      *(undefined4 *)((int)param_1 + 0xb64) = 4;
      *(undefined4 *)((int)param_1 + 0xbc0) = 0;
      *(undefined4 *)((int)param_1 + 0xbc4) = 0;
    }
    goto LAB_0048adbd;
  }
  if (iVar6 == 4) {
    FUN_006c04b0(0);
    iVar6 = *(int *)((int)param_1 + 0xbc0);
    if (iVar6 != 0) {
      if (iVar6 == 1) {
        if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
          *(undefined4 *)((int)param_1 + 0xbc0) = 2;
          *(undefined4 *)((int)param_1 + 0xbc4) = 0;
          *(undefined4 *)((int)param_1 + 0x410) = 0;
        }
      }
      else if (iVar6 == 2) {
        iVar10 = *(int *)((int)param_1 + 0x410);
        iVar6 = iVar10 + 1;
        *(int *)((int)param_1 + 0x410) = iVar6;
        if (iVar10 < 0x32) {
          fVar11 = DAT_00baa454 - (float)iVar6 / DAT_00baa924;
          *(float *)((int)param_1 + 0xc38) = fVar11;
          fVar11 = fVar11 * *(float *)((int)param_1 + 0x3b4);
          fVar12 = fVar11 * DAT_00c3793c;
          *(float *)((int)param_1 + 0xe8) = fVar11 * DAT_00c37940;
          *(float *)((int)param_1 + 0xe4) = fVar12;
        }
        FUN_0040a380(&DAT_00b1d940,0);
        pfVar3 = (float *)FUN_006bec40(local_c0,0);
        pfVar5 = (float *)FUN_0067f070(local_c8);
        iVar6 = FUN_006eef60();
        fVar12 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa9d0;
        local_d0 = fVar12 * *pfVar5 + *pfVar3;
        local_cc = fVar12 * pfVar5[1] + pfVar3[1];
        FUN_00812f50(&local_e0,&local_d0,0x41a00000,0x41a00000,0x41a00000);
        param_1 = local_e8;
        local_d0 = local_e0;
        local_cc = local_dc;
        FUN_007e33c0(&local_d0,0x3f800000,100,1);
        *(undefined4 *)((int)param_1 + 0x188) = 0;
        iVar6 = FUN_006be840();
        fVar12 = *(float *)((int)param_1 + 0x33c) - *(float *)(iVar6 + 0x33c);
        fVar11 = *(float *)((int)param_1 + 0x340) - *(float *)(iVar6 + 0x340);
        if ((((fVar11 * fVar11 + fVar12 * fVar12 < DAT_00baac48) &&
             (uVar4 = FUN_006eef60(), uVar4 % 0xf == 0)) ||
            ((cVar1 = FUN_00417430(0x200,0), cVar1 != '\0' && (*(int *)((int)param_1 + 0x228) < 5)))
            ) || ((cVar1 = FUN_00417430(0x1000800,0), cVar1 != '\0' &&
                  (*(int *)((int)param_1 + 0x230) < 5)))) {
          if (*(int *)((int)param_1 + 0x28) == 0x10d) {
            iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                     *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
            iVar6 = 0;
            if (0 < iVar10) {
              iVar6 = iVar10;
            }
            local_e1 = iVar6 < 3;
            cVar1 = FUN_00417430(0,0x10000000);
            if (cVar1 != '\0') {
              uVar7 = 0xf4;
              if (*(int *)((int)param_1 + 0x30) == 1) {
                uVar7 = 0x3a;
              }
              uVar4 = FUN_006ac7e0(uVar7,0,extraout_ECX,0);
              local_e1 = uVar4 < 3;
            }
            uVar4 = FUN_006eef60();
            *(uint *)((int)param_1 + 0xb64) = uVar4 & 1 | 8;
            if (*(int *)((int)param_1 + 0x30) == 1) {
              *(undefined4 *)((int)param_1 + 0xb64) = 8;
            }
            uVar4 = FUN_006eef60();
            if ((((int)((ulonglong)uVar4 % 5) == 0) && (local_e1 != (char)((ulonglong)uVar4 % 5)))
               && (*(int *)((int)param_1 + 0x30) != 2)) {
              *(undefined4 *)((int)param_1 + 0xb64) = 10;
            }
          }
          else if (local_d4 == 5.619207e-43) {
            uVar4 = FUN_006eef60();
            if (((uVar4 & 1) == 0) || (uVar7 = 9, local_e1 != '\0')) {
              uVar7 = 8;
            }
            *(undefined4 *)((int)param_1 + 0xb64) = uVar7;
            iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                     *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
            iVar6 = 0;
            if (0 < iVar10) {
              iVar6 = iVar10;
            }
            local_d5 = iVar6 < 3;
            cVar1 = FUN_00417430(0,0x10000000);
            if (cVar1 != '\0') {
              uVar7 = 0x17;
              if (local_e1 == '\x01') {
                uVar7 = 0xf4;
              }
              uVar4 = FUN_006ac7e0(uVar7,0,extraout_ECX_00,0);
              local_d5 = uVar4 < 3;
            }
            uVar4 = FUN_006eef60();
            if (((uVar4 % 5 == 0) || (local_e1 != '\0')) && (local_d5 != '\0')) {
              *(undefined4 *)((int)param_1 + 0xb64) = 0xd;
            }
            *(undefined4 *)((int)param_1 + 0x410) = 0;
          }
          *(undefined4 *)((int)param_1 + 0xbc0) = 0;
          *(undefined4 *)((int)param_1 + 0xbc4) = 0;
          *(undefined4 *)((int)param_1 + 0xc38) = 0x3f800000;
          *(undefined4 *)((int)param_1 + 0x188) = 4;
          fVar12 = *(float *)((int)param_1 + 0x3b4) * DAT_00c37940;
          *(float *)((int)param_1 + 0xe4) = *(float *)((int)param_1 + 0x3b4) * DAT_00c3793c;
          *(float *)((int)param_1 + 0xe8) = fVar12;
          FUN_006c04b0(1);
        }
      }
      goto LAB_0048adbd;
    }
    FUN_0040a380("GoUnder",0);
    *(undefined4 *)((int)param_1 + 0xbc0) = 1;
    *(undefined4 *)((int)param_1 + 0xbc4) = 0;
    *(undefined4 *)((int)param_1 + 0x410) = 0;
    local_e8 = 9.24857e-44;
LAB_0048abe0:
    FUN_00956780();
    FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
    goto LAB_0048adbd;
  }
  if (local_d4 == 3.769493e-43) {
    if (((iVar6 != 8) && (iVar6 != 9)) && (iVar6 != 10)) goto LAB_0048adbd;
    if (*(int *)((int)param_1 + 0xbc0) != 0) {
      if (iVar6 == 8) {
        FUN_0040a380(&DAT_00b1d2cc,0);
        cVar1 = FUN_0040b030("Shoot");
        if (cVar1 != '\0') {
          iVar6 = FUN_006be840();
          local_d4 = *(float *)(iVar6 + 0x33c);
          local_e8 = *(float *)(iVar6 + 0x340);
          iVar6 = FUN_006be840();
          pfVar3 = (float *)((int)param_1 + 0x33c);
          local_e0 = (*(float *)(iVar6 + 0x360) * DAT_00baa81c + local_d4) - *pfVar3;
          local_dc = (*(float *)(iVar6 + 0x364) * DAT_00baa81c + local_e8) -
                     *(float *)((int)param_1 + 0x340);
          FUN_006d6ba0(0x39,0x3fc00000,0x3c,0,0x3f800000);
          if (*(int *)((int)param_1 + 0x30) == 1) {
            uVar7 = AI_0043ef30();
            local_e0 = 10.0;
            local_dc = 6.0;
            FUN_006cb2e0(pfVar3,&local_e0,9,uVar7);
          }
          else {
            uVar4 = FUN_006eef60();
            if ((uVar4 & 1) == 0) {
              uVar7 = AI_0043ef30();
              pfVar3 = (float *)FUN_00a10030(local_c8);
              local_cc = pfVar3[1] * DAT_00baa81c;
              local_d0 = *pfVar3 * DAT_00baa81c;
              FUN_006cb2e0((int)param_1 + 0x33c,&local_d0,3,uVar7);
            }
            else {
              uVar7 = AI_0043ef30();
              local_e0 = 10.0;
              local_dc = 0.0;
              FUN_006cb2e0(pfVar3,&local_e0,8,uVar7);
            }
          }
        }
      }
      else if (iVar6 == 9) {
        FUN_0040a380(&DAT_00b1d2ec,0);
        FUN_006d6ba0(0x107,0x3f800000,0x3c,0,0x3f800000);
        cVar1 = FUN_0040b090("Shoot");
        if ((cVar1 != '\0') && (cVar1 = FUN_0040b090("StopShooting"), cVar1 == '\0')) {
          uVar7 = AI_0043ef30();
          iVar6 = FUN_006be840();
          local_d4 = *(float *)(iVar6 + 0x33c);
          local_e8 = *(float *)(iVar6 + 0x340);
          iVar6 = FUN_006be840();
          local_e0 = *(float *)(iVar6 + 0x360) * DAT_00baa81c + local_d4;
          local_dc = *(float *)(iVar6 + 0x364) * DAT_00baa81c + local_e8;
          FUN_006ccdd0(1,&local_e0,0x3f800000,uVar7);
        }
      }
      else if (iVar6 == 10) {
        FUN_0040a380(&DAT_00b1d2e4,0);
        cVar1 = FUN_0040b030("Shoot");
        if (cVar1 != '\0') {
          FUN_006d6ba0(0x92,0x3f800000,0x3c,0,0x3f800000);
          uVar7 = FUN_006eef60();
          pfVar3 = (float *)FUN_0067f070(local_c8);
          uVar2 = 0xf4;
          if (*(int *)((int)param_1 + 0x30) == 1) {
            uVar2 = 0x3a;
          }
          local_e0 = *pfVar3 * DAT_00baa950 + *(float *)((int)param_1 + 0x33c);
          local_dc = pfVar3[1] * DAT_00baa950 + *(float *)((int)param_1 + 0x340);
          piVar8 = (int *)FUN_006fe410(uVar2,0,&local_e0,&DAT_00c7b640,param_1,0,uVar7,0);
          (**(code **)(*piVar8 + 0xc))();
        }
      }
      goto LAB_0048ada4;
    }
    FUN_0040a380("ComeUp",0);
    FUN_006d6ba0(0x139,0x3f4ccccd,0x3c,0,0x3f800000);
  }
  else {
    if ((local_d4 != 5.619207e-43) || (((iVar6 != 8 && (iVar6 != 9)) && (iVar6 != 0xd))))
    goto LAB_0048adbd;
    iVar10 = *(int *)((int)param_1 + 0xbc0);
    if (iVar10 != 0) {
      if (iVar6 == 8) {
        FUN_0040a380(&DAT_00b1d2cc,0);
        cVar1 = FUN_0040b030("Shoot");
        if (cVar1 != '\0') {
          local_e8 = 3.685415e-43;
          FUN_00956780();
          FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
          local_e8 = DAT_00baad50;
          do {
            uVar7 = FUN_006eef60();
            local_e0 = local_e8 * DAT_00baaa00 + *(float *)((int)param_1 + 0x33c);
            local_dc = local_e8 * 0.0 + *(float *)((int)param_1 + 0x340);
            piVar8 = (int *)FUN_006fe410(1000,0x16,&local_e0,&DAT_00c7b640,param_1,0,uVar7,0);
            fVar12 = (float)((uint)local_e8 & DAT_00bacb40) * DAT_00baa2e8 + DAT_00baa1f8;
            if (NAN(local_e8) != (local_e8 == 0.0)) {
              fVar12 = DAT_00baa5d0;
            }
            fVar11 = fVar12 * DAT_00c3793c;
            fVar12 = fVar12 * DAT_00c37940;
            piVar8[0x117] = 0x46;
            piVar8[0x39] = (int)fVar11;
            piVar8[0x118] = 0x46;
            piVar8[0x3a] = (int)fVar12;
            (**(code **)(*piVar8 + 0xc))();
            local_e8 = local_e8 + DAT_00baa13c;
          } while (local_e8 <= DAT_00baa454);
        }
        goto LAB_0048ada4;
      }
      if (iVar6 == 9) {
        if (iVar10 != 3) {
          if ((iVar10 == 1) || (iVar10 == 4)) {
            cVar1 = FUN_0040a4d0("Attack2Shooting");
            if (cVar1 == '\0') {
              FUN_0040a380("Attack2Shooting",0);
              local_e8 = 1.343845e-42;
              FUN_00956780();
              FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
            }
            *(int *)((int)param_1 + 0x410) = *(int *)((int)param_1 + 0x410) + 1;
            cVar1 = FUN_0040b030("Shoot");
            if (cVar1 != '\0') {
              iVar6 = *(int *)((int)param_1 + 0xbc0);
              if (iVar6 == 1) {
                AI_0043ef30();
                local_60 = local_60 | 0x8000000;
                local_ac = 0xbd75c28f;
                local_a0 = (float)*(int *)((int)param_1 + 0x410) * _DAT_00baa130;
                local_b0 = 0xc0000000;
                local_94 = 0x3f7c28f6;
                local_e0 = 6.0;
                local_dc = 3.0;
                FUN_006cb2e0((int)param_1 + 0x33c,&local_e0,9,local_b8);
                iVar6 = *(int *)((int)param_1 + 0xbc0);
              }
              if (iVar6 == 4) {
                AI_0043ef30();
                local_60 = local_60 | 0x8000000;
                local_ac = 0xbd75c28f;
                local_a0 = (float)*(int *)((int)param_1 + 0x410) * DAT_00baa134;
                local_b0 = 0xc0000000;
                local_94 = 0x3f833333;
                local_e0 = 3.2;
                local_dc = 4.0;
                FUN_006cb2e0((int)param_1 + 0x33c,&local_e0,9,local_b8);
              }
            }
            if (*(int *)((int)param_1 + 0x410) < 0x5a) goto LAB_0048adbd;
          }
          else {
            if ((iVar10 != 2) && (iVar10 != 5)) {
              if (iVar10 == 6) {
                FUN_0040a380("GoUnder2",0);
                if (*(int *)((int)param_1 + 0xbc4) == 1) {
                  local_e8 = 9.24857e-44;
                  FUN_00956780();
                  FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
                }
                if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')
                   ) {
                  *(undefined4 *)((int)param_1 + 0xb64) = 4;
                  *(undefined4 *)((int)param_1 + 0xbc0) = 1;
                  *(undefined4 *)((int)param_1 + 0xbc4) = 0;
                  *(undefined4 *)((int)param_1 + 0x410) = 0;
                }
              }
              goto LAB_0048adbd;
            }
            FUN_0040a380("Attack2End",0);
            iVar6 = *(int *)((int)param_1 + 0x410) + 1;
            *(int *)((int)param_1 + 0x410) = iVar6;
            if (((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
               || (iVar6 < 0x1f)) goto LAB_0048adbd;
          }
          *(int *)((int)param_1 + 0xbc0) = *(int *)((int)param_1 + 0xbc0) + 1;
          *(undefined4 *)((int)param_1 + 0xbc4) = 0;
          *(undefined4 *)((int)param_1 + 0x410) = 0;
          goto LAB_0048adbd;
        }
        FUN_0040a380("Attack2Start",0);
        if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
        goto LAB_0048adbd;
        *(int *)((int)param_1 + 0xbc0) = *(int *)((int)param_1 + 0xbc0) + 1;
        *(undefined4 *)((int)param_1 + 0xbc4) = 0;
        local_e8 = 5.871441e-43;
        goto LAB_0048abe0;
      }
      if (iVar6 != 0xd) goto LAB_0048adbd;
      FUN_0040a380("Summon",0);
      cVar1 = FUN_0040b030("Summon");
      if (cVar1 != '\0') {
        local_e8 = 3.713441e-43;
        FUN_00956780();
        FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
        local_e8 = 2.802597e-45;
        cVar1 = FUN_00417430(0,0x10000000);
        if (cVar1 != '\0') {
          iVar6 = FUN_006ac7e0(0xf4,0,extraout_ECX_01,0);
          iVar10 = FUN_006ac7e0(0x17,0,extraout_ECX_02,0);
          fVar12 = (float)((3 - iVar6) - iVar10);
          if (((int)fVar12 < 3) && (local_e8 = fVar12, (int)fVar12 < 1)) goto LAB_0048ada4;
        }
        if (local_e1 == '\0') {
          do {
            uVar7 = FUN_006eef60();
            uVar2 = FUN_00813520(local_c8,(int)param_1 + 0x33c,0x42700000,0,0,0);
            FUN_006fe410(0x17,0,uVar2,&DAT_00c7b640,param_1,0,uVar7,0);
            local_e8 = (float)((int)local_e8 + -1);
          } while (local_e8 != 0.0);
        }
        else {
          do {
            uVar7 = FUN_006eef60();
            uVar2 = FUN_00813520(local_c8,(int)param_1 + 0x33c,0x42700000,0,0,0);
            FUN_006fe410(0xf4,0,uVar2,&DAT_00c7b640,param_1,0,uVar7,0);
            local_e8 = (float)((int)local_e8 + -1);
          } while (local_e8 != 0.0);
          local_e8 = 0.0;
        }
      }
LAB_0048ada4:
      if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
        *(undefined4 *)((int)param_1 + 0xb64) = 3;
      }
      goto LAB_0048adbd;
    }
    if ((iVar6 == 8) || (pcVar9 = "ComeUp2", iVar6 == 0xd)) {
      pcVar9 = "ComeUp";
    }
    FUN_0040a380(pcVar9,0);
    if (*(int *)((int)param_1 + 0xbc4) == 1) {
      local_e8 = 8.96831e-44;
      FUN_00956780();
      FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
      local_e8 = 5.871441e-43;
      FUN_00956780();
      FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
    }
  }
  if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
    *(undefined4 *)((int)param_1 + 0xbc0) = 1;
    *(undefined4 *)((int)param_1 + 0xbc4) = 0;
  }
LAB_0048adbd:
  *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    *(undefined4 *)((int)param_1 + 0xc38) = 0x3f800000;
    fVar12 = *(float *)((int)param_1 + 0x3b4) * DAT_00c37940;
    *(float *)((int)param_1 + 0xe4) = *(float *)((int)param_1 + 0x3b4) * DAT_00c3793c;
    *(float *)((int)param_1 + 0xe8) = fVar12;
  }
  FUN_00aef12b();
  return;
}

