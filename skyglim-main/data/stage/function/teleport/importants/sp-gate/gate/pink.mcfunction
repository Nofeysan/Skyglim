#> stage:teleport/importants/sp-gate/gate/pink
# 
# 
# 
# 

# fill
    fill 10794 187 76 10795 185 78 minecraft:air destroy

# perform
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 1.2

    tellraw @a {translate: 'stage.sp.gate.open.pink', color: '#e094d7'}

# score
    scoreboard players set $sp.gate.open.pink _ 1
