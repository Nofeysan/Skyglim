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

# 会話可能パーティクル
    # avelian 会話可能パーティクル
        execute if score _ CanTalkWithMe matches 1.. at @n[tag=aj.skyglim.avelian.root] run particle minecraft:dust{color: 9753574, scale: 1.7} ~ ~2.5 ~ 0.1 0.1 0.1 0.1 1

    # Knight
        execute if score $has_talks_knight CanTalkWithMe matches 1.. at @n[type=minecraft:villager, tag=knight_leader] run particle minecraft:dust{color: 9753574, scale: 1.7} ~ ~2.5 ~ 0.1 0.1 0.1 0.1 1

    # Vanitas
        execute if score $has_talks_vanitas CanTalkWithMe matches 1.. at @n[type=minecraft:villager, tag=vanitas] run particle minecraft:dust{color: 9753574, scale: 1.7} ~ ~2.5 ~ 0.1 0.1 0.1 0.1 1
