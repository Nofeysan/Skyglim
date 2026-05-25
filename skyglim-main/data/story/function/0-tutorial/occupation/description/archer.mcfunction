#> story:0-tutorial/occupation/description/archer
# 
# 説明
# 
# 

tellraw @s \
[\
    {text: "\n\n\n"},\
    {translate: "tutorial.stats.left", color: "#94d3e6"}, \
    {translate: "status-book.occupation.1.name"}, \
    {translate: "tutorial.stats.right", color: "#94d3e6"}\
]

tellraw @s [{translate: "tutorial.occupation.archer"}, "\n"]

tellraw @s {translate: "tutorial.occupation.choose", click_event: {action: "run_command", command: "trigger story.trigger set 10"}}

# trigger
scoreboard players enable @s story.trigger

# sound
execute at @s run playsound minecraft:entity.arrow.hit voice @s ~ ~ ~ 0.5 1
