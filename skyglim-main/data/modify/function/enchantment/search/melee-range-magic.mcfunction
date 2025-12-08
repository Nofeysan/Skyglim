# スコアを設定 / 1: 近接,遠距離,防具 | 2: 魔法,道具
execute if items entity @s player.cursor *[repair_cost=40001 | repair_cost=40002 | repair_cost=40003 | repair_cost=40004 | repair_cost=40005 | repair_cost=41005 | repair_cost=42005] run scoreboard players set e.id Temp 1

# もし未設定ならつけなおす
execute if score e.id Temp matches 1.. store result score e.enc Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "a"}
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "a"}
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "a"}

# かつ refinement があったらさらに追加
execute if score e.id Temp matches 1.. store result score e.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 if score e.ref Temp matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "a"}

# アイテムを探索して実行
execute if items entity @s player.cursor *[repair_cost=40001] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 40001
execute if items entity @s player.cursor *[repair_cost=40002] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 40002
execute if items entity @s player.cursor *[repair_cost=40003] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 40003
execute if items entity @s player.cursor *[repair_cost=40004] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 40004
execute if items entity @s player.cursor *[repair_cost=40005] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 40005
execute if items entity @s player.cursor *[repair_cost=41005] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 41005
execute if items entity @s player.cursor *[repair_cost=42005] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 42005

# アイテム消します
clear @s *[repair_cost=40001 | repair_cost=40002 | repair_cost=40003 | repair_cost=40004 | repair_cost=40005 | repair_cost=41005 | repair_cost=42005]
