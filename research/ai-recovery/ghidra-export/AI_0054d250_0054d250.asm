; J460 NPC AI 0x0054d250 AI_0054d250
; types=878
; identities=878.0.0
; entry=0054d250
0054d250  53                        PUSH EBX
0054d251  8bdc                      MOV EBX,ESP
0054d253  83ec08                    SUB ESP,0x8
0054d256  83e4f8                    AND ESP,0xfffffff8
0054d259  83c404                    ADD ESP,0x4
0054d25c  55                        PUSH EBP
0054d25d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0054d260  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0054d264  8bec                      MOV EBP,ESP
0054d266  6aff                      PUSH -0x1
0054d268  689b4aaf00                PUSH 0xaf4a9b
0054d26d  64a100000000              MOV EAX,FS:[0x0]
0054d273  50                        PUSH EAX
0054d274  53                        PUSH EBX
0054d275  81ec50010000              SUB ESP,0x150
0054d27b  a1b493bf00                MOV EAX,[0x00bf93b4]
0054d280  33c5                      XOR EAX,EBP
0054d282  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0054d285  56                        PUSH ESI
0054d286  57                        PUSH EDI
0054d287  50                        PUSH EAX
0054d288  8d45f4                    LEA EAX,[EBP + -0xc]
0054d28b  64a300000000              MOV FS:[0x0],EAX
0054d291  8bf9                      MOV EDI,ECX
0054d293  89bde4feffff              MOV dword ptr [EBP + 0xfffffee4],EDI
0054d299  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0054d29f  85c0                      TEST EAX,EAX
0054d2a1  0f85ec010000              JNZ 0x0054d493
0054d2a7  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0054d2ad  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0054d2b7  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0054d2c1  81f96cc8c500              CMP ECX,0xc5c86c
0054d2c7  742a                      JZ 0x0054d2f3
0054d2c9  0f10056cc8c500            MOVUPS XMM0,xmmword ptr [0x00c5c86c]
0054d2d0  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0054d2d3  0f10057cc8c500            MOVUPS XMM0,xmmword ptr [0x00c5c87c]
0054d2da  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0054d2de  f30f7e058cc8c500          MOVQ XMM0,qword ptr [0x00c5c88c]
0054d2e6  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0054d2eb  a194c8c500                MOV EAX,[0x00c5c894]
0054d2f0  894128                    MOV dword ptr [ECX + 0x28],EAX
0054d2f3  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0054d2f6  85f6                      TEST ESI,ESI
0054d2f8  7451                      JZ 0x0054d34b
0054d2fa  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0054d2fe  8bc6                      MOV EAX,ESI
0054d300  7202                      JC 0x0054d304
0054d302  8b06                      MOV EAX,dword ptr [ESI]
0054d304  b944e0b100                MOV ECX,0xb1e044
0054d309  0f1f8000000000            NOP dword ptr [EAX]
0054d310  8a10                      MOV DL,byte ptr [EAX]
0054d312  3a11                      CMP DL,byte ptr [ECX]
0054d314  751a                      JNZ 0x0054d330
0054d316  84d2                      TEST DL,DL
0054d318  7412                      JZ 0x0054d32c
0054d31a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0054d31d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0054d320  750e                      JNZ 0x0054d330
0054d322  83c002                    ADD EAX,0x2
0054d325  83c102                    ADD ECX,0x2
0054d328  84d2                      TEST DL,DL
0054d32a  75e4                      JNZ 0x0054d310
0054d32c  33c0                      XOR EAX,EAX
0054d32e  eb05                      JMP 0x0054d335
0054d330  1bc0                      SBB EAX,EAX
0054d332  83c801                    OR EAX,0x1
0054d335  85c0                      TEST EAX,EAX
0054d337  7512                      JNZ 0x0054d34b
0054d339  384634                    CMP byte ptr [ESI + 0x34],AL
0054d33c  742e                      JZ 0x0054d36c
0054d33e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0054d344  8d7748                    LEA ESI,[EDI + 0x48]
0054d347  7523                      JNZ 0x0054d36c
0054d349  eb03                      JMP 0x0054d34e
0054d34b  8d7748                    LEA ESI,[EDI + 0x48]
0054d34e  6a01                      PUSH 0x1
0054d350  6844e0b100                PUSH 0xb1e044
0054d355  8bce                      MOV ECX,ESI
0054d357  e874d2ebff                CALL 0x0040a5d0
0054d35c  84c0                      TEST AL,AL
0054d35e  740c                      JZ 0x0054d36c
0054d360  8d4e30                    LEA ECX,[ESI + 0x30]
0054d363  e848ceebff                CALL 0x0040a1b0
0054d368  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0054d36c  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0054d372  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0054d37c  50                        PUSH EAX
0054d37d  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0054d383  c78534ffffff00000000      MOV dword ptr [EBP + 0xffffff34],0x0
0054d38d  6a08                      PUSH 0x8
0054d38f  e82ce9efff                CALL 0x0044bcc0
0054d394  8b8f140c0000              MOV ECX,dword ptr [EDI + 0xc14]
0054d39a  8db7040c0000              LEA ESI,[EDI + 0xc04]
0054d3a0  83f908                    CMP ECX,0x8
0054d3a3  0f83c2000000              JNC 0x0054d46b
0054d3a9  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
0054d3af  90                        NOP
0054d3b0  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
0054d3b3  8d040a                    LEA EAX,[EDX + ECX*0x1]
0054d3b6  a801                      TEST AL,0x1
0054d3b8  752a                      JNZ 0x0054d3e4
0054d3ba  8b853cffffff              MOV EAX,dword ptr [EBP + 0xffffff3c]
0054d3c0  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0054d3c6  8d4102                    LEA EAX,[ECX + 0x2]
0054d3c9  d1e8                      SHR EAX,0x1
0054d3cb  394608                    CMP dword ptr [ESI + 0x8],EAX
0054d3ce  7714                      JA 0x0054d3e4
0054d3d0  51                        PUSH ECX
0054d3d1  8bce                      MOV ECX,ESI
0054d3d3  e838c0f4ff                CALL 0x00499410
0054d3d8  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0054d3db  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
0054d3de  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0054d3e4  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
0054d3e7  8d044dffffffff            LEA EAX,[ECX*0x2 + 0xffffffff]
0054d3ee  23d0                      AND EDX,EAX
0054d3f0  8d41ff                    LEA EAX,[ECX + -0x1]
0054d3f3  89560c                    MOV dword ptr [ESI + 0xc],EDX
0054d3f6  03953cffffff              ADD EDX,dword ptr [EBP + 0xffffff3c]
0054d3fc  899520ffffff              MOV dword ptr [EBP + 0xffffff20],EDX
0054d402  d1ea                      SHR EDX,0x1
0054d404  23d0                      AND EDX,EAX
0054d406  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0054d409  899534ffffff              MOV dword ptr [EBP + 0xffffff34],EDX
0054d40f  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
0054d413  751c                      JNZ 0x0054d431
0054d415  6a10                      PUSH 0x10
0054d417  e8a4204c00                CALL 0x00a0f4c0
0054d41c  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0054d41f  83c404                    ADD ESP,0x4
0054d422  8b9534ffffff              MOV EDX,dword ptr [EBP + 0xffffff34]
0054d428  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
0054d42b  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
0054d431  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
0054d437  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0054d43a  83e101                    AND ECX,0x1
0054d43d  c704c800000000            MOV dword ptr [EAX + ECX*0x8],0x0
0054d444  c744c80400000000          MOV dword ptr [EAX + ECX*0x8 + 0x4],0x0
0054d44c  8b4e10                    MOV ECX,dword ptr [ESI + 0x10]
0054d44f  41                        INC ECX
0054d450  894e10                    MOV dword ptr [ESI + 0x10],ECX
0054d453  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
0054d459  83f908                    CMP ECX,0x8
0054d45c  0f824effffff              JC 0x0054d3b0
0054d462  8b8f140c0000              MOV ECX,dword ptr [EDI + 0xc14]
0054d468  83f908                    CMP ECX,0x8
0054d46b  0f86d8100000              JBE 0x0054e549
0054d471  8d41ff                    LEA EAX,[ECX + -0x1]
0054d474  894610                    MOV dword ptr [ESI + 0x10],EAX
0054d477  8bc8                      MOV ECX,EAX
0054d479  85c0                      TEST EAX,EAX
0054d47b  740a                      JZ 0x0054d487
0054d47d  83f908                    CMP ECX,0x8
0054d480  77ef                      JA 0x0054d471
0054d482  e9c2100000                JMP 0x0054e549
0054d487  c7460c00000000            MOV dword ptr [ESI + 0xc],0x0
0054d48e  e9b6100000                JMP 0x0054e549
0054d493  83f804                    CMP EAX,0x4
0054d496  0f85ad100000              JNZ 0x0054e549
0054d49c  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0054d4a2  2500000020                AND EAX,0x20000000
0054d4a7  83c800                    OR EAX,0x0
0054d4aa  7404                      JZ 0x0054d4b0
0054d4ac  b001                      MOV AL,0x1
0054d4ae  eb02                      JMP 0x0054d4b2
0054d4b0  32c0                      XOR AL,AL
0054d4b2  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0054d4b9  88852bffffff              MOV byte ptr [EBP + 0xffffff2b],AL
0054d4bf  0fb6c0                    MOVZX EAX,AL
0054d4c2  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0054d4c8  7531                      JNZ 0x0054d4fb
0054d4ca  e8911a1a00                CALL 0x006eef60
0054d4cf  33d2                      XOR EDX,EDX
0054d4d1  b978000000                MOV ECX,0x78
0054d4d6  f7f1                      DIV ECX
0054d4d8  85d2                      TEST EDX,EDX
0054d4da  741f                      JZ 0x0054d4fb
0054d4dc  51                        PUSH ECX
0054d4dd  c704240000803f            MOV dword ptr [ESP],0x3f800000
0054d4e4  6a00                      PUSH 0x0
0054d4e6  51                        PUSH ECX
0054d4e7  51                        PUSH ECX
0054d4e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0054d4ef  8bcf                      MOV ECX,EDI
0054d4f1  683d040000                PUSH 0x43d
0054d4f6  e8a5961800                CALL 0x006d6ba0
0054d4fb  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0054d502  0f8e53010000              JLE 0x0054d65b
0054d508  6a00                      PUSH 0x0
0054d50a  6a02                      PUSH 0x2
0054d50c  8bcf                      MOV ECX,EDI
0054d50e  e8fdf11500                CALL 0x006ac710
0054d513  84c0                      TEST AL,AL
0054d515  0f84d1000000              JZ 0x0054d5ec
0054d51b  e8401a1a00                CALL 0x006eef60
0054d520  33d2                      XOR EDX,EDX
0054d522  b903000000                MOV ECX,0x3
0054d527  f7f1                      DIV ECX
0054d529  85d2                      TEST EDX,EDX
0054d52b  0f85bb000000              JNZ 0x0054d5ec
0054d531  e82a1a1a00                CALL 0x006eef60
0054d536  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054d53c  50                        PUSH EAX
0054d53d  6a00                      PUSH 0x0
0054d53f  57                        PUSH EDI
0054d540  6840b6c700                PUSH 0xc7b640
0054d545  8d873c030000              LEA EAX,[EDI + 0x33c]
0054d54b  50                        PUSH EAX
0054d54c  6a1a                      PUSH 0x1a
0054d54e  68e8030000                PUSH 0x3e8
0054d553  e8c8b5edff                CALL 0x00428b20
0054d558  8bf0                      MOV ESI,EAX
0054d55a  85f6                      TEST ESI,ESI
0054d55c  7409                      JZ 0x0054d567
0054d55e  817e28e8030000            CMP dword ptr [ESI + 0x28],0x3e8
0054d565  7402                      JZ 0x0054d569
0054d567  33f6                      XOR ESI,ESI
0054d569  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0054d56f  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0054d575  85c9                      TEST ECX,ECX
0054d577  741e                      JZ 0x0054d597
0054d579  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
0054d57f  81c1cc030000              ADD ECX,0x3cc
0054d585  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0054d58b  50                        PUSH EAX
0054d58c  e87f1cf8ff                CALL 0x004cf210
0054d591  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0054d597  50                        PUSH EAX
0054d598  8bcf                      MOV ECX,EDI
0054d59a  8938                      MOV dword ptr [EAX],EDI
0054d59c  e84f07f8ff                CALL 0x004cdcf0
0054d5a1  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0054d5a9  8bce                      MOV ECX,ESI
0054d5ab  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0054d5b3  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
0054d5bb  8b06                      MOV EAX,dword ptr [ESI]
0054d5bd  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0054d5c5  c7865c0400005a000000      MOV dword ptr [ESI + 0x45c],0x5a
0054d5cf  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
0054d5d7  c786600400005a000000      MOV dword ptr [ESI + 0x460],0x5a
0054d5e1  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0054d5e9  ff500c                    CALL dword ptr [EAX + 0xc]
0054d5ec  e86f191a00                CALL 0x006eef60
0054d5f1  33d2                      XOR EDX,EDX
0054d5f3  b90f000000                MOV ECX,0xf
0054d5f8  f7f1                      DIV ECX
0054d5fa  85d2                      TEST EDX,EDX
0054d5fc  755d                      JNZ 0x0054d65b
0054d5fe  e85d191a00                CALL 0x006eef60
0054d603  51                        PUSH ECX
0054d604  8bcf                      MOV ECX,EDI
0054d606  660f6ec0                  MOVD XMM0,EAX
0054d60a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054d60e  c1e81f                    SHR EAX,0x1f
0054d611  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0054d61a  660f5ac0                  CVTPD2PS XMM0,XMM0
0054d61e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0054d626  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0054d62e  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
0054d636  f30f110424                MOVSS dword ptr [ESP],XMM0
0054d63b  e8908e1600                CALL 0x006b64d0
0054d640  6a01                      PUSH 0x1
0054d642  6a00                      PUSH 0x0
0054d644  68ff000000                PUSH 0xff
0054d649  8b08                      MOV ECX,dword ptr [EAX]
0054d64b  6aff                      PUSH -0x1
0054d64d  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0054d650  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0054d656  51                        PUSH ECX
0054d657  8bc8                      MOV ECX,EAX
0054d659  ffd2                      CALL EDX
0054d65b  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0054d662  0f8fa8030000              JG 0x0054da10
0054d668  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0054d66f  7f6a                      JG 0x0054d6db
0054d671  6a00                      PUSH 0x0
0054d673  6a03                      PUSH 0x3
0054d675  8bcf                      MOV ECX,EDI
0054d677  e894f01500                CALL 0x006ac710
0054d67c  84c0                      TEST AL,AL
0054d67e  747b                      JZ 0x0054d6fb
0054d680  a17816c700                MOV EAX,[0x00c71678]
0054d685  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
0054d68d  6a08                      PUSH 0x8
0054d68f  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0054d695  8d873c030000              LEA EAX,[EDI + 0x33c]
0054d69b  50                        PUSH EAX
0054d69c  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0054d6a2  81c118120000              ADD ECX,0x1218
0054d6a8  50                        PUSH EAX
0054d6a9  e8e2d0ecff                CALL 0x0041a790
0054d6ae  80bdf0feffff00            CMP byte ptr [EBP + 0xfffffef0],0x0
0054d6b5  7544                      JNZ 0x0054d6fb
0054d6b7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0054d6be  b101                      MOV CL,0x1
0054d6c0  8b95f4feffff              MOV EDX,dword ptr [EBP + 0xfffffef4]
0054d6c6  6a00                      PUSH 0x0
0054d6c8  6a00                      PUSH 0x0
0054d6ca  e8e1715100                CALL 0x00a648b0
0054d6cf  83c408                    ADD ESP,0x8
0054d6d2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054d6d9  eb20                      JMP 0x0054d6fb
0054d6db  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0054d6e3  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0054d6eb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0054d6f3  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0054d6fb  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0054d703  8db734030000              LEA ESI,[EDI + 0x334]
0054d709  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0054d710  9f                        LAHF
0054d711  f6c444                    TEST AH,0x44
0054d714  7a2c                      JP 0x0054d742
0054d716  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0054d71b  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0054d722  9f                        LAHF
0054d723  f6c444                    TEST AH,0x44
0054d726  7a1a                      JP 0x0054d742
0054d728  6a00                      PUSH 0x0
0054d72a  51                        PUSH ECX
0054d72b  8d8f14040000              LEA ECX,[EDI + 0x414]
0054d731  c7042400000040            MOV dword ptr [ESP],0x40000000
0054d738  e8037c2900                CALL 0x007e5340
0054d73d  e9a1000000                JMP 0x0054d7e3
0054d742  6a01                      PUSH 0x1
0054d744  6a00                      PUSH 0x0
0054d746  51                        PUSH ECX
0054d747  c7042400000040            MOV dword ptr [ESP],0x40000000
0054d74e  8d8f14040000              LEA ECX,[EDI + 0x414]
0054d754  56                        PUSH ESI
0054d755  e8665c2900                CALL 0x007e33c0
0054d75a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0054d762  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0054d76a  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0054d76f  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0054d773  f30f59c0                  MULSS XMM0,XMM0
0054d777  f30f59c9                  MULSS XMM1,XMM1
0054d77b  f30f58c1                  ADDSS XMM0,XMM1
0054d77f  e8cc82eeff                CALL 0x00435a50
0054d784  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
0054d78b  7656                      JBE 0x0054d7e3
0054d78d  8d9760030000              LEA EDX,[EDI + 0x360]
0054d793  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
0054d799  e8d2191300                CALL 0x0067f170
0054d79e  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0054d7a6  8bf0                      MOV ESI,EAX
0054d7a8  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0054d7b0  f30f59c0                  MULSS XMM0,XMM0
0054d7b4  f30f59c9                  MULSS XMM1,XMM1
0054d7b8  f30f58c1                  ADDSS XMM0,XMM1
0054d7bc  e88f82eeff                CALL 0x00435a50
0054d7c1  0f28c8                    MOVAPS XMM1,XMM0
0054d7c4  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
0054d7c9  f30f590e                  MULSS XMM1,dword ptr [ESI]
0054d7cd  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0054d7d5  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0054d7dd  8bbde4feffff              MOV EDI,dword ptr [EBP + 0xfffffee4]
0054d7e3  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0054d7eb  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
0054d7f3  0f28d3                    MOVAPS XMM2,XMM3
0054d7f6  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0054d7fd  0f28c4                    MOVAPS XMM0,XMM4
0054d800  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0054d807  0f2fd0                    COMISS XMM2,XMM0
0054d80a  0f57c0                    XORPS XMM0,XMM0
0054d80d  7629                      JBE 0x0054d838
0054d80f  0f2fc3                    COMISS XMM0,XMM3
0054d812  7612                      JBE 0x0054d826
0054d814  8b356cdcb100              MOV ESI,dword ptr [0x00b1dc6c]
0054d81a  c7853cffffff00000000      MOV dword ptr [EBP + 0xffffff3c],0x0
0054d824  eb38                      JMP 0x0054d85e
0054d826  8b3574dcb100              MOV ESI,dword ptr [0x00b1dc74]
0054d82c  c7853cffffff02000000      MOV dword ptr [EBP + 0xffffff3c],0x2
0054d836  eb26                      JMP 0x0054d85e
0054d838  0f2fc4                    COMISS XMM0,XMM4
0054d83b  7612                      JBE 0x0054d84f
0054d83d  8b3570dcb100              MOV ESI,dword ptr [0x00b1dc70]
0054d843  c7853cffffff01000000      MOV dword ptr [EBP + 0xffffff3c],0x1
0054d84d  eb0f                      JMP 0x0054d85e
0054d84f  c7853cffffff03000000      MOV dword ptr [EBP + 0xffffff3c],0x3
0054d859  be44e0b100                MOV ESI,0xb1e044
0054d85e  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0054d861  85c9                      TEST ECX,ECX
0054d863  7447                      JZ 0x0054d8ac
0054d865  83791410                  CMP dword ptr [ECX + 0x14],0x10
0054d869  8bc1                      MOV EAX,ECX
0054d86b  7202                      JC 0x0054d86f
0054d86d  8b01                      MOV EAX,dword ptr [ECX]
0054d86f  8bce                      MOV ECX,ESI
0054d871  8a10                      MOV DL,byte ptr [EAX]
0054d873  3a11                      CMP DL,byte ptr [ECX]
0054d875  751a                      JNZ 0x0054d891
0054d877  84d2                      TEST DL,DL
0054d879  7412                      JZ 0x0054d88d
0054d87b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0054d87e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0054d881  750e                      JNZ 0x0054d891
0054d883  83c002                    ADD EAX,0x2
0054d886  83c102                    ADD ECX,0x2
0054d889  84d2                      TEST DL,DL
0054d88b  75e4                      JNZ 0x0054d871
0054d88d  33c0                      XOR EAX,EAX
0054d88f  eb05                      JMP 0x0054d896
0054d891  1bc0                      SBB EAX,EAX
0054d893  83c801                    OR EAX,0x1
0054d896  85c0                      TEST EAX,EAX
0054d898  7512                      JNZ 0x0054d8ac
0054d89a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0054d89d  80783400                  CMP byte ptr [EAX + 0x34],0x0
0054d8a1  7427                      JZ 0x0054d8ca
0054d8a3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0054d8aa  751e                      JNZ 0x0054d8ca
0054d8ac  6a01                      PUSH 0x1
0054d8ae  56                        PUSH ESI
0054d8af  8d4f48                    LEA ECX,[EDI + 0x48]
0054d8b2  e819cdebff                CALL 0x0040a5d0
0054d8b7  84c0                      TEST AL,AL
0054d8b9  740f                      JZ 0x0054d8ca
0054d8bb  8d4f78                    LEA ECX,[EDI + 0x78]
0054d8be  e8edc8ebff                CALL 0x0040a1b0
0054d8c3  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0054d8ca  83bd3cffffff00            CMP dword ptr [EBP + 0xffffff3c],0x0
0054d8d1  0f94c0                    SETZ AL
0054d8d4  888748010000              MOV byte ptr [EDI + 0x148],AL
0054d8da  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0054d8e2  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0054d8ea  0f28c1                    MOVAPS XMM0,XMM1
0054d8ed  f30f59c1                  MULSS XMM0,XMM1
0054d8f1  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
0054d8f9  0f28ca                    MOVAPS XMM1,XMM2
0054d8fc  f30f59ca                  MULSS XMM1,XMM2
0054d900  f30f11952cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM2
0054d908  f30f58c1                  ADDSS XMM0,XMM1
0054d90c  e83f81eeff                CALL 0x00435a50
0054d911  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0054d918  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
0054d920  761d                      JBE 0x0054d93f
0054d922  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0054d92a  f30f5ec8                  DIVSS XMM1,XMM0
0054d92e  0f28c1                    MOVAPS XMM0,XMM1
0054d931  f30f598d2cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff2c]
0054d939  f30f59d0                  MULSS XMM2,XMM0
0054d93d  eb08                      JMP 0x0054d947
0054d93f  f30f108d2cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff2c]
0054d947  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
0054d94f  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
0054d955  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0054d95b  f30f59d3                  MULSS XMM2,XMM3
0054d95f  57                        PUSH EDI
0054d960  f30f59cb                  MULSS XMM1,XMM3
0054d964  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
0054d96a  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0054d972  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
0054d978  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0054d980  e88b39eeff                CALL 0x00431310
0054d985  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
0054d98d  f30f5cd3                  SUBSS XMM2,XMM3
0054d991  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
0054d997  f30f5ecb                  DIVSS XMM1,XMM3
0054d99b  f30f5ed3                  DIVSS XMM2,XMM3
0054d99f  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
0054d9a7  f30f5815d0a2ba00          ADDSS XMM2,dword ptr [0x00baa2d0]
0054d9af  f30f2cc1                  CVTTSS2SI EAX,XMM1
0054d9b3  f30f2cca                  CVTTSS2SI ECX,XMM2
0054d9b7  85c9                      TEST ECX,ECX
0054d9b9  7838                      JS 0x0054d9f3
0054d9bb  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
0054d9be  3bca                      CMP ECX,EDX
0054d9c0  7d31                      JGE 0x0054d9f3
0054d9c2  85c0                      TEST EAX,EAX
0054d9c4  782d                      JS 0x0054d9f3
0054d9c6  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
0054d9c9  7d28                      JGE 0x0054d9f3
0054d9cb  0fafc2                    IMUL EAX,EDX
0054d9ce  03c1                      ADD EAX,ECX
0054d9d0  3dbf010000                CMP EAX,0x1bf
0054d9d5  771c                      JA 0x0054d9f3
0054d9d7  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
0054d9dd  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
0054d9e1  85c9                      TEST ECX,ECX
0054d9e3  740e                      JZ 0x0054d9f3
0054d9e5  8b01                      MOV EAX,dword ptr [ECX]
0054d9e7  8d95a4feffff              LEA EDX,[EBP + 0xfffffea4]
0054d9ed  52                        PUSH EDX
0054d9ee  6a01                      PUSH 0x1
0054d9f0  ff5010                    CALL dword ptr [EAX + 0x10]
0054d9f3  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0054d9fb  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0054da03  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0054da0b  e949030000                JMP 0x0054dd59
0054da10  8bcf                      MOV ECX,EDI
0054da12  e8599defff                CALL 0x00447770
0054da17  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
0054da21  85c0                      TEST EAX,EAX
0054da23  747a                      JZ 0x0054da9f
0054da25  8db0bc030000              LEA ESI,[EAX + 0x3bc]
0054da2b  8b06                      MOV EAX,dword ptr [ESI]
0054da2d  85c0                      TEST EAX,EAX
0054da2f  742a                      JZ 0x0054da5b
0054da31  6a00                      PUSH 0x0
0054da33  68acd6c500                PUSH 0xc5d6ac
0054da38  68dcd5c500                PUSH 0xc5d5dc
0054da3d  6a00                      PUSH 0x0
0054da3f  50                        PUSH EAX
0054da40  e86c2e5a00                CALL 0x00af08b1
0054da45  83c414                    ADD ESP,0x14
0054da48  85c0                      TEST EAX,EAX
0054da4a  750f                      JNZ 0x0054da5b
0054da4c  6850d4b100                PUSH 0xb1d450
0054da51  6a10                      PUSH 0x10
0054da53  e868384c00                CALL 0x00a112c0
0054da58  83c408                    ADD ESP,0x8
0054da5b  8b06                      MOV EAX,dword ptr [ESI]
0054da5d  85c0                      TEST EAX,EAX
0054da5f  743e                      JZ 0x0054da9f
0054da61  6a00                      PUSH 0x0
0054da63  68acd6c500                PUSH 0xc5d6ac
0054da68  68dcd5c500                PUSH 0xc5d5dc
0054da6d  6a00                      PUSH 0x0
0054da6f  50                        PUSH EAX
0054da70  e83c2e5a00                CALL 0x00af08b1
0054da75  83c414                    ADD ESP,0x14
0054da78  85c0                      TEST EAX,EAX
0054da7a  750f                      JNZ 0x0054da8b
0054da7c  6850d4b100                PUSH 0xb1d450
0054da81  6a10                      PUSH 0x10
0054da83  e838384c00                CALL 0x00a112c0
0054da88  83c408                    ADD ESP,0x8
0054da8b  8b8d30ffffff              MOV ECX,dword ptr [EBP + 0xffffff30]
0054da91  8b06                      MOV EAX,dword ptr [ESI]
0054da93  41                        INC ECX
0054da94  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
0054da9a  83f914                    CMP ECX,0x14
0054da9d  7282                      JC 0x0054da21
0054da9f  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0054daa7  8bcf                      MOV ECX,EDI
0054daa9  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0054dab1  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0054dab9  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0054dac1  e87a0d1700                CALL 0x006be840
0054dac6  6a00                      PUSH 0x0
0054dac8  6a00                      PUSH 0x0
0054daca  6a00                      PUSH 0x0
0054dacc  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0054dad4  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
0054dada  6a00                      PUSH 0x0
0054dadc  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0054dae4  8db73c030000              LEA ESI,[EDI + 0x33c]
0054daea  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0054daf2  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0054dafa  a17816c700                MOV EAX,[0x00c71678]
0054daff  6a00                      PUSH 0x0
0054db01  51                        PUSH ECX
0054db02  56                        PUSH ESI
0054db03  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0054db09  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0054db11  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0054db19  e8d2322a00                CALL 0x007f0df0
0054db1e  84c0                      TEST AL,AL
0054db20  0f84c8000000              JZ 0x0054dbee
0054db26  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
0054db2e  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
0054db36  c7876c0300006666663f      MOV dword ptr [EDI + 0x36c],0x3f666666
0054db40  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0054db45  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
0054db49  0f28c1                    MOVAPS XMM0,XMM1
0054db4c  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
0054db54  f30f59c1                  MULSS XMM0,XMM1
0054db58  0f28ca                    MOVAPS XMM1,XMM2
0054db5b  f30f59ca                  MULSS XMM1,XMM2
0054db5f  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
0054db67  f30f58c1                  ADDSS XMM0,XMM1
0054db6b  e8e07eeeff                CALL 0x00435a50
0054db70  f30f109d38ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff38]
0054db78  0f57ed                    XORPS XMM5,XMM5
0054db7b  0f2fc5                    COMISS XMM0,XMM5
0054db7e  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
0054db86  7614                      JBE 0x0054db9c
0054db88  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0054db90  f30f5ec8                  DIVSS XMM1,XMM0
0054db94  f30f59d9                  MULSS XMM3,XMM1
0054db98  f30f59d1                  MULSS XMM2,XMM1
0054db9c  f30f591d24a3ba00          MULSS XMM3,dword ptr [0x00baa324]
0054dba4  f30f591524a3ba00          MULSS XMM2,dword ptr [0x00baa324]
0054dbac  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0054dbb4  f30f59d9                  MULSS XMM3,XMM1
0054dbb8  f30f59d1                  MULSS XMM2,XMM1
0054dbbc  f30f5e1de0a3ba00          DIVSS XMM3,dword ptr [0x00baa3e0]
0054dbc4  f30f5e15e0a3ba00          DIVSS XMM2,dword ptr [0x00baa3e0]
0054dbcc  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
0054dbd4  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0054dbdc  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0054dbe4  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0054dbec  eb3b                      JMP 0x0054dc29
0054dbee  6a01                      PUSH 0x1
0054dbf0  6a00                      PUSH 0x0
0054dbf2  83ec08                    SUB ESP,0x8
0054dbf5  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0054dbfb  8bcf                      MOV ECX,EDI
0054dbfd  c74424046666663f          MOV dword ptr [ESP + 0x4],0x3f666666
0054dc05  c7042400000000            MOV dword ptr [ESP],0x0
0054dc0c  50                        PUSH EAX
0054dc0d  e82e101700                CALL 0x006bec40
0054dc12  50                        PUSH EAX
0054dc13  8d8f14040000              LEA ECX,[EDI + 0x414]
0054dc19  e8a2572900                CALL 0x007e33c0
0054dc1e  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0054dc26  0f57ed                    XORPS XMM5,XMM5
0054dc29  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0054dc31  f30f5c9520ffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff20]
0054dc39  f30f5c8d34ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff34]
0054dc41  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0054dc49  f30f5ed0                  DIVSS XMM2,XMM0
0054dc4d  f30f5ec8                  DIVSS XMM1,XMM0
0054dc51  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
0054dc59  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0054dc61  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0054dc69  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
0054dc71  0f28d3                    MOVAPS XMM2,XMM3
0054dc74  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0054dc7b  0f28c4                    MOVAPS XMM0,XMM4
0054dc7e  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0054dc85  0f2fd0                    COMISS XMM2,XMM0
0054dc88  7629                      JBE 0x0054dcb3
0054dc8a  0f2feb                    COMISS XMM5,XMM3
0054dc8d  7612                      JBE 0x0054dca1
0054dc8f  8b356cdcb100              MOV ESI,dword ptr [0x00b1dc6c]
0054dc95  c7853cffffff00000000      MOV dword ptr [EBP + 0xffffff3c],0x0
0054dc9f  eb38                      JMP 0x0054dcd9
0054dca1  8b3574dcb100              MOV ESI,dword ptr [0x00b1dc74]
0054dca7  c7853cffffff02000000      MOV dword ptr [EBP + 0xffffff3c],0x2
0054dcb1  eb26                      JMP 0x0054dcd9
0054dcb3  0f2fec                    COMISS XMM5,XMM4
0054dcb6  7612                      JBE 0x0054dcca
0054dcb8  8b3570dcb100              MOV ESI,dword ptr [0x00b1dc70]
0054dcbe  c7853cffffff01000000      MOV dword ptr [EBP + 0xffffff3c],0x1
0054dcc8  eb0f                      JMP 0x0054dcd9
0054dcca  c7853cffffff03000000      MOV dword ptr [EBP + 0xffffff3c],0x3
0054dcd4  be44e0b100                MOV ESI,0xb1e044
0054dcd9  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0054dcdc  85c9                      TEST ECX,ECX
0054dcde  744b                      JZ 0x0054dd2b
0054dce0  83791410                  CMP dword ptr [ECX + 0x14],0x10
0054dce4  8bc1                      MOV EAX,ECX
0054dce6  7202                      JC 0x0054dcea
0054dce8  8b01                      MOV EAX,dword ptr [ECX]
0054dcea  8bce                      MOV ECX,ESI
0054dcec  0f1f4000                  NOP dword ptr [EAX]
0054dcf0  8a10                      MOV DL,byte ptr [EAX]
0054dcf2  3a11                      CMP DL,byte ptr [ECX]
0054dcf4  751a                      JNZ 0x0054dd10
0054dcf6  84d2                      TEST DL,DL
0054dcf8  7412                      JZ 0x0054dd0c
0054dcfa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0054dcfd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0054dd00  750e                      JNZ 0x0054dd10
0054dd02  83c002                    ADD EAX,0x2
0054dd05  83c102                    ADD ECX,0x2
0054dd08  84d2                      TEST DL,DL
0054dd0a  75e4                      JNZ 0x0054dcf0
0054dd0c  33c0                      XOR EAX,EAX
0054dd0e  eb05                      JMP 0x0054dd15
0054dd10  1bc0                      SBB EAX,EAX
0054dd12  83c801                    OR EAX,0x1
0054dd15  85c0                      TEST EAX,EAX
0054dd17  7512                      JNZ 0x0054dd2b
0054dd19  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0054dd1c  80783400                  CMP byte ptr [EAX + 0x34],0x0
0054dd20  7427                      JZ 0x0054dd49
0054dd22  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0054dd29  751e                      JNZ 0x0054dd49
0054dd2b  6a01                      PUSH 0x1
0054dd2d  56                        PUSH ESI
0054dd2e  8d4f48                    LEA ECX,[EDI + 0x48]
0054dd31  e89ac8ebff                CALL 0x0040a5d0
0054dd36  84c0                      TEST AL,AL
0054dd38  740f                      JZ 0x0054dd49
0054dd3a  8d4f78                    LEA ECX,[EDI + 0x78]
0054dd3d  e86ec4ebff                CALL 0x0040a1b0
0054dd42  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0054dd49  83bd3cffffff00            CMP dword ptr [EBP + 0xffffff3c],0x0
0054dd50  0f94c0                    SETZ AL
0054dd53  888748010000              MOV byte ptr [EDI + 0x148],AL
0054dd59  6a00                      PUSH 0x0
0054dd5b  6a02                      PUSH 0x2
0054dd5d  8bcf                      MOV ECX,EDI
0054dd5f  e8ace91500                CALL 0x006ac710
0054dd64  84c0                      TEST AL,AL
0054dd66  0f84c1020000              JZ 0x0054e02d
0054dd6c  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0054dd73  0f8fb4020000              JG 0x0054e02d
0054dd79  83bfc40b000008            CMP dword ptr [EDI + 0xbc4],0x8
0054dd80  0f83a7020000              JNC 0x0054e02d
0054dd86  a17816c700                MOV EAX,[0x00c71678]
0054dd8b  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
0054dd93  6a08                      PUSH 0x8
0054dd95  f30f58db                  ADDSS XMM3,XMM3
0054dd99  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0054dd9f  8d873c030000              LEA EAX,[EDI + 0x33c]
0054dda5  50                        PUSH EAX
0054dda6  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0054ddac  81c118120000              ADD ECX,0x1218
0054ddb2  50                        PUSH EAX
0054ddb3  e8d8c9ecff                CALL 0x0041a790
0054ddb8  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0054ddbf  33c0                      XOR EAX,EAX
0054ddc1  0f57c9                    XORPS XMM1,XMM1
0054ddc4  f30f1005c4abba00          MOVSS XMM0,dword ptr [0x00baabc4]
0054ddcc  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0054ddd4  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0054dddc  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
0054dde4  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
0054ddee  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0054ddf4  3985fcfeffff              CMP dword ptr [EBP + 0xfffffefc],EAX
0054ddfa  0f86fb010000              JBE 0x0054dffb
0054de00  8b8df4feffff              MOV ECX,dword ptr [EBP + 0xfffffef4]
0054de06  8b3481                    MOV ESI,dword ptr [ECX + EAX*0x4]
0054de09  85f6                      TEST ESI,ESI
0054de0b  7438                      JZ 0x0054de45
0054de0d  a17816c700                MOV EAX,[0x00c71678]
0054de12  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0054de19  7c06                      JL 0x0054de21
0054de1b  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0054de1f  740d                      JZ 0x0054de2e
0054de21  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0054de24  83e80a                    SUB EAX,0xa
0054de27  3ddd030000                CMP EAX,0x3dd
0054de2c  7717                      JA 0x0054de45
0054de2e  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0054de34  2500000020                AND EAX,0x20000000
0054de39  83c800                    OR EAX,0x0
0054de3c  7409                      JZ 0x0054de47
0054de3e  b901000000                MOV ECX,0x1
0054de43  eb0c                      JMP 0x0054de51
0054de45  33f6                      XOR ESI,ESI
0054de47  33c9                      XOR ECX,ECX
0054de49  85f6                      TEST ESI,ESI
0054de4b  0f84e8000000              JZ 0x0054df39
0054de51  3bf7                      CMP ESI,EDI
0054de53  0f84e0000000              JZ 0x0054df39
0054de59  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0054de5c  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
0054de5f  0f85d4000000              JNZ 0x0054df39
0054de65  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0054de6c  0f85c7000000              JNZ 0x0054df39
0054de72  398de0feffff              CMP dword ptr [EBP + 0xfffffee0],ECX
0054de78  0f85bb000000              JNZ 0x0054df39
0054de7e  83bec40b000008            CMP dword ptr [ESI + 0xbc4],0x8
0054de85  0f83ae000000              JNC 0x0054df39
0054de8b  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0054de93  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0054de9b  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0054dea3  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0054deab  f30f59c0                  MULSS XMM0,XMM0
0054deaf  f30f59c9                  MULSS XMM1,XMM1
0054deb3  f30f58c1                  ADDSS XMM0,XMM1
0054deb7  e8947beeff                CALL 0x00435a50
0054debc  0f28c8                    MOVAPS XMM1,XMM0
0054debf  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
0054dec5  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0054decd  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0054ded3  0f2fc1                    COMISS XMM0,XMM1
0054ded6  56                        PUSH ESI
0054ded7  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
0054dedf  0f46c1                    CMOVBE EAX,ECX
0054dee2  8bcf                      MOV ECX,EDI
0054dee4  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054dee8  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0054def0  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0054def8  e8b3f2ffff                CALL 0x0054d1b0
0054defd  85c0                      TEST EAX,EAX
0054deff  7540                      JNZ 0x0054df41
0054df01  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
0054df09  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
0054df11  0f2fc1                    COMISS XMM0,XMM1
0054df14  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0054df1c  7223                      JC 0x0054df41
0054df1e  0f2f8d2cffffff            COMISS XMM1,dword ptr [EBP + 0xffffff2c]
0054df25  761a                      JBE 0x0054df41
0054df27  8bce                      MOV ECX,ESI
0054df29  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
0054df31  898d38ffffff              MOV dword ptr [EBP + 0xffffff38],ECX
0054df37  eb0e                      JMP 0x0054df47
0054df39  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0054df41  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
0054df47  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
0054df4d  40                        INC EAX
0054df4e  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0054df54  3b85fcfeffff              CMP EAX,dword ptr [EBP + 0xfffffefc]
0054df5a  0f82a0feffff              JC 0x0054de00
0054df60  85c9                      TEST ECX,ECX
0054df62  0f8493000000              JZ 0x0054dffb
0054df68  0f2f8770030000            COMISS XMM0,dword ptr [EDI + 0x370]
0054df6f  0f8686000000              JBE 0x0054dffb
0054df75  6a00                      PUSH 0x0
0054df77  8bcf                      MOV ECX,EDI
0054df79  e832f2ffff                CALL 0x0054d1b0
0054df7e  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
0054df84  6a00                      PUSH 0x0
0054df86  898530ffffff              MOV dword ptr [EBP + 0xffffff30],EAX
0054df8c  e81ff2ffff                CALL 0x0054d1b0
0054df91  8bf0                      MOV ESI,EAX
0054df93  8b8530ffffff              MOV EAX,dword ptr [EBP + 0xffffff30]
0054df99  85c0                      TEST EAX,EAX
0054df9b  745e                      JZ 0x0054dffb
0054df9d  85f6                      TEST ESI,ESI
0054df9f  745a                      JZ 0x0054dffb
0054dfa1  8b08                      MOV ECX,dword ptr [EAX]
0054dfa3  85c9                      TEST ECX,ECX
0054dfa5  741e                      JZ 0x0054dfc5
0054dfa7  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
0054dfad  81c1cc030000              ADD ECX,0x3cc
0054dfb3  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0054dfb9  50                        PUSH EAX
0054dfba  e85112f8ff                CALL 0x004cf210
0054dfbf  8b8530ffffff              MOV EAX,dword ptr [EBP + 0xffffff30]
0054dfc5  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
0054dfcb  50                        PUSH EAX
0054dfcc  8908                      MOV dword ptr [EAX],ECX
0054dfce  e81dfdf7ff                CALL 0x004cdcf0
0054dfd3  8b0e                      MOV ECX,dword ptr [ESI]
0054dfd5  85c9                      TEST ECX,ECX
0054dfd7  7418                      JZ 0x0054dff1
0054dfd9  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0054dfdf  89b534ffffff              MOV dword ptr [EBP + 0xffffff34],ESI
0054dfe5  81c1cc030000              ADD ECX,0x3cc
0054dfeb  50                        PUSH EAX
0054dfec  e81f12f8ff                CALL 0x004cf210
0054dff1  56                        PUSH ESI
0054dff2  8bcf                      MOV ECX,EDI
0054dff4  893e                      MOV dword ptr [ESI],EDI
0054dff6  e8f5fcf7ff                CALL 0x004cdcf0
0054dffb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054e002  80bdf0feffff00            CMP byte ptr [EBP + 0xfffffef0],0x0
0054e009  7522                      JNZ 0x0054e02d
0054e00b  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0054e012  b101                      MOV CL,0x1
0054e014  8b95f4feffff              MOV EDX,dword ptr [EBP + 0xfffffef4]
0054e01a  6a00                      PUSH 0x0
0054e01c  6a00                      PUSH 0x0
0054e01e  e88d685100                CALL 0x00a648b0
0054e023  83c408                    ADD ESP,0x8
0054e026  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054e02d  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0054e033  0f57c0                    XORPS XMM0,XMM0
0054e036  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0054e040  8b8ff00b0000              MOV ECX,dword ptr [EDI + 0xbf0]
0054e046  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
0054e04c  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0054e054  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0054e05c  c78534ffffff00000000      MOV dword ptr [EBP + 0xffffff34],0x0
0054e066  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0054e06c  c7853cffffff00000000      MOV dword ptr [EBP + 0xffffff3c],0x0
0054e076  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
0054e07c  8b87000c0000              MOV EAX,dword ptr [EDI + 0xc00]
0054e082  0387fc0b0000              ADD EAX,dword ptr [EDI + 0xbfc]
0054e088  899520ffffff              MOV dword ptr [EBP + 0xffffff20],EDX
0054e08e  3bd0                      CMP EDX,EAX
0054e090  0f84ab030000              JZ 0x0054e441
0054e096  85c9                      TEST ECX,ECX
0054e098  7404                      JZ 0x0054e09e
0054e09a  8b01                      MOV EAX,dword ptr [ECX]
0054e09c  eb02                      JMP 0x0054e0a0
0054e09e  33c0                      XOR EAX,EAX
0054e0a0  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0054e0a3  8bf2                      MOV ESI,EDX
0054e0a5  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0054e0a8  49                        DEC ECX
0054e0a9  c1ee02                    SHR ESI,0x2
0054e0ac  83e203                    AND EDX,0x3
0054e0af  23ce                      AND ECX,ESI
0054e0b1  c1e202                    SHL EDX,0x2
0054e0b4  89b5d0feffff              MOV dword ptr [EBP + 0xfffffed0],ESI
0054e0ba  8995ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EDX
0054e0c0  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0054e0c3  8b3402                    MOV ESI,dword ptr [EDX + EAX*0x1]
0054e0c6  85f6                      TEST ESI,ESI
0054e0c8  0f845b030000              JZ 0x0054e429
0054e0ce  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0054e0d4  2500000020                AND EAX,0x20000000
0054e0d9  83c800                    OR EAX,0x0
0054e0dc  7407                      JZ 0x0054e0e5
0054e0de  b901000000                MOV ECX,0x1
0054e0e3  eb02                      JMP 0x0054e0e7
0054e0e5  33c9                      XOR ECX,ECX
0054e0e7  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0054e0ea  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
0054e0ed  0f85ef020000              JNZ 0x0054e3e2
0054e0f3  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0054e0fa  0f85e2020000              JNZ 0x0054e3e2
0054e100  3b8de0feffff              CMP ECX,dword ptr [EBP + 0xfffffee0]
0054e106  0f85d6020000              JNZ 0x0054e3e2
0054e10c  f30f108690030000          MOVSS XMM0,dword ptr [ESI + 0x390]
0054e114  f30f5c8790030000          SUBSS XMM0,dword ptr [EDI + 0x390]
0054e11c  f30f108e8c030000          MOVSS XMM1,dword ptr [ESI + 0x38c]
0054e124  f30f5c8f8c030000          SUBSS XMM1,dword ptr [EDI + 0x38c]
0054e12c  0f28d0                    MOVAPS XMM2,XMM0
0054e12f  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0054e137  f30f59d0                  MULSS XMM2,XMM0
0054e13b  0f28c1                    MOVAPS XMM0,XMM1
0054e13e  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
0054e146  f30f59c1                  MULSS XMM0,XMM1
0054e14a  f30f58d0                  ADDSS XMM2,XMM0
0054e14e  0f28c2                    MOVAPS XMM0,XMM2
0054e151  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
0054e159  e8f278eeff                CALL 0x00435a50
0054e15e  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
0054e166  0f28d0                    MOVAPS XMM2,XMM0
0054e169  f30f588e70030000          ADDSS XMM1,dword ptr [ESI + 0x370]
0054e171  8b953cffffff              MOV EDX,dword ptr [EBP + 0xffffff3c]
0054e177  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
0054e17d  03d0                      ADD EDX,EAX
0054e17f  8bca                      MOV ECX,EDX
0054e181  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
0054e189  d1e9                      SHR ECX,0x1
0054e18b  f30f580d04a9ba00          ADDSS XMM1,dword ptr [0x00baa904]
0054e193  0f2fd1                    COMISS XMM2,XMM1
0054e196  0f860c010000              JBE 0x0054e2a8
0054e19c  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
0054e1a2  f30f5cc1                  SUBSS XMM0,XMM1
0054e1a6  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
0054e1ac  83e201                    AND EDX,0x1
0054e1af  48                        DEC EAX
0054e1b0  23c8                      AND ECX,EAX
0054e1b2  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
0054e1b8  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
0054e1c0  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0054e1c3  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
0054e1c8  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
0054e1cd  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
0054e1d3  8b953cffffff              MOV EDX,dword ptr [EBP + 0xffffff3c]
0054e1d9  03d0                      ADD EDX,EAX
0054e1db  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
0054e1e1  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
0054e1e7  8bca                      MOV ECX,EDX
0054e1e9  48                        DEC EAX
0054e1ea  d1e9                      SHR ECX,0x1
0054e1ec  23c8                      AND ECX,EAX
0054e1ee  83e201                    AND EDX,0x1
0054e1f1  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
0054e1f7  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0054e1fa  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
0054e1ff  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
0054e206  0f86be000000              JBE 0x0054e2ca
0054e20c  57                        PUSH EDI
0054e20d  8bce                      MOV ECX,ESI
0054e20f  e89cefffff                CALL 0x0054d1b0
0054e214  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
0054e21a  85c0                      TEST EAX,EAX
0054e21c  742a                      JZ 0x0054e248
0054e21e  8b08                      MOV ECX,dword ptr [EAX]
0054e220  85c9                      TEST ECX,ECX
0054e222  741e                      JZ 0x0054e242
0054e224  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
0054e22a  81c1cc030000              ADD ECX,0x3cc
0054e230  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
0054e236  50                        PUSH EAX
0054e237  e8d40ff8ff                CALL 0x004cf210
0054e23c  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
0054e242  c70000000000              MOV dword ptr [EAX],0x0
0054e248  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
0054e24e  85c0                      TEST EAX,EAX
0054e250  7404                      JZ 0x0054e256
0054e252  8b00                      MOV EAX,dword ptr [EAX]
0054e254  eb02                      JMP 0x0054e258
0054e256  33c0                      XOR EAX,EAX
0054e258  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0054e25b  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0054e25e  49                        DEC ECX
0054e25f  238dd0feffff              AND ECX,dword ptr [EBP + 0xfffffed0]
0054e265  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0054e268  0385ecfeffff              ADD EAX,dword ptr [EBP + 0xfffffeec]
0054e26e  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
0054e274  8b08                      MOV ECX,dword ptr [EAX]
0054e276  85c9                      TEST ECX,ECX
0054e278  741e                      JZ 0x0054e298
0054e27a  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0054e280  81c1cc030000              ADD ECX,0x3cc
0054e286  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0054e28c  50                        PUSH EAX
0054e28d  e87e0ff8ff                CALL 0x004cf210
0054e292  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
0054e298  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
0054e2a0  c70000000000              MOV dword ptr [EAX],0x0
0054e2a6  eb22                      JMP 0x0054e2ca
0054e2a8  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0054e2ae  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
0054e2b4  48                        DEC EAX
0054e2b5  23c8                      AND ECX,EAX
0054e2b7  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
0054e2bd  83e201                    AND EDX,0x1
0054e2c0  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0054e2c3  c704d000000000            MOV dword ptr [EAX + EDX*0x8],0x0
0054e2ca  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0054e2d2  f30f588670030000          ADDSS XMM0,dword ptr [ESI + 0x370]
0054e2da  f30f5cd0                  SUBSS XMM2,XMM0
0054e2de  0f57c0                    XORPS XMM0,XMM0
0054e2e1  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
0054e2e9  0f2fc2                    COMISS XMM0,XMM2
0054e2ec  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
0054e2f4  760f                      JBE 0x0054e305
0054e2f6  0f28ca                    MOVAPS XMM1,XMM2
0054e2f9  f30f58ca                  ADDSS XMM1,XMM2
0054e2fd  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
0054e305  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0054e30d  e83e77eeff                CALL 0x00435a50
0054e312  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0054e319  f30f1095dcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffedc]
0054e321  f30f109dd8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffed8]
0054e329  7617                      JBE 0x0054e342
0054e32b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0054e333  f30f5ec8                  DIVSS XMM1,XMM0
0054e337  0f28c1                    MOVAPS XMM0,XMM1
0054e33a  f30f59d9                  MULSS XMM3,XMM1
0054e33e  f30f59d0                  MULSS XMM2,XMM0
0054e342  f30f599538ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff38]
0054e34a  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
0054e350  f30f599d38ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff38]
0054e358  8b86c00b0000              MOV EAX,dword ptr [ESI + 0xbc0]
0054e35e  f30f58952cffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff2c]
0054e366  f30f589d30ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff30]
0054e36e  f30f11952cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM2
0054e376  f30f119d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM3
0054e37e  3b85d4feffff              CMP EAX,dword ptr [EBP + 0xfffffed4]
0054e384  0f8e9f000000              JLE 0x0054e429
0054e38a  8b96bc030000              MOV EDX,dword ptr [ESI + 0x3bc]
0054e390  8bce                      MOV ECX,ESI
0054e392  85d2                      TEST EDX,EDX
0054e394  741c                      JZ 0x0054e3b2
0054e396  8bc2                      MOV EAX,EDX
0054e398  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0054e3a0  8bc8                      MOV ECX,EAX
0054e3a2  8b81bc030000              MOV EAX,dword ptr [ECX + 0x3bc]
0054e3a8  85c0                      TEST EAX,EAX
0054e3aa  75f4                      JNZ 0x0054e3a0
0054e3ac  8b86c00b0000              MOV EAX,dword ptr [ESI + 0xbc0]
0054e3b2  3bcf                      CMP ECX,EDI
0054e3b4  7473                      JZ 0x0054e429
0054e3b6  3bd7                      CMP EDX,EDI
0054e3b8  746f                      JZ 0x0054e429
0054e3ba  3bf7                      CMP ESI,EDI
0054e3bc  746b                      JZ 0x0054e429
0054e3be  8b9520ffffff              MOV EDX,dword ptr [EBP + 0xffffff20]
0054e3c4  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
0054e3ca  42                        INC EDX
0054e3cb  ff853cffffff              INC dword ptr [EBP + 0xffffff3c]
0054e3d1  89b534ffffff              MOV dword ptr [EBP + 0xffffff34],ESI
0054e3d7  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0054e3dd  e99afcffff                JMP 0x0054e07c
0054e3e2  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
0054e3e8  85c0                      TEST EAX,EAX
0054e3ea  7404                      JZ 0x0054e3f0
0054e3ec  8b00                      MOV EAX,dword ptr [EAX]
0054e3ee  eb02                      JMP 0x0054e3f2
0054e3f0  33c0                      XOR EAX,EAX
0054e3f2  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0054e3f5  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0054e3f8  49                        DEC ECX
0054e3f9  238dd0feffff              AND ECX,dword ptr [EBP + 0xfffffed0]
0054e3ff  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
0054e402  8b0c16                    MOV ECX,dword ptr [ESI + EDX*0x1]
0054e405  03f2                      ADD ESI,EDX
0054e407  85c9                      TEST ECX,ECX
0054e409  7418                      JZ 0x0054e423
0054e40b  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
0054e411  89b5fcfeffff              MOV dword ptr [EBP + 0xfffffefc],ESI
0054e417  50                        PUSH EAX
0054e418  81c1cc030000              ADD ECX,0x3cc
0054e41e  e8ed0df8ff                CALL 0x004cf210
0054e423  c70600000000              MOV dword ptr [ESI],0x0
0054e429  8b9520ffffff              MOV EDX,dword ptr [EBP + 0xffffff20]
0054e42f  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
0054e435  42                        INC EDX
0054e436  ff853cffffff              INC dword ptr [EBP + 0xffffff3c]
0054e43c  e93bfcffff                JMP 0x0054e07c
0054e441  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0054e447  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0054e44d  85c9                      TEST ECX,ECX
0054e44f  741e                      JZ 0x0054e46f
0054e451  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0054e457  81c1cc030000              ADD ECX,0x3cc
0054e45d  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
0054e463  50                        PUSH EAX
0054e464  e8a70df8ff                CALL 0x004cf210
0054e469  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0054e46f  8bb534ffffff              MOV ESI,dword ptr [EBP + 0xffffff34]
0054e475  8930                      MOV dword ptr [EAX],ESI
0054e477  85f6                      TEST ESI,ESI
0054e479  7408                      JZ 0x0054e483
0054e47b  50                        PUSH EAX
0054e47c  8bce                      MOV ECX,ESI
0054e47e  e86df8f7ff                CALL 0x004cdcf0
0054e483  6a00                      PUSH 0x0
0054e485  6a0a                      PUSH 0xa
0054e487  8bcf                      MOV ECX,EDI
0054e489  e882e21500                CALL 0x006ac710
0054e48e  84c0                      TEST AL,AL
0054e490  747c                      JZ 0x0054e50e
0054e492  8bcf                      MOV ECX,EDI
0054e494  e8a7031700                CALL 0x006be840
0054e499  f30f108f8c030000          MOVSS XMM1,dword ptr [EDI + 0x38c]
0054e4a1  f30f108790030000          MOVSS XMM0,dword ptr [EDI + 0x390]
0054e4a9  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
0054e4b1  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0054e4b9  f30f59c0                  MULSS XMM0,XMM0
0054e4bd  f30f59c9                  MULSS XMM1,XMM1
0054e4c1  f30f58c1                  ADDSS XMM0,XMM1
0054e4c5  e88675eeff                CALL 0x00435a50
0054e4ca  f30f58c0                  ADDSS XMM0,XMM0
0054e4ce  b910270000                MOV ECX,0x2710
0054e4d3  f30f2cc0                  CVTTSS2SI EAX,XMM0
0054e4d7  2bc8                      SUB ECX,EAX
0054e4d9  80bd2bffffff00            CMP byte ptr [EBP + 0xffffff2b],0x0
0054e4e0  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0054e4e6  7526                      JNZ 0x0054e50e
0054e4e8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0054e4ee  25000b0001                AND EAX,0x1000b00
0054e4f3  83c800                    OR EAX,0x0
0054e4f6  7416                      JZ 0x0054e50e
0054e4f8  e8630a1a00                CALL 0x006eef60
0054e4fd  33d2                      XOR EDX,EDX
0054e4ff  b9c8000000                MOV ECX,0xc8
0054e504  f7f1                      DIV ECX
0054e506  03d1                      ADD EDX,ECX
0054e508  2997c00b0000              SUB dword ptr [EDI + 0xbc0],EDX
0054e50e  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0054e516  0f28c1                    MOVAPS XMM0,XMM1
0054e519  f30f598d30ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff30]
0054e521  f30f59852cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff2c]
0054e529  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0054e531  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0054e539  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0054e541  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0054e549  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0054e550  0f84e3050000              JZ 0x0054eb39
0054e556  6a08                      PUSH 0x8
0054e558  c7850cffffff00000000      MOV dword ptr [EBP + 0xffffff0c],0x0
0054e562  c78510ffffff00000000      MOV dword ptr [EBP + 0xffffff10],0x0
0054e56c  c78514ffffff00000000      MOV dword ptr [EBP + 0xffffff14],0x0
0054e576  c78518ffffff00000000      MOV dword ptr [EBP + 0xffffff18],0x0
0054e580  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
0054e58a  e8310f4c00                CALL 0x00a0f4c0
0054e58f  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
0054e595  83c404                    ADD ESP,0x4
0054e598  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
0054e59f  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
0054e5a5  8908                      MOV dword ptr [EAX],ECX
0054e5a7  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
0054e5ae  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
0054e5b4  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e5ba  8b9514ffffff              MOV EDX,dword ptr [EBP + 0xffffff14]
0054e5c0  8d0431                    LEA EAX,[ECX + ESI*0x1]
0054e5c3  a803                      TEST AL,0x3
0054e5c5  7528                      JNZ 0x0054e5ef
0054e5c7  8d4604                    LEA EAX,[ESI + 0x4]
0054e5ca  c1e802                    SHR EAX,0x2
0054e5cd  3bd0                      CMP EDX,EAX
0054e5cf  771e                      JA 0x0054e5ef
0054e5d1  51                        PUSH ECX
0054e5d2  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
0054e5d8  e873d8efff                CALL 0x0044be50
0054e5dd  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e5e3  8b8d18ffffff              MOV ECX,dword ptr [EBP + 0xffffff18]
0054e5e9  8b9514ffffff              MOV EDX,dword ptr [EBP + 0xffffff14]
0054e5ef  8d0495ffffffff            LEA EAX,[EDX*0x4 + 0xffffffff]
0054e5f6  23c8                      AND ECX,EAX
0054e5f8  8d42ff                    LEA EAX,[EDX + -0x1]
0054e5fb  898d18ffffff              MOV dword ptr [EBP + 0xffffff18],ECX
0054e601  03ce                      ADD ECX,ESI
0054e603  8bf1                      MOV ESI,ECX
0054e605  898dfcfeffff              MOV dword ptr [EBP + 0xfffffefc],ECX
0054e60b  c1ee02                    SHR ESI,0x2
0054e60e  23f0                      AND ESI,EAX
0054e610  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
0054e616  833cb000                  CMP dword ptr [EAX + ESI*0x4],0x0
0054e61a  751f                      JNZ 0x0054e63b
0054e61c  6a10                      PUSH 0x10
0054e61e  e89d0e4c00                CALL 0x00a0f4c0
0054e623  8b8d10ffffff              MOV ECX,dword ptr [EBP + 0xffffff10]
0054e629  83c404                    ADD ESP,0x4
0054e62c  8904b1                    MOV dword ptr [ECX + ESI*0x4],EAX
0054e62f  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
0054e635  8b8dfcfeffff              MOV ECX,dword ptr [EBP + 0xfffffefc]
0054e63b  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0054e63e  83e103                    AND ECX,0x3
0054e641  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
0054e64b  893c88                    MOV dword ptr [EAX + ECX*0x4],EDI
0054e64e  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e654  83c601                    ADD ESI,0x1
0054e657  c78508ffffff00000000      MOV dword ptr [EBP + 0xffffff08],0x0
0054e661  89b51cffffff              MOV dword ptr [EBP + 0xffffff1c],ESI
0054e667  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
0054e671  0f84b7040000              JZ 0x0054eb2e
0054e677  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0054e680  8bbd18ffffff              MOV EDI,dword ptr [EBP + 0xffffff18]
0054e686  8d0437                    LEA EAX,[EDI + ESI*0x1]
0054e689  8d50ff                    LEA EDX,[EAX + -0x1]
0054e68c  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0054e692  8bca                      MOV ECX,EDX
0054e694  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0054e69a  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
0054e69d  83e203                    AND EDX,0x3
0054e6a0  48                        DEC EAX
0054e6a1  c1e902                    SHR ECX,0x2
0054e6a4  23c8                      AND ECX,EAX
0054e6a6  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0054e6ac  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0054e6af  83ee01                    SUB ESI,0x1
0054e6b2  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0054e6b5  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
0054e6b8  b800000000                MOV EAX,0x0
0054e6bd  0f44f8                    CMOVZ EDI,EAX
0054e6c0  89b51cffffff              MOV dword ptr [EBP + 0xffffff1c],ESI
0054e6c6  89bd18ffffff              MOV dword ptr [EBP + 0xffffff18],EDI
0054e6cc  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
0054e6d2  8b81f00b0000              MOV EAX,dword ptr [ECX + 0xbf0]
0054e6d8  8b91fc0b0000              MOV EDX,dword ptr [ECX + 0xbfc]
0054e6de  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0054e6e4  8b81fc0b0000              MOV EAX,dword ptr [ECX + 0xbfc]
0054e6ea  0381000c0000              ADD EAX,dword ptr [ECX + 0xc00]
0054e6f0  899530ffffff              MOV dword ptr [EBP + 0xffffff30],EDX
0054e6f6  3bd0                      CMP EDX,EAX
0054e6f8  0f846c010000              JZ 0x0054e86a
0054e6fe  8b85fcfeffff              MOV EAX,dword ptr [EBP + 0xfffffefc]
0054e704  85c0                      TEST EAX,EAX
0054e706  7404                      JZ 0x0054e70c
0054e708  8b08                      MOV ECX,dword ptr [EAX]
0054e70a  eb02                      JMP 0x0054e70e
0054e70c  33c9                      XOR ECX,ECX
0054e70e  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
0054e711  48                        DEC EAX
0054e712  c1ea02                    SHR EDX,0x2
0054e715  23d0                      AND EDX,EAX
0054e717  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0054e71a  8b8d30ffffff              MOV ECX,dword ptr [EBP + 0xffffff30]
0054e720  83e103                    AND ECX,0x3
0054e723  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0054e726  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0054e729  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
0054e72f  85c0                      TEST EAX,EAX
0054e731  0f8421010000              JZ 0x0054e858
0054e737  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0054e73d  8d0437                    LEA EAX,[EDI + ESI*0x1]
0054e740  a803                      TEST AL,0x3
0054e742  7528                      JNZ 0x0054e76c
0054e744  8d4604                    LEA EAX,[ESI + 0x4]
0054e747  c1e802                    SHR EAX,0x2
0054e74a  3bc8                      CMP ECX,EAX
0054e74c  771e                      JA 0x0054e76c
0054e74e  51                        PUSH ECX
0054e74f  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
0054e755  e8f6d6efff                CALL 0x0044be50
0054e75a  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e760  8bbd18ffffff              MOV EDI,dword ptr [EBP + 0xffffff18]
0054e766  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0054e76c  8d048dffffffff            LEA EAX,[ECX*0x4 + 0xffffffff]
0054e773  23f8                      AND EDI,EAX
0054e775  89bd18ffffff              MOV dword ptr [EBP + 0xffffff18],EDI
0054e77b  03fe                      ADD EDI,ESI
0054e77d  8bc7                      MOV EAX,EDI
0054e77f  8d71ff                    LEA ESI,[ECX + -0x1]
0054e782  c1e802                    SHR EAX,0x2
0054e785  23f0                      AND ESI,EAX
0054e787  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
0054e78d  833cb000                  CMP dword ptr [EAX + ESI*0x4],0x0
0054e791  7519                      JNZ 0x0054e7ac
0054e793  6a10                      PUSH 0x10
0054e795  e8260d4c00                CALL 0x00a0f4c0
0054e79a  8b8d10ffffff              MOV ECX,dword ptr [EBP + 0xffffff10]
0054e7a0  83c404                    ADD ESP,0x4
0054e7a3  8904b1                    MOV dword ptr [ECX + ESI*0x4],EAX
0054e7a6  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
0054e7ac  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0054e7af  83e703                    AND EDI,0x3
0054e7b2  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
0054e7b8  51                        PUSH ECX
0054e7b9  890cb8                    MOV dword ptr [EAX + EDI*0x4],ECX
0054e7bc  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e7c2  8bbd2cffffff              MOV EDI,dword ptr [EBP + 0xffffff2c]
0054e7c8  46                        INC ESI
0054e7c9  8bcf                      MOV ECX,EDI
0054e7cb  89b51cffffff              MOV dword ptr [EBP + 0xffffff1c],ESI
0054e7d1  e8dae9ffff                CALL 0x0054d1b0
0054e7d6  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
0054e7dc  57                        PUSH EDI
0054e7dd  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
0054e7e3  e8c8e9ffff                CALL 0x0054d1b0
0054e7e8  8bf8                      MOV EDI,EAX
0054e7ea  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
0054e7f0  85c0                      TEST EAX,EAX
0054e7f2  7430                      JZ 0x0054e824
0054e7f4  8b08                      MOV ECX,dword ptr [EAX]
0054e7f6  85c9                      TEST ECX,ECX
0054e7f8  741e                      JZ 0x0054e818
0054e7fa  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0054e800  81c1cc030000              ADD ECX,0x3cc
0054e806  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0054e80c  50                        PUSH EAX
0054e80d  e8fe09f8ff                CALL 0x004cf210
0054e812  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
0054e818  c70000000000              MOV dword ptr [EAX],0x0
0054e81e  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e824  85ff                      TEST EDI,EDI
0054e826  742a                      JZ 0x0054e852
0054e828  8b0f                      MOV ECX,dword ptr [EDI]
0054e82a  85c9                      TEST ECX,ECX
0054e82c  7418                      JZ 0x0054e846
0054e82e  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0054e834  89bdecfeffff              MOV dword ptr [EBP + 0xfffffeec],EDI
0054e83a  50                        PUSH EAX
0054e83b  81c1cc030000              ADD ECX,0x3cc
0054e841  e8ca09f8ff                CALL 0x004cf210
0054e846  c70700000000              MOV dword ptr [EDI],0x0
0054e84c  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e852  8bbd18ffffff              MOV EDI,dword ptr [EBP + 0xffffff18]
0054e858  8b9530ffffff              MOV EDX,dword ptr [EBP + 0xffffff30]
0054e85e  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
0054e864  42                        INC EDX
0054e865  e97afeffff                JMP 0x0054e6e4
0054e86a  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
0054e872  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
0054e87a  f30f588504ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff04]
0054e882  f30f588d08ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff08]
0054e88a  ff8524ffffff              INC dword ptr [EBP + 0xffffff24]
0054e890  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0054e898  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
0054e8a0  c781c40b000000000000      MOV dword ptr [ECX + 0xbc4],0x0
0054e8aa  e8b1061a00                CALL 0x006eef60
0054e8af  33d2                      XOR EDX,EDX
0054e8b1  8bbde4feffff              MOV EDI,dword ptr [EBP + 0xfffffee4]
0054e8b7  b93c000000                MOV ECX,0x3c
0054e8bc  f7f1                      DIV ECX
0054e8be  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
0054e8c4  83c21e                    ADD EDX,0x1e
0054e8c7  8990a00b0000              MOV dword ptr [EAX + 0xba0],EDX
0054e8cd  3bc7                      CMP EAX,EDI
0054e8cf  7432                      JZ 0x0054e903
0054e8d1  f30f108884030000          MOVSS XMM1,dword ptr [EAX + 0x384]
0054e8d9  0f28c1                    MOVAPS XMM0,XMM1
0054e8dc  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0054e8e4  f30f588080030000          ADDSS XMM0,dword ptr [EAX + 0x380]
0054e8ec  0f2fc1                    COMISS XMM0,XMM1
0054e8ef  7706                      JA 0x0054e8f7
0054e8f1  f30f10c0                  MOVSS XMM0,XMM0
0054e8f5  eb04                      JMP 0x0054e8fb
0054e8f7  f30f10c1                  MOVSS XMM0,XMM1
0054e8fb  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0054e903  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
0054e909  85f6                      TEST ESI,ESI
0054e90b  0f856ffdffff              JNZ 0x0054e680
0054e911  8bb524ffffff              MOV ESI,dword ptr [EBP + 0xffffff24]
0054e917  83fe01                    CMP ESI,0x1
0054e91a  0f8e0e020000              JLE 0x0054eb2e
0054e920  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
0054e928  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0054e92e  660f6ece                  MOVD XMM1,ESI
0054e932  0f5bc9                    CVTDQ2PS XMM1,XMM1
0054e935  f30f5ec1                  DIVSS XMM0,XMM1
0054e939  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
0054e941  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0054e949  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
0054e951  f30f5ec1                  DIVSS XMM0,XMM1
0054e955  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0054e95d  e8ce05efff                CALL 0x0043ef30
0054e962  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0054e96a  8bcf                      MOV ECX,EDI
0054e96c  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0054e974  a17c4ec300                MOV EAX,[0x00c34e7c]
0054e979  894594                    MOV dword ptr [EBP + -0x6c],EAX
0054e97c  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0054e982  50                        PUSH EAX
0054e983  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0054e98b  33c0                      XOR EAX,EAX
0054e98d  c785e8feffff00002041      MOV dword ptr [EBP + 0xfffffee8],0x41200000
0054e997  83fe03                    CMP ESI,0x3
0054e99a  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0054e9a4  0f9fc0                    SETG AL
0054e9a7  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0054e9af  0f1005544ec300            MOVUPS XMM0,xmmword ptr [0x00c34e54]
0054e9b6  8d044506000000            LEA EAX,[EAX*0x2 + 0x6]
0054e9bd  50                        PUSH EAX
0054e9be  0f11856cffffff            MOVUPS xmmword ptr [EBP + 0xffffff6c],XMM0
0054e9c5  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0054e9cb  0f1005644ec300            MOVUPS XMM0,xmmword ptr [0x00c34e64]
0054e9d2  50                        PUSH EAX
0054e9d3  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
0054e9d9  0f11857cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM0
0054e9e0  50                        PUSH EAX
0054e9e1  f30f7e05744ec300          MOVQ XMM0,qword ptr [0x00c34e74]
0054e9e9  660fd6458c                MOVQ qword ptr [EBP + -0x74],XMM0
0054e9ee  e8edc81700                CALL 0x006cb2e0
0054e9f3  e868051a00                CALL 0x006eef60
0054e9f8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054e9fe  8db73c030000              LEA ESI,[EDI + 0x33c]
0054ea04  50                        PUSH EAX
0054ea05  6a00                      PUSH 0x0
0054ea07  57                        PUSH EDI
0054ea08  6840b6c700                PUSH 0xc7b640
0054ea0d  56                        PUSH ESI
0054ea0e  6a1a                      PUSH 0x1a
0054ea10  68e8030000                PUSH 0x3e8
0054ea15  e806a1edff                CALL 0x00428b20
0054ea1a  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0054ea22  8bc8                      MOV ECX,EAX
0054ea24  0f28c8                    MOVAPS XMM1,XMM0
0054ea27  f30f59054079c300          MULSS XMM0,dword ptr [0x00c37940]
0054ea2f  f30f590d3c79c300          MULSS XMM1,dword ptr [0x00c3793c]
0054ea37  8b01                      MOV EAX,dword ptr [ECX]
0054ea39  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
0054ea41  c7815c0400002c010000      MOV dword ptr [ECX + 0x45c],0x12c
0054ea4b  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
0054ea53  c781600400002c010000      MOV dword ptr [ECX + 0x460],0x12c
0054ea5d  ff500c                    CALL dword ptr [EAX + 0xc]
0054ea60  e8fb041a00                CALL 0x006eef60
0054ea65  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054ea6b  50                        PUSH EAX
0054ea6c  6a02                      PUSH 0x2
0054ea6e  6a00                      PUSH 0x0
0054ea70  6840b6c700                PUSH 0xc7b640
0054ea75  56                        PUSH ESI
0054ea76  6a02                      PUSH 0x2
0054ea78  68e8030000                PUSH 0x3e8
0054ea7d  e89ea0edff                CALL 0x00428b20
0054ea82  6a01                      PUSH 0x1
0054ea84  8bf0                      MOV ESI,EAX
0054ea86  81c7e4010000              ADD EDI,0x1e4
0054ea8c  6a00                      PUSH 0x0
0054ea8e  68ff000000                PUSH 0xff
0054ea93  6aff                      PUSH -0x1
0054ea95  8b16                      MOV EDX,dword ptr [ESI]
0054ea97  8bce                      MOV ECX,ESI
0054ea99  57                        PUSH EDI
0054ea9a  ff523c                    CALL dword ptr [EDX + 0x3c]
0054ea9d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0054eaa5  f30f1186dc000000          MOVSS dword ptr [ESI + 0xdc],XMM0
0054eaad  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0054eab5  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
0054eabd  c78658030000000020c1      MOV dword ptr [ESI + 0x358],0xc1200000
0054eac7  e894041a00                CALL 0x006eef60
0054eacc  51                        PUSH ECX
0054eacd  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
0054ead3  660f6ec0                  MOVD XMM0,EAX
0054ead7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054eadb  c1e81f                    SHR EAX,0x1f
0054eade  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0054eae7  660f5ac0                  CVTPD2PS XMM0,XMM0
0054eaeb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0054eaf3  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0054eafb  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
0054eb03  f30f59853cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff3c]
0054eb0b  f30f110424                MOVSS dword ptr [ESP],XMM0
0054eb10  e8bb791600                CALL 0x006b64d0
0054eb15  6a01                      PUSH 0x1
0054eb17  6a00                      PUSH 0x0
0054eb19  68ff000000                PUSH 0xff
0054eb1e  8b10                      MOV EDX,dword ptr [EAX]
0054eb20  8bc8                      MOV ECX,EAX
0054eb22  6aff                      PUSH -0x1
0054eb24  57                        PUSH EDI
0054eb25  ff523c                    CALL dword ptr [EDX + 0x3c]
0054eb28  8bbde4feffff              MOV EDI,dword ptr [EBP + 0xfffffee4]
0054eb2e  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
0054eb34  e8278f0000                CALL 0x00557a60
0054eb39  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0054eb3f  85c0                      TEST EAX,EAX
0054eb41  7e07                      JLE 0x0054eb4a
0054eb43  48                        DEC EAX
0054eb44  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0054eb4a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0054eb4d  64890d00000000            MOV dword ptr FS:[0x0],ECX
0054eb54  59                        POP ECX
0054eb55  5f                        POP EDI
0054eb56  5e                        POP ESI
0054eb57  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0054eb5a  33cd                      XOR ECX,EBP
0054eb5c  e8ca055a00                CALL 0x00aef12b
0054eb61  8be5                      MOV ESP,EBP
0054eb63  5d                        POP EBP
0054eb64  8be3                      MOV ESP,EBX
0054eb66  5b                        POP EBX
0054eb67  c3                        RET
