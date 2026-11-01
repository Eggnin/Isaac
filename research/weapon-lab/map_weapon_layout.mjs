// Read-only PE RTTI and trivial getter extraction for the supported game build.
import fs from 'node:fs';
import crypto from 'node:crypto';
const file=process.argv[2]??'D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe';
const b=fs.readFileSync(file),pe=b.readUInt32LE(0x3c),opt=pe+24,base=b.readUInt32LE(opt+28);
const sh=opt+b.readUInt16LE(pe+20),sections=[];
for(let i=0;i<b.readUInt16LE(pe+6);i++) {const p=sh+i*40;sections.push({rva:b.readUInt32LE(p+12),raw:b.readUInt32LE(p+20),size:b.readUInt32LE(p+16)});}
function va(p) {const s=sections.find(s=>p>=s.raw&&p<s.raw+s.size);return s?base+s.rva+p-s.raw:base+p;}
function raw(v) {const r=v-base,s=sections.find(s=>r>=s.rva&&r<s.rva+s.size);if(!s)throw Error('Unmapped VA');return s.raw+r-s.rva;}
const types={Tears:1,Brimstone:2,Laser:3,Knife:4,Bombs:5,Rockets:6,MonstrosLung:7,Ludovico:8,TechX:9,Bone:10,Deathmatch:11,UrnOfSouls:12,SpiritSword:13,Fetus:14,UmbilicalWhip:15};
const classes=[];
for(let p=0;(p=b.indexOf(Buffer.from('.?AVWeapon_'),p))>=0;) {
  const end=b.indexOf(0,p),name=b.toString('ascii',p,end),td=va(p-8),loc=[];
  for(let q=0;q<b.length-20;q+=4)if(b.readUInt32LE(q+12)===td&&b.readUInt32LE(q)===0&&b.readUInt32LE(q+4)===0)loc.push(va(q));
  for(let q=0;q<b.length-8;q+=4)if(loc.includes(b.readUInt32LE(q))) {
    const getter=raw(b.readUInt32LE(q+4+10*4)),code=b.subarray(getter,getter+16);
    let main_entity_offset=null;
    if(code[0]===0x8b&&code[1]===0x41&&code[3]===0xc3)main_entity_offset=code[2];
    if(code[0]===0x8b&&code[1]===0x81&&code[6]===0xc3)main_entity_offset=code.readUInt32LE(2);
    classes.push({type:types[name.match(/Weapon_([^@]+)/)[1]],name,vtable_rva:'0x'+(va(q+4)-base).toString(16),main_entity_offset,getter:code.toString('hex')});
  }
  p=end+1;
}
const inventorySig=Buffer.from('558bec83e4f883ec0c53568b75','hex');
let inventory=null;
for(let p=0;(p=b.indexOf(inventorySig,p))>=0;p++)if(b[p+inventorySig.length+1]===0x8b&&b[p+inventorySig.length+2]===0xd9) {
  const sequence=b.subarray(p,p+64),mov=sequence.indexOf(Buffer.from('8b83','hex'));
  if(mov>=0&&sequence[mov+6]===0x2b&&sequence[mov+7]===0x83)inventory={function_rva:'0x'+(va(p)-base).toString(16),begin_offset:'0x'+sequence.readUInt32LE(mov+8).toString(16),end_offset:'0x'+sequence.readUInt32LE(mov+2).toString(16),instructions:sequence.toString('hex')};
}
const result={game_sha256:crypto.createHash('sha256').update(b).digest('hex'),method:'Read-only PE RTTI, trivial GetMainEntity getters, and GetCollectibleNum vector loads; no game execution',player_collectible_counts:inventory,classes:classes.sort((a,b)=>a.type-b.type)};
const out=new URL('./weapon-layout-j460.json',import.meta.url);fs.writeFileSync(out,JSON.stringify(result,null,2)+'\n');
console.log(JSON.stringify(result,null,2));
