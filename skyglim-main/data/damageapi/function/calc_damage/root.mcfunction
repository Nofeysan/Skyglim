#> damageapi:calc_damage/root
# 
# player, enemy で分割
# 
# 

# enemy
execute unless entity @s[type=minecraft:player] run return run function damageapi:calc_damage/enemy/calc

# player
execute if entity @s[type=minecraft:player] unless predicate entity:is_poison run function damageapi:calc_damage/player/calc
