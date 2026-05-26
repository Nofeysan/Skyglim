#> story:0-tutorial/occupation/description/archer
# 
# 説明
# 
# 

tellraw @s \
[\
    {text: "\n\n\n"},\
    {translate: "tutorial.stats.left", color: "#94d3e6"}, \
    {text: "Oracle", color: "green"}, \
    {translate: "tutorial.stats.right", color: "#94d3e6"}\
]

tellraw @s [{translate: "difficulty.oracle.description"}, "\n"]

tellraw @s {translate: "difficulty.select.button", click_event: {action: "run_command", command: "trigger story.trigger set 1"}}

# trigger
scoreboard players enable @s story.trigger

# sound
execute at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.5 1
