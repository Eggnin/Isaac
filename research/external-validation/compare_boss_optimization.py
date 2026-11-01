"""Compare frozen C++ policies with identical native scenes and complete assets."""
from pathlib import Path
import csv
import json
import sys

before_dir, after_dir, output = map(Path, sys.argv[1:4])
before = json.loads((before_dir / 'report.json').read_text(encoding='utf-8'))
after = json.loads((after_dir / 'report.json').read_text(encoding='utf-8'))
output.mkdir(parents=True, exist_ok=True)
guards = {'20.0.0','62.0.0','68.0.0','273.0.0','407.0.0','412.0.0'}
by = lambda r: {c['identity']:c for c in r['cases'] if c['status']=='executed'}
b, a = by(before), by(after)
common = sorted(b.keys() & a.keys(), key=lambda k: tuple(map(int,k.split('.'))))
same_assets = (before['provenance']['semantics_sha256'] == after['provenance']['semantics_sha256']
               and before['provenance']['geometry_files'] == after['provenance']['geometry_files'])
assert same_assets, 'A/B runtime assets differ'
assert before['seed'] == after['seed'] and before['seconds_per_case'] == after['seconds_per_case'] == 60
rows=[]
for k in common:
    old, new = b[k], a[k]
    assert old['scenario']['commands'] == new['scenario']['commands']
    assert old['initial']['health'] == new['initial']['health'] == 6
    assert all(c['damage_half_hearts'] == c['native_damage_half_hearts']
               and c['hurt_events'] == c['native_hurt_events'] for c in [old,new])
    rows.append({'identity':k,'name':new['name'],'group':'guard' if k in guards else 'target',
        'scenario':new['scenario']['kind'],
        'before_half_hearts':old['damage_half_hearts'],'after_half_hearts':new['damage_half_hearts'],
        'before_hits':old['hurt_events'],'after_hits':new['hurt_events'],
        'before_death':old['dead'],'after_death':new['dead'],
        'before_clear':old['cleared'],'after_clear':new['cleared'],
        'before_seconds':old['seconds'],'after_seconds':new['seconds'],
        'damage_reduction':old['damage_half_hearts']-new['damage_half_hearts']})
def stats(group):
    r=[c for c in rows if c['group']==group]
    return {'cases':len(r),
        **{f'{prefix}_{metric}':sum(c[f'{prefix}_{field}'] for c in r)
           for prefix in ['before','after'] for metric,field in
           [('half_hearts','half_hearts'),('hits','hits'),('deaths','death'),('clears','clear'),('seconds','seconds')]},
        'improved':sum(c['damage_reduction']>0 for c in r),
        'unchanged':sum(c['damage_reduction']==0 for c in r),
        'regressed':sum(c['damage_reduction']<0 for c in r)}
targets, control = stats('target'), stats('guard')
complete = before['status']==after['status']=='complete'
stopped = any(r['status']=='stopped_by_user' for r in [before,after])
status = 'stopped_by_user' if stopped else 'complete' if complete else 'running'
excluded = sorted((b.keys() | a.keys())-set(common), key=lambda k: tuple(map(int,k.split('.'))))
checks={'same_complete_runtime_assets':same_assets,'same_seed_and_duration':True,
    'same_native_scene_commands':True,'native_damage_and_hits_agree':True,
    'every_requested_case_measured':len(common)==before['requested']==after['requested'],
    'no_scene_or_execution_errors':not any(c['status']=='error' for r in [before,after] for c in r['cases'])}
result={'status':status,'complete':complete,'excluded_unpaired':excluded,'seed':after['seed'],'targets':targets,'guards':control,'checks':checks,
        'before_report':str(before_dir/'report.json'),'after_report':str(after_dir/'report.json'),'rows':rows}
(output/'comparison.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
if rows:
    with (output/'comparison.csv').open('w',encoding='utf-8-sig',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
lines=['# Boss高风险场景：策略改前改后对照','',
    f"状态：{'按用户要求停止后续测试，仅统计已完成配对' if stopped else '完成' if complete else '运行中'}。固定种子 `{after['seed']}`，每场最多60秒，默认以撒3心与基础武器，不开无敌、不补血。",'',
    f"已完成配对 {len(common)} 项；未配对的 {', '.join(excluded) or '无'} 从两组统计中同时排除。",'',
    '两组均冻结完整的运行时语义、普通怪几何和弹幕模式旁路库。旧快测缺少两份旁路库，其数字不作为本表的改前基线。', '',
    '高风险组按历史快测“死亡或掉血至少3个半心单位”选出，相同场景去重；另设低伤场景作对照。', '',
    '| 高风险组 | 改前 | 改后 |','| --- | ---: | ---: |',
    f"| 有效场景 | {targets['cases']} | {targets['cases']} |",
    f"| 掉血（半心单位） | {targets['before_half_hearts']} | {targets['after_half_hearts']} |",
    f"| 受伤次数 | {targets['before_hits']} | {targets['after_hits']} |",
    f"| 死亡 | {targets['before_deaths']} | {targets['after_deaths']} |",
    f"| 清房 | {targets['before_clears']} | {targets['after_clears']} |",
    f"| 实际观察分钟数 | {targets['before_seconds']/60:.2f} | {targets['after_seconds']/60:.2f} |",'',
    f"按掉血量：{targets['improved']}项改善，{targets['unchanged']}项持平，{targets['regressed']}项回退。",'',
    f"低伤对照组：{control['cases']}项；掉血 {control['before_half_hearts']} → {control['after_half_hearts']} 个半心单位，死亡 {control['before_deaths']} → {control['after_deaths']}。",'',
    '## 逐场结果','',
    '| 身份 | 名称 | 组别 | 掉血前→后（半心） | 受伤前→后 | 死亡前→后 | 清房前→后 |',
    '| --- | --- | --- | ---: | ---: | --- | --- |']
for c in rows:
    yes=lambda b:'是' if b else '否'
    lines.append(f"| `{c['identity']}` | {c['name']} | {c['group']} | {c['before_half_hearts']} → {c['after_half_hearts']} | {c['before_hits']} → {c['after_hits']} | {yes(c['before_death'])} → {yes(c['after_death'])} | {yes(c['before_clear'])} → {yes(c['after_clear'])} |")
lines+=['','CSV：[逐场数据](comparison.csv)。原始报告保留场景类型、初末状态、实际时长、原版伤害回调和冻结文件哈希。', '',
    '同场景会含附属怪；实体生成探针保持原标记。结果不代表完整剧情战或所有种子的无伤保证。']
(output/'COMPARISON.md').write_text('\n'.join(lines)+'\n',encoding='utf-8')
if complete: assert all(checks.values()), checks
print(json.dumps({'complete':complete,'targets':targets,'guards':control,'checks':checks},ensure_ascii=True))
