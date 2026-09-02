#> damageapi:calc_damage/enemy/search/.root
# 
# check
# 
# 

#* score で確認
    # 硬い石: +2%
        execute if score $shard_id_calc _ matches 1106011 run scoreboard players add _ _ 2

    # ロマン砲: +50% (1%)
        execute store result score randomItemChance _ run random value 0..99
        execute if score $shard_id_calc _ matches 1111009 if score randomItemChance _ matches 0 run scoreboard players add _ _ 50

    # オオカミの加護: +5%
        execute if score $shard_id_calc _ matches 1111109 run scoreboard players add _ _ 5

    # 一撃必殺: +200% (0.7%)
        execute store result score randomItemChance _ run random value 0..999
        execute if score $shard_id_calc _ matches 1112009 if score randomItemChance _ matches 0..69 run scoreboard players add _ _ 200

    # 狂乱の矢: +5%
        execute if score $shard_id_calc _ matches 1114009 run scoreboard players add _ _ 5

    # 熱い赤粉: +5%
        execute if score $shard_id_calc _ matches 1114110 run scoreboard players add _ _ 5

    # 頑丈な棒: +3%
        execute if score $shard_id_calc _ matches 1201109 run scoreboard players add _ _ 3

    # 戦神の加護: +12%
        execute if score $shard_id_calc _ matches 1203010 run scoreboard players add _ _ 12
