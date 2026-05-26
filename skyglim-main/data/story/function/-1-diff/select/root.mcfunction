#> 
# 
# 
# 
# 

# 各職業分岐
execute if score @s story.trigger matches 1 run function story:-1-diff/select/oracle
execute if score @s story.trigger matches 2 run function story:-1-diff/select/verdict
execute if score @s story.trigger matches 3 run function story:-1-diff/select/singularity

# 道を開ける
fill 102 64 -337 98 61 -337 minecraft:air replace minecraft:black_stained_glass

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 2
