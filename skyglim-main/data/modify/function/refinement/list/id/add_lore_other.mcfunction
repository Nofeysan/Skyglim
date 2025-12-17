###* 
###* refinement, enchantment で同一ファイル
###* lore の順番は、ref. > enc.
###* 
###* ref Temp, enc Temp に付与前のデータが入ってます
###* 
###* tool, magic はステータス変化ないので enchantment だけ行う
###* 

###* lore 削除
# data.enchantment が -1 以外だったら lore を消す
execute store result score enc Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment

execute unless score enc Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]
execute unless score enc Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]
execute unless score enc Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]

###* lore 付与
#? enchantment
# data を取得
execute store result score e.check Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment
execute store result storage modify: enchantment.id int 1 run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment

execute if score e.check Temp matches 1.. run function modify:enchantment/macro/id with storage modify: enchantment


###* リセット
scoreboard players reset act.ref Temp
scoreboard players reset act.enc Temp
