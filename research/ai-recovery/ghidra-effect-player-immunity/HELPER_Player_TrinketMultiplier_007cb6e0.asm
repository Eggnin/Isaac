; J460 NPC AI 0x007cb6e0 HELPER_Player_TrinketMultiplier
; types=1,1000
; identities=1.*,1000.*
; entry=007cb6e0
007cb6e0  55                        PUSH EBP
007cb6e1  8bec                      MOV EBP,ESP
007cb6e3  83ec1c                    SUB ESP,0x1c
007cb6e6  a1b493bf00                MOV EAX,[0x00bf93b4]
007cb6eb  33c5                      XOR EAX,EBP
007cb6ed  8945fc                    MOV dword ptr [EBP + -0x4],EAX
007cb6f0  53                        PUSH EBX
007cb6f1  8b5d08                    MOV EBX,dword ptr [EBP + 0x8]
007cb6f4  56                        PUSH ESI
007cb6f5  57                        PUSH EDI
007cb6f6  8bf9                      MOV EDI,ECX
007cb6f8  894de4                    MOV dword ptr [EBP + -0x1c],ECX
007cb6fb  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
007cb6ff  7532                      JNZ 0x007cb733
007cb701  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
007cb707  85c0                      TEST EAX,EAX
007cb709  7406                      JZ 0x007cb711
007cb70b  83782801                  CMP dword ptr [EAX + 0x28],0x1
007cb70f  7417                      JZ 0x007cb728
007cb711  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
007cb715  7519                      JNZ 0x007cb730
007cb717  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007cb71d  6a00                      PUSH 0x0
007cb71f  e84cc1c4ff                CALL 0x00417870
007cb724  85c0                      TEST EAX,EAX
007cb726  7408                      JZ 0x007cb730
007cb728  83782c01                  CMP dword ptr [EAX + 0x2c],0x1
007cb72c  8bf8                      MOV EDI,EAX
007cb72e  74d1                      JZ 0x007cb701
007cb730  897de4                    MOV dword ptr [EBP + -0x1c],EDI
007cb733  33f6                      XOR ESI,ESI
007cb735  83fb56                    CMP EBX,0x56
007cb738  750f                      JNZ 0x007cb749
007cb73a  83bfc013000004            CMP dword ptr [EDI + 0x13c0],0x4
007cb741  b801000000                MOV EAX,0x1
007cb746  0f44f0                    CMOVZ ESI,EAX
007cb749  80bf2c20000000            CMP byte ptr [EDI + 0x202c],0x0
007cb750  0f85b7020000              JNZ 0x007cba0d
007cb756  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
007cb75d  0f85aa020000              JNZ 0x007cba0d
007cb763  a17816c700                MOV EAX,[0x00c71678]
007cb768  81e3ff7f0000              AND EBX,0x7fff
007cb76e  83b83c6602001c            CMP dword ptr [EAX + 0x2663c],0x1c
007cb775  751c                      JNZ 0x007cb793
007cb777  33c0                      XOR EAX,EAX
007cb779  0f1f8000000000            NOP dword ptr [EAX]
007cb780  3b98d0bab600              CMP EBX,dword ptr [EAX + 0xb6bad0]
007cb786  740a                      JZ 0x007cb792
007cb788  83c004                    ADD EAX,0x4
007cb78b  83f828                    CMP EAX,0x28
007cb78e  72f0                      JC 0x007cb780
007cb790  eb01                      JMP 0x007cb793
007cb792  46                        INC ESI
007cb793  83fb15                    CMP EBX,0x15
007cb796  0f843c010000              JZ 0x007cb8d8
007cb79c  83fb40                    CMP EBX,0x40
007cb79f  0f8433010000              JZ 0x007cb8d8
007cb7a5  83fb4b                    CMP EBX,0x4b
007cb7a8  0f842a010000              JZ 0x007cb8d8
007cb7ae  6a15                      PUSH 0x15
007cb7b0  8bcf                      MOV ECX,EDI
007cb7b2  e829ffffff                CALL 0x007cb6e0
007cb7b7  85c0                      TEST EAX,EAX
007cb7b9  7e42                      JLE 0x007cb7fd
007cb7bb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007cb7c1  8b89f8640200              MOV ECX,dword ptr [ECX + 0x264f8]
007cb7c7  81e103000080              AND ECX,0x80000003
007cb7cd  7905                      JNS 0x007cb7d4
007cb7cf  49                        DEC ECX
007cb7d0  83c9fc                    OR ECX,0xfffffffc
007cb7d3  41                        INC ECX
007cb7d4  83fb30                    CMP EBX,0x30
007cb7d7  7524                      JNZ 0x007cb7fd
007cb7d9  83f902                    CMP ECX,0x2
007cb7dc  740a                      JZ 0x007cb7e8
007cb7de  83f801                    CMP EAX,0x1
007cb7e1  7e1a                      JLE 0x007cb7fd
007cb7e3  83f903                    CMP ECX,0x3
007cb7e6  7515                      JNZ 0x007cb7fd
007cb7e8  5f                        POP EDI
007cb7e9  03c6                      ADD EAX,ESI
007cb7eb  5e                        POP ESI
007cb7ec  5b                        POP EBX
007cb7ed  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
007cb7f0  33cd                      XOR ECX,EBP
007cb7f2  e834393200                CALL 0x00aef12b
007cb7f7  8be5                      MOV ESP,EBP
007cb7f9  5d                        POP EBP
007cb7fa  c20400                    RET 0x4
007cb7fd  6a40                      PUSH 0x40
007cb7ff  8bcf                      MOV ECX,EDI
007cb801  e8dafeffff                CALL 0x007cb6e0
007cb806  8945e8                    MOV dword ptr [EBP + -0x18],EAX
007cb809  85c0                      TEST EAX,EAX
007cb80b  7e34                      JLE 0x007cb841
007cb80d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007cb813  b8b7600bb6                MOV EAX,0xb60b60b7
007cb818  8b89f8640200              MOV ECX,dword ptr [ECX + 0x264f8]
007cb81e  f7e9                      IMUL ECX
007cb820  03d1                      ADD EDX,ECX
007cb822  b90a000000                MOV ECX,0xa
007cb827  c1fa06                    SAR EDX,0x6
007cb82a  8bc2                      MOV EAX,EDX
007cb82c  c1e81f                    SHR EAX,0x1f
007cb82f  03c2                      ADD EAX,EDX
007cb831  33d2                      XOR EDX,EDX
007cb833  f7f1                      DIV ECX
007cb835  3b1c95d0bab600            CMP EBX,dword ptr [EDX*0x4 + 0xb6bad0]
007cb83c  7503                      JNZ 0x007cb841
007cb83e  0375e8                    ADD ESI,dword ptr [EBP + -0x18]
007cb841  6a4b                      PUSH 0x4b
007cb843  8bcf                      MOV ECX,EDI
007cb845  e896feffff                CALL 0x007cb6e0
007cb84a  8945e8                    MOV dword ptr [EBP + -0x18],EAX
007cb84d  85c0                      TEST EAX,EAX
007cb84f  7e55                      JLE 0x007cb8a6
007cb851  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007cb857  83fb7a                    CMP EBX,0x7a
007cb85a  7509                      JNZ 0x007cb865
007cb85c  83b98465020029            CMP dword ptr [ECX + 0x26584],0x29
007cb863  7473                      JZ 0x007cb8d8
007cb865  6aff                      PUSH -0x1
007cb867  ffb104830100              PUSH dword ptr [ECX + 0x18304]
007cb86d  e84e53f7ff                CALL 0x00740bc0
007cb872  8b405c                    MOV EAX,dword ptr [EAX + 0x5c]
007cb875  85c0                      TEST EAX,EAX
007cb877  742d                      JZ 0x007cb8a6
007cb879  f30f7e0564f5b100          MOVQ XMM0,qword ptr [0x00b1f564]
007cb881  8d4dec                    LEA ECX,[EBP + -0x14]
007cb884  8945ec                    MOV dword ptr [EBP + -0x14],EAX
007cb887  a16cf5b100                MOV EAX,[0x00b1f56c]
007cb88c  68bd000000                PUSH 0xbd
007cb891  660fd645f0                MOVQ qword ptr [EBP + -0x10],XMM0
007cb896  8945f8                    MOV dword ptr [EBP + -0x8],EAX
007cb899  e882d70100                CALL 0x007e9020
007cb89e  40                        INC EAX
007cb89f  3bd8                      CMP EBX,EAX
007cb8a1  7503                      JNZ 0x007cb8a6
007cb8a3  0375e8                    ADD ESI,dword ptr [EBP + -0x18]
007cb8a6  83fb17                    CMP EBX,0x17
007cb8a9  7510                      JNZ 0x007cb8bb
007cb8ab  53                        PUSH EBX
007cb8ac  8d8f08150000              LEA ECX,[EDI + 0x1508]
007cb8b2  e8e9511600                CALL 0x00930aa0
007cb8b7  03f0                      ADD ESI,EAX
007cb8b9  eb1d                      JMP 0x007cb8d8
007cb8bb  83fb18                    CMP EBX,0x18
007cb8be  7509                      JNZ 0x007cb8c9
007cb8c0  83bfdc18000000            CMP dword ptr [EDI + 0x18dc],0x0
007cb8c7  eb0c                      JMP 0x007cb8d5
007cb8c9  83fb13                    CMP EBX,0x13
007cb8cc  750a                      JNZ 0x007cb8d8
007cb8ce  83bfe018000000            CMP dword ptr [EDI + 0x18e0],0x0
007cb8d5  7e01                      JLE 0x007cb8d8
007cb8d7  46                        INC ESI
007cb8d8  6a00                      PUSH 0x0
007cb8da  688b000000                PUSH 0x8b
007cb8df  8bcf                      MOV ECX,EDI
007cb8e1  c745e801000000            MOV dword ptr [EBP + -0x18],0x1
007cb8e8  e8f34dfaff                CALL 0x007706e0
007cb8ed  84c0                      TEST AL,AL
007cb8ef  7512                      JNZ 0x007cb903
007cb8f1  6a00                      PUSH 0x0
007cb8f3  68ca010000                PUSH 0x1ca
007cb8f8  8bcf                      MOV ECX,EDI
007cb8fa  e8e14dfaff                CALL 0x007706e0
007cb8ff  84c0                      TEST AL,AL
007cb901  7407                      JZ 0x007cb90a
007cb903  c745e802000000            MOV dword ptr [EBP + -0x18],0x2
007cb90a  8d8fc0160000              LEA ECX,[EDI + 0x16c0]
007cb910  8b7de8                    MOV EDI,dword ptr [EBP + -0x18]
007cb913  8b11                      MOV EDX,dword ptr [ECX]
007cb915  8bc2                      MOV EAX,EDX
007cb917  25ff7f0000                AND EAX,0x7fff
007cb91c  3bc3                      CMP EAX,EBX
007cb91e  750a                      JNZ 0x007cb92a
007cb920  46                        INC ESI
007cb921  f7c200800000              TEST EDX,0x8000
007cb927  7401                      JZ 0x007cb92a
007cb929  46                        INC ESI
007cb92a  83c104                    ADD ECX,0x4
007cb92d  83ef01                    SUB EDI,0x1
007cb930  75e1                      JNZ 0x007cb913
007cb932  8b7de4                    MOV EDI,dword ptr [EBP + -0x1c]
007cb935  8b87c4170000              MOV EAX,dword ptr [EDI + 0x17c4]
007cb93b  85c0                      TEST EAX,EAX
007cb93d  7423                      JZ 0x007cb962
007cb93f  833802                    CMP dword ptr [EAX],0x2
007cb942  751e                      JNZ 0x007cb962
007cb944  395804                    CMP dword ptr [EAX + 0x4],EBX
007cb947  7519                      JNZ 0x007cb962
007cb949  8b87f82e0000              MOV EAX,dword ptr [EDI + 0x2ef8]
007cb94f  85c0                      TEST EAX,EAX
007cb951  7404                      JZ 0x007cb957
007cb953  3bc3                      CMP EAX,EBX
007cb955  750b                      JNZ 0x007cb962
007cb957  46                        INC ESI
007cb958  f687cc17000002            TEST byte ptr [EDI + 0x17cc],0x2
007cb95f  7401                      JZ 0x007cb962
007cb961  46                        INC ESI
007cb962  8b874c170000              MOV EAX,dword ptr [EDI + 0x174c]
007cb968  8b9748170000              MOV EDX,dword ptr [EDI + 0x1748]
007cb96e  2bc2                      SUB EAX,EDX
007cb970  c1f802                    SAR EAX,0x2
007cb973  3bd8                      CMP EBX,EAX
007cb975  730e                      JNC 0x007cb985
007cb977  0fbf049a                  MOVSX EAX,word ptr [EDX + EBX*0x4]
007cb97b  0fbf4c9a02                MOVSX ECX,word ptr [EDX + EBX*0x4 + 0x2]
007cb980  03c6                      ADD EAX,ESI
007cb982  8d3448                    LEA ESI,[EAX + ECX*0x2]
007cb985  8b87e41f0000              MOV EAX,dword ptr [EDI + 0x1fe4]
007cb98b  8b8fe01f0000              MOV ECX,dword ptr [EDI + 0x1fe0]
007cb991  2bc1                      SUB EAX,ECX
007cb993  3bd8                      CMP EBX,EAX
007cb995  7d06                      JGE 0x007cb99d
007cb997  0fb60419                  MOVZX EAX,byte ptr [ECX + EBX*0x1]
007cb99b  eb02                      JMP 0x007cb99f
007cb99d  33c0                      XOR EAX,EAX
007cb99f  8b97f82e0000              MOV EDX,dword ptr [EDI + 0x2ef8]
007cb9a5  8d4e01                    LEA ECX,[ESI + 0x1]
007cb9a8  85c0                      TEST EAX,EAX
007cb9aa  0f44ce                    CMOVZ ECX,ESI
007cb9ad  8bf1                      MOV ESI,ECX
007cb9af  85d2                      TEST EDX,EDX
007cb9b1  7443                      JZ 0x007cb9f6
007cb9b3  8bc2                      MOV EAX,EDX
007cb9b5  25ff7f0000                AND EAX,0x7fff
007cb9ba  3bc3                      CMP EAX,EBX
007cb9bc  7538                      JNZ 0x007cb9f6
007cb9be  80bff02e000000            CMP byte ptr [EDI + 0x2ef0],0x0
007cb9c5  7413                      JZ 0x007cb9da
007cb9c7  8bf2                      MOV ESI,EDX
007cb9c9  81e600800000              AND ESI,0x8000
007cb9cf  f7de                      NEG ESI
007cb9d1  1bf6                      SBB ESI,ESI
007cb9d3  f7de                      NEG ESI
007cb9d5  46                        INC ESI
007cb9d6  03f1                      ADD ESI,ECX
007cb9d8  eb1c                      JMP 0x007cb9f6
007cb9da  8d41ff                    LEA EAX,[ECX + -0x1]
007cb9dd  33f6                      XOR ESI,ESI
007cb9df  85c0                      TEST EAX,EAX
007cb9e1  0f4ff0                    CMOVG ESI,EAX
007cb9e4  f7c200800000              TEST EDX,0x8000
007cb9ea  740a                      JZ 0x007cb9f6
007cb9ec  8d46ff                    LEA EAX,[ESI + -0x1]
007cb9ef  33f6                      XOR ESI,ESI
007cb9f1  85c0                      TEST EAX,EAX
007cb9f3  0f4ff0                    CMOVG ESI,EAX
007cb9f6  85f6                      TEST ESI,ESI
007cb9f8  7e13                      JLE 0x007cba0d
007cb9fa  6a00                      PUSH 0x0
007cb9fc  68b7010000                PUSH 0x1b7
007cba01  8bcf                      MOV ECX,EDI
007cba03  e8d84cfaff                CALL 0x007706e0
007cba08  84c0                      TEST AL,AL
007cba0a  7401                      JZ 0x007cba0d
007cba0c  46                        INC ESI
007cba0d  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
007cba10  8bc6                      MOV EAX,ESI
007cba12  5f                        POP EDI
007cba13  5e                        POP ESI
007cba14  33cd                      XOR ECX,EBP
007cba16  5b                        POP EBX
007cba17  e80f373200                CALL 0x00aef12b
007cba1c  8be5                      MOV ESP,EBP
007cba1e  5d                        POP EBP
007cba1f  c20400                    RET 0x4
