#> damageapi:calc_damage/player/armor/l_chance
# 
# 
# 
# 

# 体力をちょっと回復ね (3%)
scoreboard players operation _ Temp = @s MaxHealth
scoreboard players operation _ Temp *= #3 num
scoreboard players operation _ Temp *= #100 num
scoreboard players operation @s CurrentHealth += _ Temp

# 演出入れるか？
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 0.3 20

#! debug
#tellraw @s [{text: "\ue010 回復したぞ！"}]
