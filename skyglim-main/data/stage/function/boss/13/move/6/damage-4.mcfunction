#> stage:boss/4/move/1/damage
# 
# 上下判定してダメージ与える
# 
# 

# damage
scoreboard players operation _ _ = $4 s13.updown
function stage:boss/13/move/6/damage-updown

# title (4 -> 5)
title @a[distance=..30] times 0 25 10
title @a[distance=..30] title ""
execute unless score $s13.boss.half _ matches 1 run title @a[distance=..80] subtitle \
[\
    {storage: "stage:", nbt: "s13.updown[0]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "s13.updown[1]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "s13.updown[2]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "s13.updown[3]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "s13.updown[4]", color: "#e9b530"},\
    {storage: "stage:", nbt: "s13.updown[5]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s13.updown[6]", color: "#fff6fe"},\
]

execute if score $s13.boss.half _ matches 1 run title @a[distance=..80] subtitle \
[\
    {storage: "stage:", nbt: "?", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "?", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "?", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "?", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "?", color: "#e9b530"},\
    {storage: "stage:", nbt: "?", color: "#fff6fe"},\
    {storage: "stage:", nbt: "?", color: "#fff6fe"},\
]
