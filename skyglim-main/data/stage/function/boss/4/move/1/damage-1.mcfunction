#> stage:boss/4/move/1/damage
# 
# 上下判定してダメージ与える
# 
# 

# damage
scoreboard players operation _ _ = $1 s4.updown
function stage:boss/4/move/1/damage-updown

# title (1 -> 2)
title @a[distance=..30] times 0 25 10
title @a[distance=..30] title ""
title @a[distance=..30] subtitle \
[\
    {storage: "stage:", nbt: "s4.updown[0]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "s4.updown[1]", color: "#e9b530"},\
    {storage: "stage:", nbt: "s4.updown[2]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[3]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[4]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[5]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[6]", color: "#fff6fe"},\
]
