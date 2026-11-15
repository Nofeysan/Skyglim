#> stage:player/sp5/freeze
# 
# damage
# 
# 

# damage
    damage @s 1 minecraft:freeze
    effect give @s minecraft:wind_charged 1 7

# perform
    particle minecraft:dust{color: 12971519, scale: 0.7} ~ ~0.5 ~ 0.7 1.2 0.7 0.1 240
    playsound minecraft:block.glass.break voice @a ~ ~ ~ 0.4 2

# score
    scoreboard players set @s ex5.froze.timer 0
