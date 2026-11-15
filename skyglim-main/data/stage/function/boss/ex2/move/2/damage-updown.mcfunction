#> stage:boss/4/move/1/select-up
# 
# 0: 赤が正解 / 1: 青が正解
# = 0: 青にparticle / 1: 赤にparticle
# 

# particle
execute if score _ _ matches 0 positioned 9467 35 -219 run particle minecraft:sweep_attack ~ ~0.5 ~ 5 1.5 3 0.1 600
execute if score _ _ matches 0 positioned 9467 35 -219 run particle minecraft:dust{color: 14238306, scale: 2.4} ~ ~0.5 ~ 5 1.5 3 0.1 600

execute if score _ _ matches 1 positioned 9467 35 -235 run particle minecraft:sweep_attack ~ ~0.5 ~ 5 1.5 3 0.1 600
execute if score _ _ matches 1 positioned 9467 35 -235 run particle minecraft:dust{color: 14238306, scale: 2.4} ~ ~0.5 ~ 5 1.5 3 0.1 600

# effect
execute if score _ _ matches 0 positioned 9459.0 35 -225.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=16, dy=7, dz=11] minecraft:wind_charged 1 26 true
execute if score _ _ matches 1 positioned 9459.9 35 -240.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=16, dy=7, dz=11] minecraft:wind_charged 1 26 true

# sound
# 適切な方にいる人は levelup, 間違ってる人は wither.shoot
execute if score _ _ matches 0 positioned 9459.0 35 -225.0 positioned ~0.5 ~ ~0.5 as @a[dx=16, dy=7, dz=11] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
execute if score _ _ matches 0 positioned 9459.9 35 -240.0 positioned ~0.5 ~ ~0.5 as @a[dx=16, dy=7, dz=11] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1

execute if score _ _ matches 1 positioned 9459.9 35 -240.0 positioned ~0.5 ~ ~0.5 as @a[dx=16, dy=7, dz=11] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1
execute if score _ _ matches 1 positioned 9459.0 35 -225.0 positioned ~0.5 ~ ~0.5 as @a[dx=16, dy=7, dz=11] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
