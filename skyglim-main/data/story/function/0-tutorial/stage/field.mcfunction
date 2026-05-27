#> story:0-tutorial/occupation/description/archer
# 
# 説明
# 
# 

tellraw @s \
[\
    {text: "\n"},\
    {translate: "tutorial.stats.left", color: "#94d3e6"}, \
    {translate: "stage.tutorial.field.name", color: "#ffd728"}, \
    {translate: "tutorial.stats.right", color: "#94d3e6"}\
]

tellraw @s [{translate: "stage.tutorial.field.description.1"}]
tellraw @s [{translate: "stage.tutorial.field.description.2"}]

# trigger
scoreboard players enable @s story.trigger

# sound
execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.3 2
