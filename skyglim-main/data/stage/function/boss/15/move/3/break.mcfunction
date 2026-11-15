#> stage:boss/6/move/3/break
# 
# 落下のダメージ → マグマが出る感じ
# 
# 

# perform
    particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.03 30 force @a
    playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 0.5 1.2

# effect
    execute if score $s15.boss.half _ matches 0 run effect give @a[distance=..1.5] minecraft:wind_charged 1 10
    execute if score $s15.boss.half _ matches 1 run effect give @a[distance=..1.5] minecraft:wind_charged 1 20

# kill
    kill @s
