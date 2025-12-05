# スコアを設定 / 1: 近接,遠距離,防具 | 2: 魔法,道具
execute if items entity @s player.cursor *[repair_cost=44001 | repair_cost=44002 | repair_cost=44003 | repair_cost=44004 | repair_cost=44005 | repair_cost=44006 | repair_cost=44007] run scoreboard players set e.id Temp 1

# もし未設定ならつけなおす
execute if score e.id Temp matches 1.. store result score e.enc Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'

# かつ refinement があったらさらに追加
execute if score e.id Temp matches 1.. store result score e.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 if score e.ref Temp matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'

# アイテムを探索して実行
execute if items entity @s player.cursor *[repair_cost=44001] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 44001
execute if items entity @s player.cursor *[repair_cost=44002] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 44002
execute if items entity @s player.cursor *[repair_cost=44003] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 44003
execute if items entity @s player.cursor *[repair_cost=44004] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 44004
execute if items entity @s player.cursor *[repair_cost=44005] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 44005
execute if items entity @s player.cursor *[repair_cost=44006] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 44006
execute if items entity @s player.cursor *[repair_cost=44007] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 44007

# アイテム消します
clear @s *[repair_cost=44001 | repair_cost=44002 | repair_cost=44003 | repair_cost=44004 | repair_cost=44005 | repair_cost=44006 | repair_cost=44007]
