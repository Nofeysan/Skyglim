#> stage:boss/4/move/1/damage
# 
# 上下判定してダメージ与える
# 
# 

# damage
scoreboard players operation _ _ = $1 exx.updown
function stage:boss/exx/move/init/1/damage-updown

# title (1 -> 2)
title @a[distance=..30] times 0 50 10
title @a[distance=..30] title ""
execute unless score $exx.boss.half _ matches 1 run title @a[distance=..80] subtitle \
[\
    {storage: "stage:", nbt: "exx.updown[0]", color: "#aaaaaa"},\
    {storage: "stage:", nbt: "exx.updown[1]", color: "#e9b530"},\
    {storage: "stage:", nbt: "exx.updown[2]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[3]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[4]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[5]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[6]", color: "#fff6fe"},\
]
