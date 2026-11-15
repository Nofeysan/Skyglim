#> stage:boss/11/move/1/root
# 
# random 勝負
# 
# 

# random
    execute if score ex3 BossMoves matches 200..240 store result score _ _ run random value 1..6
    execute if score ex3 BossMoves matches 200..239 as @a[distance=..100] at @s run playsound minecraft:block.note_block.xylophone voice @s ~ ~ ~ 0.6 0.5
    execute if score ex3 BossMoves matches 200..239 run title @a[distance=..100] title [{text: '\ue010 '}, {score: {name: "_", objective: "_"}}, {text: ' \ue011'}]

# 実行
    execute if score ex3 BossMoves matches 200..239 as @a[distance=..100] at @s run playsound minecraft:block.note_block.xylophone voice @s ~ ~ ~ 0.6 1
    execute if score ex3 BossMoves matches 240 if score _ _ matches 1 run function stage:boss/ex3/move/1/effect.1
    execute if score ex3 BossMoves matches 240 if score _ _ matches 2 run function stage:boss/ex3/move/1/effect.2
    execute if score ex3 BossMoves matches 240 if score _ _ matches 3 run function stage:boss/ex3/move/1/effect.3
    execute if score ex3 BossMoves matches 240 if score _ _ matches 4 run function stage:boss/ex3/move/1/effect.4
    execute if score ex3 BossMoves matches 240 if score _ _ matches 5 run function stage:boss/ex3/move/1/effect.5
    execute if score ex3 BossMoves matches 240 if score _ _ matches 6 run function stage:boss/ex3/move/1/effect.6

# reset
    execute if score ex3 BossMoves matches 241.. run scoreboard players set ex3 BossMoves 40
