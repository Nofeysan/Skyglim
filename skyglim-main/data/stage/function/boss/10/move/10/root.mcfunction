#> stage:boss/6/move/3/root
# 
# 避けタイム
# 
# 

# tp 
    execute if score s10 BossMoves matches 200..400 run tp @n[tag=boss, tag=s10] 10148.0 11 -339.0

# 両端を消す
    # AoE で事前予告
        execute if score s10 BossMoves matches 200 run function stage:boss/10/move/10/remove_call

    # 即死床に変更
        execute if score s10 BossMoves matches 260 run fill 10138 5 -349 10142 5 -330 minecraft:nether_wart_block
        execute if score s10 BossMoves matches 260 run fill 10153 5 -349 10157 5 -330 minecraft:nether_wart_block

# 本格的な攻撃 (300..)
    # line (per 20tick)
        execute if score s10 BossMoves matches 300 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 320 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 340 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 360 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 380 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 400 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 420 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 440 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 460 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 480 run function stage:boss/10/move/10/summon_line
        execute if score s10 BossMoves matches 500 run function stage:boss/10/move/10/summon_line

    # line 進める + ダメージ
        execute if score s10 BossMoves matches 300..500 run function stage:boss/10/move/10/line_dealt

    # AoE
        # player
            execute if score s10 BossMoves matches 360 at @a[distance=..30] run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 103}
            execute if score s10 BossMoves matches 480 at @a[distance=..30] run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 103}
        
        # random place
            execute if score s10 BossMoves matches 420 at @e[tag=1x1, sort=random, limit=12] run function entity:aec_manager/summon/.square {r: 5, t: 60, dmg: 16, str: 18, id: 101}
            execute if score s10 BossMoves matches 480 at @e[tag=1x1, sort=random, limit=12] run function entity:aec_manager/summon/.square {r: 5, t: 60, dmg: 16, str: 18, id: 101}


# AoE
    execute if score s10 BossMoves matches 200 run function entity:aec_manager/summon/.cyl {r: 31, t: 140, dmg: 16, str: 18, id: 73}
    execute if score s10 BossMoves matches 200 run playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.5 1.5

# reset
    execute if score s10 BossMoves matches 600.. run scoreboard players set s10 BossMoves 80
    execute if score s10 BossMoves matches 600.. run clone 10136 -2 -351 10159 -2 -328 10136 5 -351
