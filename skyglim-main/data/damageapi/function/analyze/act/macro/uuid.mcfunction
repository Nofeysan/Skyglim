#> damageapi:analyze/act/macro/uuid
# 
# 対象から data を取得して storage に保存
# 
# 

# データを取得する
execute store result storage analyze: data.maxhp int 0.01 run data get entity @n[tag=analyzed] data.status.max_hp
execute store result storage analyze: data.curhp int 0.01 run data get entity @n[tag=analyzed] data.status.current_hp

data modify storage analyze: data.lore set from entity @n[tag=analyzed] data.status.lore

data modify storage analyze: data.name set from entity @n[tag=analyzed] CustomName

# 実行！
function damageapi:analyze/act/macro/tell with storage analyze: data
