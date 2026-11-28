#> stage:boss/4/move/1/select
# 
# 上下をランダムで選択
# 
# 

# 抽出
execute store result score $1 exx.updown run random value 0..2
execute store result score $2 exx.updown run random value 0..2
execute store result score $3 exx.updown run random value 0..2
execute store result score $4 exx.updown run random value 0..2
execute store result score $5 exx.updown run random value 0..2
execute store result score $6 exx.updown run random value 0..2
execute store result score $7 exx.updown run random value 0..2

# storage に保存
data remove storage stage: exx.updown
data modify storage stage: exx.updown set value []

execute if score $1 exx.updown matches 0 run data modify storage stage: exx.updown append value "↑"
execute if score $1 exx.updown matches 1 run data modify storage stage: exx.updown append value "→"
execute if score $1 exx.updown matches 2 run data modify storage stage: exx.updown append value "↓"

execute if score $2 exx.updown matches 0 run data modify storage stage: exx.updown append value "↑"
execute if score $2 exx.updown matches 1 run data modify storage stage: exx.updown append value "→"
execute if score $2 exx.updown matches 2 run data modify storage stage: exx.updown append value "↓"

execute if score $3 exx.updown matches 0 run data modify storage stage: exx.updown append value "↑"
execute if score $3 exx.updown matches 1 run data modify storage stage: exx.updown append value "→"
execute if score $3 exx.updown matches 2 run data modify storage stage: exx.updown append value "↓"

execute if score $4 exx.updown matches 0 run data modify storage stage: exx.updown append value "↑"
execute if score $4 exx.updown matches 1 run data modify storage stage: exx.updown append value "→"
execute if score $4 exx.updown matches 2 run data modify storage stage: exx.updown append value "↓"

execute if score $5 exx.updown matches 0 run data modify storage stage: exx.updown append value "↑"
execute if score $5 exx.updown matches 1 run data modify storage stage: exx.updown append value "→"
execute if score $5 exx.updown matches 2 run data modify storage stage: exx.updown append value "↓"

execute if score $6 exx.updown matches 0 run data modify storage stage: exx.updown append value "↑"
execute if score $6 exx.updown matches 1 run data modify storage stage: exx.updown append value "→"
execute if score $6 exx.updown matches 2 run data modify storage stage: exx.updown append value "↓"

execute if score $7 exx.updown matches 0 run data modify storage stage: exx.updown append value "↑"
execute if score $7 exx.updown matches 1 run data modify storage stage: exx.updown append value "→"
execute if score $7 exx.updown matches 2 run data modify storage stage: exx.updown append value "↓"

# title
title @a[distance=..30] times 0 60 10
title @a[distance=..30] title {text: "[!]", color: "#d94262"}
title @a[distance=..30] subtitle \
[\
    {storage: "stage:", nbt: "exx.updown[0]", color: "#e9b530"},\
    {storage: "stage:", nbt: "exx.updown[1]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[2]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[3]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[4]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[5]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "exx.updown[6]", color: "#fff6fe"},\
]

# sound
execute as @a[distance=..80] at @s run playsound minecraft:entity.wither.ambient voice @s ~ ~ ~ 0.7 1

# boss
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=exx] minecraft:slowness 14 99
particle minecraft:end_rod 9882 -28 -138 0.5 0.8 0.5 0.1 120
