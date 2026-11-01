"""Versioned, phase-scoped native behavior evidence.

These are conservative motion branches, not a replacement for the original
measured trajectory or a claim to reproduce an NPC's complete AI.
"""
from dataclasses import dataclass


def npc_state_frame(entity):
    """Interpret legacy unsigned snapshots without changing their raw data."""
    value=entity.get('state_frame',0)
    if not isinstance(value,int) or isinstance(value,bool):return 0
    if 0x80000000<=value<=0xffffffff:value-=0x100000000
    return value if -0x80000000<=value<=0x7fffffff else 0


@dataclass(frozen=True)
class PursuitProfile:
    id: str
    engine_version: str
    entity_enum: str
    variant: int
    animations: tuple[str,...]
    evidence: str
    inertia: float = 0.
    gain_per_frame: float = 0.
    position_scale: float | None = None
    old_velocity_weight: float = 0.


PURSUIT_PROFILES=(
    PursuitProfile('j460-swarm-0-fly','v1.9.7.17.J460',
        'ENTITY_SWARM',0,('fly',),
        '050 contact evidence; 052 native 20261025-194234-aaf979: 17,094 adjacent callback pairs. '
        'Inertial approximation, not a complete AI bound; includes flock/knockback residuals.',
        inertia=.92,gain_per_frame=.5,position_scale=.8,old_velocity_weight=.68),
    PursuitProfile('j460-crazy-long-legs-0-walk','v1.9.7.17.J460',
        'ENTITY_CRAZY_LONG_LEGS',0,('walk',),
        '047 native 20261025-155100-f43167/run-0001 damage 3 and 4; target=0 while chasing.'),
)


def active_pursuit_profile(snapshot,entity):
    version=(snapshot.get('profile') or {}).get('engine_version')
    types=(snapshot.get('enums') or {}).get('EntityType',{})
    animation=str(entity.get('animation','')).lower()
    for profile in PURSUIT_PROFILES:
        if (version==profile.engine_version and entity.get('type')==types.get(profile.entity_enum) and
                entity.get('variant',0)==profile.variant and animation in profile.animations):
            return profile
    return None
