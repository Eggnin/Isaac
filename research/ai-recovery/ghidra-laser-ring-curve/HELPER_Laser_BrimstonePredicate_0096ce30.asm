; J460 NPC AI 0x0096ce30 HELPER_Laser_BrimstonePredicate
; types=7
; identities=7.*
; entry=0096ce30
0096ce30  8b412c                    MOV EAX,dword ptr [ECX + 0x2c]
0096ce33  48                        DEC EAX
0096ce34  83f80e                    CMP EAX,0xe
0096ce37  7711                      JA 0x0096ce4a
0096ce39  0fb68058ce9600            MOVZX EAX,byte ptr [EAX + 0x96ce58]
0096ce40  ff248550ce9600            JMP dword ptr [EAX*0x4 + 0x96ce50]
0096ce47  b001                      MOV AL,0x1
0096ce49  c3                        RET
0096ce4a  32c0                      XOR AL,AL
0096ce4c  c3                        RET
