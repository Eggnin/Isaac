; J460 NPC AI 0x006acb00 HELPER_Entity_Remove
; types=4
; identities=4.*
; entry=006acb00
006acb00  51                        PUSH ECX
006acb01  56                        PUSH ESI
006acb02  8bf1                      MOV ESI,ECX
006acb04  57                        PUSH EDI
006acb05  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006acb0c  c6867201000000            MOV byte ptr [ESI + 0x172],0x0
006acb13  7507                      JNZ 0x006acb1c
006acb15  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
006acb1c  56                        PUSH ESI
006acb1d  e83e951b00                CALL 0x00866060
006acb22  8bbe08040000              MOV EDI,dword ptr [ESI + 0x408]
006acb28  85ff                      TEST EDI,EDI
006acb2a  7428                      JZ 0x006acb54
006acb2c  ff7704                    PUSH dword ptr [EDI + 0x4]
006acb2f  68d8b9f0ff                PUSH 0xfff0b9d8
006acb34  ff37                      PUSH dword ptr [EDI]
006acb36  ff151c83b100              CALL dword ptr [0x00b1831c]
006acb3c  83c40c                    ADD ESP,0xc
006acb3f  6a08                      PUSH 0x8
006acb41  57                        PUSH EDI
006acb42  e815264400                CALL 0x00aef15c
006acb47  83c408                    ADD ESP,0x8
006acb4a  c7860804000000000000      MOV dword ptr [ESI + 0x408],0x0
006acb54  5f                        POP EDI
006acb55  5e                        POP ESI
006acb56  59                        POP ECX
006acb57  c3                        RET
