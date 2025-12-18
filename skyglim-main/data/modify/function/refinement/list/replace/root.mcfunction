#? Damage
# status, roll, ref を取得
execute store result score status Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.dmg
execute store result score roll Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.roll.hp
execute store result score ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.roll.dmg

# status に ref を追加
scoreboard players operation status Temp += ref Temp

# 実行
#! もし status > 0 ならステータスが存在 = 追加
#execute if score status Temp matches 1.. run function modify:refinement/list/replace/dmg
