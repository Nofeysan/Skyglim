#> stage:teleport/importants/sp-gate/gate/magenta
# 
# 
# 
# 

# fill
    fill 8035 77 -125 8036 75 -123 minecraft:air destroy

# perform
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 1.2

    tellraw @a {translate: 'stage.sp.gate.open.magenta', color: '#bf69f4'}

# score
    scoreboard players set $sp.gate.open.magenta _ 1
