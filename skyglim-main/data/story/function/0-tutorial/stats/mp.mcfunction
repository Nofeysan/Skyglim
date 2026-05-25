#> story:0-tutorial/stats/mp
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#9279d3"}, \
    {text: "\ue006 "}, \
    {translate: "status-book.mp"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.mp"}

execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.5 2
