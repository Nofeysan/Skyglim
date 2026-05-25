#> story:tick
# 
# 毎ティック実行するやつ
# 
# 

# phase ごとの切り替え
execute if score _ story.phase matches 1.. run function story:phase/root

# 村人との会話
execute if entity @a[scores={TalkToVillager=1..}] as @a[scores={TalkToVillager=1..}] run function story:villager/talk/root with entity @n[type=minecraft:villager] data

# trigger check
execute if entity @a[scores={story.trigger=1..}] as @a[scores={story.trigger=1..}] run function story:trigger/root
