; J460 NPC AI 0x0052c720 AI_0052c720
; types=39,49,836
; identities=39.0.0,39.1.0,39.2.0,39.22.0,39.3.0,49.0.0,49.1.0,836.0.0
; entry=0052c720
0052c720  53                        PUSH EBX
0052c721  8bdc                      MOV EBX,ESP
0052c723  83ec08                    SUB ESP,0x8
0052c726  83e4f8                    AND ESP,0xfffffff8
0052c729  83c404                    ADD ESP,0x4
0052c72c  55                        PUSH EBP
0052c72d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0052c730  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0052c734  8bec                      MOV EBP,ESP
0052c736  6aff                      PUSH -0x1
0052c738  68bd46af00                PUSH 0xaf46bd
0052c73d  64a100000000              MOV EAX,FS:[0x0]
0052c743  50                        PUSH EAX
0052c744  53                        PUSH EBX
0052c745  81ec20010000              SUB ESP,0x120
0052c74b  a1b493bf00                MOV EAX,[0x00bf93b4]
0052c750  33c5                      XOR EAX,EBP
0052c752  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0052c755  56                        PUSH ESI
0052c756  57                        PUSH EDI
0052c757  50                        PUSH EAX
0052c758  8d45f4                    LEA EAX,[EBP + -0xc]
0052c75b  64a300000000              MOV FS:[0x0],EAX
0052c761  8bf9                      MOV EDI,ECX
0052c763  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052c766  83f816                    CMP EAX,0x16
0052c769  750a                      JNZ 0x0052c775
0052c76b  e880fbffff                CALL 0x0052c2f0
0052c770  e9bd130000                JMP 0x0052db32
0052c775  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0052c77c  0f85e0010000              JNZ 0x0052c962
0052c782  817f3409010000            CMP dword ptr [EDI + 0x34],0x109
0052c789  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052c793  0f853a010000              JNZ 0x0052c8d3
0052c799  837f2827                  CMP dword ptr [EDI + 0x28],0x27
0052c79d  0f858f130000              JNZ 0x0052db32
0052c7a3  85c0                      TEST EAX,EAX
0052c7a5  0f8587130000              JNZ 0x0052db32
0052c7ab  8d4830                    LEA ECX,[EAX + 0x30]
0052c7ae  e84d07eeff                CALL 0x0040cf00
0052c7b3  0f1005b40fb600            MOVUPS XMM0,xmmword ptr [0x00b60fb4]
0052c7ba  8bc8                      MOV ECX,EAX
0052c7bc  c745cc2c000000            MOV dword ptr [EBP + -0x34],0x2c
0052c7c3  c745d02f000000            MOV dword ptr [EBP + -0x30],0x2f
0052c7ca  894dbc                    MOV dword ptr [EBP + -0x44],ECX
0052c7cd  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0052c7d0  0f1005c40fb600            MOVUPS XMM0,xmmword ptr [0x00b60fc4]
0052c7d7  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0052c7db  f30f7e05d40fb600          MOVQ XMM0,qword ptr [0x00b60fd4]
0052c7e3  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0052c7e8  a1dc0fb600                MOV EAX,[0x00b60fdc]
0052c7ed  894128                    MOV dword ptr [ECX + 0x28],EAX
0052c7f0  c6412c00                  MOV byte ptr [ECX + 0x2c],0x0
0052c7f4  8d45bc                    LEA EAX,[EBP + -0x44]
0052c7f7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0052c7fe  50                        PUSH EAX
0052c7ff  6a01                      PUSH 0x1
0052c801  8d4f48                    LEA ECX,[EDI + 0x48]
0052c804  e827f7edff                CALL 0x0040bf30
0052c809  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0052c810  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0052c813  83fa10                    CMP EDX,0x10
0052c816  722e                      JC 0x0052c846
0052c818  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0052c81b  42                        INC EDX
0052c81c  8bc1                      MOV EAX,ECX
0052c81e  81fa00100000              CMP EDX,0x1000
0052c824  7216                      JC 0x0052c83c
0052c826  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0052c829  83c223                    ADD EDX,0x23
0052c82c  2bc1                      SUB EAX,ECX
0052c82e  83c0fc                    ADD EAX,-0x4
0052c831  83f81f                    CMP EAX,0x1f
0052c834  7606                      JBE 0x0052c83c
0052c836  ff159488b100              CALL dword ptr [0x00b18894]
0052c83c  52                        PUSH EDX
0052c83d  51                        PUSH ECX
0052c83e  e819295c00                CALL 0x00aef15c
0052c843  83c408                    ADD ESP,0x8
0052c846  51                        PUSH ECX
0052c847  8d4f48                    LEA ECX,[EDI + 0x48]
0052c84a  e8b1f7edff                CALL 0x0040c000
0052c84f  6a00                      PUSH 0x0
0052c851  8d4f48                    LEA ECX,[EDI + 0x48]
0052c854  e8c7e9edff                CALL 0x0040b220
0052c859  6a50                      PUSH 0x50
0052c85b  6a64                      PUSH 0x64
0052c85d  6a64                      PUSH 0x64
0052c85f  68ff000000                PUSH 0xff
0052c864  6a0a                      PUSH 0xa
0052c866  6a50                      PUSH 0x50
0052c868  6a0a                      PUSH 0xa
0052c86a  8d4da8                    LEA ECX,[EBP + -0x58]
0052c86d  c74048f2f0f03e            MOV dword ptr [EAX + 0x48],0x3ef0f0f2
0052c874  c7404c8382023f            MOV dword ptr [EAX + 0x4c],0x3f028283
0052c87b  c740508382023f            MOV dword ptr [EAX + 0x50],0x3f028283
0052c882  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
0052c889  e8b299f2ff                CALL 0x00456240
0052c88e  50                        PUSH EAX
0052c88f  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0052c895  e856a9edff                CALL 0x004071f0
0052c89a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0052c8a0  6a02                      PUSH 0x2
0052c8a2  6a32                      PUSH 0x32
0052c8a4  68e8030000                PUSH 0x3e8
0052c8a9  8d8e70a60200              LEA ECX,[ESI + 0x2a670]
0052c8af  e8fc861600                CALL 0x00694fb0
0052c8b4  85c0                      TEST EAX,EAX
0052c8b6  740c                      JZ 0x0052c8c4
0052c8b8  50                        PUSH EAX
0052c8b9  8d8e70a60200              LEA ECX,[ESI + 0x2a670]
0052c8bf  e8ccf11600                CALL 0x0069ba90
0052c8c4  682810b600                PUSH 0xb61028
0052c8c9  e84221eeff                CALL 0x0040ea10
0052c8ce  e95f120000                JMP 0x0052db32
0052c8d3  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0052c8d9  6a01                      PUSH 0x1
0052c8db  6a32                      PUSH 0x32
0052c8dd  68e8030000                PUSH 0x3e8
0052c8e2  8d8e70a60200              LEA ECX,[ESI + 0x2a670]
0052c8e8  e8c3861600                CALL 0x00694fb0
0052c8ed  85c0                      TEST EAX,EAX
0052c8ef  7412                      JZ 0x0052c903
0052c8f1  50                        PUSH EAX
0052c8f2  8d8e70a60200              LEA ECX,[ESI + 0x2a670]
0052c8f8  e893f11600                CALL 0x0069ba90
0052c8fd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0052c903  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
0052c909  c785f4feffff00017000      MOV dword ptr [EBP + 0xfffffef4],0x700100
0052c913  50                        PUSH EAX
0052c914  8d45e0                    LEA EAX,[EBP + -0x20]
0052c917  81c670a60200              ADD ESI,0x2a670
0052c91d  50                        PUSH EAX
0052c91e  8bce                      MOV ECX,ESI
0052c920  e81b9beeff                CALL 0x00416440
0052c925  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0052c928  80780d00                  CMP byte ptr [EAX + 0xd],0x0
0052c92c  7512                      JNZ 0x0052c940
0052c92e  81781000017000            CMP dword ptr [EAX + 0x10],0x700100
0052c935  7709                      JA 0x0052c940
0052c937  3b06                      CMP EAX,dword ptr [ESI]
0052c939  7405                      JZ 0x0052c940
0052c93b  83c018                    ADD EAX,0x18
0052c93e  eb0d                      JMP 0x0052c94d
0052c940  6a00                      PUSH 0x0
0052c942  6a00                      PUSH 0x0
0052c944  6a07                      PUSH 0x7
0052c946  8bce                      MOV ECX,ESI
0052c948  e863861600                CALL 0x00694fb0
0052c94d  85c0                      TEST EAX,EAX
0052c94f  0f84dd110000              JZ 0x0052db32
0052c955  50                        PUSH EAX
0052c956  8bce                      MOV ECX,ESI
0052c958  e833f11600                CALL 0x0069ba90
0052c95d  e9d0110000                JMP 0x0052db32
0052c962  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052c969  7538                      JNZ 0x0052c9a3
0052c96b  a17816c700                MOV EAX,[0x00c71678]
0052c970  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0052c976  8d873c030000              LEA EAX,[EDI + 0x33c]
0052c97c  50                        PUSH EAX
0052c97d  8bce                      MOV ECX,ESI
0052c97f  e80c632e00                CALL 0x00812c90
0052c984  3dbf010000                CMP EAX,0x1bf
0052c989  7718                      JA 0x0052c9a3
0052c98b  81bc866c070000b6030000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x3b6
0052c996  7f0b                      JG 0x0052c9a3
0052c998  c784866c07000084030000    MOV dword ptr [ESI + EAX*0x4 + 0x76c],0x384
0052c9a3  8bcf                      MOV ECX,EDI
0052c9a5  e8961e1900                CALL 0x006be840
0052c9aa  f30f102580a2ba00          MOVSS XMM4,dword ptr [0x00baa280]
0052c9b2  8db73c030000              LEA ESI,[EDI + 0x33c]
0052c9b8  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0052c9c0  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0052c9c8  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0052c9cc  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0052c9d1  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0052c9d7  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
0052c9df  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0052c9e7  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
0052c9ef  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0052c9f7  83f804                    CMP EAX,0x4
0052c9fa  0f85e4060000              JNZ 0x0052d0e4
0052ca00  8b0d30ddb100              MOV ECX,dword ptr [0x00b1dd30]
0052ca06  a134ddb100                MOV EAX,[0x00b1dd34]
0052ca0b  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0052ca12  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
0052ca19  894dbc                    MOV dword ptr [EBP + -0x44],ECX
0052ca1c  8945c0                    MOV dword ptr [EBP + -0x40],EAX
0052ca1f  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0052ca23  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0052ca2a  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0052ca31  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0052ca38  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
0052ca3b  8945d8                    MOV dword ptr [EBP + -0x28],EAX
0052ca3e  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0052ca42  51                        PUSH ECX
0052ca43  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0052ca47  8d45bc                    LEA EAX,[EBP + -0x44]
0052ca4a  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0052ca51  8bcf                      MOV ECX,EDI
0052ca53  50                        PUSH EAX
0052ca54  8d45d4                    LEA EAX,[EBP + -0x2c]
0052ca57  50                        PUSH EAX
0052ca58  e8d3481900                CALL 0x006c1330
0052ca5d  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0052ca61  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0052ca64  83fa10                    CMP EDX,0x10
0052ca67  7228                      JC 0x0052ca91
0052ca69  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0052ca6c  42                        INC EDX
0052ca6d  8bc1                      MOV EAX,ECX
0052ca6f  81fa00100000              CMP EDX,0x1000
0052ca75  7210                      JC 0x0052ca87
0052ca77  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0052ca7a  83c223                    ADD EDX,0x23
0052ca7d  2bc1                      SUB EAX,ECX
0052ca7f  83c0fc                    ADD EAX,-0x4
0052ca82  83f81f                    CMP EAX,0x1f
0052ca85  7749                      JA 0x0052cad0
0052ca87  52                        PUSH EDX
0052ca88  51                        PUSH ECX
0052ca89  e8ce265c00                CALL 0x00aef15c
0052ca8e  83c408                    ADD ESP,0x8
0052ca91  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0052ca98  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0052ca9b  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0052caa2  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0052caa9  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0052caad  83fa10                    CMP EDX,0x10
0052cab0  722e                      JC 0x0052cae0
0052cab2  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0052cab5  42                        INC EDX
0052cab6  8bc1                      MOV EAX,ECX
0052cab8  81fa00100000              CMP EDX,0x1000
0052cabe  7216                      JC 0x0052cad6
0052cac0  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0052cac3  83c223                    ADD EDX,0x23
0052cac6  2bc1                      SUB EAX,ECX
0052cac8  83c0fc                    ADD EAX,-0x4
0052cacb  83f81f                    CMP EAX,0x1f
0052cace  7606                      JBE 0x0052cad6
0052cad0  ff159488b100              CALL dword ptr [0x00b18894]
0052cad6  52                        PUSH EDX
0052cad7  51                        PUSH ECX
0052cad8  e87f265c00                CALL 0x00aef15c
0052cadd  83c408                    ADD ESP,0x8
0052cae0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052cae7  8d8f14040000              LEA ECX,[EDI + 0x414]
0052caed  7418                      JZ 0x0052cb07
0052caef  6a01                      PUSH 0x1
0052caf1  6a00                      PUSH 0x0
0052caf3  51                        PUSH ECX
0052caf4  c704243333333f            MOV dword ptr [ESP],0x3f333333
0052cafb  6840b6c700                PUSH 0xc7b640
0052cb00  e8bb682b00                CALL 0x007e33c0
0052cb05  eb0f                      JMP 0x0052cb16
0052cb07  6a00                      PUSH 0x0
0052cb09  51                        PUSH ECX
0052cb0a  c704243333333f            MOV dword ptr [ESP],0x3f333333
0052cb11  e82a882b00                CALL 0x007e5340
0052cb16  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
0052cb1c  83feff                    CMP ESI,-0x1
0052cb1f  7514                      JNZ 0x0052cb35
0052cb21  ff7720                    PUSH dword ptr [EDI + 0x20]
0052cb24  8bcf                      MOV ECX,EDI
0052cb26  6a03                      PUSH 0x3
0052cb28  e8e3fb1700                CALL 0x006ac710
0052cb2d  84c0                      TEST AL,AL
0052cb2f  0f84680d0000              JZ 0x0052d89d
0052cb35  837f2831                  CMP dword ptr [EDI + 0x28],0x31
0052cb39  0f85c4000000              JNZ 0x0052cc03
0052cb3f  83feff                    CMP ESI,-0x1
0052cb42  7416                      JZ 0x0052cb5a
0052cb44  6a09                      PUSH 0x9
0052cb46  8bcf                      MOV ECX,EDI
0052cb48  e813b71a00                CALL 0x006d8260
0052cb4d  84c0                      TEST AL,AL
0052cb4f  0f84ae000000              JZ 0x0052cc03
0052cb55  e988000000                JMP 0x0052cbe2
0052cb5a  e801241c00                CALL 0x006eef60
0052cb5f  33d2                      XOR EDX,EDX
0052cb61  b90a000000                MOV ECX,0xa
0052cb66  f7f1                      DIV ECX
0052cb68  8bf2                      MOV ESI,EDX
0052cb6a  e8f1231c00                CALL 0x006eef60
0052cb6f  33d2                      XOR EDX,EDX
0052cb71  b907000000                MOV ECX,0x7
0052cb76  f7f1                      DIV ECX
0052cb78  85d2                      TEST EDX,EDX
0052cb7a  757f                      JNZ 0x0052cbfb
0052cb7c  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0052cb84  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0052cb8c  f30f59c9                  MULSS XMM1,XMM1
0052cb90  f30f59c0                  MULSS XMM0,XMM0
0052cb94  f30f58c1                  ADDSS XMM0,XMM1
0052cb98  e8b38ef0ff                CALL 0x00435a50
0052cb9d  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0052cba5  e8b6231c00                CALL 0x006eef60
0052cbaa  0f57c9                    XORPS XMM1,XMM1
0052cbad  f20f2ac8                  CVTSI2SD XMM1,EAX
0052cbb1  c1e81f                    SHR EAX,0x1f
0052cbb4  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0052cbbd  660f5ac1                  CVTPD2PS XMM0,XMM1
0052cbc1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052cbc9  f30f59051caaba00          MULSS XMM0,dword ptr [0x00baaa1c]
0052cbd1  f30f58057ca9ba00          ADDSS XMM0,dword ptr [0x00baa97c]
0052cbd9  0f2f85e8feffff            COMISS XMM0,dword ptr [EBP + 0xfffffee8]
0052cbe0  7621                      JBE 0x0052cc03
0052cbe2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0052cbec  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052cbf6  e9a20c0000                JMP 0x0052d89d
0052cbfb  85f6                      TEST ESI,ESI
0052cbfd  0f859a0c0000              JNZ 0x0052d89d
0052cc03  6a00                      PUSH 0x0
0052cc05  68000a0001                PUSH 0x1000a00
0052cc0a  8bcf                      MOV ECX,EDI
0052cc0c  e81fa8eeff                CALL 0x00417430
0052cc11  84c0                      TEST AL,AL
0052cc13  0f85840c0000              JNZ 0x0052d89d
0052cc19  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052cc20  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
0052cc28  741a                      JZ 0x0052cc44
0052cc2a  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0052cc32  8bcf                      MOV ECX,EDI
0052cc34  6a07                      PUSH 0x7
0052cc36  6a00                      PUSH 0x0
0052cc38  e823e21900                CALL 0x006cae60
0052cc3d  0fb6c0                    MOVZX EAX,AL
0052cc40  85c0                      TEST EAX,EAX
0052cc42  eb73                      JMP 0x0052ccb7
0052cc44  f30f1095f4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef4]
0052cc4c  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0052cc54  0f28c2                    MOVAPS XMM0,XMM2
0052cc57  0f54c4                    ANDPS XMM0,XMM4
0052cc5a  0f2fd8                    COMISS XMM3,XMM0
0052cc5d  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0052cc65  770f                      JA 0x0052cc76
0052cc67  0f28c8                    MOVAPS XMM1,XMM0
0052cc6a  0f54cc                    ANDPS XMM1,XMM4
0052cc6d  0f2fd9                    COMISS XMM3,XMM1
0052cc70  0f86270c0000              JBE 0x0052d89d
0052cc76  f30f59c0                  MULSS XMM0,XMM0
0052cc7a  f30f59d2                  MULSS XMM2,XMM2
0052cc7e  f30f58c2                  ADDSS XMM0,XMM2
0052cc82  e8c98df0ff                CALL 0x00435a50
0052cc87  f30f100d54abba00          MOVSS XMM1,dword ptr [0x00baab54]
0052cc8f  0f2fc8                    COMISS XMM1,XMM0
0052cc92  0f86050c0000              JBE 0x0052d89d
0052cc98  a17816c700                MOV EAX,[0x00c71678]
0052cc9d  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0052cca3  51                        PUSH ECX
0052cca4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0052ccaa  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
0052ccb0  e88b7d4100                CALL 0x00944a40
0052ccb5  84c0                      TEST AL,AL
0052ccb7  0f84e00b0000              JZ 0x0052d89d
0052ccbd  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052ccc4  8db7b00b0000              LEA ESI,[EDI + 0xbb0]
0052ccca  741b                      JZ 0x0052cce7
0052cccc  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0052ccd2  0f57d2                    XORPS XMM2,XMM2
0052ccd5  50                        PUSH EAX
0052ccd6  8bcf                      MOV ECX,EDI
0052ccd8  e8c3b81a00                CALL 0x006d85a0
0052ccdd  8bd0                      MOV EDX,EAX
0052ccdf  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0052cce5  eb0c                      JMP 0x0052ccf3
0052cce7  8d95f8feffff              LEA EDX,[EBP + 0xfffffef8]
0052cced  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
0052ccf3  e878241500                CALL 0x0067f170
0052ccf8  8b08                      MOV ECX,dword ptr [EAX]
0052ccfa  890e                      MOV dword ptr [ESI],ECX
0052ccfc  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052cd01  33c0                      XOR EAX,EAX
0052cd03  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0052cd08  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
0052cd0b  83f902                    CMP ECX,0x2
0052cd0e  0f94c0                    SETZ AL
0052cd11  83c009                    ADD EAX,0x9
0052cd14  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0052cd1a  83f902                    CMP ECX,0x2
0052cd1d  0f8481020000              JZ 0x0052cfa4
0052cd23  817f2844030000            CMP dword ptr [EDI + 0x28],0x344
0052cd2a  752b                      JNZ 0x0052cd57
0052cd2c  51                        PUSH ECX
0052cd2d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052cd33  e838b72000                CALL 0x00738470
0052cd38  83f820                    CMP EAX,0x20
0052cd3b  741a                      JZ 0x0052cd57
0052cd3d  f30f101d80a2ba00          MOVSS XMM3,dword ptr [0x00baa280]
0052cd45  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0052cd4d  f30f100dd4a1ba00          MOVSS XMM1,dword ptr [0x00baa1d4]
0052cd55  eb42                      JMP 0x0052cd99
0052cd57  817f3409010000            CMP dword ptr [EDI + 0x34],0x109
0052cd5e  7526                      JNZ 0x0052cd86
0052cd60  837f2827                  CMP dword ptr [EDI + 0x28],0x27
0052cd64  7520                      JNZ 0x0052cd86
0052cd66  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0052cd6a  751a                      JNZ 0x0052cd86
0052cd6c  f30f101d98a1ba00          MOVSS XMM3,dword ptr [0x00baa198]
0052cd74  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
0052cd7c  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
0052cd84  eb13                      JMP 0x0052cd99
0052cd86  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0052cd8e  0f57db                    XORPS XMM3,XMM3
0052cd91  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0052cd99  51                        PUSH ECX
0052cd9a  8d4da8                    LEA ECX,[EBP + -0x58]
0052cd9d  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0052cda4  e8476befff                CALL 0x004238f0
0052cda9  51                        PUSH ECX
0052cdaa  c7042400008040            MOV dword ptr [ESP],0x40800000
0052cdb1  8d95f8feffff              LEA EDX,[EBP + 0xfffffef8]
0052cdb7  50                        PUSH EAX
0052cdb8  6a1c                      PUSH 0x1c
0052cdba  56                        PUSH ESI
0052cdbb  8bcf                      MOV ECX,EDI
0052cdbd  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0052cdc7  c785fcfeffff0000a0c1      MOV dword ptr [EBP + 0xfffffefc],0xc1a00000
0052cdd1  e8baea0d00                CALL 0x0060b890
0052cdd6  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052cdd9  83c410                    ADD ESP,0x10
0052cddc  f30f102570cbba00          MOVSS XMM4,dword ptr [0x00bacb70]
0052cde4  83f827                    CMP EAX,0x27
0052cde7  7512                      JNZ 0x0052cdfb
0052cde9  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052cdec  83f801                    CMP EAX,0x1
0052cdef  741d                      JZ 0x0052ce0e
0052cdf1  83f803                    CMP EAX,0x3
0052cdf4  7418                      JZ 0x0052ce0e
0052cdf6  e9a4000000                JMP 0x0052ce9f
0052cdfb  83f831                    CMP EAX,0x31
0052cdfe  0f85a0010000              JNZ 0x0052cfa4
0052ce04  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052ce08  0f8596010000              JNZ 0x0052cfa4
0052ce0e  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0052ce16  0f57db                    XORPS XMM3,XMM3
0052ce19  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0052ce21  51                        PUSH ECX
0052ce22  8d4da8                    LEA ECX,[EBP + -0x58]
0052ce25  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0052ce2c  e8bf6aefff                CALL 0x004238f0
0052ce31  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052ce39  8d95ecfeffff              LEA EDX,[EBP + 0xfffffeec]
0052ce3f  51                        PUSH ECX
0052ce40  0f57c4                    XORPS XMM0,XMM4
0052ce43  c7042400008040            MOV dword ptr [ESP],0x40800000
0052ce4a  50                        PUSH EAX
0052ce4b  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0052ce53  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052ce59  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052ce61  8bcf                      MOV ECX,EDI
0052ce63  0f57c4                    XORPS XMM0,XMM4
0052ce66  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0052ce70  6a1c                      PUSH 0x1c
0052ce72  50                        PUSH EAX
0052ce73  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0052ce7b  c785f0feffff0000a0c1      MOV dword ptr [EBP + 0xfffffef0],0xc1a00000
0052ce85  e806ea0d00                CALL 0x0060b890
0052ce8a  83c410                    ADD ESP,0x10
0052ce8d  837f2827                  CMP dword ptr [EDI + 0x28],0x27
0052ce91  0f850d010000              JNZ 0x0052cfa4
0052ce97  f30f102570cbba00          MOVSS XMM4,dword ptr [0x00bacb70]
0052ce9f  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0052cea3  0f85fb000000              JNZ 0x0052cfa4
0052cea9  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0052ceb1  0f57db                    XORPS XMM3,XMM3
0052ceb4  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0052cebc  51                        PUSH ECX
0052cebd  8d4da8                    LEA ECX,[EBP + -0x58]
0052cec0  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0052cec7  e8246aefff                CALL 0x004238f0
0052cecc  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052ced4  8d95ecfeffff              LEA EDX,[EBP + 0xfffffeec]
0052ceda  51                        PUSH ECX
0052cedb  c7042400008040            MOV dword ptr [ESP],0x40800000
0052cee2  0f57c4                    XORPS XMM0,XMM4
0052cee5  50                        PUSH EAX
0052cee6  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0052ceee  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052cef4  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052cefc  8bcf                      MOV ECX,EDI
0052cefe  6a1c                      PUSH 0x1c
0052cf00  50                        PUSH EAX
0052cf01  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0052cf09  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0052cf13  c785f0feffff0000a0c1      MOV dword ptr [EBP + 0xfffffef0],0xc1a00000
0052cf1d  e86ee90d00                CALL 0x0060b890
0052cf22  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0052cf2a  8d4da8                    LEA ECX,[EBP + -0x58]
0052cf2d  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0052cf35  83c40c                    ADD ESP,0xc
0052cf38  0f57db                    XORPS XMM3,XMM3
0052cf3b  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0052cf42  e8a969efff                CALL 0x004238f0
0052cf47  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052cf4f  8d95ecfeffff              LEA EDX,[EBP + 0xfffffeec]
0052cf55  51                        PUSH ECX
0052cf56  c7042400008040            MOV dword ptr [ESP],0x40800000
0052cf5d  8bcf                      MOV ECX,EDI
0052cf5f  50                        PUSH EAX
0052cf60  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0052cf68  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052cf6e  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052cf76  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0052cf7d  6a1c                      PUSH 0x1c
0052cf7f  50                        PUSH EAX
0052cf80  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0052cf88  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0052cf92  c785f0feffff0000a0c1      MOV dword ptr [EBP + 0xfffffef0],0xc1a00000
0052cf9c  e8efe80d00                CALL 0x0060b890
0052cfa1  83c410                    ADD ESP,0x10
0052cfa4  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052cfae  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052cfb6  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052cfbe  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052cfc6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052cfce  83bf640b00000a            CMP dword ptr [EDI + 0xb64],0xa
0052cfd5  0f8581000000              JNZ 0x0052d05c
0052cfdb  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052cfe3  8d4f48                    LEA ECX,[EDI + 0x48]
0052cfe6  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052cfed  0f57c9                    XORPS XMM1,XMM1
0052cff0  0f2fc1                    COMISS XMM0,XMM1
0052cff3  6a00                      PUSH 0x0
0052cff5  761f                      JBE 0x0052d016
0052cff7  681810b600                PUSH 0xb61018
0052cffc  e87fd3edff                CALL 0x0040a380
0052d001  0f57c0                    XORPS XMM0,XMM0
0052d004  0f2f87b00b0000            COMISS XMM0,dword ptr [EDI + 0xbb0]
0052d00b  0f97c0                    SETA AL
0052d00e  888748010000              MOV byte ptr [EDI + 0x148],AL
0052d014  eb1a                      JMP 0x0052d030
0052d016  0f2f8fb40b0000            COMISS XMM1,dword ptr [EDI + 0xbb4]
0052d01d  7607                      JBE 0x0052d026
0052d01f  680c10b600                PUSH 0xb6100c
0052d024  eb05                      JMP 0x0052d02b
0052d026  68fc0fb600                PUSH 0xb60ffc
0052d02b  e850d3edff                CALL 0x0040a380
0052d030  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052d037  0f8460080000              JZ 0x0052d89d
0052d03d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052d041  0f8456080000              JZ 0x0052d89d
0052d047  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
0052d04f  8d4f78                    LEA ECX,[EDI + 0x78]
0052d052  e8a9bdedff                CALL 0x00408e00
0052d057  e941080000                JMP 0x0052d89d
0052d05c  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052d05f  40                        INC EAX
0052d060  50                        PUSH EAX
0052d061  688010b600                PUSH 0xb61080
0052d066  6a40                      PUSH 0x40
0052d068  6878f7c700                PUSH 0xc7f778
0052d06d  e8ae13efff                CALL 0x0041e420
0052d072  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052d075  40                        INC EAX
0052d076  50                        PUSH EAX
0052d077  687010b600                PUSH 0xb61070
0052d07c  6a40                      PUSH 0x40
0052d07e  68b8f7c700                PUSH 0xc7f7b8
0052d083  e89813efff                CALL 0x0041e420
0052d088  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052d08b  40                        INC EAX
0052d08c  50                        PUSH EAX
0052d08d  686010b600                PUSH 0xb61060
0052d092  6a40                      PUSH 0x40
0052d094  68f8f7c700                PUSH 0xc7f7f8
0052d099  e88213efff                CALL 0x0041e420
0052d09e  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052d0a6  8d4f48                    LEA ECX,[EDI + 0x48]
0052d0a9  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052d0b0  83c430                    ADD ESP,0x30
0052d0b3  0f57c9                    XORPS XMM1,XMM1
0052d0b6  0f2fc1                    COMISS XMM0,XMM1
0052d0b9  6a00                      PUSH 0x0
0052d0bb  760a                      JBE 0x0052d0c7
0052d0bd  68f8f7c700                PUSH 0xc7f7f8
0052d0c2  e935ffffff                JMP 0x0052cffc
0052d0c7  0f2f8fb40b0000            COMISS XMM1,dword ptr [EDI + 0xbb4]
0052d0ce  760a                      JBE 0x0052d0da
0052d0d0  6878f7c700                PUSH 0xc7f778
0052d0d5  e951ffffff                JMP 0x0052d02b
0052d0da  68b8f7c700                PUSH 0xc7f7b8
0052d0df  e947ffffff                JMP 0x0052d02b
0052d0e4  83f808                    CMP EAX,0x8
0052d0e7  0f85ce000000              JNZ 0x0052d1bb
0052d0ed  6a00                      PUSH 0x0
0052d0ef  685410b600                PUSH 0xb61054
0052d0f4  8d4f48                    LEA ECX,[EDI + 0x48]
0052d0f7  e884d2edff                CALL 0x0040a380
0052d0fc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052d100  0f848d070000              JZ 0x0052d893
0052d106  68dcd2b100                PUSH 0xb1d2dc
0052d10b  8d4f78                    LEA ECX,[EDI + 0x78]
0052d10e  e8bddcedff                CALL 0x0040add0
0052d113  84c0                      TEST AL,AL
0052d115  0f8469070000              JZ 0x0052d884
0052d11b  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0052d121  e80a1ef1ff                CALL 0x0043ef30
0052d126  8bc8                      MOV ECX,EAX
0052d128  e813b11a00                CALL 0x006d8240
0052d12d  85c0                      TEST EAX,EAX
0052d12f  7e0a                      JLE 0x0052d13b
0052d131  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
0052d139  eb08                      JMP 0x0052d143
0052d13b  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0052d143  51                        PUSH ECX
0052d144  6a08                      PUSH 0x8
0052d146  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d14c  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0052d154  50                        PUSH EAX
0052d155  56                        PUSH ESI
0052d156  8bcf                      MOV ECX,EDI
0052d158  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
0052d162  e879e11900                CALL 0x006cb2e0
0052d167  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052d16b  0f852c070000              JNZ 0x0052d89d
0052d171  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0052d177  e8b41df1ff                CALL 0x0043ef30
0052d17c  8bcf                      MOV ECX,EDI
0052d17e  8bf0                      MOV ESI,EAX
0052d180  e8bb161900                CALL 0x006be840
0052d185  56                        PUSH ESI
0052d186  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0052d18c  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
0052d192  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d198  51                        PUSH ECX
0052d199  c7042400000000            MOV dword ptr [ESP],0x0
0052d1a0  50                        PUSH EAX
0052d1a1  898df8feffff              MOV dword ptr [EBP + 0xfffffef8],ECX
0052d1a7  8bcf                      MOV ECX,EDI
0052d1a9  6a05                      PUSH 0x5
0052d1ab  8995fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EDX
0052d1b1  e81afc1900                CALL 0x006ccdd0
0052d1b6  e9e2060000                JMP 0x0052d89d
0052d1bb  83f809                    CMP EAX,0x9
0052d1be  0f85c2050000              JNZ 0x0052d786
0052d1c4  817f2844030000            CMP dword ptr [EDI + 0x28],0x344
0052d1cb  0f8569010000              JNZ 0x0052d33a
0052d1d1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052d1d8  0f84d8000000              JZ 0x0052d2b6
0052d1de  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0052d1e6  8bcf                      MOV ECX,EDI
0052d1e8  6a00                      PUSH 0x0
0052d1ea  e831b91a00                CALL 0x006d8b20
0052d1ef  6840b6c700                PUSH 0xc7b640
0052d1f4  8d8f34030000              LEA ECX,[EDI + 0x334]
0052d1fa  e801344e00                CALL 0x00a10600
0052d1ff  84c0                      TEST AL,AL
0052d201  7424                      JZ 0x0052d227
0052d203  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0052d209  8bcf                      MOV ECX,EDI
0052d20b  50                        PUSH EAX
0052d20c  e81fbb1a00                CALL 0x006d8d30
0052d211  8b08                      MOV ECX,dword ptr [EAX]
0052d213  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0052d219  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0052d21c  898738030000              MOV dword ptr [EDI + 0x338],EAX
0052d222  e913010000                JMP 0x0052d33a
0052d227  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0052d22f  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0052d237  f30f100de0a3ba00          MOVSS XMM1,dword ptr [0x00baa3e0]
0052d23f  0f2ed3                    UCOMISS XMM2,XMM3
0052d242  9f                        LAHF
0052d243  f6c444                    TEST AH,0x44
0052d246  7b13                      JNP 0x0052d25b
0052d248  0f28c2                    MOVAPS XMM0,XMM2
0052d24b  f30f59d1                  MULSS XMM2,XMM1
0052d24f  f30f58c1                  ADDSS XMM0,XMM1
0052d253  f30f5cc2                  SUBSS XMM0,XMM2
0052d257  f30f5ec8                  DIVSS XMM1,XMM0
0052d25b  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0052d261  0f28e3                    MOVAPS XMM4,XMM3
0052d264  50                        PUSH EAX
0052d265  8bcf                      MOV ECX,EDI
0052d267  f30f5ce1                  SUBSS XMM4,XMM1
0052d26b  e8c0ba1a00                CALL 0x006d8d30
0052d270  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0052d278  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0052d280  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0052d285  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052d289  f30f5cda                  SUBSS XMM3,XMM2
0052d28d  f30f5cc1                  SUBSS XMM0,XMM1
0052d291  f30f59dc                  MULSS XMM3,XMM4
0052d295  f30f59c4                  MULSS XMM0,XMM4
0052d299  f30f58da                  ADDSS XMM3,XMM2
0052d29d  f30f58c1                  ADDSS XMM0,XMM1
0052d2a1  f30f119f38030000          MOVSS dword ptr [EDI + 0x338],XMM3
0052d2a9  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052d2b1  e984000000                JMP 0x0052d33a
0052d2b6  83bf1004000006            CMP dword ptr [EDI + 0x410],0x6
0052d2bd  7c7b                      JL 0x0052d33a
0052d2bf  6840b6c700                PUSH 0xc7b640
0052d2c4  8d8f34030000              LEA ECX,[EDI + 0x334]
0052d2ca  e831334e00                CALL 0x00a10600
0052d2cf  84c0                      TEST AL,AL
0052d2d1  7461                      JZ 0x0052d334
0052d2d3  8bcf                      MOV ECX,EDI
0052d2d5  e866151900                CALL 0x006be840
0052d2da  8db7c4030000              LEA ESI,[EDI + 0x3c4]
0052d2e0  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
0052d2e6  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0052d2ee  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0052d2f6  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052d2fe  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0052d306  8b0e                      MOV ECX,dword ptr [ESI]
0052d308  85c9                      TEST ECX,ECX
0052d30a  741e                      JZ 0x0052d32a
0052d30c  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0052d312  89b5e8feffff              MOV dword ptr [EBP + 0xfffffee8],ESI
0052d318  50                        PUSH EAX
0052d319  81c1cc030000              ADD ECX,0x3cc
0052d31f  e8ec1efaff                CALL 0x004cf210
0052d324  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
0052d32a  56                        PUSH ESI
0052d32b  8bc8                      MOV ECX,EAX
0052d32d  8906                      MOV dword ptr [ESI],EAX
0052d32f  e8bc09faff                CALL 0x004cdcf0
0052d334  8db73c030000              LEA ESI,[EDI + 0x33c]
0052d33a  68dcd2b100                PUSH 0xb1d2dc
0052d33f  8d4f48                    LEA ECX,[EDI + 0x48]
0052d342  e8e9dcedff                CALL 0x0040b030
0052d347  84c0                      TEST AL,AL
0052d349  0f8435050000              JZ 0x0052d884
0052d34f  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
0052d357  f30f10052cadba00          MOVSS XMM0,dword ptr [0x00baad2c]
0052d35f  0f2fc3                    COMISS XMM0,XMM3
0052d362  760a                      JBE 0x0052d36e
0052d364  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0052d36c  eb08                      JMP 0x0052d376
0052d36e  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
0052d376  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0052d37e  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d384  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
0052d389  f30f5815e49fba00          ADDSS XMM2,dword ptr [0x00ba9fe4]
0052d391  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0052d399  0f28c1                    MOVAPS XMM0,XMM1
0052d39c  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0052d3a4  6a00                      PUSH 0x0
0052d3a6  57                        PUSH EDI
0052d3a7  50                        PUSH EAX
0052d3a8  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0052d3ac  6a20                      PUSH 0x20
0052d3ae  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0052d3b8  c785fcfeffff0000a0c1      MOV dword ptr [EBP + 0xfffffefc],0xc1a00000
0052d3c2  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
0052d3ca  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0052d3d2  0f28c3                    MOVAPS XMM0,XMM3
0052d3d5  e886c9f6ff                CALL 0x00499d60
0052d3da  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0052d3e2  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0052d3e8  51                        PUSH ECX
0052d3e9  f30f110424                MOVSS dword ptr [ESP],XMM0
0052d3ee  50                        PUSH EAX
0052d3ef  6a01                      PUSH 0x1
0052d3f1  e81a1f4400                CALL 0x0096f310
0052d3f6  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0052d3fe  8bf0                      MOV ESI,EAX
0052d400  83c41c                    ADD ESP,0x1c
0052d403  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
0052d40b  817f2844030000            CMP dword ptr [EDI + 0x28],0x344
0052d412  0f858e000000              JNZ 0x0052d4a6
0052d418  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0052d41e  8d87c0030000              LEA EAX,[EDI + 0x3c0]
0052d424  85c9                      TEST ECX,ECX
0052d426  741e                      JZ 0x0052d446
0052d428  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
0052d42e  81c1cc030000              ADD ECX,0x3cc
0052d434  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0052d43a  50                        PUSH EAX
0052d43b  e8d01dfaff                CALL 0x004cf210
0052d440  8d87c0030000              LEA EAX,[EDI + 0x3c0]
0052d446  50                        PUSH EAX
0052d447  8bce                      MOV ECX,ESI
0052d449  8930                      MOV dword ptr [EAX],ESI
0052d44b  e8a008faff                CALL 0x004cdcf0
0052d450  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0052d458  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
0052d460  51                        PUSH ECX
0052d461  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052d467  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0052d46f  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0052d477  e8f4af2000                CALL 0x00738470
0052d47c  83f820                    CMP EAX,0x20
0052d47f  7417                      JZ 0x0052d498
0052d481  8b06                      MOV EAX,dword ptr [ESI]
0052d483  8bce                      MOV ECX,ESI
0052d485  6a01                      PUSH 0x1
0052d487  6a00                      PUSH 0x0
0052d489  68ff000000                PUSH 0xff
0052d48e  6aff                      PUSH -0x1
0052d490  68d04dc300                PUSH 0xc34dd0
0052d495  ff503c                    CALL dword ptr [EAX + 0x3c]
0052d498  0f1005704bc300            MOVUPS XMM0,xmmword ptr [0x00c34b70]
0052d49f  0f118628040000            MOVUPS xmmword ptr [ESI + 0x428],XMM0
0052d4a6  8b06                      MOV EAX,dword ptr [ESI]
0052d4a8  8bce                      MOV ECX,ESI
0052d4aa  ff500c                    CALL dword ptr [EAX + 0xc]
0052d4ad  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052d4b0  f30f101570cbba00          MOVSS XMM2,dword ptr [0x00bacb70]
0052d4b8  83f827                    CMP EAX,0x27
0052d4bb  7518                      JNZ 0x0052d4d5
0052d4bd  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052d4c0  83f801                    CMP EAX,0x1
0052d4c3  7423                      JZ 0x0052d4e8
0052d4c5  83f803                    CMP EAX,0x3
0052d4c8  741e                      JZ 0x0052d4e8
0052d4ca  8db73c030000              LEA ESI,[EDI + 0x33c]
0052d4d0  e9f6000000                JMP 0x0052d5cb
0052d4d5  83f831                    CMP EAX,0x31
0052d4d8  0f85bf030000              JNZ 0x0052d89d
0052d4de  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052d4e2  0f85b5030000              JNZ 0x0052d89d
0052d4e8  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0052d4f0  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052d4f8  0f57ca                    XORPS XMM1,XMM2
0052d4fb  0f57c2                    XORPS XMM0,XMM2
0052d4fe  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0052d508  c785fcfeffff0000a0c1      MOV dword ptr [EBP + 0xfffffefc],0xc1a00000
0052d512  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
0052d51a  e841c8f6ff                CALL 0x00499d60
0052d51f  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0052d527  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d52d  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0052d535  6a00                      PUSH 0x0
0052d537  0f28d0                    MOVAPS XMM2,XMM0
0052d53a  8db73c030000              LEA ESI,[EDI + 0x33c]
0052d540  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0052d548  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0052d550  57                        PUSH EDI
0052d551  f30f591548a9ba00          MULSS XMM2,dword ptr [0x00baa948]
0052d559  50                        PUSH EAX
0052d55a  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0052d55e  6a20                      PUSH 0x20
0052d560  51                        PUSH ECX
0052d561  f30f111424                MOVSS dword ptr [ESP],XMM2
0052d566  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0052d56c  50                        PUSH EAX
0052d56d  6a01                      PUSH 0x1
0052d56f  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0052d577  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
0052d57f  e88c1d4400                CALL 0x0096f310
0052d584  f30f10052cadba00          MOVSS XMM0,dword ptr [0x00baad2c]
0052d58c  83c41c                    ADD ESP,0x1c
0052d58f  0f2f87b40b0000            COMISS XMM0,dword ptr [EDI + 0xbb4]
0052d596  8bc8                      MOV ECX,EAX
0052d598  760a                      JBE 0x0052d5a4
0052d59a  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
0052d5a2  eb08                      JMP 0x0052d5ac
0052d5a4  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0052d5ac  8b01                      MOV EAX,dword ptr [ECX]
0052d5ae  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
0052d5b6  ff500c                    CALL dword ptr [EAX + 0xc]
0052d5b9  837f2827                  CMP dword ptr [EDI + 0x28],0x27
0052d5bd  0f85da020000              JNZ 0x0052d89d
0052d5c3  f30f101570cbba00          MOVSS XMM2,dword ptr [0x00bacb70]
0052d5cb  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0052d5cf  0f85c8020000              JNZ 0x0052d89d
0052d5d5  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052d5dd  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0052d5e5  0f57c2                    XORPS XMM0,XMM2
0052d5e8  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0052d5f2  c785fcfeffff0000a0c1      MOV dword ptr [EBP + 0xfffffefc],0xc1a00000
0052d5fc  e85fc7f6ff                CALL 0x00499d60
0052d601  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0052d605  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d60b  0f28d0                    MOVAPS XMM2,XMM0
0052d60e  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052d616  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0052d61e  6a00                      PUSH 0x0
0052d620  f30f591548a9ba00          MULSS XMM2,dword ptr [0x00baa948]
0052d628  57                        PUSH EDI
0052d629  f30f5cc8                  SUBSS XMM1,XMM0
0052d62d  50                        PUSH EAX
0052d62e  6a20                      PUSH 0x20
0052d630  51                        PUSH ECX
0052d631  f30f111424                MOVSS dword ptr [ESP],XMM2
0052d636  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0052d63c  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0052d644  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0052d649  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0052d651  50                        PUSH EAX
0052d652  6a01                      PUSH 0x1
0052d654  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
0052d65c  e8af1c4400                CALL 0x0096f310
0052d661  f30f10052cadba00          MOVSS XMM0,dword ptr [0x00baad2c]
0052d669  83c41c                    ADD ESP,0x1c
0052d66c  0f2f87b40b0000            COMISS XMM0,dword ptr [EDI + 0xbb4]
0052d673  8bc8                      MOV ECX,EAX
0052d675  771b                      JA 0x0052d692
0052d677  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052d67f  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
0052d686  770a                      JA 0x0052d692
0052d688  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
0052d690  eb08                      JMP 0x0052d69a
0052d692  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0052d69a  8b01                      MOV EAX,dword ptr [ECX]
0052d69c  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
0052d6a4  ff500c                    CALL dword ptr [EAX + 0xc]
0052d6a7  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0052d6af  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0052d6b6  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052d6be  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0052d6c8  c785fcfeffff0000a0c1      MOV dword ptr [EBP + 0xfffffefc],0xc1a00000
0052d6d2  e889c6f6ff                CALL 0x00499d60
0052d6d7  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0052d6dc  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d6e2  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0052d6ea  6a00                      PUSH 0x0
0052d6ec  0f28d0                    MOVAPS XMM2,XMM0
0052d6ef  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052d6f7  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0052d6ff  57                        PUSH EDI
0052d700  f30f591548a9ba00          MULSS XMM2,dword ptr [0x00baa948]
0052d708  50                        PUSH EAX
0052d709  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0052d70d  6a20                      PUSH 0x20
0052d70f  51                        PUSH ECX
0052d710  f30f111424                MOVSS dword ptr [ESP],XMM2
0052d715  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0052d71b  50                        PUSH EAX
0052d71c  6a01                      PUSH 0x1
0052d71e  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0052d726  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
0052d72e  e8dd1b4400                CALL 0x0096f310
0052d733  f30f10052cadba00          MOVSS XMM0,dword ptr [0x00baad2c]
0052d73b  83c41c                    ADD ESP,0x1c
0052d73e  0f2f87b40b0000            COMISS XMM0,dword ptr [EDI + 0xbb4]
0052d745  8bc8                      MOV ECX,EAX
0052d747  7723                      JA 0x0052d76c
0052d749  0f2f87b00b0000            COMISS XMM0,dword ptr [EDI + 0xbb0]
0052d750  771a                      JA 0x0052d76c
0052d752  8b01                      MOV EAX,dword ptr [ECX]
0052d754  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
0052d75c  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
0052d764  ff500c                    CALL dword ptr [EAX + 0xc]
0052d767  e931010000                JMP 0x0052d89d
0052d76c  8b01                      MOV EAX,dword ptr [ECX]
0052d76e  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0052d776  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
0052d77e  ff500c                    CALL dword ptr [EAX + 0xc]
0052d781  e917010000                JMP 0x0052d89d
0052d786  83f80a                    CMP EAX,0xa
0052d789  0f8516010000              JNZ 0x0052d8a5
0052d78f  68dcd2b100                PUSH 0xb1d2dc
0052d794  8d4f48                    LEA ECX,[EDI + 0x48]
0052d797  e894d8edff                CALL 0x0040b030
0052d79c  84c0                      TEST AL,AL
0052d79e  0f84e0000000              JZ 0x0052d884
0052d7a4  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052d7ac  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
0052d7b4  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0052d7bc  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052d7c4  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
0052d7cc  f30f590500a5ba00          MULSS XMM0,dword ptr [0x00baa500]
0052d7d4  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0052d7dc  e87f171c00                CALL 0x006eef60
0052d7e1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052d7e7  6a00                      PUSH 0x0
0052d7e9  68acd6c500                PUSH 0xc5d6ac
0052d7ee  68dcd5c500                PUSH 0xc5d5dc
0052d7f3  6a00                      PUSH 0x0
0052d7f5  50                        PUSH EAX
0052d7f6  6a00                      PUSH 0x0
0052d7f8  57                        PUSH EDI
0052d7f9  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d7ff  50                        PUSH EAX
0052d800  56                        PUSH ESI
0052d801  6a16                      PUSH 0x16
0052d803  ff7728                    PUSH dword ptr [EDI + 0x28]
0052d806  e815b3efff                CALL 0x00428b20
0052d80b  50                        PUSH EAX
0052d80c  e8a0305c00                CALL 0x00af08b1
0052d811  83c414                    ADD ESP,0x14
0052d814  8bf0                      MOV ESI,EAX
0052d816  8bce                      MOV ECX,ESI
0052d818  57                        PUSH EDI
0052d819  c786640b000000000000      MOV dword ptr [ESI + 0xb64],0x0
0052d823  e878ba1700                CALL 0x006a92a0
0052d828  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0052d830  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052d838  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0052d83f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052d846  0f2fd0                    COMISS XMM2,XMM0
0052d849  7630                      JBE 0x0052d87b
0052d84b  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0052d853  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0052d85b  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0052d863  f30f580d20a1ba00          ADDSS XMM1,dword ptr [0x00baa120]
0052d86b  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
0052d873  f30f118e40030000          MOVSS dword ptr [ESI + 0x340],XMM1
0052d87b  8b06                      MOV EAX,dword ptr [ESI]
0052d87d  8bce                      MOV ECX,ESI
0052d87f  ff500c                    CALL dword ptr [EAX + 0xc]
0052d882  eb19                      JMP 0x0052d89d
0052d884  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052d888  7409                      JZ 0x0052d893
0052d88a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052d891  750a                      JNZ 0x0052d89d
0052d893  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052d89d  f30f102580a2ba00          MOVSS XMM4,dword ptr [0x00baa280]
0052d8a5  817f2844030000            CMP dword ptr [EDI + 0x28],0x344
0052d8ac  0f8550020000              JNZ 0x0052db02
0052d8b2  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0052d8b8  85c0                      TEST EAX,EAX
0052d8ba  7406                      JZ 0x0052d8c2
0052d8bc  83782807                  CMP dword ptr [EAX + 0x28],0x7
0052d8c0  740d                      JZ 0x0052d8cf
0052d8c2  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
0052d8c9  0f85fd010000              JNZ 0x0052dacc
0052d8cf  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
0052d8d5  85c9                      TEST ECX,ECX
0052d8d7  7523                      JNZ 0x0052d8fc
0052d8d9  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052d8e0  0f84b4010000              JZ 0x0052da9a
0052d8e6  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
0052d8ec  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0052d8f2  50                        PUSH EAX
0052d8f3  8bcf                      MOV ECX,EDI
0052d8f5  e836b41a00                CALL 0x006d8d30
0052d8fa  eb39                      JMP 0x0052d935
0052d8fc  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
0052d902  83feff                    CMP ESI,-0x1
0052d905  7410                      JZ 0x0052d917
0052d907  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0052d90d  8bcf                      MOV ECX,EDI
0052d90f  50                        PUSH EAX
0052d910  e81bb41a00                CALL 0x006d8d30
0052d915  eb1e                      JMP 0x0052d935
0052d917  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
0052d91d  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
0052d923  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
0052d929  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0052d92f  898dfcfeffff              MOV dword ptr [EBP + 0xfffffefc],ECX
0052d935  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052d939  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0052d941  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0052d946  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0052d94e  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0052d956  f30f5cc1                  SUBSS XMM0,XMM1
0052d95a  f30f119df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM3
0052d962  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
0052d96a  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0052d972  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0052d97a  0f28c3                    MOVAPS XMM0,XMM3
0052d97d  f30f5cc2                  SUBSS XMM0,XMM2
0052d981  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0052d989  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0052d991  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0052d999  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0052d9a1  83feff                    CMP ESI,-0x1
0052d9a4  7408                      JZ 0x0052d9ae
0052d9a6  f30f11a5e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM4
0052d9ae  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0052d9b6  0f28c1                    MOVAPS XMM0,XMM1
0052d9b9  8d45e4                    LEA EAX,[EBP + -0x1c]
0052d9bc  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0052d9c4  50                        PUSH EAX
0052d9c5  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0052d9cb  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
0052d9d3  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0052d9db  e850264e00                CALL 0x00a10030
0052d9e0  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0052d9e8  f30f1095e4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee4]
0052d9f0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052d9f4  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
0052d9fc  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
0052da01  f30f58c8                  ADDSS XMM1,XMM0
0052da05  0f57c0                    XORPS XMM0,XMM0
0052da08  0f2fc1                    COMISS XMM0,XMM1
0052da0b  760c                      JBE 0x0052da19
0052da0d  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
0052da15  f30f59d1                  MULSS XMM2,XMM1
0052da19  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0052da21  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
0052da29  f30f59c0                  MULSS XMM0,XMM0
0052da2d  f30f59c9                  MULSS XMM1,XMM1
0052da31  f30f58c8                  ADDSS XMM1,XMM0
0052da35  f30f10056ca0ba00          MOVSS XMM0,dword ptr [0x00baa06c]
0052da3d  0f2fc1                    COMISS XMM0,XMM1
0052da40  721a                      JC 0x0052da5c
0052da42  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
0052da4a  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052da52  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
0052da5a  eb36                      JMP 0x0052da92
0052da5c  51                        PUSH ECX
0052da5d  8d45e4                    LEA EAX,[EBP + -0x1c]
0052da60  f30f111424                MOVSS dword ptr [ESP],XMM2
0052da65  50                        PUSH EAX
0052da66  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0052da6c  e88f264e00                CALL 0x00a10100
0052da71  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0052da79  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0052da7d  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052da85  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052da8a  f30f588738030000          ADDSS XMM0,dword ptr [EDI + 0x338]
0052da92  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052da9a  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0052daa0  85c0                      TEST EAX,EAX
0052daa2  745e                      JZ 0x0052db02
0052daa4  83782807                  CMP dword ptr [EAX + 0x28],0x7
0052daa8  7558                      JNZ 0x0052db02
0052daaa  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0052dab2  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
0052daba  f30f118034030000          MOVSS dword ptr [EAX + 0x334],XMM0
0052dac2  f30f118838030000          MOVSS dword ptr [EAX + 0x338],XMM1
0052daca  eb36                      JMP 0x0052db02
0052dacc  8d8f34030000              LEA ECX,[EDI + 0x334]
0052dad2  6840b6c700                PUSH 0xc7b640
0052dad7  e8542b4e00                CALL 0x00a10630
0052dadc  84c0                      TEST AL,AL
0052dade  7422                      JZ 0x0052db02
0052dae0  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052dae8  f30f1101                  MOVSS dword ptr [ECX],XMM0
0052daec  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052daf4  f30f114104                MOVSS dword ptr [ECX + 0x4],XMM0
0052daf9  8bcf                      MOV ECX,EDI
0052dafb  6a00                      PUSH 0x0
0052dafd  e81eb81700                CALL 0x006a9320
0052db02  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0052db0a  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0052db12  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052db1a  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0052db22  2bc8                      SUB ECX,EAX
0052db24  018f10040000              ADD dword ptr [EDI + 0x410],ECX
0052db2a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052db32  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0052db35  64890d00000000            MOV dword ptr FS:[0x0],ECX
0052db3c  59                        POP ECX
0052db3d  5f                        POP EDI
0052db3e  5e                        POP ESI
0052db3f  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0052db42  33cd                      XOR ECX,EBP
0052db44  e8e2155c00                CALL 0x00aef12b
0052db49  8be5                      MOV ESP,EBP
0052db4b  5d                        POP EBP
0052db4c  8be3                      MOV ESP,EBX
0052db4e  5b                        POP EBX
0052db4f  c3                        RET
