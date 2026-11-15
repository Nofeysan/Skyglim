#> stage:player/sp5/remove
# 
# 
# 
# 

# remove
    item modify entity @s weapon.offhand {function: "minecraft:set_count", count: -1, add: true}

# perform
    execute at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.08 2

# score
    scoreboard players set @s ex5.froze.timer 0
