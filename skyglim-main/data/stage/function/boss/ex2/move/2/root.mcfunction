#> stage:boss/ex2/move/2/root
# 
# でっかく AEC
# 
# 

# 予告
execute if score ex2 BossMoves matches 200 run function stage:boss/ex2/move/2/select

# 1
execute if score ex2 BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 280 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 300 as @a[distance=..80] run function stage:boss/ex2/move/2/damage-1

# 2
execute if score ex2 BossMoves matches 340 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 360 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 380 as @a[distance=..80] run function stage:boss/ex2/move/2/damage-2

# 3
execute if score ex2 BossMoves matches 420 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 440 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 460 as @a[distance=..80] run function stage:boss/ex2/move/2/damage-3

# 4
execute if score ex2 BossMoves matches 500 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 520 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 540 as @a[distance=..80] run function stage:boss/ex2/move/2/damage-4

# 5
execute if score ex2 BossMoves matches 580 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 600 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 620 as @a[distance=..80] run function stage:boss/ex2/move/2/damage-5

# 6
execute if score ex2 BossMoves matches 660 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 680 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 700 as @a[distance=..80] run function stage:boss/ex2/move/2/damage-6

# 7
execute if score ex2 BossMoves matches 740 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 760 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
execute if score ex2 BossMoves matches 780 as @a[distance=..80] run function stage:boss/ex2/move/2/damage-7

# reset
execute if score ex2 BossMoves matches 800.. run tp @s 9462 35 -235 -90 0
execute if score ex2 BossMoves matches 800.. run tp @a[distance=..30] 9472 35 -235 90 0
execute if score ex2 BossMoves matches 800.. run scoreboard players set ex2 BossMoves 20
