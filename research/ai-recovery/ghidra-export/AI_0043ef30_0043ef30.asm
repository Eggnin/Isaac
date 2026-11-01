; J460 NPC AI 0x0043ef30 AI_0043ef30
; types=79
; identities=79.0.0,79.1.0,79.10.0,79.11.0,79.12.0,79.2.0,79.20.0
; entry=0043ef30
0043ef30  56                        PUSH ESI
0043ef31  8bf1                      MOV ESI,ECX
0043ef33  c60601                    MOV byte ptr [ESI],0x1
0043ef36  c7460400000000            MOV dword ptr [ESI + 0x4],0x0
0043ef3d  c7460800000000            MOV dword ptr [ESI + 0x8],0x0
0043ef44  c7460c00000000            MOV dword ptr [ESI + 0xc],0x0
0043ef4b  c746100000803f            MOV dword ptr [ESI + 0x10],0x3f800000
0043ef52  c746140000803f            MOV dword ptr [ESI + 0x14],0x3f800000
0043ef59  e802002b00                CALL 0x006eef60
0043ef5e  c7461c0000803f            MOV dword ptr [ESI + 0x1c],0x3f800000
0043ef65  c746200ad7a33b            MOV dword ptr [ESI + 0x20],0x3ba3d70a
0043ef6c  c74624ae47813f            MOV dword ptr [ESI + 0x24],0x3f8147ae
0043ef73  660f6ec0                  MOVD XMM0,EAX
0043ef77  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0043ef7b  c1e81f                    SHR EAX,0x1f
0043ef7e  c746280000803f            MOV dword ptr [ESI + 0x28],0x3f800000
0043ef85  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0043ef8e  8bc6                      MOV EAX,ESI
0043ef90  660f5ac0                  CVTPD2PS XMM0,XMM0
0043ef94  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0043ef9c  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0043efa4  f30f114618                MOVSS dword ptr [ESI + 0x18],XMM0
0043efa9  c7462c0000803f            MOV dword ptr [ESI + 0x2c],0x3f800000
0043efb0  c746300000803f            MOV dword ptr [ESI + 0x30],0x3f800000
0043efb7  c746340000803f            MOV dword ptr [ESI + 0x34],0x3f800000
0043efbe  c746380000803f            MOV dword ptr [ESI + 0x38],0x3f800000
0043efc5  c7463c00000000            MOV dword ptr [ESI + 0x3c],0x0
0043efcc  c7464000000000            MOV dword ptr [ESI + 0x40],0x0
0043efd3  c7464400000000            MOV dword ptr [ESI + 0x44],0x0
0043efda  c7464800000000            MOV dword ptr [ESI + 0x48],0x0
0043efe1  c7464c00000000            MOV dword ptr [ESI + 0x4c],0x0
0043efe8  c7465000000000            MOV dword ptr [ESI + 0x50],0x0
0043efef  c7465400000000            MOV dword ptr [ESI + 0x54],0x0
0043eff6  c7465800000000            MOV dword ptr [ESI + 0x58],0x0
0043effd  c7465c00000000            MOV dword ptr [ESI + 0x5c],0x0
0043f004  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0043f00c  f30f114660                MOVSS dword ptr [ESI + 0x60],XMM0
0043f011  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0043f019  f30f114664                MOVSS dword ptr [ESI + 0x64],XMM0
0043f01e  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0043f026  f30f114668                MOVSS dword ptr [ESI + 0x68],XMM0
0043f02b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0043f033  f30f11466c                MOVSS dword ptr [ESI + 0x6c],XMM0
0043f038  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0043f040  f30f114670                MOVSS dword ptr [ESI + 0x70],XMM0
0043f045  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0043f04d  f30f114674                MOVSS dword ptr [ESI + 0x74],XMM0
0043f052  c7467800007ac4            MOV dword ptr [ESI + 0x78],0xc47a0000
0043f059  c7467c00000000            MOV dword ptr [ESI + 0x7c],0x0
0043f060  c7868000000000000000      MOV dword ptr [ESI + 0x80],0x0
0043f06a  c7868400000000000000      MOV dword ptr [ESI + 0x84],0x0
0043f074  c7868800000000000000      MOV dword ptr [ESI + 0x88],0x0
0043f07e  c7868c0000001e000000      MOV dword ptr [ESI + 0x8c],0x1e
0043f088  c7869000000000000000      MOV dword ptr [ESI + 0x90],0x0
0043f092  c7869400000000000000      MOV dword ptr [ESI + 0x94],0x0
0043f09c  c6869800000000            MOV byte ptr [ESI + 0x98],0x0
0043f0a3  c7869c000000000080bf      MOV dword ptr [ESI + 0x9c],0xbf800000
0043f0ad  c786a000000000000000      MOV dword ptr [ESI + 0xa0],0x0
0043f0b7  c686a400000000            MOV byte ptr [ESI + 0xa4],0x0
0043f0be  5e                        POP ESI
0043f0bf  c3                        RET
