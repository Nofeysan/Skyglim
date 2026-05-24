#> story:0-tutorial/cmd-22
# 
# 22 より再開する
# 
# 

# アイテム削除
kill @e[type=minecraft:item, predicate=story:is_stone]

# start
schedule function story:0-tutorial/32 20t
