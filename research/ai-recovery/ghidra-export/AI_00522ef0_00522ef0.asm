; J460 NPC AI 0x00522ef0 AI_00522ef0
; types=60
; identities=60.0.0,60.1.0,60.2.0
; entry=00522ef0
00522ef0  55                        PUSH EBP
00522ef1  8bec                      MOV EBP,ESP
00522ef3  83e4f8                    AND ESP,0xfffffff8
00522ef6  83ec60                    SUB ESP,0x60
00522ef9  a1b493bf00                MOV EAX,[0x00bf93b4]
00522efe  33c4                      XOR EAX,ESP
00522f00  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
00522f04  a17816c700                MOV EAX,[0x00c71678]
00522f09  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00522f11  56                        PUSH ESI
00522f12  57                        PUSH EDI
00522f13  8bf9                      MOV EDI,ECX
00522f15  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00522f19  0f85d3070000              JNZ 0x005236f2
00522f1f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00522f27  f30f5cc1                  SUBSS XMM0,XMM1
00522f2b  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00522f33  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00522f39  f30f5ec1                  DIVSS XMM0,XMM1
00522f3d  f30f58c2                  ADDSS XMM0,XMM2
00522f41  f30f2cc8                  CVTTSS2SI ECX,XMM0
00522f45  85c9                      TEST ECX,ECX
00522f47  7833                      JS 0x00522f7c
00522f49  8b720c                    MOV ESI,dword ptr [EDX + 0xc]
00522f4c  3bce                      CMP ECX,ESI
00522f4e  7d2c                      JGE 0x00522f7c
00522f50  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00522f58  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00522f60  f30f5ec1                  DIVSS XMM0,XMM1
00522f64  f30f58c2                  ADDSS XMM0,XMM2
00522f68  f30f2cc0                  CVTTSS2SI EAX,XMM0
00522f6c  85c0                      TEST EAX,EAX
00522f6e  780c                      JS 0x00522f7c
00522f70  3b4210                    CMP EAX,dword ptr [EDX + 0x10]
00522f73  7d07                      JGE 0x00522f7c
00522f75  0faff0                    IMUL ESI,EAX
00522f78  03f1                      ADD ESI,ECX
00522f7a  eb03                      JMP 0x00522f7f
00522f7c  83ceff                    OR ESI,0xffffffff
00522f7f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00522f85  89742414                  MOV dword ptr [ESP + 0x14],ESI
00522f89  85c0                      TEST EAX,EAX
00522f8b  0f84f8050000              JZ 0x00523589
00522f91  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00522f99  8bcf                      MOV ECX,EDI
00522f9b  6a00                      PUSH 0x0
00522f9d  e87e5b1b00                CALL 0x006d8b20
00522fa2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00522fa8  85c0                      TEST EAX,EAX
00522faa  0f84d9050000              JZ 0x00523589
00522fb0  83f803                    CMP EAX,0x3
00522fb3  0f8499040000              JZ 0x00523452
00522fb9  83f808                    CMP EAX,0x8
00522fbc  0f8518050000              JNZ 0x005234da
00522fc2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00522fc6  0f8426040000              JZ 0x005233f2
00522fcc  68dcd2b100                PUSH 0xb1d2dc
00522fd1  8d4f78                    LEA ECX,[EDI + 0x78]
00522fd4  e8f77deeff                CALL 0x0040add0
00522fd9  84c0                      TEST AL,AL
00522fdb  0f8411040000              JZ 0x005233f2
00522fe1  51                        PUSH ECX
00522fe2  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
00522fe9  6a00                      PUSH 0x0
00522feb  6a02                      PUSH 0x2
00522fed  51                        PUSH ECX
00522fee  c704240000003f            MOV dword ptr [ESP],0x3f000000
00522ff5  8bcf                      MOV ECX,EDI
00522ff7  6810010000                PUSH 0x110
00522ffc  e89f3b1b00                CALL 0x006d6ba0
00523001  8bcf                      MOV ECX,EDI
00523003  e838b81900                CALL 0x006be840
00523008  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
0052300e  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
00523016  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
0052301e  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
00523024  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
0052302c  f30f11642410              MOVSS dword ptr [ESP + 0x10],XMM4
00523032  85c9                      TEST ECX,ECX
00523034  7539                      JNZ 0x0052306f
00523036  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
0052303e  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00523046  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0052304e  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00523056  f30f58cb                  ADDSS XMM1,XMM3
0052305a  f30f58d4                  ADDSS XMM2,XMM4
0052305e  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00523064  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
0052306a  e962020000                JMP 0x005232d1
0052306f  83f901                    CMP ECX,0x1
00523072  0f85b4000000              JNZ 0x0052312c
00523078  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
00523080  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00523086  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0052308e  8d442430                  LEA EAX,[ESP + 0x30]
00523092  50                        PUSH EAX
00523093  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00523099  e8d2bf1500                CALL 0x0067f070
0052309e  83c404                    ADD ESP,0x4
005230a1  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005230a5  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
005230ab  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005230b0  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
005230b6  e8a5be1c00                CALL 0x006eef60
005230bb  f30f105c2420              MOVSS XMM3,dword ptr [ESP + 0x20]
005230c1  f30f591dd0a9ba00          MULSS XMM3,dword ptr [0x00baa9d0]
005230c9  f30f1064242c              MOVSS XMM4,dword ptr [ESP + 0x2c]
005230cf  f30f592554a8ba00          MULSS XMM4,dword ptr [0x00baa854]
005230d7  660f6ec0                  MOVD XMM0,EAX
005230db  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005230df  c1e81f                    SHR EAX,0x1f
005230e2  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
005230e8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005230f1  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
005230f9  660f5ad0                  CVTPD2PS XMM2,XMM0
005230fd  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00523105  f30f59da                  MULSS XMM3,XMM2
00523109  f30f58dc                  ADDSS XMM3,XMM4
0052310d  f30f585c240c              ADDSS XMM3,dword ptr [ESP + 0xc]
00523113  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
00523119  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
0052311f  f30f591dd0a9ba00          MULSS XMM3,dword ptr [0x00baa9d0]
00523127  e989010000                JMP 0x005232b5
0052312c  83f902                    CMP ECX,0x2
0052312f  0f85c8000000              JNZ 0x005231fd
00523135  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0052313d  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523143  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0052314b  8d442430                  LEA EAX,[ESP + 0x30]
0052314f  50                        PUSH EAX
00523150  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523156  e815bf1500                CALL 0x0067f070
0052315b  83c404                    ADD ESP,0x4
0052315e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00523162  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00523168  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052316d  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00523173  e8e8bd1c00                CALL 0x006eef60
00523178  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
0052317e  f30f59157ca9ba00          MULSS XMM2,dword ptr [0x00baa97c]
00523186  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
0052318e  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
00523194  660f6ec0                  MOVD XMM0,EAX
00523198  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052319c  c1e81f                    SHR EAX,0x1f
0052319f  f30f59dd                  MULSS XMM3,XMM5
005231a3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005231ac  660f5ac8                  CVTPD2PS XMM1,XMM0
005231b0  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
005231b6  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005231be  f30f59c5                  MULSS XMM0,XMM5
005231c2  f30f59d1                  MULSS XMM2,XMM1
005231c6  f30f58d3                  ADDSS XMM2,XMM3
005231ca  f30f5854240c              ADDSS XMM2,dword ptr [ESP + 0xc]
005231d0  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
005231d6  f30f1054242c              MOVSS XMM2,dword ptr [ESP + 0x2c]
005231dc  f30f59157ca9ba00          MULSS XMM2,dword ptr [0x00baa97c]
005231e4  f30f59d1                  MULSS XMM2,XMM1
005231e8  f30f58d0                  ADDSS XMM2,XMM0
005231ec  f30f58542410              ADDSS XMM2,dword ptr [ESP + 0x10]
005231f2  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
005231f8  e9d4000000                JMP 0x005232d1
005231fd  83f903                    CMP ECX,0x3
00523200  0f85cb000000              JNZ 0x005232d1
00523206  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0052320e  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523214  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0052321c  8d442430                  LEA EAX,[ESP + 0x30]
00523220  50                        PUSH EAX
00523221  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523227  e844be1500                CALL 0x0067f070
0052322c  83c404                    ADD ESP,0x4
0052322f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00523233  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00523239  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052323e  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00523244  e817bd1c00                CALL 0x006eef60
00523249  f30f105c2418              MOVSS XMM3,dword ptr [ESP + 0x18]
0052324f  f30f591d24a9ba00          MULSS XMM3,dword ptr [0x00baa924]
00523257  f30f10642424              MOVSS XMM4,dword ptr [ESP + 0x24]
0052325d  f30f5925d0a8ba00          MULSS XMM4,dword ptr [0x00baa8d0]
00523265  660f6ec0                  MOVD XMM0,EAX
00523269  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052326d  c1e81f                    SHR EAX,0x1f
00523270  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
00523276  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052327f  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
00523287  660f5ad0                  CVTPD2PS XMM2,XMM0
0052328b  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00523293  f30f59da                  MULSS XMM3,XMM2
00523297  f30f58dc                  ADDSS XMM3,XMM4
0052329b  f30f585c240c              ADDSS XMM3,dword ptr [ESP + 0xc]
005232a1  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
005232a7  f30f105c242c              MOVSS XMM3,dword ptr [ESP + 0x2c]
005232ad  f30f591d24a9ba00          MULSS XMM3,dword ptr [0x00baa924]
005232b5  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
005232bd  f30f59da                  MULSS XMM3,XMM2
005232c1  f30f58d9                  ADDSS XMM3,XMM1
005232c5  f30f585c2410              ADDSS XMM3,dword ptr [ESP + 0x10]
005232cb  f30f115c2410              MOVSS dword ptr [ESP + 0x10],XMM3
005232d1  8b357816c700              MOV ESI,dword ptr [0x00c71678]
005232d7  8d44240c                  LEA EAX,[ESP + 0xc]
005232db  83ec0c                    SUB ESP,0xc
005232de  0f28dd                    MOVAPS XMM3,XMM5
005232e1  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
005232e7  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
005232ef  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
005232f7  c704240000a041            MOV dword ptr [ESP],0x41a00000
005232fe  50                        PUSH EAX
005232ff  8d442428                  LEA EAX,[ESP + 0x28]
00523303  50                        PUSH EAX
00523304  e847fc2e00                CALL 0x00812f50
00523309  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00523310  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00523316  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0052331c  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00523322  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00523328  7421                      JZ 0x0052334b
0052332a  8d442430                  LEA EAX,[ESP + 0x30]
0052332e  8bcf                      MOV ECX,EDI
00523330  50                        PUSH EAX
00523331  e8fa591b00                CALL 0x006d8d30
00523336  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052333a  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00523340  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00523345  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0052334b  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
00523351  8d44240c                  LEA EAX,[ESP + 0xc]
00523355  50                        PUSH EAX
00523356  8bce                      MOV ECX,ESI
00523358  e833f92e00                CALL 0x00812c90
0052335d  6884030000                PUSH 0x384
00523362  50                        PUSH EAX
00523363  8bce                      MOV ECX,ESI
00523365  e87632f3ff                CALL 0x004565e0
0052336a  e8f1bb1c00                CALL 0x006eef60
0052336f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00523375  6a00                      PUSH 0x0
00523377  50                        PUSH EAX
00523378  6a02                      PUSH 0x2
0052337a  57                        PUSH EDI
0052337b  6840b6c700                PUSH 0xc7b640
00523380  8d442420                  LEA EAX,[ESP + 0x20]
00523384  50                        PUSH EAX
00523385  6a13                      PUSH 0x13
00523387  68e8030000                PUSH 0x3e8
0052338c  e87fb01d00                CALL 0x006fe410
00523391  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00523399  8bf0                      MOV ESI,EAX
0052339b  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
005233a2  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005233a8  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
005233b0  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
005233b7  6aff                      PUSH -0x1
005233b9  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
005233bf  ff742420                  PUSH dword ptr [ESP + 0x20]
005233c3  ff742420                  PUSH dword ptr [ESP + 0x20]
005233c7  51                        PUSH ECX
005233c8  8bce                      MOV ECX,ESI
005233ca  c7042400002041            MOV dword ptr [ESP],0x41200000
005233d1  e8ca8e1800                CALL 0x006ac2a0
005233d6  8b06                      MOV EAX,dword ptr [ESI]
005233d8  51                        PUSH ECX
005233d9  8bce                      MOV ECX,ESI
005233db  c704240000e040            MOV dword ptr [ESP],0x40e00000
005233e2  ff5040                    CALL dword ptr [EAX + 0x40]
005233e5  8b06                      MOV EAX,dword ptr [ESI]
005233e7  8bce                      MOV ECX,ESI
005233e9  ff500c                    CALL dword ptr [EAX + 0xc]
005233ec  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
005233f2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005233f6  8d4f48                    LEA ECX,[EDI + 0x48]
005233f9  740d                      JZ 0x00523408
005233fb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00523402  0f85d2000000              JNZ 0x005234da
00523408  6a00                      PUSH 0x0
0052340a  6854bcb100                PUSH 0xb1bc54
0052340f  e86c6feeff                CALL 0x0040a380
00523414  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052341b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00523425  7410                      JZ 0x00523437
00523427  ba3c000000                MOV EDX,0x3c
0052342c  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00523432  e9a3000000                JMP 0x005234da
00523437  e824bb1c00                CALL 0x006eef60
0052343c  33d2                      XOR EDX,EDX
0052343e  b93c000000                MOV ECX,0x3c
00523443  f7f1                      DIV ECX
00523445  03d1                      ADD EDX,ECX
00523447  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0052344d  e988000000                JMP 0x005234da
00523452  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0052345a  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00523462  2bc8                      SUB ECX,EAX
00523464  018fa00b0000              ADD dword ptr [EDI + 0xba0],ECX
0052346a  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00523471  7f67                      JG 0x005234da
00523473  6a00                      PUSH 0x0
00523475  68000a0001                PUSH 0x1000a00
0052347a  8bcf                      MOV ECX,EDI
0052347c  e8af3fefff                CALL 0x00417430
00523481  84c0                      TEST AL,AL
00523483  7555                      JNZ 0x005234da
00523485  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052348c  7429                      JZ 0x005234b7
0052348e  6a09                      PUSH 0x9
00523490  8bcf                      MOV ECX,EDI
00523492  e8c94d1b00                CALL 0x006d8260
00523497  84c0                      TEST AL,AL
00523499  743f                      JZ 0x005234da
0052349b  8d442430                  LEA EAX,[ESP + 0x30]
0052349f  8bcf                      MOV ECX,EDI
005234a1  50                        PUSH EAX
005234a2  e889581b00                CALL 0x006d8d30
005234a7  6840b6c700                PUSH 0xc7b640
005234ac  8bc8                      MOV ECX,EAX
005234ae  e87dd14e00                CALL 0x00a10630
005234b3  84c0                      TEST AL,AL
005234b5  7423                      JZ 0x005234da
005234b7  6a00                      PUSH 0x0
005234b9  6854ddb100                PUSH 0xb1dd54
005234be  8d4f48                    LEA ECX,[EDI + 0x48]
005234c1  e8ba6eeeff                CALL 0x0040a380
005234c6  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005234d0  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005234da  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005234df  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005234e6  7612                      JBE 0x005234fa
005234e8  f30f5905c0adba00          MULSS XMM0,dword ptr [0x00baadc0]
005234f0  f30f2cc0                  CVTTSS2SI EAX,XMM0
005234f4  0187a00b0000              ADD dword ptr [EDI + 0xba0],EAX
005234fa  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00523502  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0052350a  a17816c700                MOV EAX,[0x00c71678]
0052350f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00523517  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0052351f  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00523527  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0052352f  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00523537  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0052353f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00523547  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052354d  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00523551  3dbf010000                CMP EAX,0x1bf
00523556  0f87260b0000              JA 0x00524082
0052355c  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
00523567  0f8f150b0000              JG 0x00524082
0052356d  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
00523578  5f                        POP EDI
00523579  5e                        POP ESI
0052357a  8b4c245c                  MOV ECX,dword ptr [ESP + 0x5c]
0052357e  33cc                      XOR ECX,ESP
00523580  e8a6bb5c00                CALL 0x00aef12b
00523585  8be5                      MOV ESP,EBP
00523587  5d                        POP EBP
00523588  c3                        RET
00523589  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0052358f  8d4f48                    LEA ECX,[EDI + 0x48]
00523592  898734030000              MOV dword ptr [EDI + 0x334],EAX
00523598  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0052359e  6a00                      PUSH 0x0
005235a0  898738030000              MOV dword ptr [EDI + 0x338],EAX
005235a6  6854bcb100                PUSH 0xb1bc54
005235ab  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005235b5  e8c66deeff                CALL 0x0040a380
005235ba  a17816c700                MOV EAX,[0x00c71678]
005235bf  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005235c7  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
005235cf  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
005235d5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005235db  89442424                  MOV dword ptr [ESP + 0x24],EAX
005235df  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005235e2  89442438                  MOV dword ptr [ESP + 0x38],EAX
005235e6  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005235e9  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
005235ed  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
005235f0  89442440                  MOV dword ptr [ESP + 0x40],EAX
005235f4  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
005235f7  89442444                  MOV dword ptr [ESP + 0x44],EAX
005235fb  8bc1                      MOV EAX,ECX
005235fd  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
00523603  2500010000                AND EAX,0x100
00523608  83c800                    OR EAX,0x0
0052360b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00523613  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
00523619  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00523621  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
00523627  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0052362d  7407                      JZ 0x00523636
0052362f  ba01000000                MOV EDX,0x1
00523634  eb02                      JMP 0x00523638
00523636  33d2                      XOR EDX,EDX
00523638  81e100000020              AND ECX,0x20000000
0052363e  83c900                    OR ECX,0x0
00523641  7407                      JZ 0x0052364a
00523643  b902000000                MOV ECX,0x2
00523648  eb02                      JMP 0x0052364c
0052364a  33c9                      XOR ECX,ECX
0052364c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00523652  2500004000                AND EAX,0x400000
00523657  89442418                  MOV dword ptr [ESP + 0x18],EAX
0052365b  33c0                      XOR EAX,EAX
0052365d  0b442418                  OR EAX,dword ptr [ESP + 0x18]
00523661  7407                      JZ 0x0052366a
00523663  b804000000                MOV EAX,0x4
00523668  eb02                      JMP 0x0052366c
0052366a  33c0                      XOR EAX,EAX
0052366c  0bc1                      OR EAX,ECX
0052366e  897c245c                  MOV dword ptr [ESP + 0x5c],EDI
00523672  0bc2                      OR EAX,EDX
00523674  89442458                  MOV dword ptr [ESP + 0x58],EAX
00523678  81febf010000              CMP ESI,0x1bf
0052367e  7718                      JA 0x00523698
00523680  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00523684  8b4cb124                  MOV ECX,dword ptr [ECX + ESI*0x4 + 0x24]
00523688  85c9                      TEST ECX,ECX
0052368a  740c                      JZ 0x00523698
0052368c  8b01                      MOV EAX,dword ptr [ECX]
0052368e  8d542438                  LEA EDX,[ESP + 0x38]
00523692  52                        PUSH EDX
00523693  6a00                      PUSH 0x0
00523695  ff5014                    CALL dword ptr [EAX + 0x14]
00523698  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052369f  7407                      JZ 0x005236a8
005236a1  ba1e000000                MOV EDX,0x1e
005236a6  eb11                      JMP 0x005236b9
005236a8  e8b3b81c00                CALL 0x006eef60
005236ad  33d2                      XOR EDX,EDX
005236af  b93c000000                MOV ECX,0x3c
005236b4  f7f1                      DIV ECX
005236b6  83c20f                    ADD EDX,0xf
005236b9  6a01                      PUSH 0x1
005236bb  8d4f48                    LEA ECX,[EDI + 0x48]
005236be  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
005236c4  e8577beeff                CALL 0x0040b220
005236c9  6a02                      PUSH 0x2
005236cb  8d4f48                    LEA ECX,[EDI + 0x48]
005236ce  83888c00000001            OR dword ptr [EAX + 0x8c],0x1
005236d5  e8467beeff                CALL 0x0040b220
005236da  83888c00000001            OR dword ptr [EAX + 0x8c],0x1
005236e1  5f                        POP EDI
005236e2  5e                        POP ESI
005236e3  8b4c245c                  MOV ECX,dword ptr [ESP + 0x5c]
005236e7  33cc                      XOR ECX,ESP
005236e9  e83dba5c00                CALL 0x00aef12b
005236ee  8be5                      MOV ESP,EBP
005236f0  5d                        POP EBP
005236f1  c3                        RET
005236f2  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
005236fa  0f28c2                    MOVAPS XMM0,XMM2
005236fd  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
00523705  f30f5cc1                  SUBSS XMM0,XMM1
00523709  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0052370f  f30f5ec1                  DIVSS XMM0,XMM1
00523713  f30f58c3                  ADDSS XMM0,XMM3
00523717  f30f2cd0                  CVTTSS2SI EDX,XMM0
0052371b  85d2                      TEST EDX,EDX
0052371d  7833                      JS 0x00523752
0052371f  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
00523722  3bd0                      CMP EDX,EAX
00523724  7d2c                      JGE 0x00523752
00523726  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0052372e  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00523736  f30f5ec1                  DIVSS XMM0,XMM1
0052373a  f30f58c3                  ADDSS XMM0,XMM3
0052373e  f30f2cc8                  CVTTSS2SI ECX,XMM0
00523742  85c9                      TEST ECX,ECX
00523744  780c                      JS 0x00523752
00523746  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
00523749  7d07                      JGE 0x00523752
0052374b  0fafc1                    IMUL EAX,ECX
0052374e  03c2                      ADD EAX,EDX
00523750  eb03                      JMP 0x00523755
00523752  83c8ff                    OR EAX,0xffffffff
00523755  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0052375c  89442414                  MOV dword ptr [ESP + 0x14],EAX
00523760  0f857f010000              JNZ 0x005238e5
00523766  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
0052376e  8d4f48                    LEA ECX,[EDI + 0x48]
00523771  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00523777  898738030000              MOV dword ptr [EDI + 0x338],EAX
0052377d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00523787  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00523791  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523795  6a01                      PUSH 0x1
00523797  751f                      JNZ 0x005237b8
00523799  68fc0eb600                PUSH 0xb60efc
0052379e  e82d6eeeff                CALL 0x0040a5d0
005237a3  84c0                      TEST AL,AL
005237a5  743f                      JZ 0x005237e6
005237a7  8d4f78                    LEA ECX,[EDI + 0x78]
005237aa  e8016aeeff                CALL 0x0040a1b0
005237af  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005237b6  eb2e                      JMP 0x005237e6
005237b8  68ac0cb600                PUSH 0xb60cac
005237bd  e80e6eeeff                CALL 0x0040a5d0
005237c2  84c0                      TEST AL,AL
005237c4  7420                      JZ 0x005237e6
005237c6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005237c9  85c0                      TEST EAX,EAX
005237cb  7419                      JZ 0x005237e6
005237cd  8d4f78                    LEA ECX,[EDI + 0x78]
005237d0  0f57c9                    XORPS XMM1,XMM1
005237d3  e82856eeff                CALL 0x00408e00
005237d8  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005237db  85c0                      TEST EAX,EAX
005237dd  7407                      JZ 0x005237e6
005237df  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
005237e6  a17816c700                MOV EAX,[0x00c71678]
005237eb  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005237f3  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
005237fb  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00523801  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00523807  c7875403000048f4ffff      MOV dword ptr [EDI + 0x354],0xfffff448
00523811  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00523817  89442418                  MOV dword ptr [ESP + 0x18],EAX
0052381b  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052381e  89442438                  MOV dword ptr [ESP + 0x38],EAX
00523822  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00523825  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
00523829  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0052382c  89442440                  MOV dword ptr [ESP + 0x40],EAX
00523830  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00523833  89442444                  MOV dword ptr [ESP + 0x44],EAX
00523837  8bc1                      MOV EAX,ECX
00523839  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0052383f  2500010000                AND EAX,0x100
00523844  83c800                    OR EAX,0x0
00523847  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0052384f  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
00523855  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0052385d  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
00523863  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
00523869  7407                      JZ 0x00523872
0052386b  be01000000                MOV ESI,0x1
00523870  eb02                      JMP 0x00523874
00523872  33f6                      XOR ESI,ESI
00523874  81e100000020              AND ECX,0x20000000
0052387a  83c900                    OR ECX,0x0
0052387d  7407                      JZ 0x00523886
0052387f  b902000000                MOV ECX,0x2
00523884  eb02                      JMP 0x00523888
00523886  33c9                      XOR ECX,ECX
00523888  81e200004000              AND EDX,0x400000
0052388e  33c0                      XOR EAX,EAX
00523890  0bc2                      OR EAX,EDX
00523892  7407                      JZ 0x0052389b
00523894  b804000000                MOV EAX,0x4
00523899  eb02                      JMP 0x0052389d
0052389b  33c0                      XOR EAX,EAX
0052389d  0bc1                      OR EAX,ECX
0052389f  897c245c                  MOV dword ptr [ESP + 0x5c],EDI
005238a3  0bc6                      OR EAX,ESI
005238a5  89442458                  MOV dword ptr [ESP + 0x58],EAX
005238a9  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
005238ad  3dbf010000                CMP EAX,0x1bf
005238b2  0f87ca070000              JA 0x00524082
005238b8  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
005238bc  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
005238c0  85c9                      TEST ECX,ECX
005238c2  0f84ba070000              JZ 0x00524082
005238c8  8b01                      MOV EAX,dword ptr [ECX]
005238ca  8d542438                  LEA EDX,[ESP + 0x38]
005238ce  52                        PUSH EDX
005238cf  6a00                      PUSH 0x0
005238d1  ff5014                    CALL dword ptr [EAX + 0x14]
005238d4  5f                        POP EDI
005238d5  5e                        POP ESI
005238d6  8b4c245c                  MOV ECX,dword ptr [ESP + 0x5c]
005238da  33cc                      XOR ECX,ESP
005238dc  e84ab85c00                CALL 0x00aef12b
005238e1  8be5                      MOV ESP,EBP
005238e3  5d                        POP EBP
005238e4  c3                        RET
005238e5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005238ed  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005238f5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005238fb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00523903  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0052390b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00523913  f30f5cca                  SUBSS XMM1,XMM2
00523917  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0052391f  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00523927  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0052392f  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00523935  3dbf010000                CMP EAX,0x1bf
0052393a  7718                      JA 0x00523954
0052393c  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
00523947  7f0b                      JG 0x00523954
00523949  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
00523954  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0052395a  83f804                    CMP EAX,0x4
0052395d  0f85ce040000              JNZ 0x00523e31
00523963  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052396a  0f84fb000000              JZ 0x00523a6b
00523970  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00523978  8d44240c                  LEA EAX,[ESP + 0xc]
0052397c  50                        PUSH EAX
0052397d  8bcf                      MOV ECX,EDI
0052397f  e81c4c1b00                CALL 0x006d85a0
00523984  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0052398a  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00523991  f30f10642410              MOVSS XMM4,dword ptr [ESP + 0x10]
00523997  9f                        LAHF
00523998  f6c444                    TEST AH,0x44
0052399b  7a0d                      JP 0x005239aa
0052399d  0f2e2544b6c700            UCOMISS XMM4,dword ptr [0x00c7b644]
005239a4  9f                        LAHF
005239a5  f6c444                    TEST AH,0x44
005239a8  7b60                      JNP 0x00523a0a
005239aa  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005239ad  40                        INC EAX
005239ae  660f6ed0                  MOVD XMM2,EAX
005239b2  f30fe6d2                  CVTDQ2PD XMM2,XMM2
005239b6  c1e81f                    SHR EAX,0x1f
005239b9  f20f5814c500cbba00        ADDSD XMM2,qword ptr [EAX*0x8 + 0xbacb00]
005239c2  660f5ac2                  CVTPD2PS XMM0,XMM2
005239c6  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
005239ce  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
005239d6  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005239dc  0f28c4                    MOVAPS XMM0,XMM4
005239df  e87c63f7ff                CALL 0x00499d60
005239e4  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
005239ec  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
005239f2  0f28c8                    MOVAPS XMM1,XMM0
005239f5  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005239fd  e84ef01500                CALL 0x00682a50
00523a02  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00523a0a  6a09                      PUSH 0x9
00523a0c  8bcf                      MOV ECX,EDI
00523a0e  e84d481b00                CALL 0x006d8260
00523a13  84c0                      TEST AL,AL
00523a15  0f846d030000              JZ 0x00523d88
00523a1b  6a00                      PUSH 0x0
00523a1d  68000a0001                PUSH 0x1000a00
00523a22  8bcf                      MOV ECX,EDI
00523a24  e8073aefff                CALL 0x00417430
00523a29  84c0                      TEST AL,AL
00523a2b  0f8557030000              JNZ 0x00523d88
00523a31  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523a35  8d4f48                    LEA ECX,[EDI + 0x48]
00523a38  6a00                      PUSH 0x0
00523a3a  750c                      JNZ 0x00523a48
00523a3c  68dcd2b100                PUSH 0xb1d2dc
00523a41  e83a69eeff                CALL 0x0040a380
00523a46  eb0a                      JMP 0x00523a52
00523a48  68ec0eb600                PUSH 0xb60eec
00523a4d  e8ee6eeeff                CALL 0x0040a940
00523a52  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00523a5c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00523a66  e91d030000                JMP 0x00523d88
00523a6b  51                        PUSH ECX
00523a6c  8d442434                  LEA EAX,[ESP + 0x34]
00523a70  c7042400000000            MOV dword ptr [ESP],0x0
00523a77  50                        PUSH EAX
00523a78  8bcf                      MOV ECX,EDI
00523a7a  8db73c030000              LEA ESI,[EDI + 0x33c]
00523a80  e8bbb11900                CALL 0x006bec40
00523a85  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00523a89  8bcf                      MOV ECX,EDI
00523a8b  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
00523a8f  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00523a95  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00523a9a  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
00523a9f  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523aa5  e896ad1900                CALL 0x006be840
00523aaa  f30f105c2418              MOVSS XMM3,dword ptr [ESP + 0x18]
00523ab0  0f28d3                    MOVAPS XMM2,XMM3
00523ab3  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
00523abb  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
00523ac3  f30f58c0                  ADDSS XMM0,XMM0
00523ac7  f30f58c9                  ADDSS XMM1,XMM1
00523acb  f30f5cd0                  SUBSS XMM2,XMM0
00523acf  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00523ad5  f30f10542424              MOVSS XMM2,dword ptr [ESP + 0x24]
00523adb  0f28c2                    MOVAPS XMM0,XMM2
00523ade  f30f5cc1                  SUBSS XMM0,XMM1
00523ae2  0f57c9                    XORPS XMM1,XMM1
00523ae5  0f2ec1                    UCOMISS XMM0,XMM1
00523ae8  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00523aee  9f                        LAHF
00523aef  f6c444                    TEST AH,0x44
00523af2  7a0e                      JP 0x00523b02
00523af4  f30f100520a0ba00          MOVSS XMM0,dword ptr [0x00baa020]
00523afc  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00523b02  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00523b05  0f57c9                    XORPS XMM1,XMM1
00523b08  40                        INC EAX
00523b09  f30f59d2                  MULSS XMM2,XMM2
00523b0d  f30f59db                  MULSS XMM3,XMM3
00523b11  f20f2ac8                  CVTSI2SD XMM1,EAX
00523b15  c1e81f                    SHR EAX,0x1f
00523b18  f30f58d3                  ADDSS XMM2,XMM3
00523b1c  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00523b25  660f5ac1                  CVTPD2PS XMM0,XMM1
00523b29  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00523b31  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
00523b39  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00523b3f  0f28c2                    MOVAPS XMM0,XMM2
00523b42  e8091ff1ff                CALL 0x00435a50
00523b47  f30f5e051cabba00          DIVSS XMM0,dword ptr [0x00baab1c]
00523b4f  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
00523b55  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
00523b5b  f30f5cd0                  SUBSS XMM2,XMM0
00523b5f  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00523b65  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00523b6b  e8f061f7ff                CALL 0x00499d60
00523b70  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00523b78  f30f101578aaba00          MOVSS XMM2,dword ptr [0x00baaa78]
00523b80  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00523b88  f30f5c87b00b0000          SUBSS XMM0,dword ptr [EDI + 0xbb0]
00523b90  f30f58c2                  ADDSS XMM0,XMM2
00523b94  0f2fc2                    COMISS XMM0,XMM2
00523b97  7610                      JBE 0x00523ba9
00523b99  0f1f8000000000            NOP dword ptr [EAX]
00523ba0  f30f5cc1                  SUBSS XMM0,XMM1
00523ba4  0f2fc2                    COMISS XMM0,XMM2
00523ba7  77f7                      JA 0x00523ba0
00523ba9  f30f10157caeba00          MOVSS XMM2,dword ptr [0x00baae7c]
00523bb1  0f2fd0                    COMISS XMM2,XMM0
00523bb4  7609                      JBE 0x00523bbf
00523bb6  f30f58c1                  ADDSS XMM0,XMM1
00523bba  0f2fd0                    COMISS XMM2,XMM0
00523bbd  77f7                      JA 0x00523bb6
00523bbf  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
00523bc5  0f2fc2                    COMISS XMM0,XMM2
00523bc8  0f28ca                    MOVAPS XMM1,XMM2
00523bcb  7608                      JBE 0x00523bd5
00523bcd  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00523bd3  eb11                      JMP 0x00523be6
00523bd5  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00523bdc  f30f5fc8                  MAXSS XMM1,XMM0
00523be0  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
00523be6  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00523bee  0f28c1                    MOVAPS XMM0,XMM1
00523bf1  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00523bf8  0f2fd0                    COMISS XMM2,XMM0
00523bfb  0f8677010000              JBE 0x00523d78
00523c01  e85ab31c00                CALL 0x006eef60
00523c06  33d2                      XOR EDX,EDX
00523c08  b90a000000                MOV ECX,0xa
00523c0d  f7f1                      DIV ECX
00523c0f  85d2                      TEST EDX,EDX
00523c11  0f855b010000              JNZ 0x00523d72
00523c17  52                        PUSH EDX
00523c18  6800020000                PUSH 0x200
00523c1d  8bcf                      MOV ECX,EDI
00523c1f  e80c38efff                CALL 0x00417430
00523c24  84c0                      TEST AL,AL
00523c26  0f8546010000              JNZ 0x00523d72
00523c2c  6a00                      PUSH 0x0
00523c2e  6800080001                PUSH 0x1000800
00523c33  8bcf                      MOV ECX,EDI
00523c35  e8f637efff                CALL 0x00417430
00523c3a  84c0                      TEST AL,AL
00523c3c  0f8530010000              JNZ 0x00523d72
00523c42  a17816c700                MOV EAX,[0x00c71678]
00523c47  56                        PUSH ESI
00523c48  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00523c4e  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
00523c54  e8e70d4200                CALL 0x00944a40
00523c59  84c0                      TEST AL,AL
00523c5b  0f8411010000              JZ 0x00523d72
00523c61  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523c65  8d4f48                    LEA ECX,[EDI + 0x48]
00523c68  6a00                      PUSH 0x0
00523c6a  750c                      JNZ 0x00523c78
00523c6c  68dcd2b100                PUSH 0xb1d2dc
00523c71  e80a67eeff                CALL 0x0040a380
00523c76  eb0a                      JMP 0x00523c82
00523c78  68ec0eb600                PUSH 0xb60eec
00523c7d  e8be6ceeff                CALL 0x0040a940
00523c82  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523c86  8d4f48                    LEA ECX,[EDI + 0x48]
00523c89  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00523c93  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00523c9d  752f                      JNZ 0x00523cce
00523c9f  6a01                      PUSH 0x1
00523ca1  e87a75eeff                CALL 0x0040b220
00523ca6  f30f105040                MOVSS XMM2,dword ptr [EAX + 0x40]
00523cab  f30f104844                MOVSS XMM1,dword ptr [EAX + 0x44]
00523cb0  f30f5915bca6ba00          MULSS XMM2,dword ptr [0x00baa6bc]
00523cb8  f30f590dbca6ba00          MULSS XMM1,dword ptr [0x00baa6bc]
00523cc0  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
00523cc6  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00523ccc  eb2e                      JMP 0x00523cfc
00523cce  68600fb600                PUSH 0xb60f60
00523cd3  e8f874eeff                CALL 0x0040b1d0
00523cd8  0f57c0                    XORPS XMM0,XMM0
00523cdb  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00523cdf  f30f58c8                  ADDSS XMM1,XMM0
00523ce3  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00523ce8  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
00523cf0  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00523cf6  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00523cfc  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00523d04  0f57db                    XORPS XMM3,XMM3
00523d07  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00523d0f  51                        PUSH ECX
00523d10  8d4c243c                  LEA ECX,[ESP + 0x3c]
00523d14  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00523d1b  e8d0fbefff                CALL 0x004238f0
00523d20  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00523d28  8bf0                      MOV ESI,EAX
00523d2a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00523d32  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00523d38  e80398efff                CALL 0x0041d540
00523d3d  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523d43  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00523d49  e8d297efff                CALL 0x0041d520
00523d4e  51                        PUSH ECX
00523d4f  c7042400008040            MOV dword ptr [ESP],0x40800000
00523d56  8d442428                  LEA EAX,[ESP + 0x28]
00523d5a  56                        PUSH ESI
00523d5b  6a0f                      PUSH 0xf
00523d5d  50                        PUSH EAX
00523d5e  8d54241c                  LEA EDX,[ESP + 0x1c]
00523d62  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00523d68  8bcf                      MOV ECX,EDI
00523d6a  e8217b0e00                CALL 0x0060b890
00523d6f  83c410                    ADD ESP,0x10
00523d72  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
00523d78  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
00523d80  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00523d88  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523d8c  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00523d94  754f                      JNZ 0x00523de5
00523d96  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00523d9e  8d4f48                    LEA ECX,[EDI + 0x48]
00523da1  6a01                      PUSH 0x1
00523da3  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523da9  e87274eeff                CALL 0x0040b220
00523dae  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00523db4  8bf0                      MOV ESI,EAX
00523db6  e88597efff                CALL 0x0041d540
00523dbb  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00523dc3  f30f114640                MOVSS dword ptr [ESI + 0x40],XMM0
00523dc8  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00523dce  e84d97efff                CALL 0x0041d520
00523dd3  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00523ddb  f30f114644                MOVSS dword ptr [ESI + 0x44],XMM0
00523de0  e927020000                JMP 0x0052400c
00523de5  f30f5805e4a9ba00          ADDSS XMM0,dword ptr [0x00baa9e4]
00523ded  e84ee91500                CALL 0x00682740
00523df2  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00523df5  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
00523dfd  85c0                      TEST EAX,EAX
00523dff  0f8407020000              JZ 0x0052400c
00523e05  f30f5e0530abba00          DIVSS XMM0,dword ptr [0x00baab30]
00523e0d  8d4f78                    LEA ECX,[EDI + 0x78]
00523e10  660f6e4830                MOVD XMM1,dword ptr [EAX + 0x30]
00523e15  0f5bc9                    CVTDQ2PS XMM1,XMM1
00523e18  f30f59c8                  MULSS XMM1,XMM0
00523e1c  f30f2cc1                  CVTTSS2SI EAX,XMM1
00523e20  660f6ec8                  MOVD XMM1,EAX
00523e24  0f5bc9                    CVTDQ2PS XMM1,XMM1
00523e27  e8d44feeff                CALL 0x00408e00
00523e2c  e9db010000                JMP 0x0052400c
00523e31  83f808                    CMP EAX,0x8
00523e34  0f85a4010000              JNZ 0x00523fde
00523e3a  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523e3e  68dcd2b100                PUSH 0xb1d2dc
00523e43  750a                      JNZ 0x00523e4f
00523e45  8d4f48                    LEA ECX,[EDI + 0x48]
00523e48  e8e371eeff                CALL 0x0040b030
00523e4d  eb0b                      JMP 0x00523e5a
00523e4f  8d8f98000000              LEA ECX,[EDI + 0x98]
00523e55  e8766feeff                CALL 0x0040add0
00523e5a  84c0                      TEST AL,AL
00523e5c  0f842d010000              JZ 0x00523f8f
00523e62  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523e66  8d4f48                    LEA ECX,[EDI + 0x48]
00523e69  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00523e71  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00523e77  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00523e7f  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00523e85  7553                      JNZ 0x00523eda
00523e87  6a01                      PUSH 0x1
00523e89  e89273eeff                CALL 0x0040b220
00523e8e  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00523e96  f30f104040                MOVSS XMM0,dword ptr [EAX + 0x40]
00523e9b  f30f5905bca6ba00          MULSS XMM0,dword ptr [0x00baa6bc]
00523ea3  f30f105044                MOVSS XMM2,dword ptr [EAX + 0x44]
00523ea8  f30f5915bca6ba00          MULSS XMM2,dword ptr [0x00baa6bc]
00523eb0  f30f5844240c              ADDSS XMM0,dword ptr [ESP + 0xc]
00523eb6  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00523ebc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00523ec4  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00523eca  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00523ed2  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00523ed8  eb62                      JMP 0x00523f3c
00523eda  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00523ee2  68600fb600                PUSH 0xb60f60
00523ee7  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00523eed  c744242800000000          MOV dword ptr [ESP + 0x28],0x0
00523ef5  c744242c0000a0c1          MOV dword ptr [ESP + 0x2c],0xc1a00000
00523efd  e8ce72eeff                CALL 0x0040b1d0
00523f02  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
00523f08  0f57db                    XORPS XMM3,XMM3
00523f0b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00523f0f  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
00523f17  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00523f1c  f30f5e1524a3ba00          DIVSS XMM2,dword ptr [0x00baa324]
00523f24  f30f5cc3                  SUBSS XMM0,XMM3
00523f28  f30f5c15ecadba00          SUBSS XMM2,dword ptr [0x00baadec]
00523f30  f30f5844240c              ADDSS XMM0,dword ptr [ESP + 0xc]
00523f36  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00523f3c  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00523f3f  8d442424                  LEA EAX,[ESP + 0x24]
00523f43  f30f58542410              ADDSS XMM2,dword ptr [ESP + 0x10]
00523f49  6a00                      PUSH 0x0
00523f4b  57                        PUSH EDI
00523f4c  50                        PUSH EAX
00523f4d  85c9                      TEST ECX,ECX
00523f4f  ba03000000                MOV EDX,0x3
00523f54  b808000000                MOV EAX,0x8
00523f59  f30f1154241c              MOVSS dword ptr [ESP + 0x1c],XMM2
00523f5f  0f44c2                    CMOVZ EAX,EDX
00523f62  50                        PUSH EAX
00523f63  51                        PUSH ECX
00523f64  f7d9                      NEG ECX
00523f66  f30f110c24                MOVSS dword ptr [ESP],XMM1
00523f6b  8d442420                  LEA EAX,[ESP + 0x20]
00523f6f  1bc9                      SBB ECX,ECX
00523f71  50                        PUSH EAX
00523f72  83c102                    ADD ECX,0x2
00523f75  51                        PUSH ECX
00523f76  e895b34400                CALL 0x0096f310
00523f7b  83c41c                    ADD ESP,0x1c
00523f7e  8bc8                      MOV ECX,EAX
00523f80  8b10                      MOV EDX,dword ptr [EAX]
00523f82  c7805803000000803b45      MOV dword ptr [EAX + 0x358],0x453b8000
00523f8c  ff520c                    CALL dword ptr [EDX + 0xc]
00523f8f  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523f93  751e                      JNZ 0x00523fb3
00523f95  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00523f99  7409                      JZ 0x00523fa4
00523f9b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00523fa2  7568                      JNZ 0x0052400c
00523fa4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00523fae  8d4f48                    LEA ECX,[EDI + 0x48]
00523fb1  eb4d                      JMP 0x00524000
00523fb3  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
00523fba  7409                      JZ 0x00523fc5
00523fbc  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
00523fc3  7547                      JNZ 0x0052400c
00523fc5  6a00                      PUSH 0x0
00523fc7  8d8f98000000              LEA ECX,[EDI + 0x98]
00523fcd  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00523fd7  e85448eeff                CALL 0x00408830
00523fdc  eb2e                      JMP 0x0052400c
00523fde  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00523fe2  8d4f48                    LEA ECX,[EDI + 0x48]
00523fe5  7409                      JZ 0x00523ff0
00523fe7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00523fee  751c                      JNZ 0x0052400c
00523ff0  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00523ff4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00523ffe  750c                      JNZ 0x0052400c
00524000  6a00                      PUSH 0x0
00524002  68540fb600                PUSH 0xb60f54
00524007  e87463eeff                CALL 0x0040a380
0052400c  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00524010  7570                      JNZ 0x00524082
00524012  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
00524019  7467                      JZ 0x00524082
0052401b  68b804b600                PUSH 0xb604b8
00524020  8d8f98000000              LEA ECX,[EDI + 0x98]
00524026  e8b56ceeff                CALL 0x0040ace0
0052402b  89442418                  MOV dword ptr [ESP + 0x18],EAX
0052402f  85c0                      TEST EAX,EAX
00524031  744f                      JZ 0x00524082
00524033  80780c00                  CMP byte ptr [EAX + 0xc],0x0
00524037  7449                      JZ 0x00524082
00524039  8d7748                    LEA ESI,[EDI + 0x48]
0052403c  6a00                      PUSH 0x0
0052403e  8bce                      MOV ECX,ESI
00524040  e8db71eeff                CALL 0x0040b220
00524045  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
00524049  6a00                      PUSH 0x0
0052404b  8b0f                      MOV ECX,dword ptr [EDI]
0052404d  894840                    MOV dword ptr [EAX + 0x40],ECX
00524050  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
00524053  894844                    MOV dword ptr [EAX + 0x44],ECX
00524056  8bce                      MOV ECX,ESI
00524058  e8c371eeff                CALL 0x0040b220
0052405d  8b5710                    MOV EDX,dword ptr [EDI + 0x10]
00524060  895034                    MOV dword ptr [EAX + 0x34],EDX
00524063  8b5714                    MOV EDX,dword ptr [EDI + 0x14]
00524066  895038                    MOV dword ptr [EAX + 0x38],EDX
00524069  8d4718                    LEA EAX,[EDI + 0x18]
0052406c  50                        PUSH EAX
0052406d  51                        PUSH ECX
0052406e  6a00                      PUSH 0x0
00524070  8bce                      MOV ECX,ESI
00524072  e8a971eeff                CALL 0x0040b220
00524077  83c404                    ADD ESP,0x4
0052407a  8d4848                    LEA ECX,[EAX + 0x48]
0052407d  e86e31eeff                CALL 0x004071f0
00524082  8b4c2464                  MOV ECX,dword ptr [ESP + 0x64]
00524086  5f                        POP EDI
00524087  5e                        POP ESI
00524088  33cc                      XOR ECX,ESP
0052408a  e89cb05c00                CALL 0x00aef12b
0052408f  8be5                      MOV ESP,EBP
00524091  5d                        POP EBP
00524092  c3                        RET
