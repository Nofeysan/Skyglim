#> stage:teleport/importants/sp-gate/gate/cyan
# 
# 
# 
# 

# fill
    fill 10056 60 -61 10058 60 -59 minecraft:air destroy
    setblock 10057 59 -60 minecraft:air destroy

# perform
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 1.2

    tellraw @a {translate: 'stage.sp.gate.open.cyan', color: '#66a5b8'}

# score
    scoreboard players set $sp.gate.open.cyan _ 1
