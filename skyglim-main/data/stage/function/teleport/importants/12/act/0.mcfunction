#> stage:teleport/importants/9/act/1
# 
# アイテム削除・ブレイク
# 
# 

# clear
clear @s *[repair_cost=301203]

# particle
execute positioned ~ ~1 ~ run particle minecraft:item{item: {id: "minecraft:heart_of_the_sea"}} ^ ^ ^1 0.2 0.2 0.2 0.1 16
playsound minecraft:entity.item.break voice @a ~ ~ ~ 0.7 1

# score
scoreboard players set $s12.gate.key.use _ 1

# next
schedule function stage:teleport/importants/12/act/1 20t
