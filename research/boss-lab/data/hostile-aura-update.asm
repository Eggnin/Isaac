00606c2f push 0
00606c31 push 0x20000000
00606c36 mov ecx, dword ptr [ebp - 0xf4c]
00606c3c call 0x417430
00606c41 movzx edx, al
00606c44 test edx, edx
00606c46 jne 0x606d6b
00606c4c mov ecx, dword ptr [0xc71678]
00606c52 call 0x407480
00606c57 mov ecx, eax
00606c59 call 0x428a60
00606c5e mov dword ptr [ebp - 0x41d8], eax
00606c64 mov ecx, dword ptr [ebp - 0xf4c]
00606c6a add ecx, 0x48
00606c6d call 0x417200
00606c72 movss xmm0, dword ptr [0xbaa904]
00606c7a mulss xmm0, dword ptr [eax]
00606c7e movss dword ptr [ebp - 0x41d4], xmm0
00606c86 push 0x21
00606c88 mov eax, dword ptr [ebp - 0xf4c]
00606c8e add eax, 0x33c
00606c93 push eax
00606c94 lea ecx, [ebp - 0x4be0]
00606c9a push ecx
00606c9b movss xmm3, dword ptr [ebp - 0x41d4]
00606ca3 mov ecx, dword ptr [ebp - 0x41d8]
00606ca9 call 0x41a790
00606cae mov dword ptr [ebp - 4], 0x4a
00606cb5 mov dword ptr [ebp - 0x13b0], 0
00606cbf jmp 0x606cd0
00606cc1 mov edx, dword ptr [ebp - 0x13b0]
00606cc7 add edx, 1
00606cca mov dword ptr [ebp - 0x13b0], edx
00606cd0 lea ecx, [ebp - 0x4be0]
00606cd6 call 0x4176f0
00606cdb cmp dword ptr [ebp - 0x13b0], eax
00606ce1 jae 0x606d59
00606ce3 mov eax, dword ptr [ebp - 0x13b0]
00606ce9 push eax
00606cea lea ecx, [ebp - 0x4be0]
00606cf0 call 0x417620
00606cf5 mov ecx, dword ptr [eax]
00606cf7 mov dword ptr [ebp - 0x1544], ecx
00606cfd mov ecx, dword ptr [ebp - 0x1544]
00606d03 call 0x417380
00606d08 test eax, eax
00606d0a je 0x606d54
00606d0c mov edx, dword ptr [ebp - 0x1544]
00606d12 mov eax, dword ptr [edx]
00606d14 mov ecx, dword ptr [eax + 0x20]
00606d17 mov dword ptr [ebp - 0x41dc], ecx
00606d1d mov edx, dword ptr [ebp - 0xf4c]
00606d23 push edx
00606d24 lea ecx, [ebp - 0x6a70]
00606d2a call 0x431310
00606d2f push 0x1e
00606d31 lea eax, [ebp - 0x6a70]
00606d37 push eax
00606d38 push 0
00606d3a push 0x8000
00606d3f push ecx
00606d40 xorps xmm0, xmm0
00606d43 movss dword ptr [esp], xmm0
00606d48 mov ecx, dword ptr [ebp - 0x1544]
00606d4e call dword ptr [ebp - 0x41dc]
00606d54 jmp 0x606cc1
00606d59 mov dword ptr [ebp - 4], 0xffffffff
00606d60 lea ecx, [ebp - 0x4be0]
00606d66 call 0x4175b0