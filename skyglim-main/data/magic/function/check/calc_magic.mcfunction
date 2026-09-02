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

        # アイテム
            # reset
                scoreboard players set $shard_id_calc _ 0
            
            # 取得
                data modify storage damageapi: calc.shard set from entity @s Inventory

                execute store result score $shard_id_calc _ run data get storage damageapi: calc.shard[{Slot: 9b}].components."minecraft:repair_cost"
                function magic:check/search/item/root

                execute store result score $shard_id_calc _ run data get storage damageapi: calc.shard[{Slot: 10b}].components."minecraft:repair_cost"
                function magic:check/search/item/root

                execute store result score $shard_id_calc _ run data get storage damageapi: calc.shard[{Slot: 11b}].components."minecraft:repair_cost"
                function magic:check/search/item/root


        # 防具
            # reset
                scoreboard players set $armor_id_head _ 0
            
            # 代表して頭の id をスコアに保存
                data modify storage damageapi: armor set from entity @s equipment
                execute store result score $armor_id_head _ run data get storage damageapi: armor.head.components."minecraft:repair_cost"
            
            # 0 じゃなければ探索開始
                execute unless score $armor_id_head _ matches ..1113004 run function magic:check/search/armor/root

    # 倍率代入
    execute store result storage km_solver: vars.B float 0.01 run scoreboard players get _ _

# 計算
execute at @s run function km_solver:solve

# 別の場所に保存
data modify storage damageapi: magic_damage.dmg set from storage km_solver: outputs[0]

#! debug
#tellraw @a {text: "\ue010 計算完了"}
