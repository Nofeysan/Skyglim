#> stage:boss/15/move/init/root
# 
# ステージを水浸しにするぞ！
# 
# 

# 天井
    execute if score s15 BossMoves matches 200 run fill 6746 83 -29 6784 83 9 minecraft:black_stained_glass
    execute if score s15 BossMoves matches 200 as @a at @s run playsound minecraft:block.anvil.place voice @s ~ ~ ~ 0.4 1

# water
    execute if score s15 BossMoves matches 220 run fill 6746 74 -29 6784 75 9 minecraft:water
    execute if score s15 BossMoves matches 230 run fill 6746 76 -29 6784 77 9 minecraft:water
    execute if score s15 BossMoves matches 240 run fill 6746 78 -29 6784 79 9 minecraft:water
    execute if score s15 BossMoves matches 250 run fill 6746 80 -29 6784 81 9 minecraft:water
    execute if score s15 BossMoves matches 260 run fill 6746 82 -29 6784 82 9 minecraft:water

    execute if score s15 BossMoves matches 220 as @a at @s run playsound minecraft:entity.dolphin.splash voice @s ~ ~ ~ 0.4 1.2
    execute if score s15 BossMoves matches 230 as @a at @s run playsound minecraft:entity.dolphin.splash voice @s ~ ~ ~ 0.4 1.2
    execute if score s15 BossMoves matches 240 as @a at @s run playsound minecraft:entity.dolphin.splash voice @s ~ ~ ~ 0.4 1.2
    execute if score s15 BossMoves matches 250 as @a at @s run playsound minecraft:entity.dolphin.splash voice @s ~ ~ ~ 0.4 1.2
    execute if score s15 BossMoves matches 260 as @a at @s run playsound minecraft:entity.dolphin.splash voice @s ~ ~ ~ 0.4 1.2

# reset
    execute if score s15 BossMoves matches 260.. run scoreboard players set s15 BossMoves 100
