#> stage:boss/4/move/1/select-up
# 
# 0: 上が正解 / 1: 下が正解
# = 0: 下にparticle / 1: 上にparticle
# 

# particle
execute if score _ _ matches 0 positioned 9062 12 -166 run particle minecraft:sweep_attack ~ ~ ~ 10 1.5 10 0.1 1280
execute if score _ _ matches 0 positioned 9062 12 -166 run particle minecraft:dust{color: 14238306, scale: 2.4} ~ ~ ~ 10 1.5 10 0.1 1680
execute if score _ _ matches 1 positioned 9062 16 -166 run particle minecraft:sweep_attack ~ ~ ~ 10 1.5 10 0.1 1280
execute if score _ _ matches 1 positioned 9062 16 -166 run particle minecraft:dust{color: 14238306, scale: 2.4} ~ ~ ~ 10 1.5 10 0.1 1680

# effect
execute if score _ _ matches 0 positioned 9044.0 12 -184.0 run effect give @a[dx=36, dy=3, dz=36] minecraft:wind_charged 1 26 true
execute if score _ _ matches 1 positioned 9044.0 16 -184.0 run effect give @a[dx=36, dy=3, dz=36] minecraft:wind_charged 1 26 true

# sound
# 適切な方にいる人は levelup, 間違ってる人は wither.shoot
execute if score _ _ matches 0 positioned 9044.0 12 -184.0 as @a[dx=36, dy=3, dz=36] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
execute if score _ _ matches 0 positioned 9044.0 16 -184.0 as @a[dx=36, dy=3, dz=36] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1

execute if score _ _ matches 1 positioned 9044.0 12 -184.0 as @a[dx=36, dy=3, dz=36] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1
execute if score _ _ matches 1 positioned 9044.0 16 -184.0 as @a[dx=36, dy=3, dz=36] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
