#> story:villager/talk/restore/roll
# 
# 分岐
# 
# 

# reset
data modify storage temp: talk set value {id: 1, name: "crafting"}

# 乱数
execute store result storage temp: talk.id int 1 run random value 1..4

# 実行
function story:villager/talk/macro with storage temp: talk
