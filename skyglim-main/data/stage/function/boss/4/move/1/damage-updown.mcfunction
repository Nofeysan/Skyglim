#> stage:boss/4/move/1/select-up
# 
# 0: 上が正解 / 1: 下が正解
# 
# 

# particle
execute if score _ _ matches 0 positioned ~ ~ ~ run particle minecraft:sweep_attack ~ ~ ~ 10 3 10 0.1 480
execute if score _ _ matches 1 positioned ~ ~ ~ run particle minecraft:sweep_attack ~ ~ ~ 10 3 10 0.1 480

# effect
execute if score _ _ matches 0 positioned ~ ~ ~ run effect give @a[dx=1, dy=1, dz=1] minecraft:wind_charged 1 25 true
execute if score _ _ matches 1 positioned ~ ~ ~ run effect give @a[dx=1, dy=1, dz=1] minecraft:wind_charged 1 25 true

# sound
# 適切な方にいる人は levelup, 間違ってる人は wither.shoot
execute if score _ _ matches 0 positioned ~ ~ ~ as @a[dx=1, dy=1, dz=1] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 2
execute if score _ _ matches 0 positioned ~ ~ ~ as @a[dx=1, dy=1, dz=1] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1

execute if score _ _ matches 1 positioned ~ ~ ~ as @a[dx=1, dy=1, dz=1] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 2
execute if score _ _ matches 1 positioned ~ ~ ~ as @a[dx=1, dy=1, dz=1] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
