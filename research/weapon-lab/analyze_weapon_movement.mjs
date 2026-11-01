import fs from 'node:fs';
import path from 'node:path';
const root='research/weapon-lab/results';
const load=file=>JSON.parse(fs.readFileSync(path.join(root,file),'utf8'));
const baseline=load('weapon-movement-paired-final.json');
const supplements=load('weapon-movement-supplement.json');
const urn=load('urn-movement-clean-v2.json').cases[0];
const bomb=load('dr-fetus-movement-collision.json').cases[0];
const cases=baseline.cases.map(c=>c.name==='urn-of-souls'?urn:c.name==='dr-fetus'?bomb:
  ['bone-club','umbilical-whip'].includes(c.name)?supplements.cases.find(s=>s.name===c.name):c);
const labels={tears:'普通眼泪',brimstone:'硫磺火',knife:'妈刀','monstros-lung':'萌死戳的肺','tech-x':'科技 X',
  'chocolate-milk':'巧克力牛奶','cursed-eye':'诅咒之眼','c-section':'C Section',technology:'科技',
  'spirit-sword':'灵剑','dr-fetus':'胎儿博士','epic-fetus':'史诗胎儿博士',ludovico:'鲁多维科',
  'bone-club':'骨棒','umbilical-whip':'脐带鞭','notched-axe':'锯齿斧','urn-of-souls':'灵魂之瓮'};
const delta=(a,b)=>Math.hypot(a.x-b.x,a.y-b.y);
const rows=cases.map(c=>{
  if(!c.valid)throw Error(`Missing valid case: ${c.name}`);
  const row={name:c.name,label:labels[c.name],weapon_type:c.type,pairs:c.pairs.length,
    recorded_branch_frames:c.summary.recorded_branch_frames,identical_movement:c.identical_movement,
    max_position_delta:c.summary.max_position_delta,max_velocity_delta:c.summary.max_velocity_delta,
    maximum_speed_stat_delta:Math.max(...c.pairs.map(p=>p.max_speed_stat_delta)),run_directory:c.run_directory};
  if(c.charged)row.full_charge_cross_checks=c.pairs.filter(p=>p.phase==='release-vs-held-charge').map(p=>{
    const neutral=c.pairs.find(q=>q.phase==='start-shooting-or-charging'&&q.fire===p.fire&&
      q.move.moveX===p.move.moveX&&q.move.moveY===p.move.moveY).reference.samples;
    const held=p.reference.samples,released=p.attack.samples;
    return {fire:p.fire,move:p.move,same_start_position_and_velocity:delta(neutral[0].pos,held[0].pos)===0&&delta(neutral[0].vel,held[0].vel)===0,
      held_vs_neutral_max_position_delta:Math.max(...neutral.map((s,i)=>delta(s.pos,held[i].pos))),
      held_vs_neutral_max_velocity_delta:Math.max(...neutral.map((s,i)=>delta(s.vel,held[i].vel))),
      released_vs_neutral_max_position_delta:Math.max(...neutral.map((s,i)=>delta(s.pos,released[i].pos))),
      released_vs_neutral_max_velocity_delta:Math.max(...neutral.map((s,i)=>delta(s.vel,released[i].vel)))};
  });
  return row;
});
const collisionPair=bomb.pairs.find(p=>p.max_velocity_delta>0);
const firstCollision=collisionPair.attack.samples.findIndex((s,i)=>delta(s.vel,collisionPair.reference.samples[i].vel)>1e-5);
const collisionClock=collisionPair.attack.samples[firstCollision].clock;
const bombLog=fs.readFileSync(path.join(bomb.run_directory,'engine.log'),'utf8');
const collisionFrames=[...bombLog.matchAll(/Lua Debug: WM_BOMB_PLAYER (\d+)/g)].map(m=>Number(m[1]));
const urnStart=urn.pairs.filter(p=>p.phase==='start-shooting-or-charging'&&p.move.moveX===1&&p.move.moveY===0);
const analysis={created_utc:new Date().toISOString(),scope:'Native offline movement verification; no live-game controls or game-installation edits',
  weapon_types:15,configurations:cases.length,paired_comparisons:rows.reduce((n,r)=>n+r.pairs,0),
  recorded_branch_frames:rows.reduce((n,r)=>n+r.recorded_branch_frames,0),logic_fps:30,
  exactly_identical_configurations:rows.filter(r=>r.identical_movement).length,
  source_files:['weapon-movement-paired-final.json','weapon-movement-supplement.json','urn-movement-clean-v2.json','dr-fetus-movement-collision.json'],
  engine_wasm_sha256:baseline.engine_wasm_sha256,
  results:rows,
  brimstone_conclusion:'No movement reduction during initial charging, full-charge hold, or beam release in the tested original-engine configuration. Positions and velocities match the neutral movement trace exactly.',
  urn:{movement_speed_stat_changed:false,interpretation:'Directional recoil changes actual motion; no general charge/attack slowdown factor.',
    sample_window_logic_frames:20,moving_right:urnStart.map(p=>({shoot:p.fire,displacement_without_attack:p.displacement_reference,
      displacement_with_attack:p.displacement_attack,displacement_ratio:p.displacement_ratio,speed_stat_delta:p.max_speed_stat_delta}))},
  dr_fetus:{first_velocity_difference_sample:firstCollision,logic_clock:collisionClock,
    native_bomb_player_collision_callback_same_clock:collisionFrames.includes(collisionClock),
    collision_callback_frames:[...new Set(collisionFrames)],
    displacement_ratio:collisionPair.displacement_ratio,
    interpretation:'The velocity difference starts at an observed bomb/player collision. Other directions and the frames before contact match neutral movement.'},
  limits:['Empty ordinary-floor room; no enemy contact or melee hit recoil.','Baseline character stats, listed weapons only; not every item combination or terrain.','Per-branch samples cover 20 logic frames; long charge preparation and fully charged comparisons are also retained.','The failed/blocked setup attempts remain in the original reports and run logs.'],
  implementation_note:'The offline Notched Axe (type 11) uses the Bone weapon vtable, the same vtable as type 10. This test did not edit or validate the live Gamebot binary.',
  cleanup:{user_authorized:true,automatic_delete_completed:false,reason:'Execution environment rejected bulk and literal single-directory deletion with blocked by policy',manual_launcher:'D:/Isaac/research/weapon-lab/Run-Approved-Cleanup.cmd'}};
