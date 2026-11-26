#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# aj.tp
    execute as @n[tag=aj.skyglim.cecile.root] at @s positioned as @n[predicate=entity:entity_enemy, tag=boss, tag=s16] run tp @s ~ ~ ~ ~ 0
    execute as @n[tag=aj.skyglim.cecile.root] at @s facing entity @p eyes run rotate @s ~ 0
    time set midnight
    effect clear @e[predicate=entity:entity_enemy, tag=boss, tag=s16] minecraft:slowness

# data get
    data modify storage boss: stage.16 set from entity @n[tag=boss, tag=s16] data

#* 割合取得
    # 初期化
        data remove storage km_solver: inputs
        data remove storage km_solver: vars


    # 計算; 割合を小数第2位まで
    # rate = C / M * 100
    # C = 現在の体力
    # M = 最大体力

    # 式・初期値
        data modify storage km_solver: inputs append value {f: {mul: [{div: [{v: "C"}, {v: "M"}]}, {n: 100.0f}]} }
        data modify storage km_solver: vars set value {C: 1.0f, M: 1.0f}

    # 変数代入
        data modify storage km_solver: vars.C set from storage boss: stage.16.status.current_hp
        data modify storage km_solver: vars.M set from storage boss: stage.16.status.max_hp

    # 実行
        execute at @p run function km_solver:solve

    # 割合取得
        execute store result score $s16.boss.rate _ run data get storage km_solver: outputs[0]

    # 半分取得
        execute if score s16 BossMoves matches ..199 unless score $s16.boss.half _ matches 1 if score $s16.boss.rate _ matches ..50 as @n[tag=boss, tag=s16] at @s run function stage:boss/16/half

#

# HP 表示
execute store result bossbar minecraft:stage16.boss max run data get storage boss: stage.16.status.max_hp
execute store result bossbar minecraft:stage16.boss value run data get storage boss: stage.16.status.current_hp

# 行動
scoreboard players add s16 BossMoves 1
scoreboard players add @e[type=minecraft:bat, tag=gimmick.bat.s16] s16.gimmick 1

execute if score s16 BossMoves matches 200 as @n[tag=boss, tag=s16] at @s run function stage:boss/16/move/root
execute as @e[type=minecraft:bat, tag=gimmick.bat.s16] if score @s s16.gimmick matches 420.. run kill @s

execute if score s16 BossMoves matches 200.. if score s16-type BossMoves matches 1 as @n[tag=boss, tag=s16] at @s run function stage:boss/16/move/1/root
execute if score s16 BossMoves matches 200.. if score s16-type BossMoves matches 2 unless score $s16.boss.half _ matches 1 as @n[tag=boss, tag=s16] at @s run function stage:boss/16/move/2/no_half/root
execute if score s16 BossMoves matches 200.. if score s16-type BossMoves matches 2 if score $s16.boss.half _ matches 1 as @n[tag=boss, tag=s16] at @s run function stage:boss/16/move/2/half/root
execute if score s16 BossMoves matches 200.. if score s16-type BossMoves matches 5 as @n[tag=boss, tag=s16] at @s run function stage:boss/16/move/5/root
execute if score s16 BossMoves matches 200.. if score s16-type BossMoves matches 6 as @n[tag=boss, tag=s16] at @s run function stage:boss/16/move/6/root
