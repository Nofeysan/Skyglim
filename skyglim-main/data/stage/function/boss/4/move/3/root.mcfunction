#> stage:boss/1/move/3/root
# 
# 移動速度上昇
# 
# 

# AoE
execute if score s4 BossMoves matches 200 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 8, t: 30, dmg: 75, str: 55}
execute if score s4 BossMoves matches 210 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 8, t: 30, dmg: 75, str: 55}
execute if score s4 BossMoves matches 220 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 8, t: 30, dmg: 75, str: 55}
execute if score s4 BossMoves matches 230 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 8, t: 30, dmg: 75, str: 55}
execute if score s4 BossMoves matches 240 at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 8, t: 30, dmg: 75, str: 55}

execute if score s4 BossMoves matches 200 at @a[distance=..30] run playsound minecraft:entity.firework_rocket.launch voice @a ~ ~ ~ 0.3 1.7
execute if score s4 BossMoves matches 210 at @a[distance=..30] run playsound minecraft:entity.firework_rocket.launch voice @a ~ ~ ~ 0.3 1.7
execute if score s4 BossMoves matches 220 at @a[distance=..30] run playsound minecraft:entity.firework_rocket.launch voice @a ~ ~ ~ 0.3 1.7
execute if score s4 BossMoves matches 230 at @a[distance=..30] run playsound minecraft:entity.firework_rocket.launch voice @a ~ ~ ~ 0.3 1.7
execute if score s4 BossMoves matches 240 at @a[distance=..30] run playsound minecraft:entity.firework_rocket.launch voice @a ~ ~ ~ 0.3 1.7

# score
execute if score s4 BossMoves matches 240.. run scoreboard players set s4 BossMoves 60
