##> modify:enchantment/calc/macro/legs
##* 
##* 極振りのロマン
##* SPD x0.5, STR x1.2
##* 

# SPD
scoreboard players operation @s act_Speed /= #2 num

# STR
scoreboard players operation @s act_Strength *= #12 num
scoreboard players operation @s act_Strength /= #10 num
