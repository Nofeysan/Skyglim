#> story:tick
# 
# 毎ティック実行するやつ
# 
# 

# phase ごとの切り替え
execute if score _ story.phase matches 1.. run function story:phase/root
