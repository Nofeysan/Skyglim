#> stage:boss/ex3/move/1/effect.
# 
# 
# 
# 

# title
    title @a[distance=..100] times 0 20 20
    title @a[distance=..100] title [{text: '\ue010 '}, {score: {name: "_", objective: "_"}, color: '#086776'}, {text: ' \ue011'}]

# effect
    effect give @a[distance=..100] minecraft:wither 10 0

# perform
    execute as @a[distance=..100] at @s run playsound minecraft:entity.wither.spawn voice @s ~ ~ ~ 0.2 1
    execute as @a[distance=..100] at @s run particle minecraft:dust{color: 550774, scale: 1.6} 0.7 1.2 0.7 ~ ~0.5 ~ 0.1 240
