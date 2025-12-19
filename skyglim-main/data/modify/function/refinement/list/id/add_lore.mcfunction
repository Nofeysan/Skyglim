###* 
###* refinement, enchantment で同一ファイル
###* lore の順番は、ref. > enc.
###* 
###* ref Temp, enc Temp に付与前のデータが入ってます
###* 

###* lore 削除
# data.refinement.ref が -1 以外だったら loreを消す
execute store result score ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref

execute unless score ref Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]

# data.enchantment が -1 以外だったら lore を消す
# shard だったら消さない
execute store result score enc Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment

execute unless score type Temp matches 9 unless score enc Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]
execute unless score type Temp matches 9 unless score enc Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]
execute unless score type Temp matches 9 unless score enc Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]

# どっちも存在するなら分割の線も消す
execute unless score type Temp matches 9 unless score ref Temp matches -1 unless score enc Temp matches -1 run data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]

# lore を取得
execute store result score lores Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"

execute if score lores Temp matches 8.. run function modify:refinement/list/id/remove_lore

###* lore 付与
#? refinement
# 長いので status 部分は別ファイルで
function modify:refinement/list/status/root

# 最後に一番下に追加する
data modify storage modify: lore.id set from block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref
function modify:refinement/list/macro/set_name with storage modify: lore

# どっちも存在するなら分割の線を増やす
execute unless score type Temp matches 9 unless score ref Temp matches -1 unless score enc Temp matches -1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "------------------------", color: "dark_gray", italic: false}


#? enchantment
# data を取得
execute store result score e.check Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment
execute store result storage modify: enchantment.id int 1 run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment

execute unless score type Temp matches 9 if score e.check Temp matches 1.. run function modify:enchantment/macro/id with storage modify: enchantment


###* リセット
scoreboard players reset act.ref Temp
scoreboard players reset act.enc Temp
