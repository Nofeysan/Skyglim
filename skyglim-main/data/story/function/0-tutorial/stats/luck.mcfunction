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
