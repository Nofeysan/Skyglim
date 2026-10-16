#> damageapi:calc_damage/enemy/search/.root
# 
# check
# 
# 

#* score で確認
    # 鉛板 (-2%)
        execute if score $shard_id_calc _ matches 1110010 run scoreboard players remove _ _ 2

    # ヤマネコの加護 (-3%)
        execute if score $shard_id_calc _ matches 1111110 run scoreboard players remove _ _ 3

    # おなべのふた (-4%)
        execute if score $shard_id_calc _ matches 1115211 run scoreboard players remove _ _ 4

    # 三次元グリル (-2%)
        execute if score $shard_id_calc _ matches 1201010 run scoreboard players remove _ _ 2

    # 簡易保管庫 (-3%)
        execute if score $shard_id_calc _ matches 1202010 run scoreboard players remove _ _ 3

    # 生命の加護 (-7%)
        execute if score $shard_id_calc _ matches 1203009 run scoreboard players remove _ _ 7
