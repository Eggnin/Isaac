00773b8b movss xmm0, dword ptr [ebp + 8]
00773b90 xorps xmm1, xmm1
00773b93 comiss xmm1, xmm0
00773b96 jb 0x773c34
00773b9c mov eax, dword ptr [ebp - 0x120]
00773ba2 and eax, 0x8000
00773ba7 or eax, 0
00773baa je 0x773c34
00773bb0 mov ecx, edi
00773bb2 call 0x7c3320
00773bb7 test al, al
00773bb9 je 0x773bc9
00773bbb cmp dword ptr [esi], 0x3e8
00773bc1 jne 0x773c2f
00773bc3 cmp dword ptr [esi + 4], 0x7b
00773bc7 jne 0x773c2f
00773bc9 lea ecx, [ebp - 0xb8]
00773bcf call 0x6a8190
00773bd4 mov eax, dword ptr [ebp - 0x120]
00773bda lea ecx, [ebp - 0xa8]
00773be0 movss xmm0, dword ptr [ebp + 8]
00773be5 mov dword ptr [ebp - 0xb0], eax
00773beb mov eax, dword ptr [ebp + 0x10]
00773bee push esi
00773bef movss dword ptr [ebp - 0xb8], xmm0
00773bf7 mov dword ptr [ebp - 0xac], eax
00773bfd call 0x499960
00773c02 lea eax, [ebp - 0xb8]
00773c08 lea ecx, [edi + 8]
00773c0b push eax
00773c0c call 0x6b7db0
00773c11 movss xmm0, dword ptr [ebp + 8]
00773c16 addss xmm0, dword ptr [edi + 0x14]
00773c1b mov eax, dword ptr [ebp - 0x120]
00773c21 or dword ptr [edi + 0x18], eax
00773c24 mov eax, dword ptr [ebp + 0x10]
00773c27 or dword ptr [edi + 0x1c], eax
00773c2a movss dword ptr [edi + 0x14], xmm0
00773c2f movss xmm0, dword ptr [ebp + 8]