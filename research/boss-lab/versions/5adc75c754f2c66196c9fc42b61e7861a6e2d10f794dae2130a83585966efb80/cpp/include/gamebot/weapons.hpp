#pragma once
#include <cstdint>
namespace gamebot {
bool supported_weapon(int type);
double max_charge_for(int type,double fire_delay,uint32_t modifiers);
}
