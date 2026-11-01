/* Local J460 decompiler output.
 * VA: 0x0065b670
 * Entry: 0065b670
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: native projectile vtable collision slot
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; native projectile vtable collision
   slot */

void __thiscall HELPER_Projectile_HandleCollision(int *param_1_00,int *param_1,undefined4 param_2)

{
  bool bVar1;
  char cVar2;
  char cVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  int *piVar7;
  float *pfVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  float fVar12;
  code *pcVar13;
  float fVar14;
  undefined8 uStack_64;
  code *pcStack_58;
  int *piStack_54;
  code *pcStack_50;
  float fStack_4c;
  int *local_48;
  int iStack_44;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  undefined auStack_34 [12];
  undefined4 uStack_28;
  uint uStack_24;
  int *piStack_20;
  undefined4 uStack_1c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&uStack_64;
  local_48 = param_1_00;
  iVar4 = FUN_00862760(param_1_00,param_1,param_2);
  if (iVar4 == 1) goto LAB_0065c4f3;
  if (iVar4 == -1) {
    FUN_00aef12b();
    return;
  }
  cVar3 = (char)param_2;
  if (cVar3 != '\0') {
    iVar4 = param_1[10];
    if ((iVar4 == 0x393) && (param_1[0xb] == 1)) {
      *(undefined *)((int)param_1_00 + 0x173) = 1;
      fVar12 = (float)param_1[0xdb];
      fVar14 = (float)param_1_00[0xd9] * DAT_00baa198;
      if ((NAN(fVar12) || NAN(DAT_00ba9fe4)) == (fVar12 == DAT_00ba9fe4)) {
        param_1[0xd8] =
             (int)(((float)param_1_00[0xd8] * DAT_00baa198 * (float)param_1[0xe7]) / fVar12 +
                  (float)param_1[0xd8]);
        param_1[0xd9] = (int)((fVar14 * (float)param_1[0xe7]) / fVar12 + (float)param_1[0xd9]);
        FUN_00aef12b();
        return;
      }
      goto LAB_0065c4f3;
    }
    cVar2 = FUN_006ac530();
    if ((cVar2 != '\0') && (cVar2 = FUN_00417430(0,0x20000), cVar2 != '\0')) {
      uVar5 = FUN_00435c70();
      (**(code **)(*param_1 + 0x20))(0x3f800000,0,0,uVar5,0x1e);
      *(undefined *)((int)param_1_00 + 0x173) = 1;
      FUN_00aef12b();
      return;
    }
    if (iVar4 == 0xf5) {
      piStack_54 = *(int **)(*param_1 + 0x20);
      iStack_44 = param_1_00[10];
      iStack_40 = param_1_00[0xb];
      iStack_3c = param_1_00[0xd];
      iStack_38 = param_1_00[0xe];
      auStack_34._8_4_ = param_1_00[0xd8];
      auStack_34._0_8_ = *(undefined8 *)(param_1_00 + 0xcf);
      uStack_28 = param_1_00[0xd9];
      if ((param_1_00[0x5a] & 0x20000000U) == 0) {
        uVar10 = 0;
      }
      else {
        uVar10 = 2;
      }
      if ((param_1_00[0x5b] & 0x400000U) == 0) {
        uVar6 = 0;
      }
      else {
        uVar6 = 4;
      }
      uStack_24 = uVar6 | uVar10 | (uint)((param_1_00[0x5a] & 0x100U) != 0);
      piStack_20 = param_1_00;
      (*(code *)piStack_54)(0x3f800000,0x40,0,&iStack_44,0x1e);
      *(undefined *)((int)param_1_00 + 0x173) = 1;
      FUN_00aef12b();
      return;
    }
  }
  if ((param_1_00[0xd] == 0x362) &&
     ((param_1[10] == 3 ||
      (((param_1[10] == 1 && (param_1_00[0xf2] != 0)) &&
       (*(int **)(param_1_00[0xf2] + 0x3c8) != param_1)))))) goto LAB_0065c4f3;
  if (cVar3 == '\0') {
    if (param_1[10] == 1) {
      if ((param_1_00[0x10e] & 0x80000000U) != 0) {
        if ((param_1_00[0xf2] == 0) || (cVar3 = FUN_00417430(0x20000100,0), cVar3 == '\0'))
        goto LAB_0065c4f3;
        iStack_40 = param_1[0xb];
        iStack_3c = param_1[0xd];
        iStack_38 = param_1[0xe];
        iStack_44 = 1;
        auStack_34._8_4_ = param_1[0xd8];
        auStack_34._0_8_ = *(undefined8 *)(param_1 + 0xcf);
        uStack_28 = param_1[0xd9];
        if ((param_1[0x5a] & 0x20000000U) == 0) {
          uVar10 = 0;
        }
        else {
          uVar10 = 2;
        }
        if ((param_1[0x5b] & 0x400000U) == 0) {
          uVar6 = 0;
        }
        else {
          uVar6 = 4;
        }
        piStack_20 = param_1;
        uStack_24 = uVar6 | uVar10 | (uint)((param_1[0x5a] & 0x100U) != 0);
        cVar3 = FUN_006acd10(&iStack_44);
        if (cVar3 != '\0') goto LAB_0065c4f3;
      }
      if (((1 < *(int *)(DAT_00c71678 + 0x26614)) && (cVar3 = FUN_006a8fa0(param_1), cVar3 != '\0'))
         || (piVar7 = (int *)__RTDynamicCast(param_1,0,
                                             &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                             &IsaacRepentancePlus::Entity_Player::
                                              RTTI_Type_Descriptor,0), local_48 = piVar7,
            *(char *)((int)piVar7 + 0x20a9) != '\0')) goto LAB_0065c4f3;
      fVar12 = (float)piVar7[0x3a];
      if ((float)piVar7[0x3a] <= DAT_00baa2d0) {
        fVar12 = DAT_00baa2d0;
      }
      if (DAT_00baa454 <= fVar12) {
        fVar12 = DAT_00baa454;
      }
      if ((float)param_1_00[0xd4] <= fVar12 * DAT_00baae30 &&
          fVar12 * DAT_00baae30 != (float)param_1_00[0xd4]) goto LAB_0065c4f3;
      *(undefined *)((int)param_1_00 + 0x173) = 1;
      cVar3 = '\0';
      uStack_64 = 0;
      if ((param_1_00[0x10e] & 0x8000U) == 0) {
        pcStack_58 = (code *)0x0;
      }
      else {
        pcStack_58 = (code *)0x2;
      }
      if ((param_1_00[0x10e] & 2U) != 0) goto LAB_0065bd53;
      cVar2 = FUN_007706e0(0x5b,0);
      if ((cVar2 == '\0') && (cVar2 = FUN_007706e0(0x177,0), cVar2 == '\0')) {
LAB_0065bbb5:
        cVar2 = FUN_007706e0(0xf2,0);
        if ((cVar2 == '\0') || (iVar4 = FUN_0067f010(), iVar4 != 0)) {
          pcStack_50 = *(code **)(*piVar7 + 0x20);
          iStack_44 = param_1_00[10];
          iStack_40 = param_1_00[0xb];
          iStack_3c = param_1_00[0xd];
          iStack_38 = param_1_00[0xe];
          auStack_34._8_4_ = param_1_00[0xd8];
          auStack_34._0_8_ = *(undefined8 *)(param_1_00 + 0xcf);
          uStack_28 = param_1_00[0xd9];
          if ((param_1_00[0x5a] & 0x20000000U) == 0) {
            uVar10 = 0;
          }
          else {
            uVar10 = 2;
          }
          if ((param_1_00[0x5b] & 0x400000U) == 0) {
            uVar6 = 0;
          }
          else {
            uVar6 = 4;
          }
          uStack_24 = uVar6 | uVar10 | (uint)((param_1_00[0x5a] & 0x100U) != 0);
          piStack_20 = param_1_00;
          cVar3 = (*pcStack_50)(param_1_00[0xe2],pcStack_58,0,&iStack_44,0x1e);
        }
        else {
          FUN_00956780();
          FUN_0092dc30(0x35f,0x3f800000,2,0,0x3f800000,0);
          _auStack_34 = ZEXT816(0);
          uStack_24 = 0x3e808081;
          iStack_44 = _DAT_00bac7b0;
          iStack_40 = _UNK_00bac7b4;
          iStack_3c = _UNK_00bac7b8;
          iStack_38 = _UNK_00bac7bc;
          piStack_20 = (int *)0x3e808081;
          uStack_1c = 0x3f008081;
          (**(code **)(*piVar7 + 0x3c))(&iStack_44,0xf,0xff,1,1);
        }
      }
      else if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 0x10) {
        uStack_64 = CONCAT44((float)param_1_00[0xd0] - (float)piVar7[0xd0],
                             (float)param_1_00[0xcf] - (float)piVar7[0xcf]);
        pfVar8 = (float *)FUN_00a10030(&pcStack_50);
        if (DAT_00baa3a4 < *pfVar8 || DAT_00baa3a4 == *pfVar8) goto LAB_0065bbb5;
      }
      else if (((float)param_1_00[0x106] <= 0.0) ||
              (DAT_00baae30 <=
               (float)param_1_00[0x104] - (float)param_1_00[0x105] * (float)param_1_00[0xe7]))
      goto LAB_0065bbb5;
LAB_0065bd53:
      uVar10 = param_1_00[0x10e];
      uVar6 = param_1_00[0x10f];
      uStack_64 = CONCAT44(uStack_64._4_4_,uVar10);
      if ((((uVar10 & 0x200) != 0) && (uStack_64 = CONCAT44(uStack_64._4_4_,uVar10), cVar3 != '\0'))
         && (uStack_64 = CONCAT44(uStack_64._4_4_,uVar10), 0 < piVar7[0x4da])) {
        FUN_00759400(0xffffffff);
        uVar10 = FUN_006eef60();
        iVar11 = uVar10 % 3 + 1;
        iVar4 = piVar7[0x4da];
        if (iVar11 < piVar7[0x4da]) {
          iVar4 = iVar11;
        }
        uStack_64 = CONCAT44(uStack_64._4_4_,iVar4);
        if (0 < iVar4) {
          do {
            uVar5 = FUN_006eef60();
            iVar11 = FUN_006eef60();
            fVar12 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            pcStack_58 = (code *)(fVar12 + fVar12);
            iVar11 = FUN_006eef60();
            fVar12 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa630;
            pcVar13 = pcStack_58;
            FUN_0041d540();
            pcStack_50 = (code *)((float)pcVar13 * fVar12);
            pcVar13 = pcStack_58;
            FUN_0041d520();
            fStack_4c = (float)pcVar13 * fVar12;
            HELPER_Entity_CreateDispatcher(5,0x14,param_1_00 + 0xcf,&pcStack_50,0,1,uVar5,0);
            iVar4 = iVar4 + -1;
          } while (iVar4 != 0);
          iVar4 = (int)uStack_64;
          piVar7 = local_48;
          param_1_00 = piStack_54;
        }
        FUN_00759400(-iVar4);
        uVar6 = param_1_00[0x10f];
      }
      if ((uVar6 & 0x80000) != 0) {
        _auStack_34 = ZEXT816(0);
        piVar7[0x105] = 0x1e;
        iStack_44 = _DAT_00bac540;
        iStack_40 = _UNK_00bac544;
        iStack_3c = _UNK_00bac548;
        iStack_38 = _UNK_00bac54c;
        uStack_24 = 0x3ecccccd;
        piStack_20 = (int *)0x3ecccccd;
        uStack_1c = 0x3ecccccd;
        (**(code **)(*piVar7 + 0x3c))(&iStack_44,0x1e,0xffffffff,1,1);
      }
      if (*(char *)((int)param_1_00 + 0x173) == '\0') {
        FUN_00aef12b();
        return;
      }
      goto LAB_0065c4db;
    }
  }
  else {
    cVar2 = HELPER_Entity_DamageFilter(0);
    if ((cVar2 != '\0') || (param_1[10] == 0x362)) {
      if (param_1_00[0xef] != 0) {
        iVar4 = FUN_006b62b0();
        iVar11 = FUN_006b62b0();
        if (iVar4 == iVar11) {
          if ((*(int *)(param_1_00[0xef] + 0x28) != 0x390) ||
             (*(int *)(param_1_00[0xef] + 0x2c) != 10)) goto LAB_0065c4db;
          if (*(int *)(DAT_00c71678 + 0x264f8) - param_1_00[0xca] < 6) goto LAB_0065bfb1;
        }
      }
      uVar10 = param_1_00[0x10e];
      uStack_64 = CONCAT44(param_1_00[0x10f],(int)uStack_64);
      if ((((uVar10 & 0x80000000) != 0) &&
          ((cVar3 = FUN_00417430(0x20000000,0), cVar3 != '\0' || (param_1[10] == 0x362)))) ||
         (((uVar10 & 0x80) == 0 &&
          ((cVar3 = FUN_00417430(0x20000000,0x100000), cVar3 == '\0' && (param_1[10] != 0x362))))))
      goto LAB_0065c4f3;
      iVar4 = param_1_00[0xef];
      if (iVar4 != 0) {
        iVar11 = *(int *)(iVar4 + 0x28);
        if (iVar11 == 0x390) {
          if (((*(int *)(iVar4 + 0x2c) == 10) && (param_1[10] == 0x390)) && (param_1[0xb] == 10)) {
            *(undefined *)((int)param_1_00 + 0x173) = 1;
            FUN_00aef12b();
            return;
          }
        }
        else if (((iVar11 == 0x112) || (iVar11 == 0x113)) &&
                ((param_1[10] == 0x112 || (param_1[10] == 0x113)))) goto LAB_0065c4db;
      }
      *(undefined *)((int)param_1_00 + 0x173) = 1;
      if ((uVar10 & 2) == 0) {
        iStack_40 = param_1_00[0xb];
        pcStack_58 = *(code **)(*param_1 + 0x20);
        uVar10 = param_1_00[0x5a];
        if (iStack_40 == 8) {
          iStack_44 = param_1_00[10];
          iStack_3c = param_1_00[0xd];
          iStack_38 = param_1_00[0xe];
          iStack_40 = 8;
          auStack_34._8_4_ = param_1_00[0xd8];
          auStack_34._0_8_ = *(undefined8 *)(param_1_00 + 0xcf);
          uStack_28 = param_1_00[0xd9];
          if ((uVar10 & 0x20000000) == 0) {
            uVar6 = 0;
          }
          else {
            uVar6 = 2;
          }
          if ((param_1_00[0x5b] & 0x400000U) == 0) {
            uVar9 = 0;
          }
          else {
            uVar9 = 4;
          }
          uStack_24 = uVar9 | uVar6 | (uint)((uVar10 & 0x100) != 0);
          fVar12 = 35.0;
        }
        else {
          iStack_44 = param_1_00[10];
          iStack_3c = piStack_54[0xd];
          iStack_38 = piStack_54[0xe];
          auStack_34._8_4_ = piStack_54[0xd8];
          auStack_34._0_8_ = *(undefined8 *)(piStack_54 + 0xcf);
          uStack_28 = piStack_54[0xd9];
          if ((uVar10 & 0x20000000) == 0) {
            uVar6 = 0;
          }
          else {
            uVar6 = 2;
          }
          if ((param_1_00[0x5b] & 0x400000U) == 0) {
            uVar9 = 0;
          }
          else {
            uVar9 = 4;
          }
          fVar12 = (float)piStack_54[0xe2] + DAT_00baa784;
          uStack_24 = uVar9 | uVar6 | (uint)((uVar10 & 0x100) != 0);
          param_1_00 = piStack_54;
        }
        piStack_20 = param_1_00;
        (*pcStack_58)(fVar12,0,0,&iStack_44,0x1e);
        if ((param_1_00[0x10f] & 0x80000U) != 0) {
          iStack_44 = param_1_00[10];
          iStack_40 = param_1_00[0xb];
          iStack_3c = param_1_00[0xd];
          iStack_38 = param_1_00[0xe];
          auStack_34._8_4_ = param_1_00[0xd8];
          auStack_34._0_8_ = *(undefined8 *)(param_1_00 + 0xcf);
          uStack_28 = param_1_00[0xd9];
          if ((param_1_00[0x5a] & 0x20000000U) == 0) {
            uVar10 = 0;
          }
          else {
            uVar10 = 2;
          }
          if ((param_1_00[0x5b] & 0x400000U) == 0) {
            uVar6 = 0;
          }
          else {
            uVar6 = 4;
          }
          uStack_24 = uVar6 | uVar10 | (uint)((param_1_00[0x5a] & 0x100U) != 0);
          piStack_20 = param_1_00;
          FUN_006ad3c0(&iStack_44,0x5a,0);
        }
      }
      goto LAB_0065c4db;
    }
  }
