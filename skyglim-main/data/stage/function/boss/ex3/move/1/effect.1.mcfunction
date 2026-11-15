#> stage:boss/ex3/move/1/effect.
# 
# 
# 
# 

# title
    title @a[distance=..100] times 0 20 20
    title @a[distance=..100] title [{text: '\ue010 '}, {score: {name: "_", objective: "_"}, color: '#d94262'}, {text: ' \ue011'}]

# effect
    execute at @a[distance=..100] positioned ~ 101 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 1, str: 1, id: 231}

# perform
    execute as @a[distance=..100] at @s run playsound minecraft:block.piston.extend voice @s ~ ~ ~ 1 1
    execute as @a[distance=..100] at @s run particle minecraft:dust{color: 14238306, scale: 1.6} 0.7 1.2 0.7 ~ ~0.5 ~ 0.1 240
