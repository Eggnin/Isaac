; J460 NPC AI 0x0046fbe0 AI_0046fbe0
; types=100
; identities=100.0.0,100.1.0
; entry=0046fbe0
0046fbe0  53                        PUSH EBX
0046fbe1  8bdc                      MOV EBX,ESP
0046fbe3  83ec08                    SUB ESP,0x8
0046fbe6  83e4f8                    AND ESP,0xfffffff8
0046fbe9  83c404                    ADD ESP,0x4
0046fbec  55                        PUSH EBP
0046fbed  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0046fbf0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0046fbf4  8bec                      MOV EBP,ESP
0046fbf6  6aff                      PUSH -0x1
0046fbf8  680129af00                PUSH 0xaf2901
0046fbfd  64a100000000              MOV EAX,FS:[0x0]
0046fc03  50                        PUSH EAX
0046fc04  53                        PUSH EBX
0046fc05  81ecd0010000              SUB ESP,0x1d0
0046fc0b  a1b493bf00                MOV EAX,[0x00bf93b4]
0046fc10  33c5                      XOR EAX,EBP
0046fc12  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0046fc15  56                        PUSH ESI
0046fc16  57                        PUSH EDI
0046fc17  50                        PUSH EAX
0046fc18  8d45f4                    LEA EAX,[EBP + -0xc]
0046fc1b  64a300000000              MOV FS:[0x0],EAX
0046fc21  8bf9                      MOV EDI,ECX
0046fc23  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0046fc2a  750f                      JNZ 0x0046fc3b
0046fc2c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0046fc36  e9070b0000                JMP 0x00470742
0046fc3b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046fc43  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0046fc49  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046fc51  51                        PUSH ECX
0046fc52  c7042400000000            MOV dword ptr [ESP],0x0
0046fc59  50                        PUSH EAX
0046fc5a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046fc62  e8d9ef2400                CALL 0x006bec40
0046fc67  8db73c030000              LEA ESI,[EDI + 0x33c]
0046fc6d  8bcf                      MOV ECX,EDI
0046fc6f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0046fc73  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0046fc77  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0046fc7f  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0046fc84  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0046fc89  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0046fc91  e8aaeb2400                CALL 0x006be840
0046fc96  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046fc9e  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0046fca6  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0046fcaa  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0046fcaf  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0046fcb5  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0046fcbf  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0046fcc9  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0046fcd1  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0046fcd9  83f804                    CMP EAX,0x4
0046fcdc  0f855b030000              JNZ 0x0047003d
0046fce2  6a00                      PUSH 0x0
0046fce4  8d4f48                    LEA ECX,[EDI + 0x48]
0046fce7  6854bcb100                PUSH 0xb1bc54
0046fcec  e88fa6f9ff                CALL 0x0040a380
0046fcf1  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0046fcf7  33c0                      XOR EAX,EAX
0046fcf9  81e100000010              AND ECX,0x10000000
0046fcff  0bc1                      OR EAX,ECX
0046fd01  7418                      JZ 0x0046fd1b
0046fd03  a17816c700                MOV EAX,[0x00c71678]
0046fd08  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046fd0e  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0046fd11  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0046fd15  0f857d080000              JNZ 0x00470598
0046fd1b  e840f22700                CALL 0x006eef60
0046fd20  33d2                      XOR EDX,EDX
0046fd22  b903000000                MOV ECX,0x3
0046fd27  f7f1                      DIV ECX
0046fd29  85d2                      TEST EDX,EDX
0046fd2b  752a                      JNZ 0x0046fd57
0046fd2d  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0046fd35  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0046fd3d  f30f59c0                  MULSS XMM0,XMM0
0046fd41  f30f59c9                  MULSS XMM1,XMM1
0046fd45  f30f58c1                  ADDSS XMM0,XMM1
0046fd49  e8025dfcff                CALL 0x00435a50
0046fd4e  0f2f05d0a9ba00            COMISS XMM0,dword ptr [0x00baa9d0]
0046fd55  7738                      JA 0x0046fd8f
0046fd57  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046fd5b  7525                      JNZ 0x0046fd82
0046fd5d  a17816c700                MOV EAX,[0x00c71678]
0046fd62  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046fd68  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0046fd6e  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0046fd74  03c1                      ADD EAX,ECX
0046fd76  33c9                      XOR ECX,ECX
0046fd78  85c0                      TEST EAX,EAX
0046fd7a  0f4fc8                    CMOVG ECX,EAX
0046fd7d  83f905                    CMP ECX,0x5
0046fd80  7f0d                      JG 0x0046fd8f
0046fd82  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0046fd89  0f8eb2000000              JLE 0x0046fe41
0046fd8f  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0046fd97  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0046fda1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046fda9  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0046fdb1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0046fdbb  f30f59c9                  MULSS XMM1,XMM1
0046fdbf  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0046fdc9  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046fdd1  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0046fdd9  f30f59c0                  MULSS XMM0,XMM0
0046fddd  f30f58c1                  ADDSS XMM0,XMM1
0046fde1  e86a5cfcff                CALL 0x00435a50
0046fde6  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0046fded  f30f1095e0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee0]
0046fdf5  761d                      JBE 0x0046fe14
0046fdf7  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0046fdff  f30f5ec8                  DIVSS XMM1,XMM0
0046fe03  0f28c1                    MOVAPS XMM0,XMM1
0046fe06  f30f598de4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee4]
0046fe0e  f30f59d0                  MULSS XMM2,XMM0
0046fe12  eb08                      JMP 0x0046fe1c
0046fe14  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0046fe1c  f30f5915b8a7ba00          MULSS XMM2,dword ptr [0x00baa7b8]
0046fe24  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
0046fe2c  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0046fe34  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0046fe3c  e957070000                JMP 0x00470598
0046fe41  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
0046fe4b  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
0046fe55  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
0046fe5f  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0046fe65  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0046fe6c  50                        PUSH EAX
0046fe6d  6a00                      PUSH 0x0
0046fe6f  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0046fe75  c785dcfeffff04000000      MOV dword ptr [EBP + 0xfffffedc],0x4
0046fe7f  e89ccafbff                CALL 0x0042c920
0046fe84  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
0046fe8a  c785dcfeffff08000000      MOV dword ptr [EBP + 0xfffffedc],0x8
0046fe94  3b85d8feffff              CMP EAX,dword ptr [EBP + 0xfffffed8]
0046fe9a  7411                      JZ 0x0046fead
0046fe9c  c70008000000              MOV dword ptr [EAX],0x8
0046fea2  83c004                    ADD EAX,0x4
0046fea5  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0046feab  eb19                      JMP 0x0046fec6
0046fead  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0046feb3  51                        PUSH ECX
0046feb4  50                        PUSH EAX
0046feb5  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0046febb  e860cafbff                CALL 0x0042c920
0046fec0  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
0046fec6  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0046fecc  a17816c700                MOV EAX,[0x00c71678]
0046fed1  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046fed7  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0046fedd  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0046fee3  03c1                      ADD EAX,ECX
0046fee5  33c9                      XOR ECX,ECX
0046fee7  85c0                      TEST EAX,EAX
0046fee9  0f4fc8                    CMOVG ECX,EAX
0046feec  83f906                    CMP ECX,0x6
0046feef  7c10                      JL 0x0046ff01
0046fef1  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046fef5  740a                      JZ 0x0046ff01
0046fef7  32c0                      XOR AL,AL
0046fef9  8885cbfeffff              MOV byte ptr [EBP + 0xfffffecb],AL
0046feff  eb07                      JMP 0x0046ff08
0046ff01  c685cbfeffff01            MOV byte ptr [EBP + 0xfffffecb],0x1
0046ff08  6800000010                PUSH 0x10000000
0046ff0d  6a00                      PUSH 0x0
0046ff0f  8bcf                      MOV ECX,EDI
0046ff11  e81a75faff                CALL 0x00417430
0046ff16  84c0                      TEST AL,AL
0046ff18  7463                      JZ 0x0046ff7d
0046ff1a  6a00                      PUSH 0x0
0046ff1c  51                        PUSH ECX
0046ff1d  6a00                      PUSH 0x0
0046ff1f  682e030000                PUSH 0x32e
0046ff24  8bcf                      MOV ECX,EDI
0046ff26  e8b5c82300                CALL 0x006ac7e0
0046ff2b  6a00                      PUSH 0x0
0046ff2d  51                        PUSH ECX
0046ff2e  6a00                      PUSH 0x0
0046ff30  6a5e                      PUSH 0x5e
0046ff32  8bcf                      MOV ECX,EDI
0046ff34  8bf0                      MOV ESI,EAX
0046ff36  e8a5c82300                CALL 0x006ac7e0
0046ff3b  6a00                      PUSH 0x0
0046ff3d  51                        PUSH ECX
0046ff3e  6a00                      PUSH 0x0
0046ff40  6a55                      PUSH 0x55
0046ff42  8bcf                      MOV ECX,EDI
0046ff44  03f0                      ADD ESI,EAX
0046ff46  e895c82300                CALL 0x006ac7e0
0046ff4b  03c6                      ADD EAX,ESI
0046ff4d  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046ff51  6a00                      PUSH 0x0
0046ff53  51                        PUSH ECX
0046ff54  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0046ff5a  8bcf                      MOV ECX,EDI
0046ff5c  7506                      JNZ 0x0046ff64
0046ff5e  6a01                      PUSH 0x1
0046ff60  6a1d                      PUSH 0x1d
0046ff62  eb04                      JMP 0x0046ff68
0046ff64  6a00                      PUSH 0x0
0046ff66  6a12                      PUSH 0x12
0046ff68  e873c82300                CALL 0x006ac7e0
0046ff6d  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
0046ff73  03c8                      ADD ECX,EAX
0046ff75  83f903                    CMP ECX,0x3
0046ff78  0f9cc0                    SETL AL
0046ff7b  eb06                      JMP 0x0046ff83
0046ff7d  8a85cbfeffff              MOV AL,byte ptr [EBP + 0xfffffecb]
0046ff83  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
0046ff89  84c0                      TEST AL,AL
0046ff8b  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
0046ff91  743e                      JZ 0x0046ffd1
0046ff93  c785dcfeffff09000000      MOV dword ptr [EBP + 0xfffffedc],0x9
0046ff9d  3bc6                      CMP EAX,ESI
0046ff9f  7411                      JZ 0x0046ffb2
0046ffa1  c70009000000              MOV dword ptr [EAX],0x9
0046ffa7  83c004                    ADD EAX,0x4
0046ffaa  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0046ffb0  eb1f                      JMP 0x0046ffd1
0046ffb2  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0046ffb8  51                        PUSH ECX
0046ffb9  50                        PUSH EAX
0046ffba  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0046ffc0  e85bc9fbff                CALL 0x0042c920
0046ffc5  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
0046ffcb  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
0046ffd1  2b85d0feffff              SUB EAX,dword ptr [EBP + 0xfffffed0]
0046ffd7  c1f802                    SAR EAX,0x2
0046ffda  8bc8                      MOV ECX,EAX
0046ffdc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0046ffe6  e825f02000                CALL 0x0067f010
0046ffeb  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
0046fff1  8b0481                    MOV EAX,dword ptr [ECX + EAX*0x4]
0046fff4  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0046fffa  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00470001  85c9                      TEST ECX,ECX
00470003  0f848f050000              JZ 0x00470598
00470009  2bf1                      SUB ESI,ECX
0047000b  8bc1                      MOV EAX,ECX
0047000d  83e6fc                    AND ESI,0xfffffffc
00470010  81fe00100000              CMP ESI,0x1000
00470016  7216                      JC 0x0047002e
00470018  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0047001b  83c623                    ADD ESI,0x23
0047001e  2bc1                      SUB EAX,ECX
00470020  83c0fc                    ADD EAX,-0x4
00470023  83f81f                    CMP EAX,0x1f
00470026  7606                      JBE 0x0047002e
00470028  ff159488b100              CALL dword ptr [0x00b18894]
0047002e  56                        PUSH ESI
0047002f  51                        PUSH ECX
00470030  e827f16700                CALL 0x00aef15c
00470035  83c408                    ADD ESP,0x8
00470038  e95b050000                JMP 0x00470598
0047003d  83f806                    CMP EAX,0x6
00470040  0f85ff020000              JNZ 0x00470345
00470046  6a00                      PUSH 0x0
00470048  8d4f48                    LEA ECX,[EDI + 0x48]
0047004b  6860d5b100                PUSH 0xb1d560
00470050  e82ba3f9ff                CALL 0x0040a380
00470055  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00470059  750a                      JNZ 0x00470065
0047005b  c7874c0100003333b33f      MOV dword ptr [EDI + 0x14c],0x3fb33333
00470065  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00470069  0f84a5020000              JZ 0x00470314
0047006f  8d4f78                    LEA ECX,[EDI + 0x78]
00470072  6860d5b100                PUSH 0xb1d560
00470077  e854adf9ff                CALL 0x0040add0
0047007c  84c0                      TEST AL,AL
0047007e  7422                      JZ 0x004700a2
00470080  51                        PUSH ECX
00470081  c704240000803f            MOV dword ptr [ESP],0x3f800000
00470088  6a00                      PUSH 0x0
0047008a  6a02                      PUSH 0x2
0047008c  51                        PUSH ECX
0047008d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00470094  8bcf                      MOV ECX,EDI
00470096  6a0e                      PUSH 0xe
00470098  e8036b2600                CALL 0x006d6ba0
0047009d  e9c1010000                JMP 0x00470263
004700a2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004700a6  0f8468020000              JZ 0x00470314
004700ac  6874d5b100                PUSH 0xb1d574
004700b1  8d4f78                    LEA ECX,[EDI + 0x78]
004700b4  e817adf9ff                CALL 0x0040add0
004700b9  84c0                      TEST AL,AL
004700bb  0f84a2010000              JZ 0x00470263
004700c1  51                        PUSH ECX
004700c2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004700c9  6a00                      PUSH 0x0
004700cb  6a02                      PUSH 0x2
004700cd  51                        PUSH ECX
004700ce  c704240000803f            MOV dword ptr [ESP],0x3f800000
004700d5  8bcf                      MOV ECX,EDI
004700d7  6a30                      PUSH 0x30
004700d9  e8c26a2600                CALL 0x006d6ba0
004700de  e87dee2700                CALL 0x006eef60
004700e3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004700e9  50                        PUSH EAX
004700ea  6a02                      PUSH 0x2
004700ec  57                        PUSH EDI
004700ed  6840b6c700                PUSH 0xc7b640
004700f2  56                        PUSH ESI
004700f3  6a10                      PUSH 0x10
004700f5  68e8030000                PUSH 0x3e8
004700fa  e8218afbff                CALL 0x00428b20
004700ff  8bf0                      MOV ESI,EAX
00470101  e85aee2700                CALL 0x006eef60
00470106  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
0047010e  34ff                      XOR AL,0xff
00470110  2401                      AND AL,0x1
00470112  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
0047011c  888648010000              MOV byte ptr [ESI + 0x148],AL
00470122  0f28d8                    MOVAPS XMM3,XMM0
00470125  c786e000000000007041      MOV dword ptr [ESI + 0xe0],0x41700000
0047012f  0f28d0                    MOVAPS XMM2,XMM0
00470132  c786e40000006666a63f      MOV dword ptr [ESI + 0xe4],0x3fa66666
0047013c  0f28c8                    MOVAPS XMM1,XMM0
0047013f  c786e80000000000803f      MOV dword ptr [ESI + 0xe8],0x3f800000
00470149  8b06                      MOV EAX,dword ptr [ESI]
0047014b  51                        PUSH ECX
0047014c  8d4d94                    LEA ECX,[EBP + -0x6c]
0047014f  c704243333333f            MOV dword ptr [ESP],0x3f333333
00470156  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
00470159  e89237fbff                CALL 0x004238f0
0047015e  6a01                      PUSH 0x1
00470160  6a00                      PUSH 0x0
00470162  68ff000000                PUSH 0xff
00470167  6aff                      PUSH -0x1
00470169  50                        PUSH EAX
0047016a  8bce                      MOV ECX,ESI
0047016c  ffd2                      CALL EDX
0047016e  57                        PUSH EDI
0047016f  8bce                      MOV ECX,ESI
00470171  e83a63feff                CALL 0x004564b0
00470176  8b06                      MOV EAX,dword ptr [ESI]
00470178  8bce                      MOV ECX,ESI
0047017a  ff500c                    CALL dword ptr [EAX + 0xc]
0047017d  a17816c700                MOV EAX,[0x00c71678]
00470182  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
0047018a  6aff                      PUSH -0x1
0047018c  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00470192  8d873c030000              LEA EAX,[EDI + 0x33c]
00470198  50                        PUSH EAX
00470199  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
0047019f  81c118120000              ADD ECX,0x1218
004701a5  50                        PUSH EAX
004701a6  e8e5a5faff                CALL 0x0041a790
004701ab  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004701b2  33c9                      XOR ECX,ECX
004701b4  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
004701ba  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
004701c0  85f6                      TEST ESI,ESI
004701c2  746d                      JZ 0x00470231
004701c4  0f1f4000                  NOP dword ptr [EAX]
004701c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004701d0  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
004701d6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004701d9  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
004701df  8b5028                    MOV EDX,dword ptr [EAX + 0x28]
004701e2  83fa0a                    CMP EDX,0xa
004701e5  7c3f                      JL 0x00470226
004701e7  3b5728                    CMP EDX,dword ptr [EDI + 0x28]
004701ea  743a                      JZ 0x00470226
004701ec  8b00                      MOV EAX,dword ptr [EAX]
004701ee  8d8d78feffff              LEA ECX,[EBP + 0xfffffe78]
004701f4  57                        PUSH EDI
004701f5  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
004701f8  e81311fcff                CALL 0x00431310
004701fd  6a1e                      PUSH 0x1e
004701ff  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
00470205  50                        PUSH EAX
00470206  6a00                      PUSH 0x0
00470208  6a00                      PUSH 0x0
0047020a  51                        PUSH ECX
0047020b  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00470211  c704240000c842            MOV dword ptr [ESP],0x42c80000
00470218  ffd6                      CALL ESI
0047021a  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00470220  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
00470226  41                        INC ECX
00470227  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
0047022d  3bce                      CMP ECX,ESI
0047022f  729f                      JC 0x004701d0
00470231  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00470238  80bdccfeffff00            CMP byte ptr [EBP + 0xfffffecc],0x0
0047023f  7522                      JNZ 0x00470263
00470241  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00470248  b101                      MOV CL,0x1
0047024a  8b95d0feffff              MOV EDX,dword ptr [EBP + 0xfffffed0]
00470250  6a00                      PUSH 0x0
00470252  6a00                      PUSH 0x0
00470254  e857465f00                CALL 0x00a648b0
00470259  83c408                    ADD ESP,0x8
0047025c  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00470263  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00470267  0f84a7000000              JZ 0x00470314
0047026d  6860d5b100                PUSH 0xb1d560
00470272  8d4f78                    LEA ECX,[EDI + 0x78]
00470275  e8f6abf9ff                CALL 0x0040ae70
0047027a  84c0                      TEST AL,AL
0047027c  0f8483000000              JZ 0x00470305
00470282  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00470286  7411                      JZ 0x00470299
00470288  6874d5b100                PUSH 0xb1d574
0047028d  8d4f78                    LEA ECX,[EDI + 0x78]
00470290  e8dbabf9ff                CALL 0x0040ae70
00470295  84c0                      TEST AL,AL
00470297  756c                      JNZ 0x00470305
00470299  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
004702a1  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
004702a8  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004702b2  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004702bc  9f                        LAHF
004702bd  f6c444                    TEST AH,0x44
004702c0  7b43                      JNP 0x00470305
004702c2  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004702ca  0f28c1                    MOVAPS XMM0,XMM1
004702cd  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
004702d5  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
004702dd  f30f5eca                  DIVSS XMM1,XMM2
004702e1  f30f5ec2                  DIVSS XMM0,XMM2
004702e5  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004702ed  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004702f5  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004702fd  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00470305  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00470309  7409                      JZ 0x00470314
0047030b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00470312  7514                      JNZ 0x00470328
00470314  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047031e  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
00470328  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00470330  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00470338  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00470340  e953020000                JMP 0x00470598
00470345  83f808                    CMP EAX,0x8
00470348  0f8565070000              JNZ 0x00470ab3
0047034e  6a00                      PUSH 0x0
00470350  8d4f48                    LEA ECX,[EDI + 0x48]
00470353  683cd5b100                PUSH 0xb1d53c
00470358  e823a0f9ff                CALL 0x0040a380
0047035d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00470361  0f8427020000              JZ 0x0047058e
00470367  68dcd2b100                PUSH 0xb1d2dc
0047036c  8d4f78                    LEA ECX,[EDI + 0x78]
0047036f  e85caaf9ff                CALL 0x0040add0
00470374  84c0                      TEST AL,AL
00470376  0f84bb010000              JZ 0x00470537
0047037c  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00470380  7568                      JNZ 0x004703ea
00470382  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00470388  e8a3ebfcff                CALL 0x0043ef30
0047038d  0f280530c6ba00            MOVAPS XMM0,xmmword ptr [0x00bac630]
00470394  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0047039a  50                        PUSH EAX
0047039b  6a08                      PUSH 0x8
0047039d  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004703a3  c78534ffffff8d8c0c3f      MOV dword ptr [EBP + 0xffffff34],0x3f0c8c8d
004703ad  50                        PUSH EAX
004703ae  56                        PUSH ESI
004703af  8bcf                      MOV ECX,EDI
004703b1  c78538ffffff8d8c0c3f      MOV dword ptr [EBP + 0xffffff38],0x3f0c8c8d
004703bb  0f118514ffffff            MOVUPS xmmword ptr [EBP + 0xffffff14],XMM0
004703c2  c7853cffffff8d8c0c3f      MOV dword ptr [EBP + 0xffffff3c],0x3f0c8c8d
004703cc  c785d4feffff00002041      MOV dword ptr [EBP + 0xfffffed4],0x41200000
004703d6  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
004703e0  e8fbae2500                CALL 0x006cb2e0
004703e5  e943010000                JMP 0x0047052d
004703ea  8b5730                    MOV EDX,dword ptr [EDI + 0x30]
004703ed  b802000000                MOV EAX,0x2
004703f2  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
004703f8  b91e000000                MOV ECX,0x1e
004703fd  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
00470403  3bd0                      CMP EDX,EAX
00470405  7410                      JZ 0x00470417
00470407  83fa01                    CMP EDX,0x1
0047040a  7513                      JNZ 0x0047041f
0047040c  b95e000000                MOV ECX,0x5e
00470411  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
00470417  33c0                      XOR EAX,EAX
00470419  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0047041f  50                        PUSH EAX
00470420  51                        PUSH ECX
00470421  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00470427  8bcf                      MOV ECX,EDI
00470429  50                        PUSH EAX
0047042a  e831082600                CALL 0x006d0c60
0047042f  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
00470436  83bdc4feffff03            CMP dword ptr [EBP + 0xfffffec4],0x3
0047043d  0f83d2000000              JNC 0x00470515
00470443  6800000010                PUSH 0x10000000
00470448  6a00                      PUSH 0x0
0047044a  8bcf                      MOV ECX,EDI
0047044c  e8df6ffaff                CALL 0x00417430
00470451  84c0                      TEST AL,AL
00470453  740d                      JZ 0x00470462
00470455  83bdc4feffff02            CMP dword ptr [EBP + 0xfffffec4],0x2
0047045c  0f83b3000000              JNC 0x00470515
00470462  e8f9ea2700                CALL 0x006eef60
00470467  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0047046b  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00470470  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
00470478  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
00470480  6a00                      PUSH 0x0
00470482  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00470488  68acd6c500                PUSH 0xc5d6ac
0047048d  68dcd5c500                PUSH 0xc5d5dc
00470492  6a00                      PUSH 0x0
00470494  50                        PUSH EAX
00470495  6a00                      PUSH 0x0
00470497  57                        PUSH EDI
00470498  6840b6c700                PUSH 0xc7b640
0047049d  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004704a3  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
004704ab  50                        PUSH EAX
004704ac  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
004704b2  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004704ba  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
004704c0  e85b86fbff                CALL 0x00428b20
004704c5  50                        PUSH EAX
004704c6  e8e6036800                CALL 0x00af08b1
004704cb  83c414                    ADD ESP,0x14
004704ce  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
004704d4  8bcf                      MOV ECX,EDI
004704d6  c7808003000000002041      MOV dword ptr [EAX + 0x380],0x41200000
004704e0  6800000010                PUSH 0x10000000
004704e5  6a00                      PUSH 0x0
004704e7  e8446ffaff                CALL 0x00417430
004704ec  84c0                      TEST AL,AL
004704ee  7425                      JZ 0x00470515
004704f0  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
004704f6  8b01                      MOV EAX,dword ptr [ECX]
004704f8  ff500c                    CALL dword ptr [EAX + 0xc]
004704fb  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
00470501  c780800300000000803f      MOV dword ptr [EAX + 0x380],0x3f800000
0047050b  c780840300000000803f      MOV dword ptr [EAX + 0x384],0x3f800000
00470515  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0047051b  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
00470521  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00470528  e88370faff                CALL 0x004175b0
0047052d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00470537  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047053b  7451                      JZ 0x0047058e
0047053d  68dcd2b100                PUSH 0xb1d2dc
00470542  8d4f78                    LEA ECX,[EDI + 0x78]
00470545  e826a9f9ff                CALL 0x0040ae70
0047054a  84c0                      TEST AL,AL
0047054c  7431                      JZ 0x0047057f
0047054e  6860d5b100                PUSH 0xb1d560
00470553  8d4f48                    LEA ECX,[EDI + 0x48]
00470556  e835abf9ff                CALL 0x0040b090
0047055b  84c0                      TEST AL,AL
0047055d  7520                      JNZ 0x0047057f
0047055f  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00470567  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0047056f  2bc8                      SUB ECX,EAX
00470571  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
00470577  85c9                      TEST ECX,ECX
00470579  0f8fe7010000              JG 0x00470766
0047057f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00470583  7409                      JZ 0x0047058e
00470585  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047058c  750a                      JNZ 0x00470598
0047058e  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00470598  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0047059f  0f849d010000              JZ 0x00470742
004705a5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004705a9  7564                      JNZ 0x0047060f
004705ab  c785dcfeffff03000000      MOV dword ptr [EBP + 0xfffffedc],0x3
004705b5  8db73c030000              LEA ESI,[EDI + 0x33c]
004705bb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004705c0  a17816c700                MOV EAX,[0x00c71678]
004705c5  6a00                      PUSH 0x0
004705c7  6a00                      PUSH 0x0
004705c9  6a00                      PUSH 0x0
004705cb  51                        PUSH ECX
004705cc  c704240000c842            MOV dword ptr [ESP],0x42c80000
004705d3  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
004705d9  56                        PUSH ESI
004705da  51                        PUSH ECX
004705db  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004705e1  e83a2f3a00                CALL 0x00813520
004705e6  51                        PUSH ECX
004705e7  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
004705ee  6a00                      PUSH 0x0
004705f0  ff3544b6c700              PUSH dword ptr [0x00c7b644]
004705f6  ff3540b6c700              PUSH dword ptr [0x00c7b640]
004705fc  57                        PUSH EDI
004705fd  56                        PUSH ESI
004705fe  e84d212500                CALL 0x006c2750
00470603  83c418                    ADD ESP,0x18
00470606  83addcfeffff01            SUB dword ptr [EBP + 0xfffffedc],0x1
0047060d  75b1                      JNZ 0x004705c0
0047060f  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00470615  33c0                      XOR EAX,EAX
00470617  81e100000010              AND ECX,0x10000000
0047061d  0bc1                      OR EAX,ECX
0047061f  0f841d010000              JZ 0x00470742
00470625  6a00                      PUSH 0x0
00470627  6a00                      PUSH 0x0
00470629  ff7728                    PUSH dword ptr [EDI + 0x28]
0047062c  8d85a0feffff              LEA EAX,[EBP + 0xfffffea0]
00470632  8bcf                      MOV ECX,EDI
00470634  50                        PUSH EAX
00470635  e866062600                CALL 0x006d0ca0
0047063a  33c9                      XOR ECX,ECX
0047063c  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
00470643  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
00470649  398dacfeffff              CMP dword ptr [EBP + 0xfffffeac],ECX
0047064f  0f86c2000000              JBE 0x00470717
00470655  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
00470660  8b85a4feffff              MOV EAX,dword ptr [EBP + 0xfffffea4]
00470666  6a00                      PUSH 0x0
00470668  68acd6c500                PUSH 0xc5d6ac
0047066d  68dcd5c500                PUSH 0xc5d5dc
00470672  6a00                      PUSH 0x0
00470674  ff3488                    PUSH dword ptr [EAX + ECX*0x4]
00470677  e835026800                CALL 0x00af08b1
0047067c  8bf0                      MOV ESI,EAX
0047067e  83c414                    ADD ESP,0x14
00470681  85f6                      TEST ESI,ESI
00470683  7479                      JZ 0x004706fe
00470685  3bf7                      CMP ESI,EDI
00470687  7475                      JZ 0x004706fe
00470689  837e281e                  CMP dword ptr [ESI + 0x28],0x1e
0047068d  756f                      JNZ 0x004706fe
0047068f  8b06                      MOV EAX,dword ptr [ESI]
00470691  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
00470697  898d88feffff              MOV dword ptr [EBP + 0xfffffe88],ECX
0047069d  898d90feffff              MOV dword ptr [EBP + 0xfffffe90],ECX
004706a3  8bce                      MOV ECX,ESI
004706a5  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
004706a8  a144b6c700                MOV EAX,[0x00c7b644]
004706ad  89858cfeffff              MOV dword ptr [EBP + 0xfffffe8c],EAX
004706b3  898594feffff              MOV dword ptr [EBP + 0xfffffe94],EAX
004706b9  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
004706bf  50                        PUSH EAX
004706c0  c78578feffff00000000      MOV dword ptr [EBP + 0xfffffe78],0x0
004706ca  c7857cfeffff00000000      MOV dword ptr [EBP + 0xfffffe7c],0x0
004706d4  c78580feffff00000000      MOV dword ptr [EBP + 0xfffffe80],0x0
004706de  c78584feffff00000000      MOV dword ptr [EBP + 0xfffffe84],0x0
004706e8  c78598feffff00000000      MOV dword ptr [EBP + 0xfffffe98],0x0
004706f2  c7859cfeffff00000000      MOV dword ptr [EBP + 0xfffffe9c],0x0
004706fc  ffd2                      CALL EDX
004706fe  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00470704  41                        INC ECX
00470705  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
0047070b  3b8dacfeffff              CMP ECX,dword ptr [EBP + 0xfffffeac]
00470711  0f8249ffffff              JC 0x00470660
00470717  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0047071e  80bda0feffff00            CMP byte ptr [EBP + 0xfffffea0],0x0
00470725  751b                      JNZ 0x00470742
00470727  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
0047072e  b101                      MOV CL,0x1
00470730  8b95a4feffff              MOV EDX,dword ptr [EBP + 0xfffffea4]
00470736  6a00                      PUSH 0x0
00470738  6a00                      PUSH 0x0
0047073a  e871415f00                CALL 0x00a648b0
0047073f  83c408                    ADD ESP,0x8
00470742  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00470745  64890d00000000            MOV dword ptr FS:[0x0],ECX
0047074c  59                        POP ECX
0047074d  5f                        POP EDI
0047074e  5e                        POP ESI
0047074f  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00470752  33cd                      XOR ECX,EBP
00470754  e8d2e96700                CALL 0x00aef12b
00470759  8be5                      MOV ESP,EBP
0047075b  5d                        POP EBP
0047075c  8be3                      MOV ESP,EBX
0047075e  5b                        POP EBX
0047075f  c3                        RET
00470760  8db73c030000              LEA ESI,[EDI + 0x33c]
00470766  e8f5e72700                CALL 0x006eef60
0047076b  0f57c0                    XORPS XMM0,XMM0
0047076e  f20f2ac0                  CVTSI2SD XMM0,EAX
00470772  c1e81f                    SHR EAX,0x1f
00470775  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047077e  660f5ac0                  CVTPD2PS XMM0,XMM0
00470782  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047078a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00470792  f30f58c0                  ADDSS XMM0,XMM0
00470796  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0047079e  e87dcdfaff                CALL 0x0041d520
004707a3  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
004707ab  0f57c0                    XORPS XMM0,XMM0
004707ae  f30f2a8710040000          CVTSI2SS XMM0,dword ptr [EDI + 0x410]
004707b6  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004707be  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004707c6  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
004707ce  e86dcdfaff                CALL 0x0041d540
004707d3  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004707d7  f30f1095b4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeb4]
004707df  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004707e7  f30f5995e0feffff          MULSS XMM2,dword ptr [EBP + 0xfffffee0]
004707ef  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004707f3  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
004707f8  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
00470800  f30f1195c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM2
00470808  7533                      JNZ 0x0047083d
0047080a  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00470811  be1a000000                MOV ESI,0x1a
00470816  0f280d40c4ba00            MOVAPS XMM1,xmmword ptr [0x00bac440]
0047081d  c78574feffff00000000      MOV dword ptr [EBP + 0xfffffe74],0x0
00470827  8b8574feffff              MOV EAX,dword ptr [EBP + 0xfffffe74]
0047082d  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00470831  0f114dd0                  MOVUPS xmmword ptr [EBP + -0x30],XMM1
00470835  0f57c9                    XORPS XMM1,XMM1
00470838  0f57c0                    XORPS XMM0,XMM0
0047083b  eb32                      JMP 0x0047086f
0047083d  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00470844  0f57c9                    XORPS XMM1,XMM1
00470847  0f114dd0                  MOVUPS xmmword ptr [EBP + -0x30],XMM1
0047084b  be19000000                MOV ESI,0x19
00470850  c78548feffff0000803f      MOV dword ptr [EBP + 0xfffffe48],0x3f800000
0047085a  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00470862  8b8548feffff              MOV EAX,dword ptr [EBP + 0xfffffe48]
00470868  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0047086c  0f28c1                    MOVAPS XMM0,XMM1
0047086f  0f14c1                    UNPCKLPS XMM0,XMM1
00470872  8945e8                    MOV dword ptr [EBP + -0x18],EAX
00470875  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
0047087a  e8e1e62700                CALL 0x006eef60
0047087f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00470885  6a00                      PUSH 0x0
00470887  68acd5c500                PUSH 0xc5d5ac
0047088c  68dcd5c500                PUSH 0xc5d5dc
00470891  6a00                      PUSH 0x0
00470893  50                        PUSH EAX
00470894  6a00                      PUSH 0x0
00470896  57                        PUSH EDI
00470897  6840b6c700                PUSH 0xc7b640
0047089c  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
004708a2  50                        PUSH EAX
004708a3  56                        PUSH ESI
004708a4  68e8030000                PUSH 0x3e8
004708a9  e87282fbff                CALL 0x00428b20
004708ae  50                        PUSH EAX
004708af  e8fdff6700                CALL 0x00af08b1
004708b4  660f6e8f10040000          MOVD XMM1,dword ptr [EDI + 0x410]
004708bc  8bc8                      MOV ECX,EAX
004708be  0f5bc9                    CVTDQ2PS XMM1,XMM1
004708c1  83c414                    ADD ESP,0x14
004708c4  8b01                      MOV EAX,dword ptr [ECX]
004708c6  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004708ce  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
004708d6  0f28c1                    MOVAPS XMM0,XMM1
004708d9  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004708e1  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004708e9  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
004708f1  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
004708f9  ff500c                    CALL dword ptr [EAX + 0xc]
004708fc  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00470904  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0047090a  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00470912  83f812                    CMP EAX,0x12
00470915  750a                      JNZ 0x00470921
00470917  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0047091f  eb0d                      JMP 0x0047092e
00470921  83f813                    CMP EAX,0x13
00470924  7510                      JNZ 0x00470936
00470926  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0047092e  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00470936  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047093c  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
00470942  c785e0feffffb9000000      MOV dword ptr [EBP + 0xfffffee0],0xb9
0047094c  e82f5e4e00                CALL 0x00956780
00470951  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00470959  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047095f  83ec08                    SUB ESP,0x8
00470962  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047096a  f30f110424                MOVSS dword ptr [ESP],XMM0
0047096f  6a00                      PUSH 0x0
00470971  6a02                      PUSH 0x2
00470973  51                        PUSH ECX
00470974  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0047097b  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
00470981  e8aad24b00                CALL 0x0092dc30
00470986  f30f108dc4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec4]
0047098e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00470996  f30f1095c0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec0]
0047099e  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004709a6  0f28c1                    MOVAPS XMM0,XMM1
004709a9  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004709b1  f30f59c1                  MULSS XMM0,XMM1
004709b5  0f28ca                    MOVAPS XMM1,XMM2
004709b8  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
004709c0  f30f59ca                  MULSS XMM1,XMM2
004709c4  f30f58c1                  ADDSS XMM0,XMM1
004709c8  e88350fcff                CALL 0x00435a50
004709cd  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004709d4  f30f1095e4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee4]
004709dc  7621                      JBE 0x004709ff
004709de  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004709e6  f30f5ec8                  DIVSS XMM1,XMM0
004709ea  0f28c1                    MOVAPS XMM0,XMM1
004709ed  f30f59d0                  MULSS XMM2,XMM0
004709f1  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004709f9  f30f59c1                  MULSS XMM0,XMM1
004709fd  eb08                      JMP 0x00470a07
004709ff  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00470a07  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
00470a0f  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00470a17  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
00470a1f  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
00470a27  e834e52700                CALL 0x006eef60
00470a2c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00470a32  50                        PUSH EAX
00470a33  6a02                      PUSH 0x2
00470a35  6a00                      PUSH 0x0
00470a37  6840b6c700                PUSH 0xc7b640
00470a3c  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00470a42  50                        PUSH EAX
00470a43  6a02                      PUSH 0x2
00470a45  68e8030000                PUSH 0x3e8
00470a4a  e8d180fbff                CALL 0x00428b20
00470a4f  8bf0                      MOV ESI,EAX
00470a51  8d45c0                    LEA EAX,[EBP + -0x40]
00470a54  6a01                      PUSH 0x1
00470a56  6a00                      PUSH 0x0
00470a58  68ff000000                PUSH 0xff
00470a5d  8b0e                      MOV ECX,dword ptr [ESI]
00470a5f  6aff                      PUSH -0x1
00470a61  50                        PUSH EAX
00470a62  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00470a65  8bce                      MOV ECX,ESI
00470a67  ffd2                      CALL EDX
00470a69  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00470a71  8b85dcfeffff              MOV EAX,dword ptr [EBP + 0xfffffedc]
00470a77  f30f1186dc000000          MOVSS dword ptr [ESI + 0xdc],XMM0
00470a7f  48                        DEC EAX
00470a80  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00470a88  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
00470a90  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
00470a9a  ff8710040000              INC dword ptr [EDI + 0x410]
00470aa0  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
00470aa6  85c0                      TEST EAX,EAX
00470aa8  0f8fb2fcffff              JG 0x00470760
00470aae  e9ccfaffff                JMP 0x0047057f
00470ab3  83f809                    CMP EAX,0x9
00470ab6  0f85dcfaffff              JNZ 0x00470598
00470abc  6a00                      PUSH 0x0
00470abe  8d4f48                    LEA ECX,[EDI + 0x48]
00470ac1  6854d5b100                PUSH 0xb1d554
00470ac6  e8b598f9ff                CALL 0x0040a380
00470acb  ff8710040000              INC dword ptr [EDI + 0x410]
00470ad1  8d4f48                    LEA ECX,[EDI + 0x48]
00470ad4  6860d5b100                PUSH 0xb1d560
00470ad9  e852a5f9ff                CALL 0x0040b030
00470ade  84c0                      TEST AL,AL
00470ae0  7420                      JZ 0x00470b02
00470ae2  51                        PUSH ECX
00470ae3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00470aea  6a00                      PUSH 0x0
00470aec  6a02                      PUSH 0x2
00470aee  51                        PUSH ECX
00470aef  c70424cdcccc3f            MOV dword ptr [ESP],0x3fcccccd
00470af6  8bcf                      MOV ECX,EDI
00470af8  689e000000                PUSH 0x9e
00470afd  e89e602600                CALL 0x006d6ba0
00470b02  68dcd2b100                PUSH 0xb1d2dc
00470b07  8d4f48                    LEA ECX,[EDI + 0x48]
00470b0a  e821a5f9ff                CALL 0x0040b030
00470b0f  84c0                      TEST AL,AL
00470b11  0f8468faffff              JZ 0x0047057f
00470b17  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
00470b1f  8d4594                    LEA EAX,[EBP + -0x6c]
00470b22  0f57c0                    XORPS XMM0,XMM0
00470b25  c745b4cdcccc3e            MOV dword ptr [EBP + -0x4c],0x3ecccccd
00470b2c  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
00470b30  8bcf                      MOV ECX,EDI
00470b32  c745b85c8fc23e            MOV dword ptr [EBP + -0x48],0x3ec28f5c
00470b39  0f2805a0bcba00            MOVAPS XMM0,xmmword ptr [0x00babca0]
00470b40  50                        PUSH EAX
00470b41  56                        PUSH ESI
00470b42  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
00470b46  c745bc7b14ae3e            MOV dword ptr [EBP + -0x44],0x3eae147b
00470b4d  e8de5c2400                CALL 0x006b6830
00470b52  6800000010                PUSH 0x10000000
00470b57  6a00                      PUSH 0x0
00470b59  8bcf                      MOV ECX,EDI
00470b5b  c785e0feffff02000000      MOV dword ptr [EBP + 0xfffffee0],0x2
00470b65  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
00470b6f  c78050030000000020c2      MOV dword ptr [EAX + 0x350],0xc2200000
00470b79  e8b268faff                CALL 0x00417430
00470b7e  84c0                      TEST AL,AL
00470b80  7478                      JZ 0x00470bfa
00470b82  6a00                      PUSH 0x0
00470b84  51                        PUSH ECX
00470b85  6a00                      PUSH 0x0
00470b87  682e030000                PUSH 0x32e
00470b8c  8bcf                      MOV ECX,EDI
00470b8e  e84dbc2300                CALL 0x006ac7e0
00470b93  6a00                      PUSH 0x0
00470b95  51                        PUSH ECX
00470b96  6a00                      PUSH 0x0
00470b98  6a5e                      PUSH 0x5e
00470b9a  8bcf                      MOV ECX,EDI
00470b9c  8bf0                      MOV ESI,EAX
00470b9e  e83dbc2300                CALL 0x006ac7e0
00470ba3  6a00                      PUSH 0x0
00470ba5  51                        PUSH ECX
00470ba6  6a00                      PUSH 0x0
00470ba8  6a55                      PUSH 0x55
00470baa  8bcf                      MOV ECX,EDI
00470bac  03f0                      ADD ESI,EAX
00470bae  e82dbc2300                CALL 0x006ac7e0
00470bb3  03c6                      ADD EAX,ESI
00470bb5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00470bb9  6a00                      PUSH 0x0
00470bbb  51                        PUSH ECX
00470bbc  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
00470bc2  8bcf                      MOV ECX,EDI
00470bc4  7506                      JNZ 0x00470bcc
00470bc6  6a01                      PUSH 0x1
00470bc8  6a1d                      PUSH 0x1d
00470bca  eb04                      JMP 0x00470bd0
00470bcc  6a00                      PUSH 0x0
00470bce  6a12                      PUSH 0x12
00470bd0  e80bbc2300                CALL 0x006ac7e0
00470bd5  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00470bdb  8db73c030000              LEA ESI,[EDI + 0x33c]
00470be1  03c8                      ADD ECX,EAX
00470be3  b803000000                MOV EAX,0x3
00470be8  2bc1                      SUB EAX,ECX
00470bea  b902000000                MOV ECX,0x2
00470bef  3bc1                      CMP EAX,ECX
00470bf1  0f4ec8                    CMOVLE ECX,EAX
00470bf4  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
00470bfa  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00470bfe  0f85e5010000              JNZ 0x00470de9
00470c04  e857e32700                CALL 0x006eef60
00470c09  33d2                      XOR EDX,EDX
00470c0b  b903000000                MOV ECX,0x3
00470c10  f7f1                      DIV ECX
00470c12  85d2                      TEST EDX,EDX
00470c14  0f8506010000              JNZ 0x00470d20
00470c1a  e841e32700                CALL 0x006eef60
00470c1f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00470c25  6a00                      PUSH 0x0
00470c27  68acd6c500                PUSH 0xc5d6ac
00470c2c  68dcd5c500                PUSH 0xc5d5dc
00470c31  6a00                      PUSH 0x0
00470c33  50                        PUSH EAX
00470c34  6a00                      PUSH 0x0
00470c36  57                        PUSH EDI
00470c37  6840b6c700                PUSH 0xc7b640
00470c3c  56                        PUSH ESI
00470c3d  6a01                      PUSH 0x1
00470c3f  6a1d                      PUSH 0x1d
00470c41  e8da7efbff                CALL 0x00428b20
00470c46  50                        PUSH EAX
00470c47  e865fc6700                CALL 0x00af08b1
00470c4c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00470c52  83c414                    ADD ESP,0x14
00470c55  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
00470c5b  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
00470c61  8bcf                      MOV ECX,EDI
00470c63  e8d8db2400                CALL 0x006be840
00470c68  6a00                      PUSH 0x0
00470c6a  6a00                      PUSH 0x0
00470c6c  6a00                      PUSH 0x0
00470c6e  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00470c74  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
00470c7a  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00470c80  51                        PUSH ECX
00470c81  c7042400004842            MOV dword ptr [ESP],0x42480000
00470c88  50                        PUSH EAX
00470c89  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00470c8f  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
00470c95  50                        PUSH EAX
00470c96  8bce                      MOV ECX,ESI
00470c98  8995d8feffff              MOV dword ptr [EBP + 0xfffffed8],EDX
00470c9e  e87d283a00                CALL 0x00813520
00470ca3  8bb5dcfeffff              MOV ESI,dword ptr [EBP + 0xfffffedc]
00470ca9  6a01                      PUSH 0x1
00470cab  681cdeb100                PUSH 0xb1de1c
00470cb0  8b08                      MOV ECX,dword ptr [EAX]
00470cb2  898e34030000              MOV dword ptr [ESI + 0x334],ECX
00470cb8  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00470cbb  898638030000              MOV dword ptr [ESI + 0x338],EAX
00470cc1  8d4648                    LEA EAX,[ESI + 0x48]
00470cc4  8bc8                      MOV ECX,EAX
00470cc6  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00470cd0  c7861004000005000000      MOV dword ptr [ESI + 0x410],0x5
00470cda  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
00470ce0  e8eb98f9ff                CALL 0x0040a5d0
00470ce5  84c0                      TEST AL,AL
00470ce7  7418                      JZ 0x00470d01
00470ce9  8bb5b4feffff              MOV ESI,dword ptr [EBP + 0xfffffeb4]
00470cef  8d4e30                    LEA ECX,[ESI + 0x30]
00470cf2  e8b994f9ff                CALL 0x0040a1b0
00470cf7  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00470cfb  8bb5dcfeffff              MOV ESI,dword ptr [EBP + 0xfffffedc]
00470d01  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00470d05  0f848df8ffff              JZ 0x00470598
00470d0b  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00470d13  8d4e78                    LEA ECX,[ESI + 0x78]
00470d16  e8e580f9ff                CALL 0x00408e00
00470d1b  e978f8ffff                JMP 0x00470598
00470d20  e83be22700                CALL 0x006eef60
00470d25  83e001                    AND EAX,0x1
00470d28  0f8586000000              JNZ 0x00470db4
00470d2e  a17816c700                MOV EAX,[0x00c71678]
00470d33  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00470d39  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
00470d3f  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
00470d45  03c1                      ADD EAX,ECX
00470d47  33c9                      XOR ECX,ECX
00470d49  85c0                      TEST EAX,EAX
00470d4b  0f4fc8                    CMOVG ECX,EAX
00470d4e  83f905                    CMP ECX,0x5
00470d51  7d61                      JGE 0x00470db4
00470d53  83bde0feffff00            CMP dword ptr [EBP + 0xfffffee0],0x0
00470d5a  0f8e38f8ffff              JLE 0x00470598
00470d60  a17816c700                MOV EAX,[0x00c71678]
00470d65  6a00                      PUSH 0x0
00470d67  6a00                      PUSH 0x0
00470d69  6a00                      PUSH 0x0
00470d6b  51                        PUSH ECX
00470d6c  c704240000c842            MOV dword ptr [ESP],0x42c80000
00470d73  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
00470d79  56                        PUSH ESI
00470d7a  51                        PUSH ECX
00470d7b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00470d81  e89a273a00                CALL 0x00813520
00470d86  51                        PUSH ECX
00470d87  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
00470d8e  6a00                      PUSH 0x0
00470d90  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
00470d96  ffb5d4feffff              PUSH dword ptr [EBP + 0xfffffed4]
00470d9c  57                        PUSH EDI
00470d9d  56                        PUSH ESI
00470d9e  e8ad192500                CALL 0x006c2750
00470da3  83c418                    ADD ESP,0x18
00470da6  83ade0feffff01            SUB dword ptr [EBP + 0xfffffee0],0x1
00470dad  75b1                      JNZ 0x00470d60
00470daf  e9e4f7ffff                JMP 0x00470598
00470db4  a17816c700                MOV EAX,[0x00c71678]
00470db9  6a00                      PUSH 0x0
00470dbb  6a00                      PUSH 0x0
00470dbd  6a00                      PUSH 0x0
00470dbf  51                        PUSH ECX
00470dc0  c704240000c842            MOV dword ptr [ESP],0x42c80000
00470dc7  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
00470dcd  56                        PUSH ESI
00470dce  51                        PUSH ECX
00470dcf  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00470dd5  e846273a00                CALL 0x00813520
00470dda  51                        PUSH ECX
00470ddb  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
00470de2  6a01                      PUSH 0x1
00470de4  e93e020000                JMP 0x00471027
00470de9  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00470dec  83f802                    CMP EAX,0x2
00470def  0f856e010000              JNZ 0x00470f63
00470df5  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00470dfb  50                        PUSH EAX
00470dfc  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
00470e02  e829f25900                CALL 0x00a10030
00470e07  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00470e0b  f30f590d3ca8ba00          MULSS XMM1,dword ptr [0x00baa83c]
00470e13  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
00470e1b  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00470e20  f30f590d3ca8ba00          MULSS XMM1,dword ptr [0x00baa83c]
00470e28  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
00470e30  e82be12700                CALL 0x006eef60
00470e35  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
00470e3d  f30f109de4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee4]
00470e45  0f28c8                    MOVAPS XMM1,XMM0
00470e48  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00470e50  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00470e56  f30f591d80a2ba00          MULSS XMM3,dword ptr [0x00baa280]
00470e5e  6a00                      PUSH 0x0
00470e60  68acd6c500                PUSH 0xc5d6ac
00470e65  68dcd5c500                PUSH 0xc5d5dc
00470e6a  6a00                      PUSH 0x0
00470e6c  50                        PUSH EAX
00470e6d  6a00                      PUSH 0x0
00470e6f  57                        PUSH EDI
00470e70  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00470e76  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00470e7e  f30f5885e4feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffee4]
00470e86  50                        PUSH EAX
00470e87  f30f58cb                  ADDSS XMM1,XMM3
00470e8b  f30f119db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM3
00470e93  56                        PUSH ESI
00470e94  6a00                      PUSH 0x0
00470e96  6a12                      PUSH 0x12
00470e98  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
00470ea0  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
00470ea8  e8737cfbff                CALL 0x00428b20
00470ead  50                        PUSH EAX
00470eae  e8fef96700                CALL 0x00af08b1
00470eb3  83c414                    ADD ESP,0x14
00470eb6  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00470ebd  83bde0feffff01            CMP dword ptr [EBP + 0xfffffee0],0x1
00470ec4  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00470eca  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
00470ed1  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00470ed7  0f8ebbf6ffff              JLE 0x00470598
00470edd  e87ee02700                CALL 0x006eef60
00470ee2  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
00470eea  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
00470ef2  f30f5c85b4feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffeb4]
00470efa  f30f5c8dc4feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffec4]
00470f02  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00470f08  6a00                      PUSH 0x0
00470f0a  68acd6c500                PUSH 0xc5d6ac
00470f0f  68dcd5c500                PUSH 0xc5d5dc
00470f14  6a00                      PUSH 0x0
00470f16  50                        PUSH EAX
00470f17  6a00                      PUSH 0x0
00470f19  57                        PUSH EDI
00470f1a  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00470f20  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
00470f28  50                        PUSH EAX
00470f29  56                        PUSH ESI
00470f2a  6a00                      PUSH 0x0
00470f2c  6a12                      PUSH 0x12
00470f2e  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
00470f36  e8e57bfbff                CALL 0x00428b20
00470f3b  50                        PUSH EAX
00470f3c  e870f96700                CALL 0x00af08b1
00470f41  83c414                    ADD ESP,0x14
00470f44  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00470f4a  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00470f51  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
00470f58  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00470f5e  e935f6ffff                JMP 0x00470598
00470f63  8db73c030000              LEA ESI,[EDI + 0x33c]
00470f69  83f801                    CMP EAX,0x1
00470f6c  0f8585000000              JNZ 0x00470ff7
00470f72  51                        PUSH ECX
00470f73  c704240000803f            MOV dword ptr [ESP],0x3f800000
00470f7a  6a00                      PUSH 0x0
00470f7c  6a02                      PUSH 0x2
00470f7e  51                        PUSH ECX
00470f7f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00470f86  8bcf                      MOV ECX,EDI
00470f88  68b2000000                PUSH 0xb2
00470f8d  e80e5c2600                CALL 0x006d6ba0
00470f92  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00470f98  e893dffcff                CALL 0x0043ef30
00470f9d  f30f100e                  MOVSS XMM1,dword ptr [ESI]
00470fa1  8bcf                      MOV ECX,EDI
00470fa3  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00470fa8  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
00470fb0  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
00470fb8  50                        PUSH EAX
00470fb9  6a09                      PUSH 0x9
00470fbb  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00470fc1  c785d4feffff00000041      MOV dword ptr [EBP + 0xfffffed4],0x41000000
00470fcb  50                        PUSH EAX
00470fcc  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00470fd2  c785d8feffff0000c040      MOV dword ptr [EBP + 0xfffffed8],0x40c00000
00470fdc  50                        PUSH EAX
00470fdd  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
00470fe5  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00470fed  e8eea22500                CALL 0x006cb2e0
00470ff2  e9a1f5ffff                JMP 0x00470598
00470ff7  a17816c700                MOV EAX,[0x00c71678]
00470ffc  6a00                      PUSH 0x0
00470ffe  6a00                      PUSH 0x0
00471000  6a00                      PUSH 0x0
00471002  51                        PUSH ECX
00471003  c704240000c842            MOV dword ptr [ESP],0x42c80000
0047100a  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
00471010  56                        PUSH ESI
00471011  51                        PUSH ECX
00471012  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00471018  e803253a00                CALL 0x00813520
0047101d  51                        PUSH ECX
0047101e  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
00471025  6a00                      PUSH 0x0
00471027  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
0047102d  ffb5d4feffff              PUSH dword ptr [EBP + 0xfffffed4]
00471033  57                        PUSH EDI
00471034  56                        PUSH ESI
00471035  e816172500                CALL 0x006c2750
0047103a  83c418                    ADD ESP,0x18
0047103d  e956f5ffff                JMP 0x00470598
