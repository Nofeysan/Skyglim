#> damageapi:status/player/search/regen
# 
# check
# 
# 

#* score で確認
    # 活力の矢 (HP Regen +1)
        execute if score $shard_id_calc _ matches 1112011 if score $health_regen _ matches ..0 run scoreboard players set $health_regen _ 100

    # 女神の涙 (HP Regen +3)
        execute if score $shard_id_calc _ matches 1203011 if score $health_regen _ matches ..0 run scoreboard players set $health_regen _ 300

    # 活力の天使の羽 (MP Regen +1)
        execute if score $shard_id_calc _ matches 1112012 if score $mp_regen _ matches ..0 run scoreboard players set $mp_regen _ 100
