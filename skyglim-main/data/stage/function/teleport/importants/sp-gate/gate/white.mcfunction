#> stage:teleport/importants/sp-gate/gate/white
# 
# 
# 
# 

# fill
    fill 9888 45 51 9887 43 49 minecraft:air destroy

# perform
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 1.2

    tellraw @a {translate: 'stage.sp.gate.open.white', color: '#fff6fe'}

# score
    scoreboard players set $sp.gate.open.white _ 1
