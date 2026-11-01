; J460 NPC AI 0x00a155c0 HELPER_Float_Interpolate
; types=9
; identities=9.*
; entry=00a155c0
00a155c0  84c9                      TEST CL,CL
00a155c2  7410                      JZ 0x00a155d4
00a155c4  f30f5f15e49fba00          MAXSS XMM2,dword ptr [0x00ba9fe4]
00a155cc  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
00a155d4  f30f5cc8                  SUBSS XMM1,XMM0
00a155d8  f30f59ca                  MULSS XMM1,XMM2
00a155dc  f30f58c1                  ADDSS XMM0,XMM1
00a155e0  c3                        RET
