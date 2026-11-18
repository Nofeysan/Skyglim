#> stage:boss/ex5/move/3/root
# 
# 鈍足与えて AoE
# 
# 

# time
    scoreboard players operation _ _ = ex5 BossMoves
    scoreboard players operation _ _ %= #20 num

    execute if score _ _ matches 0 if score ex5 BossMoves matches 240..280 run function stage:boss/ex5/move/3/perform
    execute if score _ _ matches 0 if score ex5 BossMoves matches 320..360 run function stage:boss/ex5/move/3/perform

# 鈍足
    execute if score ex5 BossMoves matches 200..380 run effect give @a[distance=..80] minecraft:slowness 2 1

# AoE
    execute if score ex5 BossMoves matches 240 at @a[distance=..80] positioned ~ 24 ~ run function stage:boss/ex5/move/3/summon_aoe
    execute if score ex5 BossMoves matches 260 at @a[distance=..80] positioned ~ 24 ~ run function stage:boss/ex5/move/3/summon_aoe
    execute if score ex5 BossMoves matches 280 at @a[distance=..80] positioned ~ 24 ~ run function stage:boss/ex5/move/3/summon_aoe

    execute if score ex5 BossMoves matches 320 at @a[distance=..80] positioned ~ 24 ~ run function stage:boss/ex5/move/3/summon_aoe
    execute if score ex5 BossMoves matches 340 at @a[distance=..80] positioned ~ 24 ~ run function stage:boss/ex5/move/3/summon_aoe
    execute if score ex5 BossMoves matches 360 at @a[distance=..80] positioned ~ 24 ~ run function stage:boss/ex5/move/3/summon_aoe

# reset
    execute if score ex5 BossMoves matches 400.. run scoreboard players set ex5 BossMoves 0
