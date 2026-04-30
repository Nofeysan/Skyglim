#> damageapi:analyze/act/success
# 
# 対象がいたとき
# 
# 

# 対象からデータを取得して tellraw
function damageapi:analyze/act/macro/uuid

# tag リセット
execute as @e[tag=analyzed] run tag @s remove analyzed
