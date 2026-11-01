0041a8bd test al, 0x20
0041a8bf je 0x41a94f
0041a8c5 mov esi, dword ptr [0xc71678]
0041a8cb xor edi, edi
0041a8cd add esi, 0x1baa8
0041a8d3 mov eax, dword ptr [esi + 4]
0041a8d6 sub eax, dword ptr [esi]
0041a8d8 sar eax, 2
0041a8db test eax, eax
0041a8dd je 0x41a94f
0041a8df nop 
0041a8e0 mov ecx, dword ptr [esi + 4]
0041a8e3 mov eax, ecx
0041a8e5 sub eax, dword ptr [esi]
0041a8e7 sar eax, 2
0041a8ea test eax, eax
0041a8ec jne 0x41a900
0041a8ee push 0xb7e6bc
0041a8f3 push 0x10
0041a8f5 call 0xa112c0
0041a8fa mov ecx, dword ptr [esi + 4]
0041a8fd add esp, 8
0041a900 mov eax, dword ptr [esi]
0041a902 sub ecx, eax
0041a904 sar ecx, 2
0041a907 cmp edi, ecx
0041a909 jae 0x41a90e
0041a90b lea eax, [eax + edi*4]
0041a90e mov ecx, dword ptr [ebx + 0x7c]
0041a911 mov esi, dword ptr [eax]
0041a913 lea eax, [ecx + 1]
0041a916 cmp eax, dword ptr [ebx + 0x78]
0041a919 jbe 0x41a92d
0041a91b push 0xb1b740
0041a920 push 0x10
0041a922 call 0xa112c0
0041a927 mov ecx, dword ptr [ebx + 0x7c]
0041a92a add esp, 8
0041a92d mov eax, dword ptr [ebx + 0x74]
0041a930 inc edi
0041a931 mov dword ptr [eax + ecx*4], esi
0041a934 mov esi, dword ptr [0xc71678]
0041a93a inc dword ptr [ebx + 0x7c]
0041a93d add esi, 0x1baa8
0041a943 mov eax, dword ptr [esi + 4]
0041a946 sub eax, dword ptr [esi]
0041a948 sar eax, 2
0041a94b cmp edi, eax
0041a94d jb 0x41a8e0
0041a94f movss xmm3, dword ptr [ebp - 0x14]
0041a954 xor esi, esi
0041a956 xor edi, edi
0041a958 cmp dword ptr [ebx + 0x7c], esi
0041a95b jbe 0x41a9c1
0041a95d nop dword ptr [eax]
0041a960 mov eax, dword ptr [ebx + 0x74]
0041a963 movaps xmm2, xmm3
0041a966 mov edx, dword ptr [eax + edi*4]
0041a969 xor eax, eax
0041a96b mov ecx, dword ptr [edx + 0x16c]
0041a971 addss xmm2, dword ptr [edx + 0x370]
0041a979 and ecx, 0x4000
0041a97f or eax, ecx
0041a981 jne 0x41a9bb
0041a983 mov eax, dword ptr [ebp + 0xc]
0041a986 movss xmm0, dword ptr [edx + 0x33c]
0041a98e movss xmm1, dword ptr [edx + 0x340]
0041a996 mulss xmm2, xmm2
0041a99a subss xmm1, dword ptr [eax + 4]
0041a99f subss xmm0, dword ptr [eax]
0041a9a3 mulss xmm1, xmm1
0041a9a7 mulss xmm0, xmm0
0041a9ab addss xmm1, xmm0
0041a9af comiss xmm2, xmm1
0041a9b2 jbe 0x41a9bb
0041a9b4 mov eax, dword ptr [ebx + 0x74]
0041a9b7 mov dword ptr [eax + esi*4], edx
0041a9ba inc esi
0041a9bb inc edi
0041a9bc cmp edi, dword ptr [ebx + 0x7c]
0041a9bf jb 0x41a960