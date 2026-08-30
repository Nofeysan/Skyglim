#> magic:check/calc_magic
# 
# dmg を計算する
# 
# 

##* 攻撃力計算
# damage = dmg * (1.65 + MP/100) * Multiplier * Boost
# D = dmg
# I = MP
# M = multiplier
# B = Boost

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
data modify storage km_solver: inputs append value {f:{mul: [{v: "D"}, {mul: [{add: [{n: 1.65f}, {div: [{v: "I"}, {n: 100.0f}]}]}, {mul: [{v: "M"}, {v: "B"}]}]}]}}

# 初期値を代入
data modify storage km_solver: vars set value {D:0.0f, I:0.0f, M:1.0f, B:1.0f}

# D: 魔法の武器の dmg 加算後の合計 dmg
execute store result storage km_solver: vars.D int 1 run scoreboard players get @s act_Damage

# I: 最大 MP (表示値)
execute store result storage km_solver: vars.I int 1 run scoreboard players get @s ShowMaxMP

# M: 職業ごとの倍率
execute if score @s occupation matches 2 run data modify storage km_solver: vars.M set value 0.7f
execute if score @s occupation matches 4 run data modify storage km_solver: vars.M set value 1.30f

# B: アイテム含む倍率
    # リセット
    scoreboard players set _ _ 100

    # 各種倍率
        # 魔法・ブースト (+20%)
            execute if predicate magic:is_magic_boost.1 run scoreboard players add _ _ 20

        # 魔術書 (+2%)
            execute if predicate damageapi:item/has_1110009 run scoreboard players add _ _ 4

        # 防具
            # 魔女シリーズ (+10%)
                execute if predicate damageapi:item/fullset/set_1113005- run scoreboard players add _ _ 10

    # 倍率代入
    execute store result storage km_solver: vars.B float 0.01 run scoreboard players get _ _

# 計算
execute at @s run function km_solver:solve

# 別の場所に保存
data modify storage damageapi: magic_damage.dmg set from storage km_solver: outputs[0]

#! debug
#tellraw @a {text: "\ue010 計算完了"}
