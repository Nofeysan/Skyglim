#> stage:boss/1/move/5/root
# 
# 飛び上がってダメージ（割合 50%）
# 200 start
# 

# 200~220: 警告
execute if score s1 BossMoves matches 200 run title @a[distance=..30] title {text: "[!]", color: "#c10e49"}
execute if score s1 BossMoves matches 200 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1 0.5
execute if score s1 BossMoves matches 200 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s1] minecraft:glowing 1 0 true

execute if score s1 BossMoves matches 210 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1 1

execute if score s1 BossMoves matches 220 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1 2
execute if score s1 BossMoves matches 220 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s1] minecraft:levitation 1 9

execute if score s1 BossMoves matches 260 run effect give @a[distance=..30, predicate=damageapi:is_on_ground] minecraft:wind_charged 1 50
execute if score s1 BossMoves matches 260 run particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 10 0.2 10 0.1 480
execute if score s1 BossMoves matches 260 run particle minecraft:sweep_attack ~ ~ ~ 10 0.2 10 0.1 200
execute if score s1 BossMoves matches 260 run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.3 0.5
execute if score s1 BossMoves matches 260.. run scoreboard players set s1 BossMoves 0
