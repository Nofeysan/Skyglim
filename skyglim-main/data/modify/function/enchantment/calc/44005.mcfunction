##> modify:enchantment/calc/macro/chest
##* 
##* 力こそパワー
##* CC x0, STR x1.5
##* 

# CC
scoreboard players set @s act_CritChance 0

# STR
scoreboard players operation @s act_Strength *= #15 num
scoreboard players operation @s act_Strength /= #10 num
