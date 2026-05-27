#> story:0-tutorial/stats/spd
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#44ddf4"}, \
    {text: "\ue005 ", color: "#ffffff"}, \
    {translate: "status-book.spd"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.spd"}

execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.5 2
