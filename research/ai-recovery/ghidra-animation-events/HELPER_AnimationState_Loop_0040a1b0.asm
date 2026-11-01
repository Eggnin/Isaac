; J460 NPC AI 0x0040a1b0 HELPER_AnimationState_Loop
; types=0
; identities=*
; entry=0040a1b0
0040a1b0  56                        PUSH ESI
0040a1b1  8bf1                      MOV ESI,ECX
0040a1b3  c7461000000000            MOV dword ptr [ESI + 0x10],0x0
0040a1ba  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
0040a1c1  c7461c00000000            MOV dword ptr [ESI + 0x1c],0x0
0040a1c8  e8c3eaffff                CALL 0x00408c90
0040a1cd  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0040a1d0  33c9                      XOR ECX,ECX
0040a1d2  39481c                    CMP dword ptr [EAX + 0x1c],ECX
0040a1d5  761c                      JBE 0x0040a1f3
0040a1d7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0040a1e0  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
0040a1e3  c7048800000000            MOV dword ptr [EAX + ECX*0x4],0x0
0040a1ea  41                        INC ECX
0040a1eb  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0040a1ee  3b481c                    CMP ECX,dword ptr [EAX + 0x1c]
0040a1f1  72ed                      JC 0x0040a1e0
0040a1f3  33c9                      XOR ECX,ECX
0040a1f5  394824                    CMP dword ptr [EAX + 0x24],ECX
0040a1f8  7619                      JBE 0x0040a213
0040a1fa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0040a200  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0040a203  c7048800000000            MOV dword ptr [EAX + ECX*0x4],0x0
0040a20a  41                        INC ECX
0040a20b  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0040a20e  3b4824                    CMP ECX,dword ptr [EAX + 0x24]
0040a211  72ed                      JC 0x0040a200
0040a213  5e                        POP ESI
0040a214  c3                        RET
