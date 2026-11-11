#> magic:check/save_stats
# 
# 
# 
# 

# cc, cd, luck をそれぞれ保存する
execute store result storage damageapi: magic_damage.cc int 1 run scoreboard players get @s act_CritChance
execute store result storage damageapi: magic_damage.cd int 1 run scoreboard players get @s act_CritDamage
execute store result storage damageapi: magic_damage.luck int 1 run scoreboard players get @s act_Luck
