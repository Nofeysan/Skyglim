#> story:0-tutorial/stats/cc
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#94d3e6"}, \
    {text: "\ue002 ", color: "#ffffff"}, \
    {translate: "status-book.cc"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.cc"}

execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.5 2
