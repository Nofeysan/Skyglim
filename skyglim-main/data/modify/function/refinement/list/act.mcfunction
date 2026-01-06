###* rarity を取得してそれに応じて乱数を生成する
execute store result score rarity Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.rarity

# 1..5 / 1..10 / 1..15 / 1..25 / 1..25
execute if score rarity Temp matches 1 store result score roll Temp run random value 1..5
execute if score rarity Temp matches 2..5 store result score roll Temp run random value 1..8

# debug
#scoreboard players set roll Temp 1

# macro で実行
execute store result storage modify: refinement.roll int 1 run scoreboard players get roll Temp
function modify:refinement/list/id/root with storage modify: refinement
