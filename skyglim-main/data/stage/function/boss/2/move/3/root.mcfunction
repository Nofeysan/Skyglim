#> stage:boss/1/move/3/root
# 
# 移動速度上昇
# 
# 

# AoE
execute if score s2 BossMoves matches 200 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 12, t: 40, dmg: 16, str: 18}
execute if score s2 BossMoves matches 220 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 12, t: 40, dmg: 16, str: 18}
execute if score s2 BossMoves matches 240 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 12, t: 40, dmg: 16, str: 18}

# score
execute if score s2 BossMoves matches 240.. run scoreboard players set s2 BossMoves 60
