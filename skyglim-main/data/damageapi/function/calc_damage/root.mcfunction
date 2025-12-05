# player/enemy で分割
execute unless entity @s[type=minecraft:player] run return run function damageapi:calc_damage/enemy/calc

execute if entity @s[type=minecraft:player] unless predicate entity:is_poison run function damageapi:calc_damage/player/calc
