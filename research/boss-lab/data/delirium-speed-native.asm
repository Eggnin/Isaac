004a9860 push ebp
004a9861 mov ebp, esp
004a9863 sub esp, 0x4c
004a9866 push ebx
004a9867 push esi
004a9868 push edi
004a9869 mov edi, ecx
004a986b xorps xmm0, xmm0
004a986e movss xmm1, dword ptr [edi + 0x380]
004a9876 ucomiss xmm1, xmm0
004a9879 movss dword ptr [ebp - 0x24], xmm1
004a987e lahf 
004a987f test ah, 0x44
004a9882 jnp 0x4aa8c3
004a9888 mov eax, dword ptr [edi + 0xbe0]
004a988e mov ebx, eax
004a9890 mov edx, dword ptr [edi + 0xbe4]
004a9896 mov ecx, ebx
004a9898 movss xmm2, dword ptr [edi + 0x384]
004a98a0 mov dword ptr [ebp - 0x30], eax
004a98a3 mov eax, edx
004a98a5 shrd ecx, eax, 7
004a98a9 mov eax, edx
004a98ab movss dword ptr [ebp - 0x20], xmm2
004a98b0 movzx esi, cl
004a98b3 mov ecx, ebx
004a98b5 shrd ebx, edx, 0x19
004a98b9 shrd ecx, eax, 0xf
004a98bd and ebx, 0x3ff
004a98c3 ucomiss xmm0, xmm2
004a98c6 mov dword ptr [ebp - 0x28], ecx
004a98c9 mov dword ptr [ebp - 4], ebx
004a98cc lahf 
004a98cd test ah, 0x44
004a98d0 jp 0x4a98ee
004a98d2 push 0xb81bd8
004a98d7 push 0x10
004a98d9 call 0xa112c0
004a98de movss xmm1, dword ptr [ebp - 0x24]
004a98e3 add esp, 8
004a98e6 movss xmm2, dword ptr [ebp - 0x20]
004a98eb xorps xmm0, xmm0
004a98ee subss xmm1, xmm0
004a98f2 subss xmm2, xmm0
004a98f6 divss xmm1, xmm2
004a98fa maxss xmm1, xmm0
004a98fe movss xmm0, dword ptr [0xbaa6fc]
004a9906 minss xmm1, dword ptr [0xbaa454]
004a990e mulss xmm1, xmm0
004a9912 subss xmm0, xmm1
004a9916 call 0xaefca0
004a991b movss xmm2, dword ptr [edi + 0x360]
004a9923 mov ecx, eax
004a9925 movss xmm3, dword ptr [edi + 0x364]
004a992d mov ebx, ecx
004a992f movss xmm4, dword ptr [0xbaa528]
004a9937 mov dword ptr [ebp - 0x18], ecx
004a993a lea eax, [ecx + 1]
004a993d movss dword ptr [ebp - 8], xmm2
004a9942 mov dword ptr [ebp - 0x14], eax
004a9945 mov eax, 3
004a994a mov edx, eax
004a994c movss dword ptr [ebp - 0xc], xmm3
004a9951 sub edx, ecx
004a9953 test esi, esi
004a9955 mov dword ptr [ebp - 0x1c], edx
004a9958 cmovne ebx, eax
004a995b lea eax, [esi - 1]
004a995e cmove eax, esi
004a9961 mov dword ptr [ebp - 0x2c], eax
004a9964 mov eax, dword ptr [edi + 0x28]
004a9967 cmp eax, 0x193
004a996c jg 0x4aa2d4
004a9972 je 0x4a9ac7
004a9978 sub eax, 0x13
004a997b cmp eax, 0xfe
004a9980 ja 0x4aa3d1
004a9986 movzx eax, byte ptr [eax + 0x4aa924]
004a998d jmp dword ptr [eax*4 + 0x4aa8cc]
004a9994 movd xmm0, ebx
004a9998 mov eax, ebx
004a999a cvtdq2pd xmm0, xmm0
004a999e shr eax, 0x1f
004a99a1 mulss xmm2, dword ptr [0xbaa27c]
004a99a9 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a99b2 mulss xmm3, dword ptr [0xbaa27c]
004a99ba cvtpd2ps xmm1, xmm0
004a99be divss xmm1, dword ptr [0xbaa6fc]
004a99c6 mulss xmm2, xmm1
004a99ca mulss xmm3, xmm1
004a99ce movss dword ptr [ebp - 8], xmm2
004a99d3 movss dword ptr [ebp - 0xc], xmm3
004a99d8 jmp 0x4aa3d1
004a99dd movd xmm0, ebx
004a99e1 mov eax, ebx
004a99e3 cvtdq2pd xmm0, xmm0
004a99e7 shr eax, 0x1f
004a99ea mulss xmm2, dword ptr [0xbaa1a0]
004a99f2 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a99fb mulss xmm3, dword ptr [0xbaa1a0]
004a9a03 cvtpd2ps xmm1, xmm0
004a9a07 divss xmm1, dword ptr [0xbaa6fc]
004a9a0f mulss xmm2, xmm1
004a9a13 mulss xmm3, xmm1
004a9a17 movss dword ptr [ebp - 8], xmm2
004a9a1c movss dword ptr [ebp - 0xc], xmm3
004a9a21 jmp 0x4aa3d1
004a9a26 cmp dword ptr [edi + 0x2c], 0
004a9a2a jne 0x4a9a36
004a9a2c movss xmm1, dword ptr [0xbaa4b0]
004a9a34 jmp 0x4a9a3e
004a9a36 movss xmm1, dword ptr [0xbaa630]
004a9a3e xorps xmm0, xmm0
004a9a41 mov eax, ebx
004a9a43 cvtsi2sd xmm0, ebx
004a9a47 shr eax, 0x1f
004a9a4a subss xmm1, dword ptr [0xbaa454]
004a9a52 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9a5b mulss xmm2, xmm1
004a9a5f cvtpd2ps xmm0, xmm0
004a9a63 mulss xmm3, xmm1
004a9a67 divss xmm0, dword ptr [0xbaa6fc]
004a9a6f mulss xmm2, xmm0
004a9a73 mulss xmm3, xmm0
004a9a77 movss dword ptr [ebp - 8], xmm2
004a9a7c movss dword ptr [ebp - 0xc], xmm3
004a9a81 jmp 0x4aa3d1
004a9a86 movd xmm0, ebx
004a9a8a mov eax, ebx
004a9a8c cvtdq2pd xmm0, xmm0
004a9a90 shr eax, 0x1f
004a9a93 mulss xmm2, xmm4
004a9a97 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9aa0 mulss xmm3, xmm4
004a9aa4 cvtpd2ps xmm0, xmm0
004a9aa8 divss xmm0, dword ptr [0xbaa6fc]
004a9ab0 mulss xmm2, xmm0
004a9ab4 mulss xmm3, xmm0
004a9ab8 movss dword ptr [ebp - 8], xmm2
004a9abd movss dword ptr [ebp - 0xc], xmm3
004a9ac2 jmp 0x4aa3d1
004a9ac7 movd xmm0, ebx
004a9acb mov eax, ebx
004a9acd cvtdq2pd xmm0, xmm0
004a9ad1 shr eax, 0x1f
004a9ad4 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9add cvtpd2ps xmm0, xmm0
004a9ae1 divss xmm0, dword ptr [0xbaa6fc]
004a9ae9 mulss xmm2, xmm0
004a9aed mulss xmm3, xmm0
004a9af1 movss dword ptr [ebp - 8], xmm2
004a9af6 movss dword ptr [ebp - 0xc], xmm3
004a9afb jmp 0x4aa3d1
004a9b00 cmp dword ptr [edi + 0x2c], 2
004a9b04 jne 0x4a9b10
004a9b06 movss xmm1, dword ptr [0xbaa490]
004a9b0e jmp 0x4a9b18
004a9b10 movss xmm1, dword ptr [0xbaa4b0]
004a9b18 xorps xmm0, xmm0
004a9b1b mov eax, ebx
004a9b1d cvtsi2sd xmm0, ebx
004a9b21 shr eax, 0x1f
004a9b24 subss xmm1, dword ptr [0xbaa454]
004a9b2c addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9b35 mulss xmm2, xmm1
004a9b39 cvtpd2ps xmm0, xmm0
004a9b3d mulss xmm3, xmm1
004a9b41 divss xmm0, dword ptr [0xbaa6fc]
004a9b49 mulss xmm2, xmm0
004a9b4d mulss xmm3, xmm0
004a9b51 movss dword ptr [ebp - 8], xmm2
004a9b56 movss dword ptr [ebp - 0xc], xmm3
004a9b5b jmp 0x4aa3d1
004a9b60 cmp dword ptr [edi + 0x2c], 1
004a9b64 mov esi, dword ptr [ebp - 4]
004a9b67 jne 0x4aa3d4
004a9b6d movd xmm0, ebx
004a9b71 mov eax, ebx
004a9b73 cvtdq2pd xmm0, xmm0
004a9b77 shr eax, 0x1f
004a9b7a addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9b83 cvtpd2ps xmm1, xmm0
004a9b87 divss xmm1, dword ptr [0xbaa6fc]
004a9b8f mulss xmm2, dword ptr [0xbaa27c]
004a9b97 mulss xmm3, dword ptr [0xbaa27c]
004a9b9f mulss xmm2, xmm1
004a9ba3 mulss xmm3, xmm1
004a9ba7 movss dword ptr [ebp - 8], xmm2
004a9bac movss dword ptr [ebp - 0xc], xmm3
004a9bb1 jmp 0x4aa3d4
004a9bb6 mov dword ptr [ebp - 0x18], 0
004a9bbd jmp 0x4aa3d1
004a9bc2 cmp dword ptr [edi + 0xb64], 6
004a9bc9 jne 0x4aa3d1
004a9bcf movss xmm2, dword ptr [edi + 0x384]
004a9bd7 xorps xmm0, xmm0
004a9bda movss xmm1, dword ptr [edi + 0x380]
004a9be2 ucomiss xmm0, xmm2
004a9be5 movss dword ptr [ebp - 0x20], xmm2
004a9bea movss dword ptr [ebp - 0x24], xmm1
004a9bef lahf 
004a9bf0 test ah, 0x44
004a9bf3 jp 0x4a9c11
004a9bf5 push 0xb81bd8
004a9bfa push 0x10
004a9bfc call 0xa112c0
004a9c01 movss xmm1, dword ptr [ebp - 0x24]
004a9c06 movss xmm2, dword ptr [ebp - 0x20]
004a9c0b xorps xmm0, xmm0
004a9c0e add esp, 8
004a9c11 subss xmm1, xmm0
004a9c15 subss xmm2, xmm0
004a9c19 divss xmm1, xmm2
004a9c1d maxss xmm1, xmm0
004a9c21 movss xmm0, dword ptr [0xbaa454]
004a9c29 minss xmm1, xmm0
004a9c2d jmp 0x4aa3bb
004a9c32 mov esi, dword ptr [ebp - 4]
004a9c35 mov eax, dword ptr [edi + 0xb64]
004a9c3b cmp esi, 0x1e
004a9c3e jae 0x4a9c51
004a9c40 cmp eax, 8
004a9c43 jne 0x4a9c5a
004a9c45 mov dword ptr [edi + 0xb64], 3
004a9c4f jmp 0x4a9c5a
004a9c51 cmp eax, 8
004a9c54 jne 0x4a9b6d
004a9c5a movss xmm2, dword ptr [edi + 0x384]
004a9c62 xorps xmm0, xmm0
004a9c65 movss xmm1, dword ptr [edi + 0x380]
004a9c6d ucomiss xmm0, xmm2
004a9c70 movss dword ptr [ebp - 0x24], xmm1
004a9c75 movss dword ptr [ebp - 0x20], xmm2
004a9c7a lahf 
004a9c7b test ah, 0x44
004a9c7e jp 0x4a9c9c
004a9c80 push 0xb81bd8
004a9c85 push 0x10
004a9c87 call 0xa112c0
004a9c8c movss xmm1, dword ptr [ebp - 0x24]
004a9c91 add esp, 8
004a9c94 movss xmm2, dword ptr [ebp - 0x20]
004a9c99 xorps xmm0, xmm0
004a9c9c subss xmm1, xmm0
004a9ca0 subss xmm2, xmm0
004a9ca4 divss xmm1, xmm2
004a9ca8 maxss xmm1, xmm0
004a9cac minss xmm1, dword ptr [0xbaa454]
004a9cb4 mulss xmm0, xmm1
004a9cb8 addss xmm0, dword ptr [0xbaa454]
004a9cc0 call 0xaefca0
004a9cc5 movss xmm2, dword ptr [ebp - 8]
004a9cca mov ecx, eax
004a9ccc movss xmm3, dword ptr [ebp - 0xc]
004a9cd1 mov ebx, ecx
004a9cd3 mov dword ptr [ebp - 0x18], ecx
004a9cd6 lea eax, [ecx + 1]
004a9cd9 mov dword ptr [ebp - 0x14], eax
004a9cdc jmp 0x4a9b6d
004a9ce1 cmp dword ptr [edi + 0x2c], 1
004a9ce5 mov esi, dword ptr [ebp - 4]
004a9ce8 jne 0x4aa3d4
004a9cee mov eax, dword ptr [edi + 0xb64]
004a9cf4 cmp esi, 0x1e
004a9cf7 jae 0x4a9d0f
004a9cf9 cmp eax, 9
004a9cfc je 0x4a9d03
004a9cfe cmp eax, 0xa
004a9d01 jne 0x4a9d1d
004a9d03 mov dword ptr [edi + 0xb64], 3
004a9d0d jmp 0x4a9d1d
004a9d0f cmp eax, 9
004a9d12 je 0x4a9d1d
004a9d14 cmp eax, 0xa
004a9d17 jne 0x4aa3d4
004a9d1d movss xmm2, dword ptr [edi + 0x384]
004a9d25 xorps xmm0, xmm0
004a9d28 movss xmm1, dword ptr [edi + 0x380]
004a9d30 ucomiss xmm0, xmm2
004a9d33 movss dword ptr [ebp - 0x24], xmm1
004a9d38 movss dword ptr [ebp - 0x20], xmm2
004a9d3d lahf 
004a9d3e test ah, 0x44
004a9d41 jp 0x4a9d5f
004a9d43 push 0xb81bd8
004a9d48 push 0x10
004a9d4a call 0xa112c0
004a9d4f movss xmm1, dword ptr [ebp - 0x24]
004a9d54 add esp, 8
004a9d57 movss xmm2, dword ptr [ebp - 0x20]
004a9d5c xorps xmm0, xmm0
004a9d5f subss xmm1, xmm0
004a9d63 subss xmm2, xmm0
004a9d67 divss xmm1, xmm2
004a9d6b maxss xmm1, xmm0
004a9d6f minss xmm1, dword ptr [0xbaa454]
004a9d77 mulss xmm0, xmm1
004a9d7b addss xmm0, dword ptr [0xbaa454]
004a9d83 call 0xaefca0
004a9d88 mov ecx, eax
004a9d8a mov dword ptr [ebp - 0x18], ecx
004a9d8d mov ebx, ecx
004a9d8f lea eax, [ecx + 1]
004a9d92 mov dword ptr [ebp - 0x14], eax
004a9d95 jmp 0x4aa3d4
004a9d9a movd xmm0, ebx
004a9d9e mov eax, ebx
004a9da0 cvtdq2pd xmm0, xmm0
004a9da4 shr eax, 0x1f
004a9da7 mulss xmm2, dword ptr [0xbaad50]
004a9daf addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9db8 mulss xmm3, dword ptr [0xbaad50]
004a9dc0 mov eax, dword ptr [edi + 0x334]
004a9dc6 mov dword ptr [edi + 0x33c], eax
004a9dcc mov eax, dword ptr [edi + 0x338]
004a9dd2 cvtpd2ps xmm1, xmm0
004a9dd6 mov dword ptr [edi + 0x340], eax
004a9ddc divss xmm1, dword ptr [0xbaa6fc]
004a9de4 mulss xmm2, xmm1
004a9de8 mulss xmm3, xmm1
004a9dec movss dword ptr [ebp - 8], xmm2
004a9df1 movss dword ptr [ebp - 0xc], xmm3
004a9df6 jmp 0x4aa3d1
004a9dfb movd xmm0, ebx
004a9dff mov eax, ebx
004a9e01 cvtdq2pd xmm0, xmm0
004a9e05 shr eax, 0x1f
004a9e08 mov dword ptr [ebp - 0x14], 2
004a9e0f mulss xmm2, dword ptr [0xbaa1a0]
004a9e17 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9e20 mulss xmm3, dword ptr [0xbaa1a0]
004a9e28 cvtpd2ps xmm1, xmm0
004a9e2c divss xmm1, dword ptr [0xbaa6fc]
004a9e34 mulss xmm2, xmm1
004a9e38 mulss xmm3, xmm1
004a9e3c movss dword ptr [ebp - 8], xmm2
004a9e41 movss dword ptr [ebp - 0xc], xmm3
004a9e46 jmp 0x4aa3d1
004a9e4b movd xmm0, ebx
004a9e4f mov eax, ebx
004a9e51 cvtdq2pd xmm0, xmm0
004a9e55 shr eax, 0x1f
004a9e58 mov dword ptr [ebp - 0x14], 1
004a9e5f mulss xmm2, dword ptr [0xbaa1a0]
004a9e67 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9e70 mulss xmm3, dword ptr [0xbaa1a0]
004a9e78 cvtpd2ps xmm1, xmm0
004a9e7c divss xmm1, dword ptr [0xbaa6fc]
004a9e84 mulss xmm2, xmm1
004a9e88 mulss xmm3, xmm1
004a9e8c movss dword ptr [ebp - 8], xmm2
004a9e91 movss dword ptr [ebp - 0xc], xmm3
004a9e96 jmp 0x4aa3d1
004a9e9b movss xmm2, dword ptr [edi + 0x384]
004a9ea3 xorps xmm0, xmm0
004a9ea6 movss xmm1, dword ptr [edi + 0x380]
004a9eae ucomiss xmm0, xmm2
004a9eb1 movss dword ptr [ebp - 0x24], xmm1
004a9eb6 movss dword ptr [ebp - 0x20], xmm2
004a9ebb lahf 
004a9ebc test ah, 0x44
004a9ebf jp 0x4a9edd
004a9ec1 push 0xb81bd8
004a9ec6 push 0x10
004a9ec8 call 0xa112c0
004a9ecd movss xmm1, dword ptr [ebp - 0x24]
004a9ed2 add esp, 8
004a9ed5 movss xmm2, dword ptr [ebp - 0x20]
004a9eda xorps xmm0, xmm0
004a9edd subss xmm1, xmm0
004a9ee1 subss xmm2, xmm0
004a9ee5 divss xmm1, xmm2
004a9ee9 maxss xmm1, xmm0
004a9eed movss xmm0, dword ptr [0xbaa630]
004a9ef5 minss xmm1, dword ptr [0xbaa454]
004a9efd addss xmm1, xmm1
004a9f01 subss xmm0, xmm1
004a9f05 call 0xaefca0
004a9f0a mov ecx, eax
004a9f0c movss xmm2, dword ptr [ebp - 8]
004a9f11 mulss xmm2, dword ptr [0xbaa304]
004a9f19 lea eax, [ecx + 1]
004a9f1c movd xmm0, ecx
004a9f20 mov dword ptr [ebp - 0x14], eax
004a9f23 mov eax, ecx
004a9f25 cvtdq2pd xmm0, xmm0
004a9f29 shr eax, 0x1f
004a9f2c addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004a9f35 cvtpd2ps xmm1, xmm0
004a9f39 divss xmm1, dword ptr [0xbaa6fc]
004a9f41 mulss xmm2, xmm1
004a9f45 movss dword ptr [ebp - 8], xmm2
004a9f4a movss xmm2, dword ptr [ebp - 0xc]
004a9f4f mulss xmm2, dword ptr [0xbaa304]
004a9f57 mulss xmm2, xmm1
004a9f5b movss dword ptr [ebp - 0xc], xmm2
004a9f60 jmp 0x4aa3cc
004a9f65 movd xmm0, ebx
004a9f69 cvtdq2pd xmm0, xmm0
004a9f6d shr ebx, 0x1f
004a9f70 cmp dword ptr [edi + 0xb64], 8
004a9f77 mulss xmm2, dword ptr [0xbaa1a0]
004a9f7f addsd xmm0, qword ptr [ebx*8 + 0xbacb00]
004a9f88 mulss xmm3, dword ptr [0xbaa1a0]
004a9f90 cvtpd2ps xmm1, xmm0
004a9f94 xorps xmm0, xmm0
004a9f97 divss xmm1, dword ptr [0xbaa6fc]
004a9f9f mulss xmm2, xmm1
004a9fa3 mulss xmm3, xmm1
004a9fa7 movss xmm1, dword ptr [edi + 0x380]
004a9faf movss dword ptr [ebp - 8], xmm2
004a9fb4 movss xmm2, dword ptr [edi + 0x384]
004a9fbc movss dword ptr [ebp - 0xc], xmm3
004a9fc1 movss dword ptr [ebp - 0x20], xmm1
004a9fc6 movss dword ptr [ebp - 0x18], xmm2
004a9fcb jne 0x4a9ff5
004a9fcd ucomiss xmm0, xmm2
004a9fd0 lahf 
004a9fd1 test ah, 0x44
004a9fd4 jp 0x4a9c11
004a9fda push 0xb81bd8
004a9fdf push 0x10
004a9fe1 call 0xa112c0
004a9fe6 movss xmm1, dword ptr [ebp - 0x20]
004a9feb movss xmm2, dword ptr [ebp - 0x18]
004a9ff0 jmp 0x4a9c0b
004a9ff5 ucomiss xmm0, xmm2
004a9ff8 lahf 
004a9ff9 test ah, 0x44
004a9ffc jp 0x4aa397
004aa002 push 0xb81bd8
004aa007 push 0x10
004aa009 call 0xa112c0
004aa00e movss xmm1, dword ptr [ebp - 0x20]
004aa013 movss xmm2, dword ptr [ebp - 0x18]
004aa018 jmp 0x4aa391
004aa01d mov ecx, dword ptr [edi + 0x2c]
004aa020 mov eax, ebx
004aa022 movd xmm0, ebx
004aa026 cvtdq2pd xmm0, xmm0
004aa02a shr eax, 0x1f
004aa02d addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004aa036 cvtpd2ps xmm1, xmm0
004aa03a divss xmm1, dword ptr [0xbaa6fc]
004aa042 cmp ecx, 0xa
004aa045 jne 0x4aa069
004aa047 xorps xmm0, xmm0
004aa04a mulss xmm2, xmm0
004aa04e mulss xmm3, xmm0
004aa052 mulss xmm2, xmm1
004aa056 mulss xmm3, xmm1
004aa05a movss dword ptr [ebp - 8], xmm2
004aa05f movss dword ptr [ebp - 0xc], xmm3
004aa064 jmp 0x4aa3d1
004aa069 mov esi, dword ptr [ebp - 4]
004aa06c cmp ecx, 1
004aa06f je 0x4a9b8f
004aa075 mulss xmm2, xmm4
004aa079 mulss xmm3, xmm4
004aa07d jmp 0x4a9b9f
004aa082 mov eax, dword ptr [edi + 0x380]
004aa088 mov dword ptr [edi + 0x384], eax
004aa08e movd xmm0, ebx
004aa092 mov eax, ebx
004aa094 cvtdq2pd xmm0, xmm0
004aa098 shr eax, 0x1f
004aa09b mulss xmm2, dword ptr [0xbaa304]
004aa0a3 addsd xmm0, qword ptr [eax*8 + 0xbacb00]
004aa0ac mulss xmm3, dword ptr [0xbaa304]
004aa0b4 cvtpd2ps xmm1, xmm0
004aa0b8 divss xmm1, dword ptr [0xbaa6fc]
004aa0c0 mulss xmm2, xmm1
004aa0c4 mulss xmm3, xmm1
004aa0c8 movss dword ptr [ebp - 8], xmm2
004aa0cd movss dword ptr [ebp - 0xc], xmm3
004aa0d2 jmp 0x4aa3d1
004aa0d7 mov esi, dword ptr [ebp - 4]
004aa0da cmp esi, 0x3c
004aa0dd jbe 0x4aa0f0
004aa0df mov ecx, edx
004aa0e1 call 0x67f010
004aa0e6 test eax, eax
004aa0e8 jne 0x4aa0f0
004aa0ea mov dword ptr [edi + 0xba0], eax
004aa0f0 movss xmm2, dword ptr [edi + 0x384]
004aa0f8 xorps xmm0, xmm0
004aa0fb movss xmm1, dword ptr [edi + 0x380]
004aa103 ucomiss xmm0, xmm2
004aa106 movss dword ptr [ebp - 0x24], xmm1
004aa10b movss dword ptr [ebp - 0x20], xmm2
004aa110 lahf 
004aa111 test ah, 0x44
004aa114 jp 0x4aa132
004aa116 push 0xb81bd8
004aa11b push 0x10
004aa11d call 0xa112c0
004aa122 movss xmm1, dword ptr [ebp - 0x24]
004aa127 add esp, 8
004aa12a movss xmm2, dword ptr [ebp - 0x20]
004aa12f xorps xmm0, xmm0
004aa132 subss xmm1, xmm0
004aa136 subss xmm2, xmm0
004aa13a divss xmm1, xmm2
004aa13e maxss xmm1, xmm0
004aa142 minss xmm1, dword ptr [0xbaa454]
004aa14a mulss xmm1, xmm0
004aa14e addss xmm0, xmm1
004aa152 jmp 0x4a9d83
004aa157 cmp dword ptr [edi + 0x2c], 0xa
004aa15b jne 0x4aa228
004aa161 mov ecx, edx
004aa163 call 0x67f010
004aa168 test eax, eax
004aa16a jne 0x4aa172
004aa16c mov dword ptr [edi + 0x410], eax
004aa172 movd xmm0, ebx
004aa176 cvtdq2pd xmm0, xmm0
004aa17a shr ebx, 0x1f
004aa17d movss xmm2, dword ptr [ebp - 8]
004aa182 addsd xmm0, qword ptr [ebx*8 + 0xbacb00]
004aa18b mulss xmm2, dword ptr [0xbaa1a0]
004aa193 cvtpd2ps xmm1, xmm0
004aa197 xorps xmm0, xmm0
004aa19a divss xmm1, dword ptr [0xbaa6fc]
004aa1a2 mulss xmm2, xmm1
004aa1a6 movss dword ptr [ebp - 8], xmm2
004aa1ab movss xmm2, dword ptr [ebp - 0xc]
004aa1b0 mulss xmm2, dword ptr [0xbaa1a0]
004aa1b8 mulss xmm2, xmm1
004aa1bc movss xmm1, dword ptr [edi + 0x380]
004aa1c4 movss dword ptr [ebp - 0x24], xmm1
004aa1c9 movss dword ptr [ebp - 0xc], xmm2
004aa1ce movss xmm2, dword ptr [edi + 0x384]
004aa1d6 ucomiss xmm0, xmm2
004aa1d9 movss dword ptr [ebp - 0x20], xmm2
004aa1de lahf 
004aa1df test ah, 0x44
004aa1e2 jp 0x4aa200
004aa1e4 push 0xb81bd8
004aa1e9 push 0x10
004aa1eb call 0xa112c0
004aa1f0 movss xmm1, dword ptr [ebp - 0x24]
004aa1f5 add esp, 8
004aa1f8 movss xmm2, dword ptr [ebp - 0x20]
004aa1fd xorps xmm0, xmm0
004aa200 subss xmm1, xmm0
004aa204 subss xmm2, xmm0
004aa208 divss xmm1, xmm2
004aa20c maxss xmm1, xmm0
004aa210 minss xmm1, dword ptr [0xbaa454]
004aa218 mulss xmm1, xmm0
004aa21c addss xmm1, xmm0
004aa220 movaps xmm0, xmm1
004aa223 jmp 0x4aa3bf
004aa228 movd xmm0, ebx
004aa22c xorps xmm1, xmm1
004aa22f cvtdq2pd xmm0, xmm0
004aa233 shr ebx, 0x1f
004aa236 mulss xmm2, xmm1
004aa23a addsd xmm0, qword ptr [ebx*8 + 0xbacb00]
004aa243 mulss xmm3, xmm1
004aa247 cvtpd2ps xmm0, xmm0
004aa24b divss xmm0, dword ptr [0xbaa6fc]
004aa253 mulss xmm2, xmm0
004aa257 mulss xmm3, xmm0
004aa25b movss xmm0, dword ptr [edi + 0x380]
004aa263 movss dword ptr [ebp - 8], xmm2
004aa268 movss xmm2, dword ptr [edi + 0x384]
004aa270 ucomiss xmm1, xmm2
004aa273 movss dword ptr [ebp - 0xc], xmm3
004aa278 movss dword ptr [ebp - 0x24], xmm0
004aa27d lahf 
004aa27e movss dword ptr [ebp - 0x20], xmm2
004aa283 test ah, 0x44
004aa286 jp 0x4aa2a4
004aa288 push 0xb81bd8
004aa28d push 0x10
004aa28f call 0xa112c0
004aa294 movss xmm0, dword ptr [ebp - 0x24]
004aa299 add esp, 8
004aa29c movss xmm2, dword ptr [ebp - 0x20]
004aa2a1 xorps xmm1, xmm1
004aa2a4 subss xmm0, xmm1
004aa2a8 subss xmm2, xmm1
004aa2ac divss xmm0, xmm2
004aa2b0 maxss xmm0, xmm1
004aa2b4 movss xmm1, dword ptr [0xbaa6fc]
004aa2bc minss xmm0, dword ptr [0xbaa454]
004aa2c4 mulss xmm0, xmm1
004aa2c8 subss xmm1, xmm0
004aa2cc movaps xmm0, xmm1
004aa2cf jmp 0x4aa3bf
004aa2d4 sub eax, 0x194
004aa2d9 cmp eax, 6
004aa2dc ja 0x4aa3d1
004aa2e2 jmp dword ptr [eax*4 + 0x4aaa24]
004aa2e9 movd xmm0, ebx
004aa2ed cvtdq2pd xmm0, xmm0
004aa2f1 shr ebx, 0x1f
004aa2f4 addsd xmm0, qword ptr [ebx*8 + 0xbacb00]
004aa2fd cvtpd2ps xmm0, xmm0
004aa301 divss xmm0, dword ptr [0xbaa6fc]
004aa309 mulss xmm2, xmm0
004aa30d mulss xmm3, xmm0
004aa311 jmp 0x4aa34b
004aa313 movd xmm0, ebx
004aa317 cvtdq2pd xmm0, xmm0
004aa31b shr ebx, 0x1f
004aa31e mulss xmm2, dword ptr [0xbaa304]
004aa326 addsd xmm0, qword ptr [ebx*8 + 0xbacb00]
004aa32f mulss xmm3, dword ptr [0xbaa304]
004aa337 cvtpd2ps xmm1, xmm0
004aa33b divss xmm1, dword ptr [0xbaa6fc]
004aa343 mulss xmm2, xmm1
004aa347 mulss xmm3, xmm1
004aa34b movss xmm1, dword ptr [edi + 0x380]
004aa353 xorps xmm0, xmm0
004aa356 movss dword ptr [ebp - 8], xmm2
004aa35b movss xmm2, dword ptr [edi + 0x384]
004aa363 ucomiss xmm0, xmm2
004aa366 movss dword ptr [ebp - 0x20], xmm2
004aa36b movss dword ptr [ebp - 0x24], xmm1
004aa370 lahf 
004aa371 movss dword ptr [ebp - 0xc], xmm3
004aa376 test ah, 0x44
004aa379 jp 0x4aa397
004aa37b push 0xb81bd8
004aa380 push 0x10
004aa382 call 0xa112c0
004aa387 movss xmm2, dword ptr [ebp - 0x20]
004aa38c movss xmm1, dword ptr [ebp - 0x24]
004aa391 add esp, 8
004aa394 xorps xmm0, xmm0
004aa397 subss xmm1, xmm0
004aa39b subss xmm2, xmm0
004aa39f divss xmm1, xmm2
004aa3a3 maxss xmm1, xmm0
004aa3a7 movss xmm0, dword ptr [0xbaa630]
004aa3af minss xmm1, dword ptr [0xbaa454]
004aa3b7 addss xmm1, xmm1
004aa3bb subss xmm0, xmm1
004aa3bf call 0xaefca0
004aa3c4 mov ecx, eax
004aa3c6 lea eax, [ecx + 1]
004aa3c9 mov dword ptr [ebp - 0x14], eax
004aa3cc mov ebx, ecx
004aa3ce mov dword ptr [ebp - 0x18], ecx
004aa3d1 mov esi, dword ptr [ebp - 4]
004aa3d4 lea eax, [ebx*4]
004aa3db cmp esi, eax
004aa3dd ja 0x4aa406
004aa3df cmp byte ptr [edi + 0x151], 0
004aa3e6 je 0x4aa8c3
004aa3ec lea ecx, [edi + 0x78]
004aa3ef call 0x409030
004aa3f4 lea ecx, [edi + 0x98]
004aa3fa call 0x409030
004aa3ff pop edi
004aa400 pop esi
004aa401 pop ebx
004aa402 mov esp, ebp
004aa404 pop ebp
004aa405 ret 
004aa406 movsd xmm0, qword ptr [0xbaa6c0]
004aa40e xor ecx, ecx
004aa410 movsd xmm1, qword ptr [0xbaa658]
004aa418 movsd xmm2, qword ptr [0xbaa5a0]
004aa420 mov dword ptr [ebp - 0x10], ecx
004aa423 movsd qword ptr [ebp - 0x38], xmm0
004aa428 movsd qword ptr [ebp - 0x40], xmm1
004aa42d movsd qword ptr [ebp - 0x48], xmm2
004aa432 mov eax, dword ptr [edi + 0x28]
004aa435 add eax, -0x14
004aa438 cmp eax, 0x36
004aa43b ja 0x4aa810
004aa441 movzx eax, byte ptr [eax + 0x4aaa5c]
004aa448 jmp dword ptr [eax*4 + 0x4aaa40]
004aa44f cmp dword ptr [edi + 0xb64], 3
004aa456 jne 0x4aa810
004aa45c mov esi, dword ptr [ebp - 0x1c]
004aa45f test esi, esi
004aa461 je 0x4aa474
004aa463 call 0x6eef60
004aa468 xor edx, edx
004aa46a div esi
004aa46c test edx, edx
004aa46e jne 0x4aa80d
004aa474 call 0x6eef60
004aa479 and eax, 1
004aa47c sub eax, 0
004aa47f je 0x4aa53b
004aa485 sub eax, 1
004aa488 jne 0x4aa80d
004aa48e movss xmm0, dword ptr [0xbaa454]
004aa496 mov eax, dword ptr [edi + 0xc64]
004aa49c mov dword ptr [edi + 0xb64], 6
004aa4a6 movss dword ptr [ebp - 0x20], xmm0
004aa4ab cmp eax, 0x12
004aa4ae jne 0x4aa4ba
004aa4b0 movss xmm0, dword ptr [0xbaa528]
004aa4b8 jmp 0x4aa4c7
004aa4ba cmp eax, 0x13
004aa4bd jne 0x4aa4cc
004aa4bf movss xmm0, dword ptr [0xbaa2d0]
004aa4c7 movss dword ptr [ebp - 0x20], xmm0
004aa4cc mov esi, dword ptr [0xc7169c]
004aa4d2 lea ecx, [ebp - 0x24]
004aa4d5 mov dword ptr [ebp - 0x24], 0xe
004aa4dc call 0x956780
004aa4e1 movss xmm0, dword ptr [ebp - 0x20]
004aa4e6 sub esp, 8
004aa4e9 mov dword ptr [esp + 4], 0
004aa4f1 movss dword ptr [esp], xmm0
004aa4f6 push 0
004aa4f8 push 2
004aa4fa push ecx
004aa4fb mov dword ptr [esp], 0x3f800000
004aa502 lea ecx, [esi + 0x2a324]
004aa508 push dword ptr [ebp - 0x24]
004aa50b call 0x92dc30
004aa510 push 1
004aa512 push 0xb1e0e4
004aa517 lea ecx, [edi + 0x48]
004aa51a call 0x40a5d0
004aa51f test al, al
004aa521 je 0x4aa80d
004aa527 lea ecx, [edi + 0x78]
004aa52a call 0x40a1b0
004aa52f mov byte ptr [edi + 0x8c], 1
004aa536 jmp 0x4aa80d
004aa53b push 1
004aa53d mov dword ptr [edi + 0xb64], 8
004aa547 push 0xb1e0dc
004aa54c jmp 0x4aa517
004aa54e cmp dword ptr [edi + 0xb64], 0x10
004aa555 jne 0x4aa810
004aa55b mov dword ptr [edi + 0xb64], 3
004aa565 jmp 0x4aa810
004aa56a cmp dword ptr [edi + 0x2c], 0
004aa56e jne 0x4aa810
004aa574 cmp dword ptr [edi + 0xb64], 4
004aa57b jne 0x4aa810
004aa581 mov esi, dword ptr [ebp - 0x1c]
004aa584 test esi, esi
004aa586 je 0x4aa59c
004aa588 call 0x6eef60
004aa58d xor edx, edx
004aa58f mov ecx, dword ptr [ebp - 0x10]
004aa592 div esi
004aa594 test edx, edx
004aa596 jne 0x4aa810
004aa59c cmp dword ptr [edi + 0x410], 0
004aa5a3 jne 0x4aa810
004aa5a9 mov dword ptr [edi + 0xb64], 0xd
004aa5b3 jmp 0x4aa810
004aa5b8 cmp dword ptr [edi + 0xb64], 4
004aa5bf jne 0x4aa810
004aa5c5 mov eax, dword ptr [ebp - 0x1c]
004aa5c8 movd xmm1, eax
004aa5cc cvtdq2pd xmm1, xmm1
004aa5d0 shr eax, 0x1f
004aa5d3 addsd xmm1, qword ptr [eax*8 + 0xbacb00]
004aa5dc call 0xaf08ff
004aa5e1 cvttsd2si esi, xmm0
004aa5e5 test esi, esi
004aa5e7 je 0x4aa5fa
004aa5e9 call 0x6eef60
004aa5ee xor edx, edx
004aa5f0 div esi
004aa5f2 test edx, edx
004aa5f4 jne 0x4aa80d
004aa5fa call 0x6eef60
004aa5ff mov dword ptr [edi + 0x410], 0
004aa609 mov ecx, dword ptr [edi + 0xbc0]
004aa60f push 1
004aa611 and eax, 1
004aa614 jne 0x4aa635
004aa616 test ecx, ecx
004aa618 mov dword ptr [edi + 0xb64], 0xd
004aa622 mov eax, 0xb1d2ec
004aa627 mov ecx, 0xb1dd08
004aa62c cmovne eax, ecx
004aa62f push eax
004aa630 jmp 0x4aa517
004aa635 test ecx, ecx
004aa637 mov dword ptr [edi + 0xb64], 8
004aa641 mov eax, 0xb1d2cc
004aa646 mov ecx, 0xb1dcf8
004aa64b cmovne eax, ecx
004aa64e push eax
004aa64f jmp 0x4aa517
004aa654 cmp dword ptr [edi + 0xb64], 4
004aa65b jne 0x4aa810
004aa661 cmp dword ptr [edi + 0x2c], 0xa
004aa665 je 0x4aa810
004aa66b mov eax, dword ptr [ebp - 0x1c]
004aa66e movd xmm1, eax
004aa672 cvtdq2pd xmm1, xmm1
004aa676 shr eax, 0x1f
004aa679 addsd xmm1, qword ptr [eax*8 + 0xbacb00]
004aa682 call 0xaf08ff
004aa687 cvttsd2si esi, xmm0
004aa68b test esi, esi
004aa68d je 0x4aa6a0
004aa68f call 0x6eef60
004aa694 xor edx, edx
004aa696 div esi
004aa698 test edx, edx
004aa69a jne 0x4aa80d
004aa6a0 call 0x6eef60
004aa6a5 test al, 1
004aa6a7 jne 0x4aa6c9
004aa6a9 push 1
004aa6ab mov dword ptr [edi + 0xb64], 8
004aa6b5 mov dword ptr [edi + 0x410], 0
004aa6bf push 0xb1d2cc
004aa6c4 jmp 0x4aa517
004aa6c9 call 0x6eef60
004aa6ce movss xmm0, dword ptr [0xbaa454]
004aa6d6 and eax, 3
004aa6d9 mov ecx, dword ptr [edi + 0xc64]
004aa6df movss dword ptr [ebp - 0x20], xmm0
004aa6e4 cmp ecx, 0x12
004aa6e7 jne 0x4aa6f3
004aa6e9 movss xmm0, dword ptr [0xbaa528]
004aa6f1 jmp 0x4aa700
004aa6f3 cmp ecx, 0x13
004aa6f6 jne 0x4aa705
004aa6f8 movss xmm0, dword ptr [0xbaa2d0]
004aa700 movss dword ptr [ebp - 0x20], xmm0
004aa705 mov esi, dword ptr [0xc7169c]
004aa70b lea ecx, [ebp - 0x24]
004aa70e add eax, 0x73
004aa711 mov dword ptr [ebp - 0x24], eax
004aa714 call 0x956780
004aa719 movss xmm0, dword ptr [ebp - 0x20]
004aa71e sub esp, 8
004aa721 mov dword ptr [esp + 4], 0
004aa729 movss dword ptr [esp], xmm0
004aa72e push 0
004aa730 push 2
004aa732 push ecx
004aa733 mov dword ptr [esp], 0x3f800000
004aa73a lea ecx, [esi + 0x2a324]
004aa740 push dword ptr [ebp - 0x24]
004aa743 call 0x92dc30
004aa748 push 1
004aa74a mov dword ptr [edi + 0xb64], 6
004aa754 mov dword ptr [edi + 0x410], 0
004aa75e push 0xb1d2ec
004aa763 jmp 0x4aa517
004aa768 mov eax, dword ptr [edi + 0x2c]
004aa76b cmp eax, 0x1e
004aa76e jne 0x4aa773
004aa770 movaps xmm2, xmm1
004aa773 cmp dword ptr [edi + 0xb64], 4
004aa77a jne 0x4aa810
004aa780 cmp eax, 0xa
004aa783 je 0x4aa810
004aa789 mov eax, dword ptr [ebp - 0x1c]
004aa78c movd xmm1, eax
004aa790 cvtdq2pd xmm1, xmm1
004aa794 shr eax, 0x1f
004aa797 addsd xmm1, qword ptr [eax*8 + 0xbacb00]
004aa7a0 mulsd xmm1, xmm2
004aa7a4 call 0xaf08ff
004aa7a9 cvttsd2si esi, xmm0
004aa7ad test esi, esi
004aa7af je 0x4aa7be
004aa7b1 call 0x6eef60
004aa7b6 xor edx, edx
004aa7b8 div esi
004aa7ba test edx, edx
004aa7bc jne 0x4aa80d
004aa7be cmp dword ptr [edi + 0x2c], 0x1e
004aa7c2 je 0x4aa7f9
004aa7c4 call 0x6eef60
004aa7c9 xor edx, edx
004aa7cb mov ecx, 3
004aa7d0 div ecx
004aa7d2 sub edx, 0
004aa7d5 je 0x4aa7f9
004aa7d7 sub edx, 1
004aa7da je 0x4aa7ed
004aa7dc sub edx, 1
004aa7df jne 0x4aa803
004aa7e1 mov dword ptr [edi + 0xb64], 0xe
004aa7eb jmp 0x4aa803
004aa7ed mov dword ptr [edi + 0xb64], 8
004aa7f7 jmp 0x4aa803
004aa7f9 mov dword ptr [edi + 0xb64], 0xd
004aa803 mov dword ptr [edi + 0x410], 0
004aa80d mov ecx, dword ptr [ebp - 0x10]
004aa810 test ecx, ecx
004aa812 je 0x4aa862
004aa814 cmp ecx, dword ptr [ebp - 0x18]
004aa817 ja 0x4aa838
004aa819 cmp byte ptr [edi + 0x151], 0
004aa820 je 0x4aa838
004aa822 lea ecx, [edi + 0x78]
004aa825 call 0x409030
004aa82a lea ecx, [edi + 0x98]
004aa830 call 0x409030
004aa835 mov ecx, dword ptr [ebp - 0x10]
004aa838 movss xmm0, dword ptr [ebp - 8]
004aa83d addss xmm0, dword ptr [edi + 0x33c]
004aa845 movss dword ptr [edi + 0x33c], xmm0
004aa84d movss xmm0, dword ptr [ebp - 0xc]
004aa852 addss xmm0, dword ptr [edi + 0x340]
004aa85a movss dword ptr [edi + 0x340], xmm0
004aa862 cmp ecx, dword ptr [ebp - 0x14]
004aa865 jae 0x4aa871
004aa867 mov ecx, edi
004aa869 call 0x6c2990
004aa86e mov ecx, dword ptr [ebp - 0x10]
004aa871 movsd xmm0, qword ptr [ebp - 0x38]
004aa876 inc ecx
004aa877 movsd xmm1, qword ptr [ebp - 0x40]
004aa87c movsd xmm2, qword ptr [ebp - 0x48]
004aa881 mov dword ptr [ebp - 0x10], ecx
004aa884 cmp ecx, ebx
004aa886 jbe 0x4aa432
004aa88c mov ecx, dword ptr [ebp - 0x28]
004aa88f mov eax, dword ptr [ebp - 4]
004aa892 and ecx, 0x3ff
004aa898 shl eax, 0xa
004aa89b or ecx, eax
004aa89d mov dword ptr [edi + 0xbe4], 0
004aa8a7 mov eax, dword ptr [ebp - 0x2c]
004aa8aa shl ecx, 8
004aa8ad movzx eax, al
004aa8b0 or ecx, eax
004aa8b2 mov eax, dword ptr [ebp - 0x30]
004aa8b5 shl ecx, 7
004aa8b8 and eax, 0x7f
004aa8bb or ecx, eax
004aa8bd mov dword ptr [edi + 0xbe0], ecx
004aa8c3 pop edi
004aa8c4 pop esi
004aa8c5 pop ebx
004aa8c6 mov esp, ebp
004aa8c8 pop ebp
004aa8c9 ret 