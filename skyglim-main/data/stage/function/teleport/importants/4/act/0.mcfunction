#> stage:teleport/importants/9/act/1
# 
# アイテム削除・ブレイク
# 
# 

# clear
clear @s *[repair_cost=300400]

# score
scoreboard players set $already.open.s4 _ 1

# particle
execute positioned ~ ~1 ~ run particle minecraft:item{item: {id: "minecraft:ender_eye"}} ^ ^ ^1 0.2 0.2 0.2 0.1 16
playsound minecraft:entity.item.break voice @a ~ ~ ~ 0.7 1

# next
schedule function stage:teleport/importants/4/act/1 20t
