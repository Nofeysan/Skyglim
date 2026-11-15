#> stage:player/sp5/heal
# 
# 
# 
# 

# score
    scoreboard players set @s ex5.froze.timer 0

# return
    execute if score @s ex5.froze.count.all matches 64.. run return fail

    scoreboard players add @s ex5.campfire 1

# torch +8
    execute if score @s ex5.campfire matches 20.. run function stage:player/sp5/heal_act
