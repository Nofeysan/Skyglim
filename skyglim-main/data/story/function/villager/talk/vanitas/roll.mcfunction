#> story:villager/talk/restore/roll
# 
# talks, init
# 
# 

# 重要会話？
    execute if score $has_talks_vanitas CanTalkWithMe matches 1 run function story:villager/talk/vanitas/1/1

# そうでなければ普通の会話
    execute if score $has_talks_vanitas CanTalkWithMe matches 1.. run return fail

    execute store result score _ _ run random value 1..3
    execute if score _ _ matches 1 run tellraw @s [{translate: "story.vanitas"}, {translate: "villager.talk.vanitas.1"}]
    execute if score _ _ matches 2 run tellraw @s [{translate: "story.vanitas"}, {translate: "villager.talk.vanitas.2"}]
    execute if score _ _ matches 3 run tellraw @s [{translate: "story.vanitas"}, {translate: "villager.talk.vanitas.3"}]
