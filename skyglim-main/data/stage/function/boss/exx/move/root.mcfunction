#> stage:boss/1/move/root
# 
# ボス行動を行う
# at @n[predicate=entity:entity_enemy,tag=boss,tag=s1]
# 

# random
    execute unless score $exx.boss.half _ matches 1 store result score exx-type BossMoves run random value 1..6
    execute if score $exx.boss.half _ matches 1 store result score exx-type BossMoves run random value 11..15

# init, half
    execute unless score $exx.boss.init _ matches 1 run scoreboard players set exx-type BossMoves 90
    execute if score $exx.boss.half _ matches 1 unless score $exx.boss.half.moved _ matches 1 run scoreboard players set exx-type BossMoves 99
    execute if score $exx.boss.half _ matches 1 unless score $exx.boss.half.moved _ matches 1 run scoreboard players set $exx.boss.half.moved _ 1

#* 1~6; 通常行動
    # 1: プレイヤー位置に爆弾 [tick]
    # 2: 6方向射撃 + AoE [tick]
    # 3: ポーション蝙蝠召喚
        execute if score exx-type BossMoves matches 3 run function stage:boss/exx/move/3/root

    # 4: 眷属召喚
        execute if score exx-type BossMoves matches 4 run function stage:boss/exx/move/4/root
    
    # 5: 剣召喚 [tick]
    # 6: 転移
        execute if score exx-type BossMoves matches 6 run function stage:boss/exx/move/6/root

#* 11~15; ラストスパート
    # 11: 360度射撃 + AoE [tick]
    # 12: アイテム降らせ [tick]
    # 13: アステリカ避け [tick]
    # 14: 剣召喚++ [tick]
    # 15: 眷属召喚 + ポーション蝙蝠召喚
        execute if score exx-type BossMoves matches 15 run function stage:boss/exx/move/15/root
