#> story:0-tutorial/stats/luck
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#bfe493"}, \
    {text: "\ue007 "}, \
    {translate: "status-book.luck"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.luck"}

execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.5 2
