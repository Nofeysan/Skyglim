#> story:villager/talk/restore/roll
# 
# 分岐
# 
# 

# 何か会話がある？
execute if score _ CanTalkWithMe matches 1.. if score $avelian_talks story.progress matches 1.. run return run function story:villager/talk/avelian/talks
execute unless score _ CanTalkWithMe matches 1.. if score $avelian_talks story.progress matches 1.. run return fail

# reset
data modify storage temp: talk set value {id: 1, name: "avelian"}

# 乱数
execute store result storage temp: talk.id int 1 run random value 1..3

# 実行
function story:villager/talk/macro with storage temp: talk
