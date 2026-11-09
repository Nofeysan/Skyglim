#> stage:teleport/importants/6/act/init
# 
# 初期設定
# 
# 

# clear
clear @s *[repair_cost=300603]

# particle
execute positioned ~ ~1 ~ run particle minecraft:item{item: {id: "minecraft:nether_brick"}} ^ ^ ^1 0.2 0.2 0.2 0.1 16
playsound minecraft:entity.item.break voice @a ~ ~ ~ 0.7 1

# score
scoreboard players set $s6.gate.key.use _ 1

# tick score
scoreboard players set $s6.gate.effect _ -1
