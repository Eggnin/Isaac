#pragma once
#include <cstdint>
namespace gamebot {
struct Player;struct Vec;enum class Fire;
Vec normal_tear_velocity(const Player& player,Fire fire);
bool supported_weapon(int type);
double max_charge_for(int type,double fire_delay,uint32_t modifiers);
}
