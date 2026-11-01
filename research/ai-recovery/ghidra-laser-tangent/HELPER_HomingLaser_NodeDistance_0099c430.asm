; J460 NPC AI 0x0099c430 HELPER_HomingLaser_NodeDistance
; types=7
; identities=7.*
; entry=0099c430
0099c430  55                        PUSH EBP
0099c431  8bec                      MOV EBP,ESP
0099c433  83e4f8                    AND ESP,0xfffffff8
0099c436  83ec20                    SUB ESP,0x20
0099c439  56                        PUSH ESI
0099c43a  8bf2                      MOV ESI,EDX
0099c43c  f30f1035a4acba00          MOVSS XMM6,dword ptr [0x00baaca4]
0099c444  8b5508                    MOV EDX,dword ptr [EBP + 0x8]
0099c447  0f57c9                    XORPS XMM1,XMM1
0099c44a  57                        PUSH EDI
0099c44b  0f57ff                    XORPS XMM7,XMM7
0099c44e  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
0099c454  f30f106e10                MOVSS XMM5,dword ptr [ESI + 0x10]
0099c459  bf01000000                MOV EDI,0x1
0099c45e  f30f104208                MOVSS XMM0,dword ptr [EDX + 0x8]
0099c463  f30f105614                MOVSS XMM2,dword ptr [ESI + 0x14]
0099c468  f30f59e9                  MULSS XMM5,XMM1
0099c46c  f30f59c1                  MULSS XMM0,XMM1
0099c470  f30f582e                  ADDSS XMM5,dword ptr [ESI]
0099c474  f30f59d1                  MULSS XMM2,XMM1
0099c478  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
0099c47d  f30f58e8                  ADDSS XMM5,XMM0
0099c481  f30f1002                  MOVSS XMM0,dword ptr [EDX]
0099c485  f30f59c1                  MULSS XMM0,XMM1
0099c489  f30f58e8                  ADDSS XMM5,XMM0
0099c48d  f30f10420c                MOVSS XMM0,dword ptr [EDX + 0xc]
0099c492  f30f59c1                  MULSS XMM0,XMM1
0099c496  f30f58d0                  ADDSS XMM2,XMM0
0099c49a  f30f116c2410              MOVSS dword ptr [ESP + 0x10],XMM5
0099c4a0  f30f104204                MOVSS XMM0,dword ptr [EDX + 0x4]
0099c4a5  f30f59c1                  MULSS XMM0,XMM1
0099c4a9  f30f58d0                  ADDSS XMM2,XMM0
0099c4ad  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
0099c4b3  0f1f4000                  NOP dword ptr [EAX]
0099c4b7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0099c4c0  0f57c0                    XORPS XMM0,XMM0
0099c4c3  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0099c4cb  f20f2ac7                  CVTSI2SD XMM0,EDI
0099c4cf  8bc7                      MOV EAX,EDI
0099c4d1  c1e81f                    SHR EAX,0x1f
0099c4d4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099c4dd  660f5ac0                  CVTPD2PS XMM0,XMM0
0099c4e1  f30f5e0584a7ba00          DIVSS XMM0,dword ptr [0x00baa784]
0099c4e9  f30f5ce0                  SUBSS XMM4,XMM0
0099c4ed  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0099c4f3  0f28d8                    MOVAPS XMM3,XMM0
0099c4f6  f30f59d8                  MULSS XMM3,XMM0
0099c4fa  0f28d4                    MOVAPS XMM2,XMM4
0099c4fd  f30f59d4                  MULSS XMM2,XMM4
0099c501  0f28ca                    MOVAPS XMM1,XMM2
0099c504  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0099c50c  f30f59cc                  MULSS XMM1,XMM4
0099c510  f30f5925fca6ba00          MULSS XMM4,dword ptr [0x00baa6fc]
0099c518  f30f59d0                  MULSS XMM2,XMM0
0099c51c  f30f59e3                  MULSS XMM4,XMM3
0099c520  f30f59d8                  MULSS XMM3,XMM0
0099c524  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0099c528  f30f59c1                  MULSS XMM0,XMM1
0099c52c  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0099c532  f30f104610                MOVSS XMM0,dword ptr [ESI + 0x10]
0099c537  f30f106c240c              MOVSS XMM5,dword ptr [ESP + 0xc]
0099c53d  f30f59c2                  MULSS XMM0,XMM2
0099c541  f30f58e8                  ADDSS XMM5,XMM0
0099c545  f30f104208                MOVSS XMM0,dword ptr [EDX + 0x8]
0099c54a  f30f59c4                  MULSS XMM0,XMM4
0099c54e  f30f58e8                  ADDSS XMM5,XMM0
0099c552  f30f1002                  MOVSS XMM0,dword ptr [EDX]
0099c556  f30f59c3                  MULSS XMM0,XMM3
0099c55a  f30f58e8                  ADDSS XMM5,XMM0
0099c55e  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
0099c563  f30f59c2                  MULSS XMM0,XMM2
0099c567  f30f116c240c              MOVSS dword ptr [ESP + 0xc],XMM5
0099c56d  f30f106e04                MOVSS XMM5,dword ptr [ESI + 0x4]
0099c572  f30f59e9                  MULSS XMM5,XMM1
0099c576  f30f58e8                  ADDSS XMM5,XMM0
0099c57a  f30f10420c                MOVSS XMM0,dword ptr [EDX + 0xc]
0099c57f  f30f59c4                  MULSS XMM0,XMM4
0099c583  f30f1064240c              MOVSS XMM4,dword ptr [ESP + 0xc]
0099c589  f30f5c642410              SUBSS XMM4,dword ptr [ESP + 0x10]
0099c58f  f30f58e8                  ADDSS XMM5,XMM0
0099c593  f30f104204                MOVSS XMM0,dword ptr [EDX + 0x4]
0099c598  f30f59c3                  MULSS XMM0,XMM3
0099c59c  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
0099c5a1  f30f5c5c2418              SUBSS XMM3,dword ptr [ESP + 0x18]
0099c5a7  f30f58e8                  ADDSS XMM5,XMM0
0099c5ab  0f28c4                    MOVAPS XMM0,XMM4
0099c5ae  f30f59c4                  MULSS XMM0,XMM4
0099c5b2  f30f116c2414              MOVSS dword ptr [ESP + 0x14],XMM5
0099c5b8  f30f5c6c2418              SUBSS XMM5,dword ptr [ESP + 0x18]
0099c5be  0f28cd                    MOVAPS XMM1,XMM5
0099c5c1  f30f59cd                  MULSS XMM1,XMM5
0099c5c5  f30f58c8                  ADDSS XMM1,XMM0
0099c5c9  0f57c0                    XORPS XMM0,XMM0
0099c5cc  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
0099c5d2  f30f1054241c              MOVSS XMM2,dword ptr [ESP + 0x1c]
0099c5d8  f30f1009                  MOVSS XMM1,dword ptr [ECX]
0099c5dc  f30f5c4c2410              SUBSS XMM1,dword ptr [ESP + 0x10]
0099c5e2  0f2ed0                    UCOMISS XMM2,XMM0
0099c5e5  9f                        LAHF
0099c5e6  f6c444                    TEST AH,0x44
0099c5e9  7b20                      JNP 0x0099c60b
0099c5eb  0f28c5                    MOVAPS XMM0,XMM5
0099c5ee  0f28d4                    MOVAPS XMM2,XMM4
0099c5f1  f30f59d1                  MULSS XMM2,XMM1
0099c5f5  f30f59c3                  MULSS XMM0,XMM3
0099c5f9  f30f58d0                  ADDSS XMM2,XMM0
0099c5fd  0f57c0                    XORPS XMM0,XMM0
0099c600  f30f5e54241c              DIVSS XMM2,dword ptr [ESP + 0x1c]
0099c606  0f2fc2                    COMISS XMM0,XMM2
0099c609  7619                      JBE 0x0099c624
0099c60b  f30f59db                  MULSS XMM3,XMM3
0099c60f  0f57d2                    XORPS XMM2,XMM2
0099c612  f30f59c9                  MULSS XMM1,XMM1
0099c616  f30f58cb                  ADDSS XMM1,XMM3
0099c61a  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0099c622  eb4f                      JMP 0x0099c673
0099c624  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0099c62c  0f2fd3                    COMISS XMM2,XMM3
0099c62f  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0099c633  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
0099c638  7611                      JBE 0x0099c64b
0099c63a  f30f5c44240c              SUBSS XMM0,dword ptr [ESP + 0xc]
0099c640  f30f5c4c2414              SUBSS XMM1,dword ptr [ESP + 0x14]
0099c646  0f28d3                    MOVAPS XMM2,XMM3
0099c649  eb1c                      JMP 0x0099c667
0099c64b  f30f59e2                  MULSS XMM4,XMM2
0099c64f  f30f59ea                  MULSS XMM5,XMM2
0099c653  f30f58642410              ADDSS XMM4,dword ptr [ESP + 0x10]
0099c659  f30f586c2418              ADDSS XMM5,dword ptr [ESP + 0x18]
0099c65f  f30f5cc4                  SUBSS XMM0,XMM4
0099c663  f30f5ccd                  SUBSS XMM1,XMM5
0099c667  f30f59c0                  MULSS XMM0,XMM0
0099c66b  f30f59c9                  MULSS XMM1,XMM1
0099c66f  f30f58c8                  ADDSS XMM1,XMM0
0099c673  0f2ff1                    COMISS XMM6,XMM1
0099c676  0f86c9000000              JBE 0x0099c745
0099c67c  f30f107c2420              MOVSS XMM7,dword ptr [ESP + 0x20]
0099c682  0f28f3                    MOVAPS XMM6,XMM3
0099c685  f30f5c7c2424              SUBSS XMM7,dword ptr [ESP + 0x24]
0099c68b  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0099c68f  f30f104610                MOVSS XMM0,dword ptr [ESI + 0x10]
0099c694  f30f59fa                  MULSS XMM7,XMM2
0099c698  f30f1011                  MOVSS XMM2,dword ptr [ECX]
0099c69c  f30f587c2424              ADDSS XMM7,dword ptr [ESP + 0x24]
0099c6a2  f30f5cf7                  SUBSS XMM6,XMM7
0099c6a6  0f28ef                    MOVAPS XMM5,XMM7
0099c6a9  f30f59ef                  MULSS XMM5,XMM7
0099c6ad  0f28e6                    MOVAPS XMM4,XMM6
0099c6b0  f30f59e6                  MULSS XMM4,XMM6
0099c6b4  0f28dc                    MOVAPS XMM3,XMM4
0099c6b7  f30f5925fca6ba00          MULSS XMM4,dword ptr [0x00baa6fc]
0099c6bf  f30f59de                  MULSS XMM3,XMM6
0099c6c3  f30f5935fca6ba00          MULSS XMM6,dword ptr [0x00baa6fc]
0099c6cb  f30f59cb                  MULSS XMM1,XMM3
0099c6cf  f30f59e7                  MULSS XMM4,XMM7
0099c6d3  f30f59f5                  MULSS XMM6,XMM5
0099c6d7  f30f59c4                  MULSS XMM0,XMM4
0099c6db  f30f59ef                  MULSS XMM5,XMM7
0099c6df  f30f58c8                  ADDSS XMM1,XMM0
0099c6e3  f30f104208                MOVSS XMM0,dword ptr [EDX + 0x8]
0099c6e8  f30f59c6                  MULSS XMM0,XMM6
0099c6ec  f30f58c8                  ADDSS XMM1,XMM0
0099c6f0  f30f1002                  MOVSS XMM0,dword ptr [EDX]
0099c6f4  f30f59c5                  MULSS XMM0,XMM5
0099c6f8  f30f58c8                  ADDSS XMM1,XMM0
0099c6fc  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
0099c701  f30f59c4                  MULSS XMM0,XMM4
0099c705  f30f5cd1                  SUBSS XMM2,XMM1
0099c709  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0099c70e  f30f59cb                  MULSS XMM1,XMM3
0099c712  f30f58c8                  ADDSS XMM1,XMM0
0099c716  f30f59d2                  MULSS XMM2,XMM2
0099c71a  f30f10420c                MOVSS XMM0,dword ptr [EDX + 0xc]
0099c71f  f30f59c6                  MULSS XMM0,XMM6
0099c723  f30f107104                MOVSS XMM6,dword ptr [ECX + 0x4]
0099c728  f30f58c8                  ADDSS XMM1,XMM0
0099c72c  f30f104204                MOVSS XMM0,dword ptr [EDX + 0x4]
0099c731  f30f59c5                  MULSS XMM0,XMM5
0099c735  f30f58c8                  ADDSS XMM1,XMM0
0099c739  f30f5cf1                  SUBSS XMM6,XMM1
0099c73d  f30f59f6                  MULSS XMM6,XMM6
0099c741  f30f58f2                  ADDSS XMM6,XMM2
0099c745  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0099c74b  47                        INC EDI
0099c74c  f30f106c240c              MOVSS XMM5,dword ptr [ESP + 0xc]
0099c752  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0099c758  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0099c75e  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0099c764  f30f116c2410              MOVSS dword ptr [ESP + 0x10],XMM5
0099c76a  83ff05                    CMP EDI,0x5
0099c76d  0f864dfdffff              JBE 0x0099c4c0
0099c773  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
0099c776  0f28c6                    MOVAPS XMM0,XMM6
0099c779  85c0                      TEST EAX,EAX
0099c77b  7404                      JZ 0x0099c781
0099c77d  f30f1138                  MOVSS dword ptr [EAX],XMM7
0099c781  5f                        POP EDI
0099c782  5e                        POP ESI
0099c783  8be5                      MOV ESP,EBP
0099c785  5d                        POP EBP
0099c786  c3                        RET
