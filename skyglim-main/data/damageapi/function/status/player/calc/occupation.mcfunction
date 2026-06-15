#> damageapi:status/player/calc/occupation
# 
# (cc x1.1 / luck x1.1)
# 
# 

# cc
scoreboard players operation @s act_CritChance *= #11 num
scoreboard players operation @s act_CritChance /= #10 num

# luck
scoreboard players operation @s act_Luck *= #11 num
scoreboard players operation @s act_Luck /= #10 num
