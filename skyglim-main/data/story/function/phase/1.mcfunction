#> story:phase/1
# 
# 
# 
# 

# 敵倒したことを検知する
execute if entity @e[type=minecraft:item, predicate=story:is_stone] run function story:0-tutorial/cmd-32

# 全員職に就いた？
execute if score $progress story.progress = $all story.progress run function story:0-tutorial/cmd-39

# allay particle
execute at @n[type=minecraft:allay, tag=kalmia] run particle minecraft:wax_off ~ ~0.1 ~ 0.5 0.5 0.5 0.3 1
