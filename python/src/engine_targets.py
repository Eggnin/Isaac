"""Resolve observed NPC target references; never guess a player's ownership."""
def player_targets(snapshot):
    return {p['address']:p for p in snapshot.get('players',[])
            if p.get('address') and p.get('type')==1 and not p.get('coop_ghost',False)}


def observed_target(entity,players):
    return players.get(entity.get('target'))
