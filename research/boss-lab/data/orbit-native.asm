00658b52 push -1
00658b54 push ecx
00658b55 mov ecx, edi
00658b57 call dword ptr [eax + 0x3c]
00658b5a mov eax, dword ptr [edi + 0x438]
00658b60 mov ecx, dword ptr [edi + 0x43c]
00658b66 and eax, 0x1800
00658b6b or eax, 0
00658b6e je 0x658e96
00658b74 and ecx, 0x1000000
00658b7a xor eax, eax
00658b7c or eax, ecx
00658b7e je 0x658d4f
00658b84 cmp dword ptr [edi + 0x3bc], 0
00658b8b je 0x658d4f
00658b91 lea ecx, [edi + 0x468]
00658b97 push ecx
00658b98 lea ecx, [edi + 0x360]
00658b9e call 0xa104b0
00658ba3 mov ecx, dword ptr [edi + 0x3bc]
00658ba9 lea eax, [ebp - 0x360]
00658baf push eax
00658bb0 call 0x417290
00658bb5 push eax
00658bb6 lea eax, [ebp - 0x410]
00658bbc push eax
00658bbd lea ecx, [edi + 0x33c]
00658bc3 call 0xa10480
00658bc8 movss xmm1, dword ptr [ebp - 0x40c]
00658bd0 lea ecx, [ebp - 0x49c]
00658bd6 xorps xmm1, xmmword ptr [0xbacb70]
00658bdd movss xmm2, dword ptr [ebp - 0x410]
00658be5 call 0xa0fe90
00658bea mov eax, dword ptr [edi + 0x438]
00658bf0 and eax, 0x1000
00658bf5 or eax, 0
00658bf8 je 0x658c18
00658bfa lea eax, [ebp - 0x360]
00658c00 push eax
00658c01 lea ecx, [ebp - 0x49c]
00658c07 call 0xa10660
00658c0c push eax
00658c0d lea ecx, [ebp - 0x49c]
00658c13 call 0x7dd3b0
00658c18 movss xmm0, dword ptr [edi + 0x430]
00658c20 lea ecx, [ebp - 0x410]
00658c26 comiss xmm0, dword ptr [0xba9fe4]
00658c2d jbe 0x658c7f
00658c2f call 0xa0fea0
00658c34 fdiv dword ptr [edi + 0x430]
00658c3a fld1 
00658c3c movss xmm1, dword ptr [0xbaa454]
00658c44 fsubrp st(1)
00658c46 movss xmm0, dword ptr [0xbaad50]
00658c4e fstp dword ptr [ebp - 0x33c]
00658c54 movss xmm2, dword ptr [ebp - 0x33c]
00658c5c call 0x42f2a0
00658c61 mulss xmm0, dword ptr [0xbaa2d0]
00658c69 lea eax, [ebp - 0x344]
00658c6f lea ecx, [ebp - 0x410]
00658c75 movss dword ptr [ebp - 0x344], xmm0
00658c7d jmp 0x658c8f
00658c7f mov dword ptr [ebp - 0x33c], 0x3f000000
00658c89 lea eax, [ebp - 0x33c]
00658c8f push eax
00658c90 call 0xa10540
00658c95 lea eax, [ebp - 0x49c]
00658c9b push eax
00658c9c lea eax, [ebp - 0x360]
00658ca2 push eax
00658ca3 lea ecx, [ebp - 0x410]
00658ca9 call 0xa10420
00658cae lea ecx, [ebp - 0x37c]
00658cb4 push ecx
00658cb5 mov ecx, eax
00658cb7 call 0xa10030
00658cbc lea ecx, [edi + 0x360]
00658cc2 mov esi, eax
00658cc4 call 0xa0fea0
00658cc9 lea eax, [ebp - 0x33c]
00658ccf mov ecx, esi
00658cd1 push eax
00658cd2 lea eax, [ebp - 0x3a8]
00658cd8 push eax
00658cd9 fstp dword ptr [ebp - 0x33c]
00658cdf call 0xa104e0
00658ce4 push eax
00658ce5 lea ecx, [edi + 0x360]
00658ceb call 0x7dd3b0
00658cf0 mov ecx, dword ptr [edi + 0x3bc]
00658cf6 lea eax, [ebp - 0x398]
00658cfc push eax
00658cfd call 0x4172d0
00658d02 push eax
00658d03 lea ecx, [edi + 0x360]
00658d09 call 0xa10450
00658d0e mov ecx, dword ptr [edi + 0x3bc]
00658d14 lea eax, [ebp - 0x3f8]
00658d1a push eax
00658d1b call 0x4172d0
00658d20 push eax
00658d21 lea ecx, [edi + 0x468]
00658d27 call 0x7dd3b0
00658d2c mov ecx, dword ptr [edi + 0x3bc]
00658d32 lea eax, [ebp - 0x4f8]
00658d38 push eax
00658d39 call 0x417290
00658d3e push eax
00658d3f lea ecx, [edi + 0x334]
00658d45 call 0x7dd3b0
00658d4a jmp 0x658e96
00658d4f lea eax, [edi + 0x334]
00658d55 push eax
00658d56 lea eax, [ebp - 0x3d4]
00658d5c lea ecx, [edi + 0x33c]
00658d62 push eax
00658d63 call 0xa10480
00658d68 movss xmm1, dword ptr [ebp - 0x3d0]
00658d70 lea ecx, [ebp - 0x418]
00658d76 xorps xmm1, xmmword ptr [0xbacb70]
00658d7d movss xmm2, dword ptr [ebp - 0x3d4]
00658d85 call 0xa0fe90
00658d8a mov eax, dword ptr [edi + 0x438]
00658d90 and eax, 0x1000
00658d95 or eax, 0
00658d98 je 0x658db8
00658d9a lea eax, [ebp - 0x4f8]
00658da0 push eax
00658da1 lea ecx, [ebp - 0x418]
00658da7 call 0xa10660
00658dac push eax
00658dad lea ecx, [ebp - 0x418]
00658db3 call 0x7dd3b0
00658db8 movss xmm0, dword ptr [edi + 0x430]
00658dc0 lea ecx, [ebp - 0x3d4]
00658dc6 comiss xmm0, dword ptr [0xba9fe4]
00658dcd jbe 0x658e1f
00658dcf call 0xa0fea0
00658dd4 fdiv dword ptr [edi + 0x430]
00658dda fld1 
00658ddc movss xmm1, dword ptr [0xbaa454]
00658de4 fsubrp st(1)
00658de6 movss xmm0, dword ptr [0xbaad50]
00658dee fstp dword ptr [ebp - 0x33c]
00658df4 movss xmm2, dword ptr [ebp - 0x33c]
00658dfc call 0x42f2a0
00658e01 mulss xmm0, dword ptr [0xbaa2d0]
00658e09 lea eax, [ebp - 0x344]
00658e0f lea ecx, [ebp - 0x3d4]
00658e15 movss dword ptr [ebp - 0x344], xmm0
00658e1d jmp 0x658e2f
00658e1f mov dword ptr [ebp - 0x33c], 0x3f000000
00658e29 lea eax, [ebp - 0x33c]
00658e2f push eax
00658e30 call 0xa10540
00658e35 lea eax, [ebp - 0x418]
00658e3b push eax
00658e3c lea eax, [ebp - 0x550]
00658e42 push eax
00658e43 lea ecx, [ebp - 0x3d4]
00658e49 call 0xa10420
00658e4e lea ecx, [ebp - 0x540]
00658e54 push ecx
00658e55 mov ecx, eax
00658e57 call 0xa10030
00658e5c lea ecx, [edi + 0x360]
00658e62 mov esi, eax
00658e64 call 0xa0fea0
00658e69 lea eax, [ebp - 0x4c0]
00658e6f mov ecx, esi
00658e71 push eax
00658e72 lea eax, [ebp - 0x530]
00658e78 push eax
00658e79 fstp dword ptr [ebp - 0x4c0]
00658e7f call 0xa104e0
00658e84 push eax
00658e85 lea ecx, [edi + 0x360]
00658e8b call 0x7dd3b0