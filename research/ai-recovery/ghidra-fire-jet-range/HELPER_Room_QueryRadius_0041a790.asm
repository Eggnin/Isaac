; J460 NPC AI 0x0041a790 HELPER_Room_QueryRadius
; types=1000
; identities=1000.147.*
; entry=0041a790
0041a790  55                        PUSH EBP
0041a791  8bec                      MOV EBP,ESP
0041a793  6aff                      PUSH -0x1
0041a795  68be15af00                PUSH 0xaf15be
0041a79a  64a100000000              MOV EAX,FS:[0x0]
0041a7a0  50                        PUSH EAX
0041a7a1  83ec30                    SUB ESP,0x30
0041a7a4  53                        PUSH EBX
0041a7a5  56                        PUSH ESI
0041a7a6  57                        PUSH EDI
0041a7a7  a1b493bf00                MOV EAX,[0x00bf93b4]
0041a7ac  33c5                      XOR EAX,EBP
0041a7ae  50                        PUSH EAX
0041a7af  8d45f4                    LEA EAX,[EBP + -0xc]
0041a7b2  64a300000000              MOV FS:[0x0],EAX
0041a7b8  f30f115dec                MOVSS dword ptr [EBP + -0x14],XMM3
0041a7bd  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0041a7c0  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0041a7c7  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
0041a7ce  e8bddc6400                CALL 0x00a68490
0041a7d3  8bca                      MOV ECX,EDX
0041a7d5  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0041a7da  8bf8                      MOV EDI,EAX
0041a7dc  894de8                    MOV dword ptr [EBP + -0x18],ECX
0041a7df  bbdb34b6d7                MOV EBX,0xd7b634db
0041a7e4  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0041a7e9  f7e3                      MUL EBX
0041a7eb  8bf2                      MOV ESI,EDX
0041a7ed  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0041a7f0  8bc7                      MOV EAX,EDI
0041a7f2  ba82de1b43                MOV EDX,0x431bde82
0041a7f7  f7e2                      MUL EDX
0041a7f9  8bf8                      MOV EDI,EAX
0041a7fb  8955e0                    MOV dword ptr [EBP + -0x20],EDX
0041a7fe  8bc1                      MOV EAX,ECX
0041a800  f7e3                      MUL EBX
0041a802  8bc8                      MOV ECX,EAX
0041a804  8bda                      MOV EBX,EDX
0041a806  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0041a809  ba82de1b43                MOV EDX,0x431bde82
0041a80e  f7e2                      MUL EDX
0041a810  03ce                      ADD ECX,ESI
0041a812  8b750c                    MOV ESI,dword ptr [EBP + 0xc]
0041a815  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0041a818  83d300                    ADC EBX,0x0
0041a81b  03f9                      ADD EDI,ECX
0041a81d  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0041a820  83d100                    ADC ECX,0x0
0041a823  897dc4                    MOV dword ptr [EBP + -0x3c],EDI
0041a826  33c0                      XOR EAX,EAX
0041a828  03d9                      ADD EBX,ECX
0041a82a  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
0041a82d  13c0                      ADC EAX,EAX
0041a82f  03cb                      ADD ECX,EBX
0041a831  8b5dd8                    MOV EBX,dword ptr [EBP + -0x28]
0041a834  13d0                      ADC EDX,EAX
0041a836  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0041a83b  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041a83e  0facd112                  SHRD ECX,EDX,0x12
0041a842  c7437c00000000            MOV dword ptr [EBX + 0x7c],0x0
0041a849  8d7b70                    LEA EDI,[EBX + 0x70]
0041a84c  c1ea12                    SHR EDX,0x12
0041a84f  894de8                    MOV dword ptr [EBP + -0x18],ECX
0041a852  8955e0                    MOV dword ptr [EBP + -0x20],EDX
0041a855  a801                      TEST AL,0x1
0041a857  7410                      JZ 0x0041a869
0041a859  8b0b                      MOV ECX,dword ptr [EBX]
0041a85b  8d45d4                    LEA EAX,[EBP + -0x2c]
0041a85e  50                        PUSH EAX
0041a85f  56                        PUSH ESI
0041a860  57                        PUSH EDI
0041a861  e82a1c0000                CALL 0x0041c490
0041a866  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041a869  a804                      TEST AL,0x4
0041a86b  7411                      JZ 0x0041a87e
0041a86d  8b4b04                    MOV ECX,dword ptr [EBX + 0x4]
0041a870  8d45d4                    LEA EAX,[EBP + -0x2c]
0041a873  50                        PUSH EAX
0041a874  56                        PUSH ESI
0041a875  57                        PUSH EDI
0041a876  e8151c0000                CALL 0x0041c490
0041a87b  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041a87e  a808                      TEST AL,0x8
0041a880  7411                      JZ 0x0041a893
0041a882  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
0041a885  8d45d4                    LEA EAX,[EBP + -0x2c]
0041a888  50                        PUSH EAX
0041a889  56                        PUSH ESI
0041a88a  57                        PUSH EDI
0041a88b  e8001c0000                CALL 0x0041c490
0041a890  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041a893  a802                      TEST AL,0x2
0041a895  7411                      JZ 0x0041a8a8
0041a897  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
0041a89a  8d45d4                    LEA EAX,[EBP + -0x2c]
0041a89d  50                        PUSH EAX
0041a89e  56                        PUSH ESI
0041a89f  57                        PUSH EDI
0041a8a0  e8eb1b0000                CALL 0x0041c490
0041a8a5  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041a8a8  a810                      TEST AL,0x10
0041a8aa  7411                      JZ 0x0041a8bd
0041a8ac  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
0041a8af  8d45d4                    LEA EAX,[EBP + -0x2c]
0041a8b2  50                        PUSH EAX
0041a8b3  56                        PUSH ESI
0041a8b4  57                        PUSH EDI
0041a8b5  e8d61b0000                CALL 0x0041c490
0041a8ba  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041a8bd  a820                      TEST AL,0x20
0041a8bf  0f848a000000              JZ 0x0041a94f
0041a8c5  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0041a8cb  33ff                      XOR EDI,EDI
0041a8cd  81c6a8ba0100              ADD ESI,0x1baa8
0041a8d3  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0041a8d6  2b06                      SUB EAX,dword ptr [ESI]
0041a8d8  c1f802                    SAR EAX,0x2
0041a8db  85c0                      TEST EAX,EAX
0041a8dd  7470                      JZ 0x0041a94f
0041a8df  90                        NOP
0041a8e0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0041a8e3  8bc1                      MOV EAX,ECX
0041a8e5  2b06                      SUB EAX,dword ptr [ESI]
0041a8e7  c1f802                    SAR EAX,0x2
0041a8ea  85c0                      TEST EAX,EAX
0041a8ec  7512                      JNZ 0x0041a900
0041a8ee  68bce6b700                PUSH 0xb7e6bc
0041a8f3  6a10                      PUSH 0x10
0041a8f5  e8c6695f00                CALL 0x00a112c0
0041a8fa  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0041a8fd  83c408                    ADD ESP,0x8
0041a900  8b06                      MOV EAX,dword ptr [ESI]
0041a902  2bc8                      SUB ECX,EAX
0041a904  c1f902                    SAR ECX,0x2
0041a907  3bf9                      CMP EDI,ECX
0041a909  7303                      JNC 0x0041a90e
0041a90b  8d04b8                    LEA EAX,[EAX + EDI*0x4]
0041a90e  8b4b7c                    MOV ECX,dword ptr [EBX + 0x7c]
0041a911  8b30                      MOV ESI,dword ptr [EAX]
0041a913  8d4101                    LEA EAX,[ECX + 0x1]
0041a916  3b4378                    CMP EAX,dword ptr [EBX + 0x78]
0041a919  7612                      JBE 0x0041a92d
0041a91b  6840b7b100                PUSH 0xb1b740
0041a920  6a10                      PUSH 0x10
0041a922  e899695f00                CALL 0x00a112c0
0041a927  8b4b7c                    MOV ECX,dword ptr [EBX + 0x7c]
0041a92a  83c408                    ADD ESP,0x8
0041a92d  8b4374                    MOV EAX,dword ptr [EBX + 0x74]
0041a930  47                        INC EDI
0041a931  893488                    MOV dword ptr [EAX + ECX*0x4],ESI
0041a934  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0041a93a  ff437c                    INC dword ptr [EBX + 0x7c]
0041a93d  81c6a8ba0100              ADD ESI,0x1baa8
0041a943  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0041a946  2b06                      SUB EAX,dword ptr [ESI]
0041a948  c1f802                    SAR EAX,0x2
0041a94b  3bf8                      CMP EDI,EAX
0041a94d  7291                      JC 0x0041a8e0
0041a94f  f30f105dec                MOVSS XMM3,dword ptr [EBP + -0x14]
0041a954  33f6                      XOR ESI,ESI
0041a956  33ff                      XOR EDI,EDI
0041a958  39737c                    CMP dword ptr [EBX + 0x7c],ESI
0041a95b  7664                      JBE 0x0041a9c1
0041a95d  0f1f00                    NOP dword ptr [EAX]
0041a960  8b4374                    MOV EAX,dword ptr [EBX + 0x74]
0041a963  0f28d3                    MOVAPS XMM2,XMM3
0041a966  8b14b8                    MOV EDX,dword ptr [EAX + EDI*0x4]
0041a969  33c0                      XOR EAX,EAX
0041a96b  8b8a6c010000              MOV ECX,dword ptr [EDX + 0x16c]
0041a971  f30f589270030000          ADDSS XMM2,dword ptr [EDX + 0x370]
0041a979  81e100400000              AND ECX,0x4000
0041a97f  0bc1                      OR EAX,ECX
0041a981  7538                      JNZ 0x0041a9bb
0041a983  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
0041a986  f30f10823c030000          MOVSS XMM0,dword ptr [EDX + 0x33c]
0041a98e  f30f108a40030000          MOVSS XMM1,dword ptr [EDX + 0x340]
0041a996  f30f59d2                  MULSS XMM2,XMM2
0041a99a  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
0041a99f  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
0041a9a3  f30f59c9                  MULSS XMM1,XMM1
0041a9a7  f30f59c0                  MULSS XMM0,XMM0
0041a9ab  f30f58c8                  ADDSS XMM1,XMM0
0041a9af  0f2fd1                    COMISS XMM2,XMM1
0041a9b2  7607                      JBE 0x0041a9bb
0041a9b4  8b4374                    MOV EAX,dword ptr [EBX + 0x74]
0041a9b7  8914b0                    MOV dword ptr [EAX + ESI*0x4],EDX
0041a9ba  46                        INC ESI
0041a9bb  47                        INC EDI
0041a9bc  3b7b7c                    CMP EDI,dword ptr [EBX + 0x7c]
0041a9bf  729f                      JC 0x0041a960
0041a9c1  f6451040                  TEST byte ptr [EBP + 0x10],0x40
0041a9c5  89737c                    MOV dword ptr [EBX + 0x7c],ESI
0041a9c8  0f849e000000              JZ 0x0041aa6c
0041a9ce  33ff                      XOR EDI,EDI
0041a9d0  397b6c                    CMP dword ptr [EBX + 0x6c],EDI
0041a9d3  0f8693000000              JBE 0x0041aa6c
0041a9d9  0f1f8000000000            NOP dword ptr [EAX]
0041a9e0  8b4364                    MOV EAX,dword ptr [EBX + 0x64]
0041a9e3  0f28d3                    MOVAPS XMM2,XMM3
0041a9e6  8b34b8                    MOV ESI,dword ptr [EAX + EDI*0x4]
0041a9e9  33c0                      XOR EAX,EAX
0041a9eb  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0041a9f1  f30f589670030000          ADDSS XMM2,dword ptr [ESI + 0x370]
0041a9f9  81e100400000              AND ECX,0x4000
0041a9ff  0bc1                      OR EAX,ECX
0041aa01  755c                      JNZ 0x0041aa5f
0041aa03  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
0041aa06  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0041aa0e  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0041aa16  f30f59d2                  MULSS XMM2,XMM2
0041aa1a  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
0041aa1f  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
0041aa23  f30f59c9                  MULSS XMM1,XMM1
0041aa27  f30f59c0                  MULSS XMM0,XMM0
0041aa2b  f30f58c8                  ADDSS XMM1,XMM0
0041aa2f  0f2fd1                    COMISS XMM2,XMM1
0041aa32  762b                      JBE 0x0041aa5f
0041aa34  8b4b7c                    MOV ECX,dword ptr [EBX + 0x7c]
0041aa37  8d4101                    LEA EAX,[ECX + 0x1]
0041aa3a  3b4378                    CMP EAX,dword ptr [EBX + 0x78]
0041aa3d  7617                      JBE 0x0041aa56
0041aa3f  6840b7b100                PUSH 0xb1b740
0041aa44  6a10                      PUSH 0x10
0041aa46  e875685f00                CALL 0x00a112c0
0041aa4b  8b4b7c                    MOV ECX,dword ptr [EBX + 0x7c]
0041aa4e  83c408                    ADD ESP,0x8
0041aa51  f30f105dec                MOVSS XMM3,dword ptr [EBP + -0x14]
0041aa56  8b4374                    MOV EAX,dword ptr [EBX + 0x74]
0041aa59  893488                    MOV dword ptr [EAX + ECX*0x4],ESI
0041aa5c  ff437c                    INC dword ptr [EBX + 0x7c]
0041aa5f  47                        INC EDI
0041aa60  3b7b6c                    CMP EDI,dword ptr [EBX + 0x6c]
0041aa63  0f8277ffffff              JC 0x0041a9e0
0041aa69  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
0041aa6c  56                        PUSH ESI
0041aa6d  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
0041aa70  8d8380000000              LEA EAX,[EBX + 0x80]
0041aa76  50                        PUSH EAX
0041aa77  8bce                      MOV ECX,ESI
0041aa79  e8c2caffff                CALL 0x00417540
0041aa7e  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0041aa85  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
0041aa88  c745d001000000            MOV dword ptr [EBP + -0x30],0x1
0041aa8f  394608                    CMP dword ptr [ESI + 0x8],EAX
0041aa92  7312                      JNC 0x0041aaa6
0041aa94  68c8b7b100                PUSH 0xb1b7c8
0041aa99  6a10                      PUSH 0x10
0041aa9b  e820685f00                CALL 0x00a112c0
0041aaa0  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
0041aaa3  83c408                    ADD ESP,0x8
0041aaa6  c1e002                    SHL EAX,0x2
0041aaa9  50                        PUSH EAX
0041aaaa  ff7374                    PUSH dword ptr [EBX + 0x74]
0041aaad  ff7604                    PUSH dword ptr [ESI + 0x4]
0041aab0  e82a5b6d00                CALL 0x00af05df
0041aab5  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
0041aab8  83c40c                    ADD ESP,0xc
0041aabb  89460c                    MOV dword ptr [ESI + 0xc],EAX
0041aabe  e8cdd96400                CALL 0x00a68490
0041aac3  8bda                      MOV EBX,EDX
0041aac5  8bc8                      MOV ECX,EAX
0041aac7  badb34b6d7                MOV EDX,0xd7b634db
0041aacc  895d10                    MOV dword ptr [EBP + 0x10],EBX
0041aacf  f7e2                      MUL EDX
0041aad1  bf82de1b43                MOV EDI,0x431bde82
0041aad6  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
0041aad9  8bf2                      MOV ESI,EDX
0041aadb  8bc1                      MOV EAX,ECX
0041aadd  b9db34b6d7                MOV ECX,0xd7b634db
0041aae2  f7e7                      MUL EDI
0041aae4  8bf8                      MOV EDI,EAX
0041aae6  89550c                    MOV dword ptr [EBP + 0xc],EDX
0041aae9  8bc3                      MOV EAX,EBX
0041aaeb  f7e1                      MUL ECX
0041aaed  8bda                      MOV EBX,EDX
0041aaef  8bc8                      MOV ECX,EAX
0041aaf1  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041aaf4  ba82de1b43                MOV EDX,0x431bde82
0041aaf9  f7e2                      MUL EDX
0041aafb  03ce                      ADD ECX,ESI
0041aafd  894510                    MOV dword ptr [EBP + 0x10],EAX
0041ab00  83d300                    ADC EBX,0x0
0041ab03  03f9                      ADD EDI,ECX
0041ab05  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0041ab08  83d100                    ADC ECX,0x0
0041ab0b  897dc4                    MOV dword ptr [EBP + -0x3c],EDI
0041ab0e  33c0                      XOR EAX,EAX
0041ab10  03d9                      ADD EBX,ECX
0041ab12  8b4d10                    MOV ECX,dword ptr [EBP + 0x10]
0041ab15  13c0                      ADC EAX,EAX
0041ab17  03cb                      ADD ECX,EBX
0041ab19  13d0                      ADC EDX,EAX
0041ab1b  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0041ab1e  0facd112                  SHRD ECX,EDX,0x12
0041ab22  c1ea12                    SHR EDX,0x12
0041ab25  2b4de8                    SUB ECX,dword ptr [EBP + -0x18]
0041ab28  1b55e0                    SBB EDX,dword ptr [EBP + -0x20]
0041ab2b  010d489cc700              ADD dword ptr [0x00c79c48],ECX
0041ab31  11154c9cc700              ADC dword ptr [0x00c79c4c],EDX
0041ab37  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0041ab3a  64890d00000000            MOV dword ptr FS:[0x0],ECX
0041ab41  59                        POP ECX
0041ab42  5f                        POP EDI
0041ab43  5e                        POP ESI
0041ab44  5b                        POP EBX
0041ab45  8be5                      MOV ESP,EBP
0041ab47  5d                        POP EBP
0041ab48  c20c00                    RET 0xc
