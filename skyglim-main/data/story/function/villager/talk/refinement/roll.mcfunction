#> story:villager/talk/refinement/roll
# 
# 分岐
# 
# 

# reset
data modify storage temp: talk set value {id: 1, name: "refinement"}

# 乱数
execute store result storage temp: talk.id int 1 run random value 1..3

# 実行
function story:villager/talk/macro with storage temp: talk
