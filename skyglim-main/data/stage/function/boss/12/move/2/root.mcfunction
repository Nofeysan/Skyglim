#> stage:boss/6/move/2/root
# 
# スポナーからランダムに浮かせてAoE
# 
# 

# warn
    execute if score s12 BossMoves matches 200 run title @a[distance=..75] subtitle '[!]'
    execute if score s12 BossMoves matches 200 run title @a[distance=..75] times 0 60 20

    execute if score s12 BossMoves matches 200 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1 0.5
    execute if score s12 BossMoves matches 210 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1 0.5
    execute if score s12 BossMoves matches 220 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1 0.5

    execute if score s12 BossMoves matches 220 run effect give @s minecraft:levitation 1 8 true
    execute if score s12 BossMoves matches 260 run function stage:boss/12/move/2/ground

    execute if score s12 BossMoves matches 260 run effect give @s minecraft:levitation 1 8 true
    execute if score s12 BossMoves matches 300 run function stage:boss/12/move/2/ground

    execute if score s12 BossMoves matches 300 run effect give @s minecraft:levitation 1 8 true
    execute if score s12 BossMoves matches 340 run function stage:boss/12/move/2/ground

# reset
    execute if score s12 BossMoves matches 340.. run scoreboard players set s12 BossMoves 80
