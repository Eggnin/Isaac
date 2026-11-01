"""Classify the existing exact J460 NPC catalog; never count grids as NPCs."""
from pathlib import Path
import csv
import hashlib
import json
from collections import Counter

ROOT = Path(__file__).resolve().parents[2]
REGISTRY = ROOT / 'data/mechanisms/trap_room_registry.json'
CATALOG = ROOT / 'data/npc/engine_npc_entity_catalog.tsv'
SOURCE = 'https://isaac.huijiwiki.com/wiki/%E6%8C%89%E9%92%AE'
# Exact Type/Variant families; subtypes are taken from the existing local catalog.
FAMILIES = [
 ('地刺', [], [{'grid_type':8}]), ('伸缩地刺', [], [{'grid_type':9}]),
 ('炸药桶', [(292,0)], [{'grid_type':12}]),
 ('即爆炸弹', [], [{'entity_type':4,'variant':3,'subtype':0}]),
 ('超级即爆炸弹', [], [{'entity_type':4,'variant':4,'subtype':0}]),
 ('石鬼面', [(42,0)], []), ('呕吐鬼面', [(42,1)], []), ('三发鬼面', [(42,2)], []),
 ('张口大嘴', [(235,0)], []), ('损坏的张口大嘴', [(236,0)], []),
 ('硫磺火头 / Brimstone Head', [(203,0)], []),
 ('常时石质发射器', [(202,0)], []), ('十字石质发射器', [(202,10),(202,11)], []),
 ('震地鬼面', [(804,0)], []), ('刺块', [(44,0)], []), ('滑块', [(44,1)], []),
 ('靠墙刺块', [(218,0)], []), ('怨恨', [(877,0)], []), ('刺球', [(852,0)], []),
 ('红大便', [], [{'grid_type':14,'variant':1}]),
 ('红色火堆', [(33,1)], []), ('紫色火堆', [(33,3)], []), ('陷阱 / Pitfall', [(291,0)], []),
]

def read_registry():
    return json.loads(REGISTRY.read_text(encoding='utf-8'))

def classify(identity, key, registry):
    entry = next((e for e in registry['npc_identities'] if e['key'] == key), None)
    if entry is None:
        return
    identity['original_category'] = entry['previous_category']
    identity['original_role'] = entry['previous_role']
    identity.update(category='trap', role='trap_mechanism', trap_room=True,
                    trap_name_zh=entry['trap_name_zh'], disabled_by_silver=True,
                    classification_evidence='wiki button mechanism + exact local EntityConfig; not per-trap combat validation')

def annotate_database(database):
    if not REGISTRY.exists():
        return
    registry = read_registry()
    for entry in database['entries']:
        classify(entry['identity'], entry['id']['key'], registry)
    database['trap_room_classification'] = {
        'registry':'data/mechanisms/trap_room_registry.json',
        'source':SOURCE, 'npc_exact_identity_count':len(registry['npc_identities']),
        'scope':'653 exact NPC EntityConfig identities include monsters, bosses and mechanisms; grids and bomb entities remain separate',
        'per_trap_runtime_validated':False,
    }
    database['summary']['trap_room_identity_count'] = len(registry['npc_identities'])
    database['summary']['category_counts'] = dict(Counter(e['identity']['category'] for e in database['entries']))
    database['summary']['source_files']['data/mechanisms/trap_room_registry.json'] = {
        'sha256':hashlib.sha256(REGISTRY.read_bytes()).hexdigest().upper(),'bytes':REGISTRY.stat().st_size}

