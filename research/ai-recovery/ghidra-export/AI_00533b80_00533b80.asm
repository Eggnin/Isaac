; J460 NPC AI 0x00533b80 AI_00533b80
; types=213,287
; identities=213.0.0,287.0.0
; entry=00533b80
00533b80  55                        PUSH EBP
00533b81  8bec                      MOV EBP,ESP
00533b83  83e4f8                    AND ESP,0xfffffff8
00533b86  83ec44                    SUB ESP,0x44
00533b89  53                        PUSH EBX
00533b8a  56                        PUSH ESI
00533b8b  57                        PUSH EDI
00533b8c  8bf9                      MOV EDI,ECX
00533b8e  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
00533b94  85d2                      TEST EDX,EDX
00533b96  0f850e010000              JNZ 0x00533caa
00533b9c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00533ba6  899784010000              MOV dword ptr [EDI + 0x184],EDX
00533bac  899788010000              MOV dword ptr [EDI + 0x188],EDX
00533bb2  e8a9b31b00                CALL 0x006eef60
00533bb7  33d2                      XOR EDX,EDX
00533bb9  b996000000                MOV ECX,0x96
00533bbe  f7f1                      DIV ECX
00533bc0  6a01                      PUSH 0x1
00533bc2  f7da                      NEG EDX
00533bc4  8d4f48                    LEA ECX,[EDI + 0x48]
00533bc7  68c8e0b100                PUSH 0xb1e0c8
00533bcc  899710040000              MOV dword ptr [EDI + 0x410],EDX
00533bd2  e8f969edff                CALL 0x0040a5d0
00533bd7  84c0                      TEST AL,AL
00533bd9  7420                      JZ 0x00533bfb
00533bdb  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00533bde  85c0                      TEST EAX,EAX
00533be0  7419                      JZ 0x00533bfb
00533be2  8d4f78                    LEA ECX,[EDI + 0x78]
00533be5  0f57c9                    XORPS XMM1,XMM1
00533be8  e81352edff                CALL 0x00408e00
00533bed  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00533bf0  85c0                      TEST EAX,EAX
00533bf2  7407                      JZ 0x00533bfb
00533bf4  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
00533bfb  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00533c01  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
00533c08  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00533c10  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00533c16  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00533c1c  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00533c26  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00533c2c  83f812                    CMP EAX,0x12
00533c2f  750a                      JNZ 0x00533c3b
00533c31  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00533c39  eb0d                      JMP 0x00533c48
00533c3b  83f813                    CMP EAX,0x13
00533c3e  750e                      JNZ 0x00533c4e
00533c40  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00533c48  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00533c4e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00533c54  8d4c2410                  LEA ECX,[ESP + 0x10]
00533c58  c744241054000000          MOV dword ptr [ESP + 0x10],0x54
00533c60  e81b2b4200                CALL 0x00956780
00533c65  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00533c6b  83ec08                    SUB ESP,0x8
00533c6e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00533c76  f30f110424                MOVSS dword ptr [ESP],XMM0
00533c7b  6a00                      PUSH 0x0
00533c7d  6a0a                      PUSH 0xa
00533c7f  51                        PUSH ECX
00533c80  c704240000803f            MOV dword ptr [ESP],0x3f800000
00533c87  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00533c8d  ff742424                  PUSH dword ptr [ESP + 0x24]
00533c91  e89a9f3f00                CALL 0x0092dc30
00533c96  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00533c9c  6a0a                      PUSH 0xa
00533c9e  e8cdf91c00                CALL 0x00703670
00533ca3  5f                        POP EDI
00533ca4  5e                        POP ESI
00533ca5  5b                        POP EBX
00533ca6  8be5                      MOV ESP,EBP
00533ca8  5d                        POP EBP
00533ca9  c3                        RET
00533caa  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00533caf  0f57c9                    XORPS XMM1,XMM1
00533cb2  0f2fc1                    COMISS XMM0,XMM1
00533cb5  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
00533cbb  7630                      JBE 0x00533ced
00533cbd  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00533cc0  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00533cc3  7428                      JZ 0x00533ced
00533cc5  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00533cc8  83e104                    AND ECX,0x4
00533ccb  83c900                    OR ECX,0x0
00533cce  740f                      JZ 0x00533cdf
00533cd0  8178101f010000            CMP dword ptr [EAX + 0x10],0x11f
00533cd7  7506                      JNZ 0x00533cdf
00533cd9  c70000000000              MOV dword ptr [EAX],0x0
00533cdf  83c038                    ADD EAX,0x38
00533ce2  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00533ce5  75de                      JNZ 0x00533cc5
00533ce7  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
00533ced  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00533cf5  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00533cfd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00533d05  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00533d0d  2bc8                      SUB ECX,EAX
00533d0f  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00533d15  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00533d1d  83fa06                    CMP EDX,0x6
00533d20  740e                      JZ 0x00533d30
00533d22  83fa04                    CMP EDX,0x4
00533d25  7409                      JZ 0x00533d30
00533d27  83fa07                    CMP EDX,0x7
00533d2a  0f855f030000              JNZ 0x0053408f
00533d30  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00533d36  8bc1                      MOV EAX,ECX
00533d38  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00533d3e  2500010000                AND EAX,0x100
00533d43  83c800                    OR EAX,0x0
00533d46  8bf1                      MOV ESI,ECX
00533d48  8bda                      MOV EBX,EDX
00533d4a  0f84b7000000              JZ 0x00533e07
00533d50  83bf2402000003            CMP dword ptr [EDI + 0x224],0x3
00533d57  0f8daa000000              JGE 0x00533e07
00533d5d  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00533d60  81e100000020              AND ECX,0x20000000
00533d66  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00533d6e  83c900                    OR ECX,0x0
00533d71  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00533d79  b903000000                MOV ECX,0x3
00533d7e  89442428                  MOV dword ptr [ESP + 0x28],EAX
00533d82  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00533d85  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00533d89  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00533d8c  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00533d92  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00533d9a  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00533da0  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00533da8  89442430                  MOV dword ptr [ESP + 0x30],EAX
00533dac  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00533daf  89442434                  MOV dword ptr [ESP + 0x34],EAX
00533db3  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00533db9  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
00533dbf  7505                      JNZ 0x00533dc6
00533dc1  b901000000                MOV ECX,0x1
00533dc6  81e200004000              AND EDX,0x400000
00533dcc  33c0                      XOR EAX,EAX
00533dce  0bc2                      OR EAX,EDX
00533dd0  7407                      JZ 0x00533dd9
00533dd2  b804000000                MOV EAX,0x4
00533dd7  eb02                      JMP 0x00533ddb
00533dd9  33c0                      XOR EAX,EAX
00533ddb  6a00                      PUSH 0x0
00533ddd  0bc8                      OR ECX,EAX
00533ddf  897c2450                  MOV dword ptr [ESP + 0x50],EDI
00533de3  6a00                      PUSH 0x0
00533de5  6a01                      PUSH 0x1
00533de7  8d442434                  LEA EAX,[ESP + 0x34]
00533deb  894c2454                  MOV dword ptr [ESP + 0x54],ECX
00533def  50                        PUSH EAX
00533df0  8bcf                      MOV ECX,EDI
00533df2  e8799a1700                CALL 0x006ad870
00533df7  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00533dfd  8bf1                      MOV ESI,ECX
00533dff  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00533e05  8bda                      MOV EBX,EDX
00533e07  8bc6                      MOV EAX,ESI
00533e09  2500020000                AND EAX,0x200
00533e0e  83c800                    OR EAX,0x0
00533e11  0f84cb000000              JZ 0x00533ee2
00533e17  83bf2802000003            CMP dword ptr [EDI + 0x228],0x3
00533e1e  0f8dbe000000              JGE 0x00533ee2
00533e24  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00533e27  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00533e2f  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00533e37  89442428                  MOV dword ptr [ESP + 0x28],EAX
00533e3b  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00533e3e  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00533e42  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00533e45  89442430                  MOV dword ptr [ESP + 0x30],EAX
00533e49  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00533e4c  89442434                  MOV dword ptr [ESP + 0x34],EAX
00533e50  8bc1                      MOV EAX,ECX
00533e52  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00533e58  2500010000                AND EAX,0x100
00533e5d  83c800                    OR EAX,0x0
00533e60  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00533e68  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00533e6e  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00533e76  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00533e7c  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
00533e82  7407                      JZ 0x00533e8b
00533e84  be01000000                MOV ESI,0x1
00533e89  eb02                      JMP 0x00533e8d
00533e8b  33f6                      XOR ESI,ESI
00533e8d  81e100000020              AND ECX,0x20000000
00533e93  83c900                    OR ECX,0x0
00533e96  7407                      JZ 0x00533e9f
00533e98  b902000000                MOV ECX,0x2
00533e9d  eb02                      JMP 0x00533ea1
00533e9f  33c9                      XOR ECX,ECX
00533ea1  81e200004000              AND EDX,0x400000
00533ea7  33c0                      XOR EAX,EAX
00533ea9  0bc2                      OR EAX,EDX
00533eab  7407                      JZ 0x00533eb4
00533ead  b804000000                MOV EAX,0x4
00533eb2  eb02                      JMP 0x00533eb6
00533eb4  33c0                      XOR EAX,EAX
00533eb6  0bc1                      OR EAX,ECX
00533eb8  897c244c                  MOV dword ptr [ESP + 0x4c],EDI
00533ebc  0bc6                      OR EAX,ESI
00533ebe  8bcf                      MOV ECX,EDI
00533ec0  6a00                      PUSH 0x0
00533ec2  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
00533ec6  8d44242c                  LEA EAX,[ESP + 0x2c]
00533eca  6a01                      PUSH 0x1
00533ecc  50                        PUSH EAX
00533ecd  e89e9e1700                CALL 0x006add70
00533ed2  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00533ed8  8bf1                      MOV ESI,ECX
00533eda  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00533ee0  8bda                      MOV EBX,EDX
00533ee2  8bc6                      MOV EAX,ESI
00533ee4  895c2414                  MOV dword ptr [ESP + 0x14],EBX
00533ee8  2500080000                AND EAX,0x800
00533eed  83c800                    OR EAX,0x0
00533ef0  0f84cd000000              JZ 0x00533fc3
00533ef6  83bf3002000003            CMP dword ptr [EDI + 0x230],0x3
00533efd  0f8dc0000000              JGE 0x00533fc3
00533f03  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00533f06  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00533f0e  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00533f16  89442428                  MOV dword ptr [ESP + 0x28],EAX
00533f1a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00533f1d  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00533f21  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00533f24  89442430                  MOV dword ptr [ESP + 0x30],EAX
00533f28  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00533f2b  89442434                  MOV dword ptr [ESP + 0x34],EAX
00533f2f  8bc1                      MOV EAX,ECX
00533f31  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00533f37  2500010000                AND EAX,0x100
00533f3c  83c800                    OR EAX,0x0
00533f3f  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00533f47  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00533f4d  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00533f55  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00533f5b  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
00533f61  7407                      JZ 0x00533f6a
00533f63  be01000000                MOV ESI,0x1
00533f68  eb02                      JMP 0x00533f6c
00533f6a  33f6                      XOR ESI,ESI
00533f6c  81e100000020              AND ECX,0x20000000
00533f72  83c900                    OR ECX,0x0
00533f75  7407                      JZ 0x00533f7e
00533f77  b902000000                MOV ECX,0x2
00533f7c  eb02                      JMP 0x00533f80
00533f7e  33c9                      XOR ECX,ECX
00533f80  81e200004000              AND EDX,0x400000
00533f86  33c0                      XOR EAX,EAX
00533f88  0bc2                      OR EAX,EDX
00533f8a  7407                      JZ 0x00533f93
00533f8c  b804000000                MOV EAX,0x4
00533f91  eb02                      JMP 0x00533f95
00533f93  33c0                      XOR EAX,EAX
00533f95  0bc1                      OR EAX,ECX
00533f97  897c244c                  MOV dword ptr [ESP + 0x4c],EDI
00533f9b  0bc6                      OR EAX,ESI
00533f9d  8bcf                      MOV ECX,EDI
00533f9f  6a00                      PUSH 0x0
00533fa1  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
00533fa5  8d44242c                  LEA EAX,[ESP + 0x2c]
00533fa9  6a01                      PUSH 0x1
00533fab  50                        PUSH EAX
00533fac  e8efa01700                CALL 0x006ae0a0
00533fb1  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00533fb7  8bf1                      MOV ESI,ECX
00533fb9  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00533fbf  89542414                  MOV dword ptr [ESP + 0x14],EDX
00533fc3  81e600000001              AND ESI,0x1000000
00533fc9  83ce00                    OR ESI,0x0
00533fcc  0f84bd000000              JZ 0x0053408f
00533fd2  83bf3c02000003            CMP dword ptr [EDI + 0x23c],0x3
00533fd9  0f8db0000000              JGE 0x0053408f
00533fdf  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00533fe2  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00533fea  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00533ff2  89442428                  MOV dword ptr [ESP + 0x28],EAX
00533ff6  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00533ff9  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00533ffd  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00534000  89442430                  MOV dword ptr [ESP + 0x30],EAX
00534004  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00534007  89442434                  MOV dword ptr [ESP + 0x34],EAX
0053400b  8bc1                      MOV EAX,ECX
0053400d  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00534013  2500010000                AND EAX,0x100
00534018  83c800                    OR EAX,0x0
0053401b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00534023  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00534029  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00534031  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00534037  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
0053403d  7407                      JZ 0x00534046
0053403f  be01000000                MOV ESI,0x1
00534044  eb02                      JMP 0x00534048
00534046  33f6                      XOR ESI,ESI
00534048  81e100000020              AND ECX,0x20000000
0053404e  83c900                    OR ECX,0x0
00534051  7407                      JZ 0x0053405a
00534053  b902000000                MOV ECX,0x2
00534058  eb02                      JMP 0x0053405c
0053405a  33c9                      XOR ECX,ECX
0053405c  81e200004000              AND EDX,0x400000
00534062  33c0                      XOR EAX,EAX
00534064  0bc2                      OR EAX,EDX
00534066  7407                      JZ 0x0053406f
00534068  b804000000                MOV EAX,0x4
0053406d  eb02                      JMP 0x00534071
0053406f  33c0                      XOR EAX,EAX
00534071  0bc1                      OR EAX,ECX
00534073  897c244c                  MOV dword ptr [ESP + 0x4c],EDI
00534077  6a00                      PUSH 0x0
00534079  0bc6                      OR EAX,ESI
0053407b  8bcf                      MOV ECX,EDI
0053407d  6a00                      PUSH 0x0
0053407f  89442450                  MOV dword ptr [ESP + 0x50],EAX
00534083  8d442430                  LEA EAX,[ESP + 0x30]
00534087  6a01                      PUSH 0x1
00534089  50                        PUSH EAX
0053408a  e8811b1800                CALL 0x006b5c10
0053408f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00534095  83f804                    CMP EAX,0x4
00534098  0f857b020000              JNZ 0x00534319
0053409e  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005340a4  660f6ec8                  MOVD XMM1,EAX
005340a8  0f5bc9                    CVTDQ2PS XMM1,XMM1
005340ab  f30f5e0db4a9ba00          DIVSS XMM1,dword ptr [0x00baa9b4]
005340b3  f30f590da4a2ba00          MULSS XMM1,dword ptr [0x00baa2a4]
005340bb  0f2f0da4a2ba00            COMISS XMM1,dword ptr [0x00baa2a4]
005340c2  f30f118f5c010000          MOVSS dword ptr [EDI + 0x15c],XMM1
005340ca  760a                      JBE 0x005340d6
005340cc  c7875c010000dedddd3e      MOV dword ptr [EDI + 0x15c],0x3eddddde
005340d6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005340dd  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005340e5  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
005340eb  7471                      JZ 0x0053415e
005340ed  8d8f14040000              LEA ECX,[EDI + 0x414]
005340f3  83f85a                    CMP EAX,0x5a
005340f6  7c0a                      JL 0x00534102
005340f8  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
00534100  eb08                      JMP 0x0053410a
00534102  f30f100554a5ba00          MOVSS XMM0,dword ptr [0x00baa554]
0053410a  6a01                      PUSH 0x1
0053410c  6a00                      PUSH 0x0
0053410e  51                        PUSH ECX
0053410f  f30f110424                MOVSS dword ptr [ESP],XMM0
00534114  6840b6c700                PUSH 0xc7b640
00534119  e8a2f22a00                CALL 0x007e33c0
0053411e  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00534124  83f8ff                    CMP EAX,-0x1
00534127  0f842a010000              JZ 0x00534257
0053412d  51                        PUSH ECX
0053412e  57                        PUSH EDI
0053412f  50                        PUSH EAX
00534130  6a09                      PUSH 0x9
00534132  e8d91f4200                CALL 0x00956110
00534137  84c0                      TEST AL,AL
00534139  0f8418010000              JZ 0x00534257
0053413f  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00534147  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0053414f  2bc8                      SUB ECX,EAX
00534151  03c9                      ADD ECX,ECX
00534153  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00534159  e9f9000000                JMP 0x00534257
0053415e  83f84e                    CMP EAX,0x4e
00534161  0f8df0000000              JGE 0x00534257
00534167  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053416d  25000a0001                AND EAX,0x1000a00
00534172  83c800                    OR EAX,0x0
00534175  0f84a5000000              JZ 0x00534220
0053417b  51                        PUSH ECX
0053417c  8d442424                  LEA EAX,[ESP + 0x24]
00534180  c7042400000000            MOV dword ptr [ESP],0x0
00534187  50                        PUSH EAX
00534188  8bcf                      MOV ECX,EDI
0053418a  e8b1aa1800                CALL 0x006bec40
0053418f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00534193  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00534198  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005341a0  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
005341a8  0f28d8                    MOVAPS XMM3,XMM0
005341ab  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
005341b1  0f28ca                    MOVAPS XMM1,XMM2
005341b4  f30f59d8                  MULSS XMM3,XMM0
005341b8  f30f59ca                  MULSS XMM1,XMM2
005341bc  f30f1154241c              MOVSS dword ptr [ESP + 0x1c],XMM2
005341c2  f30f58d9                  ADDSS XMM3,XMM1
005341c6  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
005341cd  0f8684000000              JBE 0x00534257
005341d3  0f28c3                    MOVAPS XMM0,XMM3
005341d6  e87518f0ff                CALL 0x00435a50
005341db  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005341e2  761e                      JBE 0x00534202
005341e4  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005341ec  f30f5ec8                  DIVSS XMM1,XMM0
005341f0  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
005341f6  f30f59c1                  MULSS XMM0,XMM1
005341fa  f30f594c241c              MULSS XMM1,dword ptr [ESP + 0x1c]
00534200  eb0c                      JMP 0x0053420e
00534202  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00534208  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
0053420e  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00534216  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0053421e  eb27                      JMP 0x00534247
00534220  8bcf                      MOV ECX,EDI
00534222  e819a61800                CALL 0x006be840
00534227  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0053422f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00534237  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0053423f  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00534247  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0053424f  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00534257  83bf100400005a            CMP dword ptr [EDI + 0x410],0x5a
0053425e  0f8c38050000              JL 0x0053479c
00534264  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0053426a  83f812                    CMP EAX,0x12
0053426d  750a                      JNZ 0x00534279
0053426f  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00534277  eb0d                      JMP 0x00534286
00534279  83f813                    CMP EAX,0x13
0053427c  750e                      JNZ 0x0053428c
0053427e  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00534286  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0053428c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00534292  8d4c241c                  LEA ECX,[ESP + 0x1c]
00534296  c744241c02000000          MOV dword ptr [ESP + 0x1c],0x2
0053429e  e8dd244200                CALL 0x00956780
005342a3  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
005342a9  83ec08                    SUB ESP,0x8
005342ac  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005342b4  f30f110424                MOVSS dword ptr [ESP],XMM0
005342b9  6a00                      PUSH 0x0
005342bb  6a02                      PUSH 0x2
005342bd  51                        PUSH ECX
005342be  c704240000803f            MOV dword ptr [ESP],0x3f800000
005342c5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005342cb  ff742430                  PUSH dword ptr [ESP + 0x30]
005342cf  e85c993f00                CALL 0x0092dc30
005342d4  6a01                      PUSH 0x1
005342d6  68c8e0b100                PUSH 0xb1e0c8
005342db  8d4f48                    LEA ECX,[EDI + 0x48]
005342de  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
005342e8  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005342f2  e8d962edff                CALL 0x0040a5d0
005342f7  84c0                      TEST AL,AL
005342f9  740f                      JZ 0x0053430a
005342fb  8d4f78                    LEA ECX,[EDI + 0x78]
005342fe  e8ad5eedff                CALL 0x0040a1b0
00534303  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0053430a  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00534314  e983040000                JMP 0x0053479c
00534319  83f807                    CMP EAX,0x7
0053431c  0f85c8010000              JNZ 0x005344ea
00534322  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00534326  0f8449010000              JZ 0x00534475
0053432c  6874d5b100                PUSH 0xb1d574
00534331  8d4f78                    LEA ECX,[EDI + 0x78]
00534334  e8976aedff                CALL 0x0040add0
00534339  84c0                      TEST AL,AL
0053433b  0f8400010000              JZ 0x00534441
00534341  51                        PUSH ECX
00534342  c704240000803f            MOV dword ptr [ESP],0x3f800000
00534349  6a00                      PUSH 0x0
0053434b  6a02                      PUSH 0x2
0053434d  51                        PUSH ECX
0053434e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00534355  8bcf                      MOV ECX,EDI
00534357  6a30                      PUSH 0x30
00534359  e842281a00                CALL 0x006d6ba0
0053435e  817f281f010000            CMP dword ptr [EDI + 0x28],0x11f
00534365  0f85d6000000              JNZ 0x00534441
0053436b  e8f0ab1b00                CALL 0x006eef60
00534370  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00534378  8d9f3c030000              LEA EBX,[EDI + 0x33c]
0053437e  83e001                    AND EAX,0x1
00534381  83c003                    ADD EAX,0x3
00534384  660f6ec0                  MOVD XMM0,EAX
00534388  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053438c  c1e81f                    SHR EAX,0x1f
0053438f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00534398  660f5ac0                  CVTPD2PS XMM0,XMM0
0053439c  f30f5ec8                  DIVSS XMM1,XMM0
005343a0  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
005343a6  e8b5ab1b00                CALL 0x006eef60
005343ab  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005343b1  6a00                      PUSH 0x0
005343b3  50                        PUSH EAX
005343b4  6a00                      PUSH 0x0
005343b6  57                        PUSH EDI
005343b7  6840b6c700                PUSH 0xc7b640
005343bc  53                        PUSH EBX
005343bd  6a48                      PUSH 0x48
005343bf  68e8030000                PUSH 0x3e8
005343c4  e847a01c00                CALL 0x006fe410
005343c9  6a00                      PUSH 0x0
005343cb  68acd5c500                PUSH 0xc5d5ac
005343d0  68dcd5c500                PUSH 0xc5d5dc
005343d5  6a00                      PUSH 0x0
005343d7  50                        PUSH EAX
005343d8  e8d4c45b00                CALL 0x00af08b1
005343dd  8bd8                      MOV EBX,EAX
005343df  83c414                    ADD ESP,0x14
005343e2  8b8bbc030000              MOV ECX,dword ptr [EBX + 0x3bc]
005343e8  8db3bc030000              LEA ESI,[EBX + 0x3bc]
005343ee  85c9                      TEST ECX,ECX
005343f0  7414                      JZ 0x00534406
005343f2  8d442410                  LEA EAX,[ESP + 0x10]
005343f6  89742410                  MOV dword ptr [ESP + 0x10],ESI
005343fa  50                        PUSH EAX
005343fb  81c1cc030000              ADD ECX,0x3cc
00534401  e80aaef9ff                CALL 0x004cf210
00534406  56                        PUSH ESI
00534407  8bcf                      MOV ECX,EDI
00534409  893e                      MOV dword ptr [ESI],EDI
0053440b  e8e098f9ff                CALL 0x004cdcf0
00534410  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00534416  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
0053441e  f30f118374040000          MOVSS dword ptr [EBX + 0x474],XMM0
00534426  8d9f3c030000              LEA EBX,[EDI + 0x33c]
0053442c  f30f5844240c              ADDSS XMM0,dword ptr [ESP + 0xc]
00534432  0f2fc8                    COMISS XMM1,XMM0
00534435  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0053443b  0f8765ffffff              JA 0x005343a6
00534441  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00534445  742e                      JZ 0x00534475
00534447  6874d5b100                PUSH 0xb1d574
0053444c  8d4f78                    LEA ECX,[EDI + 0x78]
0053444f  e81c6aedff                CALL 0x0040ae70
00534454  84c0                      TEST AL,AL
00534456  740a                      JZ 0x00534462
00534458  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00534462  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00534466  740d                      JZ 0x00534475
00534468  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053446f  0f8527030000              JNZ 0x0053479c
00534475  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0053447f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00534489  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053448c  85f6                      TEST ESI,ESI
0053448e  744e                      JZ 0x005344de
00534490  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00534494  8bc6                      MOV EAX,ESI
00534496  7202                      JC 0x0053449a
00534498  8b06                      MOV EAX,dword ptr [ESI]
0053449a  b96811b600                MOV ECX,0xb61168
0053449f  90                        NOP
005344a0  8a10                      MOV DL,byte ptr [EAX]
005344a2  3a11                      CMP DL,byte ptr [ECX]
005344a4  751a                      JNZ 0x005344c0
005344a6  84d2                      TEST DL,DL
005344a8  7412                      JZ 0x005344bc
005344aa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005344ad  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005344b0  750e                      JNZ 0x005344c0
005344b2  83c002                    ADD EAX,0x2
005344b5  83c102                    ADD ECX,0x2
005344b8  84d2                      TEST DL,DL
005344ba  75e4                      JNZ 0x005344a0
005344bc  33c0                      XOR EAX,EAX
005344be  eb05                      JMP 0x005344c5
005344c0  1bc0                      SBB EAX,EAX
005344c2  83c801                    OR EAX,0x1
005344c5  85c0                      TEST EAX,EAX
005344c7  7515                      JNZ 0x005344de
005344c9  384634                    CMP byte ptr [ESI + 0x34],AL
005344cc  0f84ca020000              JZ 0x0053479c
005344d2  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005344d8  0f85be020000              JNZ 0x0053479c
005344de  6a01                      PUSH 0x1
005344e0  686811b600                PUSH 0xb61168
005344e5  e98b000000                JMP 0x00534575
005344ea  83f803                    CMP EAX,0x3
005344ed  0f85a6000000              JNZ 0x00534599
005344f3  83bf1004000032            CMP dword ptr [EDI + 0x410],0x32
005344fa  0f8e9c020000              JLE 0x0053479c
00534500  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0053450a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00534514  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00534517  85f6                      TEST ESI,ESI
00534519  7453                      JZ 0x0053456e
0053451b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053451f  8bc6                      MOV EAX,ESI
00534521  7202                      JC 0x00534525
00534523  8b06                      MOV EAX,dword ptr [ESI]
00534525  b9e4e0b100                MOV ECX,0xb1e0e4
0053452a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00534530  8a10                      MOV DL,byte ptr [EAX]
00534532  3a11                      CMP DL,byte ptr [ECX]
00534534  751a                      JNZ 0x00534550
00534536  84d2                      TEST DL,DL
00534538  7412                      JZ 0x0053454c
0053453a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053453d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00534540  750e                      JNZ 0x00534550
00534542  83c002                    ADD EAX,0x2
00534545  83c102                    ADD ECX,0x2
00534548  84d2                      TEST DL,DL
0053454a  75e4                      JNZ 0x00534530
0053454c  33c0                      XOR EAX,EAX
0053454e  eb05                      JMP 0x00534555
00534550  1bc0                      SBB EAX,EAX
00534552  83c801                    OR EAX,0x1
00534555  85c0                      TEST EAX,EAX
00534557  7515                      JNZ 0x0053456e
00534559  384634                    CMP byte ptr [ESI + 0x34],AL
0053455c  0f843a020000              JZ 0x0053479c
00534562  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00534568  0f852e020000              JNZ 0x0053479c
0053456e  6a01                      PUSH 0x1
00534570  68e4e0b100                PUSH 0xb1e0e4
00534575  8d4f48                    LEA ECX,[EDI + 0x48]
00534578  e85360edff                CALL 0x0040a5d0
0053457d  84c0                      TEST AL,AL
0053457f  0f8417020000              JZ 0x0053479c
00534585  8d4f78                    LEA ECX,[EDI + 0x78]
00534588  e8235cedff                CALL 0x0040a1b0
0053458d  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00534594  e903020000                JMP 0x0053479c
00534599  83f806                    CMP EAX,0x6
0053459c  7558                      JNZ 0x005345f6
0053459e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005345a2  7433                      JZ 0x005345d7
005345a4  6860d5b100                PUSH 0xb1d560
005345a9  8d4f78                    LEA ECX,[EDI + 0x78]
005345ac  e8bf68edff                CALL 0x0040ae70
005345b1  84c0                      TEST AL,AL
005345b3  7422                      JZ 0x005345d7
005345b5  f30f10875c010000          MOVSS XMM0,dword ptr [EDI + 0x15c]
005345bd  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005345c5  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005345cf  f30f11875c010000          MOVSS dword ptr [EDI + 0x15c],XMM0
005345d7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005345db  8d4f48                    LEA ECX,[EDI + 0x48]
005345de  0f8498010000              JZ 0x0053477c
005345e4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005345eb  0f85ab010000              JNZ 0x0053479c
005345f1  e986010000                JMP 0x0053477c
005345f6  83f810                    CMP EAX,0x10
005345f9  0f859d010000              JNZ 0x0053479c
005345ff  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00534605  838f6801000001            OR dword ptr [EDI + 0x168],0x1
0053460c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00534612  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00534618  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0053461f  898780030000              MOV dword ptr [EDI + 0x380],EAX
00534625  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00534628  85f6                      TEST ESI,ESI
0053462a  744a                      JZ 0x00534676
0053462c  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00534630  8bc6                      MOV EAX,ESI
00534632  7202                      JC 0x00534636
00534634  8b06                      MOV EAX,dword ptr [ESI]
00534636  b95409b600                MOV ECX,0xb60954
0053463b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00534640  8a10                      MOV DL,byte ptr [EAX]
00534642  3a11                      CMP DL,byte ptr [ECX]
00534644  751a                      JNZ 0x00534660
00534646  84d2                      TEST DL,DL
00534648  7412                      JZ 0x0053465c
0053464a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053464d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00534650  750e                      JNZ 0x00534660
00534652  83c002                    ADD EAX,0x2
00534655  83c102                    ADD ECX,0x2
00534658  84d2                      TEST DL,DL
0053465a  75e4                      JNZ 0x00534640
0053465c  33c0                      XOR EAX,EAX
0053465e  eb05                      JMP 0x00534665
00534660  1bc0                      SBB EAX,EAX
00534662  83c801                    OR EAX,0x1
00534665  85c0                      TEST EAX,EAX
00534667  750d                      JNZ 0x00534676
00534669  384634                    CMP byte ptr [ESI + 0x34],AL
0053466c  742a                      JZ 0x00534698
0053466e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00534674  7522                      JNZ 0x00534698
00534676  6a01                      PUSH 0x1
00534678  685409b600                PUSH 0xb60954
0053467d  8d4f48                    LEA ECX,[EDI + 0x48]
00534680  e84b5fedff                CALL 0x0040a5d0
00534685  84c0                      TEST AL,AL
00534687  740f                      JZ 0x00534698
00534689  8d4f78                    LEA ECX,[EDI + 0x78]
0053468c  e81f5bedff                CALL 0x0040a1b0
00534691  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00534698  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053469c  740d                      JZ 0x005346ab
0053469e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005346a5  0f85f1000000              JNZ 0x0053479c
005346ab  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005346b1  83a768010000fe            AND dword ptr [EDI + 0x168],0xfffffffe
005346b8  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
005346bf  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005346c5  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
005346cc  0f8585000000              JNZ 0x00534757
005346d2  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
005346d9  757c                      JNZ 0x00534757
005346db  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005346e1  33f6                      XOR ESI,ESI
005346e3  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
005346e9  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
005346ef  c1f802                    SAR EAX,0x2
005346f2  85c0                      TEST EAX,EAX
005346f4  7444                      JZ 0x0053473a
005346f6  56                        PUSH ESI
005346f7  e87431eeff                CALL 0x00417870
005346fc  83b89c18000000            CMP dword ptr [EAX + 0x189c],0x0
00534703  7e1b                      JLE 0x00534720
00534705  c6801004000001            MOV byte ptr [EAX + 0x410],0x1
0053470c  c7808801000004000000      MOV dword ptr [EAX + 0x188],0x4
00534716  c7809c18000000000000      MOV dword ptr [EAX + 0x189c],0x0
00534720  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00534726  46                        INC ESI
00534727  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
0053472d  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00534733  c1f802                    SAR EAX,0x2
00534736  3bf0                      CMP ESI,EAX
00534738  72bc                      JC 0x005346f6
0053473a  6aff                      PUSH -0x1
0053473c  6a00                      PUSH 0x0
0053473e  6a01                      PUSH 0x1
00534740  6aff                      PUSH -0x1
00534742  ffb1d0820100              PUSH dword ptr [ECX + 0x182d0]
00534748  c78118830100ffffffff      MOV dword ptr [ECX + 0x18318],0xffffffff
00534752  e869901c00                CALL 0x006fd7c0
00534757  f30f10875c010000          MOVSS XMM0,dword ptr [EDI + 0x15c]
0053475f  8d4f48                    LEA ECX,[EDI + 0x48]
00534762  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0053476a  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00534774  f30f11875c010000          MOVSS dword ptr [EDI + 0x15c],XMM0
0053477c  6a00                      PUSH 0x0
0053477e  68c8e0b100                PUSH 0xb1e0c8
00534783  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053478d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00534797  e8445fedff                CALL 0x0040a6e0
0053479c  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005347a3  0f84a2000000              JZ 0x0053484b
005347a9  817f281f010000            CMP dword ptr [EDI + 0x28],0x11f
005347b0  0f8595000000              JNZ 0x0053484b
005347b6  e8a5a71b00                CALL 0x006eef60
005347bb  8bd8                      MOV EBX,EAX
005347bd  83e301                    AND EBX,0x1
005347c0  83c302                    ADD EBX,0x2
005347c3  0f1f4000                  NOP dword ptr [EAX]
005347c7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
005347d0  a17816c700                MOV EAX,[0x00c71678]
005347d5  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005347db  e880a71b00                CALL 0x006eef60
005347e0  6a00                      PUSH 0x0
005347e2  6a00                      PUSH 0x0
005347e4  6a00                      PUSH 0x0
005347e6  660f6ec0                  MOVD XMM0,EAX
005347ea  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005347ee  c1e81f                    SHR EAX,0x1f
005347f1  51                        PUSH ECX
005347f2  8bce                      MOV ECX,ESI
005347f4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005347fd  8d873c030000              LEA EAX,[EDI + 0x33c]
00534803  660f5ac0                  CVTPD2PS XMM0,XMM0
00534807  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053480f  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
00534817  f30f110424                MOVSS dword ptr [ESP],XMM0
0053481c  50                        PUSH EAX
0053481d  8d442434                  LEA EAX,[ESP + 0x34]
00534821  50                        PUSH EAX
00534822  e8f9ec2d00                CALL 0x00813520
00534827  51                        PUSH ECX
00534828  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0053482f  6a00                      PUSH 0x0
00534831  ff7004                    PUSH dword ptr [EAX + 0x4]
00534834  ff30                      PUSH dword ptr [EAX]
00534836  8d873c030000              LEA EAX,[EDI + 0x33c]
0053483c  57                        PUSH EDI
0053483d  50                        PUSH EAX
0053483e  e80ddf1800                CALL 0x006c2750
00534843  83c418                    ADD ESP,0x18
00534846  83eb01                    SUB EBX,0x1
00534849  7585                      JNZ 0x005347d0
0053484b  5f                        POP EDI
0053484c  5e                        POP ESI
0053484d  5b                        POP EBX
0053484e  8be5                      MOV ESP,EBP
00534850  5d                        POP EBP
00534851  c3                        RET
