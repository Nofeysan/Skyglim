#> stage:teleport/importants/10/root
# 
# 
# 
# 

# i++
    scoreboard players add @s s10.gimmick 1

# levitation
    execute if score @s s10.gimmick matches 0 run effect give @s minecraft:levitation 2 1 true
    execute if score @s s10.gimmick matches 0 run particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.1 120
    execute if score @s s10.gimmick matches 0 run playsound minecraft:entity.ender_dragon.flap voice @s ~ ~ ~ 0.4 1

    execute if score @s s10.gimmick matches 20 run effect give @s minecraft:levitation 2 4 true
    execute if score @s s10.gimmick matches 20 run particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.1 120
    execute if score @s s10.gimmick matches 20 run playsound minecraft:entity.ender_dragon.flap voice @s ~ ~ ~ 0.4 1.4

    execute if score @s s10.gimmick matches 40 run effect give @s minecraft:levitation 1 8 true
    execute if score @s s10.gimmick matches 40 run particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.1 120
    execute if score @s s10.gimmick matches 40 run playsound minecraft:entity.ender_dragon.flap voice @s ~ ~ ~ 0.4 1.8

    execute if score @s s10.gimmick matches 60 run tp @s 10561 127 1 -90 0
    execute if score @s s10.gimmick matches 60 run effect give @s minecraft:blindness 3 0 true
    execute if score @s s10.gimmick matches 60 run effect give @s minecraft:slow_falling 3 0 true
    execute if score @s s10.gimmick matches 60 run particle minecraft:dust{color: 12544500, scale: 2.1} ~ ~0.5 ~ 0.7 1.2 0.7 0.1 360
    execute if score @s s10.gimmick matches 60 run playsound minecraft:entity.player.teleport voice @s ~ ~ ~ 0.4 1

# reset
    execute if score @s s10.gimmick matches 61 run scoreboard players set @s s10.gimmick -2
