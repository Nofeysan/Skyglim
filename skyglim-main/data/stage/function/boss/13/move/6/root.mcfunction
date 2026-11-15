#> stage:boss/13/move/6/root
# 
# でっかく AEC
# 
# 

# 予告
execute if score s13 BossMoves matches 200 run function stage:boss/13/move/6/select

# 1
execute if score s13 BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 270 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 280 as @a[distance=..80] run function stage:boss/13/move/6/damage-1

# 2
execute if score s13 BossMoves matches 300 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 310 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 320 as @a[distance=..80] run function stage:boss/13/move/6/damage-2

# 3
execute if score s13 BossMoves matches 340 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 350 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 360 as @a[distance=..80] run function stage:boss/13/move/6/damage-3

# 4
execute if score s13 BossMoves matches 380 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 390 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 400 as @a[distance=..80] run function stage:boss/13/move/6/damage-4

# 5
execute if score s13 BossMoves matches 420 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 430 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 440 as @a[distance=..80] run function stage:boss/13/move/6/damage-5

# 6
execute if score s13 BossMoves matches 460 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 470 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 480 as @a[distance=..80] run function stage:boss/13/move/6/damage-6

# 7
execute if score s13 BossMoves matches 500 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 510 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score s13 BossMoves matches 520 as @a[distance=..80] run function stage:boss/13/move/6/damage-7

# reset
execute if score s13 BossMoves matches 520.. run scoreboard players set s13 BossMoves 20
