#> story:0-tutorial/stats/dmg
# 
# 説明
# 
# 

tellraw @s "\n"

tellraw @s \
[\
    {translate: "tutorial.stats.left", color: "#ff4141"}, \
    {text: "\ue008 "}, \
    {translate: "status-book.dmg"}, \
    {translate: "tutorial.stats.right"}\
]

tellraw @s {translate: "tutorial.stats.dmg"}
