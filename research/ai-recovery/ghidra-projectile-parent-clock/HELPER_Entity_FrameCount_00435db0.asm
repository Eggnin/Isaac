; J460 NPC AI 0x00435db0 HELPER_Entity_FrameCount
; types=9
; identities=9.*
; entry=00435db0
00435db0  f30f2c81a4030000          CVTTSS2SI EAX,dword ptr [ECX + 0x3a4]
00435db8  f30f2c89a0030000          CVTTSS2SI ECX,dword ptr [ECX + 0x3a0]
00435dc0  2bc1                      SUB EAX,ECX
00435dc2  c3                        RET
