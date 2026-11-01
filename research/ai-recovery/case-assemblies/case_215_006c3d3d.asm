; case_index=215 target=0x006c3d3d kind=inline
; delegate=
; types=903
006c3d3d  mov      eax, dword ptr [edi + 0x2c]
006c3d40  test     eax, eax
006c3d42  jne      0x6c3d50
006c3d44  mov      ecx, edi
006c3d46  call     0x5a7b20
006c3d4b  jmp      0x6c41af
006c3d50  cmp      eax, 1
006c3d53  jne      0x6c3d61
006c3d55  mov      ecx, edi
006c3d57  call     0x5ab4d0
006c3d5c  jmp      0x6c41af
006c3d61  cmp      eax, 0xa
006c3d64  jne      0x6c3d72
006c3d66  mov      ecx, edi
006c3d68  call     0x5ad250
006c3d6d  jmp      0x6c41af
006c3d72  cmp      eax, 0x14
006c3d75  jne      0x6c41af
006c3d7b  mov      ecx, edi
006c3d7d  call     0x5ad8a0
006c3d82  jmp      0x6c41af
