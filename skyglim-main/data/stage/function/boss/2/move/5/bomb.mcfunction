#> stage:boss/2/move/5/summon
# 
# 爆発（割合）
# 
# 

# sound
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.7 2
execute at @e[distance=..30, tag=gimmick.tnt] run particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 0 2 force @a

# effect
execute as @e[distance=..30, tag=gimmick.tnt] at @s run effect give @a[distance=..1.5] minecraft:wind_charged 1 30 true

# kill
kill @e[distance=..30, tag=gimmick.tnt]
