#> stage:teleport/importants/sp-gate/gate/green
# 
# 
# 
# 

# fill
    fill 9905 122 -206 9903 122 -208 minecraft:air destroy
    setblock 9904 121 -207 minecraft:air destroy

# perform
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 1.2

    tellraw @a {translate: 'stage.sp.gate.open.green', color: '#92f3a4'}

# score
    scoreboard players set $sp.gate.open.green _ 1
