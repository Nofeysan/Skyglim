#> stage:boss/ex3/move/1/effect.
# 
# 
# 
# 

# title
    title @a[distance=..100] times 0 20 20
    title @a[distance=..100] title [{text: '\ue010 '}, {score: {name: "_", objective: "_"}, color: '#746aac'}, {text: ' \ue011'}]

# effect
    effect give @a[distance=..100] minecraft:slowness 10 3

# perform
    execute as @a[distance=..100] at @s run playsound minecraft:block.nylium.step voice @s ~ ~ ~ 1 1
    execute as @a[distance=..100] at @s run playsound minecraft:block.redstone_torch.burnout voice @s ~ ~ ~ 0.5 1
    execute as @a[distance=..100] at @s run particle minecraft:dust{color: 7629484, scale: 1.6} 0.7 1.2 0.7 ~ ~0.5 ~ 0.1 240
