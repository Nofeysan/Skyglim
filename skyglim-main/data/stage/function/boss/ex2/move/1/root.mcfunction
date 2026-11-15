#> stage:boss/11/move/1/root
# 
# 自分がいない方に AoE & tp
# as boss at @s
# 

# どっちにいる？
    execute if score ex2 BossMoves matches 200 run effect give @s minecraft:slowness 10 9 true
    execute if score ex2 BossMoves matches 200 store result score $ex2.which _ positioned 9459 35 -240 if entity @s[dx=16, dy=6, dz=10]

# 1: Right(Red) / 0: Left(Blue)
    execute if score ex2 BossMoves matches 200 if score $ex2.which _ matches 1 positioned 9467 35 -238 run function entity:aec_manager/summon/.square {r: 18, t: 140, dmg: 1, str: 1, id: 221}
    execute if score ex2 BossMoves matches 200 if score $ex2.which _ matches 0 positioned 9467 35 -216 run function entity:aec_manager/summon/.square {r: 18, t: 140, dmg: 1, str: 1, id: 221}

    # 壁埋める
        #execute if score ex2 BossMoves matches 360 run fill 9473 37 -229 9471 35 -229 minecraft:waxed_copper_grate
        #execute if score ex2 BossMoves matches 360 run fill 9461 37 -225 9463 35 -225 minecraft:waxed_copper_grate

    # tp
        execute if score ex2 BossMoves matches 360 if score $ex2.which _ matches 1 run tp @s 9462 35 -219 -90 0
        execute if score ex2 BossMoves matches 360 if score $ex2.which _ matches 1 run tp @a[distance=..50] 9472 35 -219 90 0
        execute if score ex2 BossMoves matches 360 if score $ex2.which _ matches 0 run tp @s 9462 35 -235 -90 0
        execute if score ex2 BossMoves matches 360 if score $ex2.which _ matches 0 run tp @a[distance=..50] 9472 35 -235 90 0

# reset
    execute if score ex2 BossMoves matches 361.. run scoreboard players set ex2 BossMoves 60
