#> 
# 
# 
# 
# 

# 各職業分岐
execute if score @s story.trigger matches 1 run function story:-1-diff/select/oracle
execute if score @s story.trigger matches 2 run function story:-1-diff/select/verdict
execute if score @s story.trigger matches 3 run function story:-1-diff/select/singularity
execute if score @s story.trigger matches 4 run function story:-1-diff/select/paradox

# 道を開ける
setblock 102 97 -294 minecraft:polished_blackstone_button[face=floor, facing=south]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 2
