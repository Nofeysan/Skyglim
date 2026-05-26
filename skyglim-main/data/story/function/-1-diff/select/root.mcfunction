#> 
# 
# 
# 
# 

# 各職業分岐
execute if score @s story.trigger matches 1 run function story:0-tutorial/occupation/click/archer
execute if score @s story.trigger matches 2 run function story:0-tutorial/occupation/click/berserker
execute if score @s story.trigger matches 3 run function story:0-tutorial/occupation/click/tank

# 道を開ける
fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
