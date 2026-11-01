; case_index=53 target=0x006c2a45 kind=inline
; delegate=
; types=79
006c2a45  movss    xmm0, dword ptr [edi + 0x36c]
006c2a4d  mulss    xmm0, dword ptr [0xbaa3a4]
006c2a55  mov      eax, dword ptr [edi + 0x2c]
006c2a58  movss    dword ptr [edi + 0x36c], xmm0
006c2a60  cmp      eax, 0xa
006c2a63  jae      0x6c2a7b
006c2a65  cmp      dword ptr [edi + 0x30], 0
006c2a69  jbe      0x6c2a7b
006c2a6b  mulss    xmm0, dword ptr [0xbaa3f4]
006c2a73  movss    dword ptr [edi + 0x36c], xmm0
006c2a7b  cmp      byte ptr [edi + 0x173], 0
006c2a82  je       0x6c2bf1
006c2a88  cmp      eax, 0xb
006c2a8b  je       0x6c2a96
006c2a8d  cmp      eax, 1
006c2a90  jne      0x6c2bf1
006c2a96  lea      ecx, [ebp - 0xc0]
006c2a9c  call     0x43ef30
006c2aa1  cmp      dword ptr [edi + 0x2c], 1
006c2aa5  lea      ecx, [ebp - 0xc8]
006c2aab  mov      esi, dword ptr [0xc7169c]
006c2ab1  mov      dword ptr [ebp - 0x2c], 0xc
006c2ab8  jne      0x6c2b77
006c2abe  mov      dword ptr [ebp - 0xc8], 0x3c1
006c2ac8  call     0x956780
006c2acd  sub      esp, 8
006c2ad0  mov      dword ptr [esp + 4], 0
006c2ad8  mov      dword ptr [esp], 0x3f800000
006c2adf  push     0
006c2ae1  push     2
006c2ae3  push     ecx
006c2ae4  mov      dword ptr [esp], 0x3f800000
006c2aeb  lea      ecx, [esi + 0x2a324]
006c2af1  push     dword ptr [ebp - 0xc8]
006c2af7  call     0x92dc30
006c2afc  lea      eax, [ebp - 0xc0]
006c2b02  mov      dword ptr [ebp - 0xb4], 0xbda3d70a
006c2b0c  push     eax
006c2b0d  push     8
006c2b0f  lea      eax, [ebp - 0xe4]
006c2b15  mov      dword ptr [ebp - 0xac], 0x40000000
006c2b1f  push     eax
006c2b20  lea      esi, [edi + 0x33c]
006c2b26  mov      dword ptr [ebp - 0x68], 0x2000
006c2b2d  push     esi
006c2b2e  mov      ecx, edi
006c2b30  mov      dword ptr [ebp - 0x64], 0
006c2b37  mov      dword ptr [ebp - 0xe4], 0x41000000
006c2b41  mov      dword ptr [ebp - 0xe0], 0
006c2b4b  call     0x6cb2e0
006c2b50  lea      eax, [ebp - 0xc0]
006c2b56  mov      dword ptr [ebp - 0xdc], 0x40800000
006c2b60  push     eax
006c2b61  push     8
006c2b63  lea      eax, [ebp - 0xdc]
006c2b69  mov      dword ptr [ebp - 0xd8], 0
006c2b73  push     eax
006c2b74  push     esi
006c2b75  jmp      0x6c2bea
006c2b77  mov      dword ptr [ebp - 0xc8], 0x3c2
006c2b81  call     0x956780
006c2b86  sub      esp, 8
006c2b89  mov      dword ptr [esp + 4], 0
006c2b91  mov      dword ptr [esp], 0x3f800000
006c2b98  push     0
006c2b9a  push     2
006c2b9c  push     ecx
006c2b9d  mov      dword ptr [esp], 0x3f800000
006c2ba4  lea      ecx, [esi + 0x2a324]
006c2baa  push     dword ptr [ebp - 0xc8]
006c2bb0  call     0x92dc30
006c2bb5  lea      eax, [ebp - 0xc0]
006c2bbb  mov      dword ptr [ebp - 0xb4], 0xbd75c28f
006c2bc5  push     eax
006c2bc6  push     8
006c2bc8  lea      eax, [ebp - 0xd0]
006c2bce  mov      dword ptr [ebp - 0xd0], 0x41200000
006c2bd8  push     eax
006c2bd9  lea      eax, [edi + 0x33c]
006c2bdf  mov      dword ptr [ebp - 0xcc], 0
006c2be9  push     eax
006c2bea  mov      ecx, edi
006c2bec  call     0x6cb2e0
006c2bf1  mov      eax, dword ptr [edi + 0x2c]
006c2bf4  cmp      eax, 0xa
006c2bf7  jae      0x6c2c05
006c2bf9  mov      ecx, edi
006c2bfb  call     0x471050
006c2c00  jmp      0x6c41af
006c2c05  cmp      eax, 0x14
006c2c08  jae      0x6c2c16
006c2c0a  mov      ecx, edi
006c2c0c  call     0x471cc0
006c2c11  jmp      0x6c41af
006c2c16  mov      ecx, dword ptr [edi + 0x168]
006c2c1c  mov      eax, dword ptr [edi + 0x16c]
006c2c22  and      ecx, 0xfffffffb
006c2c25  or       ecx, 0x40000
006c2c2b  mov      dword ptr [edi + 0x16c], eax
006c2c31  mov      dword ptr [edi + 0x168], ecx
006c2c37  jmp      0x6c41af
