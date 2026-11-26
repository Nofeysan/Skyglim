#> stage:boss/4/move/1/select
# 
# 上下をランダムで選択
# 
# 

# 抽出
execute store result score $1 ex2.updown run random value 0..1
execute store result score $2 ex2.updown run random value 0..1
execute store result score $3 ex2.updown run random value 0..1
execute store result score $4 ex2.updown run random value 0..1
execute store result score $5 ex2.updown run random value 0..1
execute store result score $6 ex2.updown run random value 0..1
execute store result score $7 ex2.updown run random value 0..1

# storage に保存
data remove storage stage: ex2.updown
data modify storage stage: ex2.updown set value []

execute if score $1 ex2.updown matches 0 run data modify storage stage: ex2.updown append value "§c■"
execute if score $1 ex2.updown matches 1 run data modify storage stage: ex2.updown append value "§9■"
execute if score $2 ex2.updown matches 0 run data modify storage stage: ex2.updown append value "§c■"
execute if score $2 ex2.updown matches 1 run data modify storage stage: ex2.updown append value "§9■"
execute if score $3 ex2.updown matches 0 run data modify storage stage: ex2.updown append value "§c■"
execute if score $3 ex2.updown matches 1 run data modify storage stage: ex2.updown append value "§9■"
execute if score $4 ex2.updown matches 0 run data modify storage stage: ex2.updown append value "§c■"
execute if score $4 ex2.updown matches 1 run data modify storage stage: ex2.updown append value "§9■"
execute if score $5 ex2.updown matches 0 run data modify storage stage: ex2.updown append value "§c■"
execute if score $5 ex2.updown matches 1 run data modify storage stage: ex2.updown append value "§9■"
execute if score $6 ex2.updown matches 0 run data modify storage stage: ex2.updown append value "§c■"
execute if score $6 ex2.updown matches 1 run data modify storage stage: ex2.updown append value "§9■"
execute if score $7 ex2.updown matches 0 run data modify storage stage: ex2.updown append value "§c■"
execute if score $7 ex2.updown matches 1 run data modify storage stage: ex2.updown append value "§9■"

# title
title @a[distance=..30] times 0 60 10
title @a[distance=..30] title {text: "[!]", color: "#d94262"}
title @a[distance=..30] subtitle \
[\
    {storage: "stage:", nbt: "ex2.updown[0]", color: "#e9b530"},\
    {storage: "stage:", nbt: "ex2.updown[1]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "ex2.updown[2]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "ex2.updown[3]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "ex2.updown[4]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "ex2.updown[5]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "ex2.updown[6]", color: "#fff6fe"},\
]

# sound
execute as @a[distance=..30] at @s run playsound minecraft:entity.wither.ambient voice @s ~ ~ ~ 0.7 1

# boss
tp @n[predicate=entity:entity_enemy, tag=boss, tag=ex2] 9467 35 -227
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=ex2] minecraft:slowness 14 99
