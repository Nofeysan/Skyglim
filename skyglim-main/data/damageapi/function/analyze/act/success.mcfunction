#> damageapi:analyze/act/success
# 
# 対象がいたとき
# 
# 

# その uuid でデータ取得して tellraw
function damageapi:analyze/act/macro/uuid with storage analyze: entity

# tag リセット
execute as @e[tag=analyzed] run tag @s remove analyzed
