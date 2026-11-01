#include "gamebot/weapons.hpp"
#include <algorithm>
#include <cmath>
namespace gamebot {
bool supported_weapon(int type) {
    return type==1||type==2||type==3||type==4||type==7||type==9||type==10||type==13;
}
double max_charge_for(int type,double delay,uint32_t mods) {
    // Derived from J460 Weapon::GetMaxCharge instruction records and their
    // referenced float constants. No engine functions are called.
    if(!std::isfinite(delay)||delay>1000||delay<-100)return -1;
    double base=std::max(.001,delay);
    switch(type) {
    case 1: {
        double factor=(mods&256)?12:(mods&1)?2.5:1;
        if(!(mods&256)&&(mods&2))factor*=2;
        return factor>1?std::max(0.0,(delay+1)*factor-1):0;
    }
    case 2:return (mods&16)?0:base*((mods&1)?2.5:1);
    case 3: {
        double factor=(mods&8)?4.3:1;if(mods&1)factor*=2.5;if(mods&2)factor*=2;
        return factor>1?std::max(0.0,(delay+1)*factor-1):0;
    }
    case 4:return (mods&16)?0:base*4;
    case 7:return base*((mods&1)?2.5:1);
    case 9:return std::max(0.0,delay*3);
    case 10:return base*(((mods&0x80e)&&!(mods&1))?2:3);
    case 13:return std::max(0.0,delay*4);
    default:return -1;
    }
}
}
