#> stage:player/sp5/heal_act
# 
# 
# 
# 

# count +
    execute if score @s ex5.froze.count.all matches 0 run loot replace entity @s weapon.offhand loot stage:importants/sp5/torch_8
    execute if score @s ex5.froze.count.all matches 1..63 run loot give @s loot stage:importants/sp5/torch_8

# perform
    particle minecraft:dust{color: 12652105, scale: 1.2} ~ ~ ~ 0.7 1.2 0.7 0.1 80
    particle minecraft:dust{color: 13122613, scale: 1.2} ~ ~ ~ 0.7 1.2 0.7 0.1 80
    playsound minecraft:block.fire.extinguish voice @s ~ ~ ~ 0.08 1.2

# score
    scoreboard players set @s ex5.campfire 0
