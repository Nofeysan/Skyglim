#> story:villager/talk/restore/roll
# 
# tp させる
# 
# 

# tell
tellraw @s [{translate: "villager.name.priest"}, {translate: "villager.talk.priest.1"}, {text: "\n"}]
tellraw @s {translate: "villager.talk.priest.go-stats", color: "aqua", click_event: {action: "run_command", command: "trigger story.trigger set 100"}}

scoreboard players enable @s story.trigger
