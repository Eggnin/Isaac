// Reuse existing source-linked native emissions; no additional engine episodes.
import assert from 'node:assert/strict';
import {readFileSync,writeFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
const source='research/monster-projectile-burst-classification-current-20261030.json';
const patterns='data/mechanisms/gamebot_monster_geometry_patterns.json';
const bytes=readFileSync(source);
const rows=JSON.parse(bytes).results.find(r=>r.identity==='879.0.0').observations;
const rules=JSON.parse(readFileSync(patterns,'utf8')).rules.filter(r=>r.target_identity==='879.0.0'&&r.pattern==='stream');
const groups=new Map();
for(const row of rows) {
  const rule=rules.find(r=>r.source_state===row.source_state&&r.source_animation===row.source_animation&&r.source_ai_i2===row.source_ai_i2);
  assert.ok(rule,`Missing gate at ${row.frame}`);
  assert.ok(row.source_animation_frame>=rule.trigger_animation_frame_min&&row.source_animation_frame<=rule.trigger_animation_frame_max);
  assert.ok(row.speed_min>=rule.speed_min-1e-3&&row.speed_max<=rule.speed+1e-3);
  assert.ok(row.center_to_source<=rule.radius-5,'Spawn displacement exceeds padded projectile radius');
  for(const angle of row.angles) {
    const delta=((angle-rule.phase_degrees+540)%360)-180;
    assert.ok(Math.abs(delta)<=rule.phase_uncertainty_degrees+1e-3,`Angle outside envelope: ${delta}`);
  }
  const key=`${row.source_animation}|${row.source_ai_i2}`;
  const group=groups.get(key)??{animation:row.source_animation,ai_i2:row.source_ai_i2,emissions:0,seeds:new Set()};
  group.emissions++;group.seeds.add(row.seed);groups.set(key,group);
}
const report={source,source_sha256:createHash('sha256').update(bytes).digest('hex'),
  ai_source:'research/ai-recovery/ghidra-export/AI_00563da0_00563da0.c',
  patterns_sha256:createHash('sha256').update(readFileSync(patterns)).digest('hex'),
  target:'879.0.0',rules:rules.length,emissions:rows.length,seeds:[...new Set(rows.map(r=>r.seed))],
  coverage_pass:true,independent_collision_oracle:false,gameplay_evidence:false,
  groups:[...groups.values()].map(g=>({...g,seeds:[...g.seeds]}))};
writeFileSync('validation/directional-stream-existing-evidence-20261030.json',JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify({rules:report.rules,emissions:report.emissions,seeds:report.seeds,coverage_pass:true}));
