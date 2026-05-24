#> story:trigger/occupation/base
# 
# 
# 
# 

# 各職業分岐
execute if score @s story.trigger matches 10 run function story:0-tutorial/occupation/click/archer
execute if score @s story.trigger matches 11 run function story:0-tutorial/occupation/click/berserker
execute if score @s story.trigger matches 12 run function story:0-tutorial/occupation/click/tank
execute if score @s story.trigger matches 13 run function story:0-tutorial/occupation/click/mage
execute if score @s story.trigger matches 14 run function story:0-tutorial/occupation/click/auspice
