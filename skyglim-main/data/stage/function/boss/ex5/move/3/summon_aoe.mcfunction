#> stage:boss/ex5/move/3/summon_aoe
# 
# 
# 
# 

execute unless score $ex5.boss.half _ matches 1 run function entity:aec_manager/summon/.cyl {r: 9, t: 40, dmg: 96, str: 74, id: 252}
execute if score $ex5.boss.half _ matches 1 run function entity:aec_manager/summon/.cyl {r: 12, t: 40, dmg: 96, str: 74, id: 253}
