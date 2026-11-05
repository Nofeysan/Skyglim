#> stage:boss/6/move/2/root
# 
# スポナーからランダムに浮かせてAoE
# 
# 

# 予告・ボス中央tp
execute if score s7 BossMoves matches 200 run function stage:boss/7/move/1/summon
execute if score s7 BossMoves matches 203 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawn, distance=..100]
execute if score s7 BossMoves matches 200 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1.2 2

# AoE
execute if score s7 BossMoves matches 220 run playsound minecraft:block.brewing_stand.brew voice @a ~ ~ ~ 1.5 1
execute if score s7 BossMoves matches 220 run playsound minecraft:block.brewing_stand.brew voice @a ~ ~ ~ 1.5 1.5
execute if score s7 BossMoves matches 220 as @e[type=minecraft:item, distance=..40, tag=gimmick.slime] at @s positioned ~ 0 ~ run function entity:aec_manager/summon/.square {r: 13, t: 40, dmg: 16, str: 18, id: 72}

# 300 で消去
execute if score s7 BossMoves matches 300 run kill @e[type=minecraft:item, distance=..40, tag=gimmick.slime]

# reset
execute if score s7 BossMoves matches 301.. run scoreboard players set s7 BossMoves 60
