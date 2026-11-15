#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# ランダムなプレイヤーの上に tp
    # 対象者決定
        execute if score s12 BossMoves matches 200 at @r[distance=..75] align xz positioned ~0.5 ~7 ~0.5 run summon minecraft:item ~ ~ ~ {Tags: ["gimmick", "gimmick.s12.tp"], Glowing: true, PickupDelay: -1, NoGravity: true}
        execute if score s12 BossMoves matches 200 as @a[distance=..75] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 1.2 1

    # target の直上に tp
        execute if score s12 BossMoves matches 220 run tp @s @n[type=minecraft:item, tag=gimmick.s12.tp]
        execute if score s12 BossMoves matches 220 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 48, str: 35, id: 122}
        execute if score s12 BossMoves matches 220 run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 48, str: 35, id: 122}
        execute if score s12 BossMoves matches 220..279 as @a[distance=..75] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2

# break
    execute if score s12 BossMoves matches 280 unless score $s12.boss.half _ matches 1 run fill ~3 ~1 ~3 ~-3 ~-1 ~-3 minecraft:air replace #stage:can_break
    execute if score s12 BossMoves matches 280 if score $s12.boss.half _ matches 1 run fill ~4 ~1 ~4 ~-4 ~-1 ~-4 minecraft:air replace #stage:can_break

# reset
    execute if score s12 BossMoves matches 280.. run kill @n[type=minecraft:item, tag=gimmick.s12.tp]
    execute if score s12 BossMoves matches 280.. run scoreboard players set s12 BossMoves 100
