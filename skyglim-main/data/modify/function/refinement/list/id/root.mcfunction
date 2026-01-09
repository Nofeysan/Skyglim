# 種類を取得
execute store result score type Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.type

# 種類分けで実行
$execute if score type Temp matches 1..2 run function modify:refinement/list/id/weapon/$(roll)
$execute if score type Temp matches 4..7 run function modify:refinement/list/id/armor/$(roll)
$execute if score type Temp matches 9 run function modify:refinement/list/id/armor/$(roll)

# 演出
execute at @s run playsound minecraft:entity.wind_charge.wind_burst voice @a ~ ~ ~ 0.8 1.2
execute at @s run particle minecraft:dust{color: [0.266666666666667, 0.866666666666667, 0.956862745098039], scale: 0.9} ~ ~ ~ 0.8 0.8 0.8 0 120 force @a
execute at @s run particle minecraft:dust{color: [0.572549019607843, 0.952941176470588, 0.643137254901961], scale: 0.9} ~ ~ ~ 0.8 0.8 0.8 0 120 force @a
