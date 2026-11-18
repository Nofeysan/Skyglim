#> story:villager/talk/restore/roll
# 
# 分岐
# 
# 

# 何か会話がある？
execute if score $has_talks_cecile CanTalkWithMe matches 1.. run return run function story:villager/talk/cecile/talks

# reset
data modify storage temp: talk set value {id: 1, name: "cecile"}

# 乱数
execute store result storage temp: talk.id int 1 run random value 1..3

# 実行
function story:villager/talk/macro with storage temp: talk
