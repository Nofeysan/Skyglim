#> stage:teleport/importants/9/act/1
# 
# 演出作成する
# 
# 

# clear
clear @s *[repair_cost=300900]

# score
scoreboard players set $already.open.s9 _ 1

# particle
execute positioned ~ ~1 ~ run particle minecraft:block{block_state: {Name: "minecraft:redstone_torch"}} ^ ^ ^1 0.2 0.2 0.2 0.1 16
playsound minecraft:entity.item.break voice @a ~ ~ ~ 0.7 1

# next
schedule function stage:teleport/importants/9/act/1 40t
