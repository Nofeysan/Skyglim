#> stage:player/return/tp
# 
# 
# 
# 

# tp
tp @s 89 51 184 0.0 0.0

# particle
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.08 120
execute at @s run playsound minecraft:item.trident.riptide_3 voice @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:item.firecharge.use voice @a ~ ~ ~ 1 1

# effect
effect give @s minecraft:blindness 3 0 true

# reset
scoreboard players set @s ReturnPearl -1

# tell
tellraw @s {translate: "stage.return.success", color: "#e094d7"}

# tips
function story:tips/call
