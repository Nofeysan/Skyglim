#> stage:boss/ex3/move/1/effect.
# 
# 
# 
# 

# title
    title @a[distance=..100] times 0 20 20
    title @a[distance=..100] title [{text: '\ue010 '}, {score: {name: "_", objective: "_"}, color: '#bf69f4'}, {text: ' \ue011'}]

# effect
    effect give @a[distance=..100] minecraft:weakness 10 0

# perform
    execute as @a[distance=..100] at @s run playsound minecraft:entity.blaze.death voice @s ~ ~ ~ 0.2 1
    execute as @a[distance=..100] at @s run playsound minecraft:entity.firework_rocket.twinkle voice @s ~ ~ ~ 0.7 1
    execute as @a[distance=..100] at @s run particle minecraft:dust{color: 12544500, scale: 1.6} 0.7 1.2 0.7 ~ ~0.5 ~ 0.1 240
