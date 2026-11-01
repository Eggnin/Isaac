; J460 NPC AI 0x0059edb0 AI_0059edb0
; types=406
; identities=406.0.0,406.1.0
; entry=0059edb0
0059edb0  53                        PUSH EBX
0059edb1  8bdc                      MOV EBX,ESP
0059edb3  83ec08                    SUB ESP,0x8
0059edb6  83e4f8                    AND ESP,0xfffffff8
0059edb9  83c404                    ADD ESP,0x4
0059edbc  55                        PUSH EBP
0059edbd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0059edc0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0059edc4  8bec                      MOV EBP,ESP
0059edc6  6aff                      PUSH -0x1
0059edc8  689d58af00                PUSH 0xaf589d
0059edcd  64a100000000              MOV EAX,FS:[0x0]
0059edd3  50                        PUSH EAX
0059edd4  53                        PUSH EBX
0059edd5  81ec40020000              SUB ESP,0x240
0059eddb  a1b493bf00                MOV EAX,[0x00bf93b4]
0059ede0  33c5                      XOR EAX,EBP
0059ede2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0059ede5  56                        PUSH ESI
0059ede6  57                        PUSH EDI
0059ede7  50                        PUSH EAX
0059ede8  8d45f4                    LEA EAX,[EBP + -0xc]
0059edeb  64a300000000              MOV FS:[0x0],EAX
0059edf1  8bf9                      MOV EDI,ECX
0059edf3  89bde0feffff              MOV dword ptr [EBP + 0xfffffee0],EDI
0059edf9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0059edfd  7543                      JNZ 0x0059ee42
0059edff  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0059ee04  0f57c9                    XORPS XMM1,XMM1
0059ee07  0f2fc1                    COMISS XMM0,XMM1
0059ee0a  7636                      JBE 0x0059ee42
0059ee0c  f30f5cc1                  SUBSS XMM0,XMM1
0059ee10  f30f5e05d0a9ba00          DIVSS XMM0,dword ptr [0x00baa9d0]
0059ee18  f30f5fc1                  MAXSS XMM0,XMM1
0059ee1c  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0059ee24  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0059ee2c  f30f58c1                  ADDSS XMM0,XMM1
0059ee30  e87b810000                CALL 0x005a6fb0
0059ee35  e8660e5500                CALL 0x00aefca0
0059ee3a  50                        PUSH EAX
0059ee3b  8bcf                      MOV ECX,EDI
0059ee3d  e87ef6ffff                CALL 0x0059e4c0
0059ee42  a17816c700                MOV EAX,[0x00c71678]
0059ee47  6a00                      PUSH 0x0
0059ee49  6a01                      PUSH 0x1
0059ee4b  6aff                      PUSH -0x1
0059ee4d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0059ee53  8d851cfeffff              LEA EAX,[EBP + 0xfffffe1c]
0059ee59  6a14                      PUSH 0x14
0059ee5b  6a05                      PUSH 0x5
0059ee5d  81c118120000              ADD ECX,0x1218
0059ee63  50                        PUSH EAX
0059ee64  e8f7c0e7ff                CALL 0x0041af60
0059ee69  6a00                      PUSH 0x0
0059ee6b  6a01                      PUSH 0x1
0059ee6d  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0059ee74  a17816c700                MOV EAX,[0x00c71678]
0059ee79  6aff                      PUSH -0x1
0059ee7b  6aff                      PUSH -0x1
0059ee7d  6825010000                PUSH 0x125
0059ee82  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0059ee88  8d85ecfdffff              LEA EAX,[EBP + 0xfffffdec]
0059ee8e  81c118120000              ADD ECX,0x1218
0059ee94  50                        PUSH EAX
0059ee95  e8c6c0e7ff                CALL 0x0041af60
0059ee9a  6a00                      PUSH 0x0
0059ee9c  6a01                      PUSH 0x1
0059ee9e  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0059eea2  a17816c700                MOV EAX,[0x00c71678]
0059eea7  6aff                      PUSH -0x1
0059eea9  6aff                      PUSH -0x1
0059eeab  682b010000                PUSH 0x12b
0059eeb0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0059eeb6  8d85dcfdffff              LEA EAX,[EBP + 0xfffffddc]
0059eebc  81c118120000              ADD ECX,0x1218
0059eec2  50                        PUSH EAX
0059eec3  e898c0e7ff                CALL 0x0041af60
0059eec8  6a00                      PUSH 0x0
0059eeca  6a01                      PUSH 0x1
0059eecc  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0059eed0  a17816c700                MOV EAX,[0x00c71678]
0059eed5  6aff                      PUSH -0x1
0059eed7  6aff                      PUSH -0x1
0059eed9  6a56                      PUSH 0x56
0059eedb  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0059eee1  8d85fcfdffff              LEA EAX,[EBP + 0xfffffdfc]
0059eee7  81c118120000              ADD ECX,0x1218
0059eeed  50                        PUSH EAX
0059eeee  e86dc0e7ff                CALL 0x0041af60
0059eef3  6a00                      PUSH 0x0
0059eef5  6a01                      PUSH 0x1
0059eef7  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0059eefb  a17816c700                MOV EAX,[0x00c71678]
0059ef00  6aff                      PUSH -0x1
0059ef02  6aff                      PUSH -0x1
0059ef04  6826010000                PUSH 0x126
0059ef09  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0059ef0f  8d850cfeffff              LEA EAX,[EBP + 0xfffffe0c]
0059ef15  81c118120000              ADD ECX,0x1218
0059ef1b  50                        PUSH EAX
0059ef1c  e83fc0e7ff                CALL 0x0041af60
0059ef21  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
0059ef25  33f6                      XOR ESI,ESI
0059ef27  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
0059ef31  39b528feffff              CMP dword ptr [EBP + 0xfffffe28],ESI
0059ef37  765d                      JBE 0x0059ef96
0059ef39  33ff                      XOR EDI,EDI
0059ef3b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0059ef40  8b8520feffff              MOV EAX,dword ptr [EBP + 0xfffffe20]
0059ef46  6a00                      PUSH 0x0
0059ef48  68d4d7c500                PUSH 0xc5d7d4
0059ef4d  68dcd5c500                PUSH 0xc5d5dc
0059ef52  6a00                      PUSH 0x0
0059ef54  ff34b0                    PUSH dword ptr [EAX + ESI*0x4]
0059ef57  e855195500                CALL 0x00af08b1
0059ef5c  83c414                    ADD ESP,0x14
0059ef5f  85c0                      TEST EAX,EAX
0059ef61  741e                      JZ 0x0059ef81
0059ef63  83782c14                  CMP dword ptr [EAX + 0x2c],0x14
0059ef67  7514                      JNZ 0x0059ef7d
0059ef69  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
0059ef6c  8d41ff                    LEA EAX,[ECX + -0x1]
0059ef6f  83f806                    CMP EAX,0x6
0059ef72  7709                      JA 0x0059ef7d
0059ef74  8b048d347eb600            MOV EAX,dword ptr [ECX*0x4 + 0xb67e34]
0059ef7b  eb02                      JMP 0x0059ef7f
0059ef7d  33c0                      XOR EAX,EAX
0059ef7f  03f8                      ADD EDI,EAX
0059ef81  46                        INC ESI
0059ef82  3bb528feffff              CMP ESI,dword ptr [EBP + 0xfffffe28]
0059ef88  72b6                      JC 0x0059ef40
0059ef8a  89bdc8feffff              MOV dword ptr [EBP + 0xfffffec8],EDI
0059ef90  8bbde0feffff              MOV EDI,dword ptr [EBP + 0xfffffee0]
0059ef96  8b85f8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdf8]
0059ef9c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0059efa2  f30f100568a9ba00          MOVSS XMM0,dword ptr [0x00baa968]
0059efaa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059efb0  d1e8                      SHR EAX,0x1
0059efb2  0385e8fdffff              ADD EAX,dword ptr [EBP + 0xfffffde8]
0059efb8  038508feffff              ADD EAX,dword ptr [EBP + 0xfffffe08]
0059efbe  8a9642010000              MOV DL,byte ptr [ESI + 0x142]
0059efc4  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
0059efcc  f30f100510a9ba00          MOVSS XMM0,dword ptr [0x00baa910]
0059efd4  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
0059efda  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
0059efe2  84d2                      TEST DL,DL
0059efe4  751c                      JNZ 0x0059f002
0059efe6  837e0802                  CMP dword ptr [ESI + 0x8],0x2
0059efea  7536                      JNZ 0x0059f022
0059efec  85c9                      TEST ECX,ECX
0059efee  7432                      JZ 0x0059f022
0059eff0  83b93066020000            CMP dword ptr [ECX + 0x26630],0x0
0059eff7  7709                      JA 0x0059f002
0059eff9  80b98965020000            CMP byte ptr [ECX + 0x26589],0x0
0059f000  7420                      JZ 0x0059f022
0059f002  f30f1005a8a9ba00          MOVSS XMM0,dword ptr [0x00baa9a8]
0059f00a  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
0059f012  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
0059f01a  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
0059f022  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0059f026  7508                      JNZ 0x0059f030
0059f028  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
0059f030  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0059f036  85c0                      TEST EAX,EAX
0059f038  0f85a0020000              JNZ 0x0059f2de
0059f03e  84d2                      TEST DL,DL
0059f040  751a                      JNZ 0x0059f05c
0059f042  837e0802                  CMP dword ptr [ESI + 0x8],0x2
0059f046  7544                      JNZ 0x0059f08c
0059f048  85c9                      TEST ECX,ECX
0059f04a  7440                      JZ 0x0059f08c
0059f04c  398130660200              CMP dword ptr [ECX + 0x26630],EAX
0059f052  7708                      JA 0x0059f05c
0059f054  389189650200              CMP byte ptr [ECX + 0x26589],DL
0059f05a  7430                      JZ 0x0059f08c
0059f05c  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0059f064  f30f5905a0a4ba00          MULSS XMM0,dword ptr [0x00baa4a0]
0059f06c  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
0059f074  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0059f07c  f30f5905a0a4ba00          MULSS XMM0,dword ptr [0x00baa4a0]
0059f084  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
0059f08c  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0059f092  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0059f09a  c785dcfeffff0000803f      MOV dword ptr [EBP + 0xfffffedc],0x3f800000
0059f0a4  c785d8feffff00000040      MOV dword ptr [EBP + 0xfffffed8],0x40000000
0059f0ae  ff7048                    PUSH dword ptr [EAX + 0x48]
0059f0b1  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
0059f0b7  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
0059f0bd  51                        PUSH ECX
0059f0be  8bcf                      MOV ECX,EDI
0059f0c0  f30f110424                MOVSS dword ptr [ESP],XMM0
0059f0c5  e8d6d11000                CALL 0x006ac2a0
0059f0ca  c6874c0b000001            MOV byte ptr [EDI + 0xb4c],0x1
0059f0d1  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0059f0d7  8bc1                      MOV EAX,ECX
0059f0d9  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0059f0df  2500000020                AND EAX,0x20000000
0059f0e4  83c800                    OR EAX,0x0
0059f0e7  0f8535010000              JNZ 0x0059f222
0059f0ed  398518feffff              CMP dword ptr [EBP + 0xfffffe18],EAX
0059f0f3  0f8529010000              JNZ 0x0059f222
0059f0f9  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0059f101  ba01000000                MOV EDX,0x1
0059f106  33f6                      XOR ESI,ESI
0059f108  8995d4feffff              MOV dword ptr [EBP + 0xfffffed4],EDX
0059f10e  c785e0feffff44070000      MOV dword ptr [EBP + 0xfffffee0],0x744
0059f118  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0059f120  a17816c700                MOV EAX,[0x00c71678]
0059f125  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0059f12b  89857cfeffff              MOV dword ptr [EBP + 0xfffffe7c],EAX
0059f131  83fe07                    CMP ESI,0x7
0059f134  0f87b9000000              JA 0x0059f1f3
0059f13a  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0059f13d  8bce                      MOV ECX,ESI
0059f13f  c1e905                    SHR ECX,0x5
0059f142  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0059f145  85548838                  TEST dword ptr [EAX + ECX*0x4 + 0x38],EDX
0059f149  0f84a4000000              JZ 0x0059f1f3
0059f14f  8b957cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe7c]
0059f155  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
0059f15b  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
0059f15e  8b0410                    MOV EAX,dword ptr [EAX + EDX*0x1]
0059f161  99                        CDQ
0059f162  f7f9                      IDIV ECX
0059f164  660f6eca                  MOVD XMM1,EDX
0059f168  660f6ec0                  MOVD XMM0,EAX
0059f16c  0f5bc9                    CVTDQ2PS XMM1,XMM1
0059f16f  0f5bc0                    CVTDQ2PS XMM0,XMM0
0059f172  f30f59ca                  MULSS XMM1,XMM2
0059f176  f30f59c2                  MULSS XMM0,XMM2
0059f17a  f30f58ca                  ADDSS XMM1,XMM2
0059f17e  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
0059f186  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0059f18e  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0059f196  e8c5fd1400                CALL 0x006eef60
0059f19b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059f1a1  6a00                      PUSH 0x0
0059f1a3  68acd6c500                PUSH 0xc5d6ac
0059f1a8  68dcd5c500                PUSH 0xc5d5dc
0059f1ad  6a00                      PUSH 0x0
0059f1af  50                        PUSH EAX
0059f1b0  6a00                      PUSH 0x0
0059f1b2  57                        PUSH EDI
0059f1b3  6840b6c700                PUSH 0xc7b640
0059f1b8  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0059f1be  50                        PUSH EAX
0059f1bf  6a00                      PUSH 0x0
0059f1c1  6826010000                PUSH 0x126
0059f1c6  e85599e8ff                CALL 0x00428b20
0059f1cb  50                        PUSH EAX
0059f1cc  e8e0165500                CALL 0x00af08b1
0059f1d1  83c414                    ADD ESP,0x14
0059f1d4  85c0                      TEST EAX,EAX
0059f1d6  740d                      JZ 0x0059f1e5
0059f1d8  8b10                      MOV EDX,dword ptr [EAX]
0059f1da  8bc8                      MOV ECX,EAX
0059f1dc  89b0c00b0000              MOV dword ptr [EAX + 0xbc0],ESI
0059f1e2  ff520c                    CALL dword ptr [EDX + 0xc]
0059f1e5  8b95d4feffff              MOV EDX,dword ptr [EBP + 0xfffffed4]
0059f1eb  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0059f1f3  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
0059f1f9  46                        INC ESI
0059f1fa  83c004                    ADD EAX,0x4
0059f1fd  d1c2                      ROL EDX,0x1
0059f1ff  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0059f205  8995d4feffff              MOV dword ptr [EBP + 0xfffffed4],EDX
0059f20b  3d64070000                CMP EAX,0x764
0059f210  0f8c0affffff              JL 0x0059f120
0059f216  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0059f21c  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0059f222  f30f108598feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe98]
0059f22a  83e1fb                    AND ECX,0xfffffffb
0059f22d  f30f1187400c0000          MOVSS dword ptr [EDI + 0xc40],XMM0
0059f235  c787440c000078000000      MOV dword ptr [EDI + 0xc44],0x78
0059f23f  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0059f249  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
0059f253  898f68010000              MOV dword ptr [EDI + 0x168],ECX
0059f259  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
0059f25f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0059f262  85f6                      TEST ESI,ESI
0059f264  744d                      JZ 0x0059f2b3
0059f266  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0059f26a  8bc6                      MOV EAX,ESI
0059f26c  7202                      JC 0x0059f270
0059f26e  8b06                      MOV EAX,dword ptr [ESI]
0059f270  b91026b600                MOV ECX,0xb62610
0059f275  8a10                      MOV DL,byte ptr [EAX]
0059f277  3a11                      CMP DL,byte ptr [ECX]
0059f279  751a                      JNZ 0x0059f295
0059f27b  84d2                      TEST DL,DL
0059f27d  7412                      JZ 0x0059f291
0059f27f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059f282  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059f285  750e                      JNZ 0x0059f295
0059f287  83c002                    ADD EAX,0x2
0059f28a  83c102                    ADD ECX,0x2
0059f28d  84d2                      TEST DL,DL
0059f28f  75e4                      JNZ 0x0059f275
0059f291  33c0                      XOR EAX,EAX
0059f293  eb05                      JMP 0x0059f29a
0059f295  1bc0                      SBB EAX,EAX
0059f297  83c801                    OR EAX,0x1
0059f29a  85c0                      TEST EAX,EAX
0059f29c  7515                      JNZ 0x0059f2b3
0059f29e  384634                    CMP byte ptr [ESI + 0x34],AL
0059f2a1  0f8483540000              JZ 0x005a472a
0059f2a7  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0059f2ad  0f8577540000              JNZ 0x005a472a
0059f2b3  6a01                      PUSH 0x1
0059f2b5  681026b600                PUSH 0xb62610
0059f2ba  8d4f48                    LEA ECX,[EDI + 0x48]
0059f2bd  e80eb3e6ff                CALL 0x0040a5d0
0059f2c2  84c0                      TEST AL,AL
0059f2c4  0f8460540000              JZ 0x005a472a
0059f2ca  8d4f78                    LEA ECX,[EDI + 0x78]
0059f2cd  e8deaee6ff                CALL 0x0040a1b0
0059f2d2  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0059f2d9  e94c540000                JMP 0x005a472a
0059f2de  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0059f2e5  0f846b010000              JZ 0x0059f456
0059f2eb  3d28230000                CMP EAX,0x2328
0059f2f0  0f8460010000              JZ 0x0059f456
0059f2f6  3d29230000                CMP EAX,0x2329
0059f2fb  0f8455010000              JZ 0x0059f456
0059f301  8b86d8b30400              MOV EAX,dword ptr [ESI + 0x4b3d8]
0059f307  3b86dcb30400              CMP EAX,dword ptr [ESI + 0x4b3dc]
0059f30d  7421                      JZ 0x0059f330
0059f30f  e8dcfe1400                CALL 0x006ef1f0
0059f314  50                        PUSH EAX
0059f315  ffb6e4b30400              PUSH dword ptr [ESI + 0x4b3e4]
0059f31b  68c825b600                PUSH 0xb625c8
0059f320  6a01                      PUSH 0x1
0059f322  e8991f4700                CALL 0x00a112c0
0059f327  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059f32d  83c410                    ADD ESP,0x10
0059f330  c787640b000028230000      MOV dword ptr [EDI + 0xb64],0x2328
0059f33a  33f6                      XOR ESI,ESI
0059f33c  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0059f342  898734030000              MOV dword ptr [EDI + 0x334],EAX
0059f348  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0059f34e  898738030000              MOV dword ptr [EDI + 0x338],EAX
0059f354  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0059f35a  818f6801000000000080      OR dword ptr [EDI + 0x168],0x80000000
0059f364  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0059f36e  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0059f375  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0059f37b  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0059f381  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
0059f387  89b5d4feffff              MOV dword ptr [EBP + 0xfffffed4],ESI
0059f38d  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
0059f393  0f86a9000000              JBE 0x0059f442
0059f399  0f1f8000000000            NOP dword ptr [EAX]
0059f3a0  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
0059f3a6  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
0059f3a9  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
0059f3af  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0059f3b2  3d96010000                CMP EAX,0x196
0059f3b7  746a                      JZ 0x0059f423
0059f3b9  83f809                    CMP EAX,0x9
0059f3bc  7509                      JNZ 0x0059f3c7
0059f3be  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
0059f3c5  eb5c                      JMP 0x0059f423
0059f3c7  51                        PUSH ECX
0059f3c8  8bce                      MOV ECX,ESI
0059f3ca  e8519b1000                CALL 0x006a8f20
0059f3cf  84c0                      TEST AL,AL
0059f3d1  7422                      JZ 0x0059f3f5
0059f3d3  8b06                      MOV EAX,dword ptr [ESI]
0059f3d5  8d8d2cfeffff              LEA ECX,[EBP + 0xfffffe2c]
0059f3db  57                        PUSH EDI
0059f3dc  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
0059f3df  e82c1fe9ff                CALL 0x00431310
0059f3e4  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
0059f3ea  8d852cfeffff              LEA EAX,[EBP + 0xfffffe2c]
0059f3f0  50                        PUSH EAX
0059f3f1  ffd6                      CALL ESI
0059f3f3  eb2e                      JMP 0x0059f423
0059f3f5  817e2826010000            CMP dword ptr [ESI + 0x28],0x126
0059f3fc  7525                      JNZ 0x0059f423
0059f3fe  6a00                      PUSH 0x0
0059f400  68acd6c500                PUSH 0xc5d6ac
0059f405  68dcd5c500                PUSH 0xc5d5dc
0059f40a  6a00                      PUSH 0x0
0059f40c  56                        PUSH ESI
0059f40d  e89f145500                CALL 0x00af08b1
0059f412  83c414                    ADD ESP,0x14
0059f415  85c0                      TEST EAX,EAX
0059f417  740a                      JZ 0x0059f423
0059f419  c780640b000003000000      MOV dword ptr [EAX + 0xb64],0x3
0059f423  8bb5d4feffff              MOV ESI,dword ptr [EBP + 0xfffffed4]
0059f429  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
0059f42f  46                        INC ESI
0059f430  89b5d4feffff              MOV dword ptr [EBP + 0xfffffed4],ESI
0059f436  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
0059f43c  0f825effffff              JC 0x0059f3a0
0059f442  ff772c                    PUSH dword ptr [EDI + 0x2c]
0059f445  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0059f44b  ff7728                    PUSH dword ptr [EDI + 0x28]
0059f44e  83c114                    ADD ECX,0x14
0059f451  e85ab83800                CALL 0x0092acb0
0059f456  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059f45a  8d7778                    LEA ESI,[EDI + 0x78]
0059f45d  7510                      JNZ 0x0059f46f
0059f45f  32d2                      XOR DL,DL
0059f461  899580feffff              MOV dword ptr [EBP + 0xfffffe80],EDX
0059f467  8895cefeffff              MOV byte ptr [EBP + 0xfffffece],DL
0059f46d  eb57                      JMP 0x0059f4c6
0059f46f  685ce5b100                PUSH 0xb1e55c
0059f474  8bce                      MOV ECX,ESI
0059f476  e855b9e6ff                CALL 0x0040add0
0059f47b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059f47f  8ad0                      MOV DL,AL
0059f481  8885cffeffff              MOV byte ptr [EBP + 0xfffffecf],AL
0059f487  899580feffff              MOV dword ptr [EBP + 0xfffffe80],EDX
0059f48d  7508                      JNZ 0x0059f497
0059f48f  8895cefeffff              MOV byte ptr [EBP + 0xfffffece],DL
0059f495  eb2f                      JMP 0x0059f4c6
0059f497  683426b600                PUSH 0xb62634
0059f49c  8bce                      MOV ECX,ESI
0059f49e  e82db9e6ff                CALL 0x0040add0
0059f4a3  8a8dcffeffff              MOV CL,byte ptr [EBP + 0xfffffecf]
0059f4a9  888dcefeffff              MOV byte ptr [EBP + 0xfffffece],CL
0059f4af  888d80feffff              MOV byte ptr [EBP + 0xfffffe80],CL
0059f4b5  84c0                      TEST AL,AL
0059f4b7  740d                      JZ 0x0059f4c6
0059f4b9  c685cefeffff01            MOV byte ptr [EBP + 0xfffffece],0x1
0059f4c0  888d80feffff              MOV byte ptr [EBP + 0xfffffe80],CL
0059f4c6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059f4ca  7425                      JZ 0x0059f4f1
0059f4cc  682c26b600                PUSH 0xb6262c
0059f4d1  8bce                      MOV ECX,ESI
0059f4d3  e8f8b8e6ff                CALL 0x0040add0
0059f4d8  8b9580feffff              MOV EDX,dword ptr [EBP + 0xfffffe80]
0059f4de  84c0                      TEST AL,AL
0059f4e0  0fb6d2                    MOVZX EDX,DL
0059f4e3  b801000000                MOV EAX,0x1
0059f4e8  0f45d0                    CMOVNZ EDX,EAX
0059f4eb  899580feffff              MOV dword ptr [EBP + 0xfffffe80],EDX
0059f4f1  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0059f4f7  0f57c0                    XORPS XMM0,XMM0
0059f4fa  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
0059f500  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0059f508  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0059f510  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
0059f518  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0059f520  83f8ff                    CMP EAX,-0x1
0059f523  0f84a7010000              JZ 0x0059f6d0
0059f529  51                        PUSH ECX
0059f52a  57                        PUSH EDI
0059f52b  50                        PUSH EAX
0059f52c  6a00                      PUSH 0x0
0059f52e  e89d6d3b00                CALL 0x009562d0
0059f533  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0059f539  0f57c9                    XORPS XMM1,XMM1
0059f53c  f30f5cc8                  SUBSS XMM1,XMM0
0059f540  0f57d2                    XORPS XMM2,XMM2
0059f543  f30f118d90feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM1
0059f54b  83f8ff                    CMP EAX,-0x1
0059f54e  0f8479000000              JZ 0x0059f5cd
0059f554  51                        PUSH ECX
0059f555  57                        PUSH EDI
0059f556  50                        PUSH EAX
0059f557  6a01                      PUSH 0x1
0059f559  e8726d3b00                CALL 0x009562d0
0059f55e  f30f588590feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe90]
0059f566  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0059f56c  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
0059f574  0f28c8                    MOVAPS XMM1,XMM0
0059f577  f30f118d90feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM1
0059f57f  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0059f587  83f8ff                    CMP EAX,-0x1
0059f58a  745d                      JZ 0x0059f5e9
0059f58c  51                        PUSH ECX
0059f58d  57                        PUSH EDI
0059f58e  50                        PUSH EAX
0059f58f  6a02                      PUSH 0x2
0059f591  e83a6d3b00                CALL 0x009562d0
0059f596  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0059f59c  0f57c9                    XORPS XMM1,XMM1
0059f59f  f30f5cc8                  SUBSS XMM1,XMM0
0059f5a3  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
0059f5ab  83f8ff                    CMP EAX,-0x1
0059f5ae  743e                      JZ 0x0059f5ee
0059f5b0  51                        PUSH ECX
0059f5b1  57                        PUSH EDI
0059f5b2  50                        PUSH EAX
0059f5b3  6a03                      PUSH 0x3
0059f5b5  e8166d3b00                CALL 0x009562d0
0059f5ba  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
0059f5c0  0f28d8                    MOVAPS XMM3,XMM0
0059f5c3  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
0059f5cb  eb2f                      JMP 0x0059f5fc
0059f5cd  f30f58ca                  ADDSS XMM1,XMM2
0059f5d1  f30f118d90feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM1
0059f5d9  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0059f5e1  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
0059f5e9  0f57c0                    XORPS XMM0,XMM0
0059f5ec  eb08                      JMP 0x0059f5f6
0059f5ee  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
0059f5f6  0f57db                    XORPS XMM3,XMM3
0059f5f9  83ceff                    OR ESI,0xffffffff
0059f5fc  f30f108dc0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec0]
0059f604  f30f58d8                  ADDSS XMM3,XMM0
0059f608  f30f59c9                  MULSS XMM1,XMM1
0059f60c  0f28c3                    MOVAPS XMM0,XMM3
0059f60f  f30f119dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM3
0059f617  f30f59c3                  MULSS XMM0,XMM3
0059f61b  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
0059f623  f30f58c1                  ADDSS XMM0,XMM1
0059f627  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0059f62e  7652                      JBE 0x0059f682
0059f630  e81b64e9ff                CALL 0x00435a50
0059f635  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0059f63c  7644                      JBE 0x0059f682
0059f63e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0059f646  f30f5ec8                  DIVSS XMM1,XMM0
0059f64a  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
0059f652  f30f59c1                  MULSS XMM0,XMM1
0059f656  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
0059f65e  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0059f666  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
0059f66e  f30f59c1                  MULSS XMM0,XMM1
0059f672  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0059f67a  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0059f682  83feff                    CMP ESI,-0x1
0059f685  7449                      JZ 0x0059f6d0
0059f687  51                        PUSH ECX
0059f688  57                        PUSH EDI
0059f689  56                        PUSH ESI
0059f68a  6a04                      PUSH 0x4
0059f68c  e83f6c3b00                CALL 0x009562d0
0059f691  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
0059f697  83feff                    CMP ESI,-0x1
0059f69a  7434                      JZ 0x0059f6d0
0059f69c  51                        PUSH ECX
0059f69d  57                        PUSH EDI
0059f69e  56                        PUSH ESI
0059f69f  6a05                      PUSH 0x5
0059f6a1  e82a6c3b00                CALL 0x009562d0
0059f6a6  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
0059f6ac  83feff                    CMP ESI,-0x1
0059f6af  741f                      JZ 0x0059f6d0
0059f6b1  51                        PUSH ECX
0059f6b2  57                        PUSH EDI
0059f6b3  56                        PUSH ESI
0059f6b4  6a06                      PUSH 0x6
0059f6b6  e8156c3b00                CALL 0x009562d0
0059f6bb  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0059f6c1  83f8ff                    CMP EAX,-0x1
0059f6c4  740a                      JZ 0x0059f6d0
0059f6c6  51                        PUSH ECX
0059f6c7  57                        PUSH EDI
0059f6c8  50                        PUSH EAX
0059f6c9  6a07                      PUSH 0x7
0059f6cb  e8006c3b00                CALL 0x009562d0
0059f6d0  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0059f6d6  3d90010000                CMP EAX,0x190
0059f6db  7447                      JZ 0x0059f724
0059f6dd  83f864                    CMP EAX,0x64
0059f6e0  7442                      JZ 0x0059f724
0059f6e2  3dfe010000                CMP EAX,0x1fe
0059f6e7  743b                      JZ 0x0059f724
0059f6e9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0059f6ed  7410                      JZ 0x0059f6ff
0059f6ef  f30f108598feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe98]
0059f6f7  f30f1187400c0000          MOVSS dword ptr [EDI + 0xc40],XMM0
0059f6ff  8bb7c40b0000              MOV ESI,dword ptr [EDI + 0xbc4]
0059f705  85f6                      TEST ESI,ESI
0059f707  7e2f                      JLE 0x0059f738
0059f709  ff7720                    PUSH dword ptr [EDI + 0x20]
0059f70c  8bcf                      MOV ECX,EDI
0059f70e  6a1e                      PUSH 0x1e
0059f710  e8fbcf1000                CALL 0x006ac710
0059f715  84c0                      TEST AL,AL
0059f717  741f                      JZ 0x0059f738
0059f719  8d46ff                    LEA EAX,[ESI + -0x1]
0059f71c  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0059f722  eb14                      JMP 0x0059f738
0059f724  f30f108598feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe98]
0059f72c  f30f58c0                  ADDSS XMM0,XMM0
0059f730  f30f1187400c0000          MOVSS dword ptr [EDI + 0xc40],XMM0
0059f738  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0059f740  0f57db                    XORPS XMM3,XMM3
0059f743  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0059f74b  0f2ed8                    UCOMISS XMM3,XMM0
0059f74e  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0059f756  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0059f75e  9f                        LAHF
0059f75f  f6c444                    TEST AH,0x44
0059f762  7a22                      JP 0x0059f786
0059f764  68d81bb800                PUSH 0xb81bd8
0059f769  6a10                      PUSH 0x10
0059f76b  e8501b4700                CALL 0x00a112c0
0059f770  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0059f778  83c408                    ADD ESP,0x8
0059f77b  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
0059f783  0f57db                    XORPS XMM3,XMM3
0059f786  f30f5ccb                  SUBSS XMM1,XMM3
0059f78a  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0059f792  f30f5cc3                  SUBSS XMM0,XMM3
0059f796  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0059f79c  0f57d2                    XORPS XMM2,XMM2
0059f79f  f30f2a97c40b0000          CVTSI2SS XMM2,dword ptr [EDI + 0xbc4]
0059f7a7  f30f5ec8                  DIVSS XMM1,XMM0
0059f7ab  f30f100554a8ba00          MOVSS XMM0,dword ptr [0x00baa854]
0059f7b3  f30f5fcb                  MAXSS XMM1,XMM3
0059f7b7  f30f5dcc                  MINSS XMM1,XMM4
0059f7bb  f30f59c8                  MULSS XMM1,XMM0
0059f7bf  f30f5cc1                  SUBSS XMM0,XMM1
0059f7c3  f30f58d0                  ADDSS XMM2,XMM0
0059f7c7  f30f5cd3                  SUBSS XMM2,XMM3
0059f7cb  f30f5e15a0a8ba00          DIVSS XMM2,dword ptr [0x00baa8a0]
0059f7d3  f30f5fd3                  MAXSS XMM2,XMM3
0059f7d7  f30f5dd4                  MINSS XMM2,XMM4
0059f7db  f30f58d3                  ADDSS XMM2,XMM3
0059f7df  f30f119588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM2
0059f7e7  3d28230000                CMP EAX,0x2328
0059f7ec  0f857c000000              JNZ 0x0059f86e
0059f7f2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059f7f6  7505                      JNZ 0x0059f7fd
0059f7f8  83c8ff                    OR EAX,0xffffffff
0059f7fb  eb45                      JMP 0x0059f842
0059f7fd  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
0059f805  83ec08                    SUB ESP,0x8
0059f808  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0059f810  d985e4feffff              FLD dword ptr [EBP + 0xfffffee4]
0059f816  dd1c24                    FSTP qword ptr [ESP]
0059f819  e8f9105500                CALL 0x00af0917
0059f81e  f30f109588feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe88]
0059f826  83c408                    ADD ESP,0x8
0059f829  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0059f831  0f57db                    XORPS XMM3,XMM3
0059f834  d99de4feffff              FSTP dword ptr [EBP + 0xfffffee4]
0059f83a  f30f2c85e4feffff          CVTTSS2SI EAX,dword ptr [EBP + 0xfffffee4]
0059f842  660f6ec8                  MOVD XMM1,EAX
0059f846  0f57c0                    XORPS XMM0,XMM0
0059f849  0f5bc9                    CVTDQ2PS XMM1,XMM1
0059f84c  f30f5cc2                  SUBSS XMM0,XMM2
0059f850  f30f5ccb                  SUBSS XMM1,XMM3
0059f854  f30f5e0d1ca8ba00          DIVSS XMM1,dword ptr [0x00baa81c]
0059f85c  f30f5fcb                  MAXSS XMM1,XMM3
0059f860  f30f5dcc                  MINSS XMM1,XMM4
0059f864  f30f59c1                  MULSS XMM0,XMM1
0059f868  f30f58d0                  ADDSS XMM2,XMM0
0059f86c  eb0a                      JMP 0x0059f878
0059f86e  3d29230000                CMP EAX,0x2329
0059f873  750b                      JNZ 0x0059f880
0059f875  0f57d2                    XORPS XMM2,XMM2
0059f878  f30f119588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM2
0059f880  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0059f887  8d8fb8010000              LEA ECX,[EDI + 0x1b8]
0059f88d  8d45c0                    LEA EAX,[EBP + -0x40]
0059f890  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0059f897  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0059f89e  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0059f8a5  c745d00000803f            MOV dword ptr [EBP + -0x30],0x3f800000
0059f8ac  c745d4cdcc4c3e            MOV dword ptr [EBP + -0x2c],0x3e4ccccd
0059f8b3  c745d8cdcc4c3e            MOV dword ptr [EBP + -0x28],0x3e4ccccd
0059f8ba  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
0059f8bf  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0059f8c3  3bc8                      CMP ECX,EAX
0059f8c5  741b                      JZ 0x0059f8e2
0059f8c7  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0059f8ca  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0059f8cd  0f1045d0                  MOVUPS XMM0,xmmword ptr [EBP + -0x30]
0059f8d1  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0059f8d5  f30f7e45e0                MOVQ XMM0,qword ptr [EBP + -0x20]
0059f8da  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0059f8df  894128                    MOV dword ptr [ECX + 0x28],EAX
0059f8e2  8b07                      MOV EAX,dword ptr [EDI]
0059f8e4  8d4dc0                    LEA ECX,[EBP + -0x40]
0059f8e7  6a01                      PUSH 0x1
0059f8e9  6a00                      PUSH 0x0
0059f8eb  6a00                      PUSH 0x0
0059f8ed  6a01                      PUSH 0x1
0059f8ef  51                        PUSH ECX
0059f8f0  8bcf                      MOV ECX,EDI
0059f8f2  ff503c                    CALL dword ptr [EAX + 0x3c]
0059f8f5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0059f8fb  898598feffff              MOV dword ptr [EBP + 0xfffffe98],EAX
0059f901  83f802                    CMP EAX,0x2
0059f904  0f85c2030000              JNZ 0x0059fccc
0059f90a  a17816c700                MOV EAX,[0x00c71678]
0059f90f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0059f917  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0059f91f  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0059f927  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0059f92d  f30f5c0dd0a9ba00          SUBSS XMM1,dword ptr [0x00baa9d0]
0059f935  8bb0f8110000              MOV ESI,dword ptr [EAX + 0x11f8]
0059f93b  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0059f943  f30f118dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM1
0059f94b  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0059f952  0f857e000000              JNZ 0x0059f9d6
0059f958  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
0059f95b  8b4e58                    MOV ECX,dword ptr [ESI + 0x58]
0059f95e  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0059f964  3bc8                      CMP ECX,EAX
0059f966  7543                      JNZ 0x0059f9ab
0059f968  85c9                      TEST ECX,ECX
0059f96a  7f2b                      JG 0x0059f997
0059f96c  6878bbb700                PUSH 0xb7bb78
0059f971  6a10                      PUSH 0x10
0059f973  e848194700                CALL 0x00a112c0
0059f978  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
0059f97b  83c408                    ADD ESP,0x8
0059f97e  8b4e58                    MOV ECX,dword ptr [ESI + 0x58]
0059f981  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0059f989  f30f108dd0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed0]
0059f991  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0059f997  8b465c                    MOV EAX,dword ptr [ESI + 0x5c]
0059f99a  40                        INC EAX
0059f99b  99                        CDQ
0059f99c  f7bde0feffff              IDIV dword ptr [EBP + 0xfffffee0]
0059f9a2  49                        DEC ECX
0059f9a3  89565c                    MOV dword ptr [ESI + 0x5c],EDX
0059f9a6  894e58                    MOV dword ptr [ESI + 0x58],ECX
0059f9a9  eb09                      JMP 0x0059f9b4
0059f9ab  8b565c                    MOV EDX,dword ptr [ESI + 0x5c]
0059f9ae  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0059f9b4  8d040a                    LEA EAX,[EDX + ECX*0x1]
0059f9b7  99                        CDQ
0059f9b8  f7bde0feffff              IDIV dword ptr [EBP + 0xfffffee0]
0059f9be  8b4650                    MOV EAX,dword ptr [ESI + 0x50]
0059f9c1  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
0059f9c6  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
0059f9cc  ff4658                    INC dword ptr [ESI + 0x58]
0059f9cf  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
0059f9d6  c7876c0300000ad7233c      MOV dword ptr [EDI + 0x36c],0x3c23d70a
0059f9e0  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0059f9ea  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059f9ee  0f84ac000000              JZ 0x0059faa0
0059f9f4  682426b600                PUSH 0xb62624
0059f9f9  8d4f78                    LEA ECX,[EDI + 0x78]
0059f9fc  e8cfb3e6ff                CALL 0x0040add0
0059fa01  84c0                      TEST AL,AL
0059fa03  0f8497000000              JZ 0x0059faa0
0059fa09  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059fa0f  6a0f                      PUSH 0xf
0059fa11  e85a3c1600                CALL 0x00703670
0059fa16  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0059fa1e  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0059fa24  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0059fa2c  83f812                    CMP EAX,0x12
0059fa2f  750a                      JNZ 0x0059fa3b
0059fa31  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0059fa39  eb0d                      JMP 0x0059fa48
0059fa3b  83f813                    CMP EAX,0x13
0059fa3e  7510                      JNZ 0x0059fa50
0059fa40  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0059fa48  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0059fa50  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0059fa56  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0059fa5c  c785c8feffffb0010000      MOV dword ptr [EBP + 0xfffffec8],0x1b0
0059fa66  e8156d3b00                CALL 0x00956780
0059fa6b  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0059fa73  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0059fa79  83ec08                    SUB ESP,0x8
0059fa7c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0059fa84  f30f110424                MOVSS dword ptr [ESP],XMM0
0059fa89  6a00                      PUSH 0x0
0059fa8b  6a02                      PUSH 0x2
0059fa8d  51                        PUSH ECX
0059fa8e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059fa95  ffb5c8feffff              PUSH dword ptr [EBP + 0xfffffec8]
0059fa9b  e890e13800                CALL 0x0092dc30
0059faa0  80bdcefeffff00            CMP byte ptr [EBP + 0xfffffece],0x0
0059faa7  750d                      JNZ 0x0059fab6
0059faa9  80bd80feffff00            CMP byte ptr [EBP + 0xfffffe80],0x0
0059fab0  0f84c4000000              JZ 0x0059fb7a
0059fab6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059fabc  6a0f                      PUSH 0xf
0059fabe  e8ad3b1600                CALL 0x00703670
0059fac3  e898f41400                CALL 0x006eef60
0059fac8  660f6ec0                  MOVD XMM0,EAX
0059facc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059fad0  c1e81f                    SHR EAX,0x1f
0059fad3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059fadc  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0059fae2  660f5ac0                  CVTPD2PS XMM0,XMM0
0059fae6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059faee  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0059faf6  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0059fafe  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0059fb06  83f812                    CMP EAX,0x12
0059fb09  750a                      JNZ 0x0059fb15
0059fb0b  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0059fb13  eb0d                      JMP 0x0059fb22
0059fb15  83f813                    CMP EAX,0x13
0059fb18  7510                      JNZ 0x0059fb2a
0059fb1a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0059fb22  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0059fb2a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0059fb30  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0059fb36  c785c8feffff30000000      MOV dword ptr [EBP + 0xfffffec8],0x30
0059fb40  e83b6c3b00                CALL 0x00956780
0059fb45  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0059fb4d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0059fb53  83ec08                    SUB ESP,0x8
0059fb56  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0059fb5e  f30f110424                MOVSS dword ptr [ESP],XMM0
0059fb63  6a00                      PUSH 0x0
0059fb65  6a02                      PUSH 0x2
0059fb67  51                        PUSH ECX
0059fb68  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059fb6f  ffb5c8feffff              PUSH dword ptr [EBP + 0xfffffec8]
0059fb75  e8b6e03800                CALL 0x0092dc30
0059fb7a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059fb7e  0f84c8000000              JZ 0x0059fc4c
0059fb84  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0059fb8b  0f84bb000000              JZ 0x0059fc4c
0059fb91  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0059fb94  83781410                  CMP dword ptr [EAX + 0x14],0x10
0059fb98  7202                      JC 0x0059fb9c
0059fb9a  8b00                      MOV EAX,dword ptr [EAX]
0059fb9c  b91026b600                MOV ECX,0xb62610
0059fba1  8a10                      MOV DL,byte ptr [EAX]
0059fba3  3a11                      CMP DL,byte ptr [ECX]
0059fba5  751a                      JNZ 0x0059fbc1
0059fba7  84d2                      TEST DL,DL
0059fba9  7412                      JZ 0x0059fbbd
0059fbab  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059fbae  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059fbb1  750e                      JNZ 0x0059fbc1
0059fbb3  83c002                    ADD EAX,0x2
0059fbb6  83c102                    ADD ECX,0x2
0059fbb9  84d2                      TEST DL,DL
0059fbbb  75e4                      JNZ 0x0059fba1
0059fbbd  33c0                      XOR EAX,EAX
0059fbbf  eb05                      JMP 0x0059fbc6
0059fbc1  1bc0                      SBB EAX,EAX
0059fbc3  83c801                    OR EAX,0x1
0059fbc6  85c0                      TEST EAX,EAX
0059fbc8  0f857e000000              JNZ 0x0059fc4c
0059fbce  83bf100400003c            CMP dword ptr [EDI + 0x410],0x3c
0059fbd5  7e75                      JLE 0x0059fc4c
0059fbd7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0059fbda  85f6                      TEST ESI,ESI
0059fbdc  744d                      JZ 0x0059fc2b
0059fbde  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0059fbe2  8bc6                      MOV EAX,ESI
0059fbe4  7202                      JC 0x0059fbe8
0059fbe6  8b06                      MOV EAX,dword ptr [ESI]
0059fbe8  b91826b600                MOV ECX,0xb62618
0059fbed  0f1f00                    NOP dword ptr [EAX]
0059fbf0  8a10                      MOV DL,byte ptr [EAX]
0059fbf2  3a11                      CMP DL,byte ptr [ECX]
0059fbf4  751a                      JNZ 0x0059fc10
0059fbf6  84d2                      TEST DL,DL
0059fbf8  7412                      JZ 0x0059fc0c
0059fbfa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059fbfd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059fc00  750e                      JNZ 0x0059fc10
0059fc02  83c002                    ADD EAX,0x2
0059fc05  83c102                    ADD ECX,0x2
0059fc08  84d2                      TEST DL,DL
0059fc0a  75e4                      JNZ 0x0059fbf0
0059fc0c  33c0                      XOR EAX,EAX
0059fc0e  eb05                      JMP 0x0059fc15
0059fc10  1bc0                      SBB EAX,EAX
0059fc12  83c801                    OR EAX,0x1
0059fc15  85c0                      TEST EAX,EAX
0059fc17  7512                      JNZ 0x0059fc2b
0059fc19  384634                    CMP byte ptr [ESI + 0x34],AL
0059fc1c  742e                      JZ 0x0059fc4c
0059fc1e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0059fc24  8d7748                    LEA ESI,[EDI + 0x48]
0059fc27  7523                      JNZ 0x0059fc4c
0059fc29  eb03                      JMP 0x0059fc2e
0059fc2b  8d7748                    LEA ESI,[EDI + 0x48]
0059fc2e  6a01                      PUSH 0x1
0059fc30  681826b600                PUSH 0xb62618
0059fc35  8bce                      MOV ECX,ESI
0059fc37  e894a9e6ff                CALL 0x0040a5d0
0059fc3c  84c0                      TEST AL,AL
0059fc3e  740c                      JZ 0x0059fc4c
0059fc40  8d4e30                    LEA ECX,[ESI + 0x30]
0059fc43  e868a5e6ff                CALL 0x0040a1b0
0059fc48  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0059fc4c  ff8710040000              INC dword ptr [EDI + 0x410]
0059fc52  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0059fc56  0f842a390000              JZ 0x005a3586
0059fc5c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0059fc63  0f851d390000              JNZ 0x005a3586
0059fc69  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0059fc6c  83781410                  CMP dword ptr [EAX + 0x14],0x10
0059fc70  7202                      JC 0x0059fc74
0059fc72  8b00                      MOV EAX,dword ptr [EAX]
0059fc74  b91826b600                MOV ECX,0xb62618
0059fc79  0f1f8000000000            NOP dword ptr [EAX]
0059fc80  8a10                      MOV DL,byte ptr [EAX]
0059fc82  3a11                      CMP DL,byte ptr [ECX]
0059fc84  751a                      JNZ 0x0059fca0
0059fc86  84d2                      TEST DL,DL
0059fc88  7412                      JZ 0x0059fc9c
0059fc8a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0059fc8d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0059fc90  750e                      JNZ 0x0059fca0
0059fc92  83c002                    ADD EAX,0x2
0059fc95  83c102                    ADD ECX,0x2
0059fc98  84d2                      TEST DL,DL
0059fc9a  75e4                      JNZ 0x0059fc80
0059fc9c  33c0                      XOR EAX,EAX
0059fc9e  eb05                      JMP 0x0059fca5
0059fca0  1bc0                      SBB EAX,EAX
0059fca2  83c801                    OR EAX,0x1
0059fca5  85c0                      TEST EAX,EAX
0059fca7  0f85d9380000              JNZ 0x005a3586
0059fcad  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0059fcb7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0059fcc1  898710040000              MOV dword ptr [EDI + 0x410],EAX
0059fcc7  e9ba380000                JMP 0x005a3586
0059fccc  83f804                    CMP EAX,0x4
0059fccf  0f84471e0000              JZ 0x005a1b1c
0059fcd5  83f803                    CMP EAX,0x3
0059fcd8  0f843e1e0000              JZ 0x005a1b1c
0059fcde  3d36010000                CMP EAX,0x136
0059fce3  0f84331e0000              JZ 0x005a1b1c
0059fce9  3d2c010000                CMP EAX,0x12c
0059fcee  756b                      JNZ 0x0059fd5b
0059fcf0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0059fcf8  51                        PUSH ECX
0059fcf9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0059fd00  6a00                      PUSH 0x0
0059fd02  6a1e                      PUSH 0x1e
0059fd04  68b0010000                PUSH 0x1b0
0059fd09  e8d26b3b00                CALL 0x009568e0
0059fd0e  6a00                      PUSH 0x0
0059fd10  689026b600                PUSH 0xb62690
0059fd15  8d4f48                    LEA ECX,[EDI + 0x48]
0059fd18  e863a6e6ff                CALL 0x0040a380
0059fd1d  8d4f48                    LEA ECX,[EDI + 0x48]
0059fd20  e85baae6ff                CALL 0x0040a780
0059fd25  83f80c                    CMP EAX,0xc
0059fd28  0f85c10c0000              JNZ 0x005a09ef
0059fd2e  c787640b000036010000      MOV dword ptr [EDI + 0xb64],0x136
0059fd38  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0059fd42  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
0059fd4c  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0059fd56  e9940c0000                JMP 0x005a09ef
0059fd5b  3dbc020000                CMP EAX,0x2bc
0059fd60  0f84a11c0000              JZ 0x005a1a07
0059fd66  3dc6020000                CMP EAX,0x2c6
0059fd6b  0f84961c0000              JZ 0x005a1a07
0059fd71  3d90010000                CMP EAX,0x190
0059fd76  0f8552010000              JNZ 0x0059fece
0059fd7c  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0059fd82  85c0                      TEST EAX,EAX
0059fd84  7532                      JNZ 0x0059fdb8
0059fd86  50                        PUSH EAX
0059fd87  688426b600                PUSH 0xb62684
0059fd8c  8d4f48                    LEA ECX,[EDI + 0x48]
0059fd8f  e8eca5e6ff                CALL 0x0040a380
0059fd94  68eca4b100                PUSH 0xb1a4ec
0059fd99  8d4f48                    LEA ECX,[EDI + 0x48]
0059fd9c  e8afa7e6ff                CALL 0x0040a550
0059fda1  84c0                      TEST AL,AL
0059fda3  0f8402010000              JZ 0x0059feab
0059fda9  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0059fdb3  e9f3000000                JMP 0x0059feab
0059fdb8  83f801                    CMP EAX,0x1
0059fdbb  0f85a7000000              JNZ 0x0059fe68
0059fdc1  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0059fdc7  8d4f48                    LEA ECX,[EDI + 0x48]
0059fdca  818f6801000000000002      OR dword ptr [EDI + 0x168],0x2000000
0059fdd4  687426b600                PUSH 0xb62674
0059fdd9  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0059fddf  e86ca7e6ff                CALL 0x0040a550
0059fde4  84c0                      TEST AL,AL
0059fde6  7511                      JNZ 0x0059fdf9
0059fde8  688426b600                PUSH 0xb62684
0059fded  8d4f48                    LEA ECX,[EDI + 0x48]
0059fdf0  e85ba7e6ff                CALL 0x0040a550
0059fdf5  84c0                      TEST AL,AL
0059fdf7  740f                      JZ 0x0059fe08
0059fdf9  6a00                      PUSH 0x0
0059fdfb  686826b600                PUSH 0xb62668
0059fe00  8d4f48                    LEA ECX,[EDI + 0x48]
0059fe03  e878a5e6ff                CALL 0x0040a380
0059fe08  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0059fe0d  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0059fe14  760f                      JBE 0x0059fe25
0059fe16  6a01                      PUSH 0x1
0059fe18  687426b600                PUSH 0xb62674
0059fe1d  8d4f48                    LEA ECX,[EDI + 0x48]
0059fe20  e85ba5e6ff                CALL 0x0040a380
0059fe25  83bdacfeffffff            CMP dword ptr [EBP + 0xfffffeac],-0x1
0059fe2c  750b                      JNZ 0x0059fe39
0059fe2e  83bdc4feffff05            CMP dword ptr [EBP + 0xfffffec4],0x5
0059fe35  7c0f                      JL 0x0059fe46
0059fe37  eb72                      JMP 0x0059feab
0059fe39  6a0b                      PUSH 0xb
0059fe3b  8bcf                      MOV ECX,EDI
0059fe3d  e81e841300                CALL 0x006d8260
0059fe42  84c0                      TEST AL,AL
0059fe44  7565                      JNZ 0x0059feab
0059fe46  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0059fe50  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0059fe56  81a768010000fffffffd      AND dword ptr [EDI + 0x168],0xfdffffff
0059fe60  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0059fe66  eb43                      JMP 0x0059feab
0059fe68  83f802                    CMP EAX,0x2
0059fe6b  753e                      JNZ 0x0059feab
0059fe6d  6a00                      PUSH 0x0
0059fe6f  68c026b600                PUSH 0xb626c0
0059fe74  8d4f48                    LEA ECX,[EDI + 0x48]
0059fe77  e804a5e6ff                CALL 0x0040a380
0059fe7c  68eca4b100                PUSH 0xb1a4ec
0059fe81  8d4f48                    LEA ECX,[EDI + 0x48]
0059fe84  e8c7a6e6ff                CALL 0x0040a550
0059fe89  84c0                      TEST AL,AL
0059fe8b  741e                      JZ 0x0059feab
0059fe8d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0059fe97  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0059fea1  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0059feab  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0059feb3  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0059febb  ff8710040000              INC dword ptr [EDI + 0x410]
0059fec1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0059fec9  e9b8360000                JMP 0x005a3586
0059fece  3df4010000                CMP EAX,0x1f4
0059fed3  0f840d130000              JZ 0x005a11e6
0059fed9  3dfe010000                CMP EAX,0x1fe
0059fede  0f8402130000              JZ 0x005a11e6
0059fee4  3d58020000                CMP EAX,0x258
0059fee9  0f85a8020000              JNZ 0x005a0197
0059feef  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0059fef7  8db734030000              LEA ESI,[EDI + 0x334]
0059fefd  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0059ff01  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
0059ff07  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0059ff0f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0059ff17  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0059ff1f  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0059ff27  e834f30d00                CALL 0x0067f260
0059ff2c  83f803                    CMP EAX,0x3
0059ff2f  7731                      JA 0x0059ff62
0059ff31  ff2485f8475a00            JMP dword ptr [EAX*0x4 + 0x5a47f8]
0059ff38  6a00                      PUSH 0x0
0059ff3a  68ec0cb600                PUSH 0xb60cec
0059ff3f  eb19                      JMP 0x0059ff5a
0059ff41  6a00                      PUSH 0x0
0059ff43  68040db600                PUSH 0xb60d04
0059ff48  eb10                      JMP 0x0059ff5a
0059ff4a  6a00                      PUSH 0x0
0059ff4c  680c0db600                PUSH 0xb60d0c
0059ff51  eb07                      JMP 0x0059ff5a
0059ff53  6a00                      PUSH 0x0
0059ff55  68f80cb600                PUSH 0xb60cf8
0059ff5a  8d4f48                    LEA ECX,[EDI + 0x48]
0059ff5d  e81ea4e6ff                CALL 0x0040a380
0059ff62  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0059ff68  85c0                      TEST EAX,EAX
0059ff6a  750e                      JNZ 0x0059ff7a
0059ff6c  e8efef1400                CALL 0x006eef60
0059ff71  83c801                    OR EAX,0x1
0059ff74  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0059ff7a  6a23                      PUSH 0x23
0059ff7c  50                        PUSH EAX
0059ff7d  8d8d44feffff              LEA ECX,[EBP + 0xfffffe44]
0059ff83  e808902400                CALL 0x007e8f90
0059ff88  c785b0feffff00000000      MOV dword ptr [EBP + 0xfffffeb0],0x0
0059ff92  c785b4feffff00000000      MOV dword ptr [EBP + 0xfffffeb4],0x0
0059ff9c  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
0059ffa6  6a00                      PUSH 0x0
0059ffa8  6a64                      PUSH 0x64
0059ffaa  6a03                      PUSH 0x3
0059ffac  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0059ffb2  c645fc07                  MOV byte ptr [EBP + -0x4],0x7
0059ffb6  e8a5cbefff                CALL 0x0049cb60
0059ffbb  6a00                      PUSH 0x0
0059ffbd  6a64                      PUSH 0x64
0059ffbf  6a04                      PUSH 0x4
0059ffc1  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0059ffc7  e894cbefff                CALL 0x0049cb60
0059ffcc  6a00                      PUSH 0x0
0059ffce  6a64                      PUSH 0x64
0059ffd0  6a05                      PUSH 0x5
0059ffd2  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0059ffd8  e883cbefff                CALL 0x0049cb60
0059ffdd  6a00                      PUSH 0x0
0059ffdf  6a64                      PUSH 0x64
0059ffe1  6a32                      PUSH 0x32
0059ffe3  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0059ffe9  e872cbefff                CALL 0x0049cb60
0059ffee  0f108544feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffe44]
0059fff5  83ec10                    SUB ESP,0x10
0059fff8  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0059fffe  8bc4                      MOV EAX,ESP
005a0000  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
005a0003  e8e8cbefff                CALL 0x0049cbf0
005a0008  8d4f48                    LEA ECX,[EDI + 0x48]
005a000b  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
005a0011  68dcd2b100                PUSH 0xb1d2dc
005a0016  e875b0e6ff                CALL 0x0040b090
005a001b  84c0                      TEST AL,AL
005a001d  0f8404010000              JZ 0x005a0127
005a0023  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005a002a  751e                      JNZ 0x005a004a
005a002c  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a0034  51                        PUSH ECX
005a0035  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a003c  6a00                      PUSH 0x0
005a003e  6a02                      PUSH 0x2
005a0040  68b2010000                PUSH 0x1b2
005a0045  e896683b00                CALL 0x009568e0
005a004a  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
005a0050  e8dbeee9ff                CALL 0x0043ef30
005a0055  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005a0059  c7857cffffff07000000      MOV dword ptr [EBP + 0xffffff7c],0x7
005a0063  c785ecfeffff0000a0c2      MOV dword ptr [EBP + 0xfffffeec],0xc2a00000
005a006d  c785fcfeffffcdcccc3f      MOV dword ptr [EBP + 0xfffffefc],0x3fcccccd
005a0077  752b                      JNZ 0x005a00a4
005a0079  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
005a0081  f30f590554a5ba00          MULSS XMM0,dword ptr [0x00baa554]
005a0089  8b8544ffffff              MOV EAX,dword ptr [EBP + 0xffffff44]
005a008f  838d40ffffff02            OR dword ptr [EBP + 0xffffff40],0x2
005a0096  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
005a009c  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
005a00a4  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005a00ab  7574                      JNZ 0x005a0121
005a00ad  83bdc8feffff32            CMP dword ptr [EBP + 0xfffffec8],0x32
005a00b4  751b                      JNZ 0x005a00d1
005a00b6  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
005a00bc  50                        PUSH EAX
005a00bd  51                        PUSH ECX
005a00be  c7042400000000            MOV dword ptr [ESP],0x0
005a00c5  8bcf                      MOV ECX,EDI
005a00c7  56                        PUSH ESI
005a00c8  6a06                      PUSH 0x6
005a00ca  e801cd1200                CALL 0x006ccdd0
005a00cf  eb50                      JMP 0x005a0121
005a00d1  51                        PUSH ECX
005a00d2  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
005a00d8  c7042400003041            MOV dword ptr [ESP],0x41300000
005a00df  50                        PUSH EAX
005a00e0  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
005a00e6  c785f4feffff8fc2753d      MOV dword ptr [EBP + 0xfffffef4],0x3d75c28f
005a00f0  c785f0feffff00002041      MOV dword ptr [EBP + 0xfffffef0],0x41200000
005a00fa  e801004700                CALL 0x00a10100
005a00ff  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
005a0105  8bcf                      MOV ECX,EDI
005a0107  50                        PUSH EAX
005a0108  ffb5c8feffff              PUSH dword ptr [EBP + 0xfffffec8]
005a010e  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
005a0114  50                        PUSH EAX
005a0115  8d873c030000              LEA EAX,[EDI + 0x33c]
005a011b  50                        PUSH EAX
005a011c  e8bfb11200                CALL 0x006cb2e0
005a0121  ff8710040000              INC dword ptr [EDI + 0x410]
005a0127  68eca4b100                PUSH 0xb1a4ec
005a012c  8d4f48                    LEA ECX,[EDI + 0x48]
005a012f  e81ca4e6ff                CALL 0x0040a550
005a0134  84c0                      TEST AL,AL
005a0136  741e                      JZ 0x005a0156
005a0138  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a0142  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a014c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a0156  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a015e  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
005a0166  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
005a016a  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
005a0170  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a0178  85c9                      TEST ECX,ECX
005a017a  0f8406340000              JZ 0x005a3586
005a0180  8b85b8feffff              MOV EAX,dword ptr [EBP + 0xfffffeb8]
005a0186  2bc1                      SUB EAX,ECX
005a0188  c1f803                    SAR EAX,0x3
005a018b  50                        PUSH EAX
005a018c  51                        PUSH ECX
005a018d  e8ae67e8ff                CALL 0x00426940
005a0192  e9ef330000                JMP 0x005a3586
005a0197  83f864                    CMP EAX,0x64
005a019a  0f8504050000              JNZ 0x005a06a4
005a01a0  8bf0                      MOV ESI,EAX
005a01a2  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005a01a8  85c0                      TEST EAX,EAX
005a01aa  755a                      JNZ 0x005a0206
005a01ac  50                        PUSH EAX
005a01ad  689826b600                PUSH 0xb62698
005a01b2  8d4f48                    LEA ECX,[EDI + 0x48]
005a01b5  e8c6a1e6ff                CALL 0x0040a380
005a01ba  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a01c2  51                        PUSH ECX
005a01c3  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a01ca  6a00                      PUSH 0x0
005a01cc  6a3c                      PUSH 0x3c
005a01ce  68b3010000                PUSH 0x1b3
005a01d3  e808673b00                CALL 0x009568e0
005a01d8  68eca4b100                PUSH 0xb1a4ec
005a01dd  8d4f48                    LEA ECX,[EDI + 0x48]
005a01e0  e86ba3e6ff                CALL 0x0040a550
005a01e5  84c0                      TEST AL,AL
005a01e7  0f848c040000              JZ 0x005a0679
005a01ed  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
005a01f7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a0201  e973040000                JMP 0x005a0679
005a0206  83f801                    CMP EAX,0x1
005a0209  0f85cc000000              JNZ 0x005a02db
005a020f  6a00                      PUSH 0x0
005a0211  8d4f48                    LEA ECX,[EDI + 0x48]
005a0214  68f826b600                PUSH 0xb626f8
005a0219  e862a1e6ff                CALL 0x0040a380
005a021e  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a0224  83ec08                    SUB ESP,0x8
005a0227  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
005a022f  8d8924a30200              LEA ECX,[ECX + 0x2a324]
005a0235  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a023c  68b4010000                PUSH 0x1b4
005a0241  e8dae33800                CALL 0x0092e620
005a0246  f30f108d88feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe88]
005a024e  f30f590d80a8ba00          MULSS XMM1,dword ptr [0x00baa880]
005a0256  ff8710040000              INC dword ptr [EDI + 0x410]
005a025c  f30f100528a9ba00          MOVSS XMM0,dword ptr [0x00baa928]
005a0264  f30f5cc1                  SUBSS XMM0,XMM1
005a0268  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a026c  398710040000              CMP dword ptr [EDI + 0x410],EAX
005a0272  0f8e01040000              JLE 0x005a0679
005a0278  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a027e  81c124a30200              ADD ECX,0x2a324
005a0284  68b4010000                PUSH 0x1b4
005a0289  e8a2df3800                CALL 0x0092e230
005a028e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a0296  51                        PUSH ECX
005a0297  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a029e  6a00                      PUSH 0x0
005a02a0  6a5a                      PUSH 0x5a
005a02a2  68b5010000                PUSH 0x1b5
005a02a7  e834663b00                CALL 0x009568e0
005a02ac  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
005a02b6  e8a5ec1400                CALL 0x006eef60
005a02bb  83e003                    AND EAX,0x3
005a02be  8d4f48                    LEA ECX,[EDI + 0x48]
005a02c1  50                        PUSH EAX
005a02c2  68e026b600                PUSH 0xb626e0
005a02c7  e814a4e6ff                CALL 0x0040a6e0
005a02cc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a02d6  e99e030000                JMP 0x005a0679
005a02db  83f802                    CMP EAX,0x2
005a02de  0f8595030000              JNZ 0x005a0679
005a02e4  be01000000                MOV ESI,0x1
005a02e9  8d4f48                    LEA ECX,[EDI + 0x48]
005a02ec  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
005a02f2  e889a4e6ff                CALL 0x0040a780
005a02f7  85c0                      TEST EAX,EAX
005a02f9  7543                      JNZ 0x005a033e
005a02fb  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
005a0303  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005a030b  8b8518feffff              MOV EAX,dword ptr [EBP + 0xfffffe18]
005a0311  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
005a0317  b802000000                MOV EAX,0x2
005a031c  89b590feffff              MOV dword ptr [EBP + 0xfffffe90],ESI
005a0322  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
005a0329  c78598feffff08000000      MOV dword ptr [EBP + 0xfffffe98],0x8
005a0333  0f47f0                    CMOVA ESI,EAX
005a0336  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
005a033c  eb58                      JMP 0x005a0396
005a033e  8d4f48                    LEA ECX,[EDI + 0x48]
005a0341  e83aa4e6ff                CALL 0x0040a780
005a0346  83f801                    CMP EAX,0x1
005a0349  7520                      JNZ 0x005a036b
005a034b  c78590feffff02000000      MOV dword ptr [EBP + 0xfffffe90],0x2
005a0355  c785c4feffff0c000000      MOV dword ptr [EBP + 0xfffffec4],0xc
005a035f  c78598feffff02000000      MOV dword ptr [EBP + 0xfffffe98],0x2
005a0369  eb2b                      JMP 0x005a0396
005a036b  8d4f48                    LEA ECX,[EDI + 0x48]
005a036e  e80da4e6ff                CALL 0x0040a780
005a0373  83f802                    CMP EAX,0x2
005a0376  757e                      JNZ 0x005a03f6
005a0378  c78590feffff03000000      MOV dword ptr [EBP + 0xfffffe90],0x3
005a0382  c785c4feffff07000000      MOV dword ptr [EBP + 0xfffffec4],0x7
005a038c  c78598feffff07000000      MOV dword ptr [EBP + 0xfffffe98],0x7
005a0396  83bf100400003c            CMP dword ptr [EDI + 0x410],0x3c
005a039d  f30f108d88feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe88]
005a03a5  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
005a03ad  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
005a03b5  f30f5cc1                  SUBSS XMM0,XMM1
005a03b9  f30f2cf0                  CVTTSS2SI ESI,XMM0
005a03bd  89b5d4feffff              MOV dword ptr [EBP + 0xfffffed4],ESI
005a03c3  0f8d84000000              JGE 0x005a044d
005a03c9  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a03cf  83ec08                    SUB ESP,0x8
005a03d2  81c124a30200              ADD ECX,0x2a324
005a03d8  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
005a03e0  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a03e7  68b7010000                PUSH 0x1b7
005a03ec  e82fe23800                CALL 0x0092e620
005a03f1  e98b000000                JMP 0x005a0481
005a03f6  8d4f48                    LEA ECX,[EDI + 0x48]
005a03f9  e882a3e6ff                CALL 0x0040a780
005a03fe  83f803                    CMP EAX,0x3
005a0401  7520                      JNZ 0x005a0423
005a0403  c78590feffff00000000      MOV dword ptr [EBP + 0xfffffe90],0x0
005a040d  c785c4feffff07000000      MOV dword ptr [EBP + 0xfffffec4],0x7
005a0417  c78598feffff07000000      MOV dword ptr [EBP + 0xfffffe98],0x7
005a0421  eb1a                      JMP 0x005a043d
005a0423  c78598feffff1e000000      MOV dword ptr [EBP + 0xfffffe98],0x1e
005a042d  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
005a0433  c78590feffffffffffff      MOV dword ptr [EBP + 0xfffffe90],0xffffffff
005a043d  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
005a0447  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
005a044d  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a0453  81c124a30200              ADD ECX,0x2a324
005a0459  68b7010000                PUSH 0x1b7
005a045e  e8cddd3800                CALL 0x0092e230
005a0463  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a046b  51                        PUSH ECX
005a046c  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a0473  6a00                      PUSH 0x0
005a0475  6a5a                      PUSH 0x5a
005a0477  68b6010000                PUSH 0x1b6
005a047c  e85f643b00                CALL 0x009568e0
005a0481  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
005a0487  85f6                      TEST ESI,ESI
005a0489  7523                      JNZ 0x005a04ae
005a048b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a0493  51                        PUSH ECX
005a0494  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a049b  56                        PUSH ESI
005a049c  6a5a                      PUSH 0x5a
005a049e  68ac010000                PUSH 0x1ac
005a04a3  e838643b00                CALL 0x009568e0
005a04a8  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
005a04ae  46                        INC ESI
005a04af  83bd90feffffff            CMP dword ptr [EBP + 0xfffffe90],-0x1
005a04b6  89b710040000              MOV dword ptr [EDI + 0x410],ESI
005a04bc  8bd6                      MOV EDX,ESI
005a04be  0f8491010000              JZ 0x005a0655
005a04c4  8b8d98feffff              MOV ECX,dword ptr [EBP + 0xfffffe98]
005a04ca  8bc6                      MOV EAX,ESI
005a04cc  99                        CDQ
005a04cd  f7f9                      IDIV ECX
005a04cf  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
005a04d5  85d2                      TEST EDX,EDX
005a04d7  0f8572010000              JNZ 0x005a064f
005a04dd  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
005a04e3  8bd6                      MOV EDX,ESI
005a04e5  0fafc1                    IMUL EAX,ECX
005a04e8  3bf0                      CMP ESI,EAX
005a04ea  0f8f65010000              JG 0x005a0655
005a04f0  a17816c700                MOV EAX,[0x00c71678]
005a04f5  51                        PUSH ECX
005a04f6  c7042400000000            MOV dword ptr [ESP],0x0
005a04fd  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005a0503  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
005a0509  50                        PUSH EAX
005a050a  8bce                      MOV ECX,ESI
005a050c  e8bfe42700                CALL 0x0081e9d0
005a0511  6a00                      PUSH 0x0
005a0513  6a00                      PUSH 0x0
005a0515  6a00                      PUSH 0x0
005a0517  51                        PUSH ECX
005a0518  c7042400000000            MOV dword ptr [ESP],0x0
005a051f  8bce                      MOV ECX,ESI
005a0521  50                        PUSH EAX
005a0522  8d8554feffff              LEA EAX,[EBP + 0xfffffe54]
005a0528  50                        PUSH EAX
005a0529  e8f22f2700                CALL 0x00813520
005a052e  e82dea1400                CALL 0x006eef60
005a0533  8bf0                      MOV ESI,EAX
005a0535  e826ea1400                CALL 0x006eef60
005a053a  660f6ec0                  MOVD XMM0,EAX
005a053e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a0542  c1e81f                    SHR EAX,0x1f
005a0545  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a054e  660f5ac0                  CVTPD2PS XMM0,XMM0
005a0552  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a055a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a0562  f30f58c0                  ADDSS XMM0,XMM0
005a0566  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a056e  e8adcfe7ff                CALL 0x0041d520
005a0573  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
005a057b  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a0583  e8b8cfe7ff                CALL 0x0041d540
005a0588  6a00                      PUSH 0x0
005a058a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a0590  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a0596  68acd6c500                PUSH 0xc5d6ac
005a059b  68dcd5c500                PUSH 0xc5d5dc
005a05a0  6a00                      PUSH 0x0
005a05a2  56                        PUSH ESI
005a05a3  6a00                      PUSH 0x0
005a05a5  57                        PUSH EDI
005a05a6  50                        PUSH EAX
005a05a7  8d8554feffff              LEA EAX,[EBP + 0xfffffe54]
005a05ad  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
005a05b5  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
005a05bd  50                        PUSH EAX
005a05be  ffb590feffff              PUSH dword ptr [EBP + 0xfffffe90]
005a05c4  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a05cc  6825010000                PUSH 0x125
005a05d1  e84a85e8ff                CALL 0x00428b20
005a05d6  50                        PUSH EAX
005a05d7  e8d5025500                CALL 0x00af08b1
005a05dc  8bf0                      MOV ESI,EAX
005a05de  83c414                    ADD ESP,0x14
005a05e1  85f6                      TEST ESI,ESI
005a05e3  7455                      JZ 0x005a063a
005a05e5  83bd90feffff01            CMP dword ptr [EBP + 0xfffffe90],0x1
005a05ec  7545                      JNZ 0x005a0633
005a05ee  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a05f4  99                        CDQ
005a05f5  f7bd98feffff              IDIV dword ptr [EBP + 0xfffffe98]
005a05fb  48                        DEC EAX
005a05fc  3b8518feffff              CMP EAX,dword ptr [EBP + 0xfffffe18]
005a0602  7d2f                      JGE 0x005a0633
005a0604  8b8d10feffff              MOV ECX,dword ptr [EBP + 0xfffffe10]
005a060a  6a00                      PUSH 0x0
005a060c  68acd6c500                PUSH 0xc5d6ac
005a0611  68dcd5c500                PUSH 0xc5d5dc
005a0616  6a00                      PUSH 0x0
005a0618  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
005a061b  e891025500                CALL 0x00af08b1
005a0620  83c414                    ADD ESP,0x14
005a0623  85c0                      TEST EAX,EAX
005a0625  740c                      JZ 0x005a0633
005a0627  8b80c00b0000              MOV EAX,dword ptr [EAX + 0xbc0]
005a062d  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
005a0633  8b06                      MOV EAX,dword ptr [ESI]
005a0635  8bce                      MOV ECX,ESI
005a0637  ff500c                    CALL dword ptr [EAX + 0xc]
005a063a  83ade0feffff01            SUB dword ptr [EBP + 0xfffffee0],0x1
005a0641  0f85a9feffff              JNZ 0x005a04f0
005a0647  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
005a064d  eb06                      JMP 0x005a0655
005a064f  8b95e4feffff              MOV EDX,dword ptr [EBP + 0xfffffee4]
005a0655  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
005a065b  be64000000                MOV ESI,0x64
005a0660  0faf8598feffff            IMUL EAX,dword ptr [EBP + 0xfffffe98]
005a0667  3bd0                      CMP EDX,EAX
005a0669  7e0e                      JLE 0x005a0679
005a066b  3b95d4feffff              CMP EDX,dword ptr [EBP + 0xfffffed4]
005a0671  b804000000                MOV EAX,0x4
005a0676  0f4ff0                    CMOVG ESI,EAX
005a0679  3bb7640b0000              CMP ESI,dword ptr [EDI + 0xb64]
005a067f  0f846a030000              JZ 0x005a09ef
005a0685  89b7640b0000              MOV dword ptr [EDI + 0xb64],ESI
005a068b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a0695  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a069f  e94b030000                JMP 0x005a09ef
005a06a4  3dc8000000                CMP EAX,0xc8
005a06a9  0f855d030000              JNZ 0x005a0a0c
005a06af  6a00                      PUSH 0x0
005a06b1  8d4f48                    LEA ECX,[EDI + 0x48]
005a06b4  689026b600                PUSH 0xb62690
005a06b9  e8c29ce6ff                CALL 0x0040a380
005a06be  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a06c4  85c0                      TEST EAX,EAX
005a06c6  7523                      JNZ 0x005a06eb
005a06c8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a06d0  51                        PUSH ECX
005a06d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a06d8  50                        PUSH EAX
005a06d9  6a02                      PUSH 0x2
005a06db  68b0010000                PUSH 0x1b0
005a06e0  e8fb613b00                CALL 0x009568e0
005a06e5  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a06eb  f30f108d88feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe88]
005a06f3  40                        INC EAX
005a06f4  80bdcefeffff00            CMP byte ptr [EBP + 0xfffffece],0x0
005a06fb  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
005a0703  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a0709  f30f118d88feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM1
005a0711  f30f118f4c010000          MOVSS dword ptr [EDI + 0x14c],XMM1
005a0719  750d                      JNZ 0x005a0728
005a071b  80bd80feffff00            CMP byte ptr [EBP + 0xfffffe80],0x0
005a0722  0f845c020000              JZ 0x005a0984
005a0728  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a072e  6a0a                      PUSH 0xa
005a0730  e83b2f1600                CALL 0x00703670
005a0735  e826e81400                CALL 0x006eef60
005a073a  51                        PUSH ECX
005a073b  660f6ec0                  MOVD XMM0,EAX
005a073f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a0743  c1e81f                    SHR EAX,0x1f
005a0746  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a074f  660f5ac0                  CVTPD2PS XMM0,XMM0
005a0753  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a075b  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005a0763  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
005a076b  f30f110424                MOVSS dword ptr [ESP],XMM0
005a0770  6a00                      PUSH 0x0
005a0772  6a02                      PUSH 0x2
005a0774  51                        PUSH ECX
005a0775  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a077c  8bcf                      MOV ECX,EDI
005a077e  6a30                      PUSH 0x30
005a0780  e81b641300                CALL 0x006d6ba0
005a0785  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005a0788  85c0                      TEST EAX,EAX
005a078a  756e                      JNZ 0x005a07fa
005a078c  83bd08feffff04            CMP dword ptr [EBP + 0xfffffe08],0x4
005a0793  0f837d010000              JNC 0x005a0916
005a0799  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
005a07a1  f30f590dcca4ba00          MULSS XMM1,dword ptr [0x00baa4cc]
005a07a9  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005a07b1  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
005a07b9  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
005a07c1  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
005a07c9  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
005a07d1  e88ae71400                CALL 0x006eef60
005a07d6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a07dc  50                        PUSH EAX
005a07dd  6a00                      PUSH 0x0
005a07df  57                        PUSH EDI
005a07e0  6840b6c700                PUSH 0xc7b640
005a07e5  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a07eb  50                        PUSH EAX
005a07ec  6a00                      PUSH 0x0
005a07ee  6a56                      PUSH 0x56
005a07f0  e82b83e8ff                CALL 0x00428b20
005a07f5  e91c010000                JMP 0x005a0916
005a07fa  83f801                    CMP EAX,0x1
005a07fd  0f8513010000              JNZ 0x005a0916
005a0803  c785c8feffff02000000      MOV dword ptr [EBP + 0xfffffec8],0x2
005a080d  0f1f00                    NOP dword ptr [EAX]
005a0810  a17816c700                MOV EAX,[0x00c71678]
005a0815  51                        PUSH ECX
005a0816  c7042400000000            MOV dword ptr [ESP],0x0
005a081d  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005a0823  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
005a0829  50                        PUSH EAX
005a082a  8bce                      MOV ECX,ESI
005a082c  e89fe12700                CALL 0x0081e9d0
005a0831  6a00                      PUSH 0x0
005a0833  6a00                      PUSH 0x0
005a0835  6a00                      PUSH 0x0
005a0837  51                        PUSH ECX
005a0838  c7042400000000            MOV dword ptr [ESP],0x0
005a083f  8bce                      MOV ECX,ESI
005a0841  50                        PUSH EAX
005a0842  8d8554feffff              LEA EAX,[EBP + 0xfffffe54]
005a0848  50                        PUSH EAX
005a0849  e8d22c2700                CALL 0x00813520
005a084e  e80de71400                CALL 0x006eef60
005a0853  8bf0                      MOV ESI,EAX
005a0855  e806e71400                CALL 0x006eef60
005a085a  660f6ec0                  MOVD XMM0,EAX
005a085e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a0862  c1e81f                    SHR EAX,0x1f
005a0865  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a086e  660f5ac0                  CVTPD2PS XMM0,XMM0
005a0872  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a087a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a0882  f30f58c0                  ADDSS XMM0,XMM0
005a0886  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a088e  e88dcce7ff                CALL 0x0041d520
005a0893  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
005a089b  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a08a3  e898cce7ff                CALL 0x0041d540
005a08a8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a08ae  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a08b4  6a00                      PUSH 0x0
005a08b6  68acd6c500                PUSH 0xc5d6ac
005a08bb  68dcd5c500                PUSH 0xc5d5dc
005a08c0  6a00                      PUSH 0x0
005a08c2  56                        PUSH ESI
005a08c3  6a00                      PUSH 0x0
005a08c5  57                        PUSH EDI
005a08c6  50                        PUSH EAX
005a08c7  8d8554feffff              LEA EAX,[EBP + 0xfffffe54]
005a08cd  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
005a08d5  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
005a08dd  50                        PUSH EAX
005a08de  6a02                      PUSH 0x2
005a08e0  6825010000                PUSH 0x125
005a08e5  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a08ed  e82e82e8ff                CALL 0x00428b20
005a08f2  50                        PUSH EAX
005a08f3  e8b9ff5400                CALL 0x00af08b1
005a08f8  83c414                    ADD ESP,0x14
005a08fb  8bc8                      MOV ECX,EAX
005a08fd  8b10                      MOV EDX,dword ptr [EAX]
005a08ff  c7403001000000            MOV dword ptr [EAX + 0x30],0x1
005a0906  ff520c                    CALL dword ptr [EDX + 0xc]
005a0909  83adc8feffff01            SUB dword ptr [EBP + 0xfffffec8],0x1
005a0910  0f85fafeffff              JNZ 0x005a0810
005a0916  8d8d38feffff              LEA ECX,[EBP + 0xfffffe38]
005a091c  e84f5cebff                CALL 0x00456570
005a0921  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005a0929  a17816c700                MOV EAX,[0x00c71678]
005a092e  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
005a0936  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a093e  c78550feffff19000000      MOV dword ptr [EBP + 0xfffffe50],0x19
005a0948  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a094e  c78548feffffcdcccc3c      MOV dword ptr [EBP + 0xfffffe48],0x3ccccccd
005a0958  c78544feffffcdcccc3c      MOV dword ptr [EBP + 0xfffffe44],0x3ccccccd
005a0962  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
005a096a  e8b1d82700                CALL 0x0081e220
005a096f  8d9538feffff              LEA EDX,[EBP + 0xfffffe38]
005a0975  52                        PUSH EDX
005a0976  50                        PUSH EAX
005a0977  e894d52700                CALL 0x0081df10
005a097c  f30f108d88feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe88]
005a0984  83bdacfeffffff            CMP dword ptr [EBP + 0xfffffeac],-0x1
005a098b  f30f10058ca9ba00          MOVSS XMM0,dword ptr [0x00baa98c]
005a0993  f30f5ec1                  DIVSS XMM0,XMM1
005a0997  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a099b  740f                      JZ 0x005a09ac
005a099d  6a0a                      PUSH 0xa
005a099f  8bcf                      MOV ECX,EDI
005a09a1  e8ba781300                CALL 0x006d8260
005a09a6  84c0                      TEST AL,AL
005a09a8  7427                      JZ 0x005a09d1
005a09aa  eb43                      JMP 0x005a09ef
005a09ac  398710040000              CMP dword ptr [EDI + 0x410],EAX
005a09b2  7e3b                      JLE 0x005a09ef
005a09b4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a09b8  750a                      JNZ 0x005a09c4
005a09ba  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
005a09c2  eb08                      JMP 0x005a09cc
005a09c4  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
005a09cc  0f2fc8                    COMISS XMM1,XMM0
005a09cf  761e                      JBE 0x005a09ef
005a09d1  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005a09db  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a09e5  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
005a09ef  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a09f7  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
005a09ff  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a0a07  e97a2b0000                JMP 0x005a3586
005a0a0c  83f806                    CMP EAX,0x6
005a0a0f  0f8570050000              JNZ 0x005a0f85
005a0a15  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005a0a1b  85c0                      TEST EAX,EAX
005a0a1d  0f85c2000000              JNZ 0x005a0ae5
005a0a23  50                        PUSH EAX
005a0a24  68e4e0b100                PUSH 0xb1e0e4
005a0a29  8d4f48                    LEA ECX,[EDI + 0x48]
005a0a2c  e84f99e6ff                CALL 0x0040a380
005a0a31  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005a0a38  7527                      JNZ 0x005a0a61
005a0a3a  8bcf                      MOV ECX,EDI
005a0a3c  e8ffdd1100                CALL 0x006be840
005a0a41  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005a0a49  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005a0a51  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a0a59  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
005a0a61  6860d5b100                PUSH 0xb1d560
005a0a66  8d4f48                    LEA ECX,[EDI + 0x48]
005a0a69  e8c2a5e6ff                CALL 0x0040b030
005a0a6e  84c0                      TEST AL,AL
005a0a70  7445                      JZ 0x005a0ab7
005a0a72  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a0a7a  51                        PUSH ECX
005a0a7b  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a0a82  6a00                      PUSH 0x0
005a0a84  6a02                      PUSH 0x2
005a0a86  6a0e                      PUSH 0xe
005a0a88  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005a0a92  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
005a0a9c  e83f5e3b00                CALL 0x009568e0
005a0aa1  6a0f                      PUSH 0xf
005a0aa3  8bcf                      MOV ECX,EDI
005a0aa5  e816daffff                CALL 0x0059e4c0
005a0aaa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a0ab0  6a08                      PUSH 0x8
005a0ab2  e8b92b1600                CALL 0x00703670
005a0ab7  68e4e0b100                PUSH 0xb1e0e4
005a0abc  8d4f48                    LEA ECX,[EDI + 0x48]
005a0abf  e88c9ae6ff                CALL 0x0040a550
005a0ac4  84c0                      TEST AL,AL
005a0ac6  7411                      JZ 0x005a0ad9
005a0ac8  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
005a0ad2  b801000000                MOV EAX,0x1
005a0ad7  eb06                      JMP 0x005a0adf
005a0ad9  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005a0adf  ff8710040000              INC dword ptr [EDI + 0x410]
005a0ae5  83f801                    CMP EAX,0x1
005a0ae8  0f855a020000              JNZ 0x005a0d48
005a0aee  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005a0af6  8db73c030000              LEA ESI,[EDI + 0x33c]
005a0afc  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005a0b04  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
005a0b0a  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005a0b0e  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005a0b13  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a0b1b  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a0b23  e898f44600                CALL 0x00a0ffc0
005a0b28  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
005a0b30  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a0b36  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
005a0b3e  8bcf                      MOV ECX,EDI
005a0b40  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
005a0b48  6a00                      PUSH 0x0
005a0b4a  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
005a0b52  50                        PUSH EAX
005a0b53  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a0b5b  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a0b63  e8e808e9ff                CALL 0x00431450
005a0b68  6a00                      PUSH 0x0
005a0b6a  6a05                      PUSH 0x5
005a0b6c  e89fbb1000                CALL 0x006ac710
005a0b71  84c0                      TEST AL,AL
005a0b73  0f8441010000              JZ 0x005a0cba
005a0b79  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
005a0b81  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
005a0b87  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a0b8a  0f57c9                    XORPS XMM1,XMM1
005a0b8d  f30f5cc1                  SUBSS XMM0,XMM1
005a0b91  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
005a0b99  f30f5fc1                  MAXSS XMM0,XMM1
005a0b9d  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
005a0ba5  f30f58c0                  ADDSS XMM0,XMM0
005a0ba9  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
005a0bb1  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a0bb9  e872e3e9ff                CALL 0x0043ef30
005a0bbe  c785ecfeffff000048c4      MOV dword ptr [EBP + 0xfffffeec],0xc4480000
005a0bc8  e893e31400                CALL 0x006eef60
005a0bcd  c785f4feffff00000040      MOV dword ptr [EBP + 0xfffffef4],0x40000000
005a0bd7  c785fcfeffffcdcccc3f      MOV dword ptr [EBP + 0xfffffefc],0x3fcccccd
005a0be1  c7857cffffff07000000      MOV dword ptr [EBP + 0xffffff7c],0x7
005a0beb  660f6ec0                  MOVD XMM0,EAX
005a0bef  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a0bf3  c1e81f                    SHR EAX,0x1f
005a0bf6  c78540ffffff02000000      MOV dword ptr [EBP + 0xffffff40],0x2
005a0c00  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
005a0c0a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a0c13  8d8554feffff              LEA EAX,[EBP + 0xfffffe54]
005a0c19  50                        PUSH EAX
005a0c1a  660f5ac0                  CVTPD2PS XMM0,XMM0
005a0c1e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a0c26  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
005a0c2e  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
005a0c36  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
005a0c3e  e82de40d00                CALL 0x0067f070
005a0c43  83c404                    ADD ESP,0x4
005a0c46  8bf0                      MOV ESI,EAX
005a0c48  e813e31400                CALL 0x006eef60
005a0c4d  f30f109de4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee4]
005a0c55  8bcf                      MOV ECX,EDI
005a0c57  0f28cb                    MOVAPS XMM1,XMM3
005a0c5a  660f6ec0                  MOVD XMM0,EAX
005a0c5e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a0c62  c1e81f                    SHR EAX,0x1f
005a0c65  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a0c6e  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
005a0c74  50                        PUSH EAX
005a0c75  6a00                      PUSH 0x0
005a0c77  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a0c7d  660f5ad0                  CVTPD2PS XMM2,XMM0
005a0c81  50                        PUSH EAX
005a0c82  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
005a0c8a  0f28c2                    MOVAPS XMM0,XMM2
005a0c8d  f30f595604                MULSS XMM2,dword ptr [ESI + 0x4]
005a0c92  f30f5906                  MULSS XMM0,dword ptr [ESI]
005a0c96  8db73c030000              LEA ESI,[EDI + 0x33c]
005a0c9c  56                        PUSH ESI
005a0c9d  f30f59da                  MULSS XMM3,XMM2
005a0ca1  f30f59c8                  MULSS XMM1,XMM0
005a0ca5  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
005a0cad  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a0cb5  e826a61200                CALL 0x006cb2e0
005a0cba  6a00                      PUSH 0x0
005a0cbc  6a01                      PUSH 0x1
005a0cbe  8bcf                      MOV ECX,EDI
005a0cc0  e84bba1000                CALL 0x006ac710
005a0cc5  84c0                      TEST AL,AL
005a0cc7  742b                      JZ 0x005a0cf4
005a0cc9  8d4d94                    LEA ECX,[EBP + -0x6c]
005a0ccc  e89f64e6ff                CALL 0x00407170
005a0cd1  6a00                      PUSH 0x0
005a0cd3  51                        PUSH ECX
005a0cd4  c70424000048c4            MOV dword ptr [ESP],0xc4480000
005a0cdb  50                        PUSH EAX
005a0cdc  51                        PUSH ECX
005a0cdd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a0ce3  c7042400004040            MOV dword ptr [ESP],0x40400000
005a0cea  6a02                      PUSH 0x2
005a0cec  6a5f                      PUSH 0x5f
005a0cee  56                        PUSH ESI
005a0cef  e83c261600                CALL 0x00703330
005a0cf4  f30f100e                  MOVSS XMM1,dword ptr [ESI]
005a0cf8  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005a0cfd  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
005a0d05  f30f5c8f34030000          SUBSS XMM1,dword ptr [EDI + 0x334]
005a0d0d  f30f59c0                  MULSS XMM0,XMM0
005a0d11  f30f59c9                  MULSS XMM1,XMM1
005a0d15  f30f58c1                  ADDSS XMM0,XMM1
005a0d19  e8324de9ff                CALL 0x00435a50
005a0d1e  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
005a0d26  0f2fc8                    COMISS XMM1,XMM0
005a0d29  7611                      JBE 0x005a0d3c
005a0d2b  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
005a0d35  b802000000                MOV EAX,0x2
005a0d3a  eb06                      JMP 0x005a0d42
005a0d3c  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005a0d42  ff8710040000              INC dword ptr [EDI + 0x410]
005a0d48  83f802                    CMP EAX,0x2
005a0d4b  0f8517020000              JNZ 0x005a0f68
005a0d51  6a00                      PUSH 0x0
005a0d53  8d7748                    LEA ESI,[EDI + 0x48]
005a0d56  68c8e0b100                PUSH 0xb1e0c8
005a0d5b  8bce                      MOV ECX,ESI
005a0d5d  e81e96e6ff                CALL 0x0040a380
005a0d62  685ce5b100                PUSH 0xb1e55c
005a0d67  8bce                      MOV ECX,ESI
005a0d69  e8c2a2e6ff                CALL 0x0040b030
005a0d6e  84c0                      TEST AL,AL
005a0d70  0f84be010000              JZ 0x005a0f34
005a0d76  6a1e                      PUSH 0x1e
005a0d78  8bcf                      MOV ECX,EDI
005a0d7a  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005a0d84  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
005a0d8e  e82dd7ffff                CALL 0x0059e4c0
005a0d93  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a0d9b  51                        PUSH ECX
005a0d9c  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a0da3  6a00                      PUSH 0x0
005a0da5  6a02                      PUSH 0x2
005a0da7  688a000000                PUSH 0x8a
005a0dac  e82f5b3b00                CALL 0x009568e0
005a0db1  e8aae11400                CALL 0x006eef60
005a0db6  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a0dbe  51                        PUSH ECX
005a0dbf  660f6ec0                  MOVD XMM0,EAX
005a0dc3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a0dc7  c1e81f                    SHR EAX,0x1f
005a0dca  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a0dd3  660f5ac0                  CVTPD2PS XMM0,XMM0
005a0dd7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a0ddf  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005a0de7  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
005a0def  f30f110424                MOVSS dword ptr [ESP],XMM0
005a0df4  6a00                      PUSH 0x0
005a0df6  6a02                      PUSH 0x2
005a0df8  6a30                      PUSH 0x30
005a0dfa  e8e15a3b00                CALL 0x009568e0
005a0dff  8d8d38feffff              LEA ECX,[EBP + 0xfffffe38]
005a0e05  e86657ebff                CALL 0x00456570
005a0e0a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005a0e12  8db73c030000              LEA ESI,[EDI + 0x33c]
005a0e18  a17816c700                MOV EAX,[0x00c71678]
005a0e1d  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
005a0e25  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005a0e2a  c78550feffff19000000      MOV dword ptr [EBP + 0xfffffe50],0x19
005a0e34  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a0e3a  c78548feffffcdcccc3c      MOV dword ptr [EBP + 0xfffffe48],0x3ccccccd
005a0e44  c78544feffffcdcccc3c      MOV dword ptr [EBP + 0xfffffe44],0x3ccccccd
005a0e4e  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
005a0e56  e8c5d32700                CALL 0x0081e220
005a0e5b  8d9538feffff              LEA EDX,[EBP + 0xfffffe38]
005a0e61  52                        PUSH EDX
005a0e62  50                        PUSH EAX
005a0e63  e8a8d02700                CALL 0x0081df10
005a0e68  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a0e6e  6a12                      PUSH 0x12
005a0e70  e8fb271600                CALL 0x00703670
005a0e75  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
005a0e7f  90                        NOP
005a0e80  e8dbe01400                CALL 0x006eef60
005a0e85  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a0e8b  6a00                      PUSH 0x0
005a0e8d  68acd5c500                PUSH 0xc5d5ac
005a0e92  68dcd5c500                PUSH 0xc5d5dc
005a0e97  6a00                      PUSH 0x0
005a0e99  50                        PUSH EAX
005a0e9a  6a00                      PUSH 0x0
005a0e9c  57                        PUSH EDI
005a0e9d  6840b6c700                PUSH 0xc7b640
005a0ea2  56                        PUSH ESI
005a0ea3  6a48                      PUSH 0x48
005a0ea5  68e8030000                PUSH 0x3e8
005a0eaa  e8717ce8ff                CALL 0x00428b20
005a0eaf  50                        PUSH EAX
005a0eb0  e8fcf95400                CALL 0x00af08b1
005a0eb5  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
005a0ebb  83c414                    ADD ESP,0x14
005a0ebe  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
005a0ec4  8db0bc030000              LEA ESI,[EAX + 0x3bc]
005a0eca  85c9                      TEST ECX,ECX
005a0ecc  7418                      JZ 0x005a0ee6
005a0ece  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
005a0ed4  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
005a0eda  81c1cc030000              ADD ECX,0x3cc
005a0ee0  50                        PUSH EAX
005a0ee1  e82ae3f2ff                CALL 0x004cf210
005a0ee6  56                        PUSH ESI
005a0ee7  8bcf                      MOV ECX,EDI
005a0ee9  893e                      MOV dword ptr [ESI],EDI
005a0eeb  e800cef2ff                CALL 0x004cdcf0
005a0ef0  8b85c8feffff              MOV EAX,dword ptr [EBP + 0xfffffec8]
005a0ef6  8db73c030000              LEA ESI,[EDI + 0x33c]
005a0efc  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
005a0f02  660f6ec0                  MOVD XMM0,EAX
005a0f06  40                        INC EAX
005a0f07  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
005a0f0d  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a0f10  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
005a0f18  f30f5e0584a7ba00          DIVSS XMM0,dword ptr [0x00baa784]
005a0f20  f30f118174040000          MOVSS dword ptr [ECX + 0x474],XMM0
005a0f28  83f805                    CMP EAX,0x5
005a0f2b  0f8c4fffffff              JL 0x005a0e80
005a0f31  8d7748                    LEA ESI,[EDI + 0x48]
005a0f34  ff8710040000              INC dword ptr [EDI + 0x410]
005a0f3a  8bce                      MOV ECX,ESI
005a0f3c  68c8e0b100                PUSH 0xb1e0c8
005a0f41  e80a96e6ff                CALL 0x0040a550
005a0f46  84c0                      TEST AL,AL
005a0f48  741e                      JZ 0x005a0f68
005a0f4a  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a0f54  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a0f5e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a0f68  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a0f70  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005a0f78  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a0f80  e901260000                JMP 0x005a3586
005a0f85  3d28230000                CMP EAX,0x2328
005a0f8a  0f8529020000              JNZ 0x005a11b9
005a0f90  6a00                      PUSH 0x0
005a0f92  683ce1b100                PUSH 0xb1e13c
005a0f97  8d4f48                    LEA ECX,[EDI + 0x48]
005a0f9a  e8e193e6ff                CALL 0x0040a380
005a0f9f  8bcf                      MOV ECX,EDI
005a0fa1  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
005a0fab  e8e0d3ffff                CALL 0x0059e390
005a0fb0  68eca4b100                PUSH 0xb1a4ec
005a0fb5  8d4f48                    LEA ECX,[EDI + 0x48]
005a0fb8  e89395e6ff                CALL 0x0040a550
005a0fbd  84c0                      TEST AL,AL
005a0fbf  740a                      JZ 0x005a0fcb
005a0fc1  c787640b000029230000      MOV dword ptr [EDI + 0xb64],0x2329
005a0fcb  687cdab100                PUSH 0xb1da7c
005a0fd0  8d4f48                    LEA ECX,[EDI + 0x48]
005a0fd3  e858a0e6ff                CALL 0x0040b030
005a0fd8  84c0                      TEST AL,AL
005a0fda  0f84a6250000              JZ 0x005a3586
005a0fe0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a0fe8  51                        PUSH ECX
005a0fe9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a0ff0  6a00                      PUSH 0x0
005a0ff2  6a02                      PUSH 0x2
005a0ff4  68af010000                PUSH 0x1af
005a0ff9  e8e2583b00                CALL 0x009568e0
005a0ffe  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a1006  51                        PUSH ECX
005a1007  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a100e  6a00                      PUSH 0x0
005a1010  6a02                      PUSH 0x2
005a1012  68ab010000                PUSH 0x1ab
005a1017  e8c4583b00                CALL 0x009568e0
005a101c  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005a1026  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
005a1030  c785e0feffff00000000      MOV dword ptr [EBP + 0xfffffee0],0x0
005a103a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005a1040  8d4d94                    LEA ECX,[EBP + -0x6c]
005a1043  e82861e6ff                CALL 0x00407170
005a1048  8bf0                      MOV ESI,EAX
005a104a  e811df1400                CALL 0x006eef60
005a104f  660f6ec0                  MOVD XMM0,EAX
005a1053  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a1057  c1e81f                    SHR EAX,0x1f
005a105a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a1063  660f5ac0                  CVTPD2PS XMM0,XMM0
005a1067  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a106f  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a1077  f30f58c0                  ADDSS XMM0,XMM0
005a107b  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a1083  e898c4e7ff                CALL 0x0041d520
005a1088  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
005a1090  e8cbde1400                CALL 0x006eef60
005a1095  660f6ec8                  MOVD XMM1,EAX
005a1099  f30fe6c9                  CVTDQ2PD XMM1,XMM1
005a109d  c1e81f                    SHR EAX,0x1f
005a10a0  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
005a10a9  660f5ac1                  CVTPD2PS XMM0,XMM1
005a10ad  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a10b5  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
005a10bd  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a10c5  e876c4e7ff                CALL 0x0041d540
005a10ca  f30f108dd0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed0]
005a10d2  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a10d8  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
005a10e0  f30f59c1                  MULSS XMM0,XMM1
005a10e4  0f28d3                    MOVAPS XMM2,XMM3
005a10e7  6a00                      PUSH 0x0
005a10e9  f30f598d60feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe60]
005a10f1  51                        PUSH ECX
005a10f2  f30f59d0                  MULSS XMM2,XMM0
005a10f6  660f6e85e0feffff          MOVD XMM0,dword ptr [EBP + 0xfffffee0]
005a10fe  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a1101  f30f59d9                  MULSS XMM3,XMM1
005a1105  f30f58d2                  ADDSS XMM2,XMM2
005a1109  f30f590574adba00          MULSS XMM0,dword ptr [0x00baad74]
005a1111  f30f58db                  ADDSS XMM3,XMM3
005a1115  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
005a111d  f30f110424                MOVSS dword ptr [ESP],XMM0
005a1122  56                        PUSH ESI
005a1123  51                        PUSH ECX
005a1124  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
005a112c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a1132  c7042400002041            MOV dword ptr [ESP],0x41200000
005a1139  6a04                      PUSH 0x4
005a113b  6a5f                      PUSH 0x5f
005a113d  50                        PUSH EAX
005a113e  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
005a1146  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
005a114e  e8dd211600                CALL 0x00703330
005a1153  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
005a1159  40                        INC EAX
005a115a  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
005a1160  83f864                    CMP EAX,0x64
005a1163  0f8cd7feffff              JL 0x005a1040
005a1169  e8f2dd1400                CALL 0x006eef60
005a116e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a1174  50                        PUSH EAX
005a1175  6a01                      PUSH 0x1
005a1177  57                        PUSH EDI
005a1178  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a117e  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
005a1188  50                        PUSH EAX
005a1189  8d873c030000              LEA EAX,[EDI + 0x33c]
005a118f  c785dcfeffff000040c0      MOV dword ptr [EBP + 0xfffffedc],0xc0400000
005a1199  50                        PUSH EAX
005a119a  6a14                      PUSH 0x14
005a119c  6a05                      PUSH 0x5
005a119e  e87d79e8ff                CALL 0x00428b20
005a11a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a11a9  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005a11af  e80cf92700                CALL 0x00820ac0
005a11b4  e9cd230000                JMP 0x005a3586
005a11b9  3d29230000                CMP EAX,0x2329
005a11be  0f85c2230000              JNZ 0x005a3586
005a11c4  6a00                      PUSH 0x0
005a11c6  8d4f48                    LEA ECX,[EDI + 0x48]
005a11c9  68d826b600                PUSH 0xb626d8
005a11ce  e8ad91e6ff                CALL 0x0040a380
005a11d3  8bcf                      MOV ECX,EDI
005a11d5  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
005a11dc  e8afd1ffff                CALL 0x0059e390
005a11e1  e9a0230000                JMP 0x005a3586
005a11e6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a11ee  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005a11f6  c685e0feffff00            MOV byte ptr [EBP + 0xfffffee0],0x0
005a11fd  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a1205  3dfe010000                CMP EAX,0x1fe
005a120a  0f8524040000              JNZ 0x005a1634
005a1210  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005a1216  85c0                      TEST EAX,EAX
005a1218  7550                      JNZ 0x005a126a
005a121a  50                        PUSH EAX
005a121b  68acd9b100                PUSH 0xb1d9ac
005a1220  8d4f48                    LEA ECX,[EDI + 0x48]
005a1223  e85891e6ff                CALL 0x0040a380
005a1228  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a1230  51                        PUSH ECX
005a1231  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a1238  6a00                      PUSH 0x0
005a123a  6a1e                      PUSH 0x1e
005a123c  68b1010000                PUSH 0x1b1
005a1241  e89a563b00                CALL 0x009568e0
005a1246  68eca4b100                PUSH 0xb1a4ec
005a124b  8d4f48                    LEA ECX,[EDI + 0x48]
005a124e  e8fd92e6ff                CALL 0x0040a550
005a1253  84c0                      TEST AL,AL
005a1255  0f84d9030000              JZ 0x005a1634
005a125b  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
005a1265  e9ca030000                JMP 0x005a1634
005a126a  83f801                    CMP EAX,0x1
005a126d  0f855e030000              JNZ 0x005a15d1
005a1273  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005a127a  7410                      JZ 0x005a128c
005a127c  ff7720                    PUSH dword ptr [EDI + 0x20]
005a127f  8bcf                      MOV ECX,EDI
005a1281  6a1e                      PUSH 0x1e
005a1283  e888b41000                CALL 0x006ac710
005a1288  84c0                      TEST AL,AL
005a128a  7430                      JZ 0x005a12bc
005a128c  a17816c700                MOV EAX,[0x00c71678]
005a1291  51                        PUSH ECX
005a1292  8d8d54feffff              LEA ECX,[EBP + 0xfffffe54]
005a1298  c7042400000000            MOV dword ptr [ESP],0x0
005a129f  51                        PUSH ECX
005a12a0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a12a6  e825d72700                CALL 0x0081e9d0
005a12ab  8b08                      MOV ECX,dword ptr [EAX]
005a12ad  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005a12b3  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005a12b6  898738030000              MOV dword ptr [EDI + 0x338],EAX
005a12bc  6a00                      PUSH 0x0
005a12be  8d4f48                    LEA ECX,[EDI + 0x48]
005a12c1  68b026b600                PUSH 0xb626b0
005a12c6  e8b590e6ff                CALL 0x0040a380
005a12cb  f6472001                  TEST byte ptr [EDI + 0x20],0x1
005a12cf  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
005a12d7  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a12da  c685e0feffff01            MOV byte ptr [EBP + 0xfffffee0],0x1
005a12e1  f30f5e05d4aaba00          DIVSS XMM0,dword ptr [0x00baaad4]
005a12e9  7508                      JNZ 0x005a12f3
005a12eb  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
005a12f3  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
005a12fb  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a1303  e838c2e7ff                CALL 0x0041d540
005a1308  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005a1310  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
005a1318  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a1320  e8fbc1e7ff                CALL 0x0041d520
005a1325  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005a132d  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a1333  8bcf                      MOV ECX,EDI
005a1335  f30f108dd0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed0]
005a133d  6a00                      PUSH 0x0
005a133f  50                        PUSH EAX
005a1340  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a1348  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a1350  e85b01e9ff                CALL 0x004314b0
005a1355  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005a135d  8db73c030000              LEA ESI,[EDI + 0x33c]
005a1363  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005a136b  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005a136f  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005a1374  51                        PUSH ECX
005a1375  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
005a137b  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a1382  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a138a  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a1392  e819ed4600                CALL 0x00a100b0
005a1397  83bdacfeffffff            CMP dword ptr [EBP + 0xfffffeac],-0x1
005a139e  7420                      JZ 0x005a13c0
005a13a0  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
005a13a8  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
005a13b0  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
005a13b8  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a13c0  6a00                      PUSH 0x0
005a13c2  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a13c8  8bcf                      MOV ECX,EDI
005a13ca  50                        PUSH EAX
005a13cb  e8e000e9ff                CALL 0x004314b0
005a13d0  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005a13d7  0f849b000000              JZ 0x005a1478
005a13dd  f30f10979c010000          MOVSS XMM2,dword ptr [EDI + 0x19c]
005a13e5  f30f108fa0010000          MOVSS XMM1,dword ptr [EDI + 0x1a0]
005a13ed  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
005a13f4  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
005a13fb  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
005a1403  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
005a140b  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
005a1413  f30f118dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM1
005a141b  e840db1400                CALL 0x006eef60
005a1420  f30f1095e4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee4]
005a1428  8bcf                      MOV ECX,EDI
005a142a  f30f108dd0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed0]
005a1432  6a00                      PUSH 0x0
005a1434  660f6ec0                  MOVD XMM0,EAX
005a1438  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a143c  c1e81f                    SHR EAX,0x1f
005a143f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a1448  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a144e  50                        PUSH EAX
005a144f  660f5ac0                  CVTPD2PS XMM0,XMM0
005a1453  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a145b  f30f59d0                  MULSS XMM2,XMM0
005a145f  f30f59c8                  MULSS XMM1,XMM0
005a1463  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
005a146b  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
005a1473  e83800e9ff                CALL 0x004314b0
005a1478  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
005a147e  8bc1                      MOV EAX,ECX
005a1480  2507000080                AND EAX,0x80000007
005a1485  7907                      JNS 0x005a148e
005a1487  48                        DEC EAX
005a1488  83c8f8                    OR EAX,0xfffffff8
005a148b  83c001                    ADD EAX,0x1
005a148e  0f85d8000000              JNZ 0x005a156c
005a1494  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
005a149a  e891dae9ff                CALL 0x0043ef30
005a149f  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
005a14a7  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a14aa  c7857cffffff07000000      MOV dword ptr [EBP + 0xffffff7c],0x7
005a14b4  c785ecfeffff0000a0c2      MOV dword ptr [EBP + 0xfffffeec],0xc2a00000
005a14be  c785fcfeffffcdcccc3f      MOV dword ptr [EBP + 0xfffffefc],0x3fcccccd
005a14c8  c785f4feffff8fc2753d      MOV dword ptr [EBP + 0xfffffef4],0x3d75c28f
005a14d2  c785f0feffff00002041      MOV dword ptr [EBP + 0xfffffef0],0x41200000
005a14dc  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
005a14e4  f30f590568a3ba00          MULSS XMM0,dword ptr [0x00baa368]
005a14ec  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005a14f4  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a14fc  e81fc0e7ff                CALL 0x0041d520
005a1501  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
005a1509  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a1511  e82ac0e7ff                CALL 0x0041d540
005a1516  f30f108dd0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed0]
005a151e  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
005a1524  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005a152c  8bcf                      MOV ECX,EDI
005a152e  50                        PUSH EAX
005a152f  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
005a1537  8d855cfeffff              LEA EAX,[EBP + 0xfffffe5c]
005a153d  6a00                      PUSH 0x0
005a153f  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005a1547  50                        PUSH EAX
005a1548  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005a1550  56                        PUSH ESI
005a1551  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
005a1559  f30f118d60feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM1
005a1561  e87a9d1200                CALL 0x006cb2e0
005a1566  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
005a156c  83bdacfeffffff            CMP dword ptr [EBP + 0xfffffeac],-0x1
005a1573  f30f108d88feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe88]
005a157b  f30f590d50a9ba00          MULSS XMM1,dword ptr [0x00baa950]
005a1583  f30f100500aaba00          MOVSS XMM0,dword ptr [0x00baaa00]
005a158b  f30f5cc1                  SUBSS XMM0,XMM1
005a158f  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a1593  7421                      JZ 0x005a15b6
005a1595  6a04                      PUSH 0x4
005a1597  8bcf                      MOV ECX,EDI
005a1599  e8c26c1300                CALL 0x006d8260
005a159e  84c0                      TEST AL,AL
005a15a0  7418                      JZ 0x005a15ba
005a15a2  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
005a15a8  8d4101                    LEA EAX,[ECX + 0x1]
005a15ab  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a15b1  e97e000000                JMP 0x005a1634
005a15b6  3bc8                      CMP ECX,EAX
005a15b8  7e0c                      JLE 0x005a15c6
005a15ba  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
005a15c4  33c9                      XOR ECX,ECX
005a15c6  8d4101                    LEA EAX,[ECX + 0x1]
005a15c9  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a15cf  eb63                      JMP 0x005a1634
005a15d1  83f802                    CMP EAX,0x2
005a15d4  755e                      JNZ 0x005a1634
005a15d6  6a00                      PUSH 0x0
005a15d8  6830e8b100                PUSH 0xb1e830
005a15dd  8d4f48                    LEA ECX,[EDI + 0x48]
005a15e0  e89b8de6ff                CALL 0x0040a380
005a15e5  68eca4b100                PUSH 0xb1a4ec
005a15ea  8d4f48                    LEA ECX,[EDI + 0x48]
005a15ed  e85e8fe6ff                CALL 0x0040a550
005a15f2  84c0                      TEST AL,AL
005a15f4  743e                      JZ 0x005a1634
005a15f6  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005a1600  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a160a  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a1614  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a161c  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a1624  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a162c  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005a1634  81bf640b0000f4010000      CMP dword ptr [EDI + 0xb64],0x1f4
005a163e  0f857e000000              JNZ 0x005a16c2
005a1644  6a00                      PUSH 0x0
005a1646  68a426b600                PUSH 0xb626a4
005a164b  8d4f48                    LEA ECX,[EDI + 0x48]
005a164e  e82d8de6ff                CALL 0x0040a380
005a1653  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a165b  51                        PUSH ECX
005a165c  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a1663  6a00                      PUSH 0x0
005a1665  6a1e                      PUSH 0x1e
005a1667  68b1010000                PUSH 0x1b1
005a166c  e86f523b00                CALL 0x009568e0
005a1671  8d4f48                    LEA ECX,[EDI + 0x48]
005a1674  e80791e6ff                CALL 0x0040a780
005a1679  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
005a167f  83f804                    CMP EAX,0x4
005a1682  0fb6c9                    MOVZX ECX,CL
005a1685  b801000000                MOV EAX,0x1
005a168a  0f4dc8                    CMOVGE ECX,EAX
005a168d  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
005a1693  8d4f48                    LEA ECX,[EDI + 0x48]
005a1696  68eca4b100                PUSH 0xb1a4ec
005a169b  e8b08ee6ff                CALL 0x0040a550
005a16a0  84c0                      TEST AL,AL
005a16a2  741e                      JZ 0x005a16c2
005a16a4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005a16ae  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a16b8  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a16c2  80bde0feffff00            CMP byte ptr [EBP + 0xfffffee0],0x0
005a16c9  0f84b71e0000              JZ 0x005a3586
005a16cf  a17816c700                MOV EAX,[0x00c71678]
005a16d4  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
005a16dc  f30f599f74030000          MULSS XMM3,dword ptr [EDI + 0x374]
005a16e4  6aff                      PUSH -0x1
005a16e6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a16ec  8d873c030000              LEA EAX,[EDI + 0x33c]
005a16f2  50                        PUSH EAX
005a16f3  f30f591dfca6ba00          MULSS XMM3,dword ptr [0x00baa6fc]
005a16fb  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
005a1701  81c118120000              ADD ECX,0x1218
005a1707  50                        PUSH EAX
005a1708  e88390e7ff                CALL 0x0041a790
005a170d  33f6                      XOR ESI,ESI
005a170f  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
005a1713  89b5acfeffff              MOV dword ptr [EBP + 0xfffffeac],ESI
005a1719  39b550feffff              CMP dword ptr [EBP + 0xfffffe50],ESI
005a171f  0f86a6020000              JBE 0x005a19cb
005a1725  8b8548feffff              MOV EAX,dword ptr [EBP + 0xfffffe48]
005a172b  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
005a172e  85f6                      TEST ESI,ESI
005a1730  0f847c020000              JZ 0x005a19b2
005a1736  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
005a173d  0f846f020000              JZ 0x005a19b2
005a1743  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
005a1746  83f901                    CMP ECX,0x1
005a1749  7405                      JZ 0x005a1750
005a174b  83f903                    CMP ECX,0x3
005a174e  7510                      JNZ 0x005a1760
005a1750  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005a1756  2500000020                AND EAX,0x20000000
005a175b  83c800                    OR EAX,0x0
005a175e  7435                      JZ 0x005a1795
005a1760  a17816c700                MOV EAX,[0x00c71678]
005a1765  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
005a176c  7c05                      JL 0x005a1773
005a176e  83f901                    CMP ECX,0x1
005a1771  740e                      JZ 0x005a1781
005a1773  8d41f6                    LEA EAX,[ECX + -0xa]
005a1776  3ddd030000                CMP EAX,0x3dd
005a177b  0f8731020000              JA 0x005a19b2
005a1781  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005a1787  2500010000                AND EAX,0x100
005a178c  83c800                    OR EAX,0x0
005a178f  0f841d020000              JZ 0x005a19b2
005a1795  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
005a179d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005a17a5  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
005a17ad  f30f5cc8                  SUBSS XMM1,XMM0
005a17b1  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
005a17b9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a17c1  f30f5cc2                  SUBSS XMM0,XMM2
005a17c5  f30f1195c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM2
005a17cd  f30f59c9                  MULSS XMM1,XMM1
005a17d1  f30f59c0                  MULSS XMM0,XMM0
005a17d5  f30f58c1                  ADDSS XMM0,XMM1
005a17d9  e87242e9ff                CALL 0x00435a50
005a17de  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
005a17e6  f30f598f74030000          MULSS XMM1,dword ptr [EDI + 0x374]
005a17ee  f30f590db4a6ba00          MULSS XMM1,dword ptr [0x00baa6b4]
005a17f6  0f2fc8                    COMISS XMM1,XMM0
005a17f9  0f86b3010000              JBE 0x005a19b2
005a17ff  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
005a1806  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
005a180e  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005a1816  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
005a181e  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
005a1826  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005a182e  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
005a1836  f30f100544aeba00          MOVSS XMM0,dword ptr [0x00baae44]
005a183e  7408                      JZ 0x005a1848
005a1840  f30f10057ca9ba00          MOVSS XMM0,dword ptr [0x00baa97c]
005a1848  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005a1850  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a1858  e8e3bce7ff                CALL 0x0041d540
005a185d  0f28d0                    MOVAPS XMM2,XMM0
005a1860  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a1868  f30f1195e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM2
005a1870  e8abbce7ff                CALL 0x0041d520
005a1875  f30f1095e0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee0]
005a187d  0f28c8                    MOVAPS XMM1,XMM0
005a1880  f30f5985d4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffed4]
005a1888  0f28da                    MOVAPS XMM3,XMM2
005a188b  f30f598dc4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec4]
005a1893  f30f599dd4feffff          MULSS XMM3,dword ptr [EBP + 0xfffffed4]
005a189b  f30f5995c4feffff          MULSS XMM2,dword ptr [EBP + 0xfffffec4]
005a18a3  f30f5cd9                  SUBSS XMM3,XMM1
005a18a7  f30f58d0                  ADDSS XMM2,XMM0
005a18ab  0f28c3                    MOVAPS XMM0,XMM3
005a18ae  f30f119dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM3
005a18b6  f30f59c3                  MULSS XMM0,XMM3
005a18ba  0f28ca                    MOVAPS XMM1,XMM2
005a18bd  f30f1195e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM2
005a18c5  f30f59ca                  MULSS XMM1,XMM2
005a18c9  f30f58c1                  ADDSS XMM0,XMM1
005a18cd  e87e41e9ff                CALL 0x00435a50
005a18d2  f30f109dc8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffec8]
005a18da  0f28c8                    MOVAPS XMM1,XMM0
005a18dd  f30f1095e0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee0]
005a18e5  0f57ed                    XORPS XMM5,XMM5
005a18e8  0f2fcd                    COMISS XMM1,XMM5
005a18eb  7614                      JBE 0x005a1901
005a18ed  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
005a18f5  f30f5ec1                  DIVSS XMM0,XMM1
005a18f9  f30f59d8                  MULSS XMM3,XMM0
005a18fd  f30f59d0                  MULSS XMM2,XMM0
005a1901  f30f10a66c030000          MOVSS XMM4,dword ptr [ESI + 0x36c]
005a1909  0f2ee5                    UCOMISS XMM4,XMM5
005a190c  9f                        LAHF
005a190d  f6c444                    TEST AH,0x44
005a1910  7b3b                      JNP 0x005a194d
005a1912  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
005a191a  0f28c1                    MOVAPS XMM0,XMM1
005a191d  f30f59ca                  MULSS XMM1,XMM2
005a1921  f30f59c3                  MULSS XMM0,XMM3
005a1925  f30f5ecc                  DIVSS XMM1,XMM4
005a1929  f30f5ec4                  DIVSS XMM0,XMM4
005a192d  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
005a1935  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
005a193d  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
005a1945  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
005a194d  8b06                      MOV EAX,dword ptr [ESI]
005a194f  8d8db4fdffff              LEA ECX,[EBP + 0xfffffdb4]
005a1955  57                        PUSH EDI
005a1956  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
005a1959  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
005a195f  e8acf9e8ff                CALL 0x00431310
005a1964  a17816c700                MOV EAX,[0x00c71678]
005a1969  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
005a1970  7c06                      JL 0x005a1978
005a1972  837e2801                  CMP dword ptr [ESI + 0x28],0x1
005a1976  740d                      JZ 0x005a1985
005a1978  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
005a197b  83e80a                    SUB EAX,0xa
005a197e  3ddd030000                CMP EAX,0x3dd
005a1983  770a                      JA 0x005a198f
005a1985  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
005a198d  eb08                      JMP 0x005a1997
005a198f  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
005a1997  6a1e                      PUSH 0x1e
005a1999  8d85b4fdffff              LEA EAX,[EBP + 0xfffffdb4]
005a199f  50                        PUSH EAX
005a19a0  6a00                      PUSH 0x0
005a19a2  6a40                      PUSH 0x40
005a19a4  51                        PUSH ECX
005a19a5  8bce                      MOV ECX,ESI
005a19a7  f30f110424                MOVSS dword ptr [ESP],XMM0
005a19ac  ff95e4feffff              CALL dword ptr [EBP + 0xfffffee4]
005a19b2  8bb5acfeffff              MOV ESI,dword ptr [EBP + 0xfffffeac]
005a19b8  46                        INC ESI
005a19b9  89b5acfeffff              MOV dword ptr [EBP + 0xfffffeac],ESI
005a19bf  3bb550feffff              CMP ESI,dword ptr [EBP + 0xfffffe50]
005a19c5  0f825afdffff              JC 0x005a1725
005a19cb  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a19d1  83ec08                    SUB ESP,0x8
005a19d4  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
005a19dc  8d8924a30200              LEA ECX,[ECX + 0x2a324]
005a19e2  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a19e9  68b8010000                PUSH 0x1b8
005a19ee  e82dcc3800                CALL 0x0092e620
005a19f3  8d8d44feffff              LEA ECX,[EBP + 0xfffffe44]
005a19f9  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
005a19fd  e8ae5be7ff                CALL 0x004175b0
005a1a02  e97f1b0000                JMP 0x005a3586
005a1a07  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005a1a0e  751e                      JNZ 0x005a1a2e
005a1a10  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005a1a18  51                        PUSH ECX
005a1a19  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a1a20  6a00                      PUSH 0x0
005a1a22  6a2d                      PUSH 0x2d
005a1a24  68b1010000                PUSH 0x1b1
005a1a29  e8b24e3b00                CALL 0x009568e0
005a1a2e  6a00                      PUSH 0x0
005a1a30  6880d9b100                PUSH 0xb1d980
005a1a35  8d4f48                    LEA ECX,[EDI + 0x48]
005a1a38  e84389e6ff                CALL 0x0040a380
005a1a3d  6880d9b100                PUSH 0xb1d980
005a1a42  8d4f48                    LEA ECX,[EDI + 0x48]
005a1a45  e8e695e6ff                CALL 0x0040b030
005a1a4a  84c0                      TEST AL,AL
005a1a4c  7443                      JZ 0x005a1a91
005a1a4e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a1a56  8bcf                      MOV ECX,EDI
005a1a58  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
005a1a60  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005a1a68  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
005a1a70  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a1a78  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
005a1a7e  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a1a86  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
005a1a8c  e89fccffff                CALL 0x0059e730
005a1a91  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a1a95  740d                      JZ 0x005a1aa4
005a1a97  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a1a9e  0f854befffff              JNZ 0x005a09ef
005a1aa4  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a1aaa  3dbc020000                CMP EAX,0x2bc
005a1aaf  7448                      JZ 0x005a1af9
005a1ab1  3dc6020000                CMP EAX,0x2c6
005a1ab6  0f8533efffff              JNZ 0x005a09ef
005a1abc  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
005a1ac3  7d34                      JGE 0x005a1af9
005a1ac5  6a01                      PUSH 0x1
005a1ac7  6880d9b100                PUSH 0xb1d980
005a1acc  8d4f48                    LEA ECX,[EDI + 0x48]
005a1acf  e8ac88e6ff                CALL 0x0040a380
005a1ad4  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
005a1adb  0f94c0                    SETZ AL
005a1ade  888748010000              MOV byte ptr [EDI + 0x148],AL
005a1ae4  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a1aee  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
005a1af4  e9f6eeffff                JMP 0x005a09ef
005a1af9  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a1b03  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a1b0d  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a1b17  e9d3eeffff                JMP 0x005a09ef
005a1b1c  80bdcefeffff00            CMP byte ptr [EBP + 0xfffffece],0x0
005a1b23  750d                      JNZ 0x005a1b32
005a1b25  80bd80feffff00            CMP byte ptr [EBP + 0xfffffe80],0x0
005a1b2c  0f84c4000000              JZ 0x005a1bf6
005a1b32  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a1b38  6a05                      PUSH 0x5
005a1b3a  e8311b1600                CALL 0x00703670
005a1b3f  e81cd41400                CALL 0x006eef60
005a1b44  660f6ec0                  MOVD XMM0,EAX
005a1b48  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a1b4c  c1e81f                    SHR EAX,0x1f
005a1b4f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a1b58  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
005a1b5e  660f5ac0                  CVTPD2PS XMM0,XMM0
005a1b62  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a1b6a  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005a1b72  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
005a1b7a  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a1b82  83f812                    CMP EAX,0x12
005a1b85  750a                      JNZ 0x005a1b91
005a1b87  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005a1b8f  eb0d                      JMP 0x005a1b9e
005a1b91  83f813                    CMP EAX,0x13
005a1b94  7510                      JNZ 0x005a1ba6
005a1b96  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005a1b9e  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a1ba6  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a1bac  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
005a1bb2  c785a4feffff30000000      MOV dword ptr [EBP + 0xfffffea4],0x30
005a1bbc  e8bf4b3b00                CALL 0x00956780
005a1bc1  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a1bc9  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a1bcf  83ec08                    SUB ESP,0x8
005a1bd2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a1bda  f30f110424                MOVSS dword ptr [ESP],XMM0
005a1bdf  6a00                      PUSH 0x0
005a1be1  6a02                      PUSH 0x2
005a1be3  51                        PUSH ECX
005a1be4  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a1beb  ffb5a4feffff              PUSH dword ptr [EBP + 0xfffffea4]
005a1bf1  e83ac03800                CALL 0x0092dc30
005a1bf6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a1bfa  c685c0feffff00            MOV byte ptr [EBP + 0xfffffec0],0x0
005a1c01  7459                      JZ 0x005a1c5c
005a1c03  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
005a1c0b  83ec08                    SUB ESP,0x8
005a1c0e  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a1c16  d985e4feffff              FLD dword ptr [EBP + 0xfffffee4]
005a1c1c  dd1c24                    FSTP qword ptr [ESP]
005a1c1f  e8f3ec5400                CALL 0x00af0917
005a1c24  d99de4feffff              FSTP dword ptr [EBP + 0xfffffee4]
005a1c2a  f30f2c8de4feffff          CVTTSS2SI ECX,dword ptr [EBP + 0xfffffee4]
005a1c32  83c408                    ADD ESP,0x8
005a1c35  85c9                      TEST ECX,ECX
005a1c37  0f88ce000000              JS 0x005a1d0b
005a1c3d  83f904                    CMP ECX,0x4
005a1c40  0f8fc5000000              JG 0x005a1d0b
005a1c46  b001                      MOV AL,0x1
005a1c48  ba01000000                MOV EDX,0x1
005a1c4d  83f91c                    CMP ECX,0x1c
005a1c50  0fb6c0                    MOVZX EAX,AL
005a1c53  0f4dc2                    CMOVGE EAX,EDX
005a1c56  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
005a1c5c  f30f108d90feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe90]
005a1c64  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
005a1c6c  f30f59c0                  MULSS XMM0,XMM0
005a1c70  f30f59c9                  MULSS XMM1,XMM1
005a1c74  f30f58c1                  ADDSS XMM0,XMM1
005a1c78  e8d33de9ff                CALL 0x00435a50
005a1c7d  83bdacfeffffff            CMP dword ptr [EBP + 0xfffffeac],-0x1
005a1c84  0f28c8                    MOVAPS XMM1,XMM0
005a1c87  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
005a1c8f  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
005a1c97  f30f59c8                  MULSS XMM1,XMM0
005a1c9b  7503                      JNZ 0x005a1ca0
005a1c9d  0f28c8                    MOVAPS XMM1,XMM0
005a1ca0  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005a1ca6  81fe36010000              CMP ESI,0x136
005a1cac  7503                      JNZ 0x005a1cb1
005a1cae  0f28c8                    MOVAPS XMM1,XMM0
005a1cb1  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005a1cb5  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
005a1cbd  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
005a1cc5  0f28c4                    MOVAPS XMM0,XMM4
005a1cc8  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a1cd0  750b                      JNZ 0x005a1cdd
005a1cd2  0f28c2                    MOVAPS XMM0,XMM2
005a1cd5  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a1cdd  80bdc0feffff00            CMP byte ptr [EBP + 0xfffffec0],0x0
005a1ce4  0f28d8                    MOVAPS XMM3,XMM0
005a1ce7  f30f591d5ca7ba00          MULSS XMM3,dword ptr [0x00baa75c]
005a1cef  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a1cf7  f30f119dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM3
005a1cff  7428                      JZ 0x005a1d29
005a1d01  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005a1d09  eb36                      JMP 0x005a1d41
005a1d0b  32c0                      XOR AL,AL
005a1d0d  83f90e                    CMP ECX,0xe
005a1d10  0f8c32ffffff              JL 0x005a1c48
005a1d16  83f912                    CMP ECX,0x12
005a1d19  0fb6c0                    MOVZX EAX,AL
005a1d1c  ba01000000                MOV EDX,0x1
005a1d21  0f4ec2                    CMOVLE EAX,EDX
005a1d24  e924ffffff                JMP 0x005a1c4d
005a1d29  f30f591d54a3ba00          MULSS XMM3,dword ptr [0x00baa354]
005a1d31  f30f59ca                  MULSS XMM1,XMM2
005a1d35  f30f119dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM3
005a1d3d  f30f59c2                  MULSS XMM0,XMM2
005a1d41  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a1d49  f30f108588feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe88]
005a1d51  f30f590558a3ba00          MULSS XMM0,dword ptr [0x00baa358]
005a1d59  f30f58c4                  ADDSS XMM0,XMM4
005a1d5d  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005a1d65  81fe36010000              CMP ESI,0x136
005a1d6b  7508                      JNZ 0x005a1d75
005a1d6d  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
005a1d75  f30f59c1                  MULSS XMM0,XMM1
005a1d79  8d973c030000              LEA EDX,[EDI + 0x33c]
005a1d7f  32c9                      XOR CL,CL
005a1d81  899578feffff              MOV dword ptr [EBP + 0xfffffe78],EDX
005a1d87  f30f100db4acba00          MOVSS XMM1,dword ptr [0x00baacb4]
005a1d8f  888dcffeffff              MOV byte ptr [EBP + 0xfffffecf],CL
005a1d95  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
005a1d9d  f30f1002                  MOVSS XMM0,dword ptr [EDX]
005a1da1  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
005a1da9  f30f104204                MOVSS XMM0,dword ptr [EDX + 0x4]
005a1dae  f30f118568feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM0
005a1db6  f30f118d60feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM1
005a1dbe  83fe04                    CMP ESI,0x4
005a1dc1  0f85c6020000              JNZ 0x005a208d
005a1dc7  33c0                      XOR EAX,EAX
005a1dc9  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
005a1dcf  90                        NOP
005a1dd0  3b8528feffff              CMP EAX,dword ptr [EBP + 0xfffffe28]
005a1dd6  0f832c010000              JNC 0x005a1f08
005a1ddc  8bb520feffff              MOV ESI,dword ptr [EBP + 0xfffffe20]
005a1de2  f30f1002                  MOVSS XMM0,dword ptr [EDX]
005a1de6  f30f104a04                MOVSS XMM1,dword ptr [EDX + 0x4]
005a1deb  6a00                      PUSH 0x0
005a1ded  8b0486                    MOV EAX,dword ptr [ESI + EAX*0x4]
005a1df0  68d4d7c500                PUSH 0xc5d7d4
005a1df5  68dcd5c500                PUSH 0xc5d5dc
005a1dfa  6a00                      PUSH 0x0
005a1dfc  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
005a1e04  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
005a1e0c  50                        PUSH EAX
005a1e0d  f30f59c9                  MULSS XMM1,XMM1
005a1e11  f30f59c0                  MULSS XMM0,XMM0
005a1e15  f30f58c8                  ADDSS XMM1,XMM0
005a1e19  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
005a1e21  e88bea5400                CALL 0x00af08b1
005a1e26  83c414                    ADD ESP,0x14
005a1e29  85c0                      TEST EAX,EAX
005a1e2b  7431                      JZ 0x005a1e5e
005a1e2d  83782c14                  CMP dword ptr [EAX + 0x2c],0x14
005a1e31  7514                      JNZ 0x005a1e47
005a1e33  8b5030                    MOV EDX,dword ptr [EAX + 0x30]
005a1e36  8d4aff                    LEA ECX,[EDX + -0x1]
005a1e39  83f906                    CMP ECX,0x6
005a1e3c  7709                      JA 0x005a1e47
005a1e3e  8b0c95347eb600            MOV ECX,dword ptr [EDX*0x4 + 0xb67e34]
005a1e45  eb02                      JMP 0x005a1e49
005a1e47  33c9                      XOR ECX,ECX
005a1e49  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
005a1e51  660f6ec1                  MOVD XMM0,ECX
005a1e55  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a1e58  f30f5ec8                  DIVSS XMM1,XMM0
005a1e5c  eb08                      JMP 0x005a1e66
005a1e5e  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
005a1e66  f30f109560feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe60]
005a1e6e  0f2fd1                    COMISS XMM2,XMM1
005a1e71  766d                      JBE 0x005a1ee0
005a1e73  83b88801000000            CMP dword ptr [EAX + 0x188],0x0
005a1e7a  7464                      JZ 0x005a1ee0
005a1e7c  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
005a1e83  755b                      JNZ 0x005a1ee0
005a1e85  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
005a1e8b  b101                      MOV CL,0x1
005a1e8d  f30f118d60feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM1
005a1e95  888dcffeffff              MOV byte ptr [EBP + 0xfffffecf],CL
005a1e9b  8b0486                    MOV EAX,dword ptr [ESI + EAX*0x4]
005a1e9e  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005a1ea6  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005a1eae  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
005a1eb6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a1ebe  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a1ec6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a1ece  f30f118d68feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM1
005a1ed6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005a1ede  eb06                      JMP 0x005a1ee6
005a1ee0  8a8dcffeffff              MOV CL,byte ptr [EBP + 0xfffffecf]
005a1ee6  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
005a1eec  8d973c030000              LEA EDX,[EDI + 0x33c]
005a1ef2  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005a1ef8  40                        INC EAX
005a1ef9  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
005a1eff  83fe04                    CMP ESI,0x4
005a1f02  0f84c8feffff              JZ 0x005a1dd0
005a1f08  84c9                      TEST CL,CL
005a1f0a  0f857d010000              JNZ 0x005a208d
005a1f10  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005a1f18  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005a1f1f  9f                        LAHF
005a1f20  f6c444                    TEST AH,0x44
005a1f23  0f8a3e010000              JP 0x005a2067
005a1f29  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005a1f31  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005a1f38  9f                        LAHF
005a1f39  f6c444                    TEST AH,0x44
005a1f3c  0f8a25010000              JP 0x005a2067
005a1f42  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
005a1f4a  f30f598774030000          MULSS XMM0,dword ptr [EDI + 0x374]
005a1f52  a17816c700                MOV EAX,[0x00c71678]
005a1f57  51                        PUSH ECX
005a1f58  8d8d54feffff              LEA ECX,[EBP + 0xfffffe54]
005a1f5e  f30f110424                MOVSS dword ptr [ESP],XMM0
005a1f63  51                        PUSH ECX
005a1f64  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a1f6a  e861ca2700                CALL 0x0081e9d0
005a1f6f  33f6                      XOR ESI,ESI
005a1f71  8b08                      MOV ECX,dword ptr [EAX]
005a1f73  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005a1f79  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005a1f7c  898738030000              MOV dword ptr [EDI + 0x338],EAX
005a1f82  0f1f4000                  NOP dword ptr [EAX]
005a1f86  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
005a1f90  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
005a1f98  f30f598774030000          MULSS XMM0,dword ptr [EDI + 0x374]
005a1fa0  a17816c700                MOV EAX,[0x00c71678]
005a1fa5  51                        PUSH ECX
005a1fa6  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
005a1fac  f30f110424                MOVSS dword ptr [ESP],XMM0
005a1fb1  51                        PUSH ECX
005a1fb2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a1fb8  e813ca2700                CALL 0x0081e9d0
005a1fbd  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
005a1fc5  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a1fcd  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005a1fd5  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005a1fdd  f30f59c0                  MULSS XMM0,XMM0
005a1fe1  f30f59c9                  MULSS XMM1,XMM1
005a1fe5  f30f58c1                  ADDSS XMM0,XMM1
005a1fe9  e8623ae9ff                CALL 0x00435a50
005a1fee  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005a1ff6  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005a1ffe  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
005a2006  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005a200e  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005a2016  f30f59c9                  MULSS XMM1,XMM1
005a201a  f30f59c0                  MULSS XMM0,XMM0
005a201e  f30f58c1                  ADDSS XMM0,XMM1
005a2022  e8293ae9ff                CALL 0x00435a50
005a2027  f30f108d60feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe60]
005a202f  0f2fc8                    COMISS XMM1,XMM0
005a2032  7629                      JBE 0x005a205d
005a2034  0f2f0d78aaba00            COMISS XMM1,dword ptr [0x00baaa78]
005a203b  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
005a2043  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a204b  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a2053  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005a205b  770a                      JA 0x005a2067
005a205d  46                        INC ESI
005a205e  83fe14                    CMP ESI,0x14
005a2061  0f8c29ffffff              JL 0x005a1f90
005a2067  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005a206f  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005a2075  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
005a207d  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005a2085  f30f118568feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM0
005a208d  83bdacfeffffff            CMP dword ptr [EBP + 0xfffffeac],-0x1
005a2094  0f57ed                    XORPS XMM5,XMM5
005a2097  f30f11adc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM5
005a209f  f30f11ada4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM5
005a20a7  0f8595010000              JNZ 0x005a2242
005a20ad  f30f108d64feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe64]
005a20b5  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005a20bd  f30f108568feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe68]
005a20c5  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005a20cd  f30f5e8f74030000          DIVSS XMM1,dword ptr [EDI + 0x374]
005a20d5  f30f5e8778030000          DIVSS XMM0,dword ptr [EDI + 0x378]
005a20dd  f30f59c9                  MULSS XMM1,XMM1
005a20e1  f30f59c0                  MULSS XMM0,XMM0
005a20e5  f30f58c1                  ADDSS XMM0,XMM1
005a20e9  e86239e9ff                CALL 0x00435a50
005a20ee  0f2f8770030000            COMISS XMM0,dword ptr [EDI + 0x370]
005a20f5  0f8604010000              JBE 0x005a21ff
005a20fb  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005a2103  8d8f14040000              LEA ECX,[EDI + 0x414]
005a2109  6a01                      PUSH 0x1
005a210b  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
005a2113  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
005a2119  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
005a2121  6884030000                PUSH 0x384
005a2126  51                        PUSH ECX
005a2127  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
005a212f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a2137  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a213e  50                        PUSH EAX
005a213f  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
005a2147  e874122400                CALL 0x007e33c0
005a214c  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
005a2154  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
005a215c  f30f108dd4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed4]
005a2164  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
005a216c  f30f5cd1                  SUBSS XMM2,XMM1
005a2170  f30f5cd8                  SUBSS XMM3,XMM0
005a2174  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a217c  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
005a2184  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005a218c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a2194  0f28c2                    MOVAPS XMM0,XMM2
005a2197  f30f1195c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM2
005a219f  0f28cb                    MOVAPS XMM1,XMM3
005a21a2  f30f59c2                  MULSS XMM0,XMM2
005a21a6  f30f59cb                  MULSS XMM1,XMM3
005a21aa  f30f119da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM3
005a21b2  f30f58c1                  ADDSS XMM0,XMM1
005a21b6  e89538e9ff                CALL 0x00435a50
005a21bb  0f57ed                    XORPS XMM5,XMM5
005a21be  0f2fc5                    COMISS XMM0,XMM5
005a21c1  7677                      JBE 0x005a223a
005a21c3  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005a21cb  f30f5ec8                  DIVSS XMM1,XMM0
005a21cf  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005a21d5  f30f1085a4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea4]
005a21dd  f30f59c1                  MULSS XMM0,XMM1
005a21e1  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
005a21e9  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a21f1  f30f59c1                  MULSS XMM0,XMM1
005a21f5  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a21fd  eb63                      JMP 0x005a2262
005a21ff  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
005a2206  0f57ed                    XORPS XMM5,XMM5
005a2209  752f                      JNZ 0x005a223a
005a220b  83fe04                    CMP ESI,0x4
005a220e  752a                      JNZ 0x005a223a
005a2210  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a2218  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a2220  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a2228  c78598feffff03000000      MOV dword ptr [EBP + 0xfffffe98],0x3
005a2232  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005a223a  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005a2240  eb20                      JMP 0x005a2262
005a2242  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
005a224a  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
005a2252  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
005a225a  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a2262  81fe36010000              CMP ESI,0x136
005a2268  7573                      JNZ 0x005a22dd
005a226a  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005a2272  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
005a227a  0f28c1                    MOVAPS XMM0,XMM1
005a227d  f30f59c1                  MULSS XMM0,XMM1
005a2281  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
005a2289  0f28ca                    MOVAPS XMM1,XMM2
005a228c  f30f59ca                  MULSS XMM1,XMM2
005a2290  f30f1195c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM2
005a2298  f30f58c1                  ADDSS XMM0,XMM1
005a229c  e8af37e9ff                CALL 0x00435a50
005a22a1  0f57ed                    XORPS XMM5,XMM5
005a22a4  0f2fc5                    COMISS XMM0,XMM5
005a22a7  7634                      JBE 0x005a22dd
005a22a9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005a22b1  f30f5ec8                  DIVSS XMM1,XMM0
005a22b5  f30f1085a4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea4]
005a22bd  f30f59c1                  MULSS XMM0,XMM1
005a22c1  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
005a22c9  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a22d1  f30f59c1                  MULSS XMM0,XMM1
005a22d5  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a22dd  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
005a22e5  f30f10a5d0feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffed0]
005a22ed  0f2edd                    UCOMISS XMM3,XMM5
005a22f0  0f28d4                    MOVAPS XMM2,XMM4
005a22f3  f30f59a5c0feffff          MULSS XMM4,dword ptr [EBP + 0xfffffec0]
005a22fb  f30f5995a4feffff          MULSS XMM2,dword ptr [EBP + 0xfffffea4]
005a2303  9f                        LAHF
005a2304  f6c444                    TEST AH,0x44
005a2307  7b3b                      JNP 0x005a2344
005a2309  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005a2311  0f28c1                    MOVAPS XMM0,XMM1
005a2314  f30f59cc                  MULSS XMM1,XMM4
005a2318  f30f59c2                  MULSS XMM0,XMM2
005a231c  f30f5ecb                  DIVSS XMM1,XMM3
005a2320  f30f5ec3                  DIVSS XMM0,XMM3
005a2324  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005a232c  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005a2334  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005a233c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a2344  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
005a234c  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
005a2354  0f28c1                    MOVAPS XMM0,XMM1
005a2357  f30f59c1                  MULSS XMM0,XMM1
005a235b  0f28ca                    MOVAPS XMM1,XMM2
005a235e  f30f59ca                  MULSS XMM1,XMM2
005a2362  f30f1195d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM2
005a236a  f30f58c1                  ADDSS XMM0,XMM1
005a236e  e8dd36e9ff                CALL 0x00435a50
005a2373  f30f108d9cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe9c]
005a237b  0f57e4                    XORPS XMM4,XMM4
005a237e  0f2fc1                    COMISS XMM0,XMM1
005a2381  7630                      JBE 0x005a23b3
005a2383  0f2fc4                    COMISS XMM0,XMM4
005a2386  762b                      JBE 0x005a23b3
005a2388  f30f5ec8                  DIVSS XMM1,XMM0
005a238c  0f28c1                    MOVAPS XMM0,XMM1
005a238f  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
005a2397  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a239f  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
005a23a7  f30f59c1                  MULSS XMM0,XMM1
005a23ab  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005a23b3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a23b7  f30f11a5d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM4
005a23bf  0f84d4000000              JZ 0x005a2499
005a23c5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a23cc  0f84c7000000              JZ 0x005a2499
005a23d2  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a23d5  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a23d9  7202                      JC 0x005a23dd
005a23db  8b00                      MOV EAX,dword ptr [EAX]
005a23dd  b96026b600                MOV ECX,0xb62660
005a23e2  8a10                      MOV DL,byte ptr [EAX]
005a23e4  3a11                      CMP DL,byte ptr [ECX]
005a23e6  751a                      JNZ 0x005a2402
005a23e8  84d2                      TEST DL,DL
005a23ea  7412                      JZ 0x005a23fe
005a23ec  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a23ef  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a23f2  750e                      JNZ 0x005a2402
005a23f4  83c002                    ADD EAX,0x2
005a23f7  83c102                    ADD ECX,0x2
005a23fa  84d2                      TEST DL,DL
005a23fc  75e4                      JNZ 0x005a23e2
005a23fe  33c0                      XOR EAX,EAX
005a2400  eb05                      JMP 0x005a2407
005a2402  1bc0                      SBB EAX,EAX
005a2404  83c801                    OR EAX,0x1
005a2407  85c0                      TEST EAX,EAX
005a2409  747e                      JZ 0x005a2489
005a240b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a240e  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a2412  7202                      JC 0x005a2416
005a2414  8b00                      MOV EAX,dword ptr [EAX]
005a2416  b95426b600                MOV ECX,0xb62654
005a241b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005a2420  8a10                      MOV DL,byte ptr [EAX]
005a2422  3a11                      CMP DL,byte ptr [ECX]
005a2424  751a                      JNZ 0x005a2440
005a2426  84d2                      TEST DL,DL
005a2428  7412                      JZ 0x005a243c
005a242a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a242d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a2430  750e                      JNZ 0x005a2440
005a2432  83c002                    ADD EAX,0x2
005a2435  83c102                    ADD ECX,0x2
005a2438  84d2                      TEST DL,DL
005a243a  75e4                      JNZ 0x005a2420
005a243c  33c0                      XOR EAX,EAX
005a243e  eb05                      JMP 0x005a2445
005a2440  1bc0                      SBB EAX,EAX
005a2442  83c801                    OR EAX,0x1
005a2445  85c0                      TEST EAX,EAX
005a2447  7440                      JZ 0x005a2489
005a2449  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a244c  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a2450  7202                      JC 0x005a2454
005a2452  8b00                      MOV EAX,dword ptr [EAX]
005a2454  b94826b600                MOV ECX,0xb62648
005a2459  0f1f8000000000            NOP dword ptr [EAX]
005a2460  8a10                      MOV DL,byte ptr [EAX]
005a2462  3a11                      CMP DL,byte ptr [ECX]
005a2464  751a                      JNZ 0x005a2480
005a2466  84d2                      TEST DL,DL
005a2468  7412                      JZ 0x005a247c
005a246a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a246d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a2470  750e                      JNZ 0x005a2480
005a2472  83c002                    ADD EAX,0x2
005a2475  83c102                    ADD ECX,0x2
005a2478  84d2                      TEST DL,DL
005a247a  75e4                      JNZ 0x005a2460
005a247c  33c0                      XOR EAX,EAX
005a247e  eb05                      JMP 0x005a2485
005a2480  1bc0                      SBB EAX,EAX
005a2482  83c801                    OR EAX,0x1
005a2485  85c0                      TEST EAX,EAX
005a2487  7510                      JNZ 0x005a2499
005a2489  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
005a2491  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
005a2499  f30f109da4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffea4]
005a24a1  33c0                      XOR EAX,EAX
005a24a3  f30f1095c0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec0]
005a24ab  0f28cb                    MOVAPS XMM1,XMM3
005a24ae  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005a24b5  0f28c2                    MOVAPS XMM0,XMM2
005a24b8  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
005a24bf  0f2fc8                    COMISS XMM1,XMM0
005a24c2  7613                      JBE 0x005a24d7
005a24c4  0f2fe3                    COMISS XMM4,XMM3
005a24c7  be02000000                MOV ESI,0x2
005a24cc  0f47f0                    CMOVA ESI,EAX
005a24cf  89b590feffff              MOV dword ptr [EBP + 0xfffffe90],ESI
005a24d5  eb15                      JMP 0x005a24ec
005a24d7  0f2fe2                    COMISS XMM4,XMM2
005a24da  0f96c0                    SETBE AL
005a24dd  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
005a24e4  898590feffff              MOV dword ptr [EBP + 0xfffffe90],EAX
005a24ea  8bf0                      MOV ESI,EAX
005a24ec  0f28c3                    MOVAPS XMM0,XMM3
005a24ef  f30f59d2                  MULSS XMM2,XMM2
005a24f3  f30f59c3                  MULSS XMM0,XMM3
005a24f7  f30f58c2                  ADDSS XMM0,XMM2
005a24fb  e85035e9ff                CALL 0x00435a50
005a2500  0f57c9                    XORPS XMM1,XMM1
005a2503  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
005a250b  0f2ec1                    UCOMISS XMM0,XMM1
005a250e  9f                        LAHF
005a250f  f6c444                    TEST AH,0x44
005a2512  7a09                      JP 0x005a251d
005a2514  83ceff                    OR ESI,0xffffffff
005a2517  89b590feffff              MOV dword ptr [EBP + 0xfffffe90],ESI
005a251d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a2521  8d4f48                    LEA ECX,[EDI + 0x48]
005a2524  7455                      JZ 0x005a257b
005a2526  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a252d  744c                      JZ 0x005a257b
005a252f  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a2532  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a2536  7202                      JC 0x005a253a
005a2538  8b00                      MOV EAX,dword ptr [EAX]
005a253a  b93c26b600                MOV ECX,0xb6263c
005a253f  90                        NOP
005a2540  8a10                      MOV DL,byte ptr [EAX]
005a2542  3a11                      CMP DL,byte ptr [ECX]
005a2544  751a                      JNZ 0x005a2560
005a2546  84d2                      TEST DL,DL
005a2548  7412                      JZ 0x005a255c
005a254a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a254d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a2550  750e                      JNZ 0x005a2560
005a2552  83c002                    ADD EAX,0x2
005a2555  83c102                    ADD ECX,0x2
005a2558  84d2                      TEST DL,DL
005a255a  75e4                      JNZ 0x005a2540
005a255c  33c0                      XOR EAX,EAX
005a255e  eb05                      JMP 0x005a2565
005a2560  1bc0                      SBB EAX,EAX
005a2562  83c801                    OR EAX,0x1
005a2565  85c0                      TEST EAX,EAX
005a2567  750f                      JNZ 0x005a2578
005a2569  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
005a2573  e94a010000                JMP 0x005a26c2
005a2578  8d4f48                    LEA ECX,[EDI + 0x48]
005a257b  8d4601                    LEA EAX,[ESI + 0x1]
005a257e  83f804                    CMP EAX,0x4
005a2581  7766                      JA 0x005a25e9
005a2583  ff248508485a00            JMP dword ptr [EAX*0x4 + 0x5a4808]
005a258a  6a00                      PUSH 0x0
005a258c  686026b600                PUSH 0xb62660
005a2591  e8ea7de6ff                CALL 0x0040a380
005a2596  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a259a  0f84d5000000              JZ 0x005a2675
005a25a0  f30f108dd4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed4]
005a25a8  8d4f78                    LEA ECX,[EDI + 0x78]
005a25ab  e85068e6ff                CALL 0x00408e00
005a25b0  e9c0000000                JMP 0x005a2675
005a25b5  6a00                      PUSH 0x0
005a25b7  685426b600                PUSH 0xb62654
005a25bc  e8bf7de6ff                CALL 0x0040a380
005a25c1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a25c5  0f84cb000000              JZ 0x005a2696
005a25cb  f30f108dd4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed4]
005a25d3  8d4f78                    LEA ECX,[EDI + 0x78]
005a25d6  e82568e6ff                CALL 0x00408e00
005a25db  e9b6000000                JMP 0x005a2696
005a25e0  6a00                      PUSH 0x0
005a25e2  684826b600                PUSH 0xb62648
005a25e7  ebd3                      JMP 0x005a25bc
005a25e9  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
005a25f3  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
005a25f6  85c9                      TEST ECX,ECX
005a25f8  7453                      JZ 0x005a264d
005a25fa  83791410                  CMP dword ptr [ECX + 0x14],0x10
005a25fe  8bc1                      MOV EAX,ECX
005a2600  7202                      JC 0x005a2604
005a2602  8b01                      MOV EAX,dword ptr [ECX]
005a2604  b954bcb100                MOV ECX,0xb1bc54
005a2609  0f1f8000000000            NOP dword ptr [EAX]
005a2610  8a10                      MOV DL,byte ptr [EAX]
005a2612  3a11                      CMP DL,byte ptr [ECX]
005a2614  751a                      JNZ 0x005a2630
005a2616  84d2                      TEST DL,DL
005a2618  7412                      JZ 0x005a262c
005a261a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a261d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a2620  750e                      JNZ 0x005a2630
005a2622  83c002                    ADD EAX,0x2
005a2625  83c102                    ADD ECX,0x2
005a2628  84d2                      TEST DL,DL
005a262a  75e4                      JNZ 0x005a2610
005a262c  33c0                      XOR EAX,EAX
005a262e  eb05                      JMP 0x005a2635
005a2630  1bc0                      SBB EAX,EAX
005a2632  83c801                    OR EAX,0x1
005a2635  8d4f48                    LEA ECX,[EDI + 0x48]
005a2638  85c0                      TEST EAX,EAX
005a263a  7514                      JNZ 0x005a2650
005a263c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
005a263f  80783400                  CMP byte ptr [EAX + 0x34],0x0
005a2643  7433                      JZ 0x005a2678
005a2645  80794400                  CMP byte ptr [ECX + 0x44],0x0
005a2649  752d                      JNZ 0x005a2678
005a264b  eb03                      JMP 0x005a2650
005a264d  8d4f48                    LEA ECX,[EDI + 0x48]
005a2650  6a01                      PUSH 0x1
005a2652  6854bcb100                PUSH 0xb1bc54
005a2657  e8747fe6ff                CALL 0x0040a5d0
005a265c  84c0                      TEST AL,AL
005a265e  7415                      JZ 0x005a2675
005a2660  8d4f78                    LEA ECX,[EDI + 0x78]
005a2663  e8487be6ff                CALL 0x0040a1b0
005a2668  8bb590feffff              MOV ESI,dword ptr [EBP + 0xfffffe90]
005a266e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005a2675  0f57c9                    XORPS XMM1,XMM1
005a2678  85f6                      TEST ESI,ESI
005a267a  7405                      JZ 0x005a2681
005a267c  83fe02                    CMP ESI,0x2
005a267f  7510                      JNZ 0x005a2691
005a2681  0f2f8da4feffff            COMISS XMM1,dword ptr [EBP + 0xfffffea4]
005a2688  0f97c0                    SETA AL
005a268b  888748010000              MOV byte ptr [EDI + 0x148],AL
005a2691  83feff                    CMP ESI,-0x1
005a2694  742c                      JZ 0x005a26c2
005a2696  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
005a269e  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
005a26a6  f30f10859cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe9c]
005a26ae  f30f598de4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee4]
005a26b6  f30f59c1                  MULSS XMM0,XMM1
005a26ba  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
005a26c2  83bdacfeffffff            CMP dword ptr [EBP + 0xfffffeac],-0x1
005a26c9  0f57c9                    XORPS XMM1,XMM1
005a26cc  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a26d2  0f57c0                    XORPS XMM0,XMM0
005a26d5  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a26dd  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
005a26e5  0f857a0b0000              JNZ 0x005a3265
005a26eb  83f804                    CMP EAX,0x4
005a26ee  7409                      JZ 0x005a26f9
005a26f0  83f803                    CMP EAX,0x3
005a26f3  0f857e0b0000              JNZ 0x005a3277
005a26f9  6a00                      PUSH 0x0
005a26fb  6a0f                      PUSH 0xf
005a26fd  8bcf                      MOV ECX,EDI
005a26ff  e80ca01000                CALL 0x006ac710
005a2704  84c0                      TEST AL,AL
005a2706  0f84320b0000              JZ 0x005a323e
005a270c  33f6                      XOR ESI,ESI
005a270e  89b5b0feffff              MOV dword ptr [EBP + 0xfffffeb0],ESI
005a2714  89b5b4feffff              MOV dword ptr [EBP + 0xfffffeb4],ESI
005a271a  89b5b8feffff              MOV dword ptr [EBP + 0xfffffeb8],ESI
005a2720  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
005a2724  39772c                    CMP dword ptr [EDI + 0x2c],ESI
005a2727  0f8539040000              JNZ 0x005a2b66
005a272d  f30f108588feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe88]
005a2735  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
005a273d  83bdf8fdffff03            CMP dword ptr [EBP + 0xfffffdf8],0x3
005a2744  1bc0                      SBB EAX,EAX
005a2746  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
005a274e  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
005a2756  f30f2cc8                  CVTTSS2SI ECX,XMM0
005a275a  23c1                      AND EAX,ECX
005a275c  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
005a2762  83bdc4feffff02            CMP dword ptr [EBP + 0xfffffec4],0x2
005a2769  8d481e                    LEA ECX,[EAX + 0x1e]
005a276c  0f4dc8                    CMOVGE ECX,EAX
005a276f  85c9                      TEST ECX,ECX
005a2771  7e23                      JLE 0x005a2796
005a2773  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a2779  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
005a277f  50                        PUSH EAX
005a2780  56                        PUSH ESI
005a2781  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2787  c785d8feffff64000000      MOV dword ptr [EBP + 0xfffffed8],0x64
005a2791  e82aeaefff                CALL 0x004a11c0
005a2796  a17816c700                MOV EAX,[0x00c71678]
005a279b  51                        PUSH ECX
005a279c  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
005a27a2  c7042400000000            MOV dword ptr [ESP],0x0
005a27a9  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
005a27af  8d8554feffff              LEA EAX,[EBP + 0xfffffe54]
005a27b5  50                        PUSH EAX
005a27b6  e885c41100                CALL 0x006bec40
005a27bb  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
005a27c1  8bf0                      MOV ESI,EAX
005a27c3  e878c01100                CALL 0x006be840
005a27c8  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
005a27d0  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005a27d8  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
005a27e0  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
005a27e8  e873c71400                CALL 0x006eef60
005a27ed  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
005a27f5  83ec0c                    SUB ESP,0xc
005a27f8  8bcf                      MOV ECX,EDI
005a27fa  660f6ec0                  MOVD XMM0,EAX
005a27fe  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a2802  c1e81f                    SHR EAX,0x1f
005a2805  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a280e  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
005a2816  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a281c  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
005a2824  c704240000a041            MOV dword ptr [ESP],0x41a00000
005a282b  50                        PUSH EAX
005a282c  660f5ad0                  CVTPD2PS XMM2,XMM0
005a2830  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
005a2836  50                        PUSH EAX
005a2837  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
005a283f  0f28ca                    MOVAPS XMM1,XMM2
005a2842  f30f59959cfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffe9c]
005a284a  f30f598da8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffea8]
005a2852  f30f59155ca8ba00          MULSS XMM2,dword ptr [0x00baa85c]
005a285a  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
005a2862  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
005a2867  f30f580e                  ADDSS XMM1,dword ptr [ESI]
005a286b  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
005a2873  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a287b  e8d0062700                CALL 0x00812f50
005a2880  8b8578feffff              MOV EAX,dword ptr [EBP + 0xfffffe78]
005a2886  8bbde0feffff              MOV EDI,dword ptr [EBP + 0xfffffee0]
005a288c  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
005a2894  f30f109570feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe70]
005a289c  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
005a28a0  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
005a28a8  f30f5c5004                SUBSS XMM2,dword ptr [EAX + 0x4]
005a28ad  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
005a28b5  0f28c3                    MOVAPS XMM0,XMM3
005a28b8  f30f598774030000          MULSS XMM0,dword ptr [EDI + 0x374]
005a28c0  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a28c8  0f54cc                    ANDPS XMM1,XMM4
005a28cb  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
005a28d3  0f2fc1                    COMISS XMM0,XMM1
005a28d6  771c                      JA 0x005a28f4
005a28d8  f30f599f78030000          MULSS XMM3,dword ptr [EDI + 0x378]
005a28e0  0f54d4                    ANDPS XMM2,XMM4
005a28e3  0f2fda                    COMISS XMM3,XMM2
005a28e6  770c                      JA 0x005a28f4
005a28e8  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
005a28f2  eb2a                      JMP 0x005a291e
005a28f4  8d95d8feffff              LEA EDX,[EBP + 0xfffffed8]
005a28fa  8d8d54feffff              LEA ECX,[EBP + 0xfffffe54]
005a2900  e86bc80d00                CALL 0x0067f170
005a2905  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005a2909  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
005a2911  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005a2916  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a291e  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
005a2924  33c9                      XOR ECX,ECX
005a2926  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
005a292c  8bd0                      MOV EDX,EAX
005a292e  2bd6                      SUB EDX,ESI
005a2930  c1fa03                    SAR EDX,0x3
005a2933  85d2                      TEST EDX,EDX
005a2935  740e                      JZ 0x005a2945
005a2937  813cce2c010000            CMP dword ptr [ESI + ECX*0x8],0x12c
005a293e  743b                      JZ 0x005a297b
005a2940  41                        INC ECX
005a2941  3bca                      CMP ECX,EDX
005a2943  72f2                      JC 0x005a2937
005a2945  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
005a294b  85c9                      TEST ECX,ECX
005a294d  7e5b                      JLE 0x005a29aa
005a294f  c785d8feffff2c010000      MOV dword ptr [EBP + 0xfffffed8],0x12c
005a2959  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
005a295f  3b85b8feffff              CMP EAX,dword ptr [EBP + 0xfffffeb8]
005a2965  742a                      JZ 0x005a2991
005a2967  c7002c010000              MOV dword ptr [EAX],0x12c
005a296d  894804                    MOV dword ptr [EAX + 0x4],ECX
005a2970  83c008                    ADD EAX,0x8
005a2973  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
005a2979  eb2f                      JMP 0x005a29aa
005a297b  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
005a2981  0144ce04                  ADD dword ptr [ESI + ECX*0x8 + 0x4],EAX
005a2985  7923                      JNS 0x005a29aa
005a2987  c744ce0400000000          MOV dword ptr [ESI + ECX*0x8 + 0x4],0x0
005a298f  eb19                      JMP 0x005a29aa
005a2991  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
005a2997  51                        PUSH ECX
005a2998  50                        PUSH EAX
005a2999  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a299f  e81ce8efff                CALL 0x004a11c0
005a29a4  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
005a29aa  8bcf                      MOV ECX,EDI
005a29ac  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
005a29b6  e885be1100                CALL 0x006be840
005a29bb  f30f108f74030000          MOVSS XMM1,dword ptr [EDI + 0x374]
005a29c3  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
005a29cb  f30f108778030000          MOVSS XMM0,dword ptr [EDI + 0x378]
005a29d3  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
005a29db  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
005a29e3  f30f5ed1                  DIVSS XMM2,XMM1
005a29e7  f30f5ed9                  DIVSS XMM3,XMM1
005a29eb  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
005a29f3  f30f5ec8                  DIVSS XMM1,XMM0
005a29f7  f30f5ee0                  DIVSS XMM4,XMM0
005a29fb  f30f5cd3                  SUBSS XMM2,XMM3
005a29ff  f30f5ccc                  SUBSS XMM1,XMM4
005a2a03  f30f59d2                  MULSS XMM2,XMM2
005a2a07  f30f59c9                  MULSS XMM1,XMM1
005a2a0b  f30f58ca                  ADDSS XMM1,XMM2
005a2a0f  0f28c1                    MOVAPS XMM0,XMM1
005a2a12  e83930e9ff                CALL 0x00435a50
005a2a17  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
005a2a1f  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
005a2a27  0f2fc8                    COMISS XMM1,XMM0
005a2a2a  7622                      JBE 0x005a2a4e
005a2a2c  f30f108588feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe88]
005a2a34  f30f59051caaba00          MULSS XMM0,dword ptr [0x00baaa1c]
005a2a3c  f30f58057ca9ba00          ADDSS XMM0,dword ptr [0x00baa97c]
005a2a44  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a2a48  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
005a2a4e  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
005a2a54  33c9                      XOR ECX,ECX
005a2a56  8bd0                      MOV EDX,EAX
005a2a58  2bd6                      SUB EDX,ESI
005a2a5a  c1fa03                    SAR EDX,0x3
005a2a5d  85d2                      TEST EDX,EDX
005a2a5f  740e                      JZ 0x005a2a6f
005a2a61  813ccef4010000            CMP dword ptr [ESI + ECX*0x8],0x1f4
005a2a68  743b                      JZ 0x005a2aa5
005a2a6a  41                        INC ECX
005a2a6b  3bca                      CMP ECX,EDX
005a2a6d  72f2                      JC 0x005a2a61
005a2a6f  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
005a2a75  85c9                      TEST ECX,ECX
005a2a77  7e61                      JLE 0x005a2ada
005a2a79  c785d8fefffff4010000      MOV dword ptr [EBP + 0xfffffed8],0x1f4
005a2a83  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
005a2a89  3b85b8feffff              CMP EAX,dword ptr [EBP + 0xfffffeb8]
005a2a8f  742a                      JZ 0x005a2abb
005a2a91  c700f4010000              MOV dword ptr [EAX],0x1f4
005a2a97  894804                    MOV dword ptr [EAX + 0x4],ECX
005a2a9a  83c008                    ADD EAX,0x8
005a2a9d  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
005a2aa3  eb35                      JMP 0x005a2ada
005a2aa5  8b95d4feffff              MOV EDX,dword ptr [EBP + 0xfffffed4]
005a2aab  0154ce04                  ADD dword ptr [ESI + ECX*0x8 + 0x4],EDX
005a2aaf  7929                      JNS 0x005a2ada
005a2ab1  c744ce0400000000          MOV dword ptr [ESI + ECX*0x8 + 0x4],0x0
005a2ab9  eb1f                      JMP 0x005a2ada
005a2abb  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
005a2ac1  51                        PUSH ECX
005a2ac2  50                        PUSH EAX
005a2ac3  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2ac9  e8f2e6efff                CALL 0x004a11c0
005a2ace  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
005a2ad4  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
005a2ada  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a2ae2  8bd0                      MOV EDX,EAX
005a2ae4  f30f580554a8ba00          ADDSS XMM0,dword ptr [0x00baa854]
005a2aec  2bd6                      SUB EDX,ESI
005a2aee  33c9                      XOR ECX,ECX
005a2af0  c1fa03                    SAR EDX,0x3
005a2af3  85d2                      TEST EDX,EDX
005a2af5  740e                      JZ 0x005a2b05
005a2af7  813ccefe010000            CMP dword ptr [ESI + ECX*0x8],0x1fe
005a2afe  7439                      JZ 0x005a2b39
005a2b00  41                        INC ECX
005a2b01  3bca                      CMP ECX,EDX
005a2b03  72f2                      JC 0x005a2af7
005a2b05  f30f2cc8                  CVTTSS2SI ECX,XMM0
005a2b09  85c9                      TEST ECX,ECX
005a2b0b  7e59                      JLE 0x005a2b66
005a2b0d  c785d8fefffffe010000      MOV dword ptr [EBP + 0xfffffed8],0x1fe
005a2b17  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
005a2b1d  3b85b8feffff              CMP EAX,dword ptr [EBP + 0xfffffeb8]
005a2b23  7428                      JZ 0x005a2b4d
005a2b25  c700fe010000              MOV dword ptr [EAX],0x1fe
005a2b2b  894804                    MOV dword ptr [EAX + 0x4],ECX
005a2b2e  83c008                    ADD EAX,0x8
005a2b31  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
005a2b37  eb2d                      JMP 0x005a2b66
005a2b39  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a2b3d  0144ce04                  ADD dword ptr [ESI + ECX*0x8 + 0x4],EAX
005a2b41  7923                      JNS 0x005a2b66
005a2b43  c744ce0400000000          MOV dword ptr [ESI + ECX*0x8 + 0x4],0x0
005a2b4b  eb19                      JMP 0x005a2b66
005a2b4d  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
005a2b53  51                        PUSH ECX
005a2b54  50                        PUSH EAX
005a2b55  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2b5b  e860e6efff                CALL 0x004a11c0
005a2b60  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
005a2b66  8bcf                      MOV ECX,EDI
005a2b68  e8d3bc1100                CALL 0x006be840
005a2b6d  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
005a2b77  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005a2b7f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005a2b87  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005a2b8f  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005a2b97  f30f59c0                  MULSS XMM0,XMM0
005a2b9b  f30f59c9                  MULSS XMM1,XMM1
005a2b9f  f30f58c1                  ADDSS XMM0,XMM1
005a2ba3  e8a82ee9ff                CALL 0x00435a50
005a2ba8  0f2f0594aaba00            COMISS XMM0,dword ptr [0x00baaa94]
005a2baf  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
005a2bb7  7655                      JBE 0x005a2c0e
005a2bb9  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
005a2bc1  0f2fc8                    COMISS XMM1,XMM0
005a2bc4  7648                      JBE 0x005a2c0e
005a2bc6  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005a2bc9  85c0                      TEST EAX,EAX
005a2bcb  751a                      JNZ 0x005a2be7
005a2bcd  f30f108588feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe88]
005a2bd5  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
005a2bdd  f30f580524a9ba00          ADDSS XMM0,dword ptr [0x00baa924]
005a2be5  eb1d                      JMP 0x005a2c04
005a2be7  83f801                    CMP EAX,0x1
005a2bea  7522                      JNZ 0x005a2c0e
005a2bec  f30f108588feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe88]
005a2bf4  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
005a2bfc  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
005a2c04  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a2c08  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
005a2c0e  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005a2c14  33c0                      XOR EAX,EAX
005a2c16  8bca                      MOV ECX,EDX
005a2c18  2bce                      SUB ECX,ESI
005a2c1a  c1f903                    SAR ECX,0x3
005a2c1d  85c9                      TEST ECX,ECX
005a2c1f  740e                      JZ 0x005a2c2f
005a2c21  813cc658020000            CMP dword ptr [ESI + EAX*0x8],0x258
005a2c28  743b                      JZ 0x005a2c65
005a2c2a  40                        INC EAX
005a2c2b  3bc1                      CMP EAX,ECX
005a2c2d  72f2                      JC 0x005a2c21
005a2c2f  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
005a2c35  85c0                      TEST EAX,EAX
005a2c37  7e61                      JLE 0x005a2c9a
005a2c39  c785d8feffff58020000      MOV dword ptr [EBP + 0xfffffed8],0x258
005a2c43  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
005a2c49  3b95b8feffff              CMP EDX,dword ptr [EBP + 0xfffffeb8]
005a2c4f  742a                      JZ 0x005a2c7b
005a2c51  c70258020000              MOV dword ptr [EDX],0x258
005a2c57  894204                    MOV dword ptr [EDX + 0x4],EAX
005a2c5a  83c208                    ADD EDX,0x8
005a2c5d  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
005a2c63  eb35                      JMP 0x005a2c9a
005a2c65  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
005a2c6b  014cc604                  ADD dword ptr [ESI + EAX*0x8 + 0x4],ECX
005a2c6f  7929                      JNS 0x005a2c9a
005a2c71  c744c60400000000          MOV dword ptr [ESI + EAX*0x8 + 0x4],0x0
005a2c79  eb1f                      JMP 0x005a2c9a
005a2c7b  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a2c81  50                        PUSH EAX
005a2c82  52                        PUSH EDX
005a2c83  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2c89  e832e5efff                CALL 0x004a11c0
005a2c8e  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
005a2c94  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005a2c9a  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005a2c9e  f30f109588feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe88]
005a2ca6  0f858f010000              JNZ 0x005a2e3b
005a2cac  83bdc4feffff02            CMP dword ptr [EBP + 0xfffffec4],0x2
005a2cb3  0f28c2                    MOVAPS XMM0,XMM2
005a2cb6  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
005a2cbe  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
005a2cc6  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a2cca  8d481e                    LEA ECX,[EAX + 0x1e]
005a2ccd  0f4dc8                    CMOVGE ECX,EAX
005a2cd0  33c0                      XOR EAX,EAX
005a2cd2  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
005a2cd8  8bca                      MOV ECX,EDX
005a2cda  2bce                      SUB ECX,ESI
005a2cdc  c1f903                    SAR ECX,0x3
005a2cdf  85c9                      TEST ECX,ECX
005a2ce1  740e                      JZ 0x005a2cf1
005a2ce3  813cc6c8000000            CMP dword ptr [ESI + EAX*0x8],0xc8
005a2cea  743b                      JZ 0x005a2d27
005a2cec  40                        INC EAX
005a2ced  3bc1                      CMP EAX,ECX
005a2cef  72f2                      JC 0x005a2ce3
005a2cf1  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
005a2cf7  85c9                      TEST ECX,ECX
005a2cf9  7e69                      JLE 0x005a2d64
005a2cfb  c785d8feffffc8000000      MOV dword ptr [EBP + 0xfffffed8],0xc8
005a2d05  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
005a2d0b  3b95b8feffff              CMP EDX,dword ptr [EBP + 0xfffffeb8]
005a2d11  742a                      JZ 0x005a2d3d
005a2d13  c702c8000000              MOV dword ptr [EDX],0xc8
005a2d19  894a04                    MOV dword ptr [EDX + 0x4],ECX
005a2d1c  83c208                    ADD EDX,0x8
005a2d1f  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
005a2d25  eb3d                      JMP 0x005a2d64
005a2d27  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
005a2d2d  014cc604                  ADD dword ptr [ESI + EAX*0x8 + 0x4],ECX
005a2d31  7931                      JNS 0x005a2d64
005a2d33  c744c60400000000          MOV dword ptr [ESI + EAX*0x8 + 0x4],0x0
005a2d3b  eb27                      JMP 0x005a2d64
005a2d3d  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a2d43  50                        PUSH EAX
005a2d44  52                        PUSH EDX
005a2d45  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2d4b  e870e4efff                CALL 0x004a11c0
005a2d50  f30f109588feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe88]
005a2d58  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
005a2d5e  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005a2d64  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
005a2d6c  0f28ca                    MOVAPS XMM1,XMM2
005a2d6f  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
005a2d77  83bdc4feffff02            CMP dword ptr [EBP + 0xfffffec4],0x2
005a2d7e  f30f5cc1                  SUBSS XMM0,XMM1
005a2d82  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a2d86  8d48c4                    LEA ECX,[EAX + -0x3c]
005a2d89  0f4dc8                    CMOVGE ECX,EAX
005a2d8c  83bdc8feffff05            CMP dword ptr [EBP + 0xfffffec8],0x5
005a2d93  8d81f4010000              LEA EAX,[ECX + 0x1f4]
005a2d99  0f4ec1                    CMOVLE EAX,ECX
005a2d9c  8bca                      MOV ECX,EDX
005a2d9e  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
005a2da4  2bce                      SUB ECX,ESI
005a2da6  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a2dac  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
005a2db2  33c0                      XOR EAX,EAX
005a2db4  c1f903                    SAR ECX,0x3
005a2db7  85c9                      TEST ECX,ECX
005a2db9  741b                      JZ 0x005a2dd6
005a2dbb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005a2dc0  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
005a2dc6  393cc6                    CMP dword ptr [ESI + EAX*0x8],EDI
005a2dc9  8bbde0feffff              MOV EDI,dword ptr [EBP + 0xfffffee0]
005a2dcf  7439                      JZ 0x005a2e0a
005a2dd1  40                        INC EAX
005a2dd2  3bc1                      CMP EAX,ECX
005a2dd4  72ea                      JC 0x005a2dc0
005a2dd6  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
005a2ddc  85c9                      TEST ECX,ECX
005a2dde  7e5b                      JLE 0x005a2e3b
005a2de0  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
005a2de6  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
005a2dec  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
005a2df2  3b95b8feffff              CMP EDX,dword ptr [EBP + 0xfffffeb8]
005a2df8  7426                      JZ 0x005a2e20
005a2dfa  8902                      MOV dword ptr [EDX],EAX
005a2dfc  894a04                    MOV dword ptr [EDX + 0x4],ECX
005a2dff  83c208                    ADD EDX,0x8
005a2e02  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
005a2e08  eb31                      JMP 0x005a2e3b
005a2e0a  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
005a2e10  014cc604                  ADD dword ptr [ESI + EAX*0x8 + 0x4],ECX
005a2e14  7925                      JNS 0x005a2e3b
005a2e16  c744c60400000000          MOV dword ptr [ESI + EAX*0x8 + 0x4],0x0
005a2e1e  eb1b                      JMP 0x005a2e3b
005a2e20  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a2e26  50                        PUSH EAX
005a2e27  52                        PUSH EDX
005a2e28  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2e2e  e88de3efff                CALL 0x004a11c0
005a2e33  f30f109588feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe88]
005a2e3b  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005a2e3f  0f8590030000              JNZ 0x005a31d5
005a2e45  83bdc4feffff02            CMP dword ptr [EBP + 0xfffffec4],0x2
005a2e4c  0f28c2                    MOVAPS XMM0,XMM2
005a2e4f  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
005a2e57  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005a2e5d  8bf2                      MOV ESI,EDX
005a2e5f  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
005a2e67  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a2e6b  8d481e                    LEA ECX,[EAX + 0x1e]
005a2e6e  0f4dc8                    CMOVGE ECX,EAX
005a2e71  33c0                      XOR EAX,EAX
005a2e73  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
005a2e79  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
005a2e7f  2bf1                      SUB ESI,ECX
005a2e81  c1fe03                    SAR ESI,0x3
005a2e84  85f6                      TEST ESI,ESI
005a2e86  7416                      JZ 0x005a2e9e
005a2e88  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
005a2e90  813cc1c8000000            CMP dword ptr [ECX + EAX*0x8],0xc8
005a2e97  743b                      JZ 0x005a2ed4
005a2e99  40                        INC EAX
005a2e9a  3bc6                      CMP EAX,ESI
005a2e9c  72f2                      JC 0x005a2e90
005a2e9e  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
005a2ea4  85f6                      TEST ESI,ESI
005a2ea6  7e69                      JLE 0x005a2f11
005a2ea8  c785d8feffffc8000000      MOV dword ptr [EBP + 0xfffffed8],0xc8
005a2eb2  89b5dcfeffff              MOV dword ptr [EBP + 0xfffffedc],ESI
005a2eb8  3b95b8feffff              CMP EDX,dword ptr [EBP + 0xfffffeb8]
005a2ebe  742a                      JZ 0x005a2eea
005a2ec0  c702c8000000              MOV dword ptr [EDX],0xc8
005a2ec6  897204                    MOV dword ptr [EDX + 0x4],ESI
005a2ec9  83c208                    ADD EDX,0x8
005a2ecc  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
005a2ed2  eb3d                      JMP 0x005a2f11
005a2ed4  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
005a2eda  0174c104                  ADD dword ptr [ECX + EAX*0x8 + 0x4],ESI
005a2ede  7931                      JNS 0x005a2f11
005a2ee0  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
005a2ee8  eb27                      JMP 0x005a2f11
005a2eea  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a2ef0  50                        PUSH EAX
005a2ef1  52                        PUSH EDX
005a2ef2  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2ef8  e8c3e2efff                CALL 0x004a11c0
005a2efd  f30f109588feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe88]
005a2f05  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
005a2f0b  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005a2f11  f30f59157ca9ba00          MULSS XMM2,dword ptr [0x00baa97c]
005a2f19  83bdc8feffff05            CMP dword ptr [EBP + 0xfffffec8],0x5
005a2f20  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
005a2f28  f30f5cc2                  SUBSS XMM0,XMM2
005a2f2c  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a2f30  8db0f4010000              LEA ESI,[EAX + 0x1f4]
005a2f36  0f4ef0                    CMOVLE ESI,EAX
005a2f39  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a2f3f  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
005a2f45  8bf2                      MOV ESI,EDX
005a2f47  2bf1                      SUB ESI,ECX
005a2f49  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
005a2f4f  c1fe03                    SAR ESI,0x3
005a2f52  33c0                      XOR EAX,EAX
005a2f54  85f6                      TEST ESI,ESI
005a2f56  741e                      JZ 0x005a2f76
005a2f58  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
005a2f60  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
005a2f66  393cc1                    CMP dword ptr [ECX + EAX*0x8],EDI
005a2f69  8bbde0feffff              MOV EDI,dword ptr [EBP + 0xfffffee0]
005a2f6f  7439                      JZ 0x005a2faa
005a2f71  40                        INC EAX
005a2f72  3bc6                      CMP EAX,ESI
005a2f74  72ea                      JC 0x005a2f60
005a2f76  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
005a2f7c  85f6                      TEST ESI,ESI
005a2f7e  7e53                      JLE 0x005a2fd3
005a2f80  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
005a2f86  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
005a2f8c  89b5dcfeffff              MOV dword ptr [EBP + 0xfffffedc],ESI
005a2f92  3b95b8feffff              CMP EDX,dword ptr [EBP + 0xfffffeb8]
005a2f98  7426                      JZ 0x005a2fc0
005a2f9a  8902                      MOV dword ptr [EDX],EAX
005a2f9c  897204                    MOV dword ptr [EDX + 0x4],ESI
005a2f9f  83c208                    ADD EDX,0x8
005a2fa2  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
005a2fa8  eb29                      JMP 0x005a2fd3
005a2faa  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
005a2fb0  0174c104                  ADD dword ptr [ECX + EAX*0x8 + 0x4],ESI
005a2fb4  791d                      JNS 0x005a2fd3
005a2fb6  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
005a2fbe  eb13                      JMP 0x005a2fd3
005a2fc0  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a2fc6  50                        PUSH EAX
005a2fc7  52                        PUSH EDX
005a2fc8  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a2fce  e8ede1efff                CALL 0x004a11c0
005a2fd3  f30f10a770030000          MOVSS XMM4,dword ptr [EDI + 0x370]
005a2fdb  f30f109774030000          MOVSS XMM2,dword ptr [EDI + 0x374]
005a2fe3  0f28c4                    MOVAPS XMM0,XMM4
005a2fe6  f30f59c2                  MULSS XMM0,XMM2
005a2fea  0f28d8                    MOVAPS XMM3,XMM0
005a2fed  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
005a2ff5  f30f581dd0a9ba00          ADDSS XMM3,dword ptr [0x00baa9d0]
005a2ffd  0f2ec3                    UCOMISS XMM0,XMM3
005a3000  f30f119da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM3
005a3008  9f                        LAHF
005a3009  f6c444                    TEST AH,0x44
005a300c  7a2f                      JP 0x005a303d
005a300e  68d81bb800                PUSH 0xb81bd8
005a3013  6a10                      PUSH 0x10
005a3015  e8a6e24600                CALL 0x00a112c0
005a301a  f30f109774030000          MOVSS XMM2,dword ptr [EDI + 0x374]
005a3022  83c408                    ADD ESP,0x8
005a3025  f30f10a770030000          MOVSS XMM4,dword ptr [EDI + 0x370]
005a302d  f30f108578feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe78]
005a3035  f30f109da8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffea8]
005a303d  f30f108dacfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeac]
005a3045  f30f5cd8                  SUBSS XMM3,XMM0
005a3049  f30f5cc8                  SUBSS XMM1,XMM0
005a304d  f30f59d4                  MULSS XMM2,XMM4
005a3051  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
005a3059  f30f119578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM2
005a3061  f30f5ecb                  DIVSS XMM1,XMM3
005a3065  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
005a306d  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
005a3075  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
005a307d  f30f5cc1                  SUBSS XMM0,XMM1
005a3081  0f28ca                    MOVAPS XMM1,XMM2
005a3084  f30f580dd0a9ba00          ADDSS XMM1,dword ptr [0x00baa9d0]
005a308c  f30f2cc8                  CVTTSS2SI ECX,XMM0
005a3090  0f2ed1                    UCOMISS XMM2,XMM1
005a3093  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
005a3099  f30f118da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM1
005a30a1  9f                        LAHF
005a30a2  f6c444                    TEST AH,0x44
005a30a5  7a25                      JP 0x005a30cc
005a30a7  68d81bb800                PUSH 0xb81bd8
005a30ac  6a10                      PUSH 0x10
005a30ae  e80de24600                CALL 0x00a112c0
005a30b3  f30f109578feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe78]
005a30bb  83c408                    ADD ESP,0x8
005a30be  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
005a30c6  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
005a30cc  83bdc4feffff00            CMP dword ptr [EBP + 0xfffffec4],0x0
005a30d3  f30f5cca                  SUBSS XMM1,XMM2
005a30d7  f30f1085acfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeac]
005a30df  f30f5cc2                  SUBSS XMM0,XMM2
005a30e3  f30f5ec1                  DIVSS XMM0,XMM1
005a30e7  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
005a30ef  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
005a30f7  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
005a30ff  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005a3107  f30f5cc8                  SUBSS XMM1,XMM0
005a310b  f30f2cf1                  CVTTSS2SI ESI,XMM1
005a310f  7e03                      JLE 0x005a3114
005a3111  8d3476                    LEA ESI,[ESI + ESI*0x2]
005a3114  6a00                      PUSH 0x0
005a3116  51                        PUSH ECX
005a3117  68bc020000                PUSH 0x2bc
005a311c  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a3122  e8399aefff                CALL 0x0049cb60
005a3127  6a00                      PUSH 0x0
005a3129  56                        PUSH ESI
005a312a  68c6020000                PUSH 0x2c6
005a312f  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a3135  e8269aefff                CALL 0x0049cb60
005a313a  f30f109770030000          MOVSS XMM2,dword ptr [EDI + 0x370]
005a3142  f30f599774030000          MULSS XMM2,dword ptr [EDI + 0x374]
005a314a  0f28ca                    MOVAPS XMM1,XMM2
005a314d  f30f1195a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM2
005a3155  f30f580d54abba00          ADDSS XMM1,dword ptr [0x00baab54]
005a315d  0f2ed1                    UCOMISS XMM2,XMM1
005a3160  f30f118d78feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM1
005a3168  9f                        LAHF
005a3169  f6c444                    TEST AH,0x44
005a316c  7a1f                      JP 0x005a318d
005a316e  68d81bb800                PUSH 0xb81bd8
005a3173  6a10                      PUSH 0x10
005a3175  e846e14600                CALL 0x00a112c0
005a317a  f30f108d78feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe78]
005a3182  83c408                    ADD ESP,0x8
005a3185  f30f1095a8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea8]
005a318d  f30f1085acfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeac]
005a3195  f30f5cca                  SUBSS XMM1,XMM2
005a3199  f30f5cc2                  SUBSS XMM0,XMM2
005a319d  6a00                      PUSH 0x0
005a319f  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a31a5  f30f5ec1                  DIVSS XMM0,XMM1
005a31a9  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
005a31b1  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
005a31b9  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
005a31c1  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
005a31c9  f30f2cc0                  CVTTSS2SI EAX,XMM0
005a31cd  50                        PUSH EAX
005a31ce  6a06                      PUSH 0x6
005a31d0  e88b99efff                CALL 0x0049cb60
005a31d5  e886bd1400                CALL 0x006eef60
005a31da  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
005a31e2  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
005a31e8  83c801                    OR EAX,0x1
005a31eb  660fd68548feffff          MOVQ qword ptr [EBP + 0xfffffe48],XMM0
005a31f3  898544feffff              MOV dword ptr [EBP + 0xfffffe44],EAX
005a31f9  83ec10                    SUB ESP,0x10
005a31fc  a174f6b100                MOV EAX,[0x00b1f674]
005a3201  898550feffff              MOV dword ptr [EBP + 0xfffffe50],EAX
005a3207  8bc4                      MOV EAX,ESP
005a3209  0f108544feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffe44]
005a3210  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
005a3213  e8d899efff                CALL 0x0049cbf0
005a3218  898598feffff              MOV dword ptr [EBP + 0xfffffe98],EAX
005a321e  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
005a3222  8b85b0feffff              MOV EAX,dword ptr [EBP + 0xfffffeb0]
005a3228  85c0                      TEST EAX,EAX
005a322a  7412                      JZ 0x005a323e
005a322c  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
005a3232  2bc8                      SUB ECX,EAX
005a3234  c1f903                    SAR ECX,0x3
005a3237  51                        PUSH ECX
005a3238  50                        PUSH EAX
005a3239  e80237e8ff                CALL 0x00426940
005a323e  83bdc4feffff05            CMP dword ptr [EBP + 0xfffffec4],0x5
005a3245  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a324d  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
005a3255  0f8ed7020000              JLE 0x005a3532
005a325b  be90010000                MOV ESI,0x190
005a3260  e9d3020000                JMP 0x005a3538
005a3265  83f804                    CMP EAX,0x4
005a3268  0f84a2090000              JZ 0x005a3c10
005a326e  83f803                    CMP EAX,0x3
005a3271  0f8499090000              JZ 0x005a3c10
005a3277  3d36010000                CMP EAX,0x136
005a327c  0f85b0020000              JNZ 0x005a3532
005a3282  be03000000                MOV ESI,0x3
005a3287  e8d4bc1400                CALL 0x006eef60
005a328c  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
005a3294  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
005a329c  0f28c1                    MOVAPS XMM0,XMM1
005a329f  f30f59c1                  MULSS XMM0,XMM1
005a32a3  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
005a32a9  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
005a32b1  0f28ca                    MOVAPS XMM1,XMM2
005a32b4  f30f59ca                  MULSS XMM1,XMM2
005a32b8  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
005a32c0  f30f58c1                  ADDSS XMM0,XMM1
005a32c4  e88727e9ff                CALL 0x00435a50
005a32c9  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005a32d0  7621                      JBE 0x005a32f3
005a32d2  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005a32da  f30f5ec8                  DIVSS XMM1,XMM0
005a32de  0f28c1                    MOVAPS XMM0,XMM1
005a32e1  f30f598dd4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffed4]
005a32e9  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
005a32f1  eb10                      JMP 0x005a3303
005a32f3  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
005a32fb  f30f108dd4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed4]
005a3303  f30f59058cadba00          MULSS XMM0,dword ptr [0x00baad8c]
005a330b  f30f590d8cadba00          MULSS XMM1,dword ptr [0x00baad8c]
005a3313  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
005a331b  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
005a3323  e838bc1400                CALL 0x006eef60
005a3328  660f6ec0                  MOVD XMM0,EAX
005a332c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a3330  c1e81f                    SHR EAX,0x1f
005a3333  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a333c  660f5ac0                  CVTPD2PS XMM0,XMM0
005a3340  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a3348  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a3350  f30f58c0                  ADDSS XMM0,XMM0
005a3354  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
005a335c  e8bfa1e7ff                CALL 0x0041d520
005a3361  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
005a3369  e8f2bb1400                CALL 0x006eef60
005a336e  660f6ec8                  MOVD XMM1,EAX
005a3372  f30fe6c9                  CVTDQ2PD XMM1,XMM1
005a3376  c1e81f                    SHR EAX,0x1f
005a3379  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
005a3382  660f5ac1                  CVTPD2PS XMM0,XMM1
005a3386  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a338e  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005a3396  f30f108578feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe78]
005a339e  e89da1e7ff                CALL 0x0041d540
005a33a3  f30f10959cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe9c]
005a33ab  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a33b1  f30f5985a8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffea8]
005a33b9  6a00                      PUSH 0x0
005a33bb  f30f5995a8feffff          MULSS XMM2,dword ptr [EBP + 0xfffffea8]
005a33c3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a33c9  f30f5885e0feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffee0]
005a33d1  68acd5c500                PUSH 0xc5d5ac
005a33d6  f30f5895d4feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffed4]
005a33de  68dcd5c500                PUSH 0xc5d5dc
005a33e3  6a00                      PUSH 0x0
005a33e5  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a33eb  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
005a33f3  6a00                      PUSH 0x0
005a33f5  6a00                      PUSH 0x0
005a33f7  50                        PUSH EAX
005a33f8  8d873c030000              LEA EAX,[EDI + 0x33c]
005a33fe  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
005a3406  50                        PUSH EAX
005a3407  6a58                      PUSH 0x58
005a3409  68e8030000                PUSH 0x3e8
005a340e  e80d57e8ff                CALL 0x00428b20
005a3413  50                        PUSH EAX
005a3414  e898d45400                CALL 0x00af08b1
005a3419  83c414                    ADD ESP,0x14
005a341c  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
005a3422  8bc8                      MOV ECX,EAX
005a3424  8b10                      MOV EDX,dword ptr [EAX]
005a3426  ff520c                    CALL dword ptr [EDX + 0xc]
005a3429  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
005a3431  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
005a3439  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
005a343f  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
005a3447  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
005a344f  f30f1188e4000000          MOVSS dword ptr [EAX + 0xe4],XMM1
005a3457  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
005a345f  e8fcba1400                CALL 0x006eef60
005a3464  f30f100decadba00          MOVSS XMM1,dword ptr [0x00baadec]
005a346c  660f6ec0                  MOVD XMM0,EAX
005a3470  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a3474  c1e81f                    SHR EAX,0x1f
005a3477  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a3480  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
005a3486  660f5ac0                  CVTPD2PS XMM0,XMM0
005a348a  c780dc00000000000000      MOV dword ptr [EAX + 0xdc],0x0
005a3494  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a349c  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
005a34a4  f30f5cc8                  SUBSS XMM1,XMM0
005a34a8  0f57c0                    XORPS XMM0,XMM0
005a34ab  f30f1188e0000000          MOVSS dword ptr [EAX + 0xe0],XMM1
005a34b3  0f2f8738030000            COMISS XMM0,dword ptr [EDI + 0x338]
005a34ba  760a                      JBE 0x005a34c6
005a34bc  c78054030000d0070000      MOV dword ptr [EAX + 0x354],0x7d0
005a34c6  83ee01                    SUB ESI,0x1
005a34c9  0f85b8fdffff              JNZ 0x005a3287
005a34cf  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005a34d7  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
005a34df  2bc8                      SUB ECX,EAX
005a34e1  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
005a34e7  03c1                      ADD EAX,ECX
005a34e9  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
005a34ef  83f85a                    CMP EAX,0x5a
005a34f2  7e0a                      JLE 0x005a34fe
005a34f4  c7871004000064000000      MOV dword ptr [EDI + 0x410],0x64
005a34fe  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005a3505  0f85a6060000              JNZ 0x005a3bb1
005a350b  83bf1004000064            CMP dword ptr [EDI + 0x410],0x64
005a3512  0f8d99060000              JGE 0x005a3bb1
005a3518  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a3520  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
005a3528  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a3532  8bb598feffff              MOV ESI,dword ptr [EBP + 0xfffffe98]
005a3538  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005a353e  83f903                    CMP ECX,0x3
005a3541  0f8514080000              JNZ 0x005a3d5b
005a3547  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a354d  40                        INC EAX
005a354e  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a3554  83f81e                    CMP EAX,0x1e
005a3557  0f8efe070000              JLE 0x005a3d5b
005a355d  be04000000                MOV ESI,0x4
005a3562  89b7640b0000              MOV dword ptr [EDI + 0xb64],ESI
005a3568  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a3572  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a357c  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
005a3586  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005a358a  0f8525030000              JNZ 0x005a38b5
005a3590  8bcf                      MOV ECX,EDI
005a3592  e8f9adffff                CALL 0x0059e390
005a3597  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a359b  8d7778                    LEA ESI,[EDI + 0x78]
005a359e  0f84b2010000              JZ 0x005a3756
005a35a4  68cc26b600                PUSH 0xb626cc
005a35a9  8bce                      MOV ECX,ESI
005a35ab  e82078e6ff                CALL 0x0040add0
005a35b0  84c0                      TEST AL,AL
005a35b2  0f84a0000000              JZ 0x005a3658
005a35b8  6a07                      PUSH 0x7
005a35ba  8bcf                      MOV ECX,EDI
005a35bc  e8ffaeffff                CALL 0x0059e4c0
005a35c1  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a35c7  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a35cd  c785e4feffff8a000000      MOV dword ptr [EBP + 0xfffffee4],0x8a
005a35d7  e8a4313b00                CALL 0x00956780
005a35dc  83ec08                    SUB ESP,0x8
005a35df  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a35e5  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a35ed  c704240000003f            MOV dword ptr [ESP],0x3f000000
005a35f4  6a00                      PUSH 0x0
005a35f6  6a02                      PUSH 0x2
005a35f8  51                        PUSH ECX
005a35f9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a3600  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a3606  e825a63800                CALL 0x0092dc30
005a360b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a3611  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a3617  c785e4feffffae010000      MOV dword ptr [EBP + 0xfffffee4],0x1ae
005a3621  e85a313b00                CALL 0x00956780
005a3626  83ec08                    SUB ESP,0x8
005a3629  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a362f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a3637  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a363e  6a00                      PUSH 0x0
005a3640  6a02                      PUSH 0x2
005a3642  51                        PUSH ECX
005a3643  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a364a  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a3650  e8dba53800                CALL 0x0092dc30
005a3655  8d7778                    LEA ESI,[EDI + 0x78]
005a3658  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a365c  0f84f4000000              JZ 0x005a3756
005a3662  684027b600                PUSH 0xb62740
005a3667  8bce                      MOV ECX,ESI
005a3669  e86277e6ff                CALL 0x0040add0
005a366e  84c0                      TEST AL,AL
005a3670  0f84e0000000              JZ 0x005a3756
005a3676  6a3c                      PUSH 0x3c
005a3678  8bcf                      MOV ECX,EDI
005a367a  e841aeffff                CALL 0x0059e4c0
005a367f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a3685  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a368b  c785e4feffffab010000      MOV dword ptr [EBP + 0xfffffee4],0x1ab
005a3695  e8e6303b00                CALL 0x00956780
005a369a  83ec08                    SUB ESP,0x8
005a369d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a36a3  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a36ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a36b2  6a00                      PUSH 0x0
005a36b4  6a02                      PUSH 0x2
005a36b6  51                        PUSH ECX
005a36b7  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a36be  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a36c4  e867a53800                CALL 0x0092dc30
005a36c9  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a36cf  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a36d5  c785e4feffffb0010000      MOV dword ptr [EBP + 0xfffffee4],0x1b0
005a36df  e89c303b00                CALL 0x00956780
005a36e4  83ec08                    SUB ESP,0x8
005a36e7  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a36ed  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a36f5  c704240000003f            MOV dword ptr [ESP],0x3f000000
005a36fc  6a00                      PUSH 0x0
005a36fe  6a02                      PUSH 0x2
005a3700  51                        PUSH ECX
005a3701  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a3708  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a370e  e81da53800                CALL 0x0092dc30
005a3713  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a371b  8bcf                      MOV ECX,EDI
005a371d  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
005a3725  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005a372d  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
005a3735  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a373d  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
005a3743  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a374b  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
005a3751  e8daafffff                CALL 0x0059e730
005a3756  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005a375a  0f8555010000              JNZ 0x005a38b5
005a3760  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
005a3767  0f8548010000              JNZ 0x005a38b5
005a376d  8bcf                      MOV ECX,EDI
005a376f  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005a3779  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
005a3780  e8abae1000                CALL 0x006ae630
005a3785  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005a378b  818f68010000010000c4      OR dword ptr [EDI + 0x168],0xc4000001
005a3795  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
005a379d  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005a37a3  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
005a37a9  898780030000              MOV dword ptr [EDI + 0x380],EAX
005a37af  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
005a37b5  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
005a37bc  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
005a37c6  c785dcfeffff0000803f      MOV dword ptr [EBP + 0xfffffedc],0x3f800000
005a37d0  ff7048                    PUSH dword ptr [EAX + 0x48]
005a37d3  c785d8feffff00000040      MOV dword ptr [EBP + 0xfffffed8],0x40000000
005a37dd  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
005a37e3  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
005a37e9  51                        PUSH ECX
005a37ea  8bcf                      MOV ECX,EDI
005a37ec  f30f110424                MOVSS dword ptr [ESP],XMM0
005a37f1  e8aa8a1000                CALL 0x006ac2a0
005a37f6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a37fe  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a3806  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a380e  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005a3816  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
005a381c  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
005a3822  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
005a3828  898740030000              MOV dword ptr [EDI + 0x340],EAX
005a382e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a3836  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
005a383e  ff8710040000              INC dword ptr [EDI + 0x410]
005a3844  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a384c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a3850  7409                      JZ 0x005a385b
005a3852  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a3859  755a                      JNZ 0x005a38b5
005a385b  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a3861  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
005a3867  81a768010000feffff39      AND dword ptr [EDI + 0x168],0x39fffffe
005a3871  83a76c010000f7            AND dword ptr [EDI + 0x16c],0xfffffff7
005a3878  6a00                      PUSH 0x0
005a387a  ff772c                    PUSH dword ptr [EDI + 0x2c]
005a387d  8d8970a60200              LEA ECX,[ECX + 0x2a670]
005a3883  898780030000              MOV dword ptr [EDI + 0x380],EAX
005a3889  ff7728                    PUSH dword ptr [EDI + 0x28]
005a388c  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
005a3893  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a389d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a38a7  e804170f00                CALL 0x00694fb0
005a38ac  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
005a38af  898788030000              MOV dword ptr [EDI + 0x388],EAX
005a38b5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a38bb  3d28230000                CMP EAX,0x2328
005a38c0  740b                      JZ 0x005a38cd
005a38c2  3d29230000                CMP EAX,0x2329
005a38c7  0f856e050000              JNZ 0x005a3e3b
005a38cd  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005a38d4  0f8528010000              JNZ 0x005a3a02
005a38da  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a38e0  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a38e6  c785e4feffffad010000      MOV dword ptr [EBP + 0xfffffee4],0x1ad
005a38f0  e88b2e3b00                CALL 0x00956780
005a38f5  83ec08                    SUB ESP,0x8
005a38f8  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a38fe  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a3906  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a390d  6a00                      PUSH 0x0
005a390f  6a02                      PUSH 0x2
005a3911  51                        PUSH ECX
005a3912  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a3919  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a391f  e80ca33800                CALL 0x0092dc30
005a3924  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a392a  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a3930  c785e4feffffae010000      MOV dword ptr [EBP + 0xfffffee4],0x1ae
005a393a  e8412e3b00                CALL 0x00956780
005a393f  83ec08                    SUB ESP,0x8
005a3942  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a3948  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a3950  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a3957  6a00                      PUSH 0x0
005a3959  6a02                      PUSH 0x2
005a395b  51                        PUSH ECX
005a395c  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a3963  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a3969  e8c2a23800                CALL 0x0092dc30
005a396e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a3974  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a397a  c785e4feffffaf010000      MOV dword ptr [EBP + 0xfffffee4],0x1af
005a3984  e8f72d3b00                CALL 0x00956780
005a3989  83ec08                    SUB ESP,0x8
005a398c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a3992  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a399a  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a39a1  6a00                      PUSH 0x0
005a39a3  6a02                      PUSH 0x2
005a39a5  51                        PUSH ECX
005a39a6  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a39ad  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a39b3  e878a23800                CALL 0x0092dc30
005a39b8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a39be  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
005a39c4  c785e4feffffb0010000      MOV dword ptr [EBP + 0xfffffee4],0x1b0
005a39ce  e8ad2d3b00                CALL 0x00956780
005a39d3  83ec08                    SUB ESP,0x8
005a39d6  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a39dc  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a39e4  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
005a39eb  6a00                      PUSH 0x0
005a39ed  6a02                      PUSH 0x2
005a39ef  51                        PUSH ECX
005a39f0  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a39f7  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
005a39fd  e82ea23800                CALL 0x0092dc30
005a3a02  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005a3a06  750a                      JNZ 0x005a3a12
005a3a08  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005a3a12  8bcf                      MOV ECX,EDI
005a3a14  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
005a3a1b  e810ac1000                CALL 0x006ae630
005a3a20  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
005a3a26  818f68010000010000c4      OR dword ptr [EDI + 0x168],0xc4000001
005a3a30  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
005a3a37  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
005a3a3f  898780030000              MOV dword ptr [EDI + 0x380],EAX
005a3a45  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
005a3a4b  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
005a3a52  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
005a3a5c  c785dcfeffff0000803f      MOV dword ptr [EBP + 0xfffffedc],0x3f800000
005a3a66  ff7048                    PUSH dword ptr [EAX + 0x48]
005a3a69  c785d8feffff00000040      MOV dword ptr [EBP + 0xfffffed8],0x40000000
005a3a73  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
005a3a79  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
005a3a7f  51                        PUSH ECX
005a3a80  8bcf                      MOV ECX,EDI
005a3a82  f30f110424                MOVSS dword ptr [ESP],XMM0
005a3a87  e814881000                CALL 0x006ac2a0
005a3a8c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a3a94  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a3a9c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a3aa4  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005a3aac  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
005a3ab2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a3aba  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
005a3ac2  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
005a3ac8  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
005a3ace  898740030000              MOV dword ptr [EDI + 0x340],EAX
005a3ad4  ff8710040000              INC dword ptr [EDI + 0x410]
005a3ada  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005a3ade  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a3ae6  0f854f030000              JNZ 0x005a3e3b
005a3aec  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a3af0  740d                      JZ 0x005a3aff
005a3af2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a3af9  0f853c030000              JNZ 0x005a3e3b
005a3aff  a17816c700                MOV EAX,[0x00c71678]
005a3b04  8b80c8690200              MOV EAX,dword ptr [EAX + 0x269c8]
005a3b0a  83f803                    CMP EAX,0x3
005a3b0d  7409                      JZ 0x005a3b18
005a3b0f  83f801                    CMP EAX,0x1
005a3b12  0f8523030000              JNZ 0x005a3e3b
005a3b18  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a3b1e  6a01                      PUSH 0x1
005a3b20  6896010000                PUSH 0x196
005a3b25  8d4914                    LEA ECX,[ECX + 0x14]
005a3b28  e863763800                CALL 0x0092b190
005a3b2d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a3b35  8bcf                      MOV ECX,EDI
005a3b37  6aff                      PUSH -0x1
005a3b39  6a00                      PUSH 0x0
005a3b3b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a3b43  8bf0                      MOV ESI,EAX
005a3b45  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a3b4d  6a01                      PUSH 0x1
005a3b4f  6896010000                PUSH 0x196
005a3b54  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005a3b5c  e8cfd31100                CALL 0x006c0f30
005a3b61  f30f10857cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe7c]
005a3b69  f30f1187400c0000          MOVSS dword ptr [EDI + 0xc40],XMM0
005a3b71  c787440c000078000000      MOV dword ptr [EDI + 0xc44],0x78
005a3b7b  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
005a3b85  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a3b8f  85f6                      TEST ESI,ESI
005a3b91  0f8595020000              JNZ 0x005a3e2c
005a3b97  682c27b600                PUSH 0xb6272c
005a3b9c  6a01                      PUSH 0x1
005a3b9e  e81dd74600                CALL 0x00a112c0
005a3ba3  83c408                    ADD ESP,0x8
005a3ba6  56                        PUSH ESI
005a3ba7  681c27b600                PUSH 0xb6271c
005a3bac  e982020000                JMP 0x005a3e33
005a3bb1  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a3bb7  40                        INC EAX
005a3bb8  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a3bbe  83f805                    CMP EAX,0x5
005a3bc1  0f8e79010000              JLE 0x005a3d40
005a3bc7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a3bcf  8d4f48                    LEA ECX,[EDI + 0x48]
005a3bd2  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a3bda  be03000000                MOV ESI,0x3
005a3bdf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a3be7  6a00                      PUSH 0x0
005a3be9  683c26b600                PUSH 0xb6263c
005a3bee  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005a3bf6  e88567e6ff                CALL 0x0040a380
005a3bfb  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a3c03  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
005a3c0b  e928f9ffff                JMP 0x005a3538
005a3c10  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005a3c16  83f8ff                    CMP EAX,-0x1
005a3c19  7450                      JZ 0x005a3c6b
005a3c1b  51                        PUSH ECX
005a3c1c  57                        PUSH EDI
005a3c1d  50                        PUSH EAX
005a3c1e  6a05                      PUSH 0x5
005a3c20  e8eb243b00                CALL 0x00956110
005a3c25  84c0                      TEST AL,AL
005a3c27  7442                      JZ 0x005a3c6b
005a3c29  f30f108570feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe70]
005a3c31  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
005a3c38  7631                      JBE 0x005a3c6b
005a3c3a  8d95d8feffff              LEA EDX,[EBP + 0xfffffed8]
005a3c40  be2c010000                MOV ESI,0x12c
005a3c45  8d8db4feffff              LEA ECX,[EBP + 0xfffffeb4]
005a3c4b  e820b50d00                CALL 0x0067f170
005a3c50  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005a3c54  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
005a3c5c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005a3c61  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005a3c69  eb06                      JMP 0x005a3c71
005a3c6b  8bb598feffff              MOV ESI,dword ptr [EBP + 0xfffffe98]
005a3c71  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005a3c77  83f8ff                    CMP EAX,-0x1
005a3c7a  7414                      JZ 0x005a3c90
005a3c7c  51                        PUSH ECX
005a3c7d  57                        PUSH EDI
005a3c7e  50                        PUSH EAX
005a3c7f  6a07                      PUSH 0x7
005a3c81  e88a243b00                CALL 0x00956110
005a3c86  84c0                      TEST AL,AL
005a3c88  b9f4010000                MOV ECX,0x1f4
005a3c8d  0f45f1                    CMOVNZ ESI,ECX
005a3c90  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005a3c96  83f8ff                    CMP EAX,-0x1
005a3c99  7414                      JZ 0x005a3caf
005a3c9b  51                        PUSH ECX
005a3c9c  57                        PUSH EDI
005a3c9d  50                        PUSH EAX
005a3c9e  6a04                      PUSH 0x4
005a3ca0  e86b243b00                CALL 0x00956110
005a3ca5  84c0                      TEST AL,AL
005a3ca7  b9fe010000                MOV ECX,0x1fe
005a3cac  0f45f1                    CMOVNZ ESI,ECX
005a3caf  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005a3cb5  83f8ff                    CMP EAX,-0x1
005a3cb8  7414                      JZ 0x005a3cce
005a3cba  51                        PUSH ECX
005a3cbb  57                        PUSH EDI
005a3cbc  50                        PUSH EAX
005a3cbd  6a06                      PUSH 0x6
005a3cbf  e84c243b00                CALL 0x00956110
005a3cc4  84c0                      TEST AL,AL
005a3cc6  b958020000                MOV ECX,0x258
005a3ccb  0f45f1                    CMOVNZ ESI,ECX
005a3cce  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005a3cd4  83f8ff                    CMP EAX,-0x1
005a3cd7  7414                      JZ 0x005a3ced
005a3cd9  51                        PUSH ECX
005a3cda  57                        PUSH EDI
005a3cdb  50                        PUSH EAX
005a3cdc  6a08                      PUSH 0x8
005a3cde  e82d243b00                CALL 0x00956110
005a3ce3  84c0                      TEST AL,AL
005a3ce5  b964000000                MOV ECX,0x64
005a3cea  0f45f1                    CMOVNZ ESI,ECX
005a3ced  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005a3cf3  83f8ff                    CMP EAX,-0x1
005a3cf6  7414                      JZ 0x005a3d0c
005a3cf8  51                        PUSH ECX
005a3cf9  57                        PUSH EDI
005a3cfa  50                        PUSH EAX
005a3cfb  6a0a                      PUSH 0xa
005a3cfd  e80e243b00                CALL 0x00956110
005a3d02  84c0                      TEST AL,AL
005a3d04  b9c8000000                MOV ECX,0xc8
005a3d09  0f45f1                    CMOVNZ ESI,ECX
005a3d0c  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005a3d12  83f8ff                    CMP EAX,-0x1
005a3d15  742f                      JZ 0x005a3d46
005a3d17  51                        PUSH ECX
005a3d18  57                        PUSH EDI
005a3d19  50                        PUSH EAX
005a3d1a  6a0b                      PUSH 0xb
005a3d1c  e8ef233b00                CALL 0x00956110
005a3d21  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a3d29  84c0                      TEST AL,AL
005a3d2b  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
005a3d33  b990010000                MOV ECX,0x190
005a3d38  0f45f1                    CMOVNZ ESI,ECX
005a3d3b  e9f8f7ffff                JMP 0x005a3538
005a3d40  8bb598feffff              MOV ESI,dword ptr [EBP + 0xfffffe98]
005a3d46  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
005a3d4e  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
005a3d56  e9ddf7ffff                JMP 0x005a3538
005a3d5b  3bf1                      CMP ESI,ECX
005a3d5d  0f8423f8ffff              JZ 0x005a3586
005a3d63  81fe2c010000              CMP ESI,0x12c
005a3d69  7512                      JNZ 0x005a3d7d
005a3d6b  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005a3d73  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005a3d7b  eb7f                      JMP 0x005a3dfc
005a3d7d  81fe58020000              CMP ESI,0x258
005a3d83  7529                      JNZ 0x005a3dae
005a3d85  8bcf                      MOV ECX,EDI
005a3d87  e8b4aa1100                CALL 0x006be840
005a3d8c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005a3d94  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005a3d9c  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a3da4  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
005a3dac  eb4e                      JMP 0x005a3dfc
005a3dae  81fe90010000              CMP ESI,0x190
005a3db4  0f84a8f7ffff              JZ 0x005a3562
005a3dba  83fe03                    CMP ESI,0x3
005a3dbd  0f849ff7ffff              JZ 0x005a3562
005a3dc3  83fe04                    CMP ESI,0x4
005a3dc6  0f8496f7ffff              JZ 0x005a3562
005a3dcc  81fef4010000              CMP ESI,0x1f4
005a3dd2  0f848af7ffff              JZ 0x005a3562
005a3dd8  81fefe010000              CMP ESI,0x1fe
005a3dde  0f847ef7ffff              JZ 0x005a3562
005a3de4  81febc020000              CMP ESI,0x2bc
005a3dea  0f8472f7ffff              JZ 0x005a3562
005a3df0  81fec6020000              CMP ESI,0x2c6
005a3df6  0f8466f7ffff              JZ 0x005a3562
005a3dfc  89b7640b0000              MOV dword ptr [EDI + 0xb64],ESI
005a3e02  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a3e0c  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005a3e16  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
005a3e20  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
005a3e27  e95af7ffff                JMP 0x005a3586
005a3e2c  6a00                      PUSH 0x0
005a3e2e  680c27b600                PUSH 0xb6270c
005a3e33  8d4f48                    LEA ECX,[EDI + 0x48]
005a3e36  e84565e6ff                CALL 0x0040a380
005a3e3b  8b877c010000              MOV EAX,dword ptr [EDI + 0x17c]
005a3e41  33d2                      XOR EDX,EDX
005a3e43  8b8f78010000              MOV ECX,dword ptr [EDI + 0x178]
005a3e49  2bc1                      SUB EAX,ECX
005a3e4b  c1f803                    SAR EAX,0x3
005a3e4e  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
005a3e54  85c0                      TEST EAX,EAX
005a3e56  0f8450020000              JZ 0x005a40ac
005a3e5c  f30f101590a4ba00          MOVSS XMM2,dword ptr [0x00baa490]
005a3e64  f30f103d04a9ba00          MOVSS XMM7,dword ptr [0x00baa904]
005a3e6c  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
005a3e74  0f1f4000                  NOP dword ptr [EAX]
005a3e78  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
005a3e80  f30f1004d1                MOVSS XMM0,dword ptr [ECX + EDX*0x8]
005a3e85  f30f104cd104              MOVSS XMM1,dword ptr [ECX + EDX*0x8 + 0x4]
005a3e8b  f30f59c2                  MULSS XMM0,XMM2
005a3e8f  a17816c700                MOV EAX,[0x00c71678]
005a3e94  f30f59ca                  MULSS XMM1,XMM2
005a3e98  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005a3ea0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a3ea6  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
005a3eae  f30f5cc7                  SUBSS XMM0,XMM7
005a3eb2  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
005a3eba  f30f5ec7                  DIVSS XMM0,XMM7
005a3ebe  f30f5ecf                  DIVSS XMM1,XMM7
005a3ec2  f30f58c3                  ADDSS XMM0,XMM3
005a3ec6  f30f58cb                  ADDSS XMM1,XMM3
005a3eca  f30f2cd0                  CVTTSS2SI EDX,XMM0
005a3ece  f30f2cc1                  CVTTSS2SI EAX,XMM1
005a3ed2  85d2                      TEST EDX,EDX
005a3ed4  0f88ad010000              JS 0x005a4087
005a3eda  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
005a3edd  3bd6                      CMP EDX,ESI
005a3edf  0f8da2010000              JGE 0x005a4087
005a3ee5  85c0                      TEST EAX,EAX
005a3ee7  0f889a010000              JS 0x005a4087
005a3eed  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
005a3ef0  0f8d91010000              JGE 0x005a4087
005a3ef6  0fafc6                    IMUL EAX,ESI
005a3ef9  03c2                      ADD EAX,EDX
005a3efb  0f8886010000              JS 0x005a4087
005a3f01  3dc0010000                CMP EAX,0x1c0
005a3f06  7d06                      JGE 0x005a3f0e
005a3f08  8b748124                  MOV ESI,dword ptr [ECX + EAX*0x4 + 0x24]
005a3f0c  eb02                      JMP 0x005a3f10
005a3f0e  33f6                      XOR ESI,ESI
005a3f10  50                        PUSH EAX
005a3f11  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
005a3f17  e8e4c82400                CALL 0x007f0800
005a3f1c  83f803                    CMP EAX,0x3
005a3f1f  7409                      JZ 0x005a3f2a
005a3f21  83f802                    CMP EAX,0x2
005a3f24  0f8545010000              JNZ 0x005a406f
005a3f2a  85f6                      TEST ESI,ESI
005a3f2c  0f843d010000              JZ 0x005a406f
005a3f32  837e3c03                  CMP dword ptr [ESI + 0x3c],0x3
005a3f36  0f8533010000              JNZ 0x005a406f
005a3f3c  8b06                      MOV EAX,dword ptr [ESI]
005a3f3e  8d8db4fdffff              LEA ECX,[EBP + 0xfffffdb4]
005a3f44  57                        PUSH EDI
005a3f45  8b7014                    MOV ESI,dword ptr [EAX + 0x14]
005a3f48  e8c3d3e8ff                CALL 0x00431310
005a3f4d  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
005a3f53  8d85b4fdffff              LEA EAX,[EBP + 0xfffffdb4]
005a3f59  50                        PUSH EAX
005a3f5a  6a00                      PUSH 0x0
005a3f5c  ffd6                      CALL ESI
005a3f5e  f30f103d04a9ba00          MOVSS XMM7,dword ptr [0x00baa904]
005a3f66  84c0                      TEST AL,AL
005a3f68  0f8409010000              JZ 0x005a4077
005a3f6e  a17816c700                MOV EAX,[0x00c71678]
005a3f73  8d8d74feffff              LEA ECX,[EBP + 0xfffffe74]
005a3f79  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005a3f7f  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
005a3f85  89b570feffff              MOV dword ptr [EBP + 0xfffffe70],ESI
005a3f8b  8b760c                    MOV ESI,dword ptr [ESI + 0xc]
005a3f8e  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
005a3f91  99                        CDQ
005a3f92  f7fe                      IDIV ESI
005a3f94  660f6ef2                  MOVD XMM6,EDX
005a3f98  8d95d8feffff              LEA EDX,[EBP + 0xfffffed8]
005a3f9e  660f6ee8                  MOVD XMM5,EAX
005a3fa2  0f5bf6                    CVTDQ2PS XMM6,XMM6
005a3fa5  0f5bed                    CVTDQ2PS XMM5,XMM5
005a3fa8  f30f59f7                  MULSS XMM6,XMM7
005a3fac  f30f59ef                  MULSS XMM5,XMM7
005a3fb0  f30f58f7                  ADDSS XMM6,XMM7
005a3fb4  f30f582d00aaba00          ADDSS XMM5,dword ptr [0x00baaa00]
005a3fbc  0f28ce                    MOVAPS XMM1,XMM6
005a3fbf  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005a3fc7  0f28c5                    MOVAPS XMM0,XMM5
005a3fca  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005a3fd2  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a3fda  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a3fe2  e889b10d00                CALL 0x0067f170
005a3fe7  f30f108574feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe74]
005a3fef  f30f108d78feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe78]
005a3ff7  f30f59c7                  MULSS XMM0,XMM7
005a3ffb  f30f59cf                  MULSS XMM1,XMM7
005a3fff  f30f58f0                  ADDSS XMM6,XMM0
005a4003  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
005a400b  f30f58cd                  ADDSS XMM1,XMM5
005a400f  f30f5cf7                  SUBSS XMM6,XMM7
005a4013  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
005a401b  f30f5ef7                  DIVSS XMM6,XMM7
005a401f  f30f5ecf                  DIVSS XMM1,XMM7
005a4023  f30f58f3                  ADDSS XMM6,XMM3
005a4027  f30f58cb                  ADDSS XMM1,XMM3
005a402b  f30f2cd6                  CVTTSS2SI EDX,XMM6
005a402f  f30f2cc9                  CVTTSS2SI ECX,XMM1
005a4033  85d2                      TEST EDX,EDX
005a4035  7848                      JS 0x005a407f
005a4037  3bd6                      CMP EDX,ESI
005a4039  7d44                      JGE 0x005a407f
005a403b  85c9                      TEST ECX,ECX
005a403d  7840                      JS 0x005a407f
005a403f  8b8570feffff              MOV EAX,dword ptr [EBP + 0xfffffe70]
005a4045  3b4810                    CMP ECX,dword ptr [EAX + 0x10]
005a4048  7d35                      JGE 0x005a407f
005a404a  0faff1                    IMUL ESI,ECX
005a404d  03f2                      ADD ESI,EDX
005a404f  782e                      JS 0x005a407f
005a4051  81fec0010000              CMP ESI,0x1c0
005a4057  7d06                      JGE 0x005a405f
005a4059  8b4cb024                  MOV ECX,dword ptr [EAX + ESI*0x4 + 0x24]
005a405d  eb02                      JMP 0x005a4061
005a405f  33c9                      XOR ECX,ECX
005a4061  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
005a4067  51                        PUSH ECX
005a4068  8bc8                      MOV ECX,EAX
005a406a  e871a62700                CALL 0x0081e6e0
005a406f  f30f103d04a9ba00          MOVSS XMM7,dword ptr [0x00baa904]
005a4077  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
005a407f  f30f101590a4ba00          MOVSS XMM2,dword ptr [0x00baa490]
005a4087  8b877c010000              MOV EAX,dword ptr [EDI + 0x17c]
005a408d  8b8f78010000              MOV ECX,dword ptr [EDI + 0x178]
005a4093  2bc1                      SUB EAX,ECX
005a4095  ff85c8feffff              INC dword ptr [EBP + 0xfffffec8]
005a409b  8b95c8feffff              MOV EDX,dword ptr [EBP + 0xfffffec8]
005a40a1  c1f803                    SAR EAX,0x3
005a40a4  3bd0                      CMP EDX,EAX
005a40a6  0f82d4fdffff              JC 0x005a3e80
005a40ac  80bdcefeffff00            CMP byte ptr [EBP + 0xfffffece],0x0
005a40b3  750d                      JNZ 0x005a40c2
005a40b5  80bd80feffff00            CMP byte ptr [EBP + 0xfffffe80],0x0
005a40bc  0f84bb050000              JZ 0x005a467d
005a40c2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a40c6  750c                      JNZ 0x005a40d4
005a40c8  33f6                      XOR ESI,ESI
005a40ca  33c0                      XOR EAX,EAX
005a40cc  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
005a40d2  eb32                      JMP 0x005a4106
005a40d4  8d4f78                    LEA ECX,[EDI + 0x78]
005a40d7  687027b600                PUSH 0xb62770
005a40dc  e8ff6be6ff                CALL 0x0040ace0
005a40e1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a40e5  8bf0                      MOV ESI,EAX
005a40e7  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
005a40ed  7504                      JNZ 0x005a40f3
005a40ef  33c0                      XOR EAX,EAX
005a40f1  eb13                      JMP 0x005a4106
005a40f3  686827b600                PUSH 0xb62768
005a40f8  8d4f78                    LEA ECX,[EDI + 0x78]
005a40fb  e8e06be6ff                CALL 0x0040ace0
005a4100  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
005a4106  f30f101524a3ba00          MOVSS XMM2,dword ptr [0x00baa324]
005a410e  33c9                      XOR ECX,ECX
005a4110  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
005a4116  898dacfeffff              MOV dword ptr [EBP + 0xfffffeac],ECX
005a411c  0f1f4000                  NOP dword ptr [EAX]
005a4120  85c9                      TEST ECX,ECX
005a4122  0f44c6                    CMOVZ EAX,ESI
005a4125  750e                      JNZ 0x005a4135
005a4127  80bdcefeffff00            CMP byte ptr [EBP + 0xfffffece],0x0
005a412e  751b                      JNZ 0x005a414b
005a4130  e932050000                JMP 0x005a4667
005a4135  83f901                    CMP ECX,0x1
005a4138  0f8529050000              JNZ 0x005a4667
005a413e  80bd80feffff00            CMP byte ptr [EBP + 0xfffffe80],0x0
005a4145  0f841c050000              JZ 0x005a4667
005a414b  85c0                      TEST EAX,EAX
005a414d  0f8414050000              JZ 0x005a4667
005a4153  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
005a415a  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005a415f  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
005a4167  740a                      JZ 0x005a4173
005a4169  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
005a4171  eb08                      JMP 0x005a417b
005a4173  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005a417b  f30f5900                  MULSS XMM0,dword ptr [EAX]
005a417f  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
005a4187  f30f5ec2                  DIVSS XMM0,XMM2
005a418b  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005a4193  0f28c1                    MOVAPS XMM0,XMM1
005a4196  f30f5ec2                  DIVSS XMM0,XMM2
005a419a  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
005a41a2  e8b9ad1400                CALL 0x006eef60
005a41a7  660f6ec0                  MOVD XMM0,EAX
005a41ab  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a41af  c1e81f                    SHR EAX,0x1f
005a41b2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a41bb  660f5ac0                  CVTPD2PS XMM0,XMM0
005a41bf  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a41c7  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a41cf  f30f58c0                  ADDSS XMM0,XMM0
005a41d3  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
005a41db  e84093e7ff                CALL 0x0041d520
005a41e0  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
005a41e8  e873ad1400                CALL 0x006eef60
005a41ed  660f6ec8                  MOVD XMM1,EAX
005a41f1  f30fe6c9                  CVTDQ2PD XMM1,XMM1
005a41f5  c1e81f                    SHR EAX,0x1f
005a41f8  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
005a4201  660f5ac1                  CVTPD2PS XMM0,XMM1
005a4205  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a420d  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
005a4215  f30f108570feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe70]
005a421d  e81e93e7ff                CALL 0x0041d540
005a4222  0f28c8                    MOVAPS XMM1,XMM0
005a4225  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
005a422d  f30f59c8                  MULSS XMM1,XMM0
005a4231  f30f598578feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe78]
005a4239  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
005a4241  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
005a4249  f30f588da8feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffea8]
005a4251  f30f58859cfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe9c]
005a4259  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
005a4261  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
005a4269  e8f2ac1400                CALL 0x006eef60
005a426e  f30f108d7cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe7c]
005a4276  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
005a427e  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
005a4286  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005a428e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a4294  50                        PUSH EAX
005a4295  6a00                      PUSH 0x0
005a4297  6a00                      PUSH 0x0
005a4299  6840b6c700                PUSH 0xc7b640
005a429e  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
005a42a4  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
005a42ac  50                        PUSH EAX
005a42ad  6a59                      PUSH 0x59
005a42af  68e8030000                PUSH 0x3e8
005a42b4  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
005a42bc  e85f48e8ff                CALL 0x00428b20
005a42c1  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005a42c5  7564                      JNZ 0x005a432b
005a42c7  8d4d94                    LEA ECX,[EBP + -0x6c]
005a42ca  e801ec0d00                CALL 0x00682ed0
005a42cf  f30f108d7cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe7c]
005a42d7  8d4594                    LEA EAX,[EBP + -0x6c]
005a42da  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
005a42e2  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
005a42ea  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005a42f2  6a00                      PUSH 0x0
005a42f4  51                        PUSH ECX
005a42f5  c7042400000000            MOV dword ptr [ESP],0x0
005a42fc  50                        PUSH EAX
005a42fd  51                        PUSH ECX
005a42fe  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a4304  8d858cfeffff              LEA EAX,[EBP + 0xfffffe8c]
005a430a  c7042400000041            MOV dword ptr [ESP],0x41000000
005a4311  6a0a                      PUSH 0xa
005a4313  6a5f                      PUSH 0x5f
005a4315  50                        PUSH EAX
005a4316  f30f118d8cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM1
005a431e  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
005a4326  e805f01500                CALL 0x00703330
005a432b  c7857cfeffff10000000      MOV dword ptr [EBP + 0xfffffe7c],0x10
005a4335  e826ac1400                CALL 0x006eef60
005a433a  660f6ec0                  MOVD XMM0,EAX
005a433e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a4342  c1e81f                    SHR EAX,0x1f
005a4345  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a434e  660f5ac0                  CVTPD2PS XMM0,XMM0
005a4352  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a435a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a4362  f30f58c0                  ADDSS XMM0,XMM0
005a4366  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
005a436e  e8ad91e7ff                CALL 0x0041d520
005a4373  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
005a437b  e8e0ab1400                CALL 0x006eef60
005a4380  f30f108570feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe70]
005a4388  660f6ec8                  MOVD XMM1,EAX
005a438c  f30fe6c9                  CVTDQ2PD XMM1,XMM1
005a4390  c1e81f                    SHR EAX,0x1f
005a4393  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
005a439c  660f5ae1                  CVTPD2PS XMM4,XMM1
005a43a0  f30f5925f49fba00          MULSS XMM4,dword ptr [0x00ba9ff4]
005a43a8  f30f11a5c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM4
005a43b0  e88b91e7ff                CALL 0x0041d540
005a43b5  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
005a43bd  f30f59c1                  MULSS XMM0,XMM1
005a43c1  f30f598d78feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe78]
005a43c9  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
005a43d1  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
005a43d9  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
005a43e1  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005a43e8  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
005a43f0  e86bab1400                CALL 0x006eef60
005a43f5  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005a43fd  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005a4405  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a440b  f30f109d70feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe70]
005a4413  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
005a441b  0f28d3                    MOVAPS XMM2,XMM3
005a441e  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
005a4426  f30f58d0                  ADDSS XMM2,XMM0
005a442a  6a00                      PUSH 0x0
005a442c  f30f10a5c8feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffec8]
005a4434  f30f589f3c030000          ADDSS XMM3,dword ptr [EDI + 0x33c]
005a443c  68acd5c500                PUSH 0xc5d5ac
005a4441  68dcd5c500                PUSH 0xc5d5dc
005a4446  6a00                      PUSH 0x0
005a4448  50                        PUSH EAX
005a4449  0f28c4                    MOVAPS XMM0,XMM4
005a444c  f30f119594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM2
005a4454  f30f58a740030000          ADDSS XMM4,dword ptr [EDI + 0x340]
005a445c  f30f58c1                  ADDSS XMM0,XMM1
005a4460  6a00                      PUSH 0x0
005a4462  6a00                      PUSH 0x0
005a4464  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
005a446a  f30f5825e49fba00          ADDSS XMM4,dword ptr [0x00ba9fe4]
005a4472  50                        PUSH EAX
005a4473  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
005a447b  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
005a4481  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
005a4489  f30f58c3                  ADDSS XMM0,XMM3
005a448d  50                        PUSH EAX
005a448e  6a58                      PUSH 0x58
005a4490  68e8030000                PUSH 0x3e8
005a4495  f30f11a5c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM4
005a449d  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
005a44a5  e87646e8ff                CALL 0x00428b20
005a44aa  50                        PUSH EAX
005a44ab  e801c45400                CALL 0x00af08b1
005a44b0  8bf0                      MOV ESI,EAX
005a44b2  83c414                    ADD ESP,0x14
005a44b5  8bce                      MOV ECX,ESI
005a44b7  8b16                      MOV EDX,dword ptr [ESI]
005a44b9  ff520c                    CALL dword ptr [EDX + 0xc]
005a44bc  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
005a44c4  8d4d94                    LEA ECX,[EBP + -0x6c]
005a44c7  c78654030000e8030000      MOV dword ptr [ESI + 0x354],0x3e8
005a44d1  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
005a44db  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
005a44e3  e8e8e90d00                CALL 0x00682ed0
005a44e8  c745b4f2f0f03d            MOV dword ptr [EBP + -0x4c],0x3df0f0f2
005a44ef  c745b8f2f0703d            MOV dword ptr [EBP + -0x48],0x3d70f0f2
005a44f6  c745bca1a0a03c            MOV dword ptr [EBP + -0x44],0x3ca0a0a1
005a44fd  8b06                      MOV EAX,dword ptr [ESI]
005a44ff  8d4d94                    LEA ECX,[EBP + -0x6c]
005a4502  6a01                      PUSH 0x1
005a4504  6a00                      PUSH 0x0
005a4506  68ff000000                PUSH 0xff
005a450b  6aff                      PUSH -0x1
005a450d  51                        PUSH ECX
005a450e  8bce                      MOV ECX,ESI
005a4510  ff503c                    CALL dword ptr [EAX + 0x3c]
005a4513  83ad7cfeffff01            SUB dword ptr [EBP + 0xfffffe7c],0x1
005a451a  0f8515feffff              JNZ 0x005a4335
005a4520  e83baa1400                CALL 0x006eef60
005a4525  83e001                    AND EAX,0x1
005a4528  0f8525010000              JNZ 0x005a4653
005a452e  e82daa1400                CALL 0x006eef60
005a4533  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005a453b  8bf0                      MOV ESI,EAX
005a453d  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
005a4545  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
005a454d  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
005a4555  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
005a455d  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
005a4565  e8f6a91400                CALL 0x006eef60
005a456a  660f6ec0                  MOVD XMM0,EAX
005a456e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a4572  c1e81f                    SHR EAX,0x1f
005a4575  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a457e  660f5ac0                  CVTPD2PS XMM0,XMM0
005a4582  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a458a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a4592  f30f58c0                  ADDSS XMM0,XMM0
005a4596  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
005a459e  e87d8fe7ff                CALL 0x0041d520
005a45a3  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005a45ab  f30f108570feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe70]
005a45b3  e8888fe7ff                CALL 0x0041d540
005a45b8  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
005a45c0  8d85a0feffff              LEA EAX,[EBP + 0xfffffea0]
005a45c6  f30f588578feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe78]
005a45ce  f30f588d9cfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe9c]
005a45d6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a45dc  6a00                      PUSH 0x0
005a45de  68acd5c500                PUSH 0xc5d5ac
005a45e3  68dcd5c500                PUSH 0xc5d5dc
005a45e8  6a00                      PUSH 0x0
005a45ea  56                        PUSH ESI
005a45eb  6a00                      PUSH 0x0
005a45ed  6a00                      PUSH 0x0
005a45ef  50                        PUSH EAX
005a45f0  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
005a45f8  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
005a45fe  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
005a4606  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005a460e  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
005a4616  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
005a461e  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
005a4626  50                        PUSH EAX
005a4627  6a04                      PUSH 0x4
005a4629  68e8030000                PUSH 0x3e8
005a462e  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
005a4636  f30f118d84feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM1
005a463e  e8dd44e8ff                CALL 0x00428b20
005a4643  50                        PUSH EAX
005a4644  e868c25400                CALL 0x00af08b1
005a4649  83c414                    ADD ESP,0x14
005a464c  8bc8                      MOV ECX,EAX
005a464e  8b10                      MOV EDX,dword ptr [EAX]
005a4650  ff520c                    CALL dword ptr [EDX + 0xc]
005a4653  8bb5e0feffff              MOV ESI,dword ptr [EBP + 0xfffffee0]
005a4659  8b8dacfeffff              MOV ECX,dword ptr [EBP + 0xfffffeac]
005a465f  f30f101524a3ba00          MOVSS XMM2,dword ptr [0x00baa324]
005a4667  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
005a466d  41                        INC ECX
005a466e  898dacfeffff              MOV dword ptr [EBP + 0xfffffeac],ECX
005a4674  83f902                    CMP ECX,0x2
005a4677  0f8ca3faffff              JL 0x005a4120
005a467d  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a4683  68b8010000                PUSH 0x1b8
005a4688  8d8924a30200              LEA ECX,[ECX + 0x2a324]
005a468e  e8cd9e3800                CALL 0x0092e560
005a4693  84c0                      TEST AL,AL
005a4695  745e                      JZ 0x005a46f5
005a4697  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a469d  3df4010000                CMP EAX,0x1f4
005a46a2  7451                      JZ 0x005a46f5
005a46a4  3dfe010000                CMP EAX,0x1fe
005a46a9  744a                      JZ 0x005a46f5
005a46ab  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a46b1  68b8010000                PUSH 0x1b8
005a46b6  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a46bc  e81fa03800                CALL 0x0092e6e0
005a46c1  d82554a1ba00              FSUB dword ptr [0x00baa154]
005a46c7  83ec08                    SUB ESP,0x8
005a46ca  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a46d0  d99d70feffff              FSTP dword ptr [EBP + 0xfffffe70]
005a46d6  f30f108570feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe70]
005a46de  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
005a46e6  f30f110424                MOVSS dword ptr [ESP],XMM0
005a46eb  68b8010000                PUSH 0x1b8
005a46f0  e82b9f3800                CALL 0x0092e620
005a46f5  83bf640b000064            CMP dword ptr [EDI + 0xb64],0x64
005a46fc  742c                      JZ 0x005a472a
005a46fe  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a4704  68b4010000                PUSH 0x1b4
005a4709  8d8924a30200              LEA ECX,[ECX + 0x2a324]
005a470f  e81c9b3800                CALL 0x0092e230
005a4714  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005a471a  68b7010000                PUSH 0x1b7
005a471f  8d8924a30200              LEA ECX,[ECX + 0x2a324]
005a4725  e8069b3800                CALL 0x0092e230
005a472a  80bd0cfeffff00            CMP byte ptr [EBP + 0xfffffe0c],0x0
005a4731  7518                      JNZ 0x005a474b
005a4733  c645fc08                  MOV byte ptr [EBP + -0x4],0x8
005a4737  b101                      MOV CL,0x1
005a4739  8b9510feffff              MOV EDX,dword ptr [EBP + 0xfffffe10]
005a473f  6a00                      PUSH 0x0
005a4741  6a00                      PUSH 0x0
005a4743  e868014c00                CALL 0x00a648b0
005a4748  83c408                    ADD ESP,0x8
005a474b  80bdfcfdffff00            CMP byte ptr [EBP + 0xfffffdfc],0x0
005a4752  7518                      JNZ 0x005a476c
005a4754  c645fc09                  MOV byte ptr [EBP + -0x4],0x9
005a4758  b101                      MOV CL,0x1
005a475a  8b9500feffff              MOV EDX,dword ptr [EBP + 0xfffffe00]
005a4760  6a00                      PUSH 0x0
005a4762  6a00                      PUSH 0x0
005a4764  e847014c00                CALL 0x00a648b0
005a4769  83c408                    ADD ESP,0x8
005a476c  80bddcfdffff00            CMP byte ptr [EBP + 0xfffffddc],0x0
005a4773  7518                      JNZ 0x005a478d
005a4775  c645fc0a                  MOV byte ptr [EBP + -0x4],0xa
005a4779  b101                      MOV CL,0x1
005a477b  8b95e0fdffff              MOV EDX,dword ptr [EBP + 0xfffffde0]
005a4781  6a00                      PUSH 0x0
005a4783  6a00                      PUSH 0x0
005a4785  e826014c00                CALL 0x00a648b0
005a478a  83c408                    ADD ESP,0x8
005a478d  80bdecfdffff00            CMP byte ptr [EBP + 0xfffffdec],0x0
005a4794  7518                      JNZ 0x005a47ae
005a4796  c645fc0b                  MOV byte ptr [EBP + -0x4],0xb
005a479a  b101                      MOV CL,0x1
005a479c  8b95f0fdffff              MOV EDX,dword ptr [EBP + 0xfffffdf0]
005a47a2  6a00                      PUSH 0x0
005a47a4  6a00                      PUSH 0x0
005a47a6  e805014c00                CALL 0x00a648b0
005a47ab  83c408                    ADD ESP,0x8
005a47ae  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005a47b5  80bd1cfeffff00            CMP byte ptr [EBP + 0xfffffe1c],0x0
005a47bc  751b                      JNZ 0x005a47d9
005a47be  c745fc0c000000            MOV dword ptr [EBP + -0x4],0xc
005a47c5  b101                      MOV CL,0x1
005a47c7  8b9520feffff              MOV EDX,dword ptr [EBP + 0xfffffe20]
005a47cd  6a00                      PUSH 0x0
005a47cf  6a00                      PUSH 0x0
005a47d1  e8da004c00                CALL 0x00a648b0
005a47d6  83c408                    ADD ESP,0x8
005a47d9  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005a47dc  64890d00000000            MOV dword ptr FS:[0x0],ECX
005a47e3  59                        POP ECX
005a47e4  5f                        POP EDI
005a47e5  5e                        POP ESI
005a47e6  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
005a47e9  33cd                      XOR ECX,EBP
005a47eb  e83ba95400                CALL 0x00aef12b
005a47f0  8be5                      MOV ESP,EBP
005a47f2  5d                        POP EBP
005a47f3  8be3                      MOV ESP,EBX
005a47f5  5b                        POP EBX
005a47f6  c3                        RET
