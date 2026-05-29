#> stage:boss/2/move/1/debuff
# 
# デバフ処理
# 
# 

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.5 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.5 1
particle minecraft:ash ~ ~ ~ 3 2 3 0.07 900

# 盲目は全員に
effect give @a[distance=..30] minecraft:blindness 2 0
effect give @a[distance=..15] minecraft:blindness 4 0
effect give @a[distance=..5] minecraft:blindness 7 0

# 鈍足は近い人だけ
effect give @a[distance=..15] minecraft:slowness 4 1
effect give @a[distance=..5] minecraft:slowness 7 2

# wither は近い人ほど長く
effect give @a[distance=..30] minecraft:wither 1 0
effect give @a[distance=..15] minecraft:wither 5 0
effect give @a[distance=..5] minecraft:wither 9 0
