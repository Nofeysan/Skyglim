#> stage:boss/6/move/3/break
# 
# キャンディーが割れる感じ
# 
# 

# perform
    particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.03 20 force @a
    playsound minecraft:block.glass.break voice @a ~ ~ ~ 0.5 1

# effect
    effect give @a[distance=..1.5] minecraft:wind_charged 1 10

# kill
    kill @s
