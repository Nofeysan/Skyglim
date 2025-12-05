# uuid を取得する
execute as @n[tag=analyzed] run data modify storage analyze: entity.uuid set from entity @s UUID[0]

# その uuid でデータ取得して tellraw
function damageapi:analyze/act/macro/uuid with storage analyze: entity

# tag リセット
execute as @e[tag=analyzed] run tag @s remove analyzed
