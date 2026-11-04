#> stage:boss/6/move/3/root
# 
# 避けタイム
# 
# 

# tp 
    execute if score s10 BossMoves matches 200..400 run tp @n[tag=boss, tag=s10] 10148.0 11 -339.0

# 両端を消す
    # AoE で事前予告
    execute if score s10 BossMoves matches 200 run function stage:boss/10/move/3/remove_call

    # 即死床に変更
    execute if score s10 BossMoves matches 260 run fill 10138 5 -349 10142 5 -330 minecraft:nether_wart_block
    execute if score s10 BossMoves matches 260 run fill 10153 5 -349 10157 5 -330 minecraft:nether_wart_block

# 本格的な攻撃 (300..)



# AoE
execute if score s10 BossMoves matches 200 run function entity:aec_manager/summon/.cyl {r: 31, t: 140, dmg: 16, str: 18, id: 73}
execute if score s10 BossMoves matches 200 run playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.5 1.5

# reset
    execute if score s10 BossMoves matches 340.. run scoreboard players set s10 BossMoves 80
    execute if score s10 BossMoves matches 340.. run clone 10136 -2 -351 10159 -2 -328 10136 5 -351
