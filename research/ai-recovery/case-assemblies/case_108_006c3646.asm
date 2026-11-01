; case_index=108 target=0x006c3646 kind=inline
; delegate=
; types=274,275
006c3646  cmp      dword ptr [edi + 0x2c], 0
006c364a  mov      ecx, edi
006c364c  jne      0x6c367b
006c364e  call     0x4c8090
006c3653  cmp      byte ptr [edi + 0x173], 0
006c365a  je       0x6c41af
006c3660  mov      eax, dword ptr [edi + 0x16c]
006c3666  and      dword ptr [edi + 0x168], 0xfffbffff
006c3670  mov      dword ptr [edi + 0x16c], eax
006c3676  jmp      0x6c41af
006c367b  call     0x4cca10
006c3680  jmp      0x6c41af
