; J460 NPC AI 0x0072fd10 HELPER_ItemConfig_GetCollectible
; types=1,1000
; identities=1.*,1000.*
; entry=0072fd10
0072fd10  55                        PUSH EBP
0072fd11  8bec                      MOV EBP,ESP
0072fd13  a17816c700                MOV EAX,[0x00c71678]
0072fd18  8b5508                    MOV EDX,dword ptr [EBP + 0x8]
0072fd1b  85c0                      TEST EAX,EAX
0072fd1d  7424                      JZ 0x0072fd43
0072fd1f  85d2                      TEST EDX,EDX
0072fd21  7924                      JNS 0x0072fd47
0072fd23  8b8858770600              MOV ECX,dword ptr [EAX + 0x67758]
0072fd29  f7d2                      NOT EDX
0072fd2b  8b805c770600              MOV EAX,dword ptr [EAX + 0x6775c]
0072fd31  2bc1                      SUB EAX,ECX
0072fd33  c1f802                    SAR EAX,0x2
0072fd36  3bd0                      CMP EDX,EAX
0072fd38  7d22                      JGE 0x0072fd5c
0072fd3a  8b0491                    MOV EAX,dword ptr [ECX + EDX*0x4]
0072fd3d  8b00                      MOV EAX,dword ptr [EAX]
0072fd3f  5d                        POP EBP
0072fd40  c20400                    RET 0x4
0072fd43  85d2                      TEST EDX,EDX
0072fd45  7815                      JS 0x0072fd5c
0072fd47  8b01                      MOV EAX,dword ptr [ECX]
0072fd49  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
0072fd4c  2bc8                      SUB ECX,EAX
0072fd4e  c1f902                    SAR ECX,0x2
0072fd51  3bd1                      CMP EDX,ECX
0072fd53  7d07                      JGE 0x0072fd5c
0072fd55  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0072fd58  5d                        POP EBP
0072fd59  c20400                    RET 0x4
0072fd5c  33c0                      XOR EAX,EAX
0072fd5e  5d                        POP EBP
0072fd5f  c20400                    RET 0x4
