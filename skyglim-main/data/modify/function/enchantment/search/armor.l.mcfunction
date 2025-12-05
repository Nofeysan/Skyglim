# スコアを設定 / 1: 近接,遠距離,防具 | 2: 魔法,道具
execute if items entity @s player.cursor *[repair_cost=45001 | repair_cost=45002 | repair_cost=45003 | repair_cost=45004 | repair_cost=45005 | repair_cost=45006 | repair_cost=45007] run scoreboard players set e.id Temp 1

# もし未設定ならつけなおす
execute if score e.id Temp matches 1.. store result score e.enc Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'

# かつ refinement があったらさらに追加
execute if score e.id Temp matches 1.. store result score e.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref
execute if score e.id Temp matches 1.. if score e.enc Temp matches ..0 if score e.ref Temp matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "a"}'

# アイテムを探索して実行
execute if items entity @s player.cursor *[repair_cost=45001] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 45001
execute if items entity @s player.cursor *[repair_cost=45002] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 45002
execute if items entity @s player.cursor *[repair_cost=45003] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 45003
execute if items entity @s player.cursor *[repair_cost=45004] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 45004
execute if items entity @s player.cursor *[repair_cost=45005] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 45005
execute if items entity @s player.cursor *[repair_cost=45006] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 45006
execute if items entity @s player.cursor *[repair_cost=45007] run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment set value 45007

# アイテム消します
clear @s *[repair_cost=45001 | repair_cost=45002 | repair_cost=45003 | repair_cost=45004 | repair_cost=45005 | repair_cost=45006 | repair_cost=45007]
