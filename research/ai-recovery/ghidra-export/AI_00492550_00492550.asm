; J460 NPC AI 0x00492550 AI_00492550
; types=291
; identities=291.0.0,291.1.0,291.2.0
; entry=00492550
00492550  55                        PUSH EBP
00492551  8bec                      MOV EBP,ESP
00492553  83e4f8                    AND ESP,0xfffffff8
00492556  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0049255e  83ec28                    SUB ESP,0x28
00492561  56                        PUSH ESI
00492562  57                        PUSH EDI
00492563  8bf9                      MOV EDI,ECX
00492565  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0049256c  0f85f0000000              JNZ 0x00492662
00492572  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00492578  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
00492580  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
0049258a  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00492594  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0049259e  c7875c03000000000000      MOV dword ptr [EDI + 0x35c],0x0
004925a8  c787540300001c0c0000      MOV dword ptr [EDI + 0x354],0xc1c
004925b2  ff7048                    PUSH dword ptr [EAX + 0x48]
004925b5  c74424300000003f          MOV dword ptr [ESP + 0x30],0x3f000000
004925bd  ff742430                  PUSH dword ptr [ESP + 0x30]
004925c1  c74424300000803f          MOV dword ptr [ESP + 0x30],0x3f800000
004925c9  ff742430                  PUSH dword ptr [ESP + 0x30]
004925cd  51                        PUSH ECX
004925ce  f30f110424                MOVSS dword ptr [ESP],XMM0
004925d3  e8c89c2100                CALL 0x006ac2a0
004925d8  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
004925e0  8db73c030000              LEA ESI,[EDI + 0x33c]
004925e6  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004925ec  83ec0c                    SUB ESP,0xc
004925ef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004925f5  0f28c3                    MOVAPS XMM0,XMM3
004925f8  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00492600  818f6801000011000004      OR dword ptr [EDI + 0x168],0x4000011
0049260a  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00492610  8d442434                  LEA EAX,[ESP + 0x34]
00492614  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0049261a  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00492620  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00492626  f30f110424                MOVSS dword ptr [ESP],XMM0
0049262b  56                        PUSH ESI
0049262c  50                        PUSH EAX
0049262d  e81e093800                CALL 0x00812f50
00492632  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
00492638  8bcf                      MOV ECX,EDI
0049263a  f30f1106                  MOVSS dword ptr [ESI],XMM0
0049263e  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00492644  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00492649  6a01                      PUSH 0x1
0049264b  c787b00b00000000803f      MOV dword ptr [EDI + 0xbb0],0x3f800000
00492655  e856de2200                CALL 0x006c04b0
0049265a  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00492662  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0049266a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00492672  f30f5cc1                  SUBSS XMM0,XMM1
00492676  a17816c700                MOV EAX,[0x00c71678]
0049267b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00492681  f30f5ec1                  DIVSS XMM0,XMM1
00492685  f30f58c2                  ADDSS XMM0,XMM2
00492689  f30f2cd0                  CVTTSS2SI EDX,XMM0
0049268d  85d2                      TEST EDX,EDX
0049268f  7850                      JS 0x004926e1
00492691  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
00492694  3bd6                      CMP EDX,ESI
00492696  7d49                      JGE 0x004926e1
00492698  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004926a0  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004926a8  f30f5ec1                  DIVSS XMM0,XMM1
004926ac  f30f58c2                  ADDSS XMM0,XMM2
004926b0  f30f2cc0                  CVTTSS2SI EAX,XMM0
004926b4  85c0                      TEST EAX,EAX
004926b6  7829                      JS 0x004926e1
004926b8  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004926bb  7d24                      JGE 0x004926e1
004926bd  0fafc6                    IMUL EAX,ESI
004926c0  03c2                      ADD EAX,EDX
004926c2  3dbf010000                CMP EAX,0x1bf
004926c7  7718                      JA 0x004926e1
004926c9  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
004926d4  7f0b                      JG 0x004926e1
004926d6  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
004926e1  83bf640b000002            CMP dword ptr [EDI + 0xb64],0x2
004926e8  0f8595000000              JNZ 0x00492783
004926ee  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004926f1  85f6                      TEST ESI,ESI
004926f3  744a                      JZ 0x0049273f
004926f5  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004926f9  8bc6                      MOV EAX,ESI
004926fb  7202                      JC 0x004926ff
004926fd  8b06                      MOV EAX,dword ptr [ESI]
004926ff  b998d5b100                MOV ECX,0xb1d598
00492704  8a10                      MOV DL,byte ptr [EAX]
00492706  3a11                      CMP DL,byte ptr [ECX]
00492708  751a                      JNZ 0x00492724
0049270a  84d2                      TEST DL,DL
0049270c  7412                      JZ 0x00492720
0049270e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00492711  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00492714  750e                      JNZ 0x00492724
00492716  83c002                    ADD EAX,0x2
00492719  83c102                    ADD ECX,0x2
0049271c  84d2                      TEST DL,DL
0049271e  75e4                      JNZ 0x00492704
00492720  33c0                      XOR EAX,EAX
00492722  eb05                      JMP 0x00492729
00492724  1bc0                      SBB EAX,EAX
00492726  83c801                    OR EAX,0x1
00492729  85c0                      TEST EAX,EAX
0049272b  7512                      JNZ 0x0049273f
0049272d  384634                    CMP byte ptr [ESI + 0x34],AL
00492730  742e                      JZ 0x00492760
00492732  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00492738  8d7748                    LEA ESI,[EDI + 0x48]
0049273b  7523                      JNZ 0x00492760
0049273d  eb03                      JMP 0x00492742
0049273f  8d7748                    LEA ESI,[EDI + 0x48]
00492742  6a01                      PUSH 0x1
00492744  6898d5b100                PUSH 0xb1d598
00492749  8bce                      MOV ECX,ESI
0049274b  e8807ef7ff                CALL 0x0040a5d0
00492750  84c0                      TEST AL,AL
00492752  740c                      JZ 0x00492760
00492754  8d4e30                    LEA ECX,[ESI + 0x30]
00492757  e8547af7ff                CALL 0x0040a1b0
0049275c  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00492760  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00492764  7409                      JZ 0x0049276f
00492766  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049276d  7514                      JNZ 0x00492783
0049276f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00492779  c7878801000003000000      MOV dword ptr [EDI + 0x188],0x3
00492783  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00492789  83f802                    CMP EAX,0x2
0049278c  0f8460010000              JZ 0x004928f2
00492792  83f803                    CMP EAX,0x3
00492795  0f85cf050000              JNZ 0x00492d6a
0049279b  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0049279e  85c0                      TEST EAX,EAX
004927a0  0f84da000000              JZ 0x00492880
004927a6  83f802                    CMP EAX,0x2
004927a9  0f84d1000000              JZ 0x00492880
004927af  83f801                    CMP EAX,0x1
004927b2  7578                      JNZ 0x0049282c
004927b4  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004927b7  85f6                      TEST ESI,ESI
004927b9  7462                      JZ 0x0049281d
004927bb  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004927bf  8bc6                      MOV EAX,ESI
004927c1  7202                      JC 0x004927c5
004927c3  8b06                      MOV EAX,dword ptr [ESI]
004927c5  b9a0dab100                MOV ECX,0xb1daa0
004927ca  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004927d0  8a10                      MOV DL,byte ptr [EAX]
004927d2  3a11                      CMP DL,byte ptr [ECX]
004927d4  751a                      JNZ 0x004927f0
004927d6  84d2                      TEST DL,DL
004927d8  7412                      JZ 0x004927ec
004927da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004927dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004927e0  750e                      JNZ 0x004927f0
004927e2  83c002                    ADD EAX,0x2
004927e5  83c102                    ADD ECX,0x2
004927e8  84d2                      TEST DL,DL
004927ea  75e4                      JNZ 0x004927d0
004927ec  33c0                      XOR EAX,EAX
004927ee  eb05                      JMP 0x004927f5
004927f0  1bc0                      SBB EAX,EAX
004927f2  83c801                    OR EAX,0x1
004927f5  85c0                      TEST EAX,EAX
004927f7  7524                      JNZ 0x0049281d
004927f9  384634                    CMP byte ptr [ESI + 0x34],AL
004927fc  0f84f0000000              JZ 0x004928f2
00492802  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00492808  8d7748                    LEA ESI,[EDI + 0x48]
0049280b  0f85e1000000              JNZ 0x004928f2
00492811  6a01                      PUSH 0x1
00492813  68a0dab100                PUSH 0xb1daa0
00492818  e9be000000                JMP 0x004928db
0049281d  6a01                      PUSH 0x1
0049281f  8d7748                    LEA ESI,[EDI + 0x48]
00492822  68a0dab100                PUSH 0xb1daa0
00492827  e9af000000                JMP 0x004928db
0049282c  83f803                    CMP EAX,0x3
0049282f  0f85bd000000              JNZ 0x004928f2
00492835  6a00                      PUSH 0x0
00492837  8d4f48                    LEA ECX,[EDI + 0x48]
0049283a  6854bcb100                PUSH 0xb1bc54
0049283f  e83c7bf7ff                CALL 0x0040a380
00492844  e817c72500                CALL 0x006eef60
00492849  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049284f  6a00                      PUSH 0x0
00492851  50                        PUSH EAX
00492852  6a00                      PUSH 0x0
00492854  57                        PUSH EDI
00492855  6840b6c700                PUSH 0xc7b640
0049285a  8d873c030000              LEA EAX,[EDI + 0x33c]
00492860  50                        PUSH EAX
00492861  6a00                      PUSH 0x0
00492863  6829010000                PUSH 0x129
00492868  e8a3bb2600                CALL 0x006fe410
0049286d  c7472c01000000            MOV dword ptr [EDI + 0x2c],0x1
00492874  c787b00b0000cdcc0c3f      MOV dword ptr [EDI + 0xbb0],0x3f0ccccd
0049287e  eb72                      JMP 0x004928f2
00492880  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00492883  85f6                      TEST ESI,ESI
00492885  744a                      JZ 0x004928d1
00492887  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0049288b  8bc6                      MOV EAX,ESI
0049288d  7202                      JC 0x00492891
0049288f  8b06                      MOV EAX,dword ptr [ESI]
00492891  b954bcb100                MOV ECX,0xb1bc54
00492896  8a10                      MOV DL,byte ptr [EAX]
00492898  3a11                      CMP DL,byte ptr [ECX]
0049289a  751a                      JNZ 0x004928b6
0049289c  84d2                      TEST DL,DL
0049289e  7412                      JZ 0x004928b2
004928a0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004928a3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004928a6  750e                      JNZ 0x004928b6
004928a8  83c002                    ADD EAX,0x2
004928ab  83c102                    ADD ECX,0x2
004928ae  84d2                      TEST DL,DL
004928b0  75e4                      JNZ 0x00492896
004928b2  33c0                      XOR EAX,EAX
004928b4  eb05                      JMP 0x004928bb
004928b6  1bc0                      SBB EAX,EAX
004928b8  83c801                    OR EAX,0x1
004928bb  85c0                      TEST EAX,EAX
004928bd  7512                      JNZ 0x004928d1
004928bf  384634                    CMP byte ptr [ESI + 0x34],AL
004928c2  742e                      JZ 0x004928f2
004928c4  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004928ca  8d7748                    LEA ESI,[EDI + 0x48]
004928cd  7523                      JNZ 0x004928f2
004928cf  eb03                      JMP 0x004928d4
004928d1  8d7748                    LEA ESI,[EDI + 0x48]
004928d4  6a01                      PUSH 0x1
004928d6  6854bcb100                PUSH 0xb1bc54
004928db  8bce                      MOV ECX,ESI
004928dd  e8ee7cf7ff                CALL 0x0040a5d0
004928e2  84c0                      TEST AL,AL
004928e4  740c                      JZ 0x004928f2
004928e6  8d4e30                    LEA ECX,[ESI + 0x30]
004928e9  e8c278f7ff                CALL 0x0040a1b0
004928ee  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004928f2  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
004928f5  8bf1                      MOV ESI,ECX
004928f7  83f903                    CMP ECX,0x3
004928fa  0f84a7010000              JZ 0x00492aa7
00492900  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00492907  0f859a010000              JNZ 0x00492aa7
0049290d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00492913  2500000020                AND EAX,0x20000000
00492918  83c800                    OR EAX,0x0
0049291b  0f8586010000              JNZ 0x00492aa7
00492921  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00492927  33d2                      XOR EDX,EDX
00492929  8954240c                  MOV dword ptr [ESP + 0xc],EDX
0049292d  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00492933  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00492939  c1f802                    SAR EAX,0x2
0049293c  85c0                      TEST EAX,EAX
0049293e  0f8463010000              JZ 0x00492aa7
00492944  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049294a  52                        PUSH EDX
0049294b  e8204ff8ff                CALL 0x00417870
00492950  f30f108774030000          MOVSS XMM0,dword ptr [EDI + 0x374]
00492958  8bf0                      MOV ESI,EAX
0049295a  f30f108f78030000          MOVSS XMM1,dword ptr [EDI + 0x378]
00492962  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0049296a  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
00492972  f30f10a63c030000          MOVSS XMM4,dword ptr [ESI + 0x33c]
0049297a  f30f10ae40030000          MOVSS XMM5,dword ptr [ESI + 0x340]
00492982  f30f5ee0                  DIVSS XMM4,XMM0
00492986  f30f5ed0                  DIVSS XMM2,XMM0
0049298a  f30f5ee9                  DIVSS XMM5,XMM1
0049298e  f30f5ed9                  DIVSS XMM3,XMM1
00492992  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0049299a  f30f5ce2                  SUBSS XMM4,XMM2
0049299e  f30f5ceb                  SUBSS XMM5,XMM3
004929a2  f30f59c0                  MULSS XMM0,XMM0
004929a6  f30f59e4                  MULSS XMM4,XMM4
004929aa  f30f59ed                  MULSS XMM5,XMM5
004929ae  f30f58ec                  ADDSS XMM5,XMM4
004929b2  0f2fc5                    COMISS XMM0,XMM5
004929b5  0f86c3000000              JBE 0x00492a7e
004929bb  8b8684010000              MOV EAX,dword ptr [ESI + 0x184]
004929c1  85c0                      TEST EAX,EAX
004929c3  0f84b5000000              JZ 0x00492a7e
004929c9  83f803                    CMP EAX,0x3
004929cc  0f84ac000000              JZ 0x00492a7e
004929d2  83f801                    CMP EAX,0x1
004929d5  0f84a3000000              JZ 0x00492a7e
004929db  83f802                    CMP EAX,0x2
004929de  0f849a000000              JZ 0x00492a7e
004929e4  83befc03000000            CMP dword ptr [ESI + 0x3fc],0x0
004929eb  0f858d000000              JNZ 0x00492a7e
004929f1  6871020000                PUSH 0x271
004929f6  8d8e08150000              LEA ECX,[ESI + 0x1508]
004929fc  e8efdb4900                CALL 0x009305f0
00492a01  84c0                      TEST AL,AL
00492a03  7531                      JNZ 0x00492a36
00492a05  6850b3b600                PUSH 0xb6b350
00492a0a  8bce                      MOV ECX,ESI
00492a0c  e80f943100                CALL 0x007abe20
00492a11  c6861004000000            MOV byte ptr [ESI + 0x410],0x0
00492a18  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00492a22  c786fc03000001000000      MOV dword ptr [ESI + 0x3fc],0x1
00492a2c  c7860004000000000000      MOV dword ptr [ESI + 0x400],0x0
00492a36  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00492a3c  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00492a42  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00492a4c  85c9                      TEST ECX,ECX
00492a4e  741a                      JZ 0x00492a6a
00492a50  89442414                  MOV dword ptr [ESP + 0x14],EAX
00492a54  81c1cc030000              ADD ECX,0x3cc
00492a5a  8d442414                  LEA EAX,[ESP + 0x14]
00492a5e  50                        PUSH EAX
00492a5f  e8acc70300                CALL 0x004cf210
00492a64  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00492a6a  50                        PUSH EAX
00492a6b  8bce                      MOV ECX,ESI
00492a6d  8930                      MOV dword ptr [EAX],ESI
00492a6f  e87cb20300                CALL 0x004cdcf0
00492a74  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00492a7e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00492a84  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
00492a88  42                        INC EDX
00492a89  8954240c                  MOV dword ptr [ESP + 0xc],EDX
00492a8d  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00492a93  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00492a99  c1f802                    SAR EAX,0x2
00492a9c  3bd0                      CMP EDX,EAX
00492a9e  0f82a0feffff              JC 0x00492944
00492aa4  8b772c                    MOV ESI,dword ptr [EDI + 0x2c]
00492aa7  83fe01                    CMP ESI,0x1
00492aaa  0f854a020000              JNZ 0x00492cfa
00492ab0  a17816c700                MOV EAX,[0x00c71678]
00492ab5  33f6                      XOR ESI,ESI
00492ab7  89742414                  MOV dword ptr [ESP + 0x14],ESI
00492abb  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00492ac1  89442428                  MOV dword ptr [ESP + 0x28],EAX
00492ac5  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
00492acb  0f8629020000              JBE 0x00492cfa
00492ad1  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00492ad7  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
00492ada  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00492add  83f801                    CMP EAX,0x1
00492ae0  740e                      JZ 0x00492af0
00492ae2  83f802                    CMP EAX,0x2
00492ae5  7409                      JZ 0x00492af0
00492ae7  83f809                    CMP EAX,0x9
00492aea  0f85f1010000              JNZ 0x00492ce1
00492af0  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
00492af8  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
00492b00  0f28c2                    MOVAPS XMM0,XMM2
00492b03  0f28cb                    MOVAPS XMM1,XMM3
00492b06  83f801                    CMP EAX,0x1
00492b09  7567                      JNZ 0x00492b72
00492b0b  8b86681e0000              MOV EAX,dword ptr [ESI + 0x1e68]
00492b11  85c0                      TEST EAX,EAX
00492b13  7457                      JZ 0x00492b6c
00492b15  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
00492b1d  0f28ca                    MOVAPS XMM1,XMM2
00492b20  f30f10a840030000          MOVSS XMM5,dword ptr [EAX + 0x340]
00492b28  f30f5ccc                  SUBSS XMM1,XMM4
00492b2c  0f28c3                    MOVAPS XMM0,XMM3
00492b2f  f30f5cc5                  SUBSS XMM0,XMM5
00492b33  f30f59c9                  MULSS XMM1,XMM1
00492b37  f30f59c0                  MULSS XMM0,XMM0
00492b3b  f30f58c1                  ADDSS XMM0,XMM1
00492b3f  f30f100df8abba00          MOVSS XMM1,dword ptr [0x00baabf8]
00492b47  0f2fc8                    COMISS XMM1,XMM0
00492b4a  7620                      JBE 0x00492b6c
00492b4c  0f28c2                    MOVAPS XMM0,XMM2
00492b4f  0f28cb                    MOVAPS XMM1,XMM3
00492b52  f30f58c4                  ADDSS XMM0,XMM4
00492b56  f30f58cd                  ADDSS XMM1,XMM5
00492b5a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00492b62  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00492b6a  eb06                      JMP 0x00492b72
00492b6c  0f28c2                    MOVAPS XMM0,XMM2
00492b6f  0f28cb                    MOVAPS XMM1,XMM3
00492b72  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00492b7a  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
00492b82  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00492b88  f30f5cd0                  SUBSS XMM2,XMM0
00492b8c  f30f115c2420              MOVSS dword ptr [ESP + 0x20],XMM3
00492b92  f30f5cd9                  SUBSS XMM3,XMM1
00492b96  0f28ca                    MOVAPS XMM1,XMM2
00492b99  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
00492b9f  0f28c3                    MOVAPS XMM0,XMM3
00492ba2  f30f59ca                  MULSS XMM1,XMM2
00492ba6  f30f59c3                  MULSS XMM0,XMM3
00492baa  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
00492bb0  f30f58c1                  ADDSS XMM0,XMM1
00492bb4  e8972efaff                CALL 0x00435a50
00492bb9  0f57c9                    XORPS XMM1,XMM1
00492bbc  0f2fc1                    COMISS XMM0,XMM1
00492bbf  762c                      JBE 0x00492bed
00492bc1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00492bc9  f30f5ec8                  DIVSS XMM1,XMM0
00492bcd  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
00492bd3  f30f59c1                  MULSS XMM0,XMM1
00492bd7  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00492bdd  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00492be3  f30f59c1                  MULSS XMM0,XMM1
00492be7  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00492bed  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00492bf1  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
00492bf9  7508                      JNZ 0x00492c03
00492bfb  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
00492c03  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
00492c0b  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
00492c11  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00492c19  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00492c1f  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00492c25  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00492c2d  f30f59c9                  MULSS XMM1,XMM1
00492c31  f30f59c0                  MULSS XMM0,XMM0
00492c35  f30f58c1                  ADDSS XMM0,XMM1
00492c39  e8122efaff                CALL 0x00435a50
00492c3e  f30f100d08abba00          MOVSS XMM1,dword ptr [0x00baab08]
00492c46  8d442418                  LEA EAX,[ESP + 0x18]
00492c4a  f30f5cc8                  SUBSS XMM1,XMM0
00492c4e  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
00492c56  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00492c5c  8d4c2420                  LEA ECX,[ESP + 0x20]
00492c60  0f57e4                    XORPS XMM4,XMM4
00492c63  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00492c6b  f30f59c8                  MULSS XMM1,XMM0
00492c6f  f30f5e0d08abba00          DIVSS XMM1,dword ptr [0x00baab08]
00492c77  0f2fcc                    COMISS XMM1,XMM4
00492c7a  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
00492c80  0f46c8                    CMOVBE ECX,EAX
00492c83  8d442410                  LEA EAX,[ESP + 0x10]
00492c87  0f2f01                    COMISS XMM0,dword ptr [ECX]
00492c8a  0f47c1                    CMOVA EAX,ECX
00492c8d  0f2ed4                    UCOMISS XMM2,XMM4
00492c90  f30f1018                  MOVSS XMM3,dword ptr [EAX]
00492c94  0f28cb                    MOVAPS XMM1,XMM3
00492c97  f30f595c240c              MULSS XMM3,dword ptr [ESP + 0xc]
00492c9d  f30f594c2408              MULSS XMM1,dword ptr [ESP + 0x8]
00492ca3  9f                        LAHF
00492ca4  f6c444                    TEST AH,0x44
00492ca7  7b38                      JNP 0x00492ce1
00492ca9  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00492cb1  f30f59c8                  MULSS XMM1,XMM0
00492cb5  f30f59c3                  MULSS XMM0,XMM3
00492cb9  f30f5eca                  DIVSS XMM1,XMM2
00492cbd  f30f5ec2                  DIVSS XMM0,XMM2
00492cc1  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
00492cc9  f30f588664030000          ADDSS XMM0,dword ptr [ESI + 0x364]
00492cd1  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
00492cd9  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00492ce1  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
00492ce5  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
00492ce9  46                        INC ESI
00492cea  89742414                  MOV dword ptr [ESP + 0x14],ESI
00492cee  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
00492cf4  0f82d7fdffff              JC 0x00492ad1
00492cfa  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00492d00  83f802                    CMP EAX,0x2
00492d03  7405                      JZ 0x00492d0a
00492d05  83f803                    CMP EAX,0x3
00492d08  7560                      JNZ 0x00492d6a
00492d0a  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00492d11  740a                      JZ 0x00492d1d
00492d13  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00492d1d  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00492d23  85c0                      TEST EAX,EAX
00492d25  7e17                      JLE 0x00492d3e
00492d27  83c0ff                    ADD EAX,-0x1
00492d2a  898710040000              MOV dword ptr [EDI + 0x410],EAX
00492d30  7538                      JNZ 0x00492d6a
00492d32  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00492d3c  eb2c                      JMP 0x00492d6a
00492d3e  752a                      JNZ 0x00492d6a
00492d40  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00492d46  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
00492d4c  ffb104830100              PUSH dword ptr [ECX + 0x18304]
00492d52  e869de2a00                CALL 0x00740bc0
00492d57  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
00492d5a  d1e8                      SHR EAX,0x1
00492d5c  a801                      TEST AL,0x1
00492d5e  740a                      JZ 0x00492d6a
00492d60  c7871004000005000000      MOV dword ptr [EDI + 0x410],0x5
00492d6a  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00492d71  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00492d79  0f85ca030000              JNZ 0x00493149
00492d7f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00492d87  6a00                      PUSH 0x0
00492d89  68dcd6c500                PUSH 0xc5d6dc
00492d8e  68dcd5c500                PUSH 0xc5d5dc
00492d93  f30f59c1                  MULSS XMM0,XMM1
00492d97  6a00                      PUSH 0x0
00492d99  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00492d9f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00492da7  e805db6500                CALL 0x00af08b1
00492dac  83c414                    ADD ESP,0x14
00492daf  8bf0                      MOV ESI,EAX
00492db1  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00492db5  89742414                  MOV dword ptr [ESP + 0x14],ESI
00492db9  0f85bf020000              JNZ 0x0049307e
00492dbf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00492dc3  0f84b5020000              JZ 0x0049307e
00492dc9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00492dd0  0f84eb000000              JZ 0x00492ec1
00492dd6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00492dd9  83781410                  CMP dword ptr [EAX + 0x14],0x10
00492ddd  7202                      JC 0x00492de1
00492ddf  8b00                      MOV EAX,dword ptr [EAX]
00492de1  b954bcb100                MOV ECX,0xb1bc54
00492de6  8a10                      MOV DL,byte ptr [EAX]
00492de8  3a11                      CMP DL,byte ptr [ECX]
00492dea  751a                      JNZ 0x00492e06
00492dec  84d2                      TEST DL,DL
00492dee  7412                      JZ 0x00492e02
00492df0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00492df3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00492df6  750e                      JNZ 0x00492e06
00492df8  83c002                    ADD EAX,0x2
00492dfb  83c102                    ADD ECX,0x2
00492dfe  84d2                      TEST DL,DL
00492e00  75e4                      JNZ 0x00492de6
00492e02  33c0                      XOR EAX,EAX
00492e04  eb05                      JMP 0x00492e0b
00492e06  1bc0                      SBB EAX,EAX
00492e08  83c801                    OR EAX,0x1
00492e0b  85c0                      TEST EAX,EAX
00492e0d  0f85a1000000              JNZ 0x00492eb4
00492e13  85f6                      TEST ESI,ESI
00492e15  0f8499000000              JZ 0x00492eb4
00492e1b  83befc03000002            CMP dword ptr [ESI + 0x3fc],0x2
00492e22  0f858c000000              JNZ 0x00492eb4
00492e28  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00492e2b  85c9                      TEST ECX,ECX
00492e2d  7456                      JZ 0x00492e85
00492e2f  83791410                  CMP dword ptr [ECX + 0x14],0x10
00492e33  8bc1                      MOV EAX,ECX
00492e35  7202                      JC 0x00492e39
00492e37  8b01                      MOV EAX,dword ptr [ECX]
00492e39  b97cdab100                MOV ECX,0xb1da7c
00492e3e  6690                      NOP
00492e40  8a10                      MOV DL,byte ptr [EAX]
00492e42  3a11                      CMP DL,byte ptr [ECX]
00492e44  751a                      JNZ 0x00492e60
00492e46  84d2                      TEST DL,DL
00492e48  7412                      JZ 0x00492e5c
00492e4a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00492e4d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00492e50  750e                      JNZ 0x00492e60
00492e52  83c002                    ADD EAX,0x2
00492e55  83c102                    ADD ECX,0x2
00492e58  84d2                      TEST DL,DL
00492e5a  75e4                      JNZ 0x00492e40
00492e5c  33c0                      XOR EAX,EAX
00492e5e  eb05                      JMP 0x00492e65
00492e60  1bc0                      SBB EAX,EAX
00492e62  83c801                    OR EAX,0x1
00492e65  8d4f48                    LEA ECX,[EDI + 0x48]
00492e68  85c0                      TEST EAX,EAX
00492e6a  751c                      JNZ 0x00492e88
00492e6c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
00492e6f  80783400                  CMP byte ptr [EAX + 0x34],0x0
00492e73  0f840d020000              JZ 0x00493086
00492e79  80794400                  CMP byte ptr [ECX + 0x44],0x0
00492e7d  0f8503020000              JNZ 0x00493086
00492e83  eb03                      JMP 0x00492e88
00492e85  8d4f48                    LEA ECX,[EDI + 0x48]
00492e88  6a01                      PUSH 0x1
00492e8a  687cdab100                PUSH 0xb1da7c
00492e8f  e83c77f7ff                CALL 0x0040a5d0
00492e94  84c0                      TEST AL,AL
00492e96  0f84ea010000              JZ 0x00493086
00492e9c  8d4f78                    LEA ECX,[EDI + 0x78]
00492e9f  e80c73f7ff                CALL 0x0040a1b0
00492ea4  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
00492ea8  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00492eaf  e9d2010000                JMP 0x00493086
00492eb4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00492ebb  0f85bd010000              JNZ 0x0049307e
00492ec1  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00492ec4  85c0                      TEST EAX,EAX
00492ec6  740a                      JZ 0x00492ed2
00492ec8  83781410                  CMP dword ptr [EAX + 0x14],0x10
00492ecc  7209                      JC 0x00492ed7
00492ece  8b00                      MOV EAX,dword ptr [EAX]
00492ed0  eb05                      JMP 0x00492ed7
00492ed2  b8eca4b100                MOV EAX,0xb1a4ec
00492ed7  b97cdab100                MOV ECX,0xb1da7c
00492edc  0f1f4000                  NOP dword ptr [EAX]
00492ee0  8a10                      MOV DL,byte ptr [EAX]
00492ee2  3a11                      CMP DL,byte ptr [ECX]
00492ee4  751a                      JNZ 0x00492f00
00492ee6  84d2                      TEST DL,DL
00492ee8  7412                      JZ 0x00492efc
00492eea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00492eed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00492ef0  750e                      JNZ 0x00492f00
00492ef2  83c002                    ADD EAX,0x2
00492ef5  83c102                    ADD ECX,0x2
00492ef8  84d2                      TEST DL,DL
00492efa  75e4                      JNZ 0x00492ee0
00492efc  33c0                      XOR EAX,EAX
00492efe  eb05                      JMP 0x00492f05
00492f00  1bc0                      SBB EAX,EAX
00492f02  83c801                    OR EAX,0x1
00492f05  85c0                      TEST EAX,EAX
00492f07  0f8571010000              JNZ 0x0049307e
00492f0d  85f6                      TEST ESI,ESI
00492f0f  0f842c020000              JZ 0x00493141
00492f15  388673010000              CMP byte ptr [ESI + 0x173],AL
00492f1b  0f8565010000              JNZ 0x00493086
00492f21  51                        PUSH ECX
00492f22  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00492f28  890424                    MOV dword ptr [ESP],EAX
00492f2b  8d44242c                  LEA EAX,[ESP + 0x2c]
00492f2f  50                        PUSH EAX
00492f30  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00492f36  e895ba3800                CALL 0x0081e9d0
00492f3b  a17816c700                MOV EAX,[0x00c71678]
00492f40  6a00                      PUSH 0x0
00492f42  6a00                      PUSH 0x0
00492f44  6a01                      PUSH 0x1
00492f46  51                        PUSH ECX
00492f47  c7042400000000            MOV dword ptr [ESP],0x0
00492f4e  8d4c2438                  LEA ECX,[ESP + 0x38]
00492f52  51                        PUSH ECX
00492f53  8d4c242c                  LEA ECX,[ESP + 0x2c]
00492f57  51                        PUSH ECX
00492f58  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00492f5e  e8bd053800                CALL 0x00813520
00492f63  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00492f6b  83ec0c                    SUB ESP,0xc
00492f6e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00492f74  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00492f78  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00492f7e  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00492f83  8d442434                  LEA EAX,[ESP + 0x34]
00492f87  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00492f8d  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00492f93  0f28c3                    MOVAPS XMM0,XMM3
00492f96  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00492f9e  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00492fa4  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00492faa  f30f110424                MOVSS dword ptr [ESP],XMM0
00492faf  50                        PUSH EAX
00492fb0  8d442430                  LEA EAX,[ESP + 0x30]
00492fb4  50                        PUSH EAX
00492fb5  e896ff3700                CALL 0x00812f50
00492fba  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
00492fc0  8d442428                  LEA EAX,[ESP + 0x28]
00492fc4  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00492fca  8bce                      MOV ECX,ESI
00492fcc  6a00                      PUSH 0x0
00492fce  6a00                      PUSH 0x0
00492fd0  50                        PUSH EAX
00492fd1  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
00492fd7  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00492fdd  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
00492fe5  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00492fed  e85ea93300                CALL 0x007cd950
00492ff2  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00492ffa  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00493002  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0049300a  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00493012  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00493015  85c9                      TEST ECX,ECX
00493017  7456                      JZ 0x0049306f
00493019  83791410                  CMP dword ptr [ECX + 0x14],0x10
0049301d  8bc1                      MOV EAX,ECX
0049301f  7202                      JC 0x00493023
00493021  8b01                      MOV EAX,dword ptr [ECX]
00493023  b998d5b100                MOV ECX,0xb1d598
00493028  8a10                      MOV DL,byte ptr [EAX]
0049302a  3a11                      CMP DL,byte ptr [ECX]
0049302c  751a                      JNZ 0x00493048
0049302e  84d2                      TEST DL,DL
00493030  7412                      JZ 0x00493044
00493032  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493035  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493038  750e                      JNZ 0x00493048
0049303a  83c002                    ADD EAX,0x2
0049303d  83c102                    ADD ECX,0x2
00493040  84d2                      TEST DL,DL
00493042  75e4                      JNZ 0x00493028
00493044  33c0                      XOR EAX,EAX
00493046  eb05                      JMP 0x0049304d
00493048  1bc0                      SBB EAX,EAX
0049304a  83c801                    OR EAX,0x1
0049304d  8d4f48                    LEA ECX,[EDI + 0x48]
00493050  85c0                      TEST EAX,EAX
00493052  751e                      JNZ 0x00493072
00493054  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
00493057  80783400                  CMP byte ptr [EAX + 0x34],0x0
0049305b  7429                      JZ 0x00493086
0049305d  80794400                  CMP byte ptr [ECX + 0x44],0x0
00493061  7523                      JNZ 0x00493086
00493063  6a01                      PUSH 0x1
00493065  6898d5b100                PUSH 0xb1d598
0049306a  e920feffff                JMP 0x00492e8f
0049306f  8d4f48                    LEA ECX,[EDI + 0x48]
00493072  6a01                      PUSH 0x1
00493074  6898d5b100                PUSH 0xb1d598
00493079  e911feffff                JMP 0x00492e8f
0049307e  85f6                      TEST ESI,ESI
00493080  0f84bb000000              JZ 0x00493141
00493086  8b86fc030000              MOV EAX,dword ptr [ESI + 0x3fc]
0049308c  83f803                    CMP EAX,0x3
0049308f  744f                      JZ 0x004930e0
00493091  85c0                      TEST EAX,EAX
00493093  744b                      JZ 0x004930e0
00493095  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0049309c  7542                      JNZ 0x004930e0
0049309e  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004930a6  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004930ae  f30f5c963c030000          SUBSS XMM2,dword ptr [ESI + 0x33c]
004930b6  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
004930be  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004930c6  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004930ce  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
004930d6  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004930de  eb61                      JMP 0x00493141
004930e0  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004930e4  7551                      JNZ 0x00493137
004930e6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004930ea  7442                      JZ 0x0049312e
004930ec  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004930f3  7539                      JNZ 0x0049312e
004930f5  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004930f8  83781410                  CMP dword ptr [EAX + 0x14],0x10
004930fc  7202                      JC 0x00493100
004930fe  8b00                      MOV EAX,dword ptr [EAX]
00493100  b998d5b100                MOV ECX,0xb1d598
00493105  8a10                      MOV DL,byte ptr [EAX]
00493107  3a11                      CMP DL,byte ptr [ECX]
00493109  751a                      JNZ 0x00493125
0049310b  84d2                      TEST DL,DL
0049310d  7412                      JZ 0x00493121
0049310f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493112  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493115  750e                      JNZ 0x00493125
00493117  83c002                    ADD EAX,0x2
0049311a  83c102                    ADD ECX,0x2
0049311d  84d2                      TEST DL,DL
0049311f  75e4                      JNZ 0x00493105
00493121  33c0                      XOR EAX,EAX
00493123  eb05                      JMP 0x0049312a
00493125  1bc0                      SBB EAX,EAX
00493127  83c801                    OR EAX,0x1
0049312a  85c0                      TEST EAX,EAX
0049312c  7409                      JZ 0x00493137
0049312e  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00493135  740a                      JZ 0x00493141
00493137  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00493141  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00493149  83bf640b000005            CMP dword ptr [EDI + 0xb64],0x5
00493150  0f859c000000              JNZ 0x004931f2
00493156  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049315e  f30f59c1                  MULSS XMM0,XMM1
00493162  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049316a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0049316d  85f6                      TEST ESI,ESI
0049316f  744a                      JZ 0x004931bb
00493171  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00493175  8bc6                      MOV EAX,ESI
00493177  7202                      JC 0x0049317b
00493179  8b06                      MOV EAX,dword ptr [ESI]
0049317b  b97cdab100                MOV ECX,0xb1da7c
00493180  8a10                      MOV DL,byte ptr [EAX]
00493182  3a11                      CMP DL,byte ptr [ECX]
00493184  751a                      JNZ 0x004931a0
00493186  84d2                      TEST DL,DL
00493188  7412                      JZ 0x0049319c
0049318a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049318d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493190  750e                      JNZ 0x004931a0
00493192  83c002                    ADD EAX,0x2
00493195  83c102                    ADD ECX,0x2
00493198  84d2                      TEST DL,DL
0049319a  75e4                      JNZ 0x00493180
0049319c  33c0                      XOR EAX,EAX
0049319e  eb05                      JMP 0x004931a5
004931a0  1bc0                      SBB EAX,EAX
004931a2  83c801                    OR EAX,0x1
004931a5  85c0                      TEST EAX,EAX
004931a7  7512                      JNZ 0x004931bb
004931a9  384634                    CMP byte ptr [ESI + 0x34],AL
004931ac  742e                      JZ 0x004931dc
004931ae  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004931b4  8d7748                    LEA ESI,[EDI + 0x48]
004931b7  7523                      JNZ 0x004931dc
004931b9  eb03                      JMP 0x004931be
004931bb  8d7748                    LEA ESI,[EDI + 0x48]
004931be  6a01                      PUSH 0x1
004931c0  687cdab100                PUSH 0xb1da7c
004931c5  8bce                      MOV ECX,ESI
004931c7  e80474f7ff                CALL 0x0040a5d0
004931cc  84c0                      TEST AL,AL
004931ce  740c                      JZ 0x004931dc
004931d0  8d4e30                    LEA ECX,[ESI + 0x30]
004931d3  e8d86ff7ff                CALL 0x0040a1b0
004931d8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004931dc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004931e0  7409                      JZ 0x004931eb
004931e2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004931e9  7507                      JNZ 0x004931f2
004931eb  8b07                      MOV EAX,dword ptr [EDI]
004931ed  8bcf                      MOV ECX,EDI
004931ef  ff5028                    CALL dword ptr [EAX + 0x28]
004931f2  5f                        POP EDI
004931f3  5e                        POP ESI
004931f4  8be5                      MOV ESP,EBP
004931f6  5d                        POP EBP
004931f7  c3                        RET
