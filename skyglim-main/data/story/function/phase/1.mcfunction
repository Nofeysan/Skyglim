#> story:phase/1
# 
# 
# 
# 

# 敵倒したことを検知する
execute if entity @e[type=minecraft:item, predicate=story:is_stone] run function story:0-tutorial/cmd-32

# 全員職に就いた？
execute if score $progress story.progress = $all story.progress run function story:0-tutorial/cmd-39
