#> stage:teleport/importants/9/act/1
# 
# 移動
# 
# 

# effects
execute positioned 9024 79 36 run particle minecraft:totem_of_undying ~ ~ ~ 2 4 2 0.2 300 force
execute positioned 9024 79 36 run particle minecraft:dragon_breath ~ ~ ~ 1 2 1 0.2 200 force
execute positioned 9024 79 36 as @a[distance=..100] at @s run playsound minecraft:block.anvil.use voice @a ~ ~ ~ 0.3 0.7
execute positioned 9024 79 36 as @a[distance=..100] at @s run playsound minecraft:item.totem.use voice @a ~ ~ ~ 0.4 1.3

# 爆破
fill 9024 80 36 9024 78 36 minecraft:end_gateway{exit_portal: [8010, 71, 3], ExactTeleport: true}

# kill
execute positioned 9024 79 36 run kill @n[type=minecraft:item, tag=s14.gate.open]
