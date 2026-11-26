#> stage:boss/4/move/1/damage
# 
# 上下判定してダメージ与える
# 
# 

# damage
scoreboard players operation _ _ = $6 ex2.updown
function stage:boss/13/move/6/damage-updown

# title (6 -> 7)
title @a[distance=..30] times 0 25 10
title @a[distance=..30] title ""
execute unless score $ex2.boss.half _ matches 1 run title @a[distance=..80] subtitle \
[\
    {storage: "stage:", nbt: "ex2.updown[0]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "ex2.updown[1]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "ex2.updown[2]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "ex2.updown[3]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "ex2.updown[4]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "ex2.updown[5]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "ex2.updown[6]"},\
]

execute if score $ex2.boss.half _ matches 1 run title @a[distance=..80] subtitle \
[\
    {text: "?", color: "#aaaaaa"},\
    {text: "?", color: "#aaaaaa"},\
    {text: "?", color: "#aaaaaa"},\
    {text: "?", color: "#aaaaaa"},\
    {text: "?", color: "#aaaaaa"},\
    {text: "?", color: "#aaaaaa"},\
    {text: "?", color: "#e9b530"},\
]
