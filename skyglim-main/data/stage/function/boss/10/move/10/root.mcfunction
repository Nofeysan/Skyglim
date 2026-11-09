#> stage:boss/6/move/3/root
# 
# 避けタイム
# 
# 

# tp 
    execute if score s10 BossMoves matches 200..600 run tp @n[tag=boss, tag=s10] 10148.0 11 -339.0

# 両端を消す
    # AoE で事前予告
        execute if score s10 BossMoves matches 200 run function stage:boss/10/move/10/remove_call
        execute if score s10 BossMoves matches 200..260 as @a[distance=..30] at @s run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 0.3 2

    # 即死床に変更
        execute if score s10 BossMoves matches 260 run fill 10138 5 -349 10142 5 -330 minecraft:nether_wart_block
        execute if score s10 BossMoves matches 260 run fill 10153 5 -349 10157 5 -330 minecraft:nether_wart_block

# 本格的な攻撃 (300..)
    # line (per 20tick)
        scoreboard players operation _ _ = s10 BossMoves
        scoreboard players operation _ _ %= #40 num
        
        execute if score s10 BossMoves matches 300..500 if score _ _ matches 0 run function stage:boss/10/move/10/summon_line

    # line 進める + ダメージ
        execute if score s10 BossMoves matches 300..600 run function stage:boss/10/move/10/line_dealt

    # AoE
        # player
            execute if score s10 BossMoves matches 360 at @a[distance=..30] positioned ~ 6 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 48, str: 56, id: 103}
            execute if score s10 BossMoves matches 480 at @a[distance=..30] positioned ~ 6 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 48, str: 56, id: 103}
        
        # random place
            execute if score s10 BossMoves matches 420 at @e[tag=1x1, tag=center, sort=random, limit=5] run function entity:aec_manager/summon/.square {r: 5, t: 60, dmg: 48, str: 56, id: 101}
            execute if score s10 BossMoves matches 480 at @e[tag=1x1, tag=center, sort=random, limit=6] run function entity:aec_manager/summon/.square {r: 5, t: 60, dmg: 48, str: 56, id: 101}

# reset
    execute if score s10 BossMoves matches 600.. run clone 10136 -2 -351 10159 -2 -328 10136 5 -351
    execute if score s10 BossMoves matches 600.. run particle minecraft:cloud 10148.5 5 -339.5 5 0.2 5 0.12 2400
    execute if score s10 BossMoves matches 600.. as @a[distance=..30] at @s run playsound minecraft:entity.wither.shoot voice @s ~ ~ ~ 0.7 2
    execute if score s10 BossMoves matches 600.. run scoreboard players set s10 BossMoves 80
