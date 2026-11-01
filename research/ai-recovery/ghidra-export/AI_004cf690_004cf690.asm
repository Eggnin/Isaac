; J460 NPC AI 0x004cf690 AI_004cf690
; types=913
; identities=913.0.0
; entry=004cf690
004cf690  53                        PUSH EBX
004cf691  8bdc                      MOV EBX,ESP
004cf693  83ec08                    SUB ESP,0x8
004cf696  83e4f8                    AND ESP,0xfffffff8
004cf699  83c404                    ADD ESP,0x4
004cf69c  55                        PUSH EBP
004cf69d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004cf6a0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004cf6a4  8bec                      MOV EBP,ESP
004cf6a6  6aff                      PUSH -0x1
004cf6a8  68b837af00                PUSH 0xaf37b8
004cf6ad  64a100000000              MOV EAX,FS:[0x0]
004cf6b3  50                        PUSH EAX
004cf6b4  53                        PUSH EBX
004cf6b5  81ecc0000000              SUB ESP,0xc0
004cf6bb  a1b493bf00                MOV EAX,[0x00bf93b4]
004cf6c0  33c5                      XOR EAX,EBP
004cf6c2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004cf6c5  56                        PUSH ESI
004cf6c6  57                        PUSH EDI
004cf6c7  50                        PUSH EAX
004cf6c8  8d45f4                    LEA EAX,[EBP + -0xc]
004cf6cb  64a300000000              MOV FS:[0x0],EAX
004cf6d1  8bf9                      MOV EDI,ECX
004cf6d3  897dd0                    MOV dword ptr [EBP + -0x30],EDI
004cf6d6  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004cf6da  a17816c700                MOV EAX,[0x00c71678]
004cf6df  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004cf6e5  8945a8                    MOV dword ptr [EBP + -0x58],EAX
004cf6e8  0f8537040000              JNZ 0x004cfb25
004cf6ee  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004cf6f5  7561                      JNZ 0x004cf758
004cf6f7  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004cf6fd  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004cf704  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004cf70a  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
004cf711  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004cf71b  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004cf725  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004cf72f  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004cf736  66c7873c0c00000000        MOV word ptr [EDI + 0xc3c],0x0
004cf73f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004cf749  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004cf753  e99f190000                JMP 0x004d10f7
004cf758  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004cf75e  85c9                      TEST ECX,ECX
004cf760  0f8491190000              JZ 0x004d10f7
004cf766  f30f108fa4030000          MOVSS XMM1,dword ptr [EDI + 0x3a4]
004cf76e  0f57d2                    XORPS XMM2,XMM2
004cf771  0f2f0d04a9ba00            COMISS XMM1,dword ptr [0x00baa904]
004cf778  7627                      JBE 0x004cf7a1
004cf77a  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004cf782  0f2fc2                    COMISS XMM0,XMM2
004cf785  760a                      JBE 0x004cf791
004cf787  f30f5805d0a0ba00          ADDSS XMM0,dword ptr [0x00baa0d0]
004cf78f  eb08                      JMP 0x004cf799
004cf791  f30f5c05d0a0ba00          SUBSS XMM0,dword ptr [0x00baa0d0]
004cf799  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004cf7a1  0f2f0d7ca8ba00            COMISS XMM1,dword ptr [0x00baa87c]
004cf7a8  0f86f6010000              JBE 0x004cf9a4
004cf7ae  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004cf7b6  0f2ec2                    UCOMISS XMM0,XMM2
004cf7b9  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004cf7be  9f                        LAHF
004cf7bf  f6c444                    TEST AH,0x44
004cf7c2  0f8ad4000000              JP 0x004cf89c
004cf7c8  8bcf                      MOV ECX,EDI
004cf7ca  e8a17ff7ff                CALL 0x00447770
004cf7cf  8bc8                      MOV ECX,EAX
004cf7d1  e86af01e00                CALL 0x006be840
004cf7d6  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004cf7de  8bf0                      MOV ESI,EAX
004cf7e0  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004cf7e8  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004cf7f0  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004cf7f8  f30f59c0                  MULSS XMM0,XMM0
004cf7fc  f30f59c9                  MULSS XMM1,XMM1
004cf800  f30f58c1                  ADDSS XMM0,XMM1
004cf804  e84762f6ff                CALL 0x00435a50
004cf809  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
004cf811  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
004cf819  f30f59c8                  MULSS XMM1,XMM0
004cf81d  f30f59d0                  MULSS XMM2,XMM0
004cf821  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004cf829  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004cf831  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004cf839  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
004cf841  f30f58c2                  ADDSS XMM0,XMM2
004cf845  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004cf84d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004cf855  e806a5fcff                CALL 0x00499d60
004cf85a  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004cf862  f30f5c87b80b0000          SUBSS XMM0,dword ptr [EDI + 0xbb8]
004cf86a  e8d12e1b00                CALL 0x00682740
004cf86f  0f57c9                    XORPS XMM1,XMM1
004cf872  0f2fc1                    COMISS XMM0,XMM1
004cf875  760a                      JBE 0x004cf881
004cf877  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004cf87f  eb08                      JMP 0x004cf889
004cf881  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
004cf889  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004cf891  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004cf897  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004cf89c  f30f10893c030000          MOVSS XMM1,dword ptr [ECX + 0x33c]
004cf8a4  f30f108140030000          MOVSS XMM0,dword ptr [ECX + 0x340]
004cf8ac  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004cf8b4  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004cf8bc  e89fa4fcff                CALL 0x00499d60
004cf8c1  0f28c8                    MOVAPS XMM1,XMM0
004cf8c4  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004cf8c9  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
004cf8d1  f30f590d48a9ba00          MULSS XMM1,dword ptr [0x00baa948]
004cf8d9  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004cf8de  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004cf8e6  f30f5cc1                  SUBSS XMM0,XMM1
004cf8ea  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
004cf8ef  e84c2e1b00                CALL 0x00682740
004cf8f4  f30f105dc8                MOVSS XMM3,dword ptr [EBP + -0x38]
004cf8f9  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004cf900  0f28d3                    MOVAPS XMM2,XMM3
004cf903  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004cf90a  0f2fd0                    COMISS XMM2,XMM0
004cf90d  7607                      JBE 0x004cf916
004cf90f  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004cf914  eb11                      JMP 0x004cf927
004cf916  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004cf91e  f30f58c3                  ADDSS XMM0,XMM3
004cf922  e8192e1b00                CALL 0x00682740
004cf927  6aff                      PUSH -0x1
004cf929  6828030000                PUSH 0x328
004cf92e  8d45b4                    LEA EAX,[EBP + -0x4c]
004cf931  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004cf939  50                        PUSH EAX
004cf93a  8bcf                      MOV ECX,EDI
004cf93c  e81f132000                CALL 0x006d0c60
004cf941  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004cf948  33d2                      XOR EDX,EDX
004cf94a  8b75c0                    MOV ESI,dword ptr [EBP + -0x40]
004cf94d  33c0                      XOR EAX,EAX
004cf94f  85f6                      TEST ESI,ESI
004cf951  741e                      JZ 0x004cf971
004cf953  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
004cf956  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
004cf959  83793000                  CMP dword ptr [ECX + 0x30],0x0
004cf95d  7509                      JNZ 0x004cf968
004cf95f  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
004cf965  7501                      JNZ 0x004cf968
004cf967  42                        INC EDX
004cf968  40                        INC EAX
004cf969  3bc6                      CMP EAX,ESI
004cf96b  72e6                      JC 0x004cf953
004cf96d  85d2                      TEST EDX,EDX
004cf96f  7507                      JNZ 0x004cf978
004cf971  8b07                      MOV EAX,dword ptr [EDI]
004cf973  8bcf                      MOV ECX,EDI
004cf975  ff5028                    CALL dword ptr [EAX + 0x28]
004cf978  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004cf97f  807db400                  CMP byte ptr [EBP + -0x4c],0x0
004cf983  751f                      JNZ 0x004cf9a4
004cf985  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004cf98c  b101                      MOV CL,0x1
004cf98e  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004cf991  6a00                      PUSH 0x0
004cf993  6a00                      PUSH 0x0
004cf995  e8164f5900                CALL 0x00a648b0
004cf99a  83c408                    ADD ESP,0x8
004cf99d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004cf9a4  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004cf9ac  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004cf9b4  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004cf9b9  e862dbf4ff                CALL 0x0041d520
004cf9be  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004cf9c3  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
004cf9cb  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004cf9d0  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004cf9d5  e866dbf4ff                CALL 0x0041d540
004cf9da  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
004cf9df  f30f59c1                  MULSS XMM0,XMM1
004cf9e3  f30f594dd0                MULSS XMM1,dword ptr [EBP + -0x30]
004cf9e8  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004cf9f0  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004cf9f8  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004cf9fe  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004cfa06  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004cfa0e  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004cfa16  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004cfa1e  f30f59c0                  MULSS XMM0,XMM0
004cfa22  f30f59c9                  MULSS XMM1,XMM1
004cfa26  f30f58c1                  ADDSS XMM0,XMM1
004cfa2a  e82160f6ff                CALL 0x00435a50
004cfa2f  f30f100d48a8ba00          MOVSS XMM1,dword ptr [0x00baa848]
004cfa37  0f2fc8                    COMISS XMM1,XMM0
004cfa3a  0f86b7160000              JBE 0x004d10f7
004cfa40  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
004cfa48  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
004cfa4f  0f86a2160000              JBE 0x004d10f7
004cfa55  a17816c700                MOV EAX,[0x00c71678]
004cfa5a  6a00                      PUSH 0x0
004cfa5c  6a00                      PUSH 0x0
004cfa5e  6aff                      PUSH -0x1
004cfa60  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004cfa66  8d45b4                    LEA EAX,[EBP + -0x4c]
004cfa69  6aff                      PUSH -0x1
004cfa6b  6828030000                PUSH 0x328
004cfa70  81c118120000              ADD ECX,0x1218
004cfa76  50                        PUSH EAX
004cfa77  e8e4b4f4ff                CALL 0x0041af60
004cfa7c  33c0                      XOR EAX,EAX
004cfa7e  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004cfa85  8945d0                    MOV dword ptr [EBP + -0x30],EAX
004cfa88  3945c0                    CMP dword ptr [EBP + -0x40],EAX
004cfa8b  765c                      JBE 0x004cfae9
004cfa8d  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
004cfa90  8b3481                    MOV ESI,dword ptr [ECX + EAX*0x4]
004cfa93  837e3000                  CMP dword ptr [ESI + 0x30],0x0
004cfa97  7547                      JNZ 0x004cfae0
004cfa99  8b96bc030000              MOV EDX,dword ptr [ESI + 0x3bc]
004cfa9f  81c6bc030000              ADD ESI,0x3bc
004cfaa5  3bd7                      CMP EDX,EDI
004cfaa7  7537                      JNZ 0x004cfae0
004cfaa9  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004cfaaf  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
004cfab2  85d2                      TEST EDX,EDX
004cfab4  7418                      JZ 0x004cface
004cfab6  8d45d8                    LEA EAX,[EBP + -0x28]
004cfab9  8975d8                    MOV dword ptr [EBP + -0x28],ESI
004cfabc  8d8acc030000              LEA ECX,[EDX + 0x3cc]
004cfac2  50                        PUSH EAX
004cfac3  e848f7ffff                CALL 0x004cf210
004cfac8  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
004cfacb  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004cface  890e                      MOV dword ptr [ESI],ECX
004cfad0  85c9                      TEST ECX,ECX
004cfad2  7409                      JZ 0x004cfadd
004cfad4  56                        PUSH ESI
004cfad5  e816e2ffff                CALL 0x004cdcf0
004cfada  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
004cfadd  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
004cfae0  40                        INC EAX
004cfae1  8945d0                    MOV dword ptr [EBP + -0x30],EAX
004cfae4  3b45c0                    CMP EAX,dword ptr [EBP + -0x40]
004cfae7  72a7                      JC 0x004cfa90
004cfae9  8b07                      MOV EAX,dword ptr [EDI]
004cfaeb  8bcf                      MOV ECX,EDI
004cfaed  ff5028                    CALL dword ptr [EAX + 0x28]
004cfaf0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004cfaf7  807db400                  CMP byte ptr [EBP + -0x4c],0x0
004cfafb  0f85f6150000              JNZ 0x004d10f7
004cfb01  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004cfb08  b101                      MOV CL,0x1
004cfb0a  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004cfb0d  6a00                      PUSH 0x0
004cfb0f  6a00                      PUSH 0x0
004cfb11  e89a4d5900                CALL 0x00a648b0
004cfb16  83c408                    ADD ESP,0x8
004cfb19  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004cfb20  e9d2150000                JMP 0x004d10f7
004cfb25  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004cfb2d  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004cfb35  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004cfb3d  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004cfb44  0f85bf000000              JNZ 0x004cfc09
004cfb4a  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004cfb52  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004cfb5a  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004cfb61  0f86a2000000              JBE 0x004cfc09
004cfb67  6a00                      PUSH 0x0
004cfb69  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004cfb73  8d4f48                    LEA ECX,[EDI + 0x48]
004cfb76  68e4d3b100                PUSH 0xb1d3e4
004cfb7b  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004cfb85  e8f6a7f3ff                CALL 0x0040a380
004cfb8a  a17816c700                MOV EAX,[0x00c71678]
004cfb8f  6a00                      PUSH 0x0
004cfb91  6a00                      PUSH 0x0
004cfb93  6aff                      PUSH -0x1
004cfb95  6aff                      PUSH -0x1
004cfb97  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004cfba1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004cfba7  8d4588                    LEA EAX,[EBP + -0x78]
004cfbaa  6828030000                PUSH 0x328
004cfbaf  81c118120000              ADD ECX,0x1218
004cfbb5  50                        PUSH EAX
004cfbb6  e8a5b3f4ff                CALL 0x0041af60
004cfbbb  8b7594                    MOV ESI,dword ptr [EBP + -0x6c]
004cfbbe  33c0                      XOR EAX,EAX
004cfbc0  8b558c                    MOV EDX,dword ptr [EBP + -0x74]
004cfbc3  85f6                      TEST ESI,ESI
004cfbc5  7420                      JZ 0x004cfbe7
004cfbc7  8b0c82                    MOV ECX,dword ptr [EDX + EAX*0x4]
004cfbca  83793000                  CMP dword ptr [ECX + 0x30],0x0
004cfbce  7512                      JNZ 0x004cfbe2
004cfbd0  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
004cfbd6  750a                      JNZ 0x004cfbe2
004cfbd8  c781b40b00000000803f      MOV dword ptr [ECX + 0xbb4],0x3f800000
004cfbe2  40                        INC EAX
004cfbe3  3bc6                      CMP EAX,ESI
004cfbe5  72e0                      JC 0x004cfbc7
004cfbe7  807d8800                  CMP byte ptr [EBP + -0x78],0x0
004cfbeb  751c                      JNZ 0x004cfc09
004cfbed  6a00                      PUSH 0x0
004cfbef  6a00                      PUSH 0x0
004cfbf1  b101                      MOV CL,0x1
004cfbf3  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
004cfbfa  e8b14c5900                CALL 0x00a648b0
004cfbff  83c408                    ADD ESP,0x8
004cfc02  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004cfc09  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004cfc0f  85c0                      TEST EAX,EAX
004cfc11  7e2a                      JLE 0x004cfc3d
004cfc13  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
004cfc18  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
004cfc1f  761c                      JBE 0x004cfc3d
004cfc21  660f6ec0                  MOVD XMM0,EAX
004cfc25  33c0                      XOR EAX,EAX
004cfc27  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cfc2a  f30f5cc1                  SUBSS XMM0,XMM1
004cfc2e  f30f2cc8                  CVTTSS2SI ECX,XMM0
004cfc32  85c9                      TEST ECX,ECX
004cfc34  0f4fc1                    CMOVG EAX,ECX
004cfc37  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004cfc3d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004cfc43  83f810                    CMP EAX,0x10
004cfc46  0f87ab140000              JA 0x004d10f7
004cfc4c  0fb68070124d00            MOVZX EAX,byte ptr [EAX + 0x4d1270]
004cfc53  ff24854c124d00            JMP dword ptr [EAX*0x4 + 0x4d124c]
004cfc5a  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004cfc61  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
004cfc67  0f118540ffffff            MOVUPS xmmword ptr [EBP + 0xffffff40],XMM0
004cfc6e  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004cfc74  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004cfc7e  0f2805c0c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac0c0]
004cfc85  50                        PUSH EAX
004cfc86  0f118550ffffff            MOVUPS xmmword ptr [EBP + 0xffffff50],XMM0
004cfc8d  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004cfc97  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
004cfca1  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004cfcab  e84075f3ff                CALL 0x004071f0
004cfcb0  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004cfcb6  f30f104024                MOVSS XMM0,dword ptr [EAX + 0x24]
004cfcbb  f30f58c0                  ADDSS XMM0,XMM0
004cfcbf  f30f11875c010000          MOVSS dword ptr [EDI + 0x15c],XMM0
004cfcc7  f30f104044                MOVSS XMM0,dword ptr [EAX + 0x44]
004cfccc  f30f58c0                  ADDSS XMM0,XMM0
004cfcd0  f30f11877c030000          MOVSS dword ptr [EDI + 0x37c],XMM0
004cfcd8  e91a140000                JMP 0x004d10f7
004cfcdd  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004cfce4  8d7748                    LEA ESI,[EDI + 0x48]
004cfce7  b9e4dcb100                MOV ECX,0xb1dce4
004cfcec  b878e1b100                MOV EAX,0xb1e178
004cfcf1  0f4ec1                    CMOVLE EAX,ECX
004cfcf4  8bce                      MOV ECX,ESI
004cfcf6  6a00                      PUSH 0x0
004cfcf8  50                        PUSH EAX
004cfcf9  e882a6f3ff                CALL 0x0040a380
004cfcfe  51                        PUSH ECX
004cfcff  8d45ac                    LEA EAX,[EBP + -0x54]
004cfd02  c7042400000000            MOV dword ptr [ESP],0x0
004cfd09  50                        PUSH EAX
004cfd0a  8bcf                      MOV ECX,EDI
004cfd0c  e82fef1e00                CALL 0x006bec40
004cfd11  6a00                      PUSH 0x0
004cfd13  68000b0001                PUSH 0x1000b00
004cfd18  8bcf                      MOV ECX,EDI
004cfd1a  e81177f4ff                CALL 0x00417430
004cfd1f  84c0                      TEST AL,AL
004cfd21  7526                      JNZ 0x004cfd49
004cfd23  6a00                      PUSH 0x0
004cfd25  6a0a                      PUSH 0xa
004cfd27  8bcf                      MOV ECX,EDI
004cfd29  e8e2c91d00                CALL 0x006ac710
004cfd2e  84c0                      TEST AL,AL
004cfd30  745d                      JZ 0x004cfd8f
004cfd32  8d45d8                    LEA EAX,[EBP + -0x28]
004cfd35  8bcf                      MOV ECX,EDI
004cfd37  50                        PUSH EAX
004cfd38  8d559c                    LEA EDX,[EBP + -0x64]
004cfd3b  e870f8ffff                CALL 0x004cf5b0
004cfd40  83c404                    ADD ESP,0x4
004cfd43  837dd802                  CMP dword ptr [EBP + -0x28],0x2
004cfd47  7e22                      JLE 0x004cfd6b
004cfd49  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004cfd51  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004cfd59  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004cfd61  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004cfd69  eb24                      JMP 0x004cfd8f
004cfd6b  be0a000000                MOV ESI,0xa
004cfd70  51                        PUSH ECX
004cfd71  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004cfd74  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004cfd7a  c704240000a041            MOV dword ptr [ESP],0x41a00000
004cfd81  50                        PUSH EAX
004cfd82  e849ec3400                CALL 0x0081e9d0
004cfd87  83ee01                    SUB ESI,0x1
004cfd8a  75e4                      JNZ 0x004cfd70
004cfd8c  8d7748                    LEA ESI,[EDI + 0x48]
004cfd8f  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004cfd97  f30f101540b6c700          MOVSS XMM2,dword ptr [0x00c7b640]
004cfd9f  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
004cfda7  0f2ec2                    UCOMISS XMM0,XMM2
004cfdaa  9f                        LAHF
004cfdab  f6c444                    TEST AH,0x44
004cfdae  7a11                      JP 0x004cfdc1
004cfdb0  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004cfdb8  0f2ec1                    UCOMISS XMM0,XMM1
004cfdbb  9f                        LAHF
004cfdbc  f6c444                    TEST AH,0x44
004cfdbf  7b14                      JNP 0x004cfdd5
004cfdc1  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004cfdc9  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
004cfdce  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004cfdd3  eb08                      JMP 0x004cfddd
004cfdd5  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
004cfddd  6a01                      PUSH 0x1
004cfddf  6a00                      PUSH 0x0
004cfde1  8d8f14040000              LEA ECX,[EDI + 0x414]
004cfde7  51                        PUSH ECX
004cfde8  8d45ac                    LEA EAX,[EBP + -0x54]
004cfdeb  f30f110424                MOVSS dword ptr [ESP],XMM0
004cfdf0  50                        PUSH EAX
004cfdf1  e8ca353100                CALL 0x007e33c0
004cfdf6  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004cfdfd  0f85f4120000              JNZ 0x004d10f7
004cfe03  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
004cfe0a  0f8fe7120000              JG 0x004d10f7
004cfe10  e84bf12100                CALL 0x006eef60
004cfe15  83e003                    AND EAX,0x3
004cfe18  0f85d9120000              JNZ 0x004d10f7
004cfe1e  8d45d0                    LEA EAX,[EBP + -0x30]
004cfe21  8bcf                      MOV ECX,EDI
004cfe23  50                        PUSH EAX
004cfe24  8d55d8                    LEA EDX,[EBP + -0x28]
004cfe27  e884f7ffff                CALL 0x004cf5b0
004cfe2c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004cfe36  33c0                      XOR EAX,EAX
004cfe38  83c404                    ADD ESP,0x4
004cfe3b  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004cfe45  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004cfe4b  85d2                      TEST EDX,EDX
004cfe4d  0f9fc0                    SETG AL
004cfe50  8d044505000000            LEA EAX,[EAX*0x2 + 0x5]
004cfe57  3945d8                    CMP dword ptr [EBP + -0x28],EAX
004cfe5a  7d6e                      JGE 0x004cfeca
004cfe5c  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004cfe5f  33c0                      XOR EAX,EAX
004cfe61  85d2                      TEST EDX,EDX
004cfe63  0f9fc0                    SETG AL
004cfe66  8d048504000000            LEA EAX,[EAX*0x4 + 0x4]
004cfe6d  3bc8                      CMP ECX,EAX
004cfe6f  0f8dab000000              JGE 0x004cff20
004cfe75  33c9                      XOR ECX,ECX
004cfe77  85d2                      TEST EDX,EDX
004cfe79  0f9fc1                    SETG CL
004cfe7c  83c102                    ADD ECX,0x2
004cfe7f  e88cf11a00                CALL 0x0067f010
004cfe84  85c0                      TEST EAX,EAX
004cfe86  0f8591000000              JNZ 0x004cff1d
004cfe8c  50                        PUSH EAX
004cfe8d  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004cfe97  b97cd4b100                MOV ECX,0xb1d47c
004cfe9c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004cfea3  b8d802b600                MOV EAX,0xb602d8
004cfea8  0f4ec1                    CMOVLE EAX,ECX
004cfeab  8bce                      MOV ECX,ESI
004cfead  50                        PUSH EAX
004cfeae  e8cda4f3ff                CALL 0x0040a380
004cfeb3  e8a8f02100                CALL 0x006eef60
004cfeb8  33d2                      XOR EDX,EDX
004cfeba  b93c000000                MOV ECX,0x3c
004cfebf  f7f1                      DIV ECX
004cfec1  83c20f                    ADD EDX,0xf
004cfec4  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
004cfeca  be5a000000                MOV ESI,0x5a
004cfecf  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004cfed6  0f851b120000              JNZ 0x004d10f7
004cfedc  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004cfee3  0f8f0e120000              JG 0x004d10f7
004cfee9  837dd002                  CMP dword ptr [EBP + -0x30],0x2
004cfeed  0f8e04120000              JLE 0x004d10f7
004cfef3  e868f02100                CALL 0x006eef60
004cfef8  33d2                      XOR EDX,EDX
004cfefa  b903000000                MOV ECX,0x3
004cfeff  f7f1                      DIV ECX
004cff01  85d2                      TEST EDX,EDX
004cff03  0f85ee110000              JNZ 0x004d10f7
004cff09  3997c00b0000              CMP dword ptr [EDI + 0xbc0],EDX
004cff0f  0f8515010000              JNZ 0x004d002a
004cff15  8d4105                    LEA EAX,[ECX + 0x5]
004cff18  e91a010000                JMP 0x004d0037
004cff1d  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004cff20  33c0                      XOR EAX,EAX
004cff22  3987c00b0000              CMP dword ptr [EDI + 0xbc0],EAX
004cff28  0f9fc0                    SETG AL
004cff2b  8d044502000000            LEA EAX,[EAX*0x2 + 0x2]
004cff32  3bc8                      CMP ECX,EAX
004cff34  7d53                      JGE 0x004cff89
004cff36  e825f02100                CALL 0x006eef60
004cff3b  33d2                      XOR EDX,EDX
004cff3d  b903000000                MOV ECX,0x3
004cff42  f7f1                      DIV ECX
004cff44  85d2                      TEST EDX,EDX
004cff46  7541                      JNZ 0x004cff89
004cff48  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
004cff52  b97cd4b100                MOV ECX,0xb1d47c
004cff57  3997c00b0000              CMP dword ptr [EDI + 0xbc0],EDX
004cff5d  b8d802b600                MOV EAX,0xb602d8
004cff62  52                        PUSH EDX
004cff63  0f4ec1                    CMOVLE EAX,ECX
004cff66  8bce                      MOV ECX,ESI
004cff68  50                        PUSH EAX
004cff69  e812a4f3ff                CALL 0x0040a380
004cff6e  e8edef2100                CALL 0x006eef60
004cff73  33d2                      XOR EDX,EDX
004cff75  be5a000000                MOV ESI,0x5a
004cff7a  f7f6                      DIV ESI
004cff7c  03d6                      ADD EDX,ESI
004cff7e  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
004cff84  e946ffffff                JMP 0x004cfecf
004cff89  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004cff90  0f8e34ffffff              JLE 0x004cfeca
004cff96  e8c5ef2100                CALL 0x006eef60
004cff9b  83e003                    AND EAX,0x3
004cff9e  0f8526ffffff              JNZ 0x004cfeca
004cffa4  50                        PUSH EAX
004cffa5  683cd3b100                PUSH 0xb1d33c
004cffaa  8bce                      MOV ECX,ESI
004cffac  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004cffb6  e8c5a3f3ff                CALL 0x0040a380
004cffbb  6aff                      PUSH -0x1
004cffbd  6828030000                PUSH 0x328
004cffc2  8d4588                    LEA EAX,[EBP + -0x78]
004cffc5  8bcf                      MOV ECX,EDI
004cffc7  50                        PUSH EAX
004cffc8  e8930c2000                CALL 0x006d0c60
004cffcd  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
004cffd4  33c0                      XOR EAX,EAX
004cffd6  8b5594                    MOV EDX,dword ptr [EBP + -0x6c]
004cffd9  85d2                      TEST EDX,EDX
004cffdb  7423                      JZ 0x004d0000
004cffdd  8b758c                    MOV ESI,dword ptr [EBP + -0x74]
004cffe0  8b0c86                    MOV ECX,dword ptr [ESI + EAX*0x4]
004cffe3  83793000                  CMP dword ptr [ECX + 0x30],0x0
004cffe7  7512                      JNZ 0x004cfffb
004cffe9  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
004cffef  750a                      JNZ 0x004cfffb
004cfff1  c781640b00000d000000      MOV dword ptr [ECX + 0xb64],0xd
004cfffb  40                        INC EAX
004cfffc  3bc2                      CMP EAX,EDX
004cfffe  72e0                      JC 0x004cffe0
004d0000  e85bef2100                CALL 0x006eef60
004d0005  33d2                      XOR EDX,EDX
004d0007  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d000e  be5a000000                MOV ESI,0x5a
004d0013  8d4d88                    LEA ECX,[EBP + -0x78]
004d0016  f7f6                      DIV ESI
004d0018  03d6                      ADD EDX,ESI
004d001a  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
004d0020  e88b75f4ff                CALL 0x004175b0
004d0025  e9a5feffff                JMP 0x004cfecf
004d002a  e831ef2100                CALL 0x006eef60
004d002f  f7d0                      NOT EAX
004d0031  83e001                    AND EAX,0x1
004d0034  83c808                    OR EAX,0x8
004d0037  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004d003d  e81eef2100                CALL 0x006eef60
004d0042  33d2                      XOR EDX,EDX
004d0044  f7f6                      DIV ESI
004d0046  83c25a                    ADD EDX,0x5a
004d0049  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
004d004f  e9a3100000                JMP 0x004d10f7
004d0054  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004d005b  8d4f48                    LEA ECX,[EDI + 0x48]
004d005e  bae802b600                MOV EDX,0xb602e8
004d0063  b8e002b600                MOV EAX,0xb602e0
004d0068  6a00                      PUSH 0x0
004d006a  0f4ec2                    CMOVLE EAX,EDX
004d006d  50                        PUSH EAX
004d006e  e80da3f3ff                CALL 0x0040a380
004d0073  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004d007a  756e                      JNZ 0x004d00ea
004d007c  6aff                      PUSH -0x1
004d007e  6828030000                PUSH 0x328
004d0083  8d4588                    LEA EAX,[EBP + -0x78]
004d0086  8bcf                      MOV ECX,EDI
004d0088  50                        PUSH EAX
004d0089  e8d20b2000                CALL 0x006d0c60
004d008e  8b5594                    MOV EDX,dword ptr [EBP + -0x6c]
004d0091  33c0                      XOR EAX,EAX
004d0093  8b758c                    MOV ESI,dword ptr [EBP + -0x74]
004d0096  85d2                      TEST EDX,EDX
004d0098  7426                      JZ 0x004d00c0
004d009a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004d00a0  8b0c86                    MOV ECX,dword ptr [ESI + EAX*0x4]
004d00a3  83793000                  CMP dword ptr [ECX + 0x30],0x0
004d00a7  7512                      JNZ 0x004d00bb
004d00a9  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
004d00af  750a                      JNZ 0x004d00bb
004d00b1  c781b40b00000000003f      MOV dword ptr [ECX + 0xbb4],0x3f000000
004d00bb  40                        INC EAX
004d00bc  3bc2                      CMP EAX,EDX
004d00be  72e0                      JC 0x004d00a0
004d00c0  ff8710040000              INC dword ptr [EDI + 0x410]
004d00c6  807d8800                  CMP byte ptr [EBP + -0x78],0x0
004d00ca  751e                      JNZ 0x004d00ea
004d00cc  6a00                      PUSH 0x0
004d00ce  6a00                      PUSH 0x0
004d00d0  8bd6                      MOV EDX,ESI
004d00d2  c745fc06000000            MOV dword ptr [EBP + -0x4],0x6
004d00d9  b101                      MOV CL,0x1
004d00db  e8d0475900                CALL 0x00a648b0
004d00e0  83c408                    ADD ESP,0x8
004d00e3  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d00ea  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d00ee  0f84f90f0000              JZ 0x004d10ed
004d00f4  68dcd2b100                PUSH 0xb1d2dc
004d00f9  8d4f78                    LEA ECX,[EDI + 0x78]
004d00fc  e8cfacf3ff                CALL 0x0040add0
004d0101  84c0                      TEST AL,AL
004d0103  0f84d50f0000              JZ 0x004d10de
004d0109  51                        PUSH ECX
004d010a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d0111  6a00                      PUSH 0x0
004d0113  6a02                      PUSH 0x2
004d0115  51                        PUSH ECX
004d0116  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d011d  8bcf                      MOV ECX,EDI
004d011f  68e3010000                PUSH 0x1e3
004d0124  e8776a2000                CALL 0x006d6ba0
004d0129  a17816c700                MOV EAX,[0x00c71678]
004d012e  6a00                      PUSH 0x0
004d0130  6a00                      PUSH 0x0
004d0132  6aff                      PUSH -0x1
004d0134  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d013a  8d45b4                    LEA EAX,[EBP + -0x4c]
004d013d  6aff                      PUSH -0x1
004d013f  6828030000                PUSH 0x328
004d0144  81c118120000              ADD ECX,0x1218
004d014a  50                        PUSH EAX
004d014b  e810aef4ff                CALL 0x0041af60
004d0150  33c0                      XOR EAX,EAX
004d0152  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
004d0159  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004d015c  3945c0                    CMP dword ptr [EBP + -0x40],EAX
004d015f  767a                      JBE 0x004d01db
004d0161  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
004d0164  8b3481                    MOV ESI,dword ptr [ECX + EAX*0x4]
004d0167  8975d0                    MOV dword ptr [EBP + -0x30],ESI
004d016a  837e3000                  CMP dword ptr [ESI + 0x30],0x0
004d016e  7562                      JNZ 0x004d01d2
004d0170  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
004d0176  755a                      JNZ 0x004d01d2
004d0178  8d4648                    LEA EAX,[ESI + 0x48]
004d017b  6a01                      PUSH 0x1
004d017d  6854ddb100                PUSH 0xb1dd54
004d0182  8bc8                      MOV ECX,EAX
004d0184  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d0187  e844a4f3ff                CALL 0x0040a5d0
004d018c  84c0                      TEST AL,AL
004d018e  7412                      JZ 0x004d01a2
004d0190  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
004d0193  8d4e30                    LEA ECX,[ESI + 0x30]
004d0196  e815a0f3ff                CALL 0x0040a1b0
004d019b  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004d019f  8b75d0                    MOV ESI,dword ptr [EBP + -0x30]
004d01a2  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
004d01a6  7410                      JZ 0x004d01b8
004d01a8  f30f100d60a8ba00          MOVSS XMM1,dword ptr [0x00baa860]
004d01b0  8d4e78                    LEA ECX,[ESI + 0x78]
004d01b3  e8488cf3ff                CALL 0x00408e00
004d01b8  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
004d01bb  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
004d01be  c786640b00000a000000      MOV dword ptr [ESI + 0xb64],0xa
004d01c8  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
004d01d2  40                        INC EAX
004d01d3  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004d01d6  3b45c0                    CMP EAX,dword ptr [EBP + -0x40]
004d01d9  7289                      JC 0x004d0164
004d01db  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d01e2  807db400                  CMP byte ptr [EBP + -0x4c],0x0
004d01e6  0f85f20e0000              JNZ 0x004d10de
004d01ec  c745fc08000000            MOV dword ptr [EBP + -0x4],0x8
004d01f3  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004d01f6  b101                      MOV CL,0x1
004d01f8  6a00                      PUSH 0x0
004d01fa  6a00                      PUSH 0x0
004d01fc  e8af465900                CALL 0x00a648b0
004d0201  83c408                    ADD ESP,0x8
004d0204  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d020b  e9ce0e0000                JMP 0x004d10de
004d0210  6a00                      PUSH 0x0
004d0212  8d4f48                    LEA ECX,[EDI + 0x48]
004d0215  683cddb100                PUSH 0xb1dd3c
004d021a  e861a1f3ff                CALL 0x0040a380
004d021f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d0223  0f84c40e0000              JZ 0x004d10ed
004d0229  68dcd2b100                PUSH 0xb1d2dc
004d022e  8d4f78                    LEA ECX,[EDI + 0x78]
004d0231  e89aabf3ff                CALL 0x0040add0
004d0236  84c0                      TEST AL,AL
004d0238  0f84a00e0000              JZ 0x004d10de
004d023e  8bcf                      MOV ECX,EDI
004d0240  e8fbe51e00                CALL 0x006be840
004d0245  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004d024d  81c73c030000              ADD EDI,0x33c
004d0253  8bf0                      MOV ESI,EAX
004d0255  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
004d025a  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004d0262  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004d026a  f30f59c0                  MULSS XMM0,XMM0
004d026e  f30f59c9                  MULSS XMM1,XMM1
004d0272  f30f58c1                  ADDSS XMM0,XMM1
004d0276  e8d557f6ff                CALL 0x00435a50
004d027b  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
004d0283  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004d0289  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
004d0291  8d4dac                    LEA ECX,[EBP + -0x54]
004d0294  f30f109e3c030000          MOVSS XMM3,dword ptr [ESI + 0x33c]
004d029c  f30f59c8                  MULSS XMM1,XMM0
004d02a0  50                        PUSH EAX
004d02a1  f30f59d0                  MULSS XMM2,XMM0
004d02a5  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004d02ad  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004d02b5  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004d02bd  f30f58d9                  ADDSS XMM3,XMM1
004d02c1  f30f58c2                  ADDSS XMM0,XMM2
004d02c5  f30f5c1f                  SUBSS XMM3,dword ptr [EDI]
004d02c9  f30f5c4704                SUBSS XMM0,dword ptr [EDI + 0x4]
004d02ce  f30f115dac                MOVSS dword ptr [EBP + -0x54],XMM3
004d02d3  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004d02d8  e853fd5300                CALL 0x00a10030
004d02dd  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004d02e1  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
004d02e9  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
004d02ee  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004d02f3  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
004d02fb  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
004d0300  e85bec2100                CALL 0x006eef60
004d0305  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d030b  50                        PUSH EAX
004d030c  6a00                      PUSH 0x0
004d030e  ff75d0                    PUSH dword ptr [EBP + -0x30]
004d0311  6840b6c700                PUSH 0xc7b640
004d0316  57                        PUSH EDI
004d0317  6a0a                      PUSH 0xa
004d0319  6891030000                PUSH 0x391
004d031e  e8fd87f5ff                CALL 0x00428b20
004d0323  8bf0                      MOV ESI,EAX
004d0325  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004d032b  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004d0331  8975cc                    MOV dword ptr [EBP + -0x34],ESI
004d0334  85c9                      TEST ECX,ECX
004d0336  7418                      JZ 0x004d0350
004d0338  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d033b  81c1cc030000              ADD ECX,0x3cc
004d0341  8d45d8                    LEA EAX,[EBP + -0x28]
004d0344  50                        PUSH EAX
004d0345  e8c6eeffff                CALL 0x004cf210
004d034a  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004d0350  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
004d0353  8bcf                      MOV ECX,EDI
004d0355  50                        PUSH EAX
004d0356  8938                      MOV dword ptr [EAX],EDI
004d0358  e893d9ffff                CALL 0x004cdcf0
004d035d  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
004d0363  8d87c0030000              LEA EAX,[EDI + 0x3c0]
004d0369  85c9                      TEST ECX,ECX
004d036b  7418                      JZ 0x004d0385
004d036d  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d0370  81c1cc030000              ADD ECX,0x3cc
004d0376  8d45d8                    LEA EAX,[EBP + -0x28]
004d0379  50                        PUSH EAX
004d037a  e891eeffff                CALL 0x004cf210
004d037f  8d87c0030000              LEA EAX,[EDI + 0x3c0]
004d0385  50                        PUSH EAX
004d0386  8bce                      MOV ECX,ESI
004d0388  8930                      MOV dword ptr [EAX],ESI
004d038a  e861d9ffff                CALL 0x004cdcf0
004d038f  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
004d0394  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004d0399  e8c299fcff                CALL 0x00499d60
004d039e  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004d03a6  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
004d03ab  f30f59c9                  MULSS XMM1,XMM1
004d03af  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
004d03b7  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004d03bc  f30f59c0                  MULSS XMM0,XMM0
004d03c0  f30f58c1                  ADDSS XMM0,XMM1
004d03c4  e88756f6ff                CALL 0x00435a50
004d03c9  6aff                      PUSH -0x1
004d03cb  6828030000                PUSH 0x328
004d03d0  8d45b4                    LEA EAX,[EBP + -0x4c]
004d03d3  f30f1186bc0b0000          MOVSS dword ptr [ESI + 0xbbc],XMM0
004d03db  50                        PUSH EAX
004d03dc  8bcf                      MOV ECX,EDI
004d03de  e87d082000                CALL 0x006d0c60
004d03e3  33c0                      XOR EAX,EAX
004d03e5  c745fc09000000            MOV dword ptr [EBP + -0x4],0x9
004d03ec  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004d03ef  3945c0                    CMP dword ptr [EBP + -0x40],EAX
004d03f2  764e                      JBE 0x004d0442
004d03f4  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
004d03f7  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
004d03fa  83793000                  CMP dword ptr [ECX + 0x30],0x0
004d03fe  7539                      JNZ 0x004d0439
004d0400  8db1bc030000              LEA ESI,[ECX + 0x3bc]
004d0406  8b0e                      MOV ECX,dword ptr [ESI]
004d0408  3bcf                      CMP ECX,EDI
004d040a  752a                      JNZ 0x004d0436
004d040c  85c9                      TEST ECX,ECX
004d040e  7412                      JZ 0x004d0422
004d0410  8d45d8                    LEA EAX,[EBP + -0x28]
004d0413  8975d8                    MOV dword ptr [EBP + -0x28],ESI
004d0416  81c1cc030000              ADD ECX,0x3cc
004d041c  50                        PUSH EAX
004d041d  e8eeedffff                CALL 0x004cf210
004d0422  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
004d0425  8906                      MOV dword ptr [ESI],EAX
004d0427  56                        PUSH ESI
004d0428  8bf0                      MOV ESI,EAX
004d042a  8bce                      MOV ECX,ESI
004d042c  e8bfd8ffff                CALL 0x004cdcf0
004d0431  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
004d0434  eb03                      JMP 0x004d0439
004d0436  8b75cc                    MOV ESI,dword ptr [EBP + -0x34]
004d0439  40                        INC EAX
004d043a  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004d043d  3b45c0                    CMP EAX,dword ptr [EBP + -0x40]
004d0440  72b2                      JC 0x004d03f4
004d0442  8b06                      MOV EAX,dword ptr [ESI]
004d0444  8bce                      MOV ECX,ESI
004d0446  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
004d044d  ff500c                    CALL dword ptr [EAX + 0xc]
004d0450  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d0457  807db400                  CMP byte ptr [EBP + -0x4c],0x0
004d045b  0f857d0c0000              JNZ 0x004d10de
004d0461  c745fc0a000000            MOV dword ptr [EBP + -0x4],0xa
004d0468  e986fdffff                JMP 0x004d01f3
004d046d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d0471  0f84760c0000              JZ 0x004d10ed
004d0477  68dcd2b100                PUSH 0xb1d2dc
004d047c  8d4f78                    LEA ECX,[EDI + 0x78]
004d047f  e84ca9f3ff                CALL 0x0040add0
004d0484  84c0                      TEST AL,AL
004d0486  0f84520c0000              JZ 0x004d10de
004d048c  51                        PUSH ECX
004d048d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d0494  6a00                      PUSH 0x0
004d0496  6a02                      PUSH 0x2
004d0498  51                        PUSH ECX
004d0499  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d04a0  8bcf                      MOV ECX,EDI
004d04a2  683f010000                PUSH 0x13f
004d04a7  e8f4662000                CALL 0x006d6ba0
004d04ac  f30f1015a0a9ba00          MOVSS XMM2,dword ptr [0x00baa9a0]
004d04b4  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004d04ba  6a00                      PUSH 0x0
004d04bc  8bd7                      MOV EDX,EDI
004d04be  e81d8b0800                CALL 0x00558fe0
004d04c3  83c404                    ADD ESP,0x4
004d04c6  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004d04c9  8bc8                      MOV ECX,EAX
004d04cb  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
004d04d3  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
004d04db  f30f118084030000          MOVSS dword ptr [EAX + 0x384],XMM0
004d04e3  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
004d04eb  e8f0770800                CALL 0x00557ce0
004d04f0  8bcf                      MOV ECX,EDI
004d04f2  e849e31e00                CALL 0x006be840
004d04f7  8d4dac                    LEA ECX,[EBP + -0x54]
004d04fa  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004d0502  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004d050a  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004d0510  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004d0518  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004d0520  50                        PUSH EAX
004d0521  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004d0526  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004d052b  e800fb5300                CALL 0x00a10030
004d0530  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004d0534  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
004d053c  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
004d0541  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004d0546  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
004d054e  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
004d0553  e808ea2100                CALL 0x006eef60
004d0558  a801                      TEST AL,0x1
004d055a  740a                      JZ 0x004d0566
004d055c  f30f100554a8ba00          MOVSS XMM0,dword ptr [0x00baa854]
004d0564  eb08                      JMP 0x004d056e
004d0566  f30f1005d8adba00          MOVSS XMM0,dword ptr [0x00baadd8]
004d056e  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004d0576  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004d057b  e8c0cff4ff                CALL 0x0041d540
004d0580  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004d0585  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004d058a  e891cff4ff                CALL 0x0041d520
004d058f  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
004d0594  0f28d8                    MOVAPS XMM3,XMM0
004d0597  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
004d059c  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
004d05a1  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
004d05a4  f30f59cb                  MULSS XMM1,XMM3
004d05a8  6a01                      PUSH 0x1
004d05aa  f30f595dd0                MULSS XMM3,dword ptr [EBP + -0x30]
004d05af  8d4648                    LEA EAX,[ESI + 0x48]
004d05b2  f30f59d0                  MULSS XMM2,XMM0
004d05b6  8bc8                      MOV ECX,EAX
004d05b8  6854ddb100                PUSH 0xb1dd54
004d05bd  f30f5945c4                MULSS XMM0,dword ptr [EBP + -0x3c]
004d05c2  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d05c5  f30f5cd1                  SUBSS XMM2,XMM1
004d05c9  f30f58d8                  ADDSS XMM3,XMM0
004d05cd  f30f119634030000          MOVSS dword ptr [ESI + 0x334],XMM2
004d05d5  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
004d05dd  f30f119e38030000          MOVSS dword ptr [ESI + 0x338],XMM3
004d05e5  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
004d05ed  e8de9ff3ff                CALL 0x0040a5d0
004d05f2  84c0                      TEST AL,AL
004d05f4  7412                      JZ 0x004d0608
004d05f6  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
004d05f9  8d4e30                    LEA ECX,[ESI + 0x30]
004d05fc  e8af9bf3ff                CALL 0x0040a1b0
004d0601  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004d0605  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
004d0608  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
004d060c  7410                      JZ 0x004d061e
004d060e  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
004d0616  8d4e78                    LEA ECX,[ESI + 0x78]
004d0619  e8e287f3ff                CALL 0x00408e00
004d061e  c786640b000009000000      MOV dword ptr [ESI + 0xb64],0x9
004d0628  c787a00b00002d000000      MOV dword ptr [EDI + 0xba0],0x2d
004d0632  e9a70a0000                JMP 0x004d10de
004d0637  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d063b  0f843d010000              JZ 0x004d077e
004d0641  68dcd2b100                PUSH 0xb1d2dc
004d0646  8d4f78                    LEA ECX,[EDI + 0x78]
004d0649  e882a7f3ff                CALL 0x0040add0
004d064e  84c0                      TEST AL,AL
004d0650  0f8415010000              JZ 0x004d076b
004d0656  33f6                      XOR ESI,ESI
004d0658  8d873c030000              LEA EAX,[EDI + 0x33c]
004d065e  6690                      NOP
004d0660  f30f1015a0a9ba00          MOVSS XMM2,dword ptr [0x00baa9a0]
004d0668  8bd7                      MOV EDX,EDI
004d066a  6a00                      PUSH 0x0
004d066c  8bc8                      MOV ECX,EAX
004d066e  e86d890800                CALL 0x00558fe0
004d0673  8944b5dc                  MOV dword ptr [EBP + ESI*0x4 + -0x24],EAX
004d0677  83c404                    ADD ESP,0x4
004d067a  46                        INC ESI
004d067b  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
004d0683  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
004d068b  f30f118084030000          MOVSS dword ptr [EAX + 0x384],XMM0
004d0693  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
004d069b  8d873c030000              LEA EAX,[EDI + 0x33c]
004d06a1  83fe04                    CMP ESI,0x4
004d06a4  7cba                      JL 0x004d0660
004d06a6  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
004d06a9  e832760800                CALL 0x00557ce0
004d06ae  33ff                      XOR EDI,EDI
004d06b0  8b74bddc                  MOV ESI,dword ptr [EBP + EDI*0x4 + -0x24]
004d06b4  8d4598                    LEA EAX,[EBP + -0x68]
004d06b7  6a00                      PUSH 0x0
004d06b9  50                        PUSH EAX
004d06ba  8bce                      MOV ECX,ESI
004d06bc  e8af790800                CALL 0x00558070
004d06c1  6a0c                      PUSH 0xc
004d06c3  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004d06c9  8bce                      MOV ECX,ESI
004d06cb  50                        PUSH EAX
004d06cc  e89f780800                CALL 0x00557f70
004d06d1  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004d06d5  f30f5c4d98                SUBSS XMM1,dword ptr [EBP + -0x68]
004d06da  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004d06df  f30f5c559c                SUBSS XMM2,dword ptr [EBP + -0x64]
004d06e4  0f28c1                    MOVAPS XMM0,XMM1
004d06e7  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
004d06ec  f30f59c1                  MULSS XMM0,XMM1
004d06f0  0f28ca                    MOVAPS XMM1,XMM2
004d06f3  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
004d06f8  f30f59ca                  MULSS XMM1,XMM2
004d06fc  f30f58c1                  ADDSS XMM0,XMM1
004d0700  e84b53f6ff                CALL 0x00435a50
004d0705  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004d070c  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
004d0711  f30f105dcc                MOVSS XMM3,dword ptr [EBP + -0x34]
004d0716  7614                      JBE 0x004d072c
004d0718  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004d0720  f30f5ec8                  DIVSS XMM1,XMM0
004d0724  f30f59d1                  MULSS XMM2,XMM1
004d0728  f30f59d9                  MULSS XMM3,XMM1
004d072c  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
004d0734  47                        INC EDI
004d0735  f30f5905a0a4ba00          MULSS XMM0,dword ptr [0x00baa4a0]
004d073d  f30f59d0                  MULSS XMM2,XMM0
004d0741  f30f59d8                  MULSS XMM3,XMM0
004d0745  f30f585598                ADDSS XMM2,dword ptr [EBP + -0x68]
004d074a  f30f585d9c                ADDSS XMM3,dword ptr [EBP + -0x64]
004d074f  f30f11963c030000          MOVSS dword ptr [ESI + 0x33c],XMM2
004d0757  f30f119e40030000          MOVSS dword ptr [ESI + 0x340],XMM3
004d075f  83ff04                    CMP EDI,0x4
004d0762  0f8c48ffffff              JL 0x004d06b0
004d0768  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
004d076b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d076f  740d                      JZ 0x004d077e
004d0771  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004d0778  0f8579090000              JNZ 0x004d10f7
004d077e  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004d0785  750f                      JNZ 0x004d0796
004d0787  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004d0791  e961090000                JMP 0x004d10f7
004d0796  e8c5e72100                CALL 0x006eef60
004d079b  f7d0                      NOT EAX
004d079d  83e001                    AND EAX,0x1
004d07a0  83c808                    OR EAX,0x8
004d07a3  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004d07a9  e949090000                JMP 0x004d10f7
004d07ae  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004d07b4  85c0                      TEST EAX,EAX
004d07b6  754d                      JNZ 0x004d0805
004d07b8  68dcd2b100                PUSH 0xb1d2dc
004d07bd  8d4f48                    LEA ECX,[EDI + 0x48]
004d07c0  e86ba8f3ff                CALL 0x0040b030
004d07c5  84c0                      TEST AL,AL
004d07c7  7414                      JZ 0x004d07dd
004d07c9  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004d07d3  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d07dd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d07e1  740d                      JZ 0x004d07f0
004d07e3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004d07ea  0f8507090000              JNZ 0x004d10f7
004d07f0  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
004d07f6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d0800  e9f2080000                JMP 0x004d10f7
004d0805  83f801                    CMP EAX,0x1
004d0808  0f8597060000              JNZ 0x004d0ea5
004d080e  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
004d0816  33c9                      XOR ECX,ECX
004d0818  894dc8                    MOV dword ptr [EBP + -0x38],ECX
004d081b  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004d0823  2bd0                      SUB EDX,EAX
004d0825  89559c                    MOV dword ptr [EBP + -0x64],EDX
004d0828  85d2                      TEST EDX,EDX
004d082a  0f8ec7080000              JLE 0x004d10f7
004d0830  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004d0836  be0a000000                MOV ESI,0xa
004d083b  99                        CDQ
004d083c  f7fe                      IDIV ESI
004d083e  85d2                      TEST EDX,EDX
004d0840  7570                      JNZ 0x004d08b2
004d0842  a17816c700                MOV EAX,[0x00c71678]
004d0847  52                        PUSH EDX
004d0848  52                        PUSH EDX
004d0849  6aff                      PUSH -0x1
004d084b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d0851  8d45dc                    LEA EAX,[EBP + -0x24]
004d0854  6aff                      PUSH -0x1
004d0856  6828030000                PUSH 0x328
004d085b  81c118120000              ADD ECX,0x1218
004d0861  50                        PUSH EAX
004d0862  e8f9a6f4ff                CALL 0x0041af60
004d0867  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004d086a  33c0                      XOR EAX,EAX
004d086c  8b75e0                    MOV ESI,dword ptr [EBP + -0x20]
004d086f  85d2                      TEST EDX,EDX
004d0871  7418                      JZ 0x004d088b
004d0873  8b0c86                    MOV ECX,dword ptr [ESI + EAX*0x4]
004d0876  83793000                  CMP dword ptr [ECX + 0x30],0x0
004d087a  750a                      JNZ 0x004d0886
004d087c  c781a00b00001e000000      MOV dword ptr [ECX + 0xba0],0x1e
004d0886  40                        INC EAX
004d0887  3bc2                      CMP EAX,EDX
004d0889  72e8                      JC 0x004d0873
004d088b  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004d088f  751e                      JNZ 0x004d08af
004d0891  6a00                      PUSH 0x0
004d0893  6a00                      PUSH 0x0
004d0895  8bd6                      MOV EDX,ESI
004d0897  c745fc0b000000            MOV dword ptr [EBP + -0x4],0xb
004d089e  b101                      MOV CL,0x1
004d08a0  e80b405900                CALL 0x00a648b0
004d08a5  83c408                    ADD ESP,0x8
004d08a8  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d08af  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
004d08b2  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004d08b8  83f808                    CMP EAX,0x8
004d08bb  0f8f0d040000              JG 0x004d0cce
004d08c1  a801                      TEST AL,0x1
004d08c3  0f85b8050000              JNZ 0x004d0e81
004d08c9  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004d08cc  8d4588                    LEA EAX,[EBP + -0x78]
004d08cf  6a00                      PUSH 0x0
004d08d1  6a00                      PUSH 0x0
004d08d3  6aff                      PUSH -0x1
004d08d5  689d000000                PUSH 0x9d
004d08da  0f57c0                    XORPS XMM0,XMM0
004d08dd  8d8918120000              LEA ECX,[ECX + 0x1218]
004d08e3  68e8030000                PUSH 0x3e8
004d08e8  50                        PUSH EAX
004d08e9  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004d08ee  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004d08f3  e868a6f4ff                CALL 0x0041af60
004d08f8  32c0                      XOR AL,AL
004d08fa  c745fc0c000000            MOV dword ptr [EBP + -0x4],0xc
004d0901  8b7594                    MOV ESI,dword ptr [EBP + -0x6c]
004d0904  33c9                      XOR ECX,ECX
004d0906  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
004d0909  0f1f8000000000            NOP dword ptr [EAX]
004d0910  84c0                      TEST AL,AL
004d0912  0f85c9010000              JNZ 0x004d0ae1
004d0918  83f905                    CMP ECX,0x5
004d091b  0f8d26010000              JGE 0x004d0a47
004d0921  e83ae62100                CALL 0x006eef60
004d0926  33d2                      XOR EDX,EDX
004d0928  b903000000                MOV ECX,0x3
004d092d  f7f1                      DIV ECX
004d092f  85d2                      TEST EDX,EDX
004d0931  0f8510010000              JNZ 0x004d0a47
004d0937  8bcf                      MOV ECX,EDI
004d0939  e802df1e00                CALL 0x006be840
004d093e  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004d0946  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004d094b  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004d0953  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004d0958  e803e62100                CALL 0x006eef60
004d095d  660f6ec0                  MOVD XMM0,EAX
004d0961  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d0965  c1e81f                    SHR EAX,0x1f
004d0968  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d0971  660f5ac0                  CVTPD2PS XMM0,XMM0
004d0975  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d097d  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004d0985  f30f58c0                  ADDSS XMM0,XMM0
004d0989  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004d098e  e88dcbf4ff                CALL 0x0041d520
004d0993  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004d0998  e8c3e52100                CALL 0x006eef60
004d099d  660f6ec8                  MOVD XMM1,EAX
004d09a1  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004d09a5  c1e81f                    SHR EAX,0x1f
004d09a8  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004d09b1  660f5ac1                  CVTPD2PS XMM0,XMM1
004d09b5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d09bd  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
004d09c5  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
004d09cd  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004d09d2  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004d09d7  e864cbf4ff                CALL 0x0041d540
004d09dc  f30f5945cc                MULSS XMM0,dword ptr [EBP + -0x34]
004d09e1  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004d09e7  83ec0c                    SUB ESP,0xc
004d09ea  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004d09ed  f30f1055c4                MOVSS XMM2,dword ptr [EBP + -0x3c]
004d09f2  f30f5955cc                MULSS XMM2,dword ptr [EBP + -0x34]
004d09f7  f30f104d84                MOVSS XMM1,dword ptr [EBP + -0x7c]
004d09fc  f30f101dd0a8ba00          MOVSS XMM3,dword ptr [0x00baa8d0]
004d0a04  f30f58c8                  ADDSS XMM1,XMM0
004d0a08  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
004d0a0d  c74424080000f041          MOV dword ptr [ESP + 0x8],0x41f00000
004d0a15  f30f58c2                  ADDSS XMM0,XMM2
004d0a19  c74424040000f041          MOV dword ptr [ESP + 0x4],0x41f00000
004d0a21  c704240000f041            MOV dword ptr [ESP],0x41f00000
004d0a28  50                        PUSH EAX
004d0a29  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
004d0a2f  f30f118d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM1
004d0a37  50                        PUSH EAX
004d0a38  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004d0a40  e80b253400                CALL 0x00812f50
004d0a45  eb17                      JMP 0x004d0a5e
004d0a47  51                        PUSH ECX
004d0a48  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004d0a4b  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
004d0a51  c704240000f041            MOV dword ptr [ESP],0x41f00000
004d0a58  50                        PUSH EAX
004d0a59  e872df3400                CALL 0x0081e9d0
004d0a5e  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004d0a63  33c9                      XOR ECX,ECX
004d0a65  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004d0a69  b001                      MOV AL,0x1
004d0a6b  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
004d0a70  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004d0a75  85f6                      TEST ESI,ESI
004d0a77  7458                      JZ 0x004d0ad1
004d0a79  0f1f8000000000            NOP dword ptr [EAX]
004d0a80  84c0                      TEST AL,AL
004d0a82  744d                      JZ 0x004d0ad1
004d0a84  8b558c                    MOV EDX,dword ptr [EBP + -0x74]
004d0a87  8b148a                    MOV EDX,dword ptr [EDX + ECX*0x4]
004d0a8a  39babc030000              CMP dword ptr [EDX + 0x3bc],EDI
004d0a90  753a                      JNZ 0x004d0acc
004d0a92  0f28c8                    MOVAPS XMM1,XMM0
004d0a95  0fb6c0                    MOVZX EAX,AL
004d0a98  f30f5c8a3c030000          SUBSS XMM1,dword ptr [EDX + 0x33c]
004d0aa0  0f28c2                    MOVAPS XMM0,XMM2
004d0aa3  f30f5c8240030000          SUBSS XMM0,dword ptr [EDX + 0x340]
004d0aab  33d2                      XOR EDX,EDX
004d0aad  f30f59c9                  MULSS XMM1,XMM1
004d0ab1  f30f59c0                  MULSS XMM0,XMM0
004d0ab5  f30f58c8                  ADDSS XMM1,XMM0
004d0ab9  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
004d0ac1  0f2fc1                    COMISS XMM0,XMM1
004d0ac4  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
004d0ac9  0f47c2                    CMOVA EAX,EDX
004d0acc  41                        INC ECX
004d0acd  3bce                      CMP ECX,ESI
004d0acf  72af                      JC 0x004d0a80
004d0ad1  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004d0ad4  41                        INC ECX
004d0ad5  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
004d0ad8  83f90a                    CMP ECX,0xa
004d0adb  0f8c2ffeffff              JL 0x004d0910
004d0ae1  e87ae42100                CALL 0x006eef60
004d0ae6  33d2                      XOR EDX,EDX
004d0ae8  b905000000                MOV ECX,0x5
004d0aed  f7f1                      DIV ECX
004d0aef  8d7201                    LEA ESI,[EDX + 0x1]
004d0af2  89b56cffffff              MOV dword ptr [EBP + 0xffffff6c],ESI
004d0af8  e863e42100                CALL 0x006eef60
004d0afd  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004d0b04  660f6ec0                  MOVD XMM0,EAX
004d0b08  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d0b0c  c1e81f                    SHR EAX,0x1f
004d0b0f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d0b18  33c0                      XOR EAX,EAX
004d0b1a  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d0b1d  660f5ad0                  CVTPD2PS XMM2,XMM0
004d0b21  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
004d0b29  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004d0b31  f30f59d0                  MULSS XMM2,XMM0
004d0b35  f30f1155a0                MOVSS dword ptr [EBP + -0x60],XMM2
004d0b3a  85f6                      TEST ESI,ESI
004d0b3c  0f8e6c010000              JLE 0x004d0cae
004d0b42  83fe01                    CMP ESI,0x1
004d0b45  7516                      JNZ 0x004d0b5d
004d0b47  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
004d0b4c  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004d0b51  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
004d0b56  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004d0b5b  eb73                      JMP 0x004d0bd0
004d0b5d  0f57c9                    XORPS XMM1,XMM1
004d0b60  f30f2ac8                  CVTSI2SS XMM1,EAX
004d0b64  f30f59c8                  MULSS XMM1,XMM0
004d0b68  0f57c0                    XORPS XMM0,XMM0
004d0b6b  f30f2ac6                  CVTSI2SS XMM0,ESI
004d0b6f  f30f5ec8                  DIVSS XMM1,XMM0
004d0b73  f30f58ca                  ADDSS XMM1,XMM2
004d0b77  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
004d0b7f  0f28c1                    MOVAPS XMM0,XMM1
004d0b82  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
004d0b87  e894c9f4ff                CALL 0x0041d520
004d0b8c  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004d0b91  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
004d0b96  e8a5c9f4ff                CALL 0x0041d540
004d0b9b  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
004d0ba0  f30f5915d0a8ba00          MULSS XMM2,dword ptr [0x00baa8d0]
004d0ba8  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004d0bb0  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
004d0bb8  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
004d0bbd  f30f58c8                  ADDSS XMM1,XMM0
004d0bc1  f30f5855cc                ADDSS XMM2,dword ptr [EBP + -0x34]
004d0bc6  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
004d0bcb  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
004d0bd0  e88be32100                CALL 0x006eef60
004d0bd5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d0bdb  50                        PUSH EAX
004d0bdc  6a00                      PUSH 0x0
004d0bde  57                        PUSH EDI
004d0bdf  6840b6c700                PUSH 0xc7b640
004d0be4  8d45ac                    LEA EAX,[EBP + -0x54]
004d0be7  50                        PUSH EAX
004d0be8  689d000000                PUSH 0x9d
004d0bed  68e8030000                PUSH 0x3e8
004d0bf2  e8297ff5ff                CALL 0x00428b20
004d0bf7  8bf0                      MOV ESI,EAX
004d0bf9  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004d0bff  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004d0c05  85c9                      TEST ECX,ECX
004d0c07  7418                      JZ 0x004d0c21
004d0c09  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004d0c0c  81c1cc030000              ADD ECX,0x3cc
004d0c12  8d45a4                    LEA EAX,[EBP + -0x5c]
004d0c15  50                        PUSH EAX
004d0c16  e8f5e5ffff                CALL 0x004cf210
004d0c1b  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004d0c21  50                        PUSH EAX
004d0c22  8bcf                      MOV ECX,EDI
004d0c24  8938                      MOV dword ptr [EAX],EDI
004d0c26  e8c5d0ffff                CALL 0x004cdcf0
004d0c2b  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004d0c2e  85c9                      TEST ECX,ECX
004d0c30  7446                      JZ 0x004d0c78
004d0c32  8b96c4030000              MOV EDX,dword ptr [ESI + 0x3c4]
004d0c38  8d86c4030000              LEA EAX,[ESI + 0x3c4]
004d0c3e  85d2                      TEST EDX,EDX
004d0c40  741b                      JZ 0x004d0c5d
004d0c42  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004d0c45  8d8acc030000              LEA ECX,[EDX + 0x3cc]
004d0c4b  8d45a4                    LEA EAX,[EBP + -0x5c]
004d0c4e  50                        PUSH EAX
004d0c4f  e8bce5ffff                CALL 0x004cf210
004d0c54  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004d0c57  8d86c4030000              LEA EAX,[ESI + 0x3c4]
004d0c5d  50                        PUSH EAX
004d0c5e  8908                      MOV dword ptr [EAX],ECX
004d0c60  e88bd0ffff                CALL 0x004cdcf0
004d0c65  8b06                      MOV EAX,dword ptr [ESI]
004d0c67  8bce                      MOV ECX,ESI
004d0c69  c7865004000000000000      MOV dword ptr [ESI + 0x450],0x0
004d0c73  ff500c                    CALL dword ptr [EAX + 0xc]
004d0c76  eb14                      JMP 0x004d0c8c
004d0c78  8b06                      MOV EAX,dword ptr [ESI]
004d0c7a  8bce                      MOV ECX,ESI
004d0c7c  c7865004000000000000      MOV dword ptr [ESI + 0x450],0x0
004d0c86  ff500c                    CALL dword ptr [EAX + 0xc]
004d0c89  8975d4                    MOV dword ptr [EBP + -0x2c],ESI
004d0c8c  8b45d8                    MOV EAX,dword ptr [EBP + -0x28]
004d0c8f  8bb56cffffff              MOV ESI,dword ptr [EBP + 0xffffff6c]
004d0c95  40                        INC EAX
004d0c96  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
004d0c9b  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
004d0ca3  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d0ca6  3bc6                      CMP EAX,ESI
004d0ca8  0f8c94feffff              JL 0x004d0b42
004d0cae  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d0cb5  807d8800                  CMP byte ptr [EBP + -0x78],0x0
004d0cb9  0f85bf010000              JNZ 0x004d0e7e
004d0cbf  c745fc0d000000            MOV dword ptr [EBP + -0x4],0xd
004d0cc6  8b558c                    MOV EDX,dword ptr [EBP + -0x74]
004d0cc9  e99b010000                JMP 0x004d0e69
004d0cce  83c0f8                    ADD EAX,-0x8
004d0cd1  be0f000000                MOV ESI,0xf
004d0cd6  99                        CDQ
004d0cd7  f7fe                      IDIV ESI
004d0cd9  85d2                      TEST EDX,EDX
004d0cdb  0f85a0010000              JNZ 0x004d0e81
004d0ce1  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004d0ce4  8d45b4                    LEA EAX,[EBP + -0x4c]
004d0ce7  52                        PUSH EDX
004d0ce8  52                        PUSH EDX
004d0ce9  6aff                      PUSH -0x1
004d0ceb  689d000000                PUSH 0x9d
004d0cf0  68e8030000                PUSH 0x3e8
004d0cf5  8d8918120000              LEA ECX,[ECX + 0x1218]
004d0cfb  50                        PUSH EAX
004d0cfc  e85fa2f4ff                CALL 0x0041af60
004d0d01  c745fc0e000000            MOV dword ptr [EBP + -0x4],0xe
004d0d08  33c9                      XOR ECX,ECX
004d0d0a  33d2                      XOR EDX,EDX
004d0d0c  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
004d0d0f  33f6                      XOR ESI,ESI
004d0d11  899578ffffff              MOV dword ptr [EBP + 0xffffff78],EDX
004d0d17  89b57cffffff              MOV dword ptr [EBP + 0xffffff7c],ESI
004d0d1d  894d80                    MOV dword ptr [EBP + -0x80],ECX
004d0d20  33c0                      XOR EAX,EAX
004d0d22  c645fc0f                  MOV byte ptr [EBP + -0x4],0xf
004d0d26  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d0d29  3945c0                    CMP dword ptr [EBP + -0x40],EAX
004d0d2c  0f86ba000000              JBE 0x004d0dec
004d0d32  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004d0d35  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004d0d40  8b0482                    MOV EAX,dword ptr [EDX + EAX*0x4]
004d0d43  8945a0                    MOV dword ptr [EBP + -0x60],EAX
004d0d46  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
004d0d4c  753f                      JNZ 0x004d0d8d
004d0d4e  83b8c403000000            CMP dword ptr [EAX + 0x3c4],0x0
004d0d55  7536                      JNZ 0x004d0d8d
004d0d57  83b85004000000            CMP dword ptr [EAX + 0x450],0x0
004d0d5e  752d                      JNZ 0x004d0d8d
004d0d60  3bf1                      CMP ESI,ECX
004d0d62  740d                      JZ 0x004d0d71
004d0d64  8906                      MOV dword ptr [ESI],EAX
004d0d66  83c604                    ADD ESI,0x4
004d0d69  89b57cffffff              MOV dword ptr [EBP + 0xffffff7c],ESI
004d0d6f  eb1c                      JMP 0x004d0d8d
004d0d71  8d45a0                    LEA EAX,[EBP + -0x60]
004d0d74  50                        PUSH EAX
004d0d75  56                        PUSH ESI
004d0d76  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004d0d7c  e80f78f5ff                CALL 0x00428590
004d0d81  8b4d80                    MOV ECX,dword ptr [EBP + -0x80]
004d0d84  8bb57cffffff              MOV ESI,dword ptr [EBP + 0xffffff7c]
004d0d8a  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004d0d8d  8b45d8                    MOV EAX,dword ptr [EBP + -0x28]
004d0d90  40                        INC EAX
004d0d91  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d0d94  3b45c0                    CMP EAX,dword ptr [EBP + -0x40]
004d0d97  72a7                      JC 0x004d0d40
004d0d99  8b9578ffffff              MOV EDX,dword ptr [EBP + 0xffffff78]
004d0d9f  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
004d0da2  8955a0                    MOV dword ptr [EBP + -0x60],EDX
004d0da5  3bd6                      CMP EDX,ESI
004d0da7  7443                      JZ 0x004d0dec
004d0da9  2bf2                      SUB ESI,EDX
004d0dab  c1fe02                    SAR ESI,0x2
004d0dae  85f6                      TEST ESI,ESI
004d0db0  740e                      JZ 0x004d0dc0
004d0db2  e8a9e12100                CALL 0x006eef60
004d0db7  33d2                      XOR EDX,EDX
004d0db9  f7f6                      DIV ESI
004d0dbb  8bf2                      MOV ESI,EDX
004d0dbd  8b55a0                    MOV EDX,dword ptr [EBP + -0x60]
004d0dc0  8b34b2                    MOV ESI,dword ptr [EDX + ESI*0x4]
004d0dc3  33c0                      XOR EAX,EAX
004d0dc5  8b7db8                    MOV EDI,dword ptr [EBP + -0x48]
004d0dc8  8b0c87                    MOV ECX,dword ptr [EDI + EAX*0x4]
004d0dcb  3bce                      CMP ECX,ESI
004d0dcd  7408                      JZ 0x004d0dd7
004d0dcf  39b1c4030000              CMP dword ptr [ECX + 0x3c4],ESI
004d0dd5  750a                      JNZ 0x004d0de1
004d0dd7  c7815004000001000000      MOV dword ptr [ECX + 0x450],0x1
004d0de1  40                        INC EAX
004d0de2  3b45c0                    CMP EAX,dword ptr [EBP + -0x40]
004d0de5  72e1                      JC 0x004d0dc8
004d0de7  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
004d0dea  eb10                      JMP 0x004d0dfc
004d0dec  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
004d0df2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d0dfc  c645fc0e                  MOV byte ptr [EBP + -0x4],0xe
004d0e00  85d2                      TEST EDX,EDX
004d0e02  744e                      JZ 0x004d0e52
004d0e04  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
004d0e07  2bc2                      SUB EAX,EDX
004d0e09  c1f802                    SAR EAX,0x2
004d0e0c  8d0c8500000000            LEA ECX,[EAX*0x4 + 0x0]
004d0e13  8bc2                      MOV EAX,EDX
004d0e15  81f900100000              CMP ECX,0x1000
004d0e1b  7210                      JC 0x004d0e2d
004d0e1d  8b52fc                    MOV EDX,dword ptr [EDX + -0x4]
004d0e20  83c123                    ADD ECX,0x23
004d0e23  2bc2                      SUB EAX,EDX
004d0e25  83c0fc                    ADD EAX,-0x4
004d0e28  83f81f                    CMP EAX,0x1f
004d0e2b  7772                      JA 0x004d0e9f
004d0e2d  51                        PUSH ECX
004d0e2e  52                        PUSH EDX
004d0e2f  e828e36100                CALL 0x00aef15c
004d0e34  83c408                    ADD ESP,0x8
004d0e37  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
004d0e41  c7857cffffff00000000      MOV dword ptr [EBP + 0xffffff7c],0x0
004d0e4b  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
004d0e52  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d0e59  807db400                  CMP byte ptr [EBP + -0x4c],0x0
004d0e5d  751f                      JNZ 0x004d0e7e
004d0e5f  c745fc10000000            MOV dword ptr [EBP + -0x4],0x10
004d0e66  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004d0e69  6a00                      PUSH 0x0
004d0e6b  6a00                      PUSH 0x0
004d0e6d  b101                      MOV CL,0x1
004d0e6f  e83c3a5900                CALL 0x00a648b0
004d0e74  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d0e7b  83c408                    ADD ESP,0x8
004d0e7e  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
004d0e81  ff8710040000              INC dword ptr [EDI + 0x410]
004d0e87  41                        INC ECX
004d0e88  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004d0e8e  894dc8                    MOV dword ptr [EBP + -0x38],ECX
004d0e91  3b4d9c                    CMP ECX,dword ptr [EBP + -0x64]
004d0e94  0f8d5d020000              JGE 0x004d10f7
004d0e9a  e997f9ffff                JMP 0x004d0836
004d0e9f  ff159488b100              CALL dword ptr [0x00b18894]
004d0ea5  83f802                    CMP EAX,0x2
004d0ea8  0f855e010000              JNZ 0x004d100c
004d0eae  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004d0eb6  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004d0ebe  2bc8                      SUB ECX,EAX
004d0ec0  018f10040000              ADD dword ptr [EDI + 0x410],ECX
004d0ec6  83bf100400001e            CMP dword ptr [EDI + 0x410],0x1e
004d0ecd  0f8c24020000              JL 0x004d10f7
004d0ed3  6a00                      PUSH 0x0
004d0ed5  68f002b600                PUSH 0xb602f0
004d0eda  8d4f48                    LEA ECX,[EDI + 0x48]
004d0edd  c787c40b000003000000      MOV dword ptr [EDI + 0xbc4],0x3
004d0ee7  e89494f3ff                CALL 0x0040a380
004d0eec  6aff                      PUSH -0x1
004d0eee  6828030000                PUSH 0x328
004d0ef3  8d45b4                    LEA EAX,[EBP + -0x4c]
004d0ef6  8bcf                      MOV ECX,EDI
004d0ef8  50                        PUSH EAX
004d0ef9  e862fd1f00                CALL 0x006d0c60
004d0efe  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
004d0f01  33c0                      XOR EAX,EAX
004d0f03  8945d0                    MOV dword ptr [EBP + -0x30],EAX
004d0f06  85c9                      TEST ECX,ECX
004d0f08  0f84f1000000              JZ 0x004d0fff
004d0f0e  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004d0f11  8b3482                    MOV ESI,dword ptr [EDX + EAX*0x4]
004d0f14  837e3000                  CMP dword ptr [ESI + 0x30],0x0
004d0f18  0f85d5000000              JNZ 0x004d0ff3
004d0f1e  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
004d0f24  0f85c9000000              JNZ 0x004d0ff3
004d0f2a  83be640b00000d            CMP dword ptr [ESI + 0xb64],0xd
004d0f31  0f85bc000000              JNZ 0x004d0ff3
004d0f37  6a00                      PUSH 0x0
004d0f39  8d45ac                    LEA EAX,[EBP + -0x54]
004d0f3c  c786640b000006000000      MOV dword ptr [ESI + 0xb64],0x6
004d0f46  50                        PUSH EAX
004d0f47  8bce                      MOV ECX,ESI
004d0f49  e822710800                CALL 0x00558070
004d0f4e  6a0c                      PUSH 0xc
004d0f50  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
004d0f56  8bce                      MOV ECX,ESI
004d0f58  50                        PUSH EAX
004d0f59  e812700800                CALL 0x00557f70
004d0f5e  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004d0f62  f30f5c4dac                SUBSS XMM1,dword ptr [EBP + -0x54]
004d0f67  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004d0f6c  f30f5c55b0                SUBSS XMM2,dword ptr [EBP + -0x50]
004d0f71  0f28c1                    MOVAPS XMM0,XMM1
004d0f74  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
004d0f79  f30f59c1                  MULSS XMM0,XMM1
004d0f7d  0f28ca                    MOVAPS XMM1,XMM2
004d0f80  f30f1155d4                MOVSS dword ptr [EBP + -0x2c],XMM2
004d0f85  f30f59ca                  MULSS XMM1,XMM2
004d0f89  f30f58c1                  ADDSS XMM0,XMM1
004d0f8d  e8be4af6ff                CALL 0x00435a50
004d0f92  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004d0f99  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
004d0f9e  761b                      JBE 0x004d0fbb
004d0fa0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004d0fa8  f30f5ec8                  DIVSS XMM1,XMM0
004d0fac  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004d0fb1  f30f59c1                  MULSS XMM0,XMM1
004d0fb5  f30f59d1                  MULSS XMM2,XMM1
004d0fb9  eb05                      JMP 0x004d0fc0
004d0fbb  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004d0fc0  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004d0fc8  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
004d0fcb  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004d0fd3  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
004d0fd6  f30f5845ac                ADDSS XMM0,dword ptr [EBP + -0x54]
004d0fdb  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004d0fde  f30f5855b0                ADDSS XMM2,dword ptr [EBP + -0x50]
004d0fe3  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
004d0feb  f30f119640030000          MOVSS dword ptr [ESI + 0x340],XMM2
004d0ff3  40                        INC EAX
004d0ff4  8945d0                    MOV dword ptr [EBP + -0x30],EAX
004d0ff7  3bc1                      CMP EAX,ECX
004d0ff9  0f8212ffffff              JC 0x004d0f11
004d0fff  8d4db4                    LEA ECX,[EBP + -0x4c]
004d1002  e8a965f4ff                CALL 0x004175b0
004d1007  e9eb000000                JMP 0x004d10f7
004d100c  68dcd2b100                PUSH 0xb1d2dc
004d1011  8d4f48                    LEA ECX,[EDI + 0x48]
004d1014  e817a0f3ff                CALL 0x0040b030
004d1019  84c0                      TEST AL,AL
004d101b  0f84bd000000              JZ 0x004d10de
004d1021  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004d1027  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004d1031  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004d1034  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
004d103a  e99f000000                JMP 0x004d10de
004d103f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004d1047  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004d104f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004d1057  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d105b  0f848c000000              JZ 0x004d10ed
004d1061  68dcd2b100                PUSH 0xb1d2dc
004d1066  8d4f78                    LEA ECX,[EDI + 0x78]
004d1069  e8629df3ff                CALL 0x0040add0
004d106e  84c0                      TEST AL,AL
004d1070  746c                      JZ 0x004d10de
004d1072  8b8f30030000              MOV ECX,dword ptr [EDI + 0x330]
004d1078  51                        PUSH ECX
004d1079  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1080  6a00                      PUSH 0x0
004d1082  6a02                      PUSH 0x2
004d1084  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004d108e  8b4124                    MOV EAX,dword ptr [ECX + 0x24]
004d1091  51                        PUSH ECX
004d1092  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
004d1098  8b4144                    MOV EAX,dword ptr [ECX + 0x44]
004d109b  8bcf                      MOV ECX,EDI
004d109d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d10a4  688d000000                PUSH 0x8d
004d10a9  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
004d10af  e8ec5a2000                CALL 0x006d6ba0
004d10b4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d10ba  6a06                      PUSH 0x6
004d10bc  e8af252300                CALL 0x00703670
004d10c1  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004d10c9  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004d10cf  50                        PUSH EAX
004d10d0  8d873c030000              LEA EAX,[EDI + 0x33c]
004d10d6  8bcf                      MOV ECX,EDI
004d10d8  50                        PUSH EAX
004d10d9  e8e2551e00                CALL 0x006b66c0
004d10de  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d10e2  7409                      JZ 0x004d10ed
004d10e4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004d10eb  750a                      JNZ 0x004d10f7
004d10ed  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d10f7  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
004d10fd  85d2                      TEST EDX,EDX
004d10ff  7e1a                      JLE 0x004d111b
004d1101  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004d1109  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004d1111  2bc8                      SUB ECX,EAX
004d1113  03ca                      ADD ECX,EDX
004d1115  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
004d111b  8b97a40b0000              MOV EDX,dword ptr [EDI + 0xba4]
004d1121  85d2                      TEST EDX,EDX
004d1123  7e1a                      JLE 0x004d113f
004d1125  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004d112d  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004d1135  2bc8                      SUB ECX,EAX
004d1137  03ca                      ADD ECX,EDX
004d1139  898fa40b0000              MOV dword ptr [EDI + 0xba4],ECX
004d113f  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004d1146  745b                      JZ 0x004d11a3
004d1148  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004d114b  33f6                      XOR ESI,ESI
004d114d  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
004d1153  764e                      JBE 0x004d11a3
004d1155  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004d1160  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004d1166  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
004d1169  8b81bc030000              MOV EAX,dword ptr [ECX + 0x3bc]
004d116f  3bc7                      CMP EAX,EDI
004d1171  740c                      JZ 0x004d117f
004d1173  85c0                      TEST EAX,EAX
004d1175  7420                      JZ 0x004d1197
004d1177  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
004d117d  7518                      JNZ 0x004d1197
004d117f  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004d1182  3de8030000                CMP EAX,0x3e8
004d1187  7538                      JNZ 0x004d11c1
004d1189  81792c9d000000            CMP dword ptr [ECX + 0x2c],0x9d
004d1190  7536                      JNZ 0x004d11c8
004d1192  8b01                      MOV EAX,dword ptr [ECX]
004d1194  ff5028                    CALL dword ptr [EAX + 0x28]
004d1197  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004d119a  46                        INC ESI
004d119b  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
004d11a1  72bd                      JC 0x004d1160
004d11a3  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004d11a6  64890d00000000            MOV dword ptr FS:[0x0],ECX
004d11ad  59                        POP ECX
004d11ae  5f                        POP EDI
004d11af  5e                        POP ESI
004d11b0  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004d11b3  33cd                      XOR ECX,EBP
004d11b5  e871df6100                CALL 0x00aef12b
004d11ba  8be5                      MOV ESP,EBP
004d11bc  5d                        POP EBP
004d11bd  8be3                      MOV ESP,EBX
004d11bf  5b                        POP EBX
004d11c0  c3                        RET
004d11c1  3d91030000                CMP EAX,0x391
004d11c6  74ca                      JZ 0x004d1192
004d11c8  3d28030000                CMP EAX,0x328
004d11cd  75c8                      JNZ 0x004d1197
004d11cf  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004d11d7  8d9544ffffff              LEA EDX,[EBP + 0xffffff44]
004d11dd  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004d11e5  8b01                      MOV EAX,dword ptr [ECX]
004d11e7  52                        PUSH EDX
004d11e8  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
004d11f2  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
004d11fc  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
004d1206  c78550ffffff00000000      MOV dword ptr [EBP + 0xffffff50],0x0
004d1210  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
004d1218  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004d1220  f30f118d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM1
004d1228  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004d1230  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
004d123a  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004d1244  ff5024                    CALL dword ptr [EAX + 0x24]
004d1247  e94bffffff                JMP 0x004d1197
