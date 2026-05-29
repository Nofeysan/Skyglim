#> stage:boss/4/move/1/root
# 
# でっかく AEC
# 
# 

# 予告
execute if score s4 BossMoves matches 200 run function stage:boss/4/move/1/select

# 1
execute if score s4 BossMoves matches 240 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 250 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 260 as @a[distance=..30] run function stage:boss/4/move/1/damage-1

# 2
execute if score s4 BossMoves matches 280 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 290 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 300 as @a[distance=..30] run function stage:boss/4/move/1/damage-2

# 3
execute if score s4 BossMoves matches 320 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 330 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 340 as @a[distance=..30] run function stage:boss/4/move/1/damage-3

# 4
execute if score s4 BossMoves matches 360 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 370 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 380 as @a[distance=..30] run function stage:boss/4/move/1/damage-4

# 5
execute if score s4 BossMoves matches 400 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 410 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 420 as @a[distance=..30] run function stage:boss/4/move/1/damage-5

# 6
execute if score s4 BossMoves matches 440 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 450 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 460 as @a[distance=..30] run function stage:boss/4/move/1/damage-6

# 7
execute if score s4 BossMoves matches 480 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 490 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s4 BossMoves matches 500 as @a[distance=..30] run function stage:boss/4/move/1/damage-7

# reset
execute if score s4 BossMoves matches 500.. run scoreboard players set s4 BossMoves 20
