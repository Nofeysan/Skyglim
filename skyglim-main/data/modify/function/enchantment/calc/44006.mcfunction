##> modify:enchantment/calc/macro/chest
##* 
##* 運を味方に
##* CD x2.0, STR x0.5
##* 

# STR
scoreboard players operation @s act_Strength /= #2 num

# CD
scoreboard players operation @s act_CritDamage *= #2 num
#//scoreboard players operation @s act_CritDamage /= #10 num
