#> damageapi:status/player/search-2/armor/.root
# 
# 二分探索的なノリで探索する
# 
# 

# head の id でまずは探索
    execute if score $armor_id_head _ matches 1113005..1115205 run function damageapi:status/player/search-2/armor/1/1113005-
    execute if score $armor_id_head _ matches 1201005..1203005 run function damageapi:status/player/search-2/armor/1/1201005-
    execute if score $armor_id_head _ matches 1203105..1203205 run function damageapi:status/player/search-2/armor/1/1203105-
