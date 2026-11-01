; J460 NPC AI 0x0065b500 HELPER_Projectile_GroundLifecycle
; types=9
; identities=9.0.0
; entry=0065b500
0065b500  57                        PUSH EDI
0065b501  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0065b507  8bd1                      MOV EDX,ECX
0065b509  8b8700830100              MOV EAX,dword ptr [EDI + 0x18300]
0065b50f  f30f109210040000          MOVSS XMM2,dword ptr [EDX + 0x410]
0065b517  83780810                  CMP dword ptr [EAX + 0x8],0x10
0065b51b  0f8593000000              JNZ 0x0065b5b4
0065b521  0f2f15a4adba00            COMISS XMM2,dword ptr [0x00baada4]
0065b528  c78250030000000070c1      MOV dword ptr [EDX + 0x350],0xc1700000
0065b532  760a                      JBE 0x0065b53e
0065b534  c782100400003333a3c0      MOV dword ptr [EDX + 0x410],0xc0a33333
0065b53e  8b8a3c040000              MOV ECX,dword ptr [EDX + 0x43c]
0065b544  56                        PUSH ESI
0065b545  8bb238040000              MOV ESI,dword ptr [EDX + 0x438]
0065b54b  81e100040000              AND ECX,0x400
0065b551  8bc6                      MOV EAX,ESI
0065b553  c7828801000004000000      MOV dword ptr [EDX + 0x188],0x4
0065b55d  2510380040                AND EAX,0x40003810
0065b562  0bc1                      OR EAX,ECX
0065b564  740c                      JZ 0x0065b572
0065b566  83e602                    AND ESI,0x2
0065b569  83ce00                    OR ESI,0x0
0065b56c  7504                      JNZ 0x0065b572
0065b56e  33c0                      XOR EAX,EAX
0065b570  eb05                      JMP 0x0065b577
0065b572  b804000000                MOV EAX,0x4
0065b577  898284010000              MOV dword ptr [EDX + 0x184],EAX
0065b57d  8b8700830100              MOV EAX,dword ptr [EDI + 0x18300]
0065b583  5e                        POP ESI
0065b584  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0065b587  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0065b58a  85c0                      TEST EAX,EAX
0065b58c  0f84bf000000              JZ 0x0065b651
0065b592  83780810                  CMP dword ptr [EAX + 0x8],0x10
0065b596  0f85b5000000              JNZ 0x0065b651
0065b59c  833823                    CMP dword ptr [EAX],0x23
0065b59f  0f85ac000000              JNZ 0x0065b651
0065b5a5  c7828401000000000000      MOV dword ptr [EDX + 0x184],0x0
0065b5af  e99d000000                JMP 0x0065b651
0065b5b4  0f57c9                    XORPS XMM1,XMM1
0065b5b7  0f2f8a18040000            COMISS XMM1,dword ptr [EDX + 0x418]
0065b5be  762c                      JBE 0x0065b5ec
0065b5c0  0f28c2                    MOVAPS XMM0,XMM2
0065b5c3  f30f5805fca7ba00          ADDSS XMM0,dword ptr [0x00baa7fc]
0065b5cb  f30f5fc1                  MAXSS XMM0,XMM1
0065b5cf  0f28ca                    MOVAPS XMM1,XMM2
0065b5d2  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0065b5da  f30f5c0d54a8ba00          SUBSS XMM1,dword ptr [0x00baa854]
0065b5e2  f30f59c0                  MULSS XMM0,XMM0
0065b5e6  f30f58c8                  ADDSS XMM1,XMM0
0065b5ea  eb03                      JMP 0x0065b5ef
0065b5ec  0f28ca                    MOVAPS XMM1,XMM2
0065b5ef  f30f118a50030000          MOVSS dword ptr [EDX + 0x350],XMM1
0065b5f7  f30f100530aeba00          MOVSS XMM0,dword ptr [0x00baae30]
0065b5ff  0f2fc2                    COMISS XMM0,XMM2
0065b602  8b8238040000              MOV EAX,dword ptr [EDX + 0x438]
0065b608  8b8a3c040000              MOV ECX,dword ptr [EDX + 0x43c]
0065b60e  7612                      JBE 0x0065b622
0065b610  2500000200                AND EAX,0x20000
0065b615  83c800                    OR EAX,0x0
0065b618  7537                      JNZ 0x0065b651
0065b61a  898288010000              MOV dword ptr [EDX + 0x188],EAX
0065b620  eb2f                      JMP 0x0065b651
0065b622  2510380040                AND EAX,0x40003810
0065b627  c7828801000004000000      MOV dword ptr [EDX + 0x188],0x4
0065b631  81e100040000              AND ECX,0x400
0065b637  0bc1                      OR EAX,ECX
0065b639  740c                      JZ 0x0065b647
0065b63b  c7828401000000000000      MOV dword ptr [EDX + 0x184],0x0
0065b645  eb0a                      JMP 0x0065b651
0065b647  c7828401000004000000      MOV dword ptr [EDX + 0x184],0x4
0065b651  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
0065b657  83e020                    AND EAX,0x20
0065b65a  83c800                    OR EAX,0x0
0065b65d  5f                        POP EDI
0065b65e  740a                      JZ 0x0065b66a
0065b660  c7828801000000000000      MOV dword ptr [EDX + 0x188],0x0
0065b66a  c3                        RET
