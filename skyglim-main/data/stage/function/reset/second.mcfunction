#> stage:reset/second
# 
# 入場中のステージにおいて、プレイヤーがいなければリセットを行う
# 
# 

# check
execute if score _ stage.1 matches 1.. positioned 9849 4 -8 unless entity @a[dx=102, dy=52, dz=139] run function stage:reset/stage/1
execute if score _ stage.2 matches 1.. positioned 9862 -64 -100 unless entity @a[dx=32, dy=98, dz=32] run function stage:reset/stage/2
execute if score _ stage.3 matches 1.. positioned 9378 20 -121 unless entity @a[dx=370, dy=40, dz=390] run function stage:reset/stage/3
execute if score _ stage.4 matches 1.. positioned 9853 -28 -152 unless entity @a[dx=43, dy=118, dz=38] run function stage:reset/stage/4
execute if score _ stage.5 matches 1.. positioned 9744 63 -467 unless entity @a[dx=98, dy=66, dz=191] run function stage:reset/stage/5
execute if score _ stage.6 matches 1.. positioned 9958 35 -233 unless entity @a[dx=117, dy=85, dz=89] run function stage:reset/stage/6
execute if score _ stage.7 matches 1.. positioned 9746 -5 -532 unless entity @a[dx=233, dy=52, dz=257] run function stage:reset/stage/7

execute if score _ stage.9 matches 1.. positioned 10152 -38 49 unless entity @a[dx=284, dy=90, dz=284] run function stage:reset/stage/9
execute if score _ stage.10 matches 1.. positioned 10098 2 -359 unless entity @a[dx=73, dy=27, dz=217] run function stage:reset/stage/10
execute if score _ stage.11 matches 1.. positioned 10744 319 -295 unless entity @a[dx=339, dy=75, dz=181] run function stage:reset/stage/11
execute if score _ stage.12 matches 1.. positioned 11027 233 -148 unless entity @a[dx=172, dy=32, dz=108] run function stage:reset/stage/12
execute if score _ stage.13 matches 1.. positioned 8992 5 -185 unless entity @a[dx=95, dy=30, dz=213] run function stage:reset/stage/13
execute if score _ stage.14 matches 1.. positioned 7507 57 -132 unless entity @a[dx=304, dy=57, dz=136] run function stage:reset/stage/14
execute if score _ stage.15 matches 1.. positioned 6737 53 -37 unless entity @a[dx=186, dy=42, dz=60] run function stage:reset/stage/15

#! 討伐するまではリセット処理を行う
execute if score _ stage.16 matches 1.. positioned 9478 143 -540 unless entity @a[dx=72, dy=70, dz=72] run function stage:reset/stage/16

execute if score _ stage.ex.1 matches 1.. positioned 9824 67 158 unless entity @a[dx=91, dy=44, dz=158] run function stage:reset/stage/ex1
execute if score _ stage.ex.2 matches 1.. positioned 9454 20 -256 unless entity @a[dx=278, dy=35, dz=54] run function stage:reset/stage/ex2
execute if score _ stage.ex.3 matches 1.. positioned 9922 98 -530 unless entity @a[dx=69, dy=48, dz=60] run function stage:reset/stage/ex3
execute if score _ stage.ex.4 matches 1.. positioned 10064 9 -463 unless entity @a[dx=158, dy=72, dz=109] run function stage:reset/stage/ex4
execute if score _ stage.ex.5 matches 1.. positioned 10240 8 -288 unless entity @a[dx=70, dy=48, dz=234] run function stage:reset/stage/ex5
execute if score _ stage.ex.6 matches 1.. positioned 10936 226 273 unless entity @a[dx=172, dy=93, dz=141] run function stage:reset/stage/ex6
execute if score _ stage.ex.7 matches 1.. positioned 8032 66 -544 unless entity @a[dx=207, dy=56, dz=431] run function stage:reset/stage/ex7
execute if score _ stage.ex.8 matches 1.. positioned 6864 48 -144 unless entity @a[dx=95, dy=44, dz=63] run function stage:reset/stage/ex8


# S3 専用水にいたら毒
execute as @a at @s positioned 9378 20 -121 if entity @s[dx=370, dy=40, dz=217] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:poison 1 1

#clear @a minecraft:stick[minecraft:repair_cost=1]
