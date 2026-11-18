#> stage:teleport/importants/9/act/1
# 
# アイテム削除・ブレイク
# 
# 

# clear
clear @s *[repair_cost=301301]

# particle
execute positioned ~ ~1 ~ run particle minecraft:item{item: {id: "minecraft:spruce_boat"}} ^ ^ ^1 0.2 0.2 0.2 0.1 16
execute positioned 9831 107 19 run particle minecraft:explosion ~ ~-1 ~ 1 2 1 0.1 10 force
execute positioned 9831 107 19 run particle minecraft:dust{color: 12971519, scale: 1.6} ~ ~ ~ 1.5 1.5 1.5 0.1 240 force
execute positioned 9831 107 19 run particle minecraft:dust{color: 4513268, scale: 1.6} ~ ~ ~ 1.5 1.5 1.5 0.1 240 force
execute positioned 9831 107 19 run particle minecraft:dust{color: 16113284, scale: 1.6} ~ ~ ~ 1.5 1.5 1.5 0.1 240 force
playsound minecraft:entity.item.break voice @a ~ ~ ~ 0.7 1

# score
scoreboard players set $s13.gate.key.use _ 1

# destroy
fill 9831 108 20 9830 106 18 minecraft:air destroy
