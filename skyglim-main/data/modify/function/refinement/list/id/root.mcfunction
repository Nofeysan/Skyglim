# 種類を取得
execute store result score type Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.type

# 種類分けで実行
$execute if score type Temp matches 1..2 run function modify:refinement/list/id/weapon/$(roll)
$execute if score type Temp matches 4..7 run function modify:refinement/list/id/armor/$(roll)
$execute if score type Temp matches 9 run function modify:refinement/list/id/armor/$(roll)

# 演出
execute at @s run playsound minecraft:block.anvil.use voice @a ~ ~ ~ 0.8 2
execute at @s run playsound minecraft:block.anvil.use voice @a ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:block.anvil.use voice @a ~ ~ ~ 0.8 1.6
