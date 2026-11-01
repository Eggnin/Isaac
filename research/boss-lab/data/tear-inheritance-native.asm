007aaea0 push ebp
007aaea1 mov ebp, esp
007aaea3 and esp, 0xfffffff8
007aaea6 sub esp, 0x18
007aaea9 cmp byte ptr [ebp + 0x10], 0
007aaead push esi
007aaeae push edi
007aaeaf mov esi, ecx
007aaeb1 jne 0x7aaf4a
007aaeb7 push 0
007aaeb9 push 0x18a
007aaebe call 0x7706e0
007aaec3 test al, al
007aaec5 je 0x7aaed0
007aaec7 cmp dword ptr [esi + 0x140c], 0
007aaece jne 0x7aaf26
007aaed0 movss xmm0, dword ptr [esi + 0x164c]
007aaed8 ucomiss xmm0, dword ptr [0xc7b640]
007aaedf lahf 
007aaee0 test ah, 0x44
007aaee3 jp 0x7aaefe
007aaee5 movss xmm0, dword ptr [esi + 0x1650]
007aaeed movss xmm1, dword ptr [0xc7b644]
007aaef5 ucomiss xmm0, xmm1
007aaef8 lahf 
007aaef9 test ah, 0x44
007aaefc jnp 0x7aaf52
007aaefe push 0x145
007aaf03 lea ecx, [esi + 0x1508]
007aaf09 call 0x9305f0
007aaf0e test al, al
007aaf10 jne 0x7aaf26
007aaf12 push 0x2d9
007aaf17 lea ecx, [esi + 0x1508]
007aaf1d call 0x9305f0
007aaf22 test al, al
007aaf24 je 0x7aaf4a
007aaf26 mov eax, dword ptr [ebp + 8]
007aaf29 movss xmm0, dword ptr [0xc7b640]
007aaf31 movss dword ptr [eax], xmm0
007aaf35 movss xmm0, dword ptr [0xc7b644]
007aaf3d movss dword ptr [eax + 4], xmm0
007aaf42 pop edi
007aaf43 pop esi
007aaf44 mov esp, ebp
007aaf46 pop ebp
007aaf47 ret 0xc
007aaf4a movss xmm1, dword ptr [0xc7b644]
007aaf52 movss xmm2, dword ptr [esi + 0x1660]
007aaf5a movss xmm3, dword ptr [esi + 0x1664]
007aaf62 mov esi, dword ptr [ebp + 0xc]
007aaf65 mulss xmm2, dword ptr [0xbaa304]
007aaf6d mulss xmm3, dword ptr [0xbaa304]
007aaf75 movss xmm0, dword ptr [esi]
007aaf79 addss xmm2, xmm2
007aaf7d ucomiss xmm0, dword ptr [0xc7b640]
007aaf84 addss xmm3, xmm3
007aaf88 movss dword ptr [esp + 0x18], xmm2
007aaf8e lahf 
007aaf8f movss dword ptr [esp + 0x1c], xmm3
007aaf95 test ah, 0x44
007aaf98 jp 0x7aafac
007aaf9a movss xmm0, dword ptr [esi + 4]
007aaf9f ucomiss xmm0, xmm1
007aafa2 lahf 
007aafa3 test ah, 0x44
007aafa6 jnp 0x7ab0bd
007aafac movss xmm1, dword ptr [esi]
007aafb0 movss xmm2, dword ptr [esi + 4]
007aafb5 movaps xmm0, xmm1
007aafb8 mulss xmm0, xmm1
007aafbc movss dword ptr [esp + 0xc], xmm1
007aafc2 movaps xmm1, xmm2
007aafc5 mulss xmm1, xmm2
007aafc9 movss dword ptr [esp + 0x10], xmm2
007aafcf addss xmm0, xmm1
007aafd3 call 0x435a50
007aafd8 comiss xmm0, dword ptr [0xba9fe4]
007aafdf jbe 0x7ab00a
007aafe1 movss xmm1, dword ptr [0xbaa454]
007aafe9 divss xmm1, xmm0
007aafed movss xmm0, dword ptr [esi]
007aaff1 mulss xmm0, xmm1
007aaff5 movss dword ptr [esp + 0xc], xmm0
007aaffb movss xmm0, dword ptr [esi + 4]
007ab000 mulss xmm0, xmm1
007ab004 movss dword ptr [esp + 0x10], xmm0
007ab00a movss xmm1, dword ptr [esi]
007ab00e movss xmm2, dword ptr [esi + 4]
007ab013 movaps xmm0, xmm1
007ab016 mulss xmm0, xmm1
007ab01a movss dword ptr [esp + 0x14], xmm1
007ab020 movaps xmm1, xmm2
007ab023 mulss xmm1, xmm2
007ab027 movss dword ptr [esp + 8], xmm2
007ab02d addss xmm0, xmm1
007ab031 call 0x435a50
007ab036 xorps xmm6, xmm6
007ab039 comiss xmm0, xmm6
007ab03c jbe 0x7ab063
007ab03e movss xmm2, dword ptr [0xbaa454]
007ab046 divss xmm2, xmm0
007ab04a movss xmm1, dword ptr [esi + 4]
007ab04f movss xmm0, dword ptr [esi]
007ab053 mulss xmm1, xmm2
007ab057 mulss xmm0, xmm2
007ab05b movss dword ptr [esp + 8], xmm1
007ab061 jmp 0x7ab069
007ab063 movss xmm0, dword ptr [esp + 0x14]
007ab069 movss xmm2, dword ptr [esp + 0x18]
007ab06f movss xmm3, dword ptr [esp + 0x1c]
007ab075 movaps xmm1, xmm2
007ab078 movss xmm4, dword ptr [esp + 0xc]
007ab07e movss xmm5, dword ptr [esp + 0x10]
007ab084 mulss xmm1, xmm0
007ab088 movaps xmm0, xmm3
007ab08b mulss xmm0, dword ptr [esp + 8]
007ab091 addss xmm1, xmm0
007ab095 mulss xmm4, xmm1
007ab099 mulss xmm5, xmm1
007ab09d movaps xmm0, xmm4
007ab0a0 mulss xmm0, dword ptr [esi]
007ab0a4 movaps xmm1, xmm5
007ab0a7 mulss xmm1, dword ptr [esi + 4]
007ab0ac addss xmm1, xmm0
007ab0b0 comiss xmm6, xmm1
007ab0b3 jbe 0x7ab0bd
007ab0b5 subss xmm2, xmm4
007ab0b9 subss xmm3, xmm5
007ab0bd mov eax, dword ptr [ebp + 8]
007ab0c0 pop edi
007ab0c1 pop esi
007ab0c2 movss dword ptr [eax], xmm2
007ab0c6 movss dword ptr [eax + 4], xmm3
007ab0cb mov esp, ebp
007ab0cd pop ebp
007ab0ce ret 0xc
007ab0d1 int3 
007ab0d2 int3 
007ab0d3 int3 
007ab0d4 int3 
007ab0d5 int3 
007ab0d6 int3 
007ab0d7 int3 
007ab0d8 int3 
007ab0d9 int3 
007ab0da int3 
007ab0db int3 
007ab0dc int3 
007ab0dd int3 
007ab0de int3 
007ab0df int3 