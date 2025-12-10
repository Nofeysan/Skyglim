###* restore されてたら表記を分ける
# restore の値を取得
scoreboard players set restore Temp -255
execute store result score restore Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.restore

# 一旦 macro に保存
execute store result storage modify: setlore.status int 1 run scoreboard players get s.stat Temp
execute store result storage modify: setlore.ref int 1 run scoreboard players get s.ref Temp
execute store result storage modify: setlore.roll int 1 run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.roll.luck

###* 実際に lore を増やす
# roll がある = restore 2 の時
execute if score restore Temp matches 2 run function modify:refinement/list/status/roll/luck with storage modify: setlore

# roll がない時
execute unless score restore Temp matches 2 run function modify:refinement/list/status/no_roll/luck with storage modify: setlore

