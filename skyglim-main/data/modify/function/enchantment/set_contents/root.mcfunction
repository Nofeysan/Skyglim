###* 
###* armor_stand の位置で、~ ~-1 ~ 指定
###* 

###* まず restore を（存在するなら）取得して、-1 ならエンチャント不可
scoreboard players set _ Temp -255
execute if data block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".data."restore" store result score _ Temp run data get block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".data."restore"

execute if score _ Temp matches -1 run return -1

###* type を取得して、それに応じて内容を変える
scoreboard players set e.type Temp -1

execute store result score e.type Temp run data get block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.type

# 一旦初期化する
execute if score e.type Temp matches 1 positioned ~ ~1 ~ run function modify:enchantment/set_contents/melee
execute if score e.type Temp matches 2 positioned ~ ~1 ~ run function modify:enchantment/set_contents/range
execute if score e.type Temp matches 3 positioned ~ ~1 ~ run function modify:enchantment/set_contents/magic
execute if score e.type Temp matches 4 positioned ~ ~1 ~ run function modify:enchantment/set_contents/armor.h
execute if score e.type Temp matches 5 positioned ~ ~1 ~ run function modify:enchantment/set_contents/armor.c
execute if score e.type Temp matches 6 positioned ~ ~1 ~ run function modify:enchantment/set_contents/armor.l
execute if score e.type Temp matches 7 positioned ~ ~1 ~ run function modify:enchantment/set_contents/armor.f
execute if score e.type Temp matches 8 positioned ~ ~1 ~ run function modify:enchantment/set_contents/tool

execute if score e.type Temp matches ..-1 run function modify:enchantment/inv_change

