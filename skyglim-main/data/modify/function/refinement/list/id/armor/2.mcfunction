###* 
###* id: 2 / Heavy
###* scoreboard> roll Temp に rarity が入ってる
###* 
###* 1. 各レアリティの数値を設定する
###* 2. .ref にidを入れる
###* 

###* 設定前のデータを取得
execute store result score ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref
execute store result score enc Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.enchantment

# もし -1 (未設定) なら末尾に lore を調整する
execute if score ref Temp matches -1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "a"}

# もし既に enchantment が付与されてたら(not -1)分割線分も増やす
execute if score ref Temp matches -1 unless score enc Temp matches -1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "a"}

###* データを設定する
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref set value 2

###* rarity ごとに値を入れる
# 初期化
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp set value 0
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck set value 0

# 1: normal
#execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage set value 
#execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp set value 
#execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str set value 
#execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc set value 
#execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd set value 
execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def set value 2
execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd set value -5
#execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp set value 
#execute if score rarity Temp matches 1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck set value 

# 2: rare
#execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage set value 
#execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp set value 
#execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str set value 
#execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc set value 
#execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd set value 
execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def set value 4
execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd set value -5
#execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp set value 
#execute if score rarity Temp matches 2 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck set value 

# 3: epic
#execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage set value 
#execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp set value 
#execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str set value 
#execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc set value 
#execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd set value 
execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def set value 6
execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd set value -5
#execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp set value 
#execute if score rarity Temp matches 3 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck set value 

# 4: legendary
#execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage set value 
#execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp set value 
#execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str set value 
#execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc set value 
#execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd set value 
execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def set value 9
execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd set value -5
#execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp set value 
#execute if score rarity Temp matches 4 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck set value 

# 5: mythic
#execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage set value 
#execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp set value 
#execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str set value 
#execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc set value 
#execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd set value 
execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def set value 12
execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd set value -5
#execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp set value 
#execute if score rarity Temp matches 5 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck set value 

# refinement をやったよの token
scoreboard players set act.ref Temp 1

# 共通ファイル実行
function modify:refinement/list/id/add_lore
