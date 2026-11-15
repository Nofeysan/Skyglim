#> stage:boss/ex3/move/1/effect.
# 
# 
# 
# 

# title
    title @a[distance=..100] times 0 20 20
    title @a[distance=..100] title [{text: '\ue010 '}, {score: {name: "_", objective: "_"}, color: '#7fd6e2'}, {text: ' \ue011'}]

# effect
    effect give @a[distance=..100] minecraft:wind_charged 1 12

# perform
    execute as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.9
    execute as @a[distance=..100] at @s run particle minecraft:dust{color: 8378082, scale: 1.6} 0.7 1.2 0.7 ~ ~0.5 ~ 0.1 240
