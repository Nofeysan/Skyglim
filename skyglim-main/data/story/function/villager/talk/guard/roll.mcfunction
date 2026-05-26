#> story:villager/talk/restore/roll
# 
# 分岐
# 
# 

# 1回目に限り実行開始
execute if score $guard_talk story.progress matches 1.. run return fail

# 会話スタート
function story:1-guard/1

scoreboard players set $guard_talk story.progress 1
