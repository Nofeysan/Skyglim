#> stage:boss/11/move/2/item_tick
# 
# tick で実行
# 一定ごとにダメージ & kill 処理は自分で
# 
# as @s at @s
# 
# 0: 召喚 → 60: AoE 爆発（50 で落下）
# 80, 100, 120, 140: circle 表示（140 は +damage）
# 180, 200, 220, 240: circle 表示（240 は +damage）
# 240: kill
# 

# score += 1
    scoreboard players add @s s11.gimmick 1

# 50: 落下
    execute if score @s s11.gimmick matches 50 run data modify entity @s NoGravity set value false

# 80~: ダメージ 1
    execute if score @s s11.gimmick matches 80 run function entity:aec_manager/summon/.cyl {r: 19, t: 80, dmg: 48, str: 56, id: 112}
    execute if score @s s11.gimmick matches 80 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 0.4 0.5
    execute if score @s s11.gimmick matches 80 run function stage:boss/11/move/2/particle {color: 3301326}

    execute if score @s s11.gimmick matches 100 run function stage:boss/11/move/2/particle {color: 16766760}
    execute if score @s s11.gimmick matches 100 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 0.4 1.0

    execute if score @s s11.gimmick matches 120 run function stage:boss/11/move/2/particle {color: 12652105}
    execute if score @s s11.gimmick matches 120 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 0.4 2.0

# 180~: ダメージ 1
    execute if score @s s11.gimmick matches 180 run function entity:aec_manager/summon/.cyl {r: 19, t: 80, dmg: 48, str: 56, id: 112}
    execute if score @s s11.gimmick matches 180 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 0.4 0.5
    execute if score @s s11.gimmick matches 180 run function stage:boss/11/move/2/particle {color: 3301326}

    execute if score @s s11.gimmick matches 200 run function stage:boss/11/move/2/particle {color: 16766760}
    execute if score @s s11.gimmick matches 200 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 0.4 1.0

    execute if score @s s11.gimmick matches 220 run function stage:boss/11/move/2/particle {color: 12652105}
    execute if score @s s11.gimmick matches 220 run playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 0.4 2.0

# 240: kill
