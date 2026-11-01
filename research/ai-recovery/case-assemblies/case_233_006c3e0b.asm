; case_index=233 target=0x006c3e0b kind=inline
; delegate=
; types=921
006c3e0b  cmp      dword ptr [edi + 0x2c], 0
006c3e0f  jne      0x6c3e1d
006c3e11  mov      ecx, edi
006c3e13  call     0x573030
006c3e18  jmp      0x6c41af
006c3e1d  mov      eax, dword ptr [edi + 0xb64]
006c3e23  test     eax, eax
006c3e25  je       0x6c3f97
006c3e2b  cmp      eax, 3
006c3e2e  jne      0x6c41af
006c3e34  mov      esi, dword ptr [edi + 0x3bc]
006c3e3a  test     esi, esi
006c3e3c  je       0x6c3f7f
006c3e42  cmp      byte ptr [esi + 0x173], 0
006c3e49  jne      0x6c3f7f
006c3e4f  movss    xmm0, dword ptr [edi + 0xbb0]
006c3e57  mulss    xmm0, dword ptr [0xbaa088]
006c3e5f  movss    dword ptr [ebp - 0xcc], xmm0
006c3e67  call     0x41d540
006c3e6c  mulss    xmm0, dword ptr [0xbaa924]
006c3e74  addss    xmm0, dword ptr [esi + 0x33c]
006c3e7c  subss    xmm0, dword ptr [edi + 0x33c]
006c3e84  movss    dword ptr [ebp - 0xd8], xmm0
006c3e8c  movss    xmm0, dword ptr [ebp - 0xcc]
006c3e94  call     0x41d520
006c3e99  movaps   xmm1, xmm0
006c3e9c  mulss    xmm1, dword ptr [0xbaa924]
006c3ea4  addss    xmm1, dword ptr [esi + 0x340]
006c3eac  subss    xmm1, dword ptr [edi + 0x340]
006c3eb4  movaps   xmm0, xmm1
006c3eb7  movss    dword ptr [ebp - 0xcc], xmm1
006c3ebf  mulss    xmm0, xmm1
006c3ec3  movss    xmm1, dword ptr [ebp - 0xd8]
006c3ecb  mulss    xmm1, xmm1
006c3ecf  addss    xmm0, xmm1
006c3ed3  call     0x435a50
006c3ed8  comiss   xmm0, dword ptr [0xbaa120]
006c3edf  jb       0x6c3efa
006c3ee1  movaps   xmm1, xmm0
006c3ee4  mulss    xmm1, dword ptr [0xbaa154]
006c3eec  minss    xmm1, dword ptr [0xbaa630]
006c3ef4  divss    xmm1, xmm0
006c3ef8  jmp      0x6c3efd
006c3efa  xorps    xmm1, xmm1
006c3efd  movss    xmm2, dword ptr [ebp - 0xd8]
006c3f05  movss    xmm0, dword ptr [edi + 0x39c]
006c3f0d  mulss    xmm2, xmm1
006c3f11  mulss    xmm2, xmm0
006c3f15  addss    xmm2, dword ptr [edi + 0x360]
006c3f1d  movss    dword ptr [edi + 0x360], xmm2
006c3f25  movss    xmm2, dword ptr [ebp - 0xcc]
006c3f2d  mulss    xmm2, xmm1
006c3f31  movss    xmm1, dword ptr [edi + 0x36c]
006c3f39  mulss    xmm1, dword ptr [0xbaa3a4]
006c3f41  mulss    xmm2, xmm0
006c3f45  mulss    xmm0, dword ptr [0xbaa784]
006c3f4d  addss    xmm2, dword ptr [edi + 0x364]
006c3f55  movss    dword ptr [edi + 0x36c], xmm1
006c3f5d  movss    dword ptr [edi + 0x364], xmm2
006c3f65  addss    xmm0, dword ptr [edi + 0xbb0]
006c3f6d  call     0x682740
006c3f72  movss    dword ptr [edi + 0xbb0], xmm0
006c3f7a  jmp      0x6c41af
006c3f7f  lea      ecx, [ebp - 0x12c]
006c3f85  call     0x435c70
006c3f8a  mov      edx, dword ptr [edi]
006c3f8c  mov      ecx, edi
006c3f8e  push     eax
006c3f8f  call     dword ptr [edx + 0x24]
006c3f92  jmp      0x6c41af
006c3f97  call     0x6eef60
006c3f9c  and      eax, 7
006c3f9f  lea      ecx, [edi + 0x48]
006c3fa2  xor      edx, edx
006c3fa4  mov      dword ptr [edi + 0x30], eax
006c3fa7  cmp      edx, eax
006c3fa9  push     0
006c3fab  sbb      edx, edx
006c3fad  and      edx, eax
006c3faf  mov      eax, 7
006c3fb4  cmp      edx, eax
006c3fb6  cmovb    eax, edx
006c3fb9  push     dword ptr [eax*4 + 0xb61c60]
006c3fc0  call     0x40a380
006c3fc5  mov      eax, dword ptr [edi + 0x16c]
006c3fcb  or       dword ptr [edi + 0x168], 0x10000
006c3fd5  mov      dword ptr [edi + 0x188], 2
006c3fdf  mov      dword ptr [edi + 0xb64], 3
006c3fe9  mov      dword ptr [edi + 0x16c], eax
006c3fef  jmp      0x6c41af
