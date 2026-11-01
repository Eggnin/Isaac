; J460 NPC AI 0x006a8190 HELPER_Entity_DamagePreparation
; types=4
; identities=4.*
; entry=006a8190
006a8190  c70100000000              MOV dword ptr [ECX],0x0
006a8196  8bc1                      MOV EAX,ECX
006a8198  c7410800000000            MOV dword ptr [ECX + 0x8],0x0
006a819f  c7410c00000000            MOV dword ptr [ECX + 0xc],0x0
006a81a6  c7411000000000            MOV dword ptr [ECX + 0x10],0x0
006a81ad  c7411400000000            MOV dword ptr [ECX + 0x14],0x0
006a81b4  c7411800000000            MOV dword ptr [ECX + 0x18],0x0
006a81bb  c7411c00000000            MOV dword ptr [ECX + 0x1c],0x0
006a81c2  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006a81ca  f30f114120                MOVSS dword ptr [ECX + 0x20],XMM0
006a81cf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006a81d7  f30f114124                MOVSS dword ptr [ECX + 0x24],XMM0
006a81dc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006a81e4  f30f114128                MOVSS dword ptr [ECX + 0x28],XMM0
006a81e9  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006a81f1  f30f11412c                MOVSS dword ptr [ECX + 0x2c],XMM0
006a81f6  c7413000000000            MOV dword ptr [ECX + 0x30],0x0
006a81fd  c7413400000000            MOV dword ptr [ECX + 0x34],0x0
006a8204  c3                        RET
