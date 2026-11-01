; J460 NPC AI 0x0055b740 AI_0055b740
; types=810
; identities=810.0.0
; entry=0055b740
0055b740  53                        PUSH EBX
0055b741  8bdc                      MOV EBX,ESP
0055b743  83ec08                    SUB ESP,0x8
0055b746  83e4f8                    AND ESP,0xfffffff8
0055b749  83c404                    ADD ESP,0x4
0055b74c  55                        PUSH EBP
0055b74d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0055b750  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0055b754  8bec                      MOV EBP,ESP
0055b756  83ec20                    SUB ESP,0x20
0055b759  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0055b75f  56                        PUSH ESI
0055b760  57                        PUSH EDI
0055b761  8bf9                      MOV EDI,ECX
0055b763  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
0055b769  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
0055b771  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0055b778  0f97c1                    SETA CL
0055b77b  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
0055b782  884dff                    MOV byte ptr [EBP + -0x1],CL
0055b785  740c                      JZ 0x0055b793
0055b787  0fb6c1                    MOVZX EAX,CL
0055b78a  83c005                    ADD EAX,0x5
0055b78d  898784010000              MOV dword ptr [EDI + 0x184],EAX
0055b793  a19c16c700                MOV EAX,[0x00c7169c]
0055b798  80b8c9a3020000            CMP byte ptr [EAX + 0x2a3c9],0x0
0055b79f  0f8491000000              JZ 0x0055b836
0055b7a5  84c9                      TEST CL,CL
0055b7a7  0f8489000000              JZ 0x0055b836
0055b7ad  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0055b7b5  0f2f0584adba00            COMISS XMM0,dword ptr [0x00baad84]
0055b7bc  7678                      JBE 0x0055b836
0055b7be  51                        PUSH ECX
0055b7bf  8bca                      MOV ECX,EDX
0055b7c1  8d7748                    LEA ESI,[EDI + 0x48]
0055b7c4  e8a7cc1d00                CALL 0x00738470
0055b7c9  8bce                      MOV ECX,ESI
0055b7cb  6a00                      PUSH 0x0
0055b7cd  83f81c                    CMP EAX,0x1c
0055b7d0  751c                      JNZ 0x0055b7ee
0055b7d2  e849faeaff                CALL 0x0040b220
0055b7d7  c740483333b33f            MOV dword ptr [EAX + 0x48],0x3fb33333
0055b7de  c7404c3333b33f            MOV dword ptr [EAX + 0x4c],0x3fb33333
0055b7e5  c740503333b33f            MOV dword ptr [EAX + 0x50],0x3fb33333
0055b7ec  eb69                      JMP 0x0055b857
0055b7ee  e82dfaeaff                CALL 0x0040b220
0055b7f3  6a00                      PUSH 0x0
0055b7f5  8bce                      MOV ECX,ESI
0055b7f7  c740480000a040            MOV dword ptr [EAX + 0x48],0x40a00000
0055b7fe  c7404c0000a040            MOV dword ptr [EAX + 0x4c],0x40a00000
0055b805  c740500000a040            MOV dword ptr [EAX + 0x50],0x40a00000
0055b80c  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
0055b813  e808faeaff                CALL 0x0040b220
0055b818  c740580000803f            MOV dword ptr [EAX + 0x58],0x3f800000
0055b81f  c7405c0000803f            MOV dword ptr [EAX + 0x5c],0x3f800000
0055b826  c740600000803f            MOV dword ptr [EAX + 0x60],0x3f800000
0055b82d  c740649a99193f            MOV dword ptr [EAX + 0x64],0x3f19999a
0055b834  eb28                      JMP 0x0055b85e
0055b836  8d7748                    LEA ESI,[EDI + 0x48]
0055b839  6a00                      PUSH 0x0
0055b83b  8bce                      MOV ECX,ESI
0055b83d  e8def9eaff                CALL 0x0040b220
0055b842  c740480000803f            MOV dword ptr [EAX + 0x48],0x3f800000
0055b849  c7404c0000803f            MOV dword ptr [EAX + 0x4c],0x3f800000
0055b850  c740500000803f            MOV dword ptr [EAX + 0x50],0x3f800000
0055b857  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
0055b85e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0055b864  83f807                    CMP EAX,0x7
0055b867  0f87280c0000              JA 0x0055c495
0055b86d  ff2485a0c45500            JMP dword ptr [EAX*0x4 + 0x55c4a0]
0055b874  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
0055b87e  8bce                      MOV ECX,ESI
0055b880  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0055b88a  6a00                      PUSH 0x0
0055b88c  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0055b896  688c16b600                PUSH 0xb6168c
0055b89b  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0055b8a5  e8d6eaeaff                CALL 0x0040a380
0055b8aa  5f                        POP EDI
0055b8ab  5e                        POP ESI
0055b8ac  8be5                      MOV ESP,EBP
0055b8ae  5d                        POP EBP
0055b8af  8be3                      MOV ESP,EBX
0055b8b1  5b                        POP EBX
0055b8b2  c3                        RET
0055b8b3  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0055b8bd  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0055b8c7  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
0055b8cf  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0055b8d7  8b87bc0b0000              MOV EAX,dword ptr [EDI + 0xbbc]
0055b8dd  898764030000              MOV dword ptr [EDI + 0x364],EAX
0055b8e3  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0055b8eb  0f28ca                    MOVAPS XMM1,XMM2
0055b8ee  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
0055b8f6  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
0055b8fe  0f28c1                    MOVAPS XMM0,XMM1
0055b901  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0055b909  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0055b910  f30f59c2                  MULSS XMM0,XMM2
0055b914  f30f59ca                  MULSS XMM1,XMM2
0055b918  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
0055b920  0f2fc1                    COMISS XMM0,XMM1
0055b923  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
0055b92b  767b                      JBE 0x0055b9a8
0055b92d  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
0055b937  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0055b941  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0055b949  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0055b951  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0055b959  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0055b961  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0055b969  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0055b971  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0055b979  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0055b981  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
0055b98b  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0055b995  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0055b99f  5f                        POP EDI
0055b9a0  5e                        POP ESI
0055b9a1  8be5                      MOV ESP,EBP
0055b9a3  5d                        POP EBP
0055b9a4  8be3                      MOV ESP,EBX
0055b9a6  5b                        POP EBX
0055b9a7  c3                        RET
0055b9a8  0f57c0                    XORPS XMM0,XMM0
0055b9ab  b98016b600                MOV ECX,0xb61680
0055b9b0  0f2fc3                    COMISS XMM0,XMM3
0055b9b3  b88c16b600                MOV EAX,0xb6168c
0055b9b8  6a00                      PUSH 0x0
0055b9ba  0f47c1                    CMOVA EAX,ECX
0055b9bd  8bce                      MOV ECX,ESI
0055b9bf  50                        PUSH EAX
0055b9c0  e8bbe9eaff                CALL 0x0040a380
0055b9c5  5f                        POP EDI
0055b9c6  5e                        POP ESI
0055b9c7  8be5                      MOV ESP,EBP
0055b9c9  5d                        POP EBP
0055b9ca  8be3                      MOV ESP,EBX
0055b9cc  5b                        POP EBX
0055b9cd  c3                        RET
0055b9ce  807dff00                  CMP byte ptr [EBP + -0x1],0x0
0055b9d2  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0055b9d8  0f8428080000              JZ 0x0055c206
0055b9de  83f8ff                    CMP EAX,-0x1
0055b9e1  742c                      JZ 0x0055ba0f
0055b9e3  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0055b9e9  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0055b9ef  85c9                      TEST ECX,ECX
0055b9f1  741c                      JZ 0x0055ba0f
0055b9f3  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0055b9f6  81c1cc030000              ADD ECX,0x3cc
0055b9fc  8d45ec                    LEA EAX,[EBP + -0x14]
0055b9ff  50                        PUSH EAX
0055ba00  e80b38f7ff                CALL 0x004cf210
0055ba05  c787bc03000000000000      MOV dword ptr [EDI + 0x3bc],0x0
0055ba0f  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0055ba17  0f57c9                    XORPS XMM1,XMM1
0055ba1a  0f2ec1                    UCOMISS XMM0,XMM1
0055ba1d  9f                        LAHF
0055ba1e  f6c444                    TEST AH,0x44
0055ba21  0f8aee000000              JP 0x0055bb15
0055ba27  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0055ba2e  0f84e1000000              JZ 0x0055bb15
0055ba34  e827351900                CALL 0x006eef60
0055ba39  660f6ec0                  MOVD XMM0,EAX
0055ba3d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055ba41  c1e81f                    SHR EAX,0x1f
0055ba44  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055ba4d  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0055ba53  660f5ac8                  CVTPD2PS XMM1,XMM0
0055ba57  f30f108070030000          MOVSS XMM0,dword ptr [EAX + 0x370]
0055ba5f  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0055ba67  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
0055ba6f  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
0055ba77  f30f58c1                  ADDSS XMM0,XMM1
0055ba7b  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0055ba83  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0055ba8b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0055ba93  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0055ba9b  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
0055baa3  e8b8e2f3ff                CALL 0x00499d60
0055baa8  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0055bab0  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0055bab8  e8a3341900                CALL 0x006eef60
0055babd  a801                      TEST AL,0x1
0055babf  740a                      JZ 0x0055bacb
0055bac1  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0055bac9  eb08                      JMP 0x0055bad3
0055bacb  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0055bad3  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0055bad8  e883341900                CALL 0x006eef60
0055badd  0f57c9                    XORPS XMM1,XMM1
0055bae0  660f6ec0                  MOVD XMM0,EAX
0055bae4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055bae8  c1e81f                    SHR EAX,0x1f
0055baeb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055baf4  660f5ac0                  CVTPD2PS XMM0,XMM0
0055baf8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055bb00  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
0055bb08  f30f5945ec                MULSS XMM0,dword ptr [EBP + -0x14]
0055bb0d  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0055bb15  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0055bb1a  0f2fc1                    COMISS XMM0,XMM1
0055bb1d  765c                      JBE 0x0055bb7b
0055bb1f  e83c341900                CALL 0x006eef60
0055bb24  a801                      TEST AL,0x1
0055bb26  7553                      JNZ 0x0055bb7b
0055bb28  e833341900                CALL 0x006eef60
0055bb2d  51                        PUSH ECX
0055bb2e  660f6ec0                  MOVD XMM0,EAX
0055bb32  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055bb36  c1e81f                    SHR EAX,0x1f
0055bb39  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055bb42  660f5ac0                  CVTPD2PS XMM0,XMM0
0055bb46  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055bb4e  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0055bb56  f30f5805cca4ba00          ADDSS XMM0,dword ptr [0x00baa4cc]
0055bb5e  f30f110424                MOVSS dword ptr [ESP],XMM0
0055bb63  6a00                      PUSH 0x0
0055bb65  6a0a                      PUSH 0xa
0055bb67  51                        PUSH ECX
0055bb68  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0055bb6f  8bcf                      MOV ECX,EDI
0055bb71  68dd000000                PUSH 0xdd
0055bb76  e825b01700                CALL 0x006d6ba0
0055bb7b  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0055bb81  8945f4                    MOV dword ptr [EBP + -0xc],EAX
0055bb84  85c0                      TEST EAX,EAX
0055bb86  0f8497020000              JZ 0x0055be23
0055bb8c  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0055bb94  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
0055bb9c  e89f6b1200                CALL 0x00682740
0055bba1  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0055bba4  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0055bbac  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0055bbb1  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0055bbb9  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0055bbc1  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0055bbc9  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0055bbd1  f30f59c0                  MULSS XMM0,XMM0
0055bbd5  f30f59c9                  MULSS XMM1,XMM1
0055bbd9  f30f58c1                  ADDSS XMM0,XMM1
0055bbdd  e86e9eedff                CALL 0x00435a50
0055bbe2  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0055bbea  f30f580dd0a8ba00          ADDSS XMM1,dword ptr [0x00baa8d0]
0055bbf2  0f2fc1                    COMISS XMM0,XMM1
0055bbf5  7612                      JBE 0x0055bc09
0055bbf7  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0055bbfa  c787b00b00000000003f      MOV dword ptr [EDI + 0xbb0],0x3f000000
0055bc04  e921020000                JMP 0x0055be2a
0055bc09  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0055bc0e  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0055bc16  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0055bc1b  e82019ecff                CALL 0x0041d540
0055bc20  f30f5987b40b0000          MULSS XMM0,dword ptr [EDI + 0xbb4]
0055bc28  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0055bc2b  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
0055bc33  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0055bc3b  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
0055bc40  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0055bc45  e8d618ecff                CALL 0x0041d520
0055bc4a  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0055bc4d  0f28c8                    MOVAPS XMM1,XMM0
0055bc50  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
0055bc58  f30f588840030000          ADDSS XMM1,dword ptr [EAX + 0x340]
0055bc60  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0055bc68  0f28c1                    MOVAPS XMM0,XMM1
0055bc6b  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
0055bc70  f30f59c1                  MULSS XMM0,XMM1
0055bc74  f30f104df8                MOVSS XMM1,dword ptr [EBP + -0x8]
0055bc79  f30f59c9                  MULSS XMM1,XMM1
0055bc7d  f30f58c1                  ADDSS XMM0,XMM1
0055bc81  e8ca9dedff                CALL 0x00435a50
0055bc86  f30f105df8                MOVSS XMM3,dword ptr [EBP + -0x8]
0055bc8b  0f28c8                    MOVAPS XMM1,XMM0
0055bc8e  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
0055bc96  0f57d2                    XORPS XMM2,XMM2
0055bc99  0f2fc8                    COMISS XMM1,XMM0
0055bc9c  f30f1065ec                MOVSS XMM4,dword ptr [EBP + -0x14]
0055bca1  7611                      JBE 0x0055bcb4
0055bca3  0f2fca                    COMISS XMM1,XMM2
0055bca6  760c                      JBE 0x0055bcb4
0055bca8  f30f5ec1                  DIVSS XMM0,XMM1
0055bcac  f30f59d8                  MULSS XMM3,XMM0
0055bcb0  f30f59e0                  MULSS XMM4,XMM0
0055bcb4  f30f10af9c030000          MOVSS XMM5,dword ptr [EDI + 0x39c]
0055bcbc  f30f103554a4ba00          MOVSS XMM6,dword ptr [0x00baa454]
0055bcc4  f30f100d48a2ba00          MOVSS XMM1,dword ptr [0x00baa248]
0055bccc  0f2eee                    UCOMISS XMM5,XMM6
0055bccf  9f                        LAHF
0055bcd0  f6c444                    TEST AH,0x44
0055bcd3  7b13                      JNP 0x0055bce8
0055bcd5  0f28c5                    MOVAPS XMM0,XMM5
0055bcd8  f30f59e9                  MULSS XMM5,XMM1
0055bcdc  f30f58c1                  ADDSS XMM0,XMM1
0055bce0  f30f5cc5                  SUBSS XMM0,XMM5
0055bce4  f30f5ec8                  DIVSS XMM1,XMM0
0055bce8  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0055bceb  f30f5cf1                  SUBSS XMM6,XMM1
0055bcef  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0055bcf7  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0055bcff  f30f589860030000          ADDSS XMM3,dword ptr [EAX + 0x360]
0055bd07  f30f58a064030000          ADDSS XMM4,dword ptr [EAX + 0x364]
0055bd0f  f30f5cd8                  SUBSS XMM3,XMM0
0055bd13  f30f5ce1                  SUBSS XMM4,XMM1
0055bd17  f30f59de                  MULSS XMM3,XMM6
0055bd1b  f30f59e6                  MULSS XMM4,XMM6
0055bd1f  f30f58d8                  ADDSS XMM3,XMM0
0055bd23  f30f58e1                  ADDSS XMM4,XMM1
0055bd27  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0055bd2f  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
0055bd37  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055bd3f  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0055bd47  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055bd4f  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0055bd57  0f2fc2                    COMISS XMM0,XMM2
0055bd5a  760a                      JBE 0x0055bd66
0055bd5c  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
0055bd64  eb08                      JMP 0x0055bd6e
0055bd66  f30f100550aeba00          MOVSS XMM0,dword ptr [0x00baae50]
0055bd6e  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
0055bd76  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0055bd7e  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0055bd83  e8b817ecff                CALL 0x0041d540
0055bd88  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
0055bd8d  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0055bd92  e88917ecff                CALL 0x0041d520
0055bd97  0f28e0                    MOVAPS XMM4,XMM0
0055bd9a  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
0055bd9f  0f28cc                    MOVAPS XMM1,XMM4
0055bda2  0f28d8                    MOVAPS XMM3,XMM0
0055bda5  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0055bdac  0f541d40cbba00            ANDPS XMM3,xmmword ptr [0x00bacb40]
0055bdb3  0f2fd9                    COMISS XMM3,XMM1
0055bdb6  0f57c9                    XORPS XMM1,XMM1
0055bdb9  7634                      JBE 0x0055bdef
0055bdbb  0f2fc1                    COMISS XMM0,XMM1
0055bdbe  7613                      JBE 0x0055bdd3
0055bdc0  6a00                      PUSH 0x0
0055bdc2  688c16b600                PUSH 0xb6168c
0055bdc7  8bce                      MOV ECX,ESI
0055bdc9  e8b2e5eaff                CALL 0x0040a380
0055bdce  e9ed020000                JMP 0x0055c0c0
0055bdd3  0f2fc8                    COMISS XMM1,XMM0
0055bdd6  0f86e7020000              JBE 0x0055c0c3
0055bddc  6a00                      PUSH 0x0
0055bdde  688016b600                PUSH 0xb61680
0055bde3  8bce                      MOV ECX,ESI
0055bde5  e896e5eaff                CALL 0x0040a380
0055bdea  e9d1020000                JMP 0x0055c0c0
0055bdef  0f2fe1                    COMISS XMM4,XMM1
0055bdf2  7613                      JBE 0x0055be07
0055bdf4  6a00                      PUSH 0x0
0055bdf6  687416b600                PUSH 0xb61674
0055bdfb  8bce                      MOV ECX,ESI
0055bdfd  e87ee5eaff                CALL 0x0040a380
0055be02  e9b9020000                JMP 0x0055c0c0
0055be07  0f2fcc                    COMISS XMM1,XMM4
0055be0a  0f86b3020000              JBE 0x0055c0c3
0055be10  6a00                      PUSH 0x0
0055be12  68c016b600                PUSH 0xb616c0
0055be17  8bce                      MOV ECX,ESI
0055be19  e862e5eaff                CALL 0x0040a380
0055be1e  e99d020000                JMP 0x0055c0c0
0055be23  8bcf                      MOV ECX,EDI
0055be25  e8162a1600                CALL 0x006be840
0055be2a  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0055be32  8d4de8                    LEA ECX,[EBP + -0x18]
0055be35  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0055be3d  8d45f0                    LEA EAX,[EBP + -0x10]
0055be40  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0055be48  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0055be50  50                        PUSH EAX
0055be51  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0055be56  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
0055be5b  e8d0414b00                CALL 0x00a10030
0055be60  6a00                      PUSH 0x0
0055be62  6800020000                PUSH 0x200
0055be67  8bcf                      MOV ECX,EDI
0055be69  e8c2b5ebff                CALL 0x00417430
0055be6e  84c0                      TEST AL,AL
0055be70  747d                      JZ 0x0055beef
0055be72  a17816c700                MOV EAX,[0x00c71678]
0055be77  8d4de0                    LEA ECX,[EBP + -0x20]
0055be7a  f30f7e05ecf4b100          MOVQ XMM0,qword ptr [0x00b1f4ec]
0055be82  660fd645e4                MOVQ qword ptr [EBP + -0x1c],XMM0
0055be87  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0055be8d  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0055be93  69c0ff030000              IMUL EAX,EAX,0x3ff
0055be99  99                        CDQ
0055be9a  83e203                    AND EDX,0x3
0055be9d  03c2                      ADD EAX,EDX
0055be9f  c1f802                    SAR EAX,0x2
0055bea2  0387ec030000              ADD EAX,dword ptr [EDI + 0x3ec]
0055bea8  8945e0                    MOV dword ptr [EBP + -0x20],EAX
0055beab  a1f4f4b100                MOV EAX,[0x00b1f4f4]
0055beb0  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0055beb3  e838d22800                CALL 0x007e90f0
0055beb8  8d4de0                    LEA ECX,[EBP + -0x20]
0055bebb  e8c0d12800                CALL 0x007e9080
0055bec0  d80d30abba00              FMUL dword ptr [0x00baab30]
0055bec6  d80d88a0ba00              FMUL dword ptr [0x00baa088]
0055becc  d95dec                    FSTP dword ptr [EBP + -0x14]
0055becf  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0055bed4  e86716ecff                CALL 0x0041d540
0055bed9  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
0055bede  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0055bee3  e83816ecff                CALL 0x0041d520
0055bee8  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
0055beed  eb14                      JMP 0x0055bf03
0055beef  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
0055bef4  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
0055bef9  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
0055befe  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
0055bf03  6a00                      PUSH 0x0
0055bf05  6800080001                PUSH 0x1000800
0055bf0a  8bcf                      MOV ECX,EDI
0055bf0c  e81fb5ebff                CALL 0x00417430
0055bf11  f30f1065f4                MOVSS XMM4,dword ptr [EBP + -0xc]
0055bf16  f30f105df8                MOVSS XMM3,dword ptr [EBP + -0x8]
0055bf1b  84c0                      TEST AL,AL
0055bf1d  741a                      JZ 0x0055bf39
0055bf1f  f30f592550adba00          MULSS XMM4,dword ptr [0x00baad50]
0055bf27  f30f591d50adba00          MULSS XMM3,dword ptr [0x00baad50]
0055bf2f  f30f1165f4                MOVSS dword ptr [EBP + -0xc],XMM4
0055bf34  f30f115df8                MOVSS dword ptr [EBP + -0x8],XMM3
0055bf39  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055bf40  7421                      JZ 0x0055bf63
0055bf42  8d45e8                    LEA EAX,[EBP + -0x18]
0055bf45  0f57d2                    XORPS XMM2,XMM2
0055bf48  50                        PUSH EAX
0055bf49  8bcf                      MOV ECX,EDI
0055bf4b  e880c31700                CALL 0x006d82d0
0055bf50  f30f1020                  MOVSS XMM4,dword ptr [EAX]
0055bf54  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0055bf59  f30f1165f4                MOVSS dword ptr [EBP + -0xc],XMM4
0055bf5e  f30f115df8                MOVSS dword ptr [EBP + -0x8],XMM3
0055bf63  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0055bf67  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
0055bf6f  7512                      JNZ 0x0055bf83
0055bf71  f30f59e0                  MULSS XMM4,XMM0
0055bf75  f30f59d8                  MULSS XMM3,XMM0
0055bf79  f30f1165f4                MOVSS dword ptr [EBP + -0xc],XMM4
0055bf7e  f30f115df8                MOVSS dword ptr [EBP + -0x8],XMM3
0055bf83  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0055bf8b  f30f100d44a2ba00          MOVSS XMM1,dword ptr [0x00baa244]
0055bf93  0f28c2                    MOVAPS XMM0,XMM2
0055bf96  f30f590580a0ba00          MULSS XMM0,dword ptr [0x00baa080]
0055bf9e  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0055bfa6  f30f5dc8                  MINSS XMM1,XMM0
0055bfaa  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0055bfb2  0f28c1                    MOVAPS XMM0,XMM1
0055bfb5  f30f59c4                  MULSS XMM0,XMM4
0055bfb9  f30f59cb                  MULSS XMM1,XMM3
0055bfbd  f30f59c2                  MULSS XMM0,XMM2
0055bfc1  f30f59ca                  MULSS XMM1,XMM2
0055bfc5  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0055bfcd  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0055bfd5  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0055bfdd  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0055bfe5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055bfed  f30f590528a4ba00          MULSS XMM0,dword ptr [0x00baa428]
0055bff5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055bffd  0f2e2540b6c700            UCOMISS XMM4,dword ptr [0x00c7b640]
0055c004  9f                        LAHF
0055c005  f6c444                    TEST AH,0x44
0055c008  7a0d                      JP 0x0055c017
0055c00a  0f2e1d44b6c700            UCOMISS XMM3,dword ptr [0x00c7b644]
0055c011  9f                        LAHF
0055c012  f6c444                    TEST AH,0x44
0055c015  7b63                      JNP 0x0055c07a
0055c017  0f28d4                    MOVAPS XMM2,XMM4
0055c01a  0f28c3                    MOVAPS XMM0,XMM3
0055c01d  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0055c024  0f57c9                    XORPS XMM1,XMM1
0055c027  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0055c02e  0f2fd0                    COMISS XMM2,XMM0
0055c031  761c                      JBE 0x0055c04f
0055c033  0f2fe1                    COMISS XMM4,XMM1
0055c036  7609                      JBE 0x0055c041
0055c038  6a00                      PUSH 0x0
0055c03a  688c16b600                PUSH 0xb6168c
0055c03f  eb28                      JMP 0x0055c069
0055c041  0f2fcc                    COMISS XMM1,XMM4
0055c044  7637                      JBE 0x0055c07d
0055c046  6a00                      PUSH 0x0
0055c048  688016b600                PUSH 0xb61680
0055c04d  eb1a                      JMP 0x0055c069
0055c04f  0f2fd9                    COMISS XMM3,XMM1
0055c052  7609                      JBE 0x0055c05d
0055c054  6a00                      PUSH 0x0
0055c056  687416b600                PUSH 0xb61674
0055c05b  eb0c                      JMP 0x0055c069
0055c05d  0f2fcb                    COMISS XMM1,XMM3
0055c060  761b                      JBE 0x0055c07d
0055c062  6a00                      PUSH 0x0
0055c064  68c016b600                PUSH 0xb616c0
0055c069  8bce                      MOV ECX,ESI
0055c06b  e810e3eaff                CALL 0x0040a380
0055c070  f30f1065f4                MOVSS XMM4,dword ptr [EBP + -0xc]
0055c075  f30f105df8                MOVSS XMM3,dword ptr [EBP + -0x8]
0055c07a  0f57c9                    XORPS XMM1,XMM1
0055c07d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055c084  743d                      JZ 0x0055c0c3
0055c086  f30f59db                  MULSS XMM3,XMM3
0055c08a  f30f59e4                  MULSS XMM4,XMM4
0055c08e  f30f58dc                  ADDSS XMM3,XMM4
0055c092  0f28c3                    MOVAPS XMM0,XMM3
0055c095  e8b699edff                CALL 0x00435a50
0055c09a  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0055c09e  7508                      JNZ 0x0055c0a8
0055c0a0  f30f5e0580a3ba00          DIVSS XMM0,dword ptr [0x00baa380]
0055c0a8  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0055c0b0  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0055c0b8  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
0055c0c0  0f57c9                    XORPS XMM1,XMM1
0055c0c3  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0055c0cb  0f2fcb                    COMISS XMM1,XMM3
0055c0ce  a17816c700                MOV EAX,[0x00c71678]
0055c0d3  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0055c0d9  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0055c0e1  0f28eb                    MOVAPS XMM5,XMM3
0055c0e4  f30f103534adba00          MOVSS XMM6,dword ptr [0x00baad34]
0055c0ec  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
0055c0f4  f30f59ec                  MULSS XMM5,XMM4
0055c0f8  f30f59a764030000          MULSS XMM4,dword ptr [EDI + 0x364]
0055c100  f30f58af3c030000          ADDSS XMM5,dword ptr [EDI + 0x33c]
0055c108  f30f58a740030000          ADDSS XMM4,dword ptr [EDI + 0x340]
0055c110  760e                      JBE 0x0055c120
0055c112  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0055c117  f30f58c2                  ADDSS XMM0,XMM2
0055c11b  0f2fc5                    COMISS XMM0,XMM5
0055c11e  7713                      JA 0x0055c133
0055c120  0f2fd9                    COMISS XMM3,XMM1
0055c123  761a                      JBE 0x0055c13f
0055c125  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
0055c12a  f30f5cc2                  SUBSS XMM0,XMM2
0055c12e  0f2fe8                    COMISS XMM5,XMM0
0055c131  760c                      JBE 0x0055c13f
0055c133  f30f59de                  MULSS XMM3,XMM6
0055c137  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0055c13f  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
0055c147  0f2fcb                    COMISS XMM1,XMM3
0055c14a  7612                      JBE 0x0055c15e
0055c14c  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0055c151  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
0055c159  0f2fc4                    COMISS XMM0,XMM4
0055c15c  7717                      JA 0x0055c175
0055c15e  0f2fd9                    COMISS XMM3,XMM1
0055c161  761e                      JBE 0x0055c181
0055c163  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
0055c168  f30f5c055ca7ba00          SUBSS XMM0,dword ptr [0x00baa75c]
0055c170  0f2fe0                    COMISS XMM4,XMM0
0055c173  760c                      JBE 0x0055c181
0055c175  f30f59de                  MULSS XMM3,XMM6
0055c179  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0055c181  f30f5e976c030000          DIVSS XMM2,dword ptr [EDI + 0x36c]
0055c189  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0055c191  0f28c1                    MOVAPS XMM0,XMM1
0055c194  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
0055c199  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0055c1a1  f30f59c1                  MULSS XMM0,XMM1
0055c1a5  0f28ca                    MOVAPS XMM1,XMM2
0055c1a8  f30f59ca                  MULSS XMM1,XMM2
0055c1ac  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
0055c1b1  f30f58c1                  ADDSS XMM0,XMM1
0055c1b5  e89698edff                CALL 0x00435a50
0055c1ba  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
0055c1bf  0f2fc1                    COMISS XMM0,XMM1
0055c1c2  0f86cd020000              JBE 0x0055c495
0055c1c8  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0055c1cf  0f86c0020000              JBE 0x0055c495
0055c1d5  f30f5ec8                  DIVSS XMM1,XMM0
0055c1d9  0f28c1                    MOVAPS XMM0,XMM1
0055c1dc  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
0055c1e4  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0055c1ec  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
0055c1f1  f30f59c1                  MULSS XMM0,XMM1
0055c1f5  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0055c1fd  5f                        POP EDI
0055c1fe  5e                        POP ESI
0055c1ff  8be5                      MOV ESP,EBP
0055c201  5d                        POP EBP
0055c202  8be3                      MOV ESP,EBX
0055c204  5b                        POP EBX
0055c205  c3                        RET
0055c206  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055c20e  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055c216  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055c21e  83f8ff                    CMP EAX,-0x1
0055c221  7424                      JZ 0x0055c247
0055c223  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0055c22b  8d45e8                    LEA EAX,[EBP + -0x18]
0055c22e  50                        PUSH EAX
0055c22f  8bcf                      MOV ECX,EDI
0055c231  e89ac01700                CALL 0x006d82d0
0055c236  6840b6c700                PUSH 0xc7b640
0055c23b  8bc8                      MOV ECX,EAX
0055c23d  e8ee434b00                CALL 0x00a10630
0055c242  0fb6c0                    MOVZX EAX,AL
0055c245  eb0a                      JMP 0x0055c251
0055c247  e8142d1900                CALL 0x006eef60
0055c24c  f7d0                      NOT EAX
0055c24e  83e001                    AND EAX,0x1
0055c251  85c0                      TEST EAX,EAX
0055c253  0f843c020000              JZ 0x0055c495
0055c259  51                        PUSH ECX
0055c25a  8d45f0                    LEA EAX,[EBP + -0x10]
0055c25d  c7042400000000            MOV dword ptr [ESP],0x0
0055c264  50                        PUSH EAX
0055c265  8bcf                      MOV ECX,EDI
0055c267  e8d4291600                CALL 0x006bec40
0055c26c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0055c270  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0055c278  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0055c27d  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0055c285  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0055c28c  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0055c291  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
0055c296  9f                        LAHF
0055c297  f6c444                    TEST AH,0x44
0055c29a  7a24                      JP 0x0055c2c0
0055c29c  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
0055c2a3  9f                        LAHF
0055c2a4  f6c444                    TEST AH,0x44
0055c2a7  7a17                      JP 0x0055c2c0
0055c2a9  8d45f0                    LEA EAX,[EBP + -0x10]
0055c2ac  50                        PUSH EAX
0055c2ad  e8be2d1200                CALL 0x0067f070
0055c2b2  83c404                    ADD ESP,0x4
0055c2b5  f30f1020                  MOVSS XMM4,dword ptr [EAX]
0055c2b9  f30f106804                MOVSS XMM5,dword ptr [EAX + 0x4]
0055c2be  eb12                      JMP 0x0055c2d2
0055c2c0  8d4de8                    LEA ECX,[EBP + -0x18]
0055c2c3  e8f83c4b00                CALL 0x00a0ffc0
0055c2c8  f30f106dec                MOVSS XMM5,dword ptr [EBP + -0x14]
0055c2cd  f30f1065e8                MOVSS XMM4,dword ptr [EBP + -0x18]
0055c2d2  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055c2d9  f30f1165ec                MOVSS dword ptr [EBP + -0x14],XMM4
0055c2de  f30f116df4                MOVSS dword ptr [EBP + -0xc],XMM5
0055c2e3  7426                      JZ 0x0055c30b
0055c2e5  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0055c2ed  8d45f0                    LEA EAX,[EBP + -0x10]
0055c2f0  50                        PUSH EAX
0055c2f1  8bcf                      MOV ECX,EDI
0055c2f3  e8d8bf1700                CALL 0x006d82d0
0055c2f8  f30f1020                  MOVSS XMM4,dword ptr [EAX]
0055c2fc  f30f106804                MOVSS XMM5,dword ptr [EAX + 0x4]
0055c301  f30f1165ec                MOVSS dword ptr [EBP + -0x14],XMM4
0055c306  f30f116df4                MOVSS dword ptr [EBP + -0xc],XMM5
0055c30b  0f2e2540b6c700            UCOMISS XMM4,dword ptr [0x00c7b640]
0055c312  9f                        LAHF
0055c313  f6c444                    TEST AH,0x44
0055c316  7a11                      JP 0x0055c329
0055c318  0f2e2d44b6c700            UCOMISS XMM5,dword ptr [0x00c7b644]
0055c31f  9f                        LAHF
0055c320  f6c444                    TEST AH,0x44
0055c323  0f8b6c010000              JNP 0x0055c495
0055c329  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055c330  740a                      JZ 0x0055c33c
0055c332  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
0055c33a  eb3b                      JMP 0x0055c377
0055c33c  e81f2c1900                CALL 0x006eef60
0055c341  f30f1065ec                MOVSS XMM4,dword ptr [EBP + -0x14]
0055c346  f30f106df4                MOVSS XMM5,dword ptr [EBP + -0xc]
0055c34b  660f6ec0                  MOVD XMM0,EAX
0055c34f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055c353  c1e81f                    SHR EAX,0x1f
0055c356  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055c35f  660f5ac0                  CVTPD2PS XMM0,XMM0
0055c363  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055c36b  f30f58c0                  ADDSS XMM0,XMM0
0055c36f  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0055c377  f30f10bf6c030000          MOVSS XMM7,dword ptr [EDI + 0x36c]
0055c37f  0f57db                    XORPS XMM3,XMM3
0055c382  0f2efb                    UCOMISS XMM7,XMM3
0055c385  0f28d4                    MOVAPS XMM2,XMM4
0055c388  0f28f5                    MOVAPS XMM6,XMM5
0055c38b  f30f59d0                  MULSS XMM2,XMM0
0055c38f  9f                        LAHF
0055c390  f30f59f0                  MULSS XMM6,XMM0
0055c394  f6c444                    TEST AH,0x44
0055c397  7b3b                      JNP 0x0055c3d4
0055c399  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0055c3a1  0f28c1                    MOVAPS XMM0,XMM1
0055c3a4  f30f59ce                  MULSS XMM1,XMM6
0055c3a8  f30f59c2                  MULSS XMM0,XMM2
0055c3ac  f30f5ecf                  DIVSS XMM1,XMM7
0055c3b0  f30f5ec7                  DIVSS XMM0,XMM7
0055c3b4  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0055c3bc  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0055c3c4  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0055c3cc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0055c3d4  0f28d4                    MOVAPS XMM2,XMM4
0055c3d7  0f28c5                    MOVAPS XMM0,XMM5
0055c3da  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0055c3e1  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0055c3e8  0f2fd0                    COMISS XMM2,XMM0
0055c3eb  761c                      JBE 0x0055c409
0055c3ed  0f2fe3                    COMISS XMM4,XMM3
0055c3f0  7609                      JBE 0x0055c3fb
0055c3f2  6a01                      PUSH 0x1
0055c3f4  68b416b600                PUSH 0xb616b4
0055c3f9  eb28                      JMP 0x0055c423
0055c3fb  0f2fdc                    COMISS XMM3,XMM4
0055c3fe  763a                      JBE 0x0055c43a
0055c400  6a01                      PUSH 0x1
0055c402  68ac16b600                PUSH 0xb616ac
0055c407  eb1a                      JMP 0x0055c423
0055c409  0f2feb                    COMISS XMM5,XMM3
0055c40c  7609                      JBE 0x0055c417
0055c40e  6a01                      PUSH 0x1
0055c410  68a416b600                PUSH 0xb616a4
0055c415  eb0c                      JMP 0x0055c423
0055c417  0f2fdd                    COMISS XMM3,XMM5
0055c41a  761e                      JBE 0x0055c43a
0055c41c  6a01                      PUSH 0x1
0055c41e  68e816b600                PUSH 0xb616e8
0055c423  8bce                      MOV ECX,ESI
0055c425  e8a6e1eaff                CALL 0x0040a5d0
0055c42a  84c0                      TEST AL,AL
0055c42c  740c                      JZ 0x0055c43a
0055c42e  8d4e30                    LEA ECX,[ESI + 0x30]
0055c431  e87addeaff                CALL 0x0040a1b0
0055c436  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0055c43a  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
0055c444  5f                        POP EDI
0055c445  5e                        POP ESI
0055c446  8be5                      MOV ESP,EBP
0055c448  5d                        POP EBP
0055c449  8be3                      MOV ESP,EBX
0055c44b  5b                        POP EBX
0055c44c  c3                        RET
0055c44d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055c451  7438                      JZ 0x0055c48b
0055c453  6874d5b100                PUSH 0xb1d574
0055c458  8d4f78                    LEA ECX,[EDI + 0x78]
0055c45b  e810eaeaff                CALL 0x0040ae70
0055c460  84c0                      TEST AL,AL
0055c462  7418                      JZ 0x0055c47c
0055c464  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055c46c  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055c474  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055c47c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055c480  7409                      JZ 0x0055c48b
0055c482  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0055c489  750a                      JNZ 0x0055c495
0055c48b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0055c495  5f                        POP EDI
0055c496  5e                        POP ESI
0055c497  8be5                      MOV ESP,EBP
0055c499  5d                        POP EBP
0055c49a  8be3                      MOV ESP,EBX
0055c49c  5b                        POP EBX
0055c49d  c3                        RET
