#> stage:teleport/importants/sp-gate/gate/light_blue
# 
# 
# 
# 

# fill
    fill 10028 15 -336 10029 13 -334 minecraft:air destroy

# perform
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 1.2

    tellraw @a {translate: 'stage.sp.gate.open.light_blue', color: '#44ddf4'}

# score
    scoreboard players set $sp.gate.open.light_blue _ 1
