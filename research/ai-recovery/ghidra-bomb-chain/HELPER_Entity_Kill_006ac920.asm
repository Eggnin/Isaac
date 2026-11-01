; J460 NPC AI 0x006ac920 HELPER_Entity_Kill
; types=4
; identities=4.*
; entry=006ac920
006ac920  55                        PUSH EBP
006ac921  8bec                      MOV EBP,ESP
006ac923  83e4f8                    AND ESP,0xfffffff8
006ac926  83ec30                    SUB ESP,0x30
006ac929  a1b493bf00                MOV EAX,[0x00bf93b4]
006ac92e  33c4                      XOR EAX,ESP
006ac930  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
006ac934  56                        PUSH ESI
006ac935  8bf1                      MOV ESI,ECX
006ac937  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
006ac93a  57                        PUSH EDI
006ac93b  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006ac942  0f859e010000              JNZ 0x006acae6
006ac948  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
006ac94f  8b4924                    MOV ECX,dword ptr [ECX + 0x24]
006ac952  85c9                      TEST ECX,ECX
006ac954  0f846c010000              JZ 0x006acac6
006ac95a  e8e1c7ffff                CALL 0x006a9140
006ac95f  8bf8                      MOV EDI,EAX
006ac961  85ff                      TEST EDI,EDI
006ac963  0f845d010000              JZ 0x006acac6
006ac969  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
006ac96c  85c9                      TEST ECX,ECX
006ac96e  0f8452010000              JZ 0x006acac6
006ac974  83f901                    CMP ECX,0x1
006ac977  0f8449010000              JZ 0x006acac6
006ac97d  83f902                    CMP ECX,0x2
006ac980  0f8440010000              JZ 0x006acac6
006ac986  83f903                    CMP ECX,0x3
006ac989  0f8437010000              JZ 0x006acac6
006ac98f  83f904                    CMP ECX,0x4
006ac992  0f842e010000              JZ 0x006acac6
006ac998  83f905                    CMP ECX,0x5
006ac99b  0f8425010000              JZ 0x006acac6
006ac9a1  83f906                    CMP ECX,0x6
006ac9a4  0f841c010000              JZ 0x006acac6
006ac9aa  83f907                    CMP ECX,0x7
006ac9ad  0f8413010000              JZ 0x006acac6
006ac9b3  83f908                    CMP ECX,0x8
006ac9b6  0f840a010000              JZ 0x006acac6
006ac9bc  83f909                    CMP ECX,0x9
006ac9bf  0f8401010000              JZ 0x006acac6
006ac9c5  83f921                    CMP ECX,0x21
006ac9c8  0f8480000000              JZ 0x006aca4e
006ac9ce  81f9e8030000              CMP ECX,0x3e8
006ac9d4  0f84ec000000              JZ 0x006acac6
006ac9da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ac9e0  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006ac9e8  57                        PUSH EDI
006ac9e9  6a11                      PUSH 0x11
006ac9eb  8d89e0bb0100              LEA ECX,[ECX + 0x1bbe0]
006ac9f1  e8ca90d7ff                CALL 0x00425ac0
006ac9f6  8b06                      MOV EAX,dword ptr [ESI]
006ac9f8  8bce                      MOV ECX,ESI
006ac9fa  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006ac9fd  ffd0                      CALL EAX
006ac9ff  84c0                      TEST AL,AL
006aca01  0f84bf000000              JZ 0x006acac6
006aca07  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aca0d  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006aca15  57                        PUSH EDI
006aca16  6a14                      PUSH 0x14
006aca18  8d89e0bb0100              LEA ECX,[ECX + 0x1bbe0]
006aca1e  e89d90d7ff                CALL 0x00425ac0
006aca23  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
006aca2a  0f8496000000              JZ 0x006acac6
006aca30  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aca36  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006aca3e  57                        PUSH EDI
006aca3f  6a15                      PUSH 0x15
006aca41  8d89e0bb0100              LEA ECX,[ECX + 0x1bbe0]
006aca47  e87490d7ff                CALL 0x00425ac0
006aca4c  eb78                      JMP 0x006acac6
006aca4e  6a00                      PUSH 0x0
006aca50  68a4010000                PUSH 0x1a4
006aca55  8bcf                      MOV ECX,EDI
006aca57  e8843c0c00                CALL 0x007706e0
006aca5c  84c0                      TEST AL,AL
006aca5e  7466                      JZ 0x006acac6
006aca60  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
006aca63  85c0                      TEST EAX,EAX
006aca65  740a                      JZ 0x006aca71
006aca67  83f801                    CMP EAX,0x1
006aca6a  7405                      JZ 0x006aca71
006aca6c  83f80a                    CMP EAX,0xa
006aca6f  7555                      JNZ 0x006acac6
006aca71  8d4c2408                  LEA ECX,[ESP + 0x8]
006aca75  e8f6a6d5ff                CALL 0x00407170
006aca7a  6a00                      PUSH 0x0
006aca7c  6a00                      PUSH 0x0
006aca7e  6a04                      PUSH 0x4
006aca80  6a01                      PUSH 0x1
006aca82  51                        PUSH ECX
006aca83  c704240000803f            MOV dword ptr [ESP],0x3f800000
006aca8a  57                        PUSH EDI
006aca8b  50                        PUSH EAX
006aca8c  83ec10                    SUB ESP,0x10
006aca8f  8bc4                      MOV EAX,ESP
006aca91  51                        PUSH ECX
006aca92  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aca98  c70000000000              MOV dword ptr [EAX],0x0
006aca9e  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
006acaa5  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
006acaac  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
006acab3  8d863c030000              LEA EAX,[ESI + 0x33c]
006acab9  c704240000a041            MOV dword ptr [ESP],0x41a00000
006acac0  50                        PUSH EAX
006acac1  e89a350500                CALL 0x00700060
006acac6  8b06                      MOV EAX,dword ptr [ESI]
006acac8  8bce                      MOV ECX,ESI
006acaca  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006acacd  ffd0                      CALL EAX
006acacf  84c0                      TEST AL,AL
006acad1  750d                      JNZ 0x006acae0
006acad3  837e2803                  CMP dword ptr [ESI + 0x28],0x3
006acad7  7407                      JZ 0x006acae0
006acad9  8bce                      MOV ECX,ESI
006acadb  e8e07a0000                CALL 0x006b45c0
006acae0  56                        PUSH ESI
006acae1  e85a961b00                CALL 0x00866140
006acae6  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
006acaea  5f                        POP EDI
006acaeb  5e                        POP ESI
006acaec  33cc                      XOR ECX,ESP
006acaee  e838264400                CALL 0x00aef12b
006acaf3  8be5                      MOV ESP,EBP
006acaf5  5d                        POP EBP
006acaf6  c20400                    RET 0x4
