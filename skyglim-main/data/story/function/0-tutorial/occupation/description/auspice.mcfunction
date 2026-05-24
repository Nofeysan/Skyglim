#> story:0-tutorial/occupation/description/auspice
# 
# 説明
# 
# 

tellraw @s \
[\
    {text: "\n\n\n"},\
    {translate: "tutorial.stats.left", color: "#94d3e6"}, \
    {translate: "status-book.occupation.5.name"}, \
    {translate: "tutorial.stats.right", color: "#94d3e6"}\
]

tellraw @s [{translate: "tutorial.occupation.auspice"}, "\n"]

tellraw @s {translate: "tutorial.occupation.choose", click_event: {action: "run_command", command: "trigger story.trigger set 14"}}

# trigger
scoreboard players enable @s story.trigger
