#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# aj.tp
    execute as @n[tag=aj.skyglim.cecile.root] at @s positioned as @n[predicate=entity:entity_enemy, tag=boss, tag=exx] run tp @s ~ ~ ~ ~ 0
    execute as @n[tag=aj.skyglim.cecile.root] at @s facing entity @p eyes run rotate @s ~ 0
    effect clear @e[predicate=entity:entity_enemy, tag=boss, tag=exx] minecraft:slowness

# data get
    data modify storage boss: stage.exx set from entity @n[tag=boss, tag=exx] data

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
        data modify storage km_solver: vars.C set from storage boss: stage.exx.status.current_hp
        data modify storage km_solver: vars.M set from storage boss: stage.exx.status.max_hp

    # 実行
        execute at @p run function km_solver:solve

    # 割合取得
        execute store result score $exx.boss.rate _ run data get storage km_solver: outputs[0]

    # 半分取得
        execute if score exx BossMoves matches ..199 unless score $exx.boss.half _ matches 1 if score $exx.boss.rate _ matches ..50 as @n[tag=boss, tag=exx] at @s run function stage:boss/exx/half

#

# HP 表示
execute store result bossbar minecraft:stageexx.boss max run data get storage boss: stage.exx.status.max_hp
execute store result bossbar minecraft:stageexx.boss value run data get storage boss: stage.exx.status.current_hp

# 行動
    # tick
        scoreboard players add exx BossMoves 1
        execute if score exx BossMoves matches 200 at @n[tag=boss, tag=exx] run function stage:boss/exx/move/root

    # bat
        scoreboard players add @e[type=minecraft:bat, tag=gimmick.bat.exx] exx.gimmick 1
        execute as @e[type=minecraft:bat, tag=gimmick.bat.exx] if score @s exx.gimmick matches 420.. run kill @s

    # sword
        execute as @e[type=minecraft:item, tag=gimmick.sword.exx] at @s run function stage:boss/exx/move/5/item_tick
        execute as @e[type=minecraft:item, tag=gimmick.sword.exx-2] at @s run function stage:boss/exx/move/14/item_tick

    #* 通常行動
        # 1~6: 通常 / 11~15: 50% 未満
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 1 at @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/1/root
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 2 at @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/2/root
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 5 as @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/5/root

        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 11 as @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/11/root
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 12 as @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/12/root
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 13 as @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/13/root
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 14 as @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/14/root

    #+ init, half
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 90 at @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/init/root
        execute if score exx BossMoves matches 200.. if score exx-type BossMoves matches 99 at @n[tag=boss, tag=exx] at @s run function stage:boss/exx/move/half/root
