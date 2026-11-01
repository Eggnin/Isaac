/* Local J460 decompiler output.
 * VA: 0x00431570
 * Entry: 00431570
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Laser DoDamage membership insertion
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Laser DoDamage membership insertion
    */

void __thiscall HELPER_HitList_Append(uint **param_1_00,uint param_1)

{
  uint *puVar1;
  uint *_Src;
  uint uVar2;
  size_t _Size;
  uint uVar3;
  
  puVar1 = param_1_00[1];
  _Src = *param_1_00;
  uVar3 = (int)puVar1 - (int)_Src >> 2;
  while (uVar2 = uVar3, 0 < (int)uVar2) {
    uVar3 = uVar2 >> 1;
    if (_Src[uVar3] < param_1) {
      _Src = _Src + uVar3 + 1;
      uVar3 = uVar2 + (-1 - uVar3);
    }
  }
  if ((_Src == puVar1) || (param_1 < *_Src)) {
    if (puVar1 != param_1_00[2]) {
      if (_Src != puVar1) {
        *puVar1 = puVar1[-1];
        param_1_00[1] = param_1_00[1] + 1;
        _Size = (int)puVar1 + (-4 - (int)_Src);
        memmove((void *)((int)puVar1 - _Size),_Src,_Size);
        *_Src = param_1;
        return;
      }
      *puVar1 = param_1;
      param_1_00[1] = param_1_00[1] + 1;
      return;
    }
    FUN_0042c920(_Src,&param_1);
  }
  return;
}

