#> story:0-tutorial/stats/cd
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#66a5b8"}, \
    {text: "\ue003 ", color: "#ffffff"}, \
    {translate: "status-book.cd"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.cd"}

execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.5 2