fs.writeFileSync(path.join(root,'weapon-movement-analysis.json'),JSON.stringify(analysis,null,2)+'\n');
const table=rows.map(r=>`| ${r.label} | ${r.weapon_type} | ${r.pairs} | ${r.identical_movement?'位移、速度逐帧完全相同':r.name==='dr-fetus'?'追上自己炸弹时发生碰撞':'喷火存在方向性反冲'} | ${r.maximum_speed_stat_delta} |`).join('\n');
const urnToward=urnStart.find(p=>p.fire==='right'),urnAway=urnStart.find(p=>p.fire==='left');
const md=`# 武器攻击与移动速度：离线验证\n\n`+
`硫磺火的蓄力、蓄满保持和释放光束都没有测到移动减速。妈刀、科技 X、萌死戳的肺、巧克力牛奶、诅咒之眼等也没有测到减速。\n\n`+
`本次在隔离的原版引擎中验证了 15 类武器、17 个配置，共 136 组配对、5,440 个记录逻辑帧。每组从同一个完整内存快照出发，移动输入相同，只改变射击输入。射击方向包含向左、向右，移动包含水平和朝房间内部的对角线；每个分支为 20 逻辑帧。15 个配置的位移和速度逐帧误差均为 0。\n\n`+
`所有已通过样本都没有敌人接触、墙边阻挡或掉血。对蓄力武器还比较了“蓄满保持/释放”与起点位置、速度相同的“不射击”轨迹，避免把两个同样较慢的状态误判为正常。硫磺火这些跨阶段比较的位移和速度误差也都是 0。\n\n`+
`| 武器/配置 | 原生类型 | 配对数 | 结果 | 移速属性差值 |\n| --- | ---: | ---: | --- | ---: |\n${table}\n\n`+
`## 两种实际移动差异\n\n`+
`灵魂之瓮的喷火会改变实际运动。向右移动并向右喷火，20 逻辑帧的位移是对应不攻击分支的 ${(urnToward.displacement_ratio*100).toFixed(2)}%；向右移动、向左喷火则为 ${(urnAway.displacement_ratio*100).toFixed(2)}%。移速属性未改变，记录中实际生成了 2.46 火焰。这是短时间运动对照，不是固定减速倍率。\n\n`+
`胎儿博士向右发射炸弹并持续向右移动时，角色在逻辑帧 ${collisionClock} 追上自己的炸弹，速度开始出现差异；同一帧原生 MC_PRE_BOMB_COLLISION 回调确认与玩家碰撞。碰撞前的移动与不攻击分支完全相同。其他不接触炸弹的方向对照也完全一致。\n\n`+
`## 对攻击策略的结论\n\n`+
`普通眼泪和这些已测的蓄力武器可以边躲边攻击或蓄力，无需为恢复移速主动停火。硫磺火释放后仍需要按持续伤害窗口安排下一次蓄力。灵魂之瓮的方向性反冲、炸弹碰撞和近战命中反冲应分别处理。当前实时专版没有写死硫磺火减速系数，本轮没有修改实时程序。\n\n`+
`## 原始记录与范围\n\n`+
`- [汇总数据](weapon-movement-analysis.json)\n- [主要逐帧样本](weapon-movement-paired-final.json)\n- [骨棒与脐带鞭补测](weapon-movement-supplement.json)\n- [灵魂之瓮补测](urn-movement-clean-v2.json)\n- [胎儿博士与碰撞回调](dr-fetus-movement-collision.json)\n\n`+
`结论覆盖所列配置的普通地面、无敌人接触状态；没有穷举全部道具组合、特殊地形或近战命中反冲。武器类型与输入均在原版引擎中实际观察，本轮没有连接或控制真实游戏。\n\n`+
`附带观察：离线锯齿斧（类型 11）复用骨棒（类型 10）的武器类；该识别差异已记录，本轮未作为实时内存适配验收。\n\n`+
`## 本轮临时资源\n\n`+
`本轮新建资源副本导致 D 盘剩余空间不足。用户已批准清理列出的 20 个 instance/resources 目录，但执行环境继续以 blocked by policy 拦截删除，资源尚未自动清理。日志、配置、存档和测试结果均保留。可手动运行 [Run-Approved-Cleanup.cmd](../Run-Approved-Cleanup.cmd)，或先查看 [清理脚本](../Clean-This-Movement-Test.ps1)；目标清单见 [cleanup plan](movement-test-resource-cleanup-plan.json)。\n`;
fs.writeFileSync(path.join(root,'武器移动速度验证.md'),md);
console.log(JSON.stringify({weapon_types:analysis.weapon_types,configurations:analysis.configurations,paired_comparisons:analysis.paired_comparisons,
  recorded_branch_frames:analysis.recorded_branch_frames,exactly_identical_configurations:analysis.exactly_identical_configurations,
  brimstone:rows.find(r=>r.name==='brimstone'),urn:analysis.urn,dr_fetus:analysis.dr_fetus,report:path.resolve(root,'武器移动速度验证.md')},null,2));
