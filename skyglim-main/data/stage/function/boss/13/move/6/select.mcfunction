#> stage:boss/4/move/1/select
# 
# 上下をランダムで選択
# 
# 

# 抽出
execute store result score $1 s13.updown run random value 0..1
execute store result score $2 s13.updown run random value 0..1
execute store result score $3 s13.updown run random value 0..1
execute store result score $4 s13.updown run random value 0..1
execute store result score $5 s13.updown run random value 0..1
execute store result score $6 s13.updown run random value 0..1
execute store result score $7 s13.updown run random value 0..1

# storage に保存
data remove storage stage: s13.updown
data modify storage stage: s13.updown set value []

execute if score $1 s13.updown matches 0 run data modify storage stage: s13.updown append value "↑"
execute if score $1 s13.updown matches 1 run data modify storage stage: s13.updown append value "↓"
execute if score $2 s13.updown matches 0 run data modify storage stage: s13.updown append value "↑"
execute if score $2 s13.updown matches 1 run data modify storage stage: s13.updown append value "↓"
execute if score $3 s13.updown matches 0 run data modify storage stage: s13.updown append value "↑"
execute if score $3 s13.updown matches 1 run data modify storage stage: s13.updown append value "↓"
execute if score $4 s13.updown matches 0 run data modify storage stage: s13.updown append value "↑"
execute if score $4 s13.updown matches 1 run data modify storage stage: s13.updown append value "↓"
execute if score $5 s13.updown matches 0 run data modify storage stage: s13.updown append value "↑"
execute if score $5 s13.updown matches 1 run data modify storage stage: s13.updown append value "↓"
execute if score $6 s13.updown matches 0 run data modify storage stage: s13.updown append value "↑"
execute if score $6 s13.updown matches 1 run data modify storage stage: s13.updown append value "↓"
execute if score $7 s13.updown matches 0 run data modify storage stage: s13.updown append value "↑"
execute if score $7 s13.updown matches 1 run data modify storage stage: s13.updown append value "↓"

# title
title @a[distance=..30] times 0 60 10
title @a[distance=..30] title {text: "[!]", color: "#d94262"}
title @a[distance=..30] subtitle \
[\
    {storage: "stage:", nbt: "s13.updown[0]", color: "#e9b530"},\
    {storage: "stage:", nbt: "s13.updown[1]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s13.updown[2]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s13.updown[3]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s13.updown[4]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s13.updown[5]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s13.updown[6]", color: "#fff6fe"},\
]

# sound
execute as @a[distance=..80] at @s run playsound minecraft:entity.wither.ambient voice @s ~ ~ ~ 0.7 1

# boss
tp @n[predicate=entity:entity_enemy, tag=boss, tag=s13] 9062 12 -166
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s13] minecraft:slowness 14 99
particle minecraft:end_rod 9882 -28 -138 0.5 0.8 0.5 0.1 120
