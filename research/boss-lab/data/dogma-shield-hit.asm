006ace60 push ebp
006ace61 mov ebp, esp
006ace63 and esp, 0xfffffff8
006ace66 sub esp, 0x3c
006ace69 push ebx
006ace6a push esi
006ace6b push edi
006ace6c mov edi, ecx
006ace6e cmp dword ptr [edi + 0x28], 1
006ace72 jne 0x6ace83
006ace74 push 0xb67218
006ace79 push 0x10
006ace7b call 0xa112c0
006ace80 add esp, 8
006ace83 mov ebx, dword ptr [ebp + 0xc]
006ace86 mov esi, ebx
006ace88 and esi, 0x2000
006ace8e mov eax, esi
006ace90 or eax, 0
006ace93 jne 0x6acea7
006ace95 push dword ptr [ebp + 0x14]
006ace98 mov ecx, edi
006ace9a call 0x6acd10
006ace9f test al, al
006acea1 jne 0x6ad139
006acea7 movss xmm0, dword ptr [ebp + 8]
006aceac xorps xmm1, xmm1
006aceaf comiss xmm0, xmm1
006aceb2 jbe 0x6ad14f
006aceb8 push 0
006aceba mov ecx, edi
006acebc call 0x6ac560
006acec1 test al, al
006acec3 jne 0x6aced4
006acec5 cmp dword ptr [edi + 0x28], 0x3b6
006acecc jne 0x6ad147
006aced2 jmp 0x6acf1f
006aced4 mov eax, dword ptr [edi + 0x28]
006aced7 cmp eax, 0x325
006acedc je 0x6ad147
006acee2 cmp eax, 0x340
006acee7 jne 0x6acf18
006acee9 cmp dword ptr [edi + 0x2c], 1
006aceed jne 0x6acf5c
006aceef mov ebx, dword ptr [edi + 0x3c8]
006acef5 test ebx, ebx
006acef7 je 0x6acf5c
006acef9 cmp dword ptr [ebx + 0x28], 0x389
006acf00 jne 0x6acf5c
006acf02 mov eax, dword ptr [edi + 0xb64]
006acf08 cmp eax, 0x10
006acf0b je 0x6acf96
006acf11 cmp eax, 5
006acf14 jne 0x6acf5c
006acf16 jmp 0x6acf96
006acf18 cmp eax, 0x3b6
006acf1d jne 0x6acf31
006acf1f cmp dword ptr [edi + 0x2c], 0
006acf23 jne 0x6acf5c
006acf25 mov ebx, dword ptr [edi + 0x3bc]
006acf2b test ebx, ebx
006acf2d je 0x6acf5c
006acf2f jmp 0x6acf96
006acf31 cmp eax, 0x379
006acf36 jne 0x6acf5c
006acf38 mov ebx, dword ptr [edi + 0x3bc]
006acf3e test ebx, ebx
006acf40 je 0x6acf5c
006acf42 cmp dword ptr [ebx + 0x28], 0x399
006acf49 jne 0x6acf5c
006acf4b cmp dword ptr [ebx + 0x3c0], edi
006acf51 jne 0x6acf96
006acf53 cmp dword ptr [ebx + 0x188], 0
006acf5a jne 0x6acf96
006acf5c mov eax, dword ptr [edi + 0x168]
006acf62 and eax, 0x20000000
006acf67 mov byte ptr [esp + 0xc], 1
006acf6c or eax, 0
006acf6f jne 0x6acf76
006acf71 mov byte ptr [esp + 0xc], 0
006acf76 push dword ptr [esp + 0xc]
006acf7a lea ecx, [edi + 0x33c]
006acf80 lea edx, [esp + 0x10]
006acf84 call 0x4e7d10
006acf89 mov ebx, eax
006acf8b add esp, 4
006acf8e test ebx, ebx
006acf90 je 0x6ad144
006acf96 mov esi, dword ptr [0xc7169c]
006acf9c lea ecx, [esp + 0xc]
006acfa0 mov dword ptr [esp + 0xc], 0x1f5
006acfa8 call 0x956780
006acfad sub esp, 8
006acfb0 mov dword ptr [esp + 4], 0
006acfb8 mov dword ptr [esp], 0x3f800000
006acfbf push 0
006acfc1 push 0xa
006acfc3 push ecx
006acfc4 mov dword ptr [esp], 0x3f800000
006acfcb lea ecx, [esi + 0x2a324]
006acfd1 push dword ptr [esp + 0x20]
006acfd5 call 0x92dc30
006acfda mov ecx, dword ptr [edi + 0x3d8]
006acfe0 test ecx, ecx
006acfe2 je 0x6acfe9
006acfe4 mov eax, dword ptr [ecx]
006acfe6 call dword ptr [eax + 0x28]
006acfe9 call 0x6eef60
006acfee mov ecx, dword ptr [0xc71678]
006acff4 push 0
006acff6 push eax
006acff7 push 0
006acff9 push ebx
006acffa push 0xc7b640
006acfff lea eax, [edi + 0x33c]
006ad005 push eax
006ad006 push 0xa0
006ad00b push 0x3e8
006ad010 call 0x6fe410
006ad015 mov esi, eax
006ad017 mov ecx, dword ptr [esi + 0x3bc]
006ad01d lea eax, [esi + 0x3bc]
006ad023 test ecx, ecx
006ad025 je 0x6ad041
006ad027 mov dword ptr [esp + 0xc], eax
006ad02b add ecx, 0x3cc
006ad031 lea eax, [esp + 0xc]
006ad035 push eax
006ad036 call 0x4cf210
006ad03b lea eax, [esi + 0x3bc]
006ad041 mov dword ptr [eax], ebx
006ad043 test ebx, ebx
006ad045 je 0x6ad04f
006ad047 push eax
006ad048 mov ecx, ebx
006ad04a call 0x4cdcf0
006ad04f mov ecx, dword ptr [esi + 0x3c4]
006ad055 lea ebx, [esi + 0x3c4]
006ad05b test ecx, ecx
006ad05d je 0x6ad073
006ad05f lea eax, [esp + 0xc]
006ad063 mov dword ptr [esp + 0xc], ebx
006ad067 push eax
006ad068 add ecx, 0x3cc
006ad06e call 0x4cf210
006ad073 push ebx
006ad074 mov ecx, edi
006ad076 mov dword ptr [ebx], edi
006ad078 call 0x4cdcf0
006ad07d mov dword ptr [esi + 0x468], 0
006ad087 mov dword ptr [esi + 0x46c], 0xc1c00000
006ad091 cmp dword ptr [edi + 0x7c], 0
006ad095 je 0x6ad100
006ad097 push 0xb1d84c
006ad09c lea ecx, [edi + 0x78]
006ad09f call 0x40ace0
006ad0a4 test eax, eax
006ad0a6 je 0x6ad100
006ad0a8 movss xmm3, dword ptr [eax]
006ad0ac xorps xmm2, xmm2
006ad0af subss xmm3, xmm2
006ad0b3 movss xmm2, dword ptr [eax + 4]
006ad0b8 subss xmm2, dword ptr [0xbaa75c]
006ad0c0 mulss xmm3, dword ptr [0xbaa2d0]
006ad0c8 mulss xmm2, dword ptr [0xbaa2d0]
006ad0d0 divss xmm3, dword ptr [0xbaa324]
006ad0d8 divss xmm2, dword ptr [0xbaa324]
006ad0e0 addss xmm3, dword ptr [edi + 0x34c]
006ad0e8 addss xmm2, dword ptr [edi + 0x350]
006ad0f0 movss dword ptr [esi + 0x34c], xmm3
006ad0f8 movss dword ptr [esi + 0x350], xmm2
006ad100 mov eax, dword ptr [esi]
006ad102 mov ecx, esi
006ad104 call dword ptr [eax + 0xc]
006ad107 mov ecx, dword ptr [edi + 0x3d8]
006ad10d lea ebx, [edi + 0x3d8]
006ad113 cmp ecx, esi
006ad115 je 0x6ad139
006ad117 test ecx, ecx
006ad119 je 0x6ad12f
006ad11b lea eax, [esp + 0xc]
006ad11f mov dword ptr [esp + 0xc], ebx
006ad123 push eax
006ad124 add ecx, 0x3cc
006ad12a call 0x4cf210
006ad12f push ebx
006ad130 mov ecx, esi
006ad132 mov dword ptr [ebx], esi
006ad134 call 0x4cdcf0
006ad139 xor al, al
006ad13b pop edi
006ad13c pop esi
006ad13d pop ebx
006ad13e mov esp, ebp
006ad140 pop ebp