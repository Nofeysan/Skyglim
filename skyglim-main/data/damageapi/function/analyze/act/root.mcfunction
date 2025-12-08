#> damageapi:analyze/act/root
# 
# ちゃんと本を持ってることが確認できました
# 
# 

###* at 指定済み
# 探索する
execute anchored eyes positioned ^ ^ ^1 run function damageapi:analyze/act/search

#! debug
#tellraw @s {text: "\uE010 analyze 実行！"}
