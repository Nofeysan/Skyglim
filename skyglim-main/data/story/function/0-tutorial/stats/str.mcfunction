#> story:0-tutorial/stats/str
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#d94262"}, \
    {text: "\ue001 "}, \
    {translate: "status-book.str"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.str"}

execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.5 2
