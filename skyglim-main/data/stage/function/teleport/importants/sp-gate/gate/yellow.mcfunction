#> stage:teleport/importants/sp-gate/gate/yellow
# 
# 
# 
# 

# fill
    fill 9943 102 -36 9941 102 -34 minecraft:air destroy
    fill 9943 101 -36 9942 101 -34 minecraft:air destroy

# perform
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 1.2

    tellraw @a {translate: 'stage.sp.gate.open.yellow', color: '#e9b530'}

# score
    scoreboard players set $sp.gate.open.yellow _ 1
