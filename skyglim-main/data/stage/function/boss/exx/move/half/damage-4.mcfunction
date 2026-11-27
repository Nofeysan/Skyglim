#> stage:boss/4/move/1/damage
# 
# 上下判定してダメージ与える
# 
# 

# damage
scoreboard players operation _ _ = $4 exx.updown
function stage:boss/exx/move/half/damage-updown

# title (1 -> 2)
title @a[distance=..30] times 0 175 15
title @a[distance=..30] title ""
title @a[distance=..80] subtitle \
[\
    {storage: "stage:", nbt: "exx.updown[0]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "exx.updown[1]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "exx.updown[2]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "exx.updown[3]", color: "#aaaaaa"},\
    {text: "?", color: "#e9b530"},\
    {text: "?", color: "#fff6fe"},\
    {text: "?", color: "#fff6fe"},\
]
