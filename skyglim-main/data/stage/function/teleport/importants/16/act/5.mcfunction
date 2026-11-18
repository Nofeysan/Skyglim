#> stage:teleport/importants/16/act/5
# 
# 
# 
# 


# particle
execute positioned 9978 85 -267 run particle minecraft:explosion ~ ~-1 ~ 1 2 1 0.1 10 force
execute positioned 9978 85 -267 run particle minecraft:dust{color: 9599443, scale: 1.6} ~ ~ ~ 1.5 1.5 1.5 0.1 240 force
execute positioned 9978 85 -267 run particle minecraft:dust{color: 7629484, scale: 1.6} ~ ~ ~ 1.5 1.5 1.5 0.1 240 force
execute positioned 9978 85 -267 run particle minecraft:dust{color: 7255175, scale: 1.6} ~ ~ ~ 1.5 1.5 1.5 0.1 240 force
execute positioned 9978 85 -267 run playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.2 0.5
execute positioned 9978 85 -267 run playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 0.2 1

# item
execute positioned 9978 85 -267 run kill @n[type=minecraft:item, tag=s16.gate.open]

# fill
fill 9977 86 -266 9976 84 -268 minecraft:air destroy
