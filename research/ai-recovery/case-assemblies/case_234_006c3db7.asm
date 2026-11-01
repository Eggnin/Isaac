; case_index=234 target=0x006c3db7 kind=inline
; delegate=
; types=922
006c3db7  cmp      dword ptr [edi + 0xb64], 0
006c3dbe  jne      0x6c41af
006c3dc4  lea      ecx, [edi + 0x1e4]
006c3dca  cmp      ecx, 0xc34e80
006c3dd0  je       0x6c3dfc
006c3dd2  movups   xmm0, xmmword ptr [0xc34e80]
006c3dd9  movups   xmmword ptr [ecx], xmm0
006c3ddc  movups   xmm0, xmmword ptr [0xc34e90]
006c3de3  movups   xmmword ptr [ecx + 0x10], xmm0
006c3de7  movq     xmm0, qword ptr [0xc34ea0]
006c3def  movq     qword ptr [ecx + 0x20], xmm0
006c3df4  mov      eax, dword ptr [0xc34ea8]
006c3df9  mov      dword ptr [ecx + 0x28], eax
006c3dfc  mov      dword ptr [edi + 0xb64], 3
006c3e06  jmp      0x6c41af
