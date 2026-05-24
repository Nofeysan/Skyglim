#> story:0-tutorial/stats/hp
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#e094d7"}, \
    {text: "\ue000 "}, \
    {translate: "status-book.hp"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.hp"}
