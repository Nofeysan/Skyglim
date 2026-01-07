###* 
###* id: 22 / Perfect
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
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.ref set value 22

###* rarity ごとに値を入れる
# storage リセット
data modify storage modify: temp.ref set value {}

#+ 未変更の場合、0 を入力すること
# 1: normal / 2: rare / 3: epic / 4: legendary / 5: mythic
execute if score rarity Temp matches 1 run data modify storage modify: temp.ref set value {damage: 0, hp: 0, str: 0, cc: 0, cd:  0, def:  0, spd: 0, mp: 0, luck:  0}
execute if score rarity Temp matches 2 run data modify storage modify: temp.ref set value {damage: 2, hp: 0, str: 3, cc: 2, cd:  7, def:  5, spd: 3, mp: 0, luck:  9}
execute if score rarity Temp matches 3 run data modify storage modify: temp.ref set value {damage: 2, hp: 0, str: 4, cc: 2, cd:  8, def:  7, spd: 4, mp: 0, luck:  9}
execute if score rarity Temp matches 4 run data modify storage modify: temp.ref set value {damage: 3, hp: 0, str: 7, cc: 2, cd: 14, def: 12, spd: 5, mp: 0, luck: 13}
execute if score rarity Temp matches 5 run data modify storage modify: temp.ref set value {damage: 3, hp: 0, str: 8, cc: 2, cd: 15, def: 14, spd: 5, mp: 0, luck: 13}

# データをアイテムにコピー
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage set from storage modify: temp.ref.damage
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp set from storage modify: temp.ref.hp
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str set from storage modify: temp.ref.str
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc set from storage modify: temp.ref.cc
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd set from storage modify: temp.ref.cd
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def set from storage modify: temp.ref.def
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd set from storage modify: temp.ref.spd
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp set from storage modify: temp.ref.mp
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck set from storage modify: temp.ref.luck

# refinement をやったよの token
scoreboard players set act.ref Temp 1

# 共通ファイル実行
function modify:refinement/list/id/add_lore

# 演出
execute at @s run playsound minecraft:entity.ender_dragon.flap voice @a ~ ~ ~ 0.8 2
execute at @s run playsound minecraft:block.glass.break voice @a ~ ~ ~ 0.8 1
