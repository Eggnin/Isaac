0078383c movaps xmm0, xmm1
0078383f addss xmm0, dword ptr [edi + 0x1f88]
00783847 comiss xmm0, xmm2
0078384a movss dword ptr [edi + 0x1f88], xmm0
00783852 jb 0x783877
00783854 comiss xmm1, xmm2
00783857 mov dword ptr [edi + 0x1f88], 0
00783861 jbe 0x783877
00783863 comiss xmm3, xmm1
00783866 jbe 0x78386d
00783868 xorps xmm1, xmm1
0078386b jmp 0x78387b
0078386d mulss xmm1, dword ptr [0xbaad28]
00783875 jmp 0x78387b
00783877 addss xmm1, xmm4
0078387b movss dword ptr [edi + 0x1f8c], xmm1
00783883 push 0
00783885 push 0x4000
0078388a mov ecx, edi
0078388c call 0x417430
00783891 test al, al
00783893 jne 0x783ec5
00783899 lea ecx, [ebp - 0x64]
0078389c call 0x435c70
007838a1 push 0
007838a3 push 0x278
007838a8 mov ecx, edi
007838aa call 0x7706e0
007838af test al, al
007838b1 jne 0x7838cc
007838b3 lea ecx, [edi + 0x1508]
007838b9 push 0x278
007838be call 0x9305f0
007838c3 test al, al
007838c5 jne 0x7838cc
007838c7 mov eax, dword ptr [edi + 0x1c]
007838ca jmp 0x7838d9
007838cc mov eax, dword ptr [edi + 0x1c]
007838cf and dword ptr [edi + 0x18], 0xffff7fff
007838d6 mov dword ptr [edi + 0x1c], eax
007838d9 mov ecx, dword ptr [edi + 0x18]
007838dc and ecx, 0x8000
007838e2 mov dword ptr [ebp - 0x164], eax
007838e8 or ecx, 0
007838eb je 0x783a82
007838f1 lea eax, [ebp - 0x124]
007838f7 mov byte ptr [ebp - 0x13c], 0
007838fe lea esi, [edi + 8]
00783901 push eax
00783902 mov ecx, esi
00783904 call 0x4561a0
00783909 lea eax, [ebp - 0x11c]
0078390f mov ecx, esi
00783911 push eax
00783912 call 0x456190
00783917 push eax
00783918 lea ecx, [ebp - 0x124]
0078391e call 0x42c710
00783923 test al, al
00783925 je 0x783a05
0078392b mov edi, 1
00783930 lea ecx, [ebp - 0x124]
00783936 call 0x40c3a0
0078393b movss xmm0, dword ptr [eax]
0078393f ucomiss xmm0, dword ptr [0xba9fe4]
00783946 lahf 
00783947 test ah, 0x44
0078394a jp 0x7839d2
00783950 lea ecx, [ebp - 0x124]
00783956 call 0x40c3a0
0078395b mov eax, dword ptr [eax + 8]
0078395e and eax, 0x8000
00783963 or eax, 0
00783966 je 0x7839d2
00783968 lea ecx, [ebp - 0x124]
0078396e call 0x40c3a0
00783973 cmp dword ptr [eax + 0x10], 0
00783977 je 0x783990
00783979 lea ecx, [ebp - 0x124]
0078397f call 0x40c3a0
00783984 add eax, 0x10
00783987 lea ecx, [ebp - 0x64]
0078398a push eax
0078398b call 0x499960
00783990 lea ecx, [ebp - 0x124]
00783996 call 0x40c3a0
0078399b mov ecx, dword ptr [ebp - 0x13c]
007839a1 push dword ptr [ebp - 0x124]
007839a7 movzx ecx, cl
007839aa cmp dword ptr [eax + 0x18], 0x3b6
007839b1 lea eax, [ebp - 0x134]
007839b7 push eax
007839b8 cmove ecx, edi
007839bb mov dword ptr [ebp - 0x13c], ecx
007839c1 mov ecx, esi
007839c3 call 0x499290
007839c8 mov eax, dword ptr [eax]
007839ca mov dword ptr [ebp - 0x124], eax
007839d0 jmp 0x7839dd
007839d2 lea ecx, [ebp - 0x124]
007839d8 call 0x4a11b0
007839dd lea eax, [ebp - 0x11c]
007839e3 mov ecx, esi
007839e5 push eax
007839e6 call 0x456190
007839eb push eax
007839ec lea ecx, [ebp - 0x124]
007839f2 call 0x42c710
007839f7 test al, al
007839f9 jne 0x783930
007839ff mov edi, dword ptr [ebp - 0x130]
00783a05 and dword ptr [edi + 0x18], 0xffff7fff
00783a0c inc dword ptr [edi + 0x1ea8]
00783a12 cmp byte ptr [ebp - 0x13c], 0
00783a19 mov eax, dword ptr [edi + 0x1c]
00783a1c mov dword ptr [edi + 0x1c], eax
00783a1f jne 0x783abb
00783a25 push 0
00783a27 push 0x40
00783a29 mov ecx, edi
00783a2b call 0x4173e0
00783a30 mov ecx, dword ptr [0xc7169c]
00783a36 call 0x420af0
00783a3b push 0x24e
00783a40 mov ecx, eax
00783a42 call 0x92e560
00783a47 test al, al
00783a49 jne 0x783abb
00783a4b mov ecx, dword ptr [0xc7169c]
00783a51 call 0x420af0
00783a56 sub esp, 8
00783a59 mov dword ptr [esp + 4], 0
00783a61 mov dword ptr [esp], 0x3f800000
00783a68 push 0
00783a6a push 1
00783a6c push ecx
00783a6d mov dword ptr [esp], 0x3f800000
00783a74 mov ecx, eax
00783a76 push 0x24e
00783a7b call 0x92dc30
00783a80 jmp 0x783abb
00783a82 cmp dword ptr [edi + 0x1ea8], 0
00783a89 jle 0x783abb
00783a8b push 0
00783a8d push 3
00783a8f mov ecx, edi
00783a91 call 0x6ac710
00783a96 test al, al
00783a98 je 0x783abb
00783a9a mov ecx, dword ptr [0xc7169c]
00783aa0 mov dword ptr [edi + 0x1ea8], 0
00783aaa call 0x420af0
00783aaf push 0x24e
00783ab4 mov ecx, eax
00783ab6 call 0x92e230
00783abb mov eax, dword ptr [edi + 0x1ea8]
00783ac1 test eax, eax
00783ac3 jle 0x783e13
00783ac9 cmp byte ptr [edi + 0x173], 0
00783ad0 jne 0x783e13
00783ad6 movd xmm0, eax
00783ada lea edx, [ebp - 0x148]
00783ae0 cvtdq2ps xmm0, xmm0
00783ae3 lea ecx, [ebp - 0x15c]
00783ae9 mov dword ptr [ebp - 0x148], 0x3f800000
00783af3 divss xmm0, dword ptr [0xbaa8d0]
00783afb movss dword ptr [ebp - 0x15c], xmm0
00783b03 call 0x40c780
00783b08 push 0
00783b0a push 0x40
00783b0c mov ecx, edi
00783b0e movss xmm0, dword ptr [eax]
00783b12 movss dword ptr [ebp - 0x144], xmm0
00783b1a call 0x417430
00783b1f mov ecx, dword ptr [edi]
00783b21 xorps xmm1, xmm1
00783b24 movss xmm0, dword ptr [ebp - 0x144]
00783b2c mov esi, dword ptr [ecx + 0x3c]
00783b2f test al, al
00783b31 je 0x783bfb
00783b37 movss xmm2, dword ptr [0xbaa2d0]
00783b3f push ecx
00783b40 xor cl, cl
00783b42 mov dword ptr [esp], 0
00783b49 call 0xa155c0
00783b4e sub esp, 0x1c
00783b51 lea ecx, [ebp - 0x94]
00783b57 movss dword ptr [esp + 0x18], xmm0
00783b5d movss xmm0, dword ptr [ebp - 0x144]
00783b65 mov dword ptr [esp + 0x14], 0
00783b6d movss dword ptr [esp + 0x10], xmm0
00783b73 movss xmm0, dword ptr [0xbaa454]
00783b7b mov dword ptr [esp + 0xc], 0
00783b83 movaps xmm3, xmm0
00783b86 mov dword ptr [esp + 8], 0x3f800000
00783b8e movaps xmm2, xmm0
00783b91 mov dword ptr [esp + 4], 0
00783b99 movaps xmm1, xmm0
00783b9c mov dword ptr [esp], 0x3f800000
00783ba3 call 0x435b50
00783ba8 push 1
00783baa push 0
00783bac push 0
00783bae push 2
00783bb0 push eax
00783bb1 mov ecx, edi
00783bb3 call esi
00783bb5 cmp dword ptr [edi + 0x1ea8], 0x14
00783bbc jle 0x783d52
00783bc2 push 0
00783bc4 push 2
00783bc6 mov ecx, edi
00783bc8 call 0x6ac710
00783bcd test al, al
00783bcf je 0x783d52
00783bd5 sub esp, 0x20
00783bd8 lea ecx, [ebp - 0xec]
00783bde mov dword ptr [esp + 0x1c], 0
00783be6 mov dword ptr [esp + 0x18], 0x3f800000
00783bee mov dword ptr [esp + 0x14], 0
00783bf6 jmp 0x783d03
00783bfb movss xmm2, dword ptr [0xbaa198]
00783c03 xor cl, cl
00783c05 call 0xa155c0
00783c0a movss xmm2, dword ptr [0xbaa2d0]
00783c12 xor cl, cl
00783c14 movss dword ptr [ebp - 0x148], xmm0
00783c1c xorps xmm1, xmm1
00783c1f movss xmm0, dword ptr [ebp - 0x144]
00783c27 call 0xa155c0
00783c2c movss xmm2, dword ptr [0xbaa2d0]
00783c34 xor cl, cl
00783c36 movss dword ptr [ebp - 0x15c], xmm0
00783c3e xorps xmm1, xmm1
00783c41 movss xmm0, dword ptr [ebp - 0x144]
00783c49 call 0xa155c0
00783c4e movss xmm1, dword ptr [ebp - 0x148]
00783c56 lea ecx, [ebp - 0x3c]
00783c59 sub esp, 0x20
00783c5c movss dword ptr [esp + 0x1c], xmm1
00783c62 movss xmm1, dword ptr [ebp - 0x15c]
00783c6a movss dword ptr [esp + 0x18], xmm1
00783c70 movss dword ptr [esp + 0x14], xmm0
00783c76 movss xmm0, dword ptr [ebp - 0x144]
00783c7e movss dword ptr [esp + 0x10], xmm0
00783c84 movss xmm0, dword ptr [0xbaa454]
00783c8c mov dword ptr [esp + 0xc], 0x3f4ccccd
00783c94 movaps xmm3, xmm0
00783c97 mov dword ptr [esp + 8], 0x3fcccccd
00783c9f movaps xmm2, xmm0
00783ca2 mov dword ptr [esp + 4], 0x3fcccccd
00783caa movaps xmm1, xmm0
00783cad mov dword ptr [esp], 0x3f800000
00783cb4 call 0x435b50
00783cb9 push 1
00783cbb push 0
00783cbd push 0
00783cbf push 2
00783cc1 push eax
00783cc2 mov ecx, edi
00783cc4 call esi
00783cc6 cmp dword ptr [edi + 0x1ea8], 0x14
00783ccd jle 0x783d52
00783cd3 push 0
00783cd5 push 2
00783cd7 mov ecx, edi
00783cd9 call 0x6ac710
00783cde test al, al
00783ce0 je 0x783d52
00783ce2 sub esp, 0x20
00783ce5 lea ecx, [ebp - 0x118]
00783ceb mov dword ptr [esp + 0x1c], 0x3f19999a
00783cf3 mov dword ptr [esp + 0x18], 0x3f800000
00783cfb mov dword ptr [esp + 0x14], 0x3f800000
00783d03 mov eax, dword ptr [edi]
00783d05 movss xmm0, dword ptr [0xbaa454]
00783d0d mov dword ptr [esp + 0x10], 0
00783d15 movaps xmm3, xmm0
00783d18 mov dword ptr [esp + 0xc], 0
00783d20 movaps xmm2, xmm0
00783d23 mov esi, dword ptr [eax + 0x3c]
00783d26 movaps xmm1, xmm0
00783d29 mov dword ptr [esp + 8], 0
00783d31 mov dword ptr [esp + 4], 0
00783d39 mov dword ptr [esp], 0x3f800000
00783d40 call 0x435b50
00783d45 push 1
00783d47 push 1
00783d49 push -1
00783d4b push 3
00783d4d push eax
00783d4e mov ecx, edi
00783d50 call esi
00783d52 mov eax, dword ptr [edi + 0x1ea8]
00783d58 cmp eax, 0x1e
00783d5b jle 0x783e13
00783d61 push 0
00783d63 add eax, -0x1e
00783d66 mov dword ptr [edi + 0x13bc], 0
00783d70 push 0x40
00783d72 mov ecx, edi
00783d74 mov dword ptr [edi + 0x1ea8], eax
00783d7a call 0x417430
00783d7f test al, al
00783d81 je 0x783dbe
00783d83 mov eax, dword ptr [edi]
00783d85 lea ecx, [ebp - 0x64]
00783d88 push 0x1e
00783d8a push ecx
00783d8b push 0
00783d8d push 0
00783d8f push ecx
00783d90 mov ecx, edi
00783d92 mov dword ptr [esp], 0x3f800000
00783d99 call dword ptr [eax + 0x20]
00783d9c movss xmm2, dword ptr [0xbaa454]
00783da4 push ecx
00783da5 mov dword ptr [esp], 0x3f800000
00783dac mov ecx, edi
00783dae push 0
00783db0 push 2
00783db2 push 0x24f
00783db7 call 0x6b6470
00783dbc jmp 0x783e13
00783dbe call 0x6eef60
00783dc3 mov ecx, dword ptr [0xc71678]
00783dc9 push eax
00783dca push 0
00783dcc push 0
00783dce push 0xc7b640
00783dd3 lea eax, [edi + 0x33c]
00783dd9 push eax
00783dda push 0x13
00783ddc push 0x3e8
00783de1 call 0x428b20
00783de6 push dword ptr [ebp - 0x5c]
00783de9 mov esi, eax
00783deb mov ecx, esi
00783ded call 0x4316b0
00783df2 push dword ptr [ebp - 0x58]
00783df5 mov ecx, esi
00783df7 call 0x4b7070
00783dfc mov ecx, esi
00783dfe call 0x435dd0
00783e03 push 3
00783e05 mov ecx, eax
00783e07 call 0x40a720
00783e0c mov eax, dword ptr [esi]
00783e0e mov ecx, esi
00783e10 call dword ptr [eax + 0xc]