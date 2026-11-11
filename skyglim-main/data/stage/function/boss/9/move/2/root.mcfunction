#> stage:boss/6/move/2/root
# 
# スポナーからランダムに浮かせてAoE
# 
# 

# 各プレイヤーの位置に AoE
execute if score s9 BossMoves matches 200 at @a[distance=..30] positioned ~ -6 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 60, dmg: 32, str: 26, id: 93}
execute if score s9 BossMoves matches 200 as @a[distance=..30] at @s run playsound minecraft:entity.wither.spawn voice @s ~ ~ ~ 0.4 1.5

# reset
execute if score s9 BossMoves matches 260.. run scoreboard players set s9 BossMoves 100