def main():
    with CATALOG.open(encoding='utf-8-sig',newline='') as f:
        reader=csv.DictReader(f,delimiter='\t'); fields=list(reader.fieldnames);rows=list(reader)
    assert len(rows)==len({r['key'] for r in rows})==653
    families=[];npc_entries=[]
    for name,pairs,external in FAMILIES:
        keys=[]
        for row in rows:
            t,v,s=map(int,row['key'].split('.'))
            if (t,v) not in pairs: continue
            keys.append(row['key'])
            npc_entries.append({'key':row['key'],'type':t,'variant':v,'subtype':s,
                'trap_name_zh':name,'entity_config_name':row['entity_config_name'],
                'previous_category':row.get('original_category') or row['category'],
                'previous_role':row.get('original_role') or row['role']})
        if pairs: assert keys, name
        families.append({'name_zh':name,'npc_keys':keys,'non_npc_representations':external})
    # Stone Eye has separate existing native plate-room evidence (d.118).
    for row in rows:
        if row['key']=='201.0.0':
            npc_entries.append({'key':row['key'],'type':201,'variant':0,'subtype':0,
                'trap_name_zh':'石眼（补充联动机关）','entity_config_name':row['entity_config_name'],
                'previous_category':row.get('original_category') or row['category'],
                'previous_role':row.get('original_role') or row['role'],
                'additional_source':'research/MECHANISM-ENTITIES-20261029.md'})
    assert len(npc_entries)==len({e['key'] for e in npc_entries})
    registry={'format':'j460-trap-room-registry-v1','source':SOURCE,
      'game_sha256':'7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F',
      'npc_catalog_total':653,'listed_families':families,'npc_identities':npc_entries,
      'buttons':[{'grid_type':20,'variant':0,'kind':'silver','completion':'all state 3 and room flag bit 1'},
                 {'grid_type':20,'variant':9,'kind':'kill','completion':'state 3; observe enemy and hostile projectile removal'}],
      'scope':'Exact identities are membership annotations. Only the two button scenarios are tested in this change; no individual trap is marked combat-verified.',
      'runtime_orientation_note':'Brimstone Head also appears with orientation subtypes 1/2/3 in native rooms; these are not added as invented EntityConfig rows.'}
    REGISTRY.write_text(json.dumps(registry,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    for row in rows:
        if any(e['key']==row['key'] for e in npc_entries):
            row.setdefault('original_category',row['category']);row.setdefault('original_role',row['role'])
            row.update(category='trap',role='trap_mechanism',trap_room='1',
                       trap_name_zh=next(e['trap_name_zh'] for e in npc_entries if e['key']==row['key']),disabled_by_silver='1')
        else: row.update(trap_room='0',trap_name_zh='',disabled_by_silver='0')
    for name in ['original_category','original_role','trap_room','trap_name_zh','disabled_by_silver']:
        if name not in fields: fields.append(name)
    with CATALOG.open('w',encoding='utf-8',newline='') as f:
        writer=csv.DictWriter(f,fields,delimiter='\t',lineterminator='\n');writer.writeheader();writer.writerows(rows)
    dbpath=ROOT/'data/mechanisms/isaac_j460_mechanism_db.json'
    db=json.loads(dbpath.read_text(encoding='utf-8'));annotate_database(db)
    dbpath.write_text(json.dumps(db,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    spath=ROOT/'data/mechanisms/isaac_j460_state_semantics.json'
    semantics=json.loads(spath.read_text(encoding='utf-8'))
    for e in semantics['identities']: classify(e['identity'],e['key'],registry)
    for t in semantics['type_map'].values():
        for e in t.get('identities',[]): classify(e,e.get('key'),registry)
    semantics['summary']['trap_room_identity_count']=len(npc_entries)
    spath.write_text(json.dumps(semantics,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    coverage=ROOT/'research/ai-recovery/RUNTIME-IDENTITY-COVERAGE-20261029.tsv'
    with coverage.open(encoding='utf-8',newline='') as f:
        reader=csv.DictReader(f,delimiter='\t');cols=reader.fieldnames;cr=list(reader)
    keys={e['key'] for e in npc_entries}
    for r in cr:
        if r['identity_key'] in keys:r['category']='trap'
    with coverage.open('w',encoding='utf-8',newline='') as f:
        w=csv.DictWriter(f,cols,delimiter='\t',lineterminator='\n');w.writeheader();w.writerows(cr)
    counts=Counter(r['category'] for r in rows)
    lines=['# J460 本机 EntityConfig 精确身份目录','',
      '共 **653** 个 Type/Variant/Subtype 组合，包含普通怪物、头目、陷阱机关及其他 NPC 配置。网格和炸弹另列，不混入653。',
      '',f'分类数量：{dict(counts)}。陷阱标记是身份/机制归类，不表示该身份已经逐一通过攻击或战斗测试。','',
      '严格攻击识别和严格攻击预测来自 `data/mechanisms/gamebot_runtime_semantics.json`，不等于完整攻击覆盖或危险几何。迷你 Boss 与 Boss 的逐项依据见 [BOSS-STRICT-ATTACK-CATALOG.md](BOSS-STRICT-ATTACK-CATALOG.md)。','',
      '| 精确身份 | 中文名/陷阱名 | EntityConfig 名称 | 分类 | 严格攻击识别 | 严格攻击预测 | 银按钮解除 |',
      '| --- | --- | --- | --- | --- | --- | --- |']
    for r in rows:
        strict_recognition='是' if r.get('strict_attack_recognition')=='yes' else '否'
        strict_prediction='是' if r.get('strict_attack_prediction')=='yes' else '否'
        lines.append(f"| `{r['key']}` | {r.get('trap_name_zh') or r['name_zh']} | {r['entity_config_name']} | {'**陷阱机关**' if r['category']=='trap' else r['category']} | {strict_recognition} | {strict_prediction} | {'是' if r['disabled_by_silver']=='1' else ''} |")
    (ROOT/'data/npc/ENTITY-CATALOG.md').write_text('\n'.join(lines)+'\n',encoding='utf-8')
    trap=['# 银按钮与陷阱归类','',f'653个精确 NPC 身份中，{len(npc_entries)}个标为陷阱机关。包含用户所列23类陷阱在本机存在的NPC身份，以及已有原版证据的石眼。',
          '', '| 陷阱 | 653中的精确身份 | 非NPC表示 |','| --- | --- | --- |']
    for f in families:trap.append(f"| {f['name_zh']} | {', '.join('`'+k+'`' for k in f['npc_keys']) or '不在NPC目录内'} | {json.dumps(f['non_npc_representations'],ensure_ascii=False) if f['non_npc_representations'] else ''} |")
    trap+=['','石眼补充：`201.0.0`，依据已有 `d.118` 原版房间联动观察。',
      '', '银按钮为网格 `20.0`，红色击杀按钮为网格 `20.9`；贪婪按钮 `20.2` 保持独立。',
      '', '银按钮需要全部按下并观察房间 bit1，不能以杀光普通敌人或停留若干帧替代。完成后解除源机关，残留弹幕仍按当前观测避让。红按钮优先路由，观察原生清敌和清弹；原版验证中爆破苍蝇仍留下爆炸，因此保留爆炸和残留攻击的避让。',
      '', '来源：'+SOURCE, '', '只对两种按钮各做一次定向验证，身份归类不等同于全部陷阱的攻击预测已验证。']
    (ROOT/'data/npc/TRAP-ROOM-CATALOG.md').write_text('\n'.join(trap)+'\n',encoding='utf-8')
    print(json.dumps({'npc_total':len(rows),'trap_exact_identities':len(npc_entries),'listed_families':len(families),'categories':dict(counts)},ensure_ascii=False))

if __name__=='__main__':main()
