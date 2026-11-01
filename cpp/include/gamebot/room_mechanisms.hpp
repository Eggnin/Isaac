#pragma once
namespace gamebot {
// NPC families controlled by silver plates. Exact catalog keys are maintained in
// data/mechanisms/trap_room_registry.json; runtime orientations share the AI.
inline bool silver_trap_npc(int type,int variant,int subtype) {
    switch(type) {
    case 33:return (variant==1||variant==3)&&subtype==0;
    case 42:return variant>=0&&variant<=2&&subtype==0;
    case 44:return (variant==0||variant==1)&&subtype==0;
    case 201:case 218:case 235:case 236:case 291:case 292:case 852:case 877:return variant==0&&subtype==0;
    case 202:return (variant==0&&subtype==0)||((variant==10||variant==11)&&(subtype==0||subtype==1));
    case 203:case 804:return variant==0&&subtype>=0&&subtype<=3;
    default:return false;
    }
}
inline bool permanent_room_mechanism(int type,int variant,int subtype) {
    return type!=33&&type!=292&&silver_trap_npc(type,variant,subtype);
}
}
