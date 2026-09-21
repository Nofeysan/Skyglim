#> stage:boss/6/move/1/root
# 
# 15s待機 → 攻撃（痛い）
# 
# 

# ボス待機
    execute if score s6 BossMoves matches 200..500 run tp @n[tag=boss, tag=s6] 10012 45 -178

# 召喚
    execute if score s6 BossMoves matches 200 run function stage:boss/6/move/1/summon

# AoE kill
    execute if score s6 BossMoves matches 201..505 positioned 10012 42 -178 as @e[distance=..20, type=minecraft:item, nbt={Item: {id: "minecraft:nether_star"}}] at @s run function stage:boss/6/move/1/remove_aoe

# 制限時間
    execute if score s6 BossMoves matches 503 run function stage:boss/6/move/1/limit

# reset
    execute if score s6 BossMoves matches 505.. run scoreboard players set s6 BossMoves 40
