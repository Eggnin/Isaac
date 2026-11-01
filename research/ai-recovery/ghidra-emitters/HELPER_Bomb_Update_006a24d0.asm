; J460 NPC AI 0x006a24d0 HELPER_Bomb_Update
; types=4
; identities=4.17.0
; entry=006a24d0
006a24d0  53                        PUSH EBX
006a24d1  8bdc                      MOV EBX,ESP
006a24d3  83ec08                    SUB ESP,0x8
006a24d6  83e4f8                    AND ESP,0xfffffff8
006a24d9  83c404                    ADD ESP,0x4
006a24dc  55                        PUSH EBP
006a24dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006a24e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006a24e4  8bec                      MOV EBP,ESP
006a24e6  6aff                      PUSH -0x1
006a24e8  6886a1af00                PUSH 0xafa186
006a24ed  64a100000000              MOV EAX,FS:[0x0]
006a24f3  50                        PUSH EAX
006a24f4  53                        PUSH EBX
006a24f5  81ecf0000000              SUB ESP,0xf0
006a24fb  a1b493bf00                MOV EAX,[0x00bf93b4]
006a2500  33c5                      XOR EAX,EBP
006a2502  8945ec                    MOV dword ptr [EBP + -0x14],EAX
006a2505  56                        PUSH ESI
006a2506  57                        PUSH EDI
006a2507  50                        PUSH EAX
006a2508  8d45f4                    LEA EAX,[EBP + -0xc]
006a250b  64a300000000              MOV FS:[0x0],EAX
006a2511  8bf9                      MOV EDI,ECX
006a2513  89bd40ffffff              MOV dword ptr [EBP + 0xffffff40],EDI
006a2519  80bf6104000000            CMP byte ptr [EDI + 0x461],0x0
006a2520  740c                      JZ 0x006a252e
006a2522  c6876104000000            MOV byte ptr [EDI + 0x461],0x0
006a2529  e90e350000                JMP 0x006a5a3c
006a252e  80bf6304000000            CMP byte ptr [EDI + 0x463],0x0
006a2535  7405                      JZ 0x006a253c
006a2537  e8d4490000                CALL 0x006a6f10
006a253c  8d8738040000              LEA EAX,[EDI + 0x438]
006a2542  68e045c300                PUSH 0xc345e0
006a2547  8bd0                      MOV EDX,EAX
006a2549  894590                    MOV dword ptr [EBP + -0x70],EAX
006a254c  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a2552  e8194cd7ff                CALL 0x00417170
006a2557  83c404                    ADD ESP,0x4
006a255a  8b08                      MOV ECX,dword ptr [EAX]
006a255c  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a255f  750c                      JNZ 0x006a256d
006a2561  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a2564  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a2567  7504                      JNZ 0x006a256d
006a2569  32d2                      XOR DL,DL
006a256b  eb02                      JMP 0x006a256f
006a256d  b201                      MOV DL,0x1
006a256f  a17816c700                MOV EAX,[0x00c71678]
006a2574  f30f108728040000          MOVSS XMM0,dword ptr [EDI + 0x428]
006a257c  f30f102d84adba00          MOVSS XMM5,dword ptr [0x00baad84]
006a2584  88956bffffff              MOV byte ptr [EBP + 0xffffff6b],DL
006a258a  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006a2590  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
006a2596  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
006a259e  83f801                    CMP EAX,0x1
006a25a1  7532                      JNZ 0x006a25d5
006a25a3  837f3401                  CMP dword ptr [EDI + 0x34],0x1
006a25a7  7514                      JNZ 0x006a25bd
006a25a9  8b0d64ecc700              MOV ECX,dword ptr [0x00c7ec64]
006a25af  898f54040000              MOV dword ptr [EDI + 0x454],ECX
006a25b5  8d4101                    LEA EAX,[ECX + 0x1]
006a25b8  a364ecc700                MOV [0x00c7ec64],EAX
006a25bd  84d2                      TEST DL,DL
006a25bf  7414                      JZ 0x006a25d5
006a25c1  c7871c040000000000c1      MOV dword ptr [EDI + 0x41c],0xc1000000
006a25cb  c78750030000000040c0      MOV dword ptr [EDI + 0x350],0xc0400000
006a25d5  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006a25dc  7462                      JZ 0x006a2640
006a25de  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006a25e6  8bcf                      MOV ECX,EDI
006a25e8  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a25f0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006a25f8  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a2600  e81bc20000                CALL 0x006ae820
006a2605  8b8758040000              MOV EAX,dword ptr [EDI + 0x458]
006a260b  85c0                      TEST EAX,EAX
006a260d  7e0c                      JLE 0x006a261b
006a260f  48                        DEC EAX
006a2610  898758040000              MOV dword ptr [EDI + 0x458],EAX
006a2616  e921340000                JMP 0x006a5a3c
006a261b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006a261f  7413                      JZ 0x006a2634
006a2621  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
006a2628  740a                      JZ 0x006a2634
006a262a  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
006a262e  0f8508340000              JNZ 0x006a5a3c
006a2634  8b07                      MOV EAX,dword ptr [EDI]
006a2636  8bcf                      MOV ECX,EDI
006a2638  ff5028                    CALL dword ptr [EAX + 0x28]
006a263b  e9fc330000                JMP 0x006a5a3c
006a2640  8b8ffc030000              MOV ECX,dword ptr [EDI + 0x3fc]
006a2646  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
006a264e  85c9                      TEST ECX,ECX
006a2650  745b                      JZ 0x006a26ad
006a2652  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006a265a  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
006a2660  f30f59c1                  MULSS XMM0,XMM1
006a2664  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006a266c  85c0                      TEST EAX,EAX
006a266e  7e07                      JLE 0x006a2677
006a2670  40                        INC EAX
006a2671  898710040000              MOV dword ptr [EDI + 0x410],EAX
006a2677  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006a267b  7409                      JZ 0x006a2686
006a267d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
006a2684  7527                      JNZ 0x006a26ad
006a2686  83f901                    CMP ECX,0x1
006a2689  7522                      JNZ 0x006a26ad
006a268b  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
006a2692  c787fc03000002000000      MOV dword ptr [EDI + 0x3fc],0x2
006a269c  750f                      JNZ 0x006a26ad
006a269e  8b07                      MOV EAX,dword ptr [EDI]
006a26a0  8bcf                      MOV ECX,EDI
006a26a2  ff5028                    CALL dword ptr [EAX + 0x28]
006a26a5  f30f102d84adba00          MOVSS XMM5,dword ptr [0x00baad84]
006a26ad  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006a26b3  83e020                    AND EAX,0x20
006a26b6  83c800                    OR EAX,0x0
006a26b9  745e                      JZ 0x006a2719
006a26bb  6a00                      PUSH 0x0
006a26bd  6854bcb100                PUSH 0xb1bc54
006a26c2  8d4f48                    LEA ECX,[EDI + 0x48]
006a26c5  e81680d6ff                CALL 0x0040a6e0
006a26ca  80bf6204000000            CMP byte ptr [EDI + 0x462],0x0
006a26d1  743a                      JZ 0x006a270d
006a26d3  b805000000                MOV EAX,0x5
006a26d8  8db76d050000              LEA ESI,[EDI + 0x56d]
006a26de  89458c                    MOV dword ptr [EBP + -0x74],EAX
006a26e1  803e00                    CMP byte ptr [ESI],0x0
006a26e4  7419                      JZ 0x006a26ff
006a26e6  8d8e27ffffff              LEA ECX,[ESI + 0xffffff27]
006a26ec  e83f69d6ff                CALL 0x00409030
006a26f1  8d8e47ffffff              LEA ECX,[ESI + 0xffffff47]
006a26f7  e83469d6ff                CALL 0x00409030
006a26fc  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
006a26ff  81c614010000              ADD ESI,0x114
006a2705  83e801                    SUB EAX,0x1
006a2708  89458c                    MOV dword ptr [EBP + -0x74],EAX
006a270b  75d4                      JNZ 0x006a26e1
006a270d  8bcf                      MOV ECX,EDI
006a270f  e80cc10000                CALL 0x006ae820
006a2714  e923330000                JMP 0x006a5a3c
006a2719  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
006a2720  0f57d2                    XORPS XMM2,XMM2
006a2723  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006a272b  f30f103d30a6ba00          MOVSS XMM7,dword ptr [0x00baa630]
006a2733  f30f1035a4a3ba00          MOVSS XMM6,dword ptr [0x00baa3a4]
006a273b  0f8466020000              JZ 0x006a29a7
006a2741  83bffc03000000            CMP dword ptr [EDI + 0x3fc],0x0
006a2748  0f8559020000              JNZ 0x006a29a7
006a274e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006a2755  0f854c020000              JNZ 0x006a29a7
006a275b  f30f108f50030000          MOVSS XMM1,dword ptr [EDI + 0x350]
006a2763  0f2fd1                    COMISS XMM2,XMM1
006a2766  770d                      JA 0x006a2775
006a2768  0f2f971c040000            COMISS XMM2,dword ptr [EDI + 0x41c]
006a276f  0f8632020000              JBE 0x006a29a7
006a2775  f30f10871c040000          MOVSS XMM0,dword ptr [EDI + 0x41c]
006a277d  8bcf                      MOV ECX,EDI
006a277f  0f28e0                    MOVAPS XMM4,XMM0
006a2782  f30f58e1                  ADDSS XMM4,XMM1
006a2786  f30f11a750030000          MOVSS dword ptr [EDI + 0x350],XMM4
006a278e  e89df8ffff                CALL 0x006a2030
006a2793  8a956bffffff              MOV DL,byte ptr [EBP + 0xffffff6b]
006a2799  84c0                      TEST AL,AL
006a279b  7418                      JZ 0x006a27b5
006a279d  84d2                      TEST DL,DL
006a279f  740a                      JZ 0x006a27ab
006a27a1  f30f100d54a5ba00          MOVSS XMM1,dword ptr [0x00baa554]
006a27a9  eb2c                      JMP 0x006a27d7
006a27ab  f30f108f20040000          MOVSS XMM1,dword ptr [EDI + 0x420]
006a27b3  eb22                      JMP 0x006a27d7
006a27b5  84d2                      TEST DL,DL
006a27b7  740a                      JZ 0x006a27c3
006a27b9  f30f100dbca6ba00          MOVSS XMM1,dword ptr [0x00baa6bc]
006a27c1  eb14                      JMP 0x006a27d7
006a27c3  f30f108f20040000          MOVSS XMM1,dword ptr [EDI + 0x420]
006a27cb  0f2eca                    UCOMISS XMM1,XMM2
006a27ce  9f                        LAHF
006a27cf  f6c444                    TEST AH,0x44
006a27d2  7a03                      JP 0x006a27d7
006a27d4  0f28ce                    MOVAPS XMM1,XMM6
006a27d7  f30f58c8                  ADDSS XMM1,XMM0
006a27db  f30f118f1c040000          MOVSS dword ptr [EDI + 0x41c],XMM1
006a27e3  f30f100504aeba00          MOVSS XMM0,dword ptr [0x00baae04]
006a27eb  0f2fc4                    COMISS XMM0,XMM4
006a27ee  760c                      JBE 0x006a27fc
006a27f0  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
006a27fa  eb2d                      JMP 0x006a2829
006a27fc  0f2fec                    COMISS XMM5,XMM4
006a27ff  771e                      JA 0x006a281f
006a2801  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a2808  7515                      JNZ 0x006a281f
006a280a  e821f8ffff                CALL 0x006a2030
006a280f  84c0                      TEST AL,AL
006a2811  750c                      JNZ 0x006a281f
006a2813  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
006a281d  eb0a                      JMP 0x006a2829
006a281f  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
006a2829  0f2fe2                    COMISS XMM4,XMM2
006a282c  0f8275010000              JC 0x006a29a7
006a2832  84d2                      TEST DL,DL
006a2834  0f84ec000000              JZ 0x006a2926
006a283a  0f2fcf                    COMISS XMM1,XMM7
006a283d  0f86e3000000              JBE 0x006a2926
006a2843  8b8724040000              MOV EAX,dword ptr [EDI + 0x424]
006a2849  83f804                    CMP EAX,0x4
006a284c  0f8dd4000000              JGE 0x006a2926
006a2852  f30f590d38adba00          MULSS XMM1,dword ptr [0x00baad38]
006a285a  40                        INC EAX
006a285b  898724040000              MOV dword ptr [EDI + 0x424],EAX
006a2861  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
006a286b  f30f118f1c040000          MOVSS dword ptr [EDI + 0x41c],XMM1
006a2873  e8e8c60400                CALL 0x006eef60
006a2878  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a287e  81c73c030000              ADD EDI,0x33c
006a2884  50                        PUSH EAX
006a2885  6a00                      PUSH 0x0
006a2887  6a00                      PUSH 0x0
006a2889  6840b6c700                PUSH 0xc7b640
006a288e  57                        PUSH EDI
006a288f  6a0e                      PUSH 0xe
006a2891  68e8030000                PUSH 0x3e8
006a2896  e88562d8ff                CALL 0x00428b20
006a289b  8bf0                      MOV ESI,EAX
006a289d  6a01                      PUSH 0x1
006a289f  6a00                      PUSH 0x0
006a28a1  68ff000000                PUSH 0xff
006a28a6  8b0e                      MOV ECX,dword ptr [ESI]
006a28a8  6aff                      PUSH -0x1
006a28aa  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
006a28ad  8b8d40ffffff              MOV ECX,dword ptr [EBP + 0xffffff40]
006a28b3  81c1f0000000              ADD ECX,0xf0
006a28b9  51                        PUSH ECX
006a28ba  8bce                      MOV ECX,ESI
006a28bc  ffd2                      CALL EDX
006a28be  8b06                      MOV EAX,dword ptr [ESI]
006a28c0  8bce                      MOV ECX,ESI
006a28c2  ff500c                    CALL dword ptr [EAX + 0xc]
006a28c5  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006a28cd  51                        PUSH ECX
006a28ce  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a28d5  6a00                      PUSH 0x0
006a28d7  6a02                      PUSH 0x2
006a28d9  6896000000                PUSH 0x96
006a28de  e8fd3f2b00                CALL 0x009568e0
006a28e3  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
006a28e6  83ec10                    SUB ESP,0x10
006a28e9  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
006a28f1  8bc4                      MOV EAX,ESP
006a28f3  0f1001                    MOVUPS XMM0,xmmword ptr [ECX]
006a28f6  8bcf                      MOV ECX,EDI
006a28f8  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
006a28fb  8b8540ffffff              MOV EAX,dword ptr [EBP + 0xffffff40]
006a2901  8bd0                      MOV EDX,EAX
006a2903  f30f109018040000          MOVSS XMM2,dword ptr [EAX + 0x418]
006a290b  f30f5915d4a1ba00          MULSS XMM2,dword ptr [0x00baa1d4]
006a2913  e818abfdff                CALL 0x0067d430
006a2918  8bbd40ffffff              MOV EDI,dword ptr [EBP + 0xffffff40]
006a291e  83c410                    ADD ESP,0x10
006a2921  e981000000                JMP 0x006a29a7
006a2926  8bcf                      MOV ECX,EDI
006a2928  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
006a2932  c7871c04000000000000      MOV dword ptr [EDI + 0x41c],0x0
006a293c  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
006a2946  e8e5f6ffff                CALL 0x006a2030
006a294b  84c0                      TEST AL,AL
006a294d  740c                      JZ 0x006a295b
006a294f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
006a2959  eb4c                      JMP 0x006a29a7
006a295b  837f2c12                  CMP dword ptr [EDI + 0x2c],0x12
006a295f  8d8f34040000              LEA ECX,[EDI + 0x434]
006a2965  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006a2969  8d4590                    LEA EAX,[EBP + -0x70]
006a296c  51                        PUSH ECX
006a296d  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a2974  6a00                      PUSH 0x0
006a2976  c745900000803f            MOV dword ptr [EBP + -0x70],0x3f800000
006a297d  6a02                      PUSH 0x2
006a297f  7515                      JNZ 0x006a2996
006a2981  0f2fc3                    COMISS XMM0,XMM3
006a2984  68d2010000                PUSH 0x1d2
006a2989  0f46c1                    CMOVBE EAX,ECX
006a298c  f30f1010                  MOVSS XMM2,dword ptr [EAX]
006a2990  f30f59d6                  MULSS XMM2,XMM6
006a2994  eb0c                      JMP 0x006a29a2
006a2996  0f2fc3                    COMISS XMM0,XMM3
006a2999  6a28                      PUSH 0x28
006a299b  0f46c1                    CMOVBE EAX,ECX
006a299e  f30f1010                  MOVSS XMM2,dword ptr [EAX]
006a29a2  e8393f2b00                CALL 0x009568e0
006a29a7  8bb7c8030000              MOV ESI,dword ptr [EDI + 0x3c8]
006a29ad  89b560ffffff              MOV dword ptr [EBP + 0xffffff60],ESI
006a29b3  85f6                      TEST ESI,ESI
006a29b5  740f                      JZ 0x006a29c6
006a29b7  33c0                      XOR EAX,EAX
006a29b9  837e2801                  CMP dword ptr [ESI + 0x28],0x1
006a29bd  0f45f0                    CMOVNZ ESI,EAX
006a29c0  89b560ffffff              MOV dword ptr [EBP + 0xffffff60],ESI
006a29c6  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
006a29c9  83fa13                    CMP EDX,0x13
006a29cc  7405                      JZ 0x006a29d3
006a29ce  83fa14                    CMP EDX,0x14
006a29d1  753a                      JNZ 0x006a2a0d
006a29d3  6800000002                PUSH 0x2000000
006a29d8  6a00                      PUSH 0x0
006a29da  8bcf                      MOV ECX,EDI
006a29dc  e84f4ad7ff                CALL 0x00417430
006a29e1  84c0                      TEST AL,AL
006a29e3  7425                      JZ 0x006a2a0a
006a29e5  6a00                      PUSH 0x0
006a29e7  6854bcb100                PUSH 0xb1bc54
006a29ec  8d4f48                    LEA ECX,[EDI + 0x48]
006a29ef  c787ec00000000000000      MOV dword ptr [EDI + 0xec],0x0
006a29f9  e88279d6ff                CALL 0x0040a380
006a29fe  c7872c04000000000000      MOV dword ptr [EDI + 0x42c],0x0
006a2a08  eb40                      JMP 0x006a2a4a
006a2a0a  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
006a2a0d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006a2a11  8d4748                    LEA EAX,[EDI + 0x48]
006a2a14  7418                      JZ 0x006a2a2e
006a2a16  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
006a2a1d  740f                      JZ 0x006a2a2e
006a2a1f  8d4f78                    LEA ECX,[EDI + 0x78]
006a2a22  e88949d6ff                CALL 0x004073b0
006a2a27  84c0                      TEST AL,AL
006a2a29  741f                      JZ 0x006a2a4a
006a2a2b  8d4748                    LEA EAX,[EDI + 0x48]
006a2a2e  83fa02                    CMP EDX,0x2
006a2a31  7417                      JZ 0x006a2a4a
006a2a33  83bffc03000000            CMP dword ptr [EDI + 0x3fc],0x0
006a2a3a  750e                      JNZ 0x006a2a4a
006a2a3c  6a00                      PUSH 0x0
006a2a3e  682cd5b100                PUSH 0xb1d52c
006a2a43  8bc8                      MOV ECX,EAX
006a2a45  e83679d6ff                CALL 0x0040a380
006a2a4a  682cd5b100                PUSH 0xb1d52c
006a2a4f  8d4f48                    LEA ECX,[EDI + 0x48]
006a2a52  e8797ad6ff                CALL 0x0040a4d0
006a2a57  84c0                      TEST AL,AL
006a2a59  0f84a7000000              JZ 0x006a2b06
006a2a5f  8bcf                      MOV ECX,EDI
006a2a61  e8caf5ffff                CALL 0x006a2030
006a2a66  84c0                      TEST AL,AL
006a2a68  0f8598000000              JNZ 0x006a2b06
006a2a6e  388748040000              CMP byte ptr [EDI + 0x448],AL
006a2a74  752d                      JNZ 0x006a2aa3
006a2a76  837f3401                  CMP dword ptr [EDI + 0x34],0x1
006a2a7a  7527                      JNZ 0x006a2aa3
006a2a7c  85f6                      TEST ESI,ESI
006a2a7e  7423                      JZ 0x006a2aa3
006a2a80  6a00                      PUSH 0x0
006a2a82  6889000000                PUSH 0x89
006a2a87  8bce                      MOV ECX,ESI
006a2a89  e852dc0c00                CALL 0x007706e0
006a2a8e  84c0                      TEST AL,AL
006a2a90  7411                      JZ 0x006a2aa3
006a2a92  8d4f48                    LEA ECX,[EDI + 0x48]
006a2a95  e8e67cd6ff                CALL 0x0040a780
006a2a9a  83f80f                    CMP EAX,0xf
006a2a9d  7c67                      JL 0x006a2b06
006a2a9f  6a00                      PUSH 0x0
006a2aa1  eb5b                      JMP 0x006a2afe
006a2aa3  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
006a2aaa  8d8710040000              LEA EAX,[EDI + 0x410]
006a2ab0  8d5590                    LEA EDX,[EBP + -0x70]
006a2ab3  c7459000000000            MOV dword ptr [EBP + -0x70],0x0
006a2aba  8d4f78                    LEA ECX,[EDI + 0x78]
006a2abd  0f4fd0                    CMOVG EDX,EAX
006a2ac0  e86be3d9ff                CALL 0x00440e30
006a2ac5  8bf0                      MOV ESI,EAX
006a2ac7  2b32                      SUB ESI,dword ptr [EDX]
006a2ac9  83ee01                    SUB ESI,0x1
006a2acc  7923                      JNS 0x006a2af1
006a2ace  b889888888                MOV EAX,0x88888889
006a2ad3  f7ee                      IMUL ESI
006a2ad5  03d6                      ADD EDX,ESI
006a2ad7  c1fa03                    SAR EDX,0x3
006a2ada  8bc2                      MOV EAX,EDX
006a2adc  c1e81f                    SHR EAX,0x1f
006a2adf  03c2                      ADD EAX,EDX
006a2ae1  8bc8                      MOV ECX,EAX
006a2ae3  c1e104                    SHL ECX,0x4
006a2ae6  2bc8                      SUB ECX,EAX
006a2ae8  b80f000000                MOV EAX,0xf
006a2aed  2bc1                      SUB EAX,ECX
006a2aef  03f0                      ADD ESI,EAX
006a2af1  8d4f48                    LEA ECX,[EDI + 0x48]
006a2af4  e8877cd6ff                CALL 0x0040a780
006a2af9  3bf0                      CMP ESI,EAX
006a2afb  7409                      JZ 0x006a2b06
006a2afd  56                        PUSH ESI
006a2afe  8d4f48                    LEA ECX,[EDI + 0x48]
006a2b01  e81a7cd6ff                CALL 0x0040a720
006a2b06  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a2b0d  8db738040000              LEA ESI,[EDI + 0x438]
006a2b13  f30f100db4a9ba00          MOVSS XMM1,dword ptr [0x00baa9b4]
006a2b1b  f30f101570cbba00          MOVSS XMM2,dword ptr [0x00bacb70]
006a2b23  f30f101d88a0ba00          MOVSS XMM3,dword ptr [0x00baa088]
006a2b2b  0f84ad050000              JZ 0x006a30de
006a2b31  68b04bc300                PUSH 0xc34bb0
006a2b36  8bd6                      MOV EDX,ESI
006a2b38  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a2b3e  e82d46d7ff                CALL 0x00417170
006a2b43  83c404                    ADD ESP,0x4
006a2b46  8bc8                      MOV ECX,EAX
006a2b48  e86346d7ff                CALL 0x004171b0
006a2b4d  84c0                      TEST AL,AL
006a2b4f  740a                      JZ 0x006a2b5b
006a2b51  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
006a2b5b  8bcf                      MOV ECX,EDI
006a2b5d  e8cef4ffff                CALL 0x006a2030
006a2b62  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a2b68  8bd6                      MOV EDX,ESI
006a2b6a  687048c300                PUSH 0xc34870
006a2b6f  84c0                      TEST AL,AL
006a2b71  0f84c6010000              JZ 0x006a2d3d
006a2b77  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
006a2b7f  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
006a2b87  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
006a2b8f  e8dc45d7ff                CALL 0x00417170
006a2b94  83c404                    ADD ESP,0x4
006a2b97  8bc8                      MOV ECX,EAX
006a2b99  e81246d7ff                CALL 0x004171b0
006a2b9e  84c0                      TEST AL,AL
006a2ba0  0f84e4000000              JZ 0x006a2c8a
006a2ba6  f30f108728040000          MOVSS XMM0,dword ptr [EDI + 0x428]
006a2bae  f30f58c1                  ADDSS XMM0,XMM1
006a2bb2  f30f59c3                  MULSS XMM0,XMM3
006a2bb6  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a2bbb  e860a9d7ff                CALL 0x0041d520
006a2bc0  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a2bc5  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
006a2bca  e871a9d7ff                CALL 0x0041d540
006a2bcf  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
006a2bd7  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a2bdc  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
006a2be1  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
006a2be9  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a2bee  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
006a2bf6  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006a2bfe  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
006a2c06  e815a9d7ff                CALL 0x0041d520
006a2c0b  f30f105590                MOVSS XMM2,dword ptr [EBP + -0x70]
006a2c10  0f28c8                    MOVAPS XMM1,XMM0
006a2c13  f30f105d88                MOVSS XMM3,dword ptr [EBP + -0x78]
006a2c18  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
006a2c20  f30f59d1                  MULSS XMM2,XMM1
006a2c24  f30f59d9                  MULSS XMM3,XMM1
006a2c28  f30f59d0                  MULSS XMM2,XMM0
006a2c2c  f30f59d8                  MULSS XMM3,XMM0
006a2c30  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
006a2c38  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
006a2c40  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
006a2c48  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
006a2c50  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
006a2c58  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
006a2c60  e8bba8d7ff                CALL 0x0041d520
006a2c65  f30f101d88a0ba00          MOVSS XMM3,dword ptr [0x00baa088]
006a2c6d  0f28c8                    MOVAPS XMM1,XMM0
006a2c70  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
006a2c78  f30f588f28040000          ADDSS XMM1,dword ptr [EDI + 0x428]
006a2c80  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
006a2c88  eb08                      JMP 0x006a2c92
006a2c8a  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
006a2c92  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
006a2c9a  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
006a2ca1  9f                        LAHF
006a2ca2  f6c444                    TEST AH,0x44
006a2ca5  0f8b33040000              JNP 0x006a30de
006a2cab  f30f59cb                  MULSS XMM1,XMM3
006a2caf  0f28c1                    MOVAPS XMM0,XMM1
006a2cb2  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
006a2cba  e861a8d7ff                CALL 0x0041d520
006a2cbf  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a2cc7  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
006a2ccf  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a2cd7  f30f59c0                  MULSS XMM0,XMM0
006a2cdb  f30f59c9                  MULSS XMM1,XMM1
006a2cdf  f30f58c1                  ADDSS XMM0,XMM1
006a2ce3  e8682dd9ff                CALL 0x00435a50
006a2ce8  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a2ced  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
006a2cf5  e846a8d7ff                CALL 0x0041d540
006a2cfa  f30f10956cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff6c]
006a2d02  0f28c8                    MOVAPS XMM1,XMM0
006a2d05  f30f594d90                MULSS XMM1,dword ptr [EBP + -0x70]
006a2d0a  f30f595590                MULSS XMM2,dword ptr [EBP + -0x70]
006a2d0f  f30f10871c040000          MOVSS XMM0,dword ptr [EDI + 0x41c]
006a2d17  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
006a2d1f  f30f58c2                  ADDSS XMM0,XMM2
006a2d23  e83870dfff                CALL 0x00499d60
006a2d28  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
006a2d30  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
006a2d38  e9a1030000                JMP 0x006a30de
006a2d3d  e82e44d7ff                CALL 0x00417170
006a2d42  83c404                    ADD ESP,0x4
006a2d45  8bc8                      MOV ECX,EAX
006a2d47  e86444d7ff                CALL 0x004171b0
006a2d4c  84c0                      TEST AL,AL
006a2d4e  0f84cd000000              JZ 0x006a2e21
006a2d54  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a2d5c  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
006a2d62  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a2d6a  0f57c2                    XORPS XMM0,XMM2
006a2d6d  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
006a2d75  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a2d7d  e83ed23600                CALL 0x00a0ffc0
006a2d82  a17816c700                MOV EAX,[0x00c71678]
006a2d87  660f6e80f8640200          MOVD XMM0,dword ptr [EAX + 0x264f8]
006a2d8f  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
006a2d92  0f5bc0                    CVTDQ2PS XMM0,XMM0
006a2d95  660f6ec8                  MOVD XMM1,EAX
006a2d99  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
006a2da1  c1e81f                    SHR EAX,0x1f
006a2da4  f30fe6c9                  CVTDQ2PD XMM1,XMM1
006a2da8  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
006a2db1  660f5ac9                  CVTPD2PS XMM1,XMM1
006a2db5  f30f58c1                  ADDSS XMM0,XMM1
006a2db9  e862a7d7ff                CALL 0x0041d520
006a2dbe  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a2dc6  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a2dcb  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a2dd3  f30f59c9                  MULSS XMM1,XMM1
006a2dd7  f30f59c0                  MULSS XMM0,XMM0
006a2ddb  f30f58c1                  ADDSS XMM0,XMM1
006a2ddf  e86c2cd9ff                CALL 0x00435a50
006a2de4  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
006a2de9  f30f108d78ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff78]
006a2df1  f30f10957cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff7c]
006a2df9  f30f59c8                  MULSS XMM1,XMM0
006a2dfd  f30f59d0                  MULSS XMM2,XMM0
006a2e01  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
006a2e09  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
006a2e11  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
006a2e19  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
006a2e21  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
006a2e28  742a                      JZ 0x006a2e54
006a2e2a  68c04bc300                PUSH 0xc34bc0
006a2e2f  8bd6                      MOV EDX,ESI
006a2e31  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a2e37  e83443d7ff                CALL 0x00417170
006a2e3c  83c404                    ADD ESP,0x4
006a2e3f  8bc8                      MOV ECX,EAX
006a2e41  e86a43d7ff                CALL 0x004171b0
006a2e46  84c0                      TEST AL,AL
006a2e48  740a                      JZ 0x006a2e54
006a2e4a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
006a2e54  688045c300                PUSH 0xc34580
006a2e59  8bd6                      MOV EDX,ESI
006a2e5b  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a2e61  e80a43d7ff                CALL 0x00417170
006a2e66  83c404                    ADD ESP,0x4
006a2e69  8bc8                      MOV ECX,EAX
006a2e6b  e84043d7ff                CALL 0x004171b0
006a2e70  84c0                      TEST AL,AL
006a2e72  0f849a010000              JZ 0x006a3012
006a2e78  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006a2e7e  85c0                      TEST EAX,EAX
006a2e80  0f848c010000              JZ 0x006a3012
006a2e86  83782801                  CMP dword ptr [EAX + 0x28],0x1
006a2e8a  0f8582010000              JNZ 0x006a3012
006a2e90  6a00                      PUSH 0x0
006a2e92  68dcd6c500                PUSH 0xc5d6dc
006a2e97  68dcd5c500                PUSH 0xc5d5dc
006a2e9c  6a00                      PUSH 0x0
006a2e9e  50                        PUSH EAX
006a2e9f  e80dda4400                CALL 0x00af08b1
006a2ea4  6a00                      PUSH 0x0
006a2ea6  6840d7c500                PUSH 0xc5d740
006a2eab  68dcd5c500                PUSH 0xc5d5dc
006a2eb0  6a00                      PUSH 0x0
006a2eb2  ffb030140000              PUSH dword ptr [EAX + 0x1430]
006a2eb8  89458c                    MOV dword ptr [EBP + -0x74],EAX
006a2ebb  e8f1d94400                CALL 0x00af08b1
006a2ec0  8bc8                      MOV ECX,EAX
006a2ec2  83c428                    ADD ESP,0x28
006a2ec5  85c9                      TEST ECX,ECX
006a2ec7  0f8445010000              JZ 0x006a3012
006a2ecd  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
006a2ed0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006a2ed8  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
006a2ee0  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
006a2ee8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006a2ef0  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
006a2ef8  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a2efd  f30f10811c040000          MOVSS XMM0,dword ptr [ECX + 0x41c]
006a2f05  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
006a2f0d  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a2f12  e809a6d7ff                CALL 0x0041d520
006a2f17  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
006a2f1c  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
006a2f21  e81aa6d7ff                CALL 0x0041d540
006a2f26  0f28d8                    MOVAPS XMM3,XMM0
006a2f29  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
006a2f2e  0f28c8                    MOVAPS XMM1,XMM0
006a2f31  0f28d3                    MOVAPS XMM2,XMM3
006a2f34  f30f594d88                MULSS XMM1,dword ptr [EBP + -0x78]
006a2f39  f30f59956cffffff          MULSS XMM2,dword ptr [EBP + 0xffffff6c]
006a2f41  f30f58d1                  ADDSS XMM2,XMM1
006a2f45  0f57c9                    XORPS XMM1,XMM1
006a2f48  0f2fd1                    COMISS XMM2,XMM1
006a2f4b  0f86c4000000              JBE 0x006a3015
006a2f51  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
006a2f54  0f28ca                    MOVAPS XMM1,XMM2
006a2f57  f30f59cb                  MULSS XMM1,XMM3
006a2f5b  f30f59d0                  MULSS XMM2,XMM0
006a2f5f  f30f58883c030000          ADDSS XMM1,dword ptr [EAX + 0x33c]
006a2f67  f30f589040030000          ADDSS XMM2,dword ptr [EAX + 0x340]
006a2f6f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
006a2f77  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
006a2f7f  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
006a2f87  f30f59156ca0ba00          MULSS XMM2,dword ptr [0x00baa06c]
006a2f8f  0f28c1                    MOVAPS XMM0,XMM1
006a2f92  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
006a2f97  f30f59c1                  MULSS XMM0,XMM1
006a2f9b  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
006a2fa3  0f28ca                    MOVAPS XMM1,XMM2
006a2fa6  f30f59ca                  MULSS XMM1,XMM2
006a2faa  f30f11956cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM2
006a2fb2  f30f11957cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM2
006a2fba  f30f58c1                  ADDSS XMM0,XMM1
006a2fbe  0f2f055ca7ba00            COMISS XMM0,dword ptr [0x00baa75c]
006a2fc5  763b                      JBE 0x006a3002
006a2fc7  e8842ad9ff                CALL 0x00435a50
006a2fcc  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006a2fd3  762d                      JBE 0x006a3002
006a2fd5  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006a2fdd  f30f5ec8                  DIVSS XMM1,XMM0
006a2fe1  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
006a2fe6  f30f59c1                  MULSS XMM0,XMM1
006a2fea  f30f598d6cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff6c]
006a2ff2  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
006a2ffa  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
006a3002  6a00                      PUSH 0x0
006a3004  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
006a300a  8bcf                      MOV ECX,EDI
006a300c  50                        PUSH EAX
006a300d  e89ee4d8ff                CALL 0x004314b0
006a3012  0f57c9                    XORPS XMM1,XMM1
006a3015  686048c300                PUSH 0xc34860
006a301a  8bd6                      MOV EDX,ESI
006a301c  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a3022  e84941d7ff                CALL 0x00417170
006a3027  83c404                    ADD ESP,0x4
006a302a  8bc8                      MOV ECX,EAX
006a302c  e87f41d7ff                CALL 0x004171b0
006a3031  84c0                      TEST AL,AL
006a3033  0f84a5000000              JZ 0x006a30de
006a3039  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006a303f  85c0                      TEST EAX,EAX
006a3041  0f8497000000              JZ 0x006a30de
006a3047  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
006a304f  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
006a3055  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
006a305d  f30f58c1                  ADDSS XMM0,XMM1
006a3061  f30f581530a6ba00          ADDSS XMM2,dword ptr [0x00baa630]
006a3069  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006a3071  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
006a3077  50                        PUSH EAX
006a3078  f30f5cc8                  SUBSS XMM1,XMM0
006a307c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006a3084  f30f5cc2                  SUBSS XMM0,XMM2
006a3088  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
006a3090  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a3098  e893cf3600                CALL 0x00a10030
006a309d  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a30a5  f30f1008                  MOVSS XMM1,dword ptr [EAX]
006a30a9  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
006a30b1  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
006a30b6  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
006a30be  f30f5cc1                  SUBSS XMM0,XMM1
006a30c2  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a30ca  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a30d2  f30f5cc2                  SUBSS XMM0,XMM2
006a30d6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a30de  68004cc300                PUSH 0xc34c00
006a30e3  8bd6                      MOV EDX,ESI
006a30e5  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a30eb  e88040d7ff                CALL 0x00417170
006a30f0  83c404                    ADD ESP,0x4
006a30f3  8b08                      MOV ECX,dword ptr [EAX]
006a30f5  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a30f8  750c                      JNZ 0x006a3106
006a30fa  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a30fd  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a3100  0f84d2010000              JZ 0x006a32d8
006a3106  837f3401                  CMP dword ptr [EDI + 0x34],0x1
006a310a  a17816c700                MOV EAX,[0x00c71678]
006a310f  0f85f8000000              JNZ 0x006a320d
006a3115  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006a311b  8d873c030000              LEA EAX,[EDI + 0x33c]
006a3121  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
006a3129  81c118120000              ADD ECX,0x1218
006a312f  6a08                      PUSH 0x8
006a3131  50                        PUSH EAX
006a3132  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
006a3138  50                        PUSH EAX
006a3139  e85276d7ff                CALL 0x0041a790
006a313e  33c9                      XOR ECX,ECX
006a3140  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006a3147  894d8c                    MOV dword ptr [EBP + -0x74],ECX
006a314a  398d5cffffff              CMP dword ptr [EBP + 0xffffff5c],ECX
006a3150  0f86a0000000              JBE 0x006a31f6
006a3156  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
006a3160  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
006a3166  6a00                      PUSH 0x0
006a3168  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
006a316b  8bce                      MOV ECX,ESI
006a316d  897590                    MOV dword ptr [EBP + -0x70],ESI
006a3170  e8eb930000                CALL 0x006ac560
006a3175  84c0                      TEST AL,AL
006a3177  746a                      JZ 0x006a31e3
006a3179  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
006a3181  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
006a3189  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
006a3191  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
006a3199  f30f109670030000          MOVSS XMM2,dword ptr [ESI + 0x370]
006a31a1  f30f589770030000          ADDSS XMM2,dword ptr [EDI + 0x370]
006a31a9  f30f59c9                  MULSS XMM1,XMM1
006a31ad  f30f59c0                  MULSS XMM0,XMM0
006a31b1  f30f59d2                  MULSS XMM2,XMM2
006a31b5  f30f58c8                  ADDSS XMM1,XMM0
006a31b9  0f2fd1                    COMISS XMM2,XMM1
006a31bc  7625                      JBE 0x006a31e3
006a31be  8b06                      MOV EAX,dword ptr [ESI]
006a31c0  8d4dc4                    LEA ECX,[EBP + -0x3c]
006a31c3  57                        PUSH EDI
006a31c4  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
006a31c7  e844e1d8ff                CALL 0x00431310
006a31cc  6a1e                      PUSH 0x1e
006a31ce  8d45c4                    LEA EAX,[EBP + -0x3c]
006a31d1  50                        PUSH EAX
006a31d2  6a00                      PUSH 0x0
006a31d4  6a02                      PUSH 0x2
006a31d6  51                        PUSH ECX
006a31d7  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
006a31da  c7042400008041            MOV dword ptr [ESP],0x41800000
006a31e1  ffd6                      CALL ESI
006a31e3  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
006a31e6  41                        INC ECX
006a31e7  894d8c                    MOV dword ptr [EBP + -0x74],ECX
006a31ea  3b8d5cffffff              CMP ECX,dword ptr [EBP + 0xffffff5c]
006a31f0  0f826affffff              JC 0x006a3160
006a31f6  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a31fc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006a3203  e8a843d7ff                CALL 0x004175b0
006a3208  e9cb000000                JMP 0x006a32d8
006a320d  8b88acba0100              MOV ECX,dword ptr [EAX + 0x1baac]
006a3213  33d2                      XOR EDX,EDX
006a3215  2b88a8ba0100              SUB ECX,dword ptr [EAX + 0x1baa8]
006a321b  c1f902                    SAR ECX,0x2
006a321e  89558c                    MOV dword ptr [EBP + -0x74],EDX
006a3221  85c9                      TEST ECX,ECX
006a3223  0f84af000000              JZ 0x006a32d8
006a3229  0f1f8000000000            NOP dword ptr [EAX]
006a3230  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a3236  52                        PUSH EDX
006a3237  e83446d7ff                CALL 0x00417870
006a323c  894590                    MOV dword ptr [EBP + -0x70],EAX
006a323f  85c0                      TEST EAX,EAX
006a3241  7472                      JZ 0x006a32b5
006a3243  f30f109070030000          MOVSS XMM2,dword ptr [EAX + 0x370]
006a324b  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
006a3253  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
006a325b  f30f589770030000          ADDSS XMM2,dword ptr [EDI + 0x370]
006a3263  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
006a326b  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
006a3273  f30f581528a5ba00          ADDSS XMM2,dword ptr [0x00baa528]
006a327b  f30f59c9                  MULSS XMM1,XMM1
006a327f  f30f59c0                  MULSS XMM0,XMM0
006a3283  f30f59d2                  MULSS XMM2,XMM2
006a3287  f30f58c8                  ADDSS XMM1,XMM0
006a328b  0f2fd1                    COMISS XMM2,XMM1
006a328e  7625                      JBE 0x006a32b5
006a3290  8b00                      MOV EAX,dword ptr [EAX]
006a3292  8d4dc4                    LEA ECX,[EBP + -0x3c]
006a3295  57                        PUSH EDI
006a3296  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
006a3299  e872e0d8ff                CALL 0x00431310
006a329e  6a1e                      PUSH 0x1e
006a32a0  8d45c4                    LEA EAX,[EBP + -0x3c]
006a32a3  50                        PUSH EAX
006a32a4  6a00                      PUSH 0x0
006a32a6  6a02                      PUSH 0x2
006a32a8  51                        PUSH ECX
006a32a9  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
006a32ac  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a32b3  ffd6                      CALL ESI
006a32b5  a17816c700                MOV EAX,[0x00c71678]
006a32ba  8b558c                    MOV EDX,dword ptr [EBP + -0x74]
006a32bd  42                        INC EDX
006a32be  89558c                    MOV dword ptr [EBP + -0x74],EDX
006a32c1  8b88acba0100              MOV ECX,dword ptr [EAX + 0x1baac]
006a32c7  2b88a8ba0100              SUB ECX,dword ptr [EAX + 0x1baa8]
006a32cd  c1f902                    SAR ECX,0x2
006a32d0  3bd1                      CMP EDX,ECX
006a32d2  0f8258ffffff              JC 0x006a3230
006a32d8  8db738040000              LEA ESI,[EDI + 0x438]
006a32de  68704bc300                PUSH 0xc34b70
006a32e3  8bd6                      MOV EDX,ESI
006a32e5  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a32eb  e8803ed7ff                CALL 0x00417170
006a32f0  83c404                    ADD ESP,0x4
006a32f3  8b08                      MOV ECX,dword ptr [EAX]
006a32f5  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a32f8  750c                      JNZ 0x006a3306
006a32fa  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a32fd  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a3300  0f84c0010000              JZ 0x006a34c6
006a3306  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006a330c  894588                    MOV dword ptr [EBP + -0x78],EAX
006a330f  85c0                      TEST EAX,EAX
006a3311  0f84af010000              JZ 0x006a34c6
006a3317  83782801                  CMP dword ptr [EAX + 0x28],0x1
006a331b  0f85a5010000              JNZ 0x006a34c6
006a3321  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
006a3327  51                        PUSH ECX
006a3328  8bc8                      MOV ECX,EAX
006a332a  e8f1620d00                CALL 0x00779620
006a332f  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
006a3332  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
006a3338  6a00                      PUSH 0x0
006a333a  50                        PUSH EAX
006a333b  e8206c1100                CALL 0x007b9f60
006a3340  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
006a3343  8b880c140000              MOV ECX,dword ptr [EAX + 0x140c]
006a3349  85c9                      TEST ECX,ECX
006a334b  7468                      JZ 0x006a33b5
006a334d  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
006a3355  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
006a335d  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
006a3365  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
006a336d  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
006a3375  f30f5e0d1ca8ba00          DIVSS XMM1,dword ptr [0x00baa81c]
006a337d  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
006a3385  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
006a338d  f30f59c0                  MULSS XMM0,XMM0
006a3391  f30f59c9                  MULSS XMM1,XMM1
006a3395  f30f58c1                  ADDSS XMM0,XMM1
006a3399  e8b226d9ff                CALL 0x00435a50
006a339e  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
006a33a5  760b                      JBE 0x006a33b2
006a33a7  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
006a33ad  e80ecc3600                CALL 0x00a0ffc0
006a33b2  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
006a33b5  f30f108064140000          MOVSS XMM0,dword ptr [EAX + 0x1464]
006a33bd  8bc8                      MOV ECX,EAX
006a33bf  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
006a33c7  6a00                      PUSH 0x0
006a33c9  6a05                      PUSH 0x5
006a33cb  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a33d0  e80bd30c00                CALL 0x007706e0
006a33d5  84c0                      TEST AL,AL
006a33d7  7412                      JZ 0x006a33eb
006a33d9  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
006a33de  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006a33e6  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a33eb  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
006a33f3  0f57c9                    XORPS XMM1,XMM1
006a33f6  0f2ec1                    UCOMISS XMM0,XMM1
006a33f9  9f                        LAHF
006a33fa  f6c444                    TEST AH,0x44
006a33fd  7a78                      JP 0x006a3477
006a33ff  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
006a3407  0f2ec1                    UCOMISS XMM0,XMM1
006a340a  9f                        LAHF
006a340b  f6c444                    TEST AH,0x44
006a340e  7a67                      JP 0x006a3477
006a3410  686048c300                PUSH 0xc34860
006a3415  8bd6                      MOV EDX,ESI
006a3417  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a341d  e84e3dd7ff                CALL 0x00417170
006a3422  83c404                    ADD ESP,0x4
006a3425  8bc8                      MOV ECX,EAX
006a3427  e8843dd7ff                CALL 0x004171b0
006a342c  84c0                      TEST AL,AL
006a342e  740f                      JZ 0x006a343f
006a3430  c7876c0300000000803f      MOV dword ptr [EDI + 0x36c],0x3f800000
006a343a  e98a000000                JMP 0x006a34c9
006a343f  68a04bc300                PUSH 0xc34ba0
006a3444  8bd6                      MOV EDX,ESI
006a3446  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a344c  e81f3dd7ff                CALL 0x00417170
006a3451  83c404                    ADD ESP,0x4
006a3454  8bc8                      MOV ECX,EAX
006a3456  e8553dd7ff                CALL 0x004171b0
006a345b  84c0                      TEST AL,AL
006a345d  740c                      JZ 0x006a346b
006a345f  c7876c0300006666663f      MOV dword ptr [EDI + 0x36c],0x3f666666
006a3469  eb5e                      JMP 0x006a34c9
006a346b  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
006a3475  eb52                      JMP 0x006a34c9
006a3477  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
006a347d  e83ecb3600                CALL 0x00a0ffc0
006a3482  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
006a348a  f30f108d7cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff7c]
006a3492  f30f594588                MULSS XMM0,dword ptr [EBP + -0x78]
006a3497  f30f594d88                MULSS XMM1,dword ptr [EBP + -0x78]
006a349c  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
006a34a4  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
006a34ac  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a34b4  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
006a34bc  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
006a34c6  0f57c9                    XORPS XMM1,XMM1
006a34c9  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a34cc  83f813                    CMP EAX,0x13
006a34cf  7409                      JZ 0x006a34da
006a34d1  83f814                    CMP EAX,0x14
006a34d4  0f853c010000              JNZ 0x006a3616
006a34da  f30f10af2c040000          MOVSS XMM5,dword ptr [EDI + 0x42c]
006a34e2  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006a34ea  0f28e5                    MOVAPS XMM4,XMM5
006a34ed  f30f5ce1                  SUBSS XMM4,XMM1
006a34f1  0f28c4                    MOVAPS XMM0,XMM4
006a34f4  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
006a34fc  f30f5fc1                  MAXSS XMM0,XMM1
006a3500  f30f5dc2                  MINSS XMM0,XMM2
006a3504  0f28d8                    MOVAPS XMM3,XMM0
006a3507  f30f591d8ca1ba00          MULSS XMM3,dword ptr [0x00baa18c]
006a350f  f30f581da4a3ba00          ADDSS XMM3,dword ptr [0x00baa3a4]
006a3517  83f814                    CMP EAX,0x14
006a351a  7417                      JZ 0x006a3533
006a351c  0f28c4                    MOVAPS XMM0,XMM4
006a351f  f30f59053ca1ba00          MULSS XMM0,dword ptr [0x00baa13c]
006a3527  f30f5fc1                  MAXSS XMM0,XMM1
006a352b  f30f5dc2                  MINSS XMM0,XMM2
006a352f  f30f58c0                  ADDSS XMM0,XMM0
006a3533  f30f58af9c030000          ADDSS XMM5,dword ptr [EDI + 0x39c]
006a353b  f30f58c1                  ADDSS XMM0,XMM1
006a353f  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
006a3547  f30f11af2c040000          MOVSS dword ptr [EDI + 0x42c],XMM5
006a354f  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
006a3557  f30f108728040000          MOVSS XMM0,dword ptr [EDI + 0x428]
006a355f  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
006a3567  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a356c  e8af9fd7ff                CALL 0x0041d520
006a3571  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
006a3576  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
006a357b  e8c09fd7ff                CALL 0x0041d540
006a3580  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
006a3587  0f28d8                    MOVAPS XMM3,XMM0
006a358a  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
006a358f  f30f599d6cffffff          MULSS XMM3,dword ptr [EBP + 0xffffff6c]
006a3597  f30f59856cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff6c]
006a359f  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
006a35a7  f30f59d9                  MULSS XMM3,XMM1
006a35ab  f30f59c1                  MULSS XMM0,XMM1
006a35af  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
006a35b7  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
006a35bf  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
006a35c7  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a35cf  7445                      JZ 0x006a3616
006a35d1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
006a35db  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
006a35e3  0f28ca                    MOVAPS XMM1,XMM2
006a35e6  f30f59d0                  MULSS XMM2,XMM0
006a35ea  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006a35f2  f30f59cb                  MULSS XMM1,XMM3
006a35f6  f30f5cc1                  SUBSS XMM0,XMM1
006a35fa  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
006a3602  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006a360a  f30f5cc2                  SUBSS XMM0,XMM2
006a360e  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
006a3616  8bcf                      MOV ECX,EDI
006a3618  e803b20000                CALL 0x006ae820
006a361d  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a3620  83f813                    CMP EAX,0x13
006a3623  7409                      JZ 0x006a362e
006a3625  83f814                    CMP EAX,0x14
006a3628  0f857c040000              JNZ 0x006a3aaa
006a362e  686048c300                PUSH 0xc34860
006a3633  8bd6                      MOV EDX,ESI
006a3635  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a363b  e8303bd7ff                CALL 0x00417170
006a3640  83c404                    ADD ESP,0x4
006a3643  8b08                      MOV ECX,dword ptr [EAX]
006a3645  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a3648  750c                      JNZ 0x006a3656
006a364a  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a364d  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a3650  0f8497000000              JZ 0x006a36ed
006a3656  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006a365c  85c0                      TEST EAX,EAX
006a365e  0f8489000000              JZ 0x006a36ed
006a3664  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
006a366c  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
006a3674  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
006a367c  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
006a3684  e8d766dfff                CALL 0x00499d60
006a3689  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
006a3691  f30f5c8728040000          SUBSS XMM0,dword ptr [EDI + 0x428]
006a3699  e8a2f0fdff                CALL 0x00682740
006a369e  f30f108f2c040000          MOVSS XMM1,dword ptr [EDI + 0x42c]
006a36a6  0f57d2                    XORPS XMM2,XMM2
006a36a9  f30f5c0d54a4ba00          SUBSS XMM1,dword ptr [0x00baa454]
006a36b1  f30f5e0d04a8ba00          DIVSS XMM1,dword ptr [0x00baa804]
006a36b9  f30f5fca                  MAXSS XMM1,XMM2
006a36bd  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
006a36c5  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
006a36cd  f30f58ca                  ADDSS XMM1,XMM2
006a36d1  f30f59c8                  MULSS XMM1,XMM0
006a36d5  f30f598f9c030000          MULSS XMM1,dword ptr [EDI + 0x39c]
006a36dd  f30f588f28040000          ADDSS XMM1,dword ptr [EDI + 0x428]
006a36e5  f30f118f28040000          MOVSS dword ptr [EDI + 0x428],XMM1
006a36ed  68a04bc300                PUSH 0xc34ba0
006a36f2  8bd6                      MOV EDX,ESI
006a36f4  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a36fa  e8713ad7ff                CALL 0x00417170
006a36ff  83c404                    ADD ESP,0x4
006a3702  8b08                      MOV ECX,dword ptr [EAX]
006a3704  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a3707  750c                      JNZ 0x006a3715
006a3709  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a370c  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a370f  0f8495030000              JZ 0x006a3aaa
006a3715  6a0e                      PUSH 0xe
006a3717  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
006a371d  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a3723  e868581400                CALL 0x007e8f90
006a3728  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a372e  e84d591400                CALL 0x007e9080
006a3733  d80da4a7ba00              FMUL dword ptr [0x00baa7a4]
006a3739  f30f10872c040000          MOVSS XMM0,dword ptr [EDI + 0x42c]
006a3741  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a3746  d805fca6ba00              FADD dword ptr [0x00baa6fc]
006a374c  d95d8c                    FSTP dword ptr [EBP + -0x74]
006a374f  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
006a3754  0f28ca                    MOVAPS XMM1,XMM2
006a3757  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
006a375f  0f2ed1                    UCOMISS XMM2,XMM1
006a3762  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
006a3767  9f                        LAHF
006a3768  f6c444                    TEST AH,0x44
006a376b  7a1e                      JP 0x006a378b
006a376d  68d81bb800                PUSH 0xb81bd8
006a3772  6a10                      PUSH 0x10
006a3774  e847db3600                CALL 0x00a112c0
006a3779  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
006a377e  83c408                    ADD ESP,0x8
006a3781  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
006a3786  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
006a378b  f30f5cc2                  SUBSS XMM0,XMM2
006a378f  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
006a3795  f30f5cca                  SUBSS XMM1,XMM2
006a3799  8d87c4030000              LEA EAX,[EDI + 0x3c4]
006a379f  f30f5ec1                  DIVSS XMM0,XMM1
006a37a3  0f57c9                    XORPS XMM1,XMM1
006a37a6  f30f5fc1                  MAXSS XMM0,XMM1
006a37aa  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
006a37b2  f30f58c1                  ADDSS XMM0,XMM1
006a37b6  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a37bb  85c9                      TEST ECX,ECX
006a37bd  740d                      JZ 0x006a37cc
006a37bf  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
006a37c6  0f8478020000              JZ 0x006a3a44
006a37cc  a17816c700                MOV EAX,[0x00c71678]
006a37d1  f30f101de8aaba00          MOVSS XMM3,dword ptr [0x00baaae8]
006a37d9  6aff                      PUSH -0x1
006a37db  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006a37e1  8d873c030000              LEA EAX,[EDI + 0x33c]
006a37e7  50                        PUSH EAX
006a37e8  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
006a37ee  81c118120000              ADD ECX,0x1218
006a37f4  50                        PUSH EAX
006a37f5  e8966fd7ff                CALL 0x0041a790
006a37fa  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
006a3801  33c9                      XOR ECX,ECX
006a3803  f30f1005c4acba00          MOVSS XMM0,dword ptr [0x00baacc4]
006a380b  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
006a3815  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
006a381d  894d90                    MOV dword ptr [EBP + -0x70],ECX
006a3820  398d5cffffff              CMP dword ptr [EBP + 0xffffff5c],ECX
006a3826  0f86d8010000              JBE 0x006a3a04
006a382c  0f1f4000                  NOP dword ptr [EAX]
006a3830  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
006a3836  6a00                      PUSH 0x0
006a3838  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
006a383b  8bce                      MOV ECX,ESI
006a383d  e81e8d0000                CALL 0x006ac560
006a3842  84c0                      TEST AL,AL
006a3844  0f845f010000              JZ 0x006a39a9
006a384a  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
006a3850  85c9                      TEST ECX,ECX
006a3852  740e                      JZ 0x006a3862
006a3854  56                        PUSH ESI
006a3855  e846570000                CALL 0x006a8fa0
006a385a  84c0                      TEST AL,AL
006a385c  0f8547010000              JNZ 0x006a39a9
006a3862  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006a386a  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
006a3872  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
006a387a  f30f5cd0                  SUBSS XMM2,XMM0
006a387e  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
006a3886  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006a388e  f30f5cc8                  SUBSS XMM1,XMM0
006a3892  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a389a  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
006a389f  0f28c1                    MOVAPS XMM0,XMM1
006a38a2  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
006a38a7  f30f59c1                  MULSS XMM0,XMM1
006a38ab  0f28ca                    MOVAPS XMM1,XMM2
006a38ae  f30f59ca                  MULSS XMM1,XMM2
006a38b2  f30f58c1                  ADDSS XMM0,XMM1
006a38b6  e89521d9ff                CALL 0x00435a50
006a38bb  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006a38c2  7627                      JBE 0x006a38eb
006a38c4  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006a38cc  f30f5ec8                  DIVSS XMM1,XMM0
006a38d0  0f28c1                    MOVAPS XMM0,XMM1
006a38d3  f30f594584                MULSS XMM0,dword ptr [EBP + -0x7c]
006a38d8  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
006a38dd  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
006a38e2  f30f59c1                  MULSS XMM0,XMM1
006a38e6  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
006a38eb  f30f108728040000          MOVSS XMM0,dword ptr [EDI + 0x428]
006a38f3  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
006a38fb  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
006a3903  e8189cd7ff                CALL 0x0041d520
006a3908  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
006a3910  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
006a3918  e8239cd7ff                CALL 0x0041d540
006a391d  0f28c8                    MOVAPS XMM1,XMM0
006a3920  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
006a3928  f30f594d84                MULSS XMM1,dword ptr [EBP + -0x7c]
006a392d  f30f59458c                MULSS XMM0,dword ptr [EBP + -0x74]
006a3932  f30f58c8                  ADDSS XMM1,XMM0
006a3936  0f2f0d98a1ba00            COMISS XMM1,dword ptr [0x00baa198]
006a393d  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
006a3945  7662                      JBE 0x006a39a9
006a3947  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
006a394f  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
006a3957  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
006a395f  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
006a3967  f30f59c0                  MULSS XMM0,XMM0
006a396b  f30f59c9                  MULSS XMM1,XMM1
006a396f  f30f58c1                  ADDSS XMM0,XMM1
006a3973  e8d820d9ff                CALL 0x00435a50
006a3978  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006a3980  f30f5c8d34ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff34]
006a3988  f30f59c1                  MULSS XMM0,XMM1
006a398c  f30f108d6cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff6c]
006a3994  0f2fc8                    COMISS XMM1,XMM0
006a3997  7610                      JBE 0x006a39a9
006a3999  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
006a39a1  89b564ffffff              MOV dword ptr [EBP + 0xffffff64],ESI
006a39a7  eb06                      JMP 0x006a39af
006a39a9  8bb564ffffff              MOV ESI,dword ptr [EBP + 0xffffff64]
006a39af  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
006a39b2  41                        INC ECX
006a39b3  894d90                    MOV dword ptr [EBP + -0x70],ECX
006a39b6  3b8d5cffffff              CMP ECX,dword ptr [EBP + 0xffffff5c]
006a39bc  0f826efeffff              JC 0x006a3830
006a39c2  85f6                      TEST ESI,ESI
006a39c4  7438                      JZ 0x006a39fe
006a39c6  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
006a39cc  8d87c4030000              LEA EAX,[EDI + 0x3c4]
006a39d2  85c9                      TEST ECX,ECX
006a39d4  741e                      JZ 0x006a39f4
006a39d6  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
006a39dc  81c1cc030000              ADD ECX,0x3cc
006a39e2  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
006a39e8  50                        PUSH EAX
006a39e9  e822b8e2ff                CALL 0x004cf210
006a39ee  8d87c4030000              LEA EAX,[EDI + 0x3c4]
006a39f4  50                        PUSH EAX
006a39f5  8bce                      MOV ECX,ESI
006a39f7  8930                      MOV dword ptr [EAX],ESI
006a39f9  e8f2a2e2ff                CALL 0x004cdcf0
006a39fe  8db738040000              LEA ESI,[EDI + 0x438]
006a3a04  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006a3a0b  80bd50ffffff00            CMP byte ptr [EBP + 0xffffff50],0x0
006a3a12  7522                      JNZ 0x006a3a36
006a3a14  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
006a3a1b  b101                      MOV CL,0x1
006a3a1d  8b9554ffffff              MOV EDX,dword ptr [EBP + 0xffffff54]
006a3a23  6a00                      PUSH 0x0
006a3a25  6a00                      PUSH 0x0
006a3a27  e8840e3c00                CALL 0x00a648b0
006a3a2c  83c408                    ADD ESP,0x8
006a3a2f  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006a3a36  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
006a3a3b  8d87c4030000              LEA EAX,[EDI + 0x3c4]
006a3a41  0f57c9                    XORPS XMM1,XMM1
006a3a44  8b00                      MOV EAX,dword ptr [EAX]
006a3a46  85c0                      TEST EAX,EAX
006a3a48  7460                      JZ 0x006a3aaa
006a3a4a  0f2fc1                    COMISS XMM0,XMM1
006a3a4d  765b                      JBE 0x006a3aaa
006a3a4f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
006a3a57  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
006a3a5f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
006a3a67  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
006a3a6f  e8ec62dfff                CALL 0x00499d60
006a3a74  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
006a3a7c  f30f5c8728040000          SUBSS XMM0,dword ptr [EDI + 0x428]
006a3a84  e8b7ecfdff                CALL 0x00682740
006a3a89  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
006a3a8e  f30f598f9c030000          MULSS XMM1,dword ptr [EDI + 0x39c]
006a3a96  f30f59c8                  MULSS XMM1,XMM0
006a3a9a  f30f588f28040000          ADDSS XMM1,dword ptr [EDI + 0x428]
006a3aa2  f30f118f28040000          MOVSS dword ptr [EDI + 0x428],XMM1
006a3aaa  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a3ab1  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
006a3ab9  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
006a3ac1  0f84b7010000              JZ 0x006a3c7e
006a3ac7  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
006a3ace  0f84aa010000              JZ 0x006a3c7e
006a3ad4  68604bc300                PUSH 0xc34b60
006a3ad9  8bd6                      MOV EDX,ESI
006a3adb  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a3ae1  e88a36d7ff                CALL 0x00417170
006a3ae6  83c404                    ADD ESP,0x4
006a3ae9  8b08                      MOV ECX,dword ptr [EAX]
006a3aeb  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a3aee  750c                      JNZ 0x006a3afc
006a3af0  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a3af3  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a3af6  0f8482010000              JZ 0x006a3c7e
006a3afc  8bcf                      MOV ECX,EDI
006a3afe  e82de5ffff                CALL 0x006a2030
006a3b03  84c0                      TEST AL,AL
006a3b05  0f8573010000              JNZ 0x006a3c7e
006a3b0b  f6875404000001            TEST byte ptr [EDI + 0x454],0x1
006a3b12  7508                      JNZ 0x006a3b1c
006a3b14  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006a3b1c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006a3b22  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
006a3b2a  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
006a3b32  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
006a3b37  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
006a3b3f  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
006a3b47  0f28c1                    MOVAPS XMM0,XMM1
006a3b4a  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
006a3b4f  f30f59c1                  MULSS XMM0,XMM1
006a3b53  0f28ca                    MOVAPS XMM1,XMM2
006a3b56  f30f59ca                  MULSS XMM1,XMM2
006a3b5a  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
006a3b5f  f30f58c1                  ADDSS XMM0,XMM1
006a3b63  e8e81ed9ff                CALL 0x00435a50
006a3b68  0f28d8                    MOVAPS XMM3,XMM0
006a3b6b  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
006a3b72  9f                        LAHF
006a3b73  f6c444                    TEST AH,0x44
006a3b76  7a08                      JP 0x006a3b80
006a3b78  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
006a3b80  f30f104d8c                MOVSS XMM1,dword ptr [EBP + -0x74]
006a3b85  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
006a3b8a  f30f1005eca9ba00          MOVSS XMM0,dword ptr [0x00baa9ec]
006a3b92  f30f5ecb                  DIVSS XMM1,XMM3
006a3b96  f30f5ed3                  DIVSS XMM2,XMM3
006a3b9a  f30f5cc3                  SUBSS XMM0,XMM3
006a3b9e  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
006a3ba3  f30f105d88                MOVSS XMM3,dword ptr [EBP + -0x78]
006a3ba8  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
006a3bad  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
006a3bb5  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
006a3bbd  0f28c1                    MOVAPS XMM0,XMM1
006a3bc0  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
006a3bc7  0f28cb                    MOVAPS XMM1,XMM3
006a3bca  f30f59ca                  MULSS XMM1,XMM2
006a3bce  f30f59d8                  MULSS XMM3,XMM0
006a3bd2  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a3bda  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
006a3be2  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a3bea  f30f59c0                  MULSS XMM0,XMM0
006a3bee  f30f59c9                  MULSS XMM1,XMM1
006a3bf2  f30f115d88                MOVSS dword ptr [EBP + -0x78],XMM3
006a3bf7  f30f58c1                  ADDSS XMM0,XMM1
006a3bfb  e8501ed9ff                CALL 0x00435a50
006a3c00  0f28d8                    MOVAPS XMM3,XMM0
006a3c03  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
006a3c0b  f30f599d7cffffff          MULSS XMM3,dword ptr [EBP + 0xffffff7c]
006a3c13  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
006a3c19  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
006a3c1f  0f28d0                    MOVAPS XMM2,XMM0
006a3c22  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
006a3c2a  f30f595588                MULSS XMM2,dword ptr [EBP + -0x78]
006a3c2f  0f28c8                    MOVAPS XMM1,XMM0
006a3c32  50                        PUSH EAX
006a3c33  f30f594d8c                MULSS XMM1,dword ptr [EBP + -0x74]
006a3c38  f30f594584                MULSS XMM0,dword ptr [EBP + -0x7c]
006a3c3d  f30f58d9                  ADDSS XMM3,XMM1
006a3c41  f30f58d0                  ADDSS XMM2,XMM0
006a3c45  f30f119d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM3
006a3c4d  f30f11957cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM2
006a3c55  e8d6c33600                CALL 0x00a10030
006a3c5a  f30f108d34ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff34]
006a3c62  0f28c1                    MOVAPS XMM0,XMM1
006a3c65  f30f5900                  MULSS XMM0,dword ptr [EAX]
006a3c69  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
006a3c6e  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a3c76  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
006a3c7e  837f3401                  CMP dword ptr [EDI + 0x34],0x1
006a3c82  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
006a3c8a  0f8598040000              JNZ 0x006a4128
006a3c90  68a04bc300                PUSH 0xc34ba0
006a3c95  8bd6                      MOV EDX,ESI
006a3c97  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a3c9d  e8ce34d7ff                CALL 0x00417170
006a3ca2  83c404                    ADD ESP,0x4
006a3ca5  8b08                      MOV ECX,dword ptr [EAX]
006a3ca7  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a3caa  750c                      JNZ 0x006a3cb8
006a3cac  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a3caf  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a3cb2  0f8473020000              JZ 0x006a3f2b
006a3cb8  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
006a3cbf  0f85bb010000              JNZ 0x006a3e80
006a3cc5  a17816c700                MOV EAX,[0x00c71678]
006a3cca  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
006a3cd2  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a3cda  f30f101d44aaba00          MOVSS XMM3,dword ptr [0x00baaa44]
006a3ce2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006a3ce8  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
006a3cee  f30f59ca                  MULSS XMM1,XMM2
006a3cf2  81c118120000              ADD ECX,0x1218
006a3cf8  6a08                      PUSH 0x8
006a3cfa  f30f59c2                  MULSS XMM0,XMM2
006a3cfe  50                        PUSH EAX
006a3cff  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
006a3d07  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
006a3d0d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
006a3d15  50                        PUSH EAX
006a3d16  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
006a3d1e  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a3d26  e8656ad7ff                CALL 0x0041a790
006a3d2b  33c9                      XOR ECX,ECX
006a3d2d  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
006a3d34  894d8c                    MOV dword ptr [EBP + -0x74],ECX
006a3d37  398d34ffffff              CMP dword ptr [EBP + 0xffffff34],ECX
006a3d3d  0f8602010000              JBE 0x006a3e45
006a3d43  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
006a3d49  6a00                      PUSH 0x0
006a3d4b  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
006a3d4e  8bce                      MOV ECX,ESI
006a3d50  e80b880000                CALL 0x006ac560
006a3d55  84c0                      TEST AL,AL
006a3d57  0f84d5000000              JZ 0x006a3e32
006a3d5d  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
006a3d63  85c9                      TEST ECX,ECX
006a3d65  7419                      JZ 0x006a3d80
006a3d67  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
006a3d6d  8b558c                    MOV EDX,dword ptr [EBP + -0x74]
006a3d70  ff3490                    PUSH dword ptr [EAX + EDX*0x4]
006a3d73  e828520000                CALL 0x006a8fa0
006a3d78  84c0                      TEST AL,AL
006a3d7a  0f85b2000000              JNZ 0x006a3e32
006a3d80  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
006a3d86  2510000020                AND EAX,0x20000010
006a3d8b  83c800                    OR EAX,0x0
006a3d8e  0f859e000000              JNZ 0x006a3e32
006a3d94  e8c7b10400                CALL 0x006eef60
006a3d99  83e001                    AND EAX,0x1
006a3d9c  0f8490000000              JZ 0x006a3e32
006a3da2  ff7720                    PUSH dword ptr [EDI + 0x20]
006a3da5  8bcf                      MOV ECX,EDI
006a3da7  6a05                      PUSH 0x5
006a3da9  e862890000                CALL 0x006ac710
006a3dae  84c0                      TEST AL,AL
006a3db0  0f847c000000              JZ 0x006a3e32
006a3db6  a17816c700                MOV EAX,[0x00c71678]
006a3dbb  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
006a3dc1  6a00                      PUSH 0x0
006a3dc3  6a00                      PUSH 0x0
006a3dc5  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006a3dcb  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
006a3dd1  6a00                      PUSH 0x0
006a3dd3  6a00                      PUSH 0x0
006a3dd5  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
006a3ddb  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
006a3de1  6a01                      PUSH 0x1
006a3de3  50                        PUSH EAX
006a3de4  8d873c030000              LEA EAX,[EDI + 0x33c]
006a3dea  899548ffffff              MOV dword ptr [EBP + 0xffffff48],EDX
006a3df0  50                        PUSH EAX
006a3df1  e8facf1400                CALL 0x007f0df0
006a3df6  84c0                      TEST AL,AL
006a3df8  7438                      JZ 0x006a3e32
006a3dfa  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
006a3e00  8d87c4030000              LEA EAX,[EDI + 0x3c4]
006a3e06  85c9                      TEST ECX,ECX
006a3e08  741e                      JZ 0x006a3e28
006a3e0a  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
006a3e10  81c1cc030000              ADD ECX,0x3cc
006a3e16  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
006a3e1c  50                        PUSH EAX
006a3e1d  e8eeb3e2ff                CALL 0x004cf210
006a3e22  8d87c4030000              LEA EAX,[EDI + 0x3c4]
006a3e28  50                        PUSH EAX
006a3e29  8bce                      MOV ECX,ESI
006a3e2b  8930                      MOV dword ptr [EAX],ESI
006a3e2d  e8be9ee2ff                CALL 0x004cdcf0
006a3e32  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
006a3e35  41                        INC ECX
006a3e36  894d8c                    MOV dword ptr [EBP + -0x74],ECX
006a3e39  3b8d34ffffff              CMP ECX,dword ptr [EBP + 0xffffff34]
006a3e3f  0f82fefeffff              JC 0x006a3d43
006a3e45  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006a3e4c  80bd28ffffff00            CMP byte ptr [EBP + 0xffffff28],0x0
006a3e53  0f85cc000000              JNZ 0x006a3f25
006a3e59  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
006a3e60  b101                      MOV CL,0x1
006a3e62  8b952cffffff              MOV EDX,dword ptr [EBP + 0xffffff2c]
006a3e68  6a00                      PUSH 0x0
006a3e6a  6a00                      PUSH 0x0
006a3e6c  e83f0a3c00                CALL 0x00a648b0
006a3e71  83c408                    ADD ESP,0x8
006a3e74  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006a3e7b  e9a5000000                JMP 0x006a3f25
006a3e80  8bcf                      MOV ECX,EDI
006a3e82  e8a9e1ffff                CALL 0x006a2030
006a3e87  84c0                      TEST AL,AL
006a3e89  0f8596000000              JNZ 0x006a3f25
006a3e8f  e8ccb00400                CALL 0x006eef60
006a3e94  a801                      TEST AL,0x1
006a3e96  0f8589000000              JNZ 0x006a3f25
006a3e9c  8b87c4030000              MOV EAX,dword ptr [EDI + 0x3c4]
006a3ea2  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
006a3ea8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006a3eb0  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
006a3eb8  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
006a3ec0  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006a3ec8  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
006a3ed0  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
006a3ed6  50                        PUSH EAX
006a3ed7  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a3edf  e84cc13600                CALL 0x00a10030
006a3ee4  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a3eec  f30f1008                  MOVSS XMM1,dword ptr [EAX]
006a3ef0  f30f590de0a4ba00          MULSS XMM1,dword ptr [0x00baa4e0]
006a3ef8  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
006a3efd  f30f591de0a4ba00          MULSS XMM3,dword ptr [0x00baa4e0]
006a3f05  f30f5cc1                  SUBSS XMM0,XMM1
006a3f09  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a3f11  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a3f19  f30f5cc3                  SUBSS XMM0,XMM3
006a3f1d  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a3f25  8db738040000              LEA ESI,[EDI + 0x438]
006a3f2b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006a3f32  0f85f0010000              JNZ 0x006a4128
006a3f38  68f045c300                PUSH 0xc345f0
006a3f3d  8bd6                      MOV EDX,ESI
006a3f3f  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a3f45  e82632d7ff                CALL 0x00417170
006a3f4a  83c404                    ADD ESP,0x4
006a3f4d  8b08                      MOV ECX,dword ptr [EAX]
006a3f4f  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a3f52  750c                      JNZ 0x006a3f60
006a3f54  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a3f57  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a3f5a  0f84c8010000              JZ 0x006a4128
006a3f60  6a00                      PUSH 0x0
006a3f62  6a07                      PUSH 0x7
006a3f64  8bcf                      MOV ECX,EDI
006a3f66  e8a5870000                CALL 0x006ac710
006a3f6b  84c0                      TEST AL,AL
006a3f6d  0f84b5010000              JZ 0x006a4128
006a3f73  a17816c700                MOV EAX,[0x00c71678]
006a3f78  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006a3f7f  7c0f                      JL 0x006a3f90
006a3f81  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
006a3f89  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a3f8e  eb29                      JMP 0x006a3fb9
006a3f90  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
006a3f98  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
006a3fa0  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
006a3fa8  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
006a3fb0  f30f5fc8                  MAXSS XMM1,XMM0
006a3fb4  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
006a3fb9  e8a2af0400                CALL 0x006eef60
006a3fbe  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a3fc4  6a00                      PUSH 0x0
006a3fc6  68acd5c500                PUSH 0xc5d5ac
006a3fcb  68dcd5c500                PUSH 0xc5d5dc
006a3fd0  6a00                      PUSH 0x0
006a3fd2  50                        PUSH EAX
006a3fd3  6a00                      PUSH 0x0
006a3fd5  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
006a3fdb  8d873c030000              LEA EAX,[EDI + 0x33c]
006a3fe1  6840b6c700                PUSH 0xc7b640
006a3fe6  50                        PUSH EAX
006a3fe7  6a2e                      PUSH 0x2e
006a3fe9  68e8030000                PUSH 0x3e8
006a3fee  e82d4bd8ff                CALL 0x00428b20
006a3ff3  50                        PUSH EAX
006a3ff4  e8b8c84400                CALL 0x00af08b1
006a3ff9  83c414                    ADD ESP,0x14
006a3ffc  8bf0                      MOV ESI,EAX
006a3ffe  e85daf0400                CALL 0x006eef60
006a4003  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006a400b  6a00                      PUSH 0x0
006a400d  6a64                      PUSH 0x64
006a400f  660f6ec0                  MOVD XMM0,EAX
006a4013  0f28d3                    MOVAPS XMM2,XMM3
006a4016  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a401a  c1e81f                    SHR EAX,0x1f
006a401d  6a00                      PUSH 0x0
006a401f  51                        PUSH ECX
006a4020  8d4dc0                    LEA ECX,[EBP + -0x40]
006a4023  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a402c  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a4033  660f5ac8                  CVTPD2PS XMM1,XMM0
006a4037  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006a403f  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
006a4047  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
006a404f  0f28c1                    MOVAPS XMM0,XMM1
006a4052  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006a405a  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006a4062  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
006a406a  0f57c9                    XORPS XMM1,XMM1
006a406d  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
006a4075  e8561ad9ff                CALL 0x00435ad0
006a407a  8b16                      MOV EDX,dword ptr [ESI]
006a407c  8bce                      MOV ECX,ESI
006a407e  6a01                      PUSH 0x1
006a4080  6a00                      PUSH 0x0
006a4082  68ff000000                PUSH 0xff
006a4087  6aff                      PUSH -0x1
006a4089  50                        PUSH EAX
006a408a  ff523c                    CALL dword ptr [EDX + 0x3c]
006a408d  8b06                      MOV EAX,dword ptr [ESI]
006a408f  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
006a4094  51                        PUSH ECX
006a4095  8bce                      MOV ECX,ESI
006a4097  f30f110c24                MOVSS dword ptr [ESP],XMM1
006a409c  ff5040                    CALL dword ptr [EAX + 0x40]
006a409f  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
006a40a5  85c9                      TEST ECX,ECX
006a40a7  746c                      JZ 0x006a4115
006a40a9  83792801                  CMP dword ptr [ECX + 0x28],0x1
006a40ad  7566                      JNZ 0x006a4115
006a40af  6a47                      PUSH 0x47
006a40b1  e82a761200                CALL 0x007cb6e0
006a40b6  83f801                    CMP EAX,0x1
006a40b9  7e5a                      JLE 0x006a4115
006a40bb  f30f101528a5ba00          MOVSS XMM2,dword ptr [0x00baa528]
006a40c3  0f28ca                    MOVAPS XMM1,XMM2
006a40c6  83f802                    CMP EAX,0x2
006a40c9  7e27                      JLE 0x006a40f2
006a40cb  660f6e865c040000          MOVD XMM0,dword ptr [ESI + 0x45c]
006a40d3  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006a40db  0f5bc0                    CVTDQ2PS XMM0,XMM0
006a40de  f30f59c2                  MULSS XMM0,XMM2
006a40e2  f30f2cc0                  CVTTSS2SI EAX,XMM0
006a40e6  89865c040000              MOV dword ptr [ESI + 0x45c],EAX
006a40ec  898660040000              MOV dword ptr [ESI + 0x460],EAX
006a40f2  0f28c1                    MOVAPS XMM0,XMM1
006a40f5  f30f598ee8000000          MULSS XMM1,dword ptr [ESI + 0xe8]
006a40fd  f30f5986e4000000          MULSS XMM0,dword ptr [ESI + 0xe4]
006a4105  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
006a410d  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
006a4115  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
006a4118  8bce                      MOV ECX,ESI
006a411a  894634                    MOV dword ptr [ESI + 0x34],EAX
006a411d  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
006a4120  894638                    MOV dword ptr [ESI + 0x38],EAX
006a4123  8b06                      MOV EAX,dword ptr [ESI]
006a4125  ff500c                    CALL dword ptr [EAX + 0xc]
006a4128  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a412b  83f813                    CMP EAX,0x13
006a412e  0f8497000000              JZ 0x006a41cb
006a4134  83f814                    CMP EAX,0x14
006a4137  0f848e000000              JZ 0x006a41cb
006a413d  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
006a4145  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006a414c  7309                      JNC 0x006a4157
006a414e  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a4155  7574                      JNZ 0x006a41cb
006a4157  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
006a415f  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a4167  f30f591518a4ba00          MULSS XMM2,dword ptr [0x00baa418]
006a416f  f30f590d18a4ba00          MULSS XMM1,dword ptr [0x00baa418]
006a4177  0f28c2                    MOVAPS XMM0,XMM2
006a417a  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
006a4182  f30f59c2                  MULSS XMM0,XMM2
006a4186  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
006a418e  f30f59c9                  MULSS XMM1,XMM1
006a4192  f30f58c1                  ADDSS XMM0,XMM1
006a4196  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006a419e  0f2fc8                    COMISS XMM1,XMM0
006a41a1  7628                      JBE 0x006a41cb
006a41a3  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a41ab  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
006a41b3  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006a41bb  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
006a41c3  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a41cb  8db738040000              LEA ESI,[EDI + 0x438]
006a41d1  683049c300                PUSH 0xc34930
006a41d6  8bd6                      MOV EDX,ESI
006a41d8  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a41de  e88d2fd7ff                CALL 0x00417170
006a41e3  83c404                    ADD ESP,0x4
006a41e6  8b08                      MOV ECX,dword ptr [EAX]
006a41e8  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a41eb  7508                      JNZ 0x006a41f5
006a41ed  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a41f0  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a41f3  743a                      JZ 0x006a422f
006a41f5  8b8750040000              MOV EAX,dword ptr [EDI + 0x450]
006a41fb  85c0                      TEST EAX,EAX
006a41fd  7430                      JZ 0x006a422f
006a41ff  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
006a4207  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
006a420f  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
006a4217  f30f590de0a3ba00          MULSS XMM1,dword ptr [0x00baa3e0]
006a421f  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
006a4227  f30f118864030000          MOVSS dword ptr [EAX + 0x364],XMM1
006a422f  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
006a4235  85c0                      TEST EAX,EAX
006a4237  0f8ebe010000              JLE 0x006a43fb
006a423d  837f3401                  CMP dword ptr [EDI + 0x34],0x1
006a4241  7526                      JNZ 0x006a4269
006a4243  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
006a4249  85c0                      TEST EAX,EAX
006a424b  741c                      JZ 0x006a4269
006a424d  0508150000                ADD EAX,0x1508
006a4252  6889000000                PUSH 0x89
006a4257  8bc8                      MOV ECX,EAX
006a4259  894590                    MOV dword ptr [EBP + -0x70],EAX
006a425c  e88fc32800                CALL 0x009305f0
006a4261  84c0                      TEST AL,AL
006a4263  0f85a3010000              JNZ 0x006a440c
006a4269  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a426c  83f813                    CMP EAX,0x13
006a426f  7405                      JZ 0x006a4276
006a4271  83f814                    CMP EAX,0x14
006a4274  7512                      JNZ 0x006a4288
006a4276  6800000002                PUSH 0x2000000
006a427b  6a00                      PUSH 0x0
006a427d  8bcf                      MOV ECX,EDI
006a427f  e8ac31d7ff                CALL 0x00417430
006a4284  84c0                      TEST AL,AL
006a4286  7506                      JNZ 0x006a428e
006a4288  ff8f10040000              DEC dword ptr [EDI + 0x410]
006a428e  68204bc300                PUSH 0xc34b20
006a4293  8bd6                      MOV EDX,ESI
006a4295  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a429b  e8d02ed7ff                CALL 0x00417170
006a42a0  83c404                    ADD ESP,0x4
006a42a3  8b08                      MOV ECX,dword ptr [EAX]
006a42a5  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a42a8  7508                      JNZ 0x006a42b2
006a42aa  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a42ad  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a42b0  7426                      JZ 0x006a42d8
006a42b2  f30f101de0aaba00          MOVSS XMM3,dword ptr [0x00baaae0]
006a42ba  8d873c030000              LEA EAX,[EDI + 0x33c]
006a42c0  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
006a42c8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a42ce  6a00                      PUSH 0x0
006a42d0  6a00                      PUSH 0x0
006a42d2  50                        PUSH EAX
006a42d3  e8b8180600                CALL 0x00705b90
006a42d8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a42de  6a3f                      PUSH 0x3f
006a42e0  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
006a42e6  e8c57cdaff                CALL 0x0044bfb0
006a42eb  84c0                      TEST AL,AL
006a42ed  0f84e70f0000              JZ 0x006a52da
006a42f3  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
006a42fa  0f85da0f0000              JNZ 0x006a52da
006a4300  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a4303  83f803                    CMP EAX,0x3
006a4306  7438                      JZ 0x006a4340
006a4308  83f804                    CMP EAX,0x4
006a430b  7433                      JZ 0x006a4340
006a430d  83f808                    CMP EAX,0x8
006a4310  742e                      JZ 0x006a4340
006a4312  83f812                    CMP EAX,0x12
006a4315  7429                      JZ 0x006a4340
006a4317  83f811                    CMP EAX,0x11
006a431a  0f85ba0f0000              JNZ 0x006a52da
006a4320  837f3401                  CMP dword ptr [EDI + 0x34],0x1
006a4324  0f84b00f0000              JZ 0x006a52da
006a432a  6a00                      PUSH 0x0
006a432c  6800000020                PUSH 0x20000000
006a4331  8bcf                      MOV ECX,EDI
006a4333  e8f830d7ff                CALL 0x00417430
006a4338  84c0                      TEST AL,AL
006a433a  0f859a0f0000              JNZ 0x006a52da
006a4340  8b07                      MOV EAX,dword ptr [EDI]
006a4342  8bcf                      MOV ECX,EDI
006a4344  ff5028                    CALL dword ptr [EAX + 0x28]
006a4347  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006a434f  51                        PUSH ECX
006a4350  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a4357  6a00                      PUSH 0x0
006a4359  6a02                      PUSH 0x2
006a435b  6884030000                PUSH 0x384
006a4360  e87b252b00                CALL 0x009568e0
006a4365  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a4368  be01000000                MOV ESI,0x1
006a436d  83f804                    CMP EAX,0x4
006a4370  7505                      JNZ 0x006a4377
006a4372  8d70fe                    LEA ESI,[EAX + -0x2]
006a4375  eb15                      JMP 0x006a438c
006a4377  83f812                    CMP EAX,0x12
006a437a  7505                      JNZ 0x006a4381
006a437c  8d70f2                    LEA ESI,[EAX + -0xe]
006a437f  eb0b                      JMP 0x006a438c
006a4381  83f811                    CMP EAX,0x11
006a4384  b907000000                MOV ECX,0x7
006a4389  0f44f1                    CMOVZ ESI,ECX
006a438c  e8cfab0400                CALL 0x006eef60
006a4391  50                        PUSH EAX
006a4392  56                        PUSH ESI
006a4393  6a00                      PUSH 0x0
006a4395  8d8760030000              LEA EAX,[EDI + 0x360]
006a439b  50                        PUSH EAX
006a439c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006a43a2  51                        PUSH ECX
006a43a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a43a9  6a28                      PUSH 0x28
006a43ab  6a05                      PUSH 0x5
006a43ad  e86e47d8ff                CALL 0x00428b20
006a43b2  8b487c                    MOV ECX,dword ptr [EAX + 0x7c]
006a43b5  85c9                      TEST ECX,ECX
006a43b7  7415                      JZ 0x006a43ce
006a43b9  8b4930                    MOV ECX,dword ptr [ECX + 0x30]
006a43bc  83e908                    SUB ECX,0x8
006a43bf  660f6ec9                  MOVD XMM1,ECX
006a43c3  8d4878                    LEA ECX,[EAX + 0x78]
006a43c6  0f5bc9                    CVTDQ2PS XMM1,XMM1
006a43c9  e8324ad6ff                CALL 0x00408e00
006a43ce  e88dab0400                CALL 0x006eef60
006a43d3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a43d9  50                        PUSH EAX
006a43da  6a01                      PUSH 0x1
006a43dc  6a00                      PUSH 0x0
006a43de  6840b6c700                PUSH 0xc7b640
006a43e3  8d873c030000              LEA EAX,[EDI + 0x33c]
006a43e9  50                        PUSH EAX
006a43ea  6a0f                      PUSH 0xf
006a43ec  68e8030000                PUSH 0x3e8
006a43f1  e82a47d8ff                CALL 0x00428b20
006a43f6  e941160000                JMP 0x006a5a3c
006a43fb  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
006a4401  8d8808150000              LEA ECX,[EAX + 0x1508]
006a4407  894d90                    MOV dword ptr [EBP + -0x70],ECX
006a440a  eb06                      JMP 0x006a4412
006a440c  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
006a4412  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a4419  7531                      JNZ 0x006a444c
006a441b  85c0                      TEST EAX,EAX
006a441d  742d                      JZ 0x006a444c
006a441f  6a00                      PUSH 0x0
006a4421  6889000000                PUSH 0x89
006a4426  8bc8                      MOV ECX,EAX
006a4428  e8b3c20c00                CALL 0x007706e0
006a442d  84c0                      TEST AL,AL
006a442f  741b                      JZ 0x006a444c
006a4431  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
006a4434  6889000000                PUSH 0x89
006a4439  e8b2c12800                CALL 0x009305f0
006a443e  84c0                      TEST AL,AL
006a4440  750a                      JNZ 0x006a444c
006a4442  837f3401                  CMP dword ptr [EDI + 0x34],0x1
006a4446  0f848e0e0000              JZ 0x006a52da
006a444c  0f100e                    MOVUPS XMM1,xmmword ptr [ESI]
006a444f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a4452  0f118d70ffffff            MOVUPS xmmword ptr [EBP + 0xffffff70],XMM1
006a4459  83f811                    CMP EAX,0x11
006a445c  7405                      JZ 0x006a4463
006a445e  83f814                    CMP EAX,0x14
006a4461  753d                      JNZ 0x006a44a0
006a4463  a1d047c300                MOV EAX,[0x00c347d0]
006a4468  098570ffffff              OR dword ptr [EBP + 0xffffff70],EAX
006a446e  a1d447c300                MOV EAX,[0x00c347d4]
006a4473  098574ffffff              OR dword ptr [EBP + 0xffffff74],EAX
006a4479  a1d847c300                MOV EAX,[0x00c347d8]
006a447e  098578ffffff              OR dword ptr [EBP + 0xffffff78],EAX
006a4484  a1dc47c300                MOV EAX,[0x00c347dc]
006a4489  09857cffffff              OR dword ptr [EBP + 0xffffff7c],EAX
006a448f  0f108d70ffffff            MOVUPS XMM1,xmmword ptr [EBP + 0xffffff70]
006a4496  c7875804000005000000      MOV dword ptr [EDI + 0x458],0x5
006a44a0  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a44a7  b804000000                MOV EAX,0x4
006a44ac  7505                      JNZ 0x006a44b3
006a44ae  b804000040                MOV EAX,0x40000004
006a44b3  f30f10874c040000          MOVSS XMM0,dword ptr [EDI + 0x44c]
006a44bb  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006a44c1  6a00                      PUSH 0x0
006a44c3  6a00                      PUSH 0x0
006a44c5  50                        PUSH EAX
006a44c6  6a01                      PUSH 0x1
006a44c8  51                        PUSH ECX
006a44c9  f30f110424                MOVSS dword ptr [ESP],XMM0
006a44ce  8d87f0000000              LEA EAX,[EDI + 0xf0]
006a44d4  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
006a44dc  57                        PUSH EDI
006a44dd  50                        PUSH EAX
006a44de  83ec10                    SUB ESP,0x10
006a44e1  898d48ffffff              MOV dword ptr [EBP + 0xffffff48],ECX
006a44e7  8bc4                      MOV EAX,ESP
006a44e9  51                        PUSH ECX
006a44ea  0f1108                    MOVUPS xmmword ptr [EAX],XMM1
006a44ed  f30f110424                MOVSS dword ptr [ESP],XMM0
006a44f2  51                        PUSH ECX
006a44f3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a44f9  e862bb0500                CALL 0x00700060
006a44fe  83bd60ffffff00            CMP dword ptr [EBP + 0xffffff60],0x0
006a4505  7409                      JZ 0x006a4510
006a4507  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
006a450e  eb06                      JMP 0x006a4516
006a4510  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a4513  894588                    MOV dword ptr [EBP + -0x78],EAX
006a4516  687045c300                PUSH 0xc34570
006a451b  8bd6                      MOV EDX,ESI
006a451d  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a4523  e8482cd7ff                CALL 0x00417170
006a4528  83c404                    ADD ESP,0x4
006a452b  8b08                      MOV ECX,dword ptr [EAX]
006a452d  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a4530  750c                      JNZ 0x006a453e
006a4532  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a4535  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a4538  0f843c030000              JZ 0x006a487a
006a453e  e81daa0400                CALL 0x006eef60
006a4543  83e001                    AND EAX,0x1
006a4546  83c004                    ADD EAX,0x4
006a4549  89458c                    MOV dword ptr [EBP + -0x74],EAX
006a454c  0f1f4000                  NOP dword ptr [EAX]
006a4550  e80baa0400                CALL 0x006eef60
006a4555  660f6ec0                  MOVD XMM0,EAX
006a4559  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a455d  c1e81f                    SHR EAX,0x1f
006a4560  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a4569  660f5ac0                  CVTPD2PS XMM0,XMM0
006a456d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006a4575  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
006a457d  f30f58c0                  ADDSS XMM0,XMM0
006a4581  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a4589  e8b28fd7ff                CALL 0x0041d540
006a458e  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
006a4593  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
006a459b  e8808fd7ff                CALL 0x0041d520
006a45a0  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
006a45a8  e8b3a90400                CALL 0x006eef60
006a45ad  8bbfc8030000              MOV EDI,dword ptr [EDI + 0x3c8]
006a45b3  8bf0                      MOV ESI,EAX
006a45b5  e8a6a90400                CALL 0x006eef60
006a45ba  660f6ec8                  MOVD XMM1,EAX
006a45be  f30fe6c9                  CVTDQ2PD XMM1,XMM1
006a45c2  c1e81f                    SHR EAX,0x1f
006a45c5  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
006a45ce  660f5ac9                  CVTPD2PS XMM1,XMM1
006a45d2  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006a45da  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
006a45e2  f30f580dfca6ba00          ADDSS XMM1,dword ptr [0x00baa6fc]
006a45ea  0f28c1                    MOVAPS XMM0,XMM1
006a45ed  f30f598d6cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff6c]
006a45f5  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
006a45fa  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
006a4602  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
006a460a  e851a90400                CALL 0x006eef60
006a460f  6a00                      PUSH 0x0
006a4611  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a4617  6838d8c500                PUSH 0xc5d838
006a461c  660f6ec0                  MOVD XMM0,EAX
006a4620  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a4624  c1e81f                    SHR EAX,0x1f
006a4627  68dcd5c500                PUSH 0xc5d5dc
006a462c  6a00                      PUSH 0x0
006a462e  56                        PUSH ESI
006a462f  6a00                      PUSH 0x0
006a4631  57                        PUSH EDI
006a4632  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a463b  8b8548ffffff              MOV EAX,dword ptr [EBP + 0xffffff48]
006a4641  8bbd40ffffff              MOV EDI,dword ptr [EBP + 0xffffff40]
006a4647  660f5ac8                  CVTPD2PS XMM1,XMM0
006a464b  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006a4653  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
006a465b  0f28c1                    MOVAPS XMM0,XMM1
006a465e  f30f598d6cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff6c]
006a4666  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
006a466b  f30f5800                  ADDSS XMM0,dword ptr [EAX]
006a466f  8b8540ffffff              MOV EAX,dword ptr [EBP + 0xffffff40]
006a4675  f30f588840030000          ADDSS XMM1,dword ptr [EAX + 0x340]
006a467d  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
006a4683  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
006a468b  50                        PUSH EAX
006a468c  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
006a4692  50                        PUSH EAX
006a4693  ff7588                    PUSH dword ptr [EBP + -0x78]
006a4696  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
006a469e  ff7728                    PUSH dword ptr [EDI + 0x28]
006a46a1  e87a44d8ff                CALL 0x00428b20
006a46a6  50                        PUSH EAX
006a46a7  e805c24400                CALL 0x00af08b1
006a46ac  8a8f48040000              MOV CL,byte ptr [EDI + 0x448]
006a46b2  8bf0                      MOV ESI,EAX
006a46b4  83c414                    ADD ESP,0x14
006a46b7  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
006a46bd  888e48040000              MOV byte ptr [ESI + 0x448],CL
006a46c3  8b4f34                    MOV ECX,dword ptr [EDI + 0x34]
006a46c6  894e34                    MOV dword ptr [ESI + 0x34],ECX
006a46c9  8b4f38                    MOV ECX,dword ptr [EDI + 0x38]
006a46cc  894e38                    MOV dword ptr [ESI + 0x38],ECX
006a46cf  b97045c300                MOV ECX,0xc34570
006a46d4  50                        PUSH EAX
006a46d5  e826dbeeff                CALL 0x00592200
006a46da  50                        PUSH EAX
006a46db  8d9738040000              LEA EDX,[EDI + 0x438]
006a46e1  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
006a46e7  e8842ad7ff                CALL 0x00417170
006a46ec  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006a46f4  83c404                    ADD ESP,0x4
006a46f7  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
006a46fa  c6866304000001            MOV byte ptr [ESI + 0x463],0x1
006a4701  6aff                      PUSH -0x1
006a4703  0f118638040000            MOVUPS xmmword ptr [ESI + 0x438],XMM0
006a470a  f30f108734040000          MOVSS XMM0,dword ptr [EDI + 0x434]
006a4712  f30f59c2                  MULSS XMM0,XMM2
006a4716  f30f118634040000          MOVSS dword ptr [ESI + 0x434],XMM0
006a471e  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
006a4726  f30f59c2                  MULSS XMM0,XMM2
006a472a  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
006a4732  f30f10874c040000          MOVSS XMM0,dword ptr [EDI + 0x44c]
006a473a  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
006a4742  f30f11864c040000          MOVSS dword ptr [ESI + 0x44c],XMM0
006a474a  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
006a4752  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
006a4759  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
006a4761  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
006a4768  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
006a4770  ffb534ffffff              PUSH dword ptr [EBP + 0xffffff34]
006a4776  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
006a477e  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
006a4786  ffb530ffffff              PUSH dword ptr [EBP + 0xffffff30]
006a478c  f30f59c2                  MULSS XMM0,XMM2
006a4790  51                        PUSH ECX
006a4791  8bce                      MOV ECX,ESI
006a4793  f30f110424                MOVSS dword ptr [ESP],XMM0
006a4798  e8037b0000                CALL 0x006ac2a0
006a479d  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
006a47a0  83f813                    CMP EAX,0x13
006a47a3  7434                      JZ 0x006a47d9
006a47a5  83f814                    CMP EAX,0x14
006a47a8  742f                      JZ 0x006a47d9
006a47aa  e8b1a70400                CALL 0x006eef60
006a47af  660f6ec0                  MOVD XMM0,EAX
006a47b3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a47b7  c1e81f                    SHR EAX,0x1f
006a47ba  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a47c3  660f5ac0                  CVTPD2PS XMM0,XMM0
006a47c7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006a47cf  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006a47d7  eb37                      JMP 0x006a4810
006a47d9  e882a70400                CALL 0x006eef60
006a47de  c786200400006666a63f      MOV dword ptr [ESI + 0x420],0x3fa66666
006a47e8  660f6ec0                  MOVD XMM0,EAX
006a47ec  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a47f0  c1e81f                    SHR EAX,0x1f
006a47f3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a47fc  660f5ac0                  CVTPD2PS XMM0,XMM0
006a4800  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006a4808  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
006a4810  f30f100d84adba00          MOVSS XMM1,dword ptr [0x00baad84]
006a4818  8d8edc030000              LEA ECX,[ESI + 0x3dc]
006a481e  f30f5cc8                  SUBSS XMM1,XMM0
006a4822  8bc6                      MOV EAX,ESI
006a4824  6a0e                      PUSH 0xe
006a4826  f30f11881c040000          MOVSS dword ptr [EAX + 0x41c],XMM1
006a482e  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
006a4838  c78650030000000040c0      MOV dword ptr [ESI + 0x350],0xc0400000
006a4842  e8d9471400                CALL 0x007e9020
006a4847  818e6801000000000004      OR dword ptr [ESI + 0x168],0x4000000
006a4851  83c00a                    ADD EAX,0xa
006a4854  818e6c01000000040000      OR dword ptr [ESI + 0x16c],0x400
006a485e  836d8c01                  SUB dword ptr [EBP + -0x74],0x1
006a4862  898610040000              MOV dword ptr [ESI + 0x410],EAX
006a4868  898614040000              MOV dword ptr [ESI + 0x414],EAX
006a486e  0f85dcfcffff              JNZ 0x006a4550
006a4874  8db738040000              LEA ESI,[EDI + 0x438]
006a487a  684046c300                PUSH 0xc34640
006a487f  8bd6                      MOV EDX,ESI
006a4881  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
006a4887  e8e428d7ff                CALL 0x00417170
006a488c  83c404                    ADD ESP,0x4
006a488f  8b08                      MOV ECX,dword ptr [EAX]
006a4891  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a4894  750c                      JNZ 0x006a48a2
006a4896  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a4899  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a489c  0f8440020000              JZ 0x006a4ae2
006a48a2  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
006a48aa  8db73c030000              LEA ESI,[EDI + 0x33c]
006a48b0  0f2f8734040000            COMISS XMM0,dword ptr [EDI + 0x434]
006a48b7  727f                      JC 0x006a4938
006a48b9  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006a48bf  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a48c5  f30f7e0564f5b100          MOVQ XMM0,qword ptr [0x00b1f564]
006a48cd  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
006a48d3  a16cf5b100                MOV EAX,[0x00b1f56c]
006a48d8  660fd68554ffffff          MOVQ qword ptr [EBP + 0xffffff54],XMM0
006a48e0  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
006a48e6  e805481400                CALL 0x007e90f0
006a48eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a48f1  50                        PUSH EAX
006a48f2  6a01                      PUSH 0x1
006a48f4  ffb560ffffff              PUSH dword ptr [EBP + 0xffffff60]
006a48fa  6840b6c700                PUSH 0xc7b640
006a48ff  56                        PUSH ESI
006a4900  68bd000000                PUSH 0xbd
006a4905  68e8030000                PUSH 0x3e8
006a490a  e81142d8ff                CALL 0x00428b20
006a490f  8bf0                      MOV ESI,EAX
006a4911  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
006a4915  7410                      JZ 0x006a4927
006a4917  8b567c                    MOV EDX,dword ptr [ESI + 0x7c]
006a491a  8d4e78                    LEA ECX,[ESI + 0x78]
006a491d  8b5230                    MOV EDX,dword ptr [EDX + 0x30]
006a4920  4a                        DEC EDX
006a4921  52                        PUSH EDX
006a4922  e8d943d6ff                CALL 0x00408d00
006a4927  f30f108f34040000          MOVSS XMM1,dword ptr [EDI + 0x434]
006a492f  f30f58c9                  ADDSS XMM1,XMM1
006a4933  e980010000                JMP 0x006a4ab8
006a4938  e823a60400                CALL 0x006eef60
006a493d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
006a4943  8d4d90                    LEA ECX,[EBP + -0x70]
006a4946  c745902c000000            MOV dword ptr [EBP + -0x70],0x2c
006a494d  660f6ec0                  MOVD XMM0,EAX
006a4951  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a4955  c1e81f                    SHR EAX,0x1f
006a4958  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a4961  660f5ac0                  CVTPD2PS XMM0,XMM0
006a4965  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006a496d  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
006a4975  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
006a497d  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a4985  e8f61d2b00                CALL 0x00956780
006a498a  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
006a4992  83ec08                    SUB ESP,0x8
006a4995  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006a499d  f30f110424                MOVSS dword ptr [ESP],XMM0
006a49a2  6a00                      PUSH 0x0
006a49a4  6a02                      PUSH 0x2
006a49a6  51                        PUSH ECX
006a49a7  c704243333333f            MOV dword ptr [ESP],0x3f333333
006a49ae  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
006a49b4  ff7590                    PUSH dword ptr [EBP + -0x70]
006a49b7  e874922800                CALL 0x0092dc30
006a49bc  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006a49c2  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a49c8  f30f7e0564f5b100          MOVQ XMM0,qword ptr [0x00b1f564]
006a49d0  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
006a49d6  a16cf5b100                MOV EAX,[0x00b1f56c]
006a49db  660fd68554ffffff          MOVQ qword ptr [EBP + 0xffffff54],XMM0
006a49e3  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
006a49e9  e802471400                CALL 0x007e90f0
006a49ee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a49f4  50                        PUSH EAX
006a49f5  6a01                      PUSH 0x1
006a49f7  ffb560ffffff              PUSH dword ptr [EBP + 0xffffff60]
006a49fd  8d873c030000              LEA EAX,[EDI + 0x33c]
006a4a03  6840b6c700                PUSH 0xc7b640
006a4a08  50                        PUSH EAX
006a4a09  68ba000000                PUSH 0xba
006a4a0e  68e8030000                PUSH 0x3e8
006a4a13  e80841d8ff                CALL 0x00428b20
006a4a18  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a4a1f  8bf0                      MOV ESI,EAX
006a4a21  b8b4000000                MOV EAX,0xb4
006a4a26  b968010000                MOV ECX,0x168
006a4a2b  0f45c8                    CMOVNZ ECX,EAX
006a4a2e  51                        PUSH ECX
006a4a2f  f30f108688030000          MOVSS XMM0,dword ptr [ESI + 0x388]
006a4a37  8b16                      MOV EDX,dword ptr [ESI]
006a4a39  898e5c040000              MOV dword ptr [ESI + 0x45c],ECX
006a4a3f  898e60040000              MOV dword ptr [ESI + 0x460],ECX
006a4a45  8bce                      MOV ECX,ESI
006a4a47  f30f598734040000          MULSS XMM0,dword ptr [EDI + 0x434]
006a4a4f  f30f110424                MOVSS dword ptr [ESP],XMM0
006a4a54  ff5240                    CALL dword ptr [EDX + 0x40]
006a4a57  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
006a4a5f  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
006a4a66  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
006a4a6e  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
006a4a75  6aff                      PUSH -0x1
006a4a77  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a4a7f  ffb57cffffff              PUSH dword ptr [EBP + 0xffffff7c]
006a4a85  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
006a4a8d  f30f598734040000          MULSS XMM0,dword ptr [EDI + 0x434]
006a4a95  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
006a4a9d  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
006a4aa3  51                        PUSH ECX
006a4aa4  8bce                      MOV ECX,ESI
006a4aa6  f30f110424                MOVSS dword ptr [ESP],XMM0
006a4aab  e8f0770000                CALL 0x006ac2a0
006a4ab0  f30f108f34040000          MOVSS XMM1,dword ptr [EDI + 0x434]
006a4ab8  8b06                      MOV EAX,dword ptr [ESI]
006a4aba  0f28c1                    MOVAPS XMM0,XMM1
006a4abd  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006a4ac5  8bce                      MOV ECX,ESI
006a4ac7  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006a4acf  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
006a4ad7  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
006a4adf  ff500c                    CALL dword ptr [EAX + 0xc]
006a4ae2  83bffc03000000            CMP dword ptr [EDI + 0x3fc],0x0
006a4ae9  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
006a4af0  750f                      JNZ 0x006a4b01
006a4af2  6a00                      PUSH 0x0
006a4af4  68ac0db600                PUSH 0xb60dac
006a4af9  8d4f48                    LEA ECX,[EDI + 0x48]
006a4afc  e87f58d6ff                CALL 0x0040a380
006a4b01  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a4b08  8d9738040000              LEA EDX,[EDI + 0x438]
006a4b0e  0f84c5050000              JZ 0x006a50d9
006a4b14  681049c300                PUSH 0xc34910
006a4b19  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
006a4b1f  e84c26d7ff                CALL 0x00417170
006a4b24  83c404                    ADD ESP,0x4
006a4b27  8b08                      MOV ECX,dword ptr [EAX]
006a4b29  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a4b2c  750c                      JNZ 0x006a4b3a
006a4b2e  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a4b31  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a4b34  0f84d8000000              JZ 0x006a4c12
006a4b3a  e821a40400                CALL 0x006eef60
006a4b3f  6a00                      PUSH 0x0
006a4b41  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a4b47  6838d8c500                PUSH 0xc5d838
006a4b4c  68dcd5c500                PUSH 0xc5d5dc
006a4b51  6a00                      PUSH 0x0
006a4b53  50                        PUSH EAX
006a4b54  6a00                      PUSH 0x0
006a4b56  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
006a4b5c  8d8760030000              LEA EAX,[EDI + 0x360]
006a4b62  50                        PUSH EAX
006a4b63  8d873c030000              LEA EAX,[EDI + 0x33c]
006a4b69  50                        PUSH EAX
006a4b6a  ff772c                    PUSH dword ptr [EDI + 0x2c]
006a4b6d  6a04                      PUSH 0x4
006a4b6f  e8ac3fd8ff                CALL 0x00428b20
006a4b74  50                        PUSH EAX
006a4b75  e837bd4400                CALL 0x00af08b1
006a4b7a  8b4f34                    MOV ECX,dword ptr [EDI + 0x34]
006a4b7d  8bf0                      MOV ESI,EAX
006a4b7f  83c414                    ADD ESP,0x14
006a4b82  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
006a4b88  894e34                    MOV dword ptr [ESI + 0x34],ECX
006a4b8b  8b4f38                    MOV ECX,dword ptr [EDI + 0x38]
006a4b8e  894e38                    MOV dword ptr [ESI + 0x38],ECX
006a4b91  b91049c300                MOV ECX,0xc34910
006a4b96  50                        PUSH EAX
006a4b97  c6864804000001            MOV byte ptr [ESI + 0x448],0x1
006a4b9e  e85dd6eeff                CALL 0x00592200
006a4ba3  50                        PUSH EAX
006a4ba4  8d9738040000              LEA EDX,[EDI + 0x438]
006a4baa  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a4bb0  e8bb25d7ff                CALL 0x00417170
006a4bb5  83c404                    ADD ESP,0x4
006a4bb8  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
006a4bbb  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
006a4bbe  c6866304000001            MOV byte ptr [ESI + 0x463],0x1
006a4bc5  0f118638040000            MOVUPS xmmword ptr [ESI + 0x438],XMM0
006a4bcc  83f813                    CMP EAX,0x13
006a4bcf  740c                      JZ 0x006a4bdd
006a4bd1  83f814                    CMP EAX,0x14
006a4bd4  7407                      JZ 0x006a4bdd
006a4bd6  b81e000000                MOV EAX,0x1e
006a4bdb  eb11                      JMP 0x006a4bee
006a4bdd  8b8728040000              MOV EAX,dword ptr [EDI + 0x428]
006a4be3  898628040000              MOV dword ptr [ESI + 0x428],EAX
006a4be9  b83c000000                MOV EAX,0x3c
006a4bee  8bd6                      MOV EDX,ESI
006a4bf0  8bce                      MOV ECX,ESI
006a4bf2  898210040000              MOV dword ptr [EDX + 0x410],EAX
006a4bf8  898114040000              MOV dword ptr [ECX + 0x414],EAX
006a4bfe  818e6801000000000004      OR dword ptr [ESI + 0x168],0x4000000
006a4c08  818e6c01000000040000      OR dword ptr [ESI + 0x16c],0x400
006a4c12  685048c300                PUSH 0xc34850
006a4c17  8d9738040000              LEA EDX,[EDI + 0x438]
006a4c1d  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
006a4c23  e84825d7ff                CALL 0x00417170
006a4c28  83c404                    ADD ESP,0x4
006a4c2b  8b08                      MOV ECX,dword ptr [EAX]
006a4c2d  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a4c30  750c                      JNZ 0x006a4c3e
006a4c32  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a4c35  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a4c38  0f84df010000              JZ 0x006a4e1d
006a4c3e  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a4c46  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
006a4c4e  0f28c1                    MOVAPS XMM0,XMM1
006a4c51  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
006a4c58  f30f59c1                  MULSS XMM0,XMM1
006a4c5c  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
006a4c61  0f28ca                    MOVAPS XMM1,XMM2
006a4c64  f30f59ca                  MULSS XMM1,XMM2
006a4c68  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
006a4c6d  f30f58c1                  ADDSS XMM0,XMM1
006a4c71  e8da0dd9ff                CALL 0x00435a50
006a4c76  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006a4c7d  7631                      JBE 0x006a4cb0
006a4c7f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006a4c87  f30f5ec8                  DIVSS XMM1,XMM0
006a4c8b  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
006a4c90  0f28c1                    MOVAPS XMM0,XMM1
006a4c93  f30f59d0                  MULSS XMM2,XMM0
006a4c97  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
006a4c9c  f30f59c1                  MULSS XMM0,XMM1
006a4ca0  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
006a4ca5  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
006a4caa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
006a4cb0  e8aba20400                CALL 0x006eef60
006a4cb5  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
006a4cbd  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
006a4cc5  0f28c2                    MOVAPS XMM0,XMM2
006a4cc8  f30f59458c                MULSS XMM0,dword ptr [EBP + -0x74]
006a4ccd  6a00                      PUSH 0x0
006a4ccf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a4cd5  6838d8c500                PUSH 0xc5d838
006a4cda  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006a4ce2  68dcd5c500                PUSH 0xc5d5dc
006a4ce7  6a00                      PUSH 0x0
006a4ce9  50                        PUSH EAX
006a4cea  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
006a4cf2  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
006a4cf8  0f28c2                    MOVAPS XMM0,XMM2
006a4cfb  f30f594584                MULSS XMM0,dword ptr [EBP + -0x7c]
006a4d00  6a00                      PUSH 0x0
006a4d02  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
006a4d08  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006a4d10  50                        PUSH EAX
006a4d11  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
006a4d17  50                        PUSH EAX
006a4d18  ff7588                    PUSH dword ptr [EBP + -0x78]
006a4d1b  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
006a4d23  0f28c1                    MOVAPS XMM0,XMM1
006a4d26  f30f59458c                MULSS XMM0,dword ptr [EBP + -0x74]
006a4d2b  6a04                      PUSH 0x4
006a4d2d  f30f594d84                MULSS XMM1,dword ptr [EBP + -0x7c]
006a4d32  f30f59c2                  MULSS XMM0,XMM2
006a4d36  f30f59ca                  MULSS XMM1,XMM2
006a4d3a  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
006a4d42  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
006a4d4a  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
006a4d52  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
006a4d5a  e8c13dd8ff                CALL 0x00428b20
006a4d5f  50                        PUSH EAX
006a4d60  e84cbb4400                CALL 0x00af08b1
006a4d65  8b4f34                    MOV ECX,dword ptr [EDI + 0x34]
006a4d68  8bf0                      MOV ESI,EAX
006a4d6a  83c414                    ADD ESP,0x14
006a4d6d  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
006a4d73  894e34                    MOV dword ptr [ESI + 0x34],ECX
006a4d76  8b4f38                    MOV ECX,dword ptr [EDI + 0x38]
006a4d79  894e38                    MOV dword ptr [ESI + 0x38],ECX
006a4d7c  b95048c300                MOV ECX,0xc34850
006a4d81  50                        PUSH EAX
006a4d82  c6864804000001            MOV byte ptr [ESI + 0x448],0x1
006a4d89  e872d4eeff                CALL 0x00592200
006a4d8e  50                        PUSH EAX
006a4d8f  8d9738040000              LEA EDX,[EDI + 0x438]
006a4d95  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006a4d9b  e8d023d7ff                CALL 0x00417170
006a4da0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006a4da8  83c404                    ADD ESP,0x4
006a4dab  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
006a4dae  818e6801000000000004      OR dword ptr [ESI + 0x168],0x4000000
006a4db8  818e6c01000000040000      OR dword ptr [ESI + 0x16c],0x400
006a4dc2  0f118638040000            MOVUPS xmmword ptr [ESI + 0x438],XMM0
006a4dc9  c6866304000001            MOV byte ptr [ESI + 0x463],0x1
006a4dd0  f30f108618040000          MOVSS XMM0,dword ptr [ESI + 0x418]
006a4dd8  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
006a4de0  c786100400000f000000      MOV dword ptr [ESI + 0x410],0xf
006a4dea  c786140400000f000000      MOV dword ptr [ESI + 0x414],0xf
006a4df4  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
006a4dfc  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
006a4e04  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
006a4e0c  0f2fc8                    COMISS XMM1,XMM0
006a4e0f  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
006a4e17  0f8393feffff              JNC 0x006a4cb0
006a4e1d  688048c300                PUSH 0xc34880
006a4e22  8d9738040000              LEA EDX,[EDI + 0x438]
006a4e28  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
006a4e2e  e83d23d7ff                CALL 0x00417170
006a4e33  83c404                    ADD ESP,0x4
006a4e36  8b08                      MOV ECX,dword ptr [EAX]
006a4e38  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a4e3b  750c                      JNZ 0x006a4e49
006a4e3d  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a4e40  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a4e43  0f8444030000              JZ 0x006a518d
006a4e49  e812a10400                CALL 0x006eef60
006a4e4e  660f6ec0                  MOVD XMM0,EAX
006a4e52  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a4e56  c1e81f                    SHR EAX,0x1f
006a4e59  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a4e62  660f5ac0                  CVTPD2PS XMM0,XMM0
006a4e66  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006a4e6e  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
006a4e76  f30f58c0                  ADDSS XMM0,XMM0
006a4e7a  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a4e82  e8b986d7ff                CALL 0x0041d540
006a4e87  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
006a4e8c  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
006a4e94  e88786d7ff                CALL 0x0041d520
006a4e99  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
006a4e9e  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
006a4ea6  e89586d7ff                CALL 0x0041d540
006a4eab  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
006a4eb3  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
006a4ebb  e86086d7ff                CALL 0x0041d520
006a4ec0  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a4ec8  c7459004000000            MOV dword ptr [EBP + -0x70],0x4
006a4ecf  90                        NOP
006a4ed0  e88ba00400                CALL 0x006eef60
006a4ed5  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
006a4eda  f30f5905b0a7ba00          MULSS XMM0,dword ptr [0x00baa7b0]
006a4ee2  6a00                      PUSH 0x0
006a4ee4  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
006a4eec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a4ef2  6838d8c500                PUSH 0xc5d838
006a4ef7  68dcd5c500                PUSH 0xc5d5dc
006a4efc  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
006a4f04  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
006a4f09  f30f5905b0a7ba00          MULSS XMM0,dword ptr [0x00baa7b0]
006a4f11  6a00                      PUSH 0x0
006a4f13  50                        PUSH EAX
006a4f14  6a00                      PUSH 0x0
006a4f16  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
006a4f1c  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
006a4f24  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
006a4f2a  0f28c1                    MOVAPS XMM0,XMM1
006a4f2d  f30f594d84                MULSS XMM1,dword ptr [EBP + -0x7c]
006a4f32  50                        PUSH EAX
006a4f33  f30f59458c                MULSS XMM0,dword ptr [EBP + -0x74]
006a4f38  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
006a4f3e  50                        PUSH EAX
006a4f3f  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
006a4f47  ff7588                    PUSH dword ptr [EBP + -0x78]
006a4f4a  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
006a4f52  ff7728                    PUSH dword ptr [EDI + 0x28]
006a4f55  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
006a4f5d  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
006a4f65  e8b63bd8ff                CALL 0x00428b20
006a4f6a  50                        PUSH EAX
006a4f6b  e841b94400                CALL 0x00af08b1
006a4f70  8b4f34                    MOV ECX,dword ptr [EDI + 0x34]
006a4f73  8bf0                      MOV ESI,EAX
006a4f75  83c414                    ADD ESP,0x14
006a4f78  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
006a4f7e  894e34                    MOV dword ptr [ESI + 0x34],ECX
006a4f81  8b4f38                    MOV ECX,dword ptr [EDI + 0x38]
006a4f84  894e38                    MOV dword ptr [ESI + 0x38],ECX
006a4f87  b98048c300                MOV ECX,0xc34880
006a4f8c  50                        PUSH EAX
006a4f8d  c6864804000001            MOV byte ptr [ESI + 0x448],0x1
006a4f94  e867d2eeff                CALL 0x00592200
006a4f99  50                        PUSH EAX
006a4f9a  8d9738040000              LEA EDX,[EDI + 0x438]
006a4fa0  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
006a4fa6  e8c521d7ff                CALL 0x00417170
006a4fab  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006a4fb3  83c404                    ADD ESP,0x4
006a4fb6  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
006a4fb9  c6866304000001            MOV byte ptr [ESI + 0x463],0x1
006a4fc0  6aff                      PUSH -0x1
006a4fc2  0f118638040000            MOVUPS xmmword ptr [ESI + 0x438],XMM0
006a4fc9  f30f108734040000          MOVSS XMM0,dword ptr [EDI + 0x434]
006a4fd1  f30f59c2                  MULSS XMM0,XMM2
006a4fd5  f30f118634040000          MOVSS dword ptr [ESI + 0x434],XMM0
006a4fdd  f30f108618040000          MOVSS XMM0,dword ptr [ESI + 0x418]
006a4fe5  f30f590544a2ba00          MULSS XMM0,dword ptr [0x00baa244]
006a4fed  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
006a4ff5  f30f10874c040000          MOVSS XMM0,dword ptr [EDI + 0x44c]
006a4ffd  f30f59c2                  MULSS XMM0,XMM2
006a5001  f30f11864c040000          MOVSS dword ptr [ESI + 0x44c],XMM0
006a5009  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
006a5011  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
006a5018  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
006a5020  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
006a5027  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
006a502f  ffb534ffffff              PUSH dword ptr [EBP + 0xffffff34]
006a5035  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
006a503d  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
006a5045  ffb530ffffff              PUSH dword ptr [EBP + 0xffffff30]
006a504b  f30f59c2                  MULSS XMM0,XMM2
006a504f  51                        PUSH ECX
006a5050  8bce                      MOV ECX,ESI
006a5052  f30f110424                MOVSS dword ptr [ESP],XMM0
006a5057  e844720000                CALL 0x006ac2a0
006a505c  818e6801000000000004      OR dword ptr [ESI + 0x168],0x4000000
006a5066  818e6c01000000040000      OR dword ptr [ESI + 0x16c],0x400
006a5070  f30f10957cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff7c]
006a5078  c7861004000007000000      MOV dword ptr [ESI + 0x410],0x7
006a5082  c7861404000007000000      MOV dword ptr [ESI + 0x414],0x7
006a508c  836d9001                  SUB dword ptr [EBP + -0x70],0x1
006a5090  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
006a5098  f30f594584                MULSS XMM0,dword ptr [EBP + -0x7c]
006a509d  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
006a50a5  f30f594d8c                MULSS XMM1,dword ptr [EBP + -0x74]
006a50aa  f30f59558c                MULSS XMM2,dword ptr [EBP + -0x74]
006a50af  f30f5cc8                  SUBSS XMM1,XMM0
006a50b3  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
006a50bb  f30f594584                MULSS XMM0,dword ptr [EBP + -0x7c]
006a50c0  f30f58c2                  ADDSS XMM0,XMM2
006a50c4  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
006a50c9  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
006a50ce  0f85fcfdffff              JNZ 0x006a4ed0
006a50d4  e9b4000000                JMP 0x006a518d
006a50d9  683049c300                PUSH 0xc34930
006a50de  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
006a50e4  e88720d7ff                CALL 0x00417170
006a50e9  83c404                    ADD ESP,0x4
006a50ec  8b08                      MOV ECX,dword ptr [EAX]
006a50ee  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006a50f1  7508                      JNZ 0x006a50fb
006a50f3  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006a50f6  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006a50f9  7420                      JZ 0x006a511b
006a50fb  8b8f50040000              MOV ECX,dword ptr [EDI + 0x450]
006a5101  85c9                      TEST ECX,ECX
006a5103  7416                      JZ 0x006a511b
006a5105  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
006a510b  81896801000000004000      OR dword ptr [ECX + 0x168],0x400000
006a5115  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
006a511b  837f2c0d                  CMP dword ptr [EDI + 0x2c],0xd
006a511f  746c                      JZ 0x006a518d
006a5121  8bb560ffffff              MOV ESI,dword ptr [EBP + 0xffffff60]
006a5127  85f6                      TEST ESI,ESI
006a5129  7462                      JZ 0x006a518d
006a512b  6a00                      PUSH 0x0
006a512d  6a49                      PUSH 0x49
006a512f  8bce                      MOV ECX,ESI
006a5131  e81ac40c00                CALL 0x00771550
006a5136  84c0                      TEST AL,AL
006a5138  7453                      JZ 0x006a518d
006a513a  6a49                      PUSH 0x49
006a513c  8bce                      MOV ECX,ESI
006a513e  e83d7efbff                CALL 0x0065cf80
006a5143  8b8d60ffffff              MOV ECX,dword ptr [EBP + 0xffffff60]
006a5149  8bf0                      MOV ESI,EAX
006a514b  6a49                      PUSH 0x49
006a514d  e88e651200                CALL 0x007cb6e0
006a5152  8bc8                      MOV ECX,EAX
006a5154  b80a000000                MOV EAX,0xa
006a5159  99                        CDQ
006a515a  f7f9                      IDIV ECX
006a515c  8bce                      MOV ECX,ESI
006a515e  50                        PUSH EAX
006a515f  e8bc3e1400                CALL 0x007e9020
006a5164  85c0                      TEST EAX,EAX
006a5166  7525                      JNZ 0x006a518d
006a5168  e8f39d0400                CALL 0x006eef60
006a516d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a5173  50                        PUSH EAX
006a5174  6a01                      PUSH 0x1
006a5176  6a00                      PUSH 0x0
006a5178  6840b6c700                PUSH 0xc7b640
006a517d  8d873c030000              LEA EAX,[EDI + 0x33c]
006a5183  50                        PUSH EAX
006a5184  6a28                      PUSH 0x28
006a5186  6a05                      PUSH 0x5
006a5188  e89339d8ff                CALL 0x00428b20
006a518d  837f2c12                  CMP dword ptr [EDI + 0x2c],0x12
006a5191  0f85da000000              JNZ 0x006a5271
006a5197  8db7dc030000              LEA ESI,[EDI + 0x3dc]
006a519d  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
006a51a4  6a1e                      PUSH 0x1e
006a51a6  8bce                      MOV ECX,ESI
006a51a8  e8733e1400                CALL 0x007e9020
006a51ad  6a01                      PUSH 0x1
006a51af  83c03c                    ADD EAX,0x3c
006a51b2  8d4f48                    LEA ECX,[EDI + 0x48]
006a51b5  6898d5b100                PUSH 0xb1d598
006a51ba  898710040000              MOV dword ptr [EDI + 0x410],EAX
006a51c0  e80b54d6ff                CALL 0x0040a5d0
006a51c5  84c0                      TEST AL,AL
006a51c7  7415                      JZ 0x006a51de
006a51c9  8d4f78                    LEA ECX,[EDI + 0x78]
006a51cc  e8df4fd6ff                CALL 0x0040a1b0
006a51d1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
006a51d8  8db7dc030000              LEA ESI,[EDI + 0x3dc]
006a51de  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006a51e2  7410                      JZ 0x006a51f4
006a51e4  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
006a51ec  8d4f78                    LEA ECX,[EDI + 0x78]
006a51ef  e80c3cd6ff                CALL 0x00408e00
006a51f4  8bce                      MOV ECX,ESI
006a51f6  e8f53e1400                CALL 0x007e90f0
006a51fb  8bd0                      MOV EDX,EAX
006a51fd  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
006a5203  e8c89efdff                CALL 0x0067f0d0
006a5208  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
006a520e  8bf0                      MOV ESI,EAX
006a5210  e8db3e1400                CALL 0x007e90f0
006a5215  8b8fdc030000              MOV ECX,dword ptr [EDI + 0x3dc]
006a521b  660f6ec1                  MOVD XMM0,ECX
006a521f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a5223  c1e91f                    SHR ECX,0x1f
006a5226  f20f5804cd00cbba00        ADDSD XMM0,qword ptr [ECX*0x8 + 0xbacb00]
006a522f  660f5ac8                  CVTPD2PS XMM1,XMM0
006a5233  f30f590df09fba00          MULSS XMM1,dword ptr [0x00ba9ff0]
006a523b  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
006a5243  f30f580d84a7ba00          ADDSS XMM1,dword ptr [0x00baa784]
006a524b  0f28c1                    MOVAPS XMM0,XMM1
006a524e  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
006a5253  f30f5906                  MULSS XMM0,dword ptr [ESI]
006a5257  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
006a525f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a5267  c7875c0400005a000000      MOV dword ptr [EDI + 0x45c],0x5a
006a5271  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006a5277  33c0                      XOR EAX,EAX
006a5279  81e100040000              AND ECX,0x400
006a527f  0bc1                      OR EAX,ECX
006a5281  7557                      JNZ 0x006a52da
006a5283  8bb560ffffff              MOV ESI,dword ptr [EBP + 0xffffff60]
006a5289  85f6                      TEST ESI,ESI
006a528b  744d                      JZ 0x006a52da
006a528d  39b7c8030000              CMP dword ptr [EDI + 0x3c8],ESI
006a5293  7545                      JNZ 0x006a52da
006a5295  388748040000              CMP byte ptr [EDI + 0x448],AL
006a529b  753d                      JNZ 0x006a52da
006a529d  6889000000                PUSH 0x89
006a52a2  8d8e08150000              LEA ECX,[ESI + 0x1508]
006a52a8  e843b32800                CALL 0x009305f0
006a52ad  84c0                      TEST AL,AL
006a52af  7429                      JZ 0x006a52da
006a52b1  6a00                      PUSH 0x0
006a52b3  6848020000                PUSH 0x248
006a52b8  8bce                      MOV ECX,ESI
006a52ba  e821b40c00                CALL 0x007706e0
006a52bf  84c0                      TEST AL,AL
006a52c1  7417                      JZ 0x006a52da
006a52c3  6a00                      PUSH 0x0
006a52c5  6a00                      PUSH 0x0
006a52c7  8d873c030000              LEA EAX,[EDI + 0x33c]
006a52cd  8bce                      MOV ECX,ESI
006a52cf  50                        PUSH EAX
006a52d0  6889000000                PUSH 0x89
006a52d5  e8d640f2ff                CALL 0x005c93b0
006a52da  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
006a52de  0f856e010000              JNZ 0x006a5452
006a52e4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a52ea  8db73c030000              LEA ESI,[EDI + 0x33c]
006a52f0  56                        PUSH ESI
006a52f1  e85ae60500                CALL 0x00703950
006a52f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a52fc  56                        PUSH ESI
006a52fd  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
006a5305  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
006a530d  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
006a5315  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
006a531d  e82ee60500                CALL 0x00703950
006a5322  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
006a532a  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006a5332  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
006a533a  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
006a5342  f30f588548ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff48]
006a534a  f30f588d7cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff7c]
006a5352  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
006a5357  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
006a535b  0f28d0                    MOVAPS XMM2,XMM0
006a535e  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
006a5366  f30f59d0                  MULSS XMM2,XMM0
006a536a  0f28c1                    MOVAPS XMM0,XMM1
006a536d  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
006a5372  f30f59c1                  MULSS XMM0,XMM1
006a5376  f30f100d74acba00          MOVSS XMM1,dword ptr [0x00baac74]
006a537e  f30f58d0                  ADDSS XMM2,XMM0
006a5382  0f2fca                    COMISS XMM1,XMM2
006a5385  766f                      JBE 0x006a53f6
006a5387  0f28c2                    MOVAPS XMM0,XMM2
006a538a  e8c106d9ff                CALL 0x00435a50
006a538f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006a5396  f30f105590                MOVSS XMM2,dword ptr [EBP + -0x70]
006a539b  7621                      JBE 0x006a53be
006a539d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006a53a5  f30f5ec8                  DIVSS XMM1,XMM0
006a53a9  0f28c1                    MOVAPS XMM0,XMM1
006a53ac  f30f59d0                  MULSS XMM2,XMM0
006a53b0  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
006a53b8  f30f59c1                  MULSS XMM0,XMM1
006a53bc  eb08                      JMP 0x006a53c6
006a53be  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
006a53c6  f30f591528a5ba00          MULSS XMM2,dword ptr [0x00baa528]
006a53ce  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
006a53d6  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
006a53de  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
006a53e6  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
006a53ee  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a53f6  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a53fe  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
006a5406  a17816c700                MOV EAX,[0x00c71678]
006a540b  f30f59c2                  MULSS XMM0,XMM2
006a540f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a5417  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a541f  f30f59c2                  MULSS XMM0,XMM2
006a5423  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a542b  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006a5431  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
006a5437  83f814                    CMP EAX,0x14
006a543a  7d1e                      JGE 0x006a545a
006a543c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006a5444  f30f59c2                  MULSS XMM0,XMM2
006a5448  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006a5450  eb08                      JMP 0x006a545a
006a5452  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
006a545a  0fb78730040000            MOVZX EAX,word ptr [EDI + 0x430]
006a5461  6685c0                    TEST AX,AX
006a5464  7e08                      JLE 0x006a546e
006a5466  48                        DEC EAX
006a5467  66898730040000            MOV word ptr [EDI + 0x430],AX
006a546e  0fb78732040000            MOVZX EAX,word ptr [EDI + 0x432]
006a5475  6685c0                    TEST AX,AX
006a5478  7e08                      JLE 0x006a5482
006a547a  48                        DEC EAX
006a547b  66898732040000            MOV word ptr [EDI + 0x432],AX
006a5482  8b875c040000              MOV EAX,dword ptr [EDI + 0x45c]
006a5488  85c0                      TEST EAX,EAX
006a548a  7e07                      JLE 0x006a5493
006a548c  48                        DEC EAX
006a548d  89875c040000              MOV dword ptr [EDI + 0x45c],EAX
006a5493  8b157816c700              MOV EDX,dword ptr [0x00c71678]
006a5499  8bb728030000              MOV ESI,dword ptr [EDI + 0x328]
006a549f  8b8af8640200              MOV ECX,dword ptr [EDX + 0x264f8]
006a54a5  8bc1                      MOV EAX,ECX
006a54a7  2bc6                      SUB EAX,ESI
006a54a9  83f80f                    CMP EAX,0xf
006a54ac  7e19                      JLE 0x006a54c7
006a54ae  83bf8801000001            CMP dword ptr [EDI + 0x188],0x1
006a54b5  7510                      JNZ 0x006a54c7
006a54b7  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
006a54c1  8b8af8640200              MOV ECX,dword ptr [EDX + 0x264f8]
006a54c7  2bce                      SUB ECX,ESI
006a54c9  3b8f10040000              CMP ECX,dword ptr [EDI + 0x410]
006a54cf  7e13                      JLE 0x006a54e4
006a54d1  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
006a54d8  750a                      JNZ 0x006a54e4
006a54da  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
006a54e4  a17816c700                MOV EAX,[0x00c71678]
006a54e9  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006a54ef  83780810                  CMP dword ptr [EAX + 0x8],0x10
006a54f3  7525                      JNZ 0x006a551a
006a54f5  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a54f8  83f813                    CMP EAX,0x13
006a54fb  741d                      JZ 0x006a551a
006a54fd  83f814                    CMP EAX,0x14
006a5500  7418                      JZ 0x006a551a
006a5502  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a550a  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
006a5512  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a551a  837f2c0f                  CMP dword ptr [EDI + 0x2c],0xf
006a551e  0f8589000000              JNZ 0x006a55ad
006a5524  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
006a552c  0f57c9                    XORPS XMM1,XMM1
006a552f  0f2fc1                    COMISS XMM0,XMM1
006a5532  7221                      JC 0x006a5555
006a5534  f30f10871c040000          MOVSS XMM0,dword ptr [EDI + 0x41c]
006a553c  0f2fc1                    COMISS XMM0,XMM1
006a553f  7214                      JC 0x006a5555
006a5541  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006a5549  f30f59c2                  MULSS XMM0,XMM2
006a554d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006a5555  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006a5559  7452                      JZ 0x006a55ad
006a555b  68d070b600                PUSH 0xb670d0
006a5560  8d4f78                    LEA ECX,[EDI + 0x78]
006a5563  e86858d6ff                CALL 0x0040add0
006a5568  84c0                      TEST AL,AL
006a556a  7441                      JZ 0x006a55ad
006a556c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
006a5572  8d4d90                    LEA ECX,[EBP + -0x70]
006a5575  c74590ab000000            MOV dword ptr [EBP + -0x70],0xab
006a557c  e8ff112b00                CALL 0x00956780
006a5581  83ec08                    SUB ESP,0x8
006a5584  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006a558c  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
006a5593  6a00                      PUSH 0x0
006a5595  6a02                      PUSH 0x2
006a5597  51                        PUSH ECX
006a5598  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a559f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
006a55a5  ff7590                    PUSH dword ptr [EBP + -0x70]
006a55a8  e883862800                CALL 0x0092dc30
006a55ad  8b8750040000              MOV EAX,dword ptr [EDI + 0x450]
006a55b3  85c0                      TEST EAX,EAX
006a55b5  7466                      JZ 0x006a561d
006a55b7  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
006a55bf  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
006a55c7  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a55cf  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
006a55d7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
006a55df  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
006a55e7  f30f588734030000          ADDSS XMM0,dword ptr [EDI + 0x334]
006a55ef  f30f588f38030000          ADDSS XMM1,dword ptr [EDI + 0x338]
006a55f7  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
006a55ff  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
006a5607  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
006a5611  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
006a561b  eb13                      JMP 0x006a5630
006a561d  83bf8401000000            CMP dword ptr [EDI + 0x184],0x0
006a5624  750a                      JNZ 0x006a5630
006a5626  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
006a5630  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
006a5637  7520                      JNZ 0x006a5659
006a5639  b804000000                MOV EAX,0x4
006a563e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
006a5648  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
006a5652  66898730040000            MOV word ptr [EDI + 0x430],AX
006a5659  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006a565d  0f84c9000000              JZ 0x006a572c
006a5663  68d870b600                PUSH 0xb670d8
006a5668  8d4f78                    LEA ECX,[EDI + 0x78]
006a566b  e86057d6ff                CALL 0x0040add0
006a5670  84c0                      TEST AL,AL
006a5672  0f84b4000000              JZ 0x006a572c
006a5678  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a567b  83ec08                    SUB ESP,0x8
006a567e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006a5686  83f811                    CMP EAX,0x11
006a5689  7535                      JNZ 0x006a56c0
006a568b  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
006a5692  6a00                      PUSH 0x0
006a5694  6a04                      PUSH 0x4
006a5696  51                        PUSH ECX
006a5697  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006a569d  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a56a4  6a28                      PUSH 0x28
006a56a6  8d8924a30200              LEA ECX,[ECX + 0x2a324]
006a56ac  e87f852800                CALL 0x0092dc30
006a56b1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a56b7  6a06                      PUSH 0x6
006a56b9  e8b2df0500                CALL 0x00703670
006a56be  eb6c                      JMP 0x006a572c
006a56c0  f30f108f34040000          MOVSS XMM1,dword ptr [EDI + 0x434]
006a56c8  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006a56d0  c704240000803f            MOV dword ptr [ESP],0x3f800000
006a56d7  6a00                      PUSH 0x0
006a56d9  6a04                      PUSH 0x4
006a56db  83f812                    CMP EAX,0x12
006a56de  7524                      JNZ 0x006a5704
006a56e0  0f2fc1                    COMISS XMM0,XMM1
006a56e3  7706                      JA 0x006a56eb
006a56e5  f30f10c0                  MOVSS XMM0,XMM0
006a56e9  eb04                      JMP 0x006a56ef
006a56eb  f30f10c1                  MOVSS XMM0,XMM1
006a56ef  51                        PUSH ECX
006a56f0  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006a56f8  f30f110424                MOVSS dword ptr [ESP],XMM0
006a56fd  68d2010000                PUSH 0x1d2
006a5702  eb17                      JMP 0x006a571b
006a5704  0f2fc1                    COMISS XMM0,XMM1
006a5707  7706                      JA 0x006a570f
006a5709  f30f10c0                  MOVSS XMM0,XMM0
006a570d  eb04                      JMP 0x006a5713
006a570f  f30f10c1                  MOVSS XMM0,XMM1
006a5713  51                        PUSH ECX
006a5714  f30f110424                MOVSS dword ptr [ESP],XMM0
006a5719  6a28                      PUSH 0x28
006a571b  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006a5721  8d8924a30200              LEA ECX,[ECX + 0x2a324]
006a5727  e804852800                CALL 0x0092dc30
006a572c  80bf6204000000            CMP byte ptr [EDI + 0x462],0x0
006a5733  743a                      JZ 0x006a576f
006a5735  b805000000                MOV EAX,0x5
006a573a  8db76d050000              LEA ESI,[EDI + 0x56d]
006a5740  894590                    MOV dword ptr [EBP + -0x70],EAX
006a5743  803e00                    CMP byte ptr [ESI],0x0
006a5746  7419                      JZ 0x006a5761
006a5748  8d8e27ffffff              LEA ECX,[ESI + 0xffffff27]
006a574e  e8dd38d6ff                CALL 0x00409030
006a5753  8d8e47ffffff              LEA ECX,[ESI + 0xffffff47]
006a5759  e8d238d6ff                CALL 0x00409030
006a575e  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
006a5761  81c614010000              ADD ESI,0x114
006a5767  83e801                    SUB EAX,0x1
006a576a  894590                    MOV dword ptr [EBP + -0x70],EAX
006a576d  75d4                      JNZ 0x006a5743
006a576f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a5772  83f813                    CMP EAX,0x13
006a5775  7409                      JZ 0x006a5780
006a5777  83f814                    CMP EAX,0x14
006a577a  0f858b020000              JNZ 0x006a5a0b
006a5780  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
006a5788  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
006a5790  0f28c2                    MOVAPS XMM0,XMM2
006a5793  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
006a579a  0f28ca                    MOVAPS XMM1,XMM2
006a579d  0f2fc3                    COMISS XMM0,XMM3
006a57a0  7616                      JBE 0x006a57b8
006a57a2  0f28cb                    MOVAPS XMM1,XMM3
006a57a5  0f28c2                    MOVAPS XMM0,XMM2
006a57a8  e87345dfff                CALL 0x00499d20
006a57ad  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
006a57b5  0f28c8                    MOVAPS XMM1,XMM0
006a57b8  f30f101578aaba00          MOVSS XMM2,dword ptr [0x00baaa78]
006a57c0  0f2fca                    COMISS XMM1,XMM2
006a57c3  7606                      JBE 0x006a57cb
006a57c5  f30f5ccb                  SUBSS XMM1,XMM3
006a57c9  eb11                      JMP 0x006a57dc
006a57cb  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
006a57d3  0f2fc1                    COMISS XMM0,XMM1
006a57d6  7604                      JBE 0x006a57dc
006a57d8  f30f58cb                  ADDSS XMM1,XMM3
006a57dc  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006a57e2  33c0                      XOR EAX,EAX
006a57e4  81e100000002              AND ECX,0x2000000
006a57ea  0bc1                      OR EAX,ECX
006a57ec  740c                      JZ 0x006a57fa
006a57ee  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
006a57f5  0f57c9                    XORPS XMM1,XMM1
006a57f8  eb2d                      JMP 0x006a5827
006a57fa  0f2f0db4a9ba00            COMISS XMM1,dword ptr [0x00baa9b4]
006a5801  7716                      JA 0x006a5819
006a5803  f30f100550aeba00          MOVSS XMM0,dword ptr [0x00baae50]
006a580b  0f2fc1                    COMISS XMM0,XMM1
006a580e  7709                      JA 0x006a5819
006a5810  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
006a5817  eb0e                      JMP 0x006a5827
006a5819  f30f5cd1                  SUBSS XMM2,XMM1
006a581d  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
006a5824  0f28ca                    MOVAPS XMM1,XMM2
006a5827  f30f118fec000000          MOVSS dword ptr [EDI + 0xec],XMM1
006a582f  0f57d2                    XORPS XMM2,XMM2
006a5832  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006a583a  8bcf                      MOV ECX,EDI
006a583c  e81f6f0000                CALL 0x006ac760
006a5841  85c0                      TEST EAX,EAX
006a5843  0f84c2010000              JZ 0x006a5a0b
006a5849  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
006a5850  0f84b5010000              JZ 0x006a5a0b
006a5856  e805970400                CALL 0x006eef60
006a585b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a5863  8bf0                      MOV ESI,EAX
006a5865  f30f590550a1ba00          MULSS XMM0,dword ptr [0x00baa150]
006a586d  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
006a5875  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
006a587d  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
006a5885  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a588d  f30f590550a1ba00          MULSS XMM0,dword ptr [0x00baa150]
006a5895  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
006a589d  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
006a58a5  0f28c1                    MOVAPS XMM0,XMM1
006a58a8  e8937cd7ff                CALL 0x0041d540
006a58ad  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006a58b5  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006a58bd  f30f598734040000          MULSS XMM0,dword ptr [EDI + 0x434]
006a58c5  f30f5cc8                  SUBSS XMM1,XMM0
006a58c9  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
006a58d1  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
006a58d9  e8427cd7ff                CALL 0x0041d520
006a58de  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006a58e6  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
006a58ec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a58f2  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
006a58fa  56                        PUSH ESI
006a58fb  f30f598734040000          MULSS XMM0,dword ptr [EDI + 0x434]
006a5903  6a00                      PUSH 0x0
006a5905  6a00                      PUSH 0x0
006a5907  50                        PUSH EAX
006a5908  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
006a590e  f30f5cc8                  SUBSS XMM1,XMM0
006a5912  50                        PUSH EAX
006a5913  6a3b                      PUSH 0x3b
006a5915  68e8030000                PUSH 0x3e8
006a591a  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
006a5922  e8f931d8ff                CALL 0x00428b20
006a5927  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006a592f  8bf0                      MOV ESI,EAX
006a5931  51                        PUSH ECX
006a5932  0f28d8                    MOVAPS XMM3,XMM0
006a5935  c704249a99993e            MOV dword ptr [ESP],0x3e99999a
006a593c  0f28d0                    MOVAPS XMM2,XMM0
006a593f  8d4d94                    LEA ECX,[EBP + -0x6c]
006a5942  0f28c8                    MOVAPS XMM1,XMM0
006a5945  e8a6dfd7ff                CALL 0x004238f0
006a594a  8b16                      MOV EDX,dword ptr [ESI]
006a594c  8bce                      MOV ECX,ESI
006a594e  6a01                      PUSH 0x1
006a5950  6a00                      PUSH 0x0
006a5952  68ff000000                PUSH 0xff
006a5957  6aff                      PUSH -0x1
006a5959  50                        PUSH EAX
006a595a  ff523c                    CALL dword ptr [EDX + 0x3c]
006a595d  e8fe950400                CALL 0x006eef60
006a5962  660f6ec0                  MOVD XMM0,EAX
006a5966  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006a596a  c1e81f                    SHR EAX,0x1f
006a596d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006a5976  660f5ac0                  CVTPD2PS XMM0,XMM0
006a597a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006a5982  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
006a598a  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
006a5992  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
006a599a  e8c1950400                CALL 0x006eef60
006a599f  33d2                      XOR EDX,EDX
006a59a1  b90f000000                MOV ECX,0xf
006a59a6  f7f1                      DIV ECX
006a59a8  03d1                      ADD EDX,ECX
006a59aa  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
006a59b0  899660040000              MOV dword ptr [ESI + 0x460],EDX
006a59b6  f30f108f34040000          MOVSS XMM1,dword ptr [EDI + 0x434]
006a59be  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
006a59c6  0f28c1                    MOVAPS XMM0,XMM1
006a59c9  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006a59d1  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006a59d9  c78658030000000090c1      MOV dword ptr [ESI + 0x358],0xc1900000
006a59e3  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
006a59eb  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
006a59f3  8b874c030000              MOV EAX,dword ptr [EDI + 0x34c]
006a59f9  89864c030000              MOV dword ptr [ESI + 0x34c],EAX
006a59ff  8b8750030000              MOV EAX,dword ptr [EDI + 0x350]
006a5a05  898650030000              MOV dword ptr [ESI + 0x350],EAX
006a5a0b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a5a11  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
006a5a18  7c1c                      JL 0x006a5a36
006a5a1a  8b8920660200              MOV ECX,dword ptr [ECX + 0x26620]
006a5a20  8b01                      MOV EAX,dword ptr [ECX]
006a5a22  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
006a5a25  ffd0                      CALL EAX
006a5a27  83f803                    CMP EAX,0x3
006a5a2a  750a                      JNZ 0x006a5a36
006a5a2c  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
006a5a36  57                        PUSH EDI
006a5a37  e844c51b00                CALL 0x00861f80
006a5a3c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006a5a3f  64890d00000000            MOV dword ptr FS:[0x0],ECX
006a5a46  59                        POP ECX
006a5a47  5f                        POP EDI
006a5a48  5e                        POP ESI
006a5a49  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
006a5a4c  33cd                      XOR ECX,EBP
006a5a4e  e8d8964400                CALL 0x00aef12b
006a5a53  8be5                      MOV ESP,EBP
006a5a55  5d                        POP EBP
006a5a56  8be3                      MOV ESP,EBX
006a5a58  5b                        POP EBX
006a5a59  c3                        RET
