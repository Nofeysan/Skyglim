#> stage:boss/4/move/1/select-up
# 
# 0: 上が正解 / 1: 下が正解
# 
# 

# particle
execute if score _ _ matches 0 positioned 9882 -27 -138 run particle minecraft:sweep_attack ~ ~ ~ 15 2 15 0.1 1080
execute if score _ _ matches 1 positioned 9882 -17 -138 run particle minecraft:sweep_attack ~ ~ ~ 15 2 15 0.1 1080

# effect
execute if score _ _ matches 0 positioned 9868 -27 -152 run effect give @a[dx=28, dy=5, dz=28] minecraft:wind_charged 1 25 true
execute if score _ _ matches 1 positioned 9868 -21 -152 run effect give @a[dx=28, dy=5, dz=28] minecraft:wind_charged 1 25 true

# sound
# 適切な方にいる人は levelup, 間違ってる人は wither.shoot
execute if score _ _ matches 0 positioned 9868 -27 -152 as @a[dx=28, dy=5, dz=28] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 2
execute if score _ _ matches 0 positioned 9868 -21 -152 as @a[dx=28, dy=5, dz=28] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1

execute if score _ _ matches 1 positioned 9868 -27 -152 as @a[dx=28, dy=5, dz=28] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 2
execute if score _ _ matches 1 positioned 9868 -21 -152 as @a[dx=28, dy=5, dz=28] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1
