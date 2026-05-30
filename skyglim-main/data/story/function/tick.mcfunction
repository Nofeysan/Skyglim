#> story:tick
# 
# 毎ティック実行するやつ
# 
# 

# phase ごとの切り替え
execute if score _ story.phase matches 1.. run function story:phase/root

# 村人との会話
execute if entity @a[scores={TalkToVillager=1..}] as @a[scores={TalkToVillager=1..}] at @s run function story:villager/talk/root with entity @n[type=minecraft:villager] data

# trigger check
execute if entity @a[scores={story.trigger=1..}] as @a[scores={story.trigger=1..}] run function story:trigger/root

# avelian 会話可能パーティクル
execute if score _ CanTalkWithMe matches 1.. at @n[type=minecraft:villager, predicate=story:is_avelian] run particle minecraft:dust{color: [0.850980392156863, 0.258823529411765, 0.384313725490196], scale: 1.7} ~ ~2 ~ 0.1 0.1 0.1 0.1 1
execute if score _ CanTalkWithMe matches 1.. at @n[type=minecraft:villager, predicate=story:is_avelian] run particle minecraft:dust{color: [0.917647058823529, 0.333333333333333, 0.0235294117647059], scale: 1.7} ~ ~2 ~ 0.1 0.1 0.1 0.1 1
