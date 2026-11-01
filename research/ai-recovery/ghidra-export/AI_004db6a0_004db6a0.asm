; J460 NPC AI 0x004db6a0 AI_004db6a0
; types=851
; identities=851.0.0
; entry=004db6a0
004db6a0  53                        PUSH EBX
004db6a1  8bdc                      MOV EBX,ESP
004db6a3  83ec08                    SUB ESP,0x8
004db6a6  83e4f8                    AND ESP,0xfffffff8
004db6a9  83c404                    ADD ESP,0x4
004db6ac  55                        PUSH EBP
004db6ad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004db6b0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004db6b4  8bec                      MOV EBP,ESP
004db6b6  6aff                      PUSH -0x1
004db6b8  68fd39af00                PUSH 0xaf39fd
004db6bd  64a100000000              MOV EAX,FS:[0x0]
004db6c3  50                        PUSH EAX
004db6c4  53                        PUSH EBX
004db6c5  83ec68                    SUB ESP,0x68
004db6c8  a1b493bf00                MOV EAX,[0x00bf93b4]
004db6cd  33c5                      XOR EAX,EBP
004db6cf  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004db6d2  56                        PUSH ESI
004db6d3  57                        PUSH EDI
004db6d4  50                        PUSH EAX
004db6d5  8d45f4                    LEA EAX,[EBP + -0xc]
004db6d8  64a300000000              MOV FS:[0x0],EAX
004db6de  8bf9                      MOV EDI,ECX
004db6e0  897dac                    MOV dword ptr [EBP + -0x54],EDI
004db6e3  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004db6eb  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004db6f3  2bf0                      SUB ESI,EAX
004db6f5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004db6fb  8975b8                    MOV dword ptr [EBP + -0x48],ESI
004db6fe  83e800                    SUB EAX,0x0
004db701  0f8484060000              JZ 0x004dbd8b
004db707  83e804                    SUB EAX,0x4
004db70a  0f8415030000              JZ 0x004dba25
004db710  83e802                    SUB EAX,0x2
004db713  0f8539070000              JNZ 0x004dbe52
004db719  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004db721  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004db728  9f                        LAHF
004db729  f6c444                    TEST AH,0x44
004db72c  7a19                      JP 0x004db747
004db72e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004db736  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004db73d  9f                        LAHF
004db73e  f6c444                    TEST AH,0x44
004db741  0f8bea000000              JNP 0x004db831
004db747  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004db74b  0f84c8000000              JZ 0x004db819
004db751  6860d5b100                PUSH 0xb1d560
004db756  8d4f78                    LEA ECX,[EDI + 0x78]
004db759  e812f7f2ff                CALL 0x0040ae70
004db75e  84c0                      TEST AL,AL
004db760  0f84b3000000              JZ 0x004db819
004db766  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004db76e  f30f5915a0a0ba00          MULSS XMM2,dword ptr [0x00baa0a0]
004db776  f30f5897b00b0000          ADDSS XMM2,dword ptr [EDI + 0xbb0]
004db77e  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
004db786  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004db78e  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004db796  f30f10a734030000          MOVSS XMM4,dword ptr [EDI + 0x334]
004db79e  f30f109f38030000          MOVSS XMM3,dword ptr [EDI + 0x338]
004db7a6  f30f5ce1                  SUBSS XMM4,XMM1
004db7aa  f30f5cd8                  SUBSS XMM3,XMM0
004db7ae  f30f59e2                  MULSS XMM4,XMM2
004db7b2  f30f59da                  MULSS XMM3,XMM2
004db7b6  f30f58e1                  ADDSS XMM4,XMM1
004db7ba  f30f58d8                  ADDSS XMM3,XMM0
004db7be  f30f5ce1                  SUBSS XMM4,XMM1
004db7c2  f30f5cd8                  SUBSS XMM3,XMM0
004db7c6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004db7ce  f30f5ee0                  DIVSS XMM4,XMM0
004db7d2  f30f5ed8                  DIVSS XMM3,XMM0
004db7d6  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
004db7de  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004db7e6  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004db7ee  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
004db7f5  723a                      JC 0x004db831
004db7f7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004db7ff  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004db807  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004db80f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004db817  eb18                      JMP 0x004db831
004db819  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004db821  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004db829  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004db831  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004db835  0f84e9000000              JZ 0x004db924
004db83b  8d4f78                    LEA ECX,[EDI + 0x78]
004db83e  6874d5b100                PUSH 0xb1d574
004db843  e888f5f2ff                CALL 0x0040add0
004db848  84c0                      TEST AL,AL
004db84a  0f84c1000000              JZ 0x004db911
004db850  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004db856  8d4db4                    LEA ECX,[EBP + -0x4c]
004db859  c745b445000000            MOV dword ptr [EBP + -0x4c],0x45
004db860  e81baf4700                CALL 0x00956780
004db865  83ec08                    SUB ESP,0x8
004db868  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004db86e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004db876  c704240000803f            MOV dword ptr [ESP],0x3f800000
004db87d  6a00                      PUSH 0x0
004db87f  6a02                      PUSH 0x2
004db881  51                        PUSH ECX
004db882  c704240000803f            MOV dword ptr [ESP],0x3f800000
004db889  ff75b4                    PUSH dword ptr [EBP + -0x4c]
004db88c  e89f234500                CALL 0x0092dc30
004db891  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004db89b  ff8fc00b0000              DEC dword ptr [EDI + 0xbc0]
004db8a1  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004db8a8  7e67                      JLE 0x004db911
004db8aa  6a01                      PUSH 0x1
004db8ac  6860d5b100                PUSH 0xb1d560
004db8b1  8d4f48                    LEA ECX,[EDI + 0x48]
004db8b4  e817edf2ff                CALL 0x0040a5d0
004db8b9  84c0                      TEST AL,AL
004db8bb  740f                      JZ 0x004db8cc
004db8bd  8d4f78                    LEA ECX,[EDI + 0x78]
004db8c0  e8ebe8f2ff                CALL 0x0040a1b0
004db8c5  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004db8cc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004db8d0  7410                      JZ 0x004db8e2
004db8d2  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004db8da  8d4f78                    LEA ECX,[EDI + 0x78]
004db8dd  e81ed5f2ff                CALL 0x00408e00
004db8e2  8bd7                      MOV EDX,EDI
004db8e4  8d4d8c                    LEA ECX,[EBP + -0x74]
004db8e7  e8d4faffff                CALL 0x004db3c0
004db8ec  8b08                      MOV ECX,dword ptr [EAX]
004db8ee  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004db8f4  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004db8f7  898738030000              MOV dword ptr [EDI + 0x338],EAX
004db8fd  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004db907  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004db911  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004db915  740d                      JZ 0x004db924
004db917  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004db91e  0f852e050000              JNZ 0x004dbe52
004db924  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004db92e  c787a00b000005000000      MOV dword ptr [EDI + 0xba0],0x5
004db938  a118ddb100                MOV EAX,[0x00b1dd18]
004db93d  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004db943  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004db94a  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004db951  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004db954  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004db957  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004db95b  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004db962  a130ddb100                MOV EAX,[0x00b1dd30]
004db967  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004db96d  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004db974  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004db97b  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004db97e  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004db981  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004db985  51                        PUSH ECX
004db986  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004db98a  8d45bc                    LEA EAX,[EBP + -0x44]
004db98d  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004db994  8bcf                      MOV ECX,EDI
004db996  50                        PUSH EAX
004db997  8d45d4                    LEA EAX,[EBP + -0x2c]
004db99a  50                        PUSH EAX
004db99b  e890591e00                CALL 0x006c1330
004db9a0  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004db9a4  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004db9a7  83fa10                    CMP EDX,0x10
004db9aa  7228                      JC 0x004db9d4
004db9ac  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004db9af  42                        INC EDX
004db9b0  8bc1                      MOV EAX,ECX
004db9b2  81fa00100000              CMP EDX,0x1000
004db9b8  7210                      JC 0x004db9ca
004db9ba  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004db9bd  83c223                    ADD EDX,0x23
004db9c0  2bc1                      SUB EAX,ECX
004db9c2  83c0fc                    ADD EAX,-0x4
004db9c5  83f81f                    CMP EAX,0x1f
004db9c8  7755                      JA 0x004dba1f
004db9ca  52                        PUSH EDX
004db9cb  51                        PUSH ECX
004db9cc  e88b376100                CALL 0x00aef15c
004db9d1  83c408                    ADD ESP,0x8
004db9d4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004db9db  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004db9de  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004db9e5  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004db9ec  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004db9f0  83fa10                    CMP EDX,0x10
004db9f3  0f82b3020000              JC 0x004dbcac
004db9f9  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004db9fc  42                        INC EDX
004db9fd  8bc1                      MOV EAX,ECX
004db9ff  81fa00100000              CMP EDX,0x1000
004dba05  0f8297020000              JC 0x004dbca2
004dba0b  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004dba0e  83c223                    ADD EDX,0x23
004dba11  2bc1                      SUB EAX,ECX
004dba13  83c0fc                    ADD EAX,-0x4
004dba16  83f81f                    CMP EAX,0x1f
004dba19  0f8683020000              JBE 0x004dbca2
004dba1f  ff159488b100              CALL dword ptr [0x00b18894]
004dba25  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004dba2b  2500080001                AND EAX,0x1000800
004dba30  83c800                    OR EAX,0x0
004dba33  7442                      JZ 0x004dba77
004dba35  e8062e1e00                CALL 0x006be840
004dba3a  6a00                      PUSH 0x0
004dba3c  8d8f14040000              LEA ECX,[EDI + 0x414]
004dba42  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
004dba48  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004dba4e  894598                    MOV dword ptr [EBP + -0x68],EAX
004dba51  8d4594                    LEA EAX,[EBP + -0x6c]
004dba54  50                        PUSH EAX
004dba55  895594                    MOV dword ptr [EBP + -0x6c],EDX
004dba58  e8e38e3000                CALL 0x007e4940
004dba5d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004dba65  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004dba6d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004dba75  eb2b                      JMP 0x004dbaa2
004dba77  6a01                      PUSH 0x1
004dba79  6a00                      PUSH 0x0
004dba7b  83ec08                    SUB ESP,0x8
004dba7e  8d458c                    LEA EAX,[EBP + -0x74]
004dba81  c74424049a99193f          MOV dword ptr [ESP + 0x4],0x3f19999a
004dba89  c7042400000000            MOV dword ptr [ESP],0x0
004dba90  50                        PUSH EAX
004dba91  e8aa311e00                CALL 0x006bec40
004dba96  50                        PUSH EAX
004dba97  8d8f14040000              LEA ECX,[EDI + 0x414]
004dba9d  e81e793000                CALL 0x007e33c0
004dbaa2  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
004dbaa9  7456                      JZ 0x004dbb01
004dbaab  e8b0342100                CALL 0x006eef60
004dbab0  33d2                      XOR EDX,EDX
004dbab2  b903000000                MOV ECX,0x3
004dbab7  f7f1                      DIV ECX
004dbab9  85d2                      TEST EDX,EDX
004dbabb  7544                      JNZ 0x004dbb01
004dbabd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004dbac3  8d4db4                    LEA ECX,[EBP + -0x4c]
004dbac6  c745b4a7000000            MOV dword ptr [EBP + -0x4c],0xa7
004dbacd  e8aeac4700                CALL 0x00956780
004dbad2  83ec08                    SUB ESP,0x8
004dbad5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004dbadb  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004dbae3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dbaea  6a00                      PUSH 0x0
004dbaec  6a78                      PUSH 0x78
004dbaee  51                        PUSH ECX
004dbaef  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004dbaf6  ff75b4                    PUSH dword ptr [EBP + -0x4c]
004dbaf9  e832214500                CALL 0x0092dc30
004dbafe  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
004dbb01  e85a342100                CALL 0x006eef60
004dbb06  33d2                      XOR EDX,EDX
004dbb08  b946000000                MOV ECX,0x46
004dbb0d  f7f1                      DIV ECX
004dbb0f  85d2                      TEST EDX,EDX
004dbb11  756c                      JNZ 0x004dbb7f
004dbb13  39979c000000              CMP dword ptr [EDI + 0x9c],EDX
004dbb19  7464                      JZ 0x004dbb7f
004dbb1b  3897ac000000              CMP byte ptr [EDI + 0xac],DL
004dbb21  745c                      JZ 0x004dbb7f
004dbb23  8b879c000000              MOV EAX,dword ptr [EDI + 0x9c]
004dbb29  83781410                  CMP dword ptr [EAX + 0x14],0x10
004dbb2d  7202                      JC 0x004dbb31
004dbb2f  8b00                      MOV EAX,dword ptr [EAX]
004dbb31  b9d4feb500                MOV ECX,0xb5fed4
004dbb36  8a10                      MOV DL,byte ptr [EAX]
004dbb38  3a11                      CMP DL,byte ptr [ECX]
004dbb3a  751a                      JNZ 0x004dbb56
004dbb3c  84d2                      TEST DL,DL
004dbb3e  7412                      JZ 0x004dbb52
004dbb40  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004dbb43  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004dbb46  750e                      JNZ 0x004dbb56
004dbb48  83c002                    ADD EAX,0x2
004dbb4b  83c102                    ADD ECX,0x2
004dbb4e  84d2                      TEST DL,DL
004dbb50  75e4                      JNZ 0x004dbb36
004dbb52  33c0                      XOR EAX,EAX
004dbb54  eb05                      JMP 0x004dbb5b
004dbb56  1bc0                      SBB EAX,EAX
004dbb58  83c801                    OR EAX,0x1
004dbb5b  85c0                      TEST EAX,EAX
004dbb5d  7520                      JNZ 0x004dbb7f
004dbb5f  e8fc332100                CALL 0x006eef60
004dbb64  83e001                    AND EAX,0x1
004dbb67  b9a404b600                MOV ECX,0xb604a4
004dbb6c  b8c004b600                MOV EAX,0xb604c0
004dbb71  0f44c1                    CMOVZ EAX,ECX
004dbb74  8d4f48                    LEA ECX,[EDI + 0x48]
004dbb77  6a00                      PUSH 0x0
004dbb79  50                        PUSH EAX
004dbb7a  e8c1edf2ff                CALL 0x0040a940
004dbb7f  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004dbb85  8bd0                      MOV EDX,EAX
004dbb87  85c0                      TEST EAX,EAX
004dbb89  7e0a                      JLE 0x004dbb95
004dbb8b  2bc6                      SUB EAX,ESI
004dbb8d  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004dbb93  8bd0                      MOV EDX,EAX
004dbb95  8b8fc40b0000              MOV ECX,dword ptr [EDI + 0xbc4]
004dbb9b  85c9                      TEST ECX,ECX
004dbb9d  7e0a                      JLE 0x004dbba9
004dbb9f  2bce                      SUB ECX,ESI
004dbba1  8bc2                      MOV EAX,EDX
004dbba3  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
004dbba9  85c0                      TEST EAX,EAX
004dbbab  0f8f87fdffff              JG 0x004db938
004dbbb1  e8aa332100                CALL 0x006eef60
004dbbb6  33d2                      XOR EDX,EDX
004dbbb8  b91e000000                MOV ECX,0x1e
004dbbbd  f7f1                      DIV ECX
004dbbbf  85d2                      TEST EDX,EDX
004dbbc1  0f8571fdffff              JNZ 0x004db938
004dbbc7  52                        PUSH EDX
004dbbc8  68000a0001                PUSH 0x1000a00
004dbbcd  8bcf                      MOV ECX,EDI
004dbbcf  e85cb8f3ff                CALL 0x00417430
004dbbd4  84c0                      TEST AL,AL
004dbbd6  0f855cfdffff              JNZ 0x004db938
004dbbdc  8bd7                      MOV EDX,EDI
004dbbde  8d4d94                    LEA ECX,[EBP + -0x6c]
004dbbe1  e8daf7ffff                CALL 0x004db3c0
004dbbe6  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004dbbee  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004dbbf6  f30f5c4598                SUBSS XMM0,dword ptr [EBP + -0x68]
004dbbfb  f30f5c4d94                SUBSS XMM1,dword ptr [EBP + -0x6c]
004dbc00  f30f59c0                  MULSS XMM0,XMM0
004dbc04  f30f59c9                  MULSS XMM1,XMM1
004dbc08  f30f58c1                  ADDSS XMM0,XMM1
004dbc0c  e83f9ef5ff                CALL 0x00435a50
004dbc11  f30f100decaaba00          MOVSS XMM1,dword ptr [0x00baaaec]
004dbc19  0f2fc8                    COMISS XMM1,XMM0
004dbc1c  7716                      JA 0x004dbc34
004dbc1e  e83d332100                CALL 0x006eef60
004dbc23  33d2                      XOR EDX,EDX
004dbc25  b90a000000                MOV ECX,0xa
004dbc2a  f7f1                      DIV ECX
004dbc2c  85d2                      TEST EDX,EDX
004dbc2e  0f8504fdffff              JNZ 0x004db938
004dbc34  8d8f98000000              LEA ECX,[EDI + 0x98]
004dbc3a  6a00                      PUSH 0x0
004dbc3c  e8efcbf2ff                CALL 0x00408830
004dbc41  6a00                      PUSH 0x0
004dbc43  8d4f48                    LEA ECX,[EDI + 0x48]
004dbc46  6860d5b100                PUSH 0xb1d560
004dbc4b  e830e7f2ff                CALL 0x0040a380
004dbc50  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
004dbc55  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004dbc5f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004dbc67  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
004dbc6c  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004dbc74  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004dbc7e  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004dbc88  e8d3322100                CALL 0x006eef60
004dbc8d  33d2                      XOR EDX,EDX
004dbc8f  b903000000                MOV ECX,0x3
004dbc94  f7f1                      DIV ECX
004dbc96  42                        INC EDX
004dbc97  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
004dbc9d  e9b0010000                JMP 0x004dbe52
004dbca2  52                        PUSH EDX
004dbca3  51                        PUSH ECX
004dbca4  e8b3346100                CALL 0x00aef15c
004dbca9  83c408                    ADD ESP,0x8
004dbcac  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004dbcb3  8d4f48                    LEA ECX,[EDI + 0x48]
004dbcb6  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004dbcbd  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004dbcc4  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
004dbcc8  7409                      JZ 0x004dbcd3
004dbcca  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004dbcd1  7526                      JNZ 0x004dbcf9
004dbcd3  6a00                      PUSH 0x0
004dbcd5  68d4feb500                PUSH 0xb5fed4
004dbcda  e861ecf2ff                CALL 0x0040a940
004dbcdf  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004dbce6  0f8466010000              JZ 0x004dbe52
004dbcec  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004dbcf3  0f8459010000              JZ 0x004dbe52
004dbcf9  8b879c000000              MOV EAX,dword ptr [EDI + 0x9c]
004dbcff  85c0                      TEST EAX,EAX
004dbd01  740a                      JZ 0x004dbd0d
004dbd03  83781410                  CMP dword ptr [EAX + 0x14],0x10
004dbd07  7209                      JC 0x004dbd12
004dbd09  8b00                      MOV EAX,dword ptr [EAX]
004dbd0b  eb05                      JMP 0x004dbd12
004dbd0d  b8eca4b100                MOV EAX,0xb1a4ec
004dbd12  b9d4feb500                MOV ECX,0xb5fed4
004dbd17  8a10                      MOV DL,byte ptr [EAX]
004dbd19  3a11                      CMP DL,byte ptr [ECX]
004dbd1b  751a                      JNZ 0x004dbd37
004dbd1d  84d2                      TEST DL,DL
004dbd1f  7412                      JZ 0x004dbd33
004dbd21  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004dbd24  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004dbd27  750e                      JNZ 0x004dbd37
004dbd29  83c002                    ADD EAX,0x2
004dbd2c  83c102                    ADD ECX,0x2
004dbd2f  84d2                      TEST DL,DL
004dbd31  75e4                      JNZ 0x004dbd17
004dbd33  33c0                      XOR EAX,EAX
004dbd35  eb05                      JMP 0x004dbd3c
004dbd37  1bc0                      SBB EAX,EAX
004dbd39  83c801                    OR EAX,0x1
004dbd3c  85c0                      TEST EAX,EAX
004dbd3e  0f850e010000              JNZ 0x004dbe52
004dbd44  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004dbd47  7505                      JNZ 0x004dbd4e
004dbd49  83c8ff                    OR EAX,0xffffffff
004dbd4c  eb26                      JMP 0x004dbd74
004dbd4e  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004dbd56  83ec08                    SUB ESP,0x8
004dbd59  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004dbd5e  d945b8                    FLD dword ptr [EBP + -0x48]
004dbd61  dd1c24                    FSTP qword ptr [ESP]
004dbd64  e8ae4b6100                CALL 0x00af0917
004dbd69  d95db8                    FSTP dword ptr [EBP + -0x48]
004dbd6c  f30f2c45b8                CVTTSS2SI EAX,dword ptr [EBP + -0x48]
004dbd71  83c408                    ADD ESP,0x8
004dbd74  660f6ec8                  MOVD XMM1,EAX
004dbd78  8d8f98000000              LEA ECX,[EDI + 0x98]
004dbd7e  0f5bc9                    CVTDQ2PS XMM1,XMM1
004dbd81  e87ad0f2ff                CALL 0x00408e00
004dbd86  e9c7000000                JMP 0x004dbe52
004dbd8b  6a01                      PUSH 0x1
004dbd8d  6818ddb100                PUSH 0xb1dd18
004dbd92  8d4f48                    LEA ECX,[EDI + 0x48]
004dbd95  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004dbd9f  e82ce8f2ff                CALL 0x0040a5d0
004dbda4  84c0                      TEST AL,AL
004dbda6  7420                      JZ 0x004dbdc8
004dbda8  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004dbdab  85c0                      TEST EAX,EAX
004dbdad  7419                      JZ 0x004dbdc8
004dbdaf  8d4f78                    LEA ECX,[EDI + 0x78]
004dbdb2  0f57c9                    XORPS XMM1,XMM1
004dbdb5  e846d0f2ff                CALL 0x00408e00
004dbdba  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004dbdbd  85c0                      TEST EAX,EAX
004dbdbf  7407                      JZ 0x004dbdc8
004dbdc1  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004dbdc8  6a01                      PUSH 0x1
004dbdca  68d4feb500                PUSH 0xb5fed4
004dbdcf  8d4f48                    LEA ECX,[EDI + 0x48]
004dbdd2  e819edf2ff                CALL 0x0040aaf0
004dbdd7  84c0                      TEST AL,AL
004dbdd9  7417                      JZ 0x004dbdf2
004dbddb  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004dbde2  740e                      JZ 0x004dbdf2
004dbde4  8d8f98000000              LEA ECX,[EDI + 0x98]
004dbdea  0f57c9                    XORPS XMM1,XMM1
004dbded  e80ed0f2ff                CALL 0x00408e00
004dbdf2  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004dbdf8  81f9804ec300              CMP ECX,0xc34e80
004dbdfe  742a                      JZ 0x004dbe2a
004dbe00  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
004dbe07  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004dbe0a  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
004dbe11  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004dbe15  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
004dbe1d  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004dbe22  a1a84ec300                MOV EAX,[0x00c34ea8]
004dbe27  894128                    MOV dword ptr [ECX + 0x28],EAX
004dbe2a  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004dbe34  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004dbe3e  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004dbe48  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004dbe52  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004dbe59  0f85b5050000              JNZ 0x004dc414
004dbe5f  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004dbe66  0f8fa8050000              JG 0x004dc414
004dbe6c  a17816c700                MOV EAX,[0x00c71678]
004dbe71  f30f101d94aaba00          MOVSS XMM3,dword ptr [0x00baaa94]
004dbe79  6a0c                      PUSH 0xc
004dbe7b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004dbe81  8d873c030000              LEA EAX,[EDI + 0x33c]
004dbe87  50                        PUSH EAX
004dbe88  8945b8                    MOV dword ptr [EBP + -0x48],EAX
004dbe8b  81c118120000              ADD ECX,0x1218
004dbe91  8d45dc                    LEA EAX,[EBP + -0x24]
004dbe94  50                        PUSH EAX
004dbe95  e8f6e8f3ff                CALL 0x0041a790
004dbe9a  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004dbea1  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004dbea4  85d2                      TEST EDX,EDX
004dbea6  0f843c050000              JZ 0x004dc3e8
004dbeac  f30f1015b4acba00          MOVSS XMM2,dword ptr [0x00baacb4]
004dbeb4  33c9                      XOR ECX,ECX
004dbeb6  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
004dbebd  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
004dbec2  894db4                    MOV dword ptr [EBP + -0x4c],ECX
004dbec5  85d2                      TEST EDX,EDX
004dbec7  0f841b050000              JZ 0x004dc3e8
004dbecd  f30f102d5ca7ba00          MOVSS XMM5,dword ptr [0x00baa75c]
004dbed5  8b7db8                    MOV EDI,dword ptr [EBP + -0x48]
004dbed8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004dbee0  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004dbee3  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004dbee6  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004dbee9  83f802                    CMP EAX,0x2
004dbeec  740e                      JZ 0x004dbefc
004dbeee  83f808                    CMP EAX,0x8
004dbef1  7409                      JZ 0x004dbefc
004dbef3  83f804                    CMP EAX,0x4
004dbef6  0f85de000000              JNZ 0x004dbfda
004dbefc  f30f109e3c030000          MOVSS XMM3,dword ptr [ESI + 0x33c]
004dbf04  f30f10a640030000          MOVSS XMM4,dword ptr [ESI + 0x340]
004dbf0c  f30f115da8                MOVSS dword ptr [EBP + -0x58],XMM3
004dbf11  f30f1165a0                MOVSS dword ptr [EBP + -0x60],XMM4
004dbf16  83f808                    CMP EAX,0x8
004dbf19  755c                      JNZ 0x004dbf77
004dbf1b  f30f108638040000          MOVSS XMM0,dword ptr [ESI + 0x438]
004dbf23  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004dbf2b  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004dbf30  e8eb15f4ff                CALL 0x0041d520
004dbf35  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004dbf3a  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004dbf3f  e8fc15f4ff                CALL 0x0041d540
004dbf44  f30f108e48040000          MOVSS XMM1,dword ptr [ESI + 0x448]
004dbf4c  f30f102d5ca7ba00          MOVSS XMM5,dword ptr [0x00baa75c]
004dbf54  f30f105da8                MOVSS XMM3,dword ptr [EBP + -0x58]
004dbf59  f30f1065a0                MOVSS XMM4,dword ptr [EBP + -0x60]
004dbf5e  f30f1055b0                MOVSS XMM2,dword ptr [EBP + -0x50]
004dbf63  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004dbf66  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
004dbf69  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004dbf6c  f30f59c1                  MULSS XMM0,XMM1
004dbf70  f30f594d9c                MULSS XMM1,dword ptr [EBP + -0x64]
004dbf75  eb10                      JMP 0x004dbf87
004dbf77  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
004dbf7f  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
004dbf87  f30f59cd                  MULSS XMM1,XMM5
004dbf8b  f30f59c5                  MULSS XMM0,XMM5
004dbf8f  f30f58e1                  ADDSS XMM4,XMM1
004dbf93  f30f104f04                MOVSS XMM1,dword ptr [EDI + 0x4]
004dbf98  f30f58d8                  ADDSS XMM3,XMM0
004dbf9c  f30f1007                  MOVSS XMM0,dword ptr [EDI]
004dbfa0  f30f5ccc                  SUBSS XMM1,XMM4
004dbfa4  f30f5cc3                  SUBSS XMM0,XMM3
004dbfa8  f30f59c9                  MULSS XMM1,XMM1
004dbfac  f30f59c0                  MULSS XMM0,XMM0
004dbfb0  f30f58c8                  ADDSS XMM1,XMM0
004dbfb4  83f804                    CMP EAX,0x4
004dbfb7  750d                      JNZ 0x004dbfc6
004dbfb9  f30f5915d4a1ba00          MULSS XMM2,dword ptr [0x00baa1d4]
004dbfc1  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
004dbfc6  0f2fd1                    COMISS XMM2,XMM1
004dbfc9  760f                      JBE 0x004dbfda
004dbfcb  0f28d1                    MOVAPS XMM2,XMM1
004dbfce  8bc6                      MOV EAX,ESI
004dbfd0  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
004dbfd5  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004dbfd8  eb03                      JMP 0x004dbfdd
004dbfda  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
004dbfdd  41                        INC ECX
004dbfde  894db4                    MOV dword ptr [EBP + -0x4c],ECX
004dbfe1  3bca                      CMP ECX,EDX
004dbfe3  0f82f7feffff              JC 0x004dbee0
004dbfe9  8b7dac                    MOV EDI,dword ptr [EBP + -0x54]
004dbfec  85c0                      TEST EAX,EAX
004dbfee  0f84f4030000              JZ 0x004dc3e8
004dbff4  f30f1005e0abba00          MOVSS XMM0,dword ptr [0x00baabe0]
004dbffc  0f2fc2                    COMISS XMM0,XMM2
004dbfff  0f86e3030000              JBE 0x004dc3e8
004dc005  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004dc00d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004dc015  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004dc01d  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004dc025  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004dc02a  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004dc032  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
004dc037  e80415f4ff                CALL 0x0041d540
004dc03c  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004dc041  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004dc049  e8d214f4ff                CALL 0x0041d520
004dc04e  f30f1065a8                MOVSS XMM4,dword ptr [EBP + -0x58]
004dc053  0f28c8                    MOVAPS XMM1,XMM0
004dc056  f30f1055ac                MOVSS XMM2,dword ptr [EBP + -0x54]
004dc05b  0f28ec                    MOVAPS XMM5,XMM4
004dc05e  f30f594da0                MULSS XMM1,dword ptr [EBP + -0x60]
004dc063  f30f59ea                  MULSS XMM5,XMM2
004dc067  f30f5955a0                MULSS XMM2,dword ptr [EBP + -0x60]
004dc06c  f30f59e0                  MULSS XMM4,XMM0
004dc070  f30f5ce9                  SUBSS XMM5,XMM1
004dc074  f30f58e2                  ADDSS XMM4,XMM2
004dc078  0f28cd                    MOVAPS XMM1,XMM5
004dc07b  f30f116da4                MOVSS dword ptr [EBP + -0x5c],XMM5
004dc080  f30f59cd                  MULSS XMM1,XMM5
004dc084  0f28c4                    MOVAPS XMM0,XMM4
004dc087  f30f1165a8                MOVSS dword ptr [EBP + -0x58],XMM4
004dc08c  f30f59c4                  MULSS XMM0,XMM4
004dc090  f30f58c1                  ADDSS XMM0,XMM1
004dc094  e8b799f5ff                CALL 0x00435a50
004dc099  0f57c9                    XORPS XMM1,XMM1
004dc09c  0f2fc1                    COMISS XMM0,XMM1
004dc09f  7627                      JBE 0x004dc0c8
004dc0a1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dc0a9  f30f5ec8                  DIVSS XMM1,XMM0
004dc0ad  0f28c1                    MOVAPS XMM0,XMM1
004dc0b0  f30f5945a4                MULSS XMM0,dword ptr [EBP + -0x5c]
004dc0b5  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004dc0ba  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
004dc0bf  f30f59c1                  MULSS XMM0,XMM1
004dc0c3  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004dc0c8  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004dc0d0  33f6                      XOR ESI,ESI
004dc0d2  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004dc0d7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004dc0df  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004dc0e4  e8772e2100                CALL 0x006eef60
004dc0e9  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
004dc0ee  83e001                    AND EAX,0x1
004dc0f1  750c                      JNZ 0x004dc0ff
004dc0f3  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004dc0f8  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
004dc0fd  eb18                      JMP 0x004dc117
004dc0ff  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004dc106  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004dc10b  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
004dc110  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004dc117  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004dc11c  e83f2e2100                CALL 0x006eef60
004dc121  660f6ec0                  MOVD XMM0,EAX
004dc125  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004dc129  c1e81f                    SHR EAX,0x1f
004dc12c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004dc135  660f5ac0                  CVTPD2PS XMM0,XMM0
004dc139  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004dc141  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004dc149  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
004dc151  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004dc159  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004dc15e  e8dd13f4ff                CALL 0x0041d540
004dc163  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004dc168  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
004dc16d  e8ae13f4ff                CALL 0x0041d520
004dc172  f30f1065b0                MOVSS XMM4,dword ptr [EBP + -0x50]
004dc177  f30f106db8                MOVSS XMM5,dword ptr [EBP + -0x48]
004dc17c  0f28cc                    MOVAPS XMM1,XMM4
004dc17f  f30f5965a0                MULSS XMM4,dword ptr [EBP + -0x60]
004dc184  0f28dd                    MOVAPS XMM3,XMM5
004dc187  f30f595da0                MULSS XMM3,dword ptr [EBP + -0x60]
004dc18c  f30f59c8                  MULSS XMM1,XMM0
004dc190  f30f59e8                  MULSS XMM5,XMM0
004dc194  f30f5cd9                  SUBSS XMM3,XMM1
004dc198  f30f58e5                  ADDSS XMM4,XMM5
004dc19c  f30f115dac                MOVSS dword ptr [EBP + -0x54],XMM3
004dc1a1  f30f1165b0                MOVSS dword ptr [EBP + -0x50],XMM4
004dc1a6  e8b52d2100                CALL 0x006eef60
004dc1ab  660f6ec0                  MOVD XMM0,EAX
004dc1af  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004dc1b3  c1e81f                    SHR EAX,0x1f
004dc1b6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004dc1bf  a17816c700                MOV EAX,[0x00c71678]
004dc1c4  660f5ac8                  CVTPD2PS XMM1,XMM0
004dc1c8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004dc1ce  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004dc1d6  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
004dc1de  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
004dc1e6  0f28d1                    MOVAPS XMM2,XMM1
004dc1e9  f30f594db0                MULSS XMM1,dword ptr [EBP + -0x50]
004dc1ee  f30f5955ac                MULSS XMM2,dword ptr [EBP + -0x54]
004dc1f3  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004dc1f8  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004dc200  0f28c2                    MOVAPS XMM0,XMM2
004dc203  f30f115598                MOVSS dword ptr [EBP + -0x68],XMM2
004dc208  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004dc210  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004dc218  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
004dc21d  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004dc222  f30f5cc2                  SUBSS XMM0,XMM2
004dc226  f30f5ec2                  DIVSS XMM0,XMM2
004dc22a  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004dc232  f30f2cd0                  CVTTSS2SI EDX,XMM0
004dc236  0f28c1                    MOVAPS XMM0,XMM1
004dc239  8955b8                    MOV dword ptr [EBP + -0x48],EDX
004dc23c  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004dc244  f30f5ec2                  DIVSS XMM0,XMM2
004dc248  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004dc250  f30f2cc0                  CVTTSS2SI EAX,XMM0
004dc254  85d2                      TEST EDX,EDX
004dc256  7819                      JS 0x004dc271
004dc258  8b510c                    MOV EDX,dword ptr [ECX + 0xc]
004dc25b  3955b8                    CMP dword ptr [EBP + -0x48],EDX
004dc25e  7d11                      JGE 0x004dc271
004dc260  85c0                      TEST EAX,EAX
004dc262  780d                      JS 0x004dc271
004dc264  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004dc267  7d08                      JGE 0x004dc271
004dc269  0fafc2                    IMUL EAX,EDX
004dc26c  0345b8                    ADD EAX,dword ptr [EBP + -0x48]
004dc26f  eb03                      JMP 0x004dc274
004dc271  83c8ff                    OR EAX,0xffffffff
004dc274  50                        PUSH EAX
004dc275  e886453100                CALL 0x007f0800
004dc27a  85c0                      TEST EAX,EAX
004dc27c  752e                      JNZ 0x004dc2ac
004dc27e  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
004dc283  8d458c                    LEA EAX,[EBP + -0x74]
004dc286  f30f101550a9ba00          MOVSS XMM2,dword ptr [0x00baa950]
004dc28e  83ec08                    SUB ESP,0x8
004dc291  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
004dc296  8bcf                      MOV ECX,EDI
004dc298  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
004dc29d  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004dc2a2  50                        PUSH EAX
004dc2a3  e898d41d00                CALL 0x006b9740
004dc2a8  84c0                      TEST AL,AL
004dc2aa  7475                      JZ 0x004dc321
004dc2ac  46                        INC ESI
004dc2ad  83fe0a                    CMP ESI,0xa
004dc2b0  0f8c2efeffff              JL 0x004dc0e4
004dc2b6  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
004dc2bb  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
004dc2c0  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004dc2c7  9f                        LAHF
004dc2c8  f6c444                    TEST AH,0x44
004dc2cb  7a11                      JP 0x004dc2de
004dc2cd  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
004dc2d4  9f                        LAHF
004dc2d5  f6c444                    TEST AH,0x44
004dc2d8  0f8b0a010000              JNP 0x004dc3e8
004dc2de  8d8f98000000              LEA ECX,[EDI + 0x98]
004dc2e4  6a00                      PUSH 0x0
004dc2e6  e845c5f2ff                CALL 0x00408830
004dc2eb  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004dc2ee  85f6                      TEST ESI,ESI
004dc2f0  7473                      JZ 0x004dc365
004dc2f2  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004dc2f6  8bc6                      MOV EAX,ESI
004dc2f8  7202                      JC 0x004dc2fc
004dc2fa  8b06                      MOV EAX,dword ptr [ESI]
004dc2fc  b960d5b100                MOV ECX,0xb1d560
004dc301  8a10                      MOV DL,byte ptr [EAX]
004dc303  3a11                      CMP DL,byte ptr [ECX]
004dc305  7543                      JNZ 0x004dc34a
004dc307  84d2                      TEST DL,DL
004dc309  7412                      JZ 0x004dc31d
004dc30b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004dc30e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004dc311  7537                      JNZ 0x004dc34a
004dc313  83c002                    ADD EAX,0x2
004dc316  83c102                    ADD ECX,0x2
004dc319  84d2                      TEST DL,DL
004dc31b  75e4                      JNZ 0x004dc301
004dc31d  33c0                      XOR EAX,EAX
004dc31f  eb2e                      JMP 0x004dc34f
004dc321  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
004dc326  f30f104db0                MOVSS XMM1,dword ptr [EBP + -0x50]
004dc32b  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004dc333  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004dc33b  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004dc340  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004dc345  e976ffffff                JMP 0x004dc2c0
004dc34a  1bc0                      SBB EAX,EAX
004dc34c  83c801                    OR EAX,0x1
004dc34f  85c0                      TEST EAX,EAX
004dc351  7512                      JNZ 0x004dc365
004dc353  384634                    CMP byte ptr [ESI + 0x34],AL
004dc356  742e                      JZ 0x004dc386
004dc358  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004dc35e  8d7748                    LEA ESI,[EDI + 0x48]
004dc361  7523                      JNZ 0x004dc386
004dc363  eb03                      JMP 0x004dc368
004dc365  8d7748                    LEA ESI,[EDI + 0x48]
004dc368  6a01                      PUSH 0x1
004dc36a  6860d5b100                PUSH 0xb1d560
004dc36f  8bce                      MOV ECX,ESI
004dc371  e85ae2f2ff                CALL 0x0040a5d0
004dc376  84c0                      TEST AL,AL
004dc378  740c                      JZ 0x004dc386
004dc37a  8d4e30                    LEA ECX,[ESI + 0x30]
004dc37d  e82edef2ff                CALL 0x0040a1b0
004dc382  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004dc386  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dc38a  7410                      JZ 0x004dc39c
004dc38c  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
004dc394  8d4f78                    LEA ECX,[EDI + 0x78]
004dc397  e864caf2ff                CALL 0x00408e00
004dc39c  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
004dc3a1  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004dc3a9  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004dc3ae  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004dc3b8  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004dc3c0  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004dc3ca  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004dc3d4  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004dc3de  c787c40b000002000000      MOV dword ptr [EDI + 0xbc4],0x2
004dc3e8  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004dc3ef  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004dc3f3  751f                      JNZ 0x004dc414
004dc3f5  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004dc3fc  b101                      MOV CL,0x1
004dc3fe  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
004dc401  6a00                      PUSH 0x0
004dc403  6a00                      PUSH 0x0
004dc405  e8a6845800                CALL 0x00a648b0
004dc40a  83c408                    ADD ESP,0x8
004dc40d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004dc414  e8472b2100                CALL 0x006eef60
004dc419  33d2                      XOR EDX,EDX
004dc41b  b906000000                MOV ECX,0x6
004dc420  f7f1                      DIV ECX
004dc422  85d2                      TEST EDX,EDX
004dc424  7542                      JNZ 0x004dc468
004dc426  e8352b2100                CALL 0x006eef60
004dc42b  51                        PUSH ECX
004dc42c  8bcf                      MOV ECX,EDI
004dc42e  660f6ec0                  MOVD XMM0,EAX
004dc432  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004dc436  c1e81f                    SHR EAX,0x1f
004dc439  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004dc442  660f5ac0                  CVTPD2PS XMM0,XMM0
004dc446  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004dc44e  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004dc456  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
004dc45e  f30f110424                MOVSS dword ptr [ESP],XMM0
004dc463  e868a01d00                CALL 0x006b64d0
004dc468  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004dc46b  64890d00000000            MOV dword ptr FS:[0x0],ECX
004dc472  59                        POP ECX
004dc473  5f                        POP EDI
004dc474  5e                        POP ESI
004dc475  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004dc478  33cd                      XOR ECX,EBP
004dc47a  e8ac2c6100                CALL 0x00aef12b
004dc47f  8be5                      MOV ESP,EBP
004dc481  5d                        POP EBP
004dc482  8be3                      MOV ESP,EBX
004dc484  5b                        POP EBX
004dc485  c3                        RET