LAB_0065bfb1:
  iVar4 = DAT_00c71678;
  if ((cVar3 == '\0') && (param_1[10] == 3)) {
    iVar11 = param_1[0xb];
    if ((iVar11 != 0x3e) && (iVar11 != 0x43)) {
      if (iVar11 == 0xce) {
        if (param_1[0xc] == 0x2be) {
LAB_0065c05f:
          FUN_00aef12b();
          return;
        }
      }
      else if (((iVar11 != 0xed) && (iVar11 != 0xd3)) && (iVar11 != 100)) goto LAB_0065c05f;
    }
    if ((param_1_00[0x10e] & 0x80000000U) != 0) {
LAB_0065c4f3:
      FUN_00aef12b();
      return;
    }
    *(undefined *)((int)param_1_00 + 0x173) = 1;
    uStack_64 = CONCAT44(uStack_64._4_4_,(uint)(1 < *(int *)(iVar4 + 0x26614)) * 2 + 2);
    if ((((param_1[0xb] == 0x3e) || (param_1[0xb] == 0x43)) &&
        (cVar3 = FUN_007706e0(0xf2,0), cVar3 != '\0')) && (iVar4 = FUN_0067f010(), iVar4 == 0)) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    if (((param_1_00[0x10e] & 2U) == 0) && (!bVar1)) {
      uStack_64 = CONCAT44(uStack_64._4_4_,*(code **)(*param_1 + 0x20));
      iStack_44 = param_1_00[10];
      iStack_40 = param_1_00[0xb];
      iStack_3c = param_1_00[0xd];
      iStack_38 = param_1_00[0xe];
      auStack_34._8_4_ = param_1_00[0xd8];
      auStack_34._0_8_ = *(undefined8 *)(param_1_00 + 0xcf);
      uStack_28 = param_1_00[0xd9];
      if ((param_1_00[0x5a] & 0x20000000U) == 0) {
        uVar10 = 0;
      }
      else {
        uVar10 = 2;
      }
      if ((param_1_00[0x5b] & 0x400000U) == 0) {
        uVar6 = 0;
      }
      else {
        uVar6 = 4;
      }
      uStack_24 = uVar6 | uVar10 | (uint)((param_1_00[0x5a] & 0x100U) != 0);
      piStack_20 = param_1_00;
      (**(code **)(*param_1 + 0x20))(param_1_00[0xe2],0,0,&iStack_44,0x1e);
      FUN_00aef12b();
      return;
    }
  }
LAB_0065c4db:
  FUN_00aef12b();
  return;
}

