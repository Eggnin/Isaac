; case_index=63 target=0x006c2d98 kind=inline
; delegate=
; types=93
006c2d98  cmp      dword ptr [edi + 0xb64], 0
006c2d9f  jne      0x6c3412
006c2da5  cmp      dword ptr [edi + 0x3bc], 0
006c2dac  lea      esi, [edi + 0x3bc]
006c2db2  jne      0x6c33ee
006c2db8  mov      eax, dword ptr [edi + 0x168]
006c2dbe  and      eax, 0x20000000
006c2dc3  mov      byte ptr [ebp - 0xc1], 1
006c2dca  or       eax, 0
006c2dcd  jne      0x6c2dd6
006c2dcf  mov      byte ptr [ebp - 0xc1], 0
006c2dd6  mov      eax, dword ptr [0xc71678]
006c2ddb  push     0
006c2ddd  push     0
006c2ddf  push     -1
006c2de1  push     dword ptr [edi + 0x2c]
006c2de4  mov      ecx, dword ptr [eax + 0x18300]
006c2dea  lea      eax, [ebp - 0x104]
006c2df0  push     0x5c
006c2df2  add      ecx, 0x1218
006c2df8  push     eax
006c2df9  call     0x41af60
006c2dfe  mov      dword ptr [ebp - 4], 0
006c2e05  xor      eax, eax
006c2e07  movss    xmm1, dword ptr [0xbaaec8]
006c2e0f  mov      edx, dword ptr [ebp - 0x100]
006c2e15  mov      dword ptr [ebp - 0xc8], eax
006c2e1b  movss    dword ptr [ebp - 0xd4], xmm1
006c2e23  mov      dword ptr [ebp - 0xcc], eax
006c2e29  mov      dword ptr [ebp - 0xd8], edx
006c2e2f  cmp      dword ptr [ebp - 0xf8], eax
006c2e35  jbe      0x6c2fea
006c2e3b  nop      dword ptr [eax + eax]
006c2e40  push     0
006c2e42  push     0xc5d6ac
006c2e47  push     0xc5d5dc
006c2e4c  push     0
006c2e4e  push     dword ptr [edx + eax*4]
006c2e51  call     0xaf08b1
006c2e56  mov      esi, eax
006c2e58  add      esp, 0x14
006c2e5b  test     esi, esi
006c2e5d  je       0x6c2ef1
006c2e63  cmp      dword ptr [esi + 0x3c0], 0
006c2e6a  jne      0x6c2ef1
006c2e70  mov      ecx, dword ptr [esi + 0x168]
006c2e76  and      ecx, 0x20000000
006c2e7c  or       ecx, 0
006c2e7f  je       0x6c2e85
006c2e81  mov      al, 1
006c2e83  jmp      0x6c2e87
006c2e85  xor      al, al
006c2e87  cmp      al, byte ptr [ebp - 0xc1]
006c2e8d  jne      0x6c2ef1
006c2e8f  movss    xmm1, dword ptr [edi + 0x33c]
006c2e97  movss    xmm0, dword ptr [edi + 0x340]
006c2e9f  subss    xmm0, dword ptr [esi + 0x340]
006c2ea7  subss    xmm1, dword ptr [esi + 0x33c]
006c2eaf  mulss    xmm0, xmm0
006c2eb3  mulss    xmm1, xmm1
006c2eb7  addss    xmm0, xmm1
006c2ebb  call     0x435a50
006c2ec0  movss    xmm1, dword ptr [0xbaabc4]
006c2ec8  mov      ecx, dword ptr [ebp - 0xc8]
006c2ece  subss    xmm1, xmm0
006c2ed2  test     ecx, ecx
006c2ed4  je       0x6c2edf
006c2ed6  comiss   xmm1, dword ptr [ebp - 0xd4]
006c2edd  jbe      0x6c2ef7
006c2edf  mov      ecx, esi
006c2ee1  movss    dword ptr [ebp - 0xd4], xmm1
006c2ee9  mov      dword ptr [ebp - 0xc8], ecx
006c2eef  jmp      0x6c2ef7
006c2ef1  mov      ecx, dword ptr [ebp - 0xc8]
006c2ef7  mov      eax, dword ptr [ebp - 0xcc]
006c2efd  mov      edx, dword ptr [ebp - 0xd8]
006c2f03  inc      eax
006c2f04  mov      dword ptr [ebp - 0xcc], eax
006c2f0a  cmp      eax, dword ptr [ebp - 0xf8]
006c2f10  jb       0x6c2e40
006c2f16  test     ecx, ecx
006c2f18  je       0x6c2fe4
006c2f1e  lea      esi, [ecx + 0x3c0]
006c2f24  mov      ecx, dword ptr [esi]
006c2f26  test     ecx, ecx
006c2f28  je       0x6c2f42
006c2f2a  lea      eax, [ebp - 0xcc]
006c2f30  mov      dword ptr [ebp - 0xcc], esi
006c2f36  add      ecx, 0x3cc
006c2f3c  push     eax
006c2f3d  call     0x4cf210
006c2f42  push     esi
006c2f43  mov      ecx, edi
006c2f45  mov      dword ptr [esi], edi
006c2f47  call     0x4cdcf0
006c2f4c  mov      ecx, dword ptr [edi + 0x3bc]
006c2f52  lea      esi, [edi + 0x3bc]
006c2f58  test     ecx, ecx
006c2f5a  je       0x6c2f74
006c2f5c  lea      eax, [ebp - 0xcc]
006c2f62  mov      dword ptr [ebp - 0xcc], esi
006c2f68  add      ecx, 0x3cc
006c2f6e  push     eax
006c2f6f  call     0x4cf210
006c2f74  mov      eax, dword ptr [ebp - 0xc8]
006c2f7a  mov      ecx, eax
006c2f7c  push     esi
006c2f7d  mov      dword ptr [esi], eax
006c2f7f  call     0x4cdcf0
006c2f84  mov      eax, dword ptr [ebp - 0xc8]
006c2f8a  mov      ecx, dword ptr [eax + 0x3bc]
006c2f90  mov      dword ptr [ebp - 0xd4], ecx
006c2f96  test     ecx, ecx
006c2f98  je       0x6c2fea
006c2f9a  mov      edx, dword ptr [edi + 0xbec]
006c2fa0  lea      eax, [edi + 0xbec]
006c2fa6  mov      dword ptr [ebp - 0xcc], eax
006c2fac  test     edx, edx
006c2fae  je       0x6c2fd4
006c2fb0  lea      eax, [ebp - 0xcc]
006c2fb6  lea      ecx, [edx + 0x3cc]
006c2fbc  push     eax
006c2fbd  call     0x4cf210
006c2fc2  mov      ecx, dword ptr [ebp - 0xd4]
006c2fc8  lea      eax, [edi + 0xbec]
006c2fce  mov      dword ptr [ebp - 0xcc], eax
006c2fd4  mov      esi, dword ptr [ebp - 0xcc]
006c2fda  mov      edx, ecx
006c2fdc  push     eax
006c2fdd  mov      dword ptr [esi], edx
006c2fdf  call     0x4cdcf0
006c2fe4  lea      esi, [edi + 0x3bc]
006c2fea  cmp      dword ptr [esi], 0
006c2fed  jne      0x6c33bc
006c2ff3  mov      eax, dword ptr [0xc71678]
006c2ff8  lea      ecx, [edi + 0x33c]
006c2ffe  push     0
006c3000  push     0
006c3002  push     0
006c3004  push     ecx
006c3005  mov      dword ptr [esp], 0x42200000
006c300c  push     ecx
006c300d  lea      ecx, [ebp - 0xe4]
006c3013  push     ecx
006c3014  mov      ecx, dword ptr [eax + 0x18300]
006c301a  call     0x813520
006c301f  cmp      dword ptr [edi + 0x2c], 1
006c3023  jne      0x6c32d1
006c3029  call     0x6eef60
006c302e  movss    xmm1, dword ptr [ebp - 0xe4]
006c3036  xorps    xmm2, xmm2
006c3039  movss    xmm0, dword ptr [ebp - 0xe0]
006c3041  subss    xmm1, dword ptr [0xbaa854]
006c3049  mov      ecx, dword ptr [0xc71678]
006c304f  subss    xmm0, xmm2
006c3053  push     eax
006c3054  push     0
006c3056  push     edi
006c3057  push     0xc7b640
006c305c  lea      eax, [ebp - 0xf4]
006c3062  movss    dword ptr [ebp - 0xf4], xmm1
006c306a  push     eax
006c306b  push     dword ptr [edi + 0x2c]
006c306e  movss    dword ptr [ebp - 0xf0], xmm0
006c3076  push     0x5c
006c3078  call     0x428b20
006c307d  cmp      byte ptr [ebp - 0xc1], 0
006c3084  mov      esi, eax
006c3086  mov      dword ptr [ebp - 0xc8], esi
006c308c  je       0x6c30a7
006c308e  push     0
006c3090  push     0
006c3092  push     -1
006c3094  lea      ecx, [ebp - 0x12c]
006c309a  call     0x435c70
006c309f  push     eax
006c30a0  mov      ecx, esi
006c30a2  call     0x6ad870
006c30a7  mov      ecx, dword ptr [esi + 0x3c0]
006c30ad  lea      eax, [esi + 0x3c0]
006c30b3  test     ecx, ecx
006c30b5  je       0x6c30d5
006c30b7  mov      dword ptr [ebp - 0xcc], eax
006c30bd  add      ecx, 0x3cc
006c30c3  lea      eax, [ebp - 0xcc]
006c30c9  push     eax
006c30ca  call     0x4cf210
006c30cf  lea      eax, [esi + 0x3c0]
006c30d5  push     eax
006c30d6  mov      ecx, edi
006c30d8  mov      dword ptr [eax], edi
006c30da  call     0x4cdcf0
006c30df  mov      ecx, dword ptr [edi + 0x3bc]
006c30e5  lea      eax, [edi + 0x3bc]
006c30eb  test     ecx, ecx
006c30ed  je       0x6c310d
006c30ef  mov      dword ptr [ebp - 0xcc], eax
006c30f5  add      ecx, 0x3cc
006c30fb  lea      eax, [ebp - 0xcc]
006c3101  push     eax
006c3102  call     0x4cf210
006c3107  lea      eax, [edi + 0x3bc]
006c310d  push     eax
006c310e  mov      ecx, esi
006c3110  mov      dword ptr [eax], esi
006c3112  call     0x4cdcf0
006c3117  call     0x6eef60
006c311c  movss    xmm1, dword ptr [ebp - 0xe4]
006c3124  xorps    xmm2, xmm2
006c3127  movss    xmm0, dword ptr [ebp - 0xe0]
006c312f  addss    xmm1, dword ptr [0xbaa854]
006c3137  mov      ecx, dword ptr [0xc71678]
006c313d  addss    xmm0, xmm2
006c3141  push     eax
006c3142  push     1
006c3144  push     edi
006c3145  push     0xc7b640
006c314a  lea      eax, [ebp - 0xec]
006c3150  movss    dword ptr [ebp - 0xec], xmm1
006c3158  push     eax
006c3159  push     dword ptr [edi + 0x2c]
006c315c  movss    dword ptr [ebp - 0xe8], xmm0
006c3164  push     0x5c
006c3166  call     0x428b20
006c316b  cmp      byte ptr [ebp - 0xc1], 0
006c3172  mov      esi, eax
006c3174  je       0x6c318f
006c3176  push     0
006c3178  push     0
006c317a  push     -1
006c317c  lea      ecx, [ebp - 0x12c]
006c3182  call     0x435c70
006c3187  push     eax
006c3188  mov      ecx, esi
006c318a  call     0x6ad870
006c318f  mov      eax, dword ptr [esi + 0x3c0]
006c3195  lea      ecx, [esi + 0x3c0]
006c319b  test     eax, eax
006c319d  je       0x6c31bd
006c319f  mov      dword ptr [ebp - 0xcc], ecx
006c31a5  lea      ecx, [eax + 0x3cc]
006c31ab  lea      eax, [ebp - 0xcc]
006c31b1  push     eax
006c31b2  call     0x4cf210
006c31b7  lea      ecx, [esi + 0x3c0]
006c31bd  mov      eax, dword ptr [ebp - 0xc8]
006c31c3  mov      dword ptr [ecx], eax
006c31c5  push     ecx
006c31c6  mov      ecx, eax
006c31c8  call     0x4cdcf0
006c31cd  mov      eax, dword ptr [ebp - 0xc8]
006c31d3  add      eax, 0x3bc
006c31d8  mov      dword ptr [ebp - 0xd4], eax
006c31de  mov      ecx, dword ptr [eax]
006c31e0  test     ecx, ecx
006c31e2  je       0x6c3202
006c31e4  mov      dword ptr [ebp - 0xcc], eax
006c31ea  add      ecx, 0x3cc
006c31f0  lea      eax, [ebp - 0xcc]
006c31f6  push     eax
006c31f7  call     0x4cf210
006c31fc  mov      eax, dword ptr [ebp - 0xd4]
006c3202  push     eax
006c3203  mov      ecx, esi
006c3205  mov      dword ptr [eax], esi
006c3207  call     0x4cdcf0
006c320c  mov      ecx, dword ptr [edi + 0xbec]
006c3212  lea      eax, [edi + 0xbec]
006c3218  test     ecx, ecx
006c321a  je       0x6c323a
006c321c  mov      dword ptr [ebp - 0xcc], eax
006c3222  add      ecx, 0x3cc
006c3228  lea      eax, [ebp - 0xcc]
006c322e  push     eax
006c322f  call     0x4cf210
006c3234  lea      eax, [edi + 0xbec]
006c323a  push     eax
006c323b  mov      ecx, esi
006c323d  mov      dword ptr [eax], esi
006c323f  call     0x4cdcf0
006c3244  mov      eax, dword ptr [ebp - 0xc8]
006c324a  add      eax, 0xbec
006c324f  mov      dword ptr [ebp - 0xd4], eax
006c3255  mov      ecx, dword ptr [eax]
006c3257  test     ecx, ecx
006c3259  je       0x6c3279
006c325b  mov      dword ptr [ebp - 0xcc], eax
006c3261  add      ecx, 0x3cc
006c3267  lea      eax, [ebp - 0xcc]
006c326d  push     eax
006c326e  call     0x4cf210
006c3273  mov      eax, dword ptr [ebp - 0xd4]
006c3279  push     eax
006c327a  mov      ecx, esi
006c327c  mov      dword ptr [eax], esi
006c327e  call     0x4cdcf0
006c3283  mov      eax, dword ptr [esi + 0xbec]
006c3289  lea      ecx, [esi + 0xbec]
006c328f  test     eax, eax
006c3291  je       0x6c32b1
006c3293  mov      dword ptr [ebp - 0xcc], ecx
006c3299  lea      ecx, [eax + 0x3cc]
006c329f  lea      eax, [ebp - 0xcc]
006c32a5  push     eax
006c32a6  call     0x4cf210
006c32ab  lea      ecx, [esi + 0xbec]
006c32b1  mov      eax, dword ptr [ebp - 0xc8]
006c32b7  mov      dword ptr [ecx], eax
006c32b9  push     ecx
006c32ba  mov      ecx, eax
006c32bc  call     0x4cdcf0
006c32c1  mov      ecx, dword ptr [ebp - 0xc8]
006c32c7  mov      eax, dword ptr [ecx]
006c32c9  call     dword ptr [eax + 0xc]
006c32cc  jmp      0x6c33b5
006c32d1  call     0x6eef60
006c32d6  mov      ecx, dword ptr [0xc71678]
006c32dc  mov      esi, eax
006c32de  push     0
006c32e0  push     0
006c32e2  push     0
006c32e4  push     ecx
006c32e5  mov      ecx, dword ptr [ecx + 0x18300]
006c32eb  lea      eax, [edi + 0x33c]
006c32f1  mov      dword ptr [esp], 0x42200000
006c32f8  push     eax
006c32f9  lea      eax, [ebp - 0xec]
006c32ff  push     eax
006c3300  call     0x813520
006c3305  mov      ecx, dword ptr [0xc71678]
006c330b  push     esi
006c330c  push     0
006c330e  push     edi
006c330f  push     0xc7b640
006c3314  push     eax
006c3315  push     dword ptr [edi + 0x2c]
006c3318  push     0x5c
006c331a  call     0x428b20
006c331f  cmp      byte ptr [ebp - 0xc1], 0
006c3326  mov      esi, eax
006c3328  mov      dword ptr [ebp - 0xcc], esi
006c332e  je       0x6c3349
006c3330  push     0
006c3332  push     0
006c3334  push     -1
006c3336  lea      ecx, [ebp - 0x12c]
006c333c  call     0x435c70
006c3341  push     eax
006c3342  mov      ecx, esi
006c3344  call     0x6ad870
006c3349  mov      ecx, dword ptr [esi + 0x3c0]
006c334f  add      esi, 0x3c0
006c3355  test     ecx, ecx
006c3357  je       0x6c3371
006c3359  lea      eax, [ebp - 0xd4]
006c335f  mov      dword ptr [ebp - 0xd4], esi
006c3365  add      ecx, 0x3cc
006c336b  push     eax
006c336c  call     0x4cf210
006c3371  push     esi
006c3372  mov      ecx, edi
006c3374  mov      dword ptr [esi], edi
006c3376  call     0x4cdcf0
006c337b  mov      ecx, dword ptr [edi + 0x3bc]
006c3381  lea      esi, [edi + 0x3bc]
006c3387  test     ecx, ecx
006c3389  je       0x6c33a3
006c338b  lea      eax, [ebp - 0xd4]
006c3391  mov      dword ptr [ebp - 0xd4], esi
006c3397  add      ecx, 0x3cc
006c339d  push     eax
006c339e  call     0x4cf210
006c33a3  mov      eax, dword ptr [ebp - 0xcc]
006c33a9  mov      dword ptr [esi], eax
006c33ab  push     esi
006c33ac  mov      esi, eax
006c33ae  mov      ecx, esi
006c33b0  call     0x4cdcf0
006c33b5  mov      eax, dword ptr [esi]
006c33b7  mov      ecx, esi
006c33b9  call     dword ptr [eax + 0xc]
006c33bc  mov      dword ptr [ebp - 4], 0xffffffff
006c33c3  cmp      byte ptr [ebp - 0x104], 0
006c33ca  jne      0x6c33ee
006c33cc  mov      dword ptr [ebp - 4], 1
006c33d3  mov      cl, 1
006c33d5  mov      edx, dword ptr [ebp - 0xd8]
006c33db  push     0
006c33dd  push     0
006c33df  call     0xa648b0
006c33e4  add      esp, 8
006c33e7  mov      dword ptr [ebp - 4], 0xffffffff
006c33ee  or       dword ptr [edi + 0x168], 1
006c33f5  or       dword ptr [edi + 0x16c], 8
006c33fc  mov      dword ptr [edi + 0xb64], 4
006c3406  mov      byte ptr [edi + 0x3b0], 1
006c340d  jmp      0x6c41af
