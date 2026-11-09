#> stage:boss/10/move/3/item_dealt
# 
# アイテムを起点にダメージを与える
# 
# 

# まずは進める
    execute as @e[tag=s10.line, tag=speed_1] at @s run tp @s ~ ~ ~0.1
    execute as @e[tag=s10.line, tag=speed_2] at @s run tp @s ~ ~ ~0.2
    execute as @e[tag=s10.line, tag=speed_3] at @s run tp @s ~ ~ ~0.3

# line
    execute as @e[tag=s10.line] at @s run function stage:boss/10/move/10/line/root

# kill
    execute as @e[tag=s10.line] at @s if block ~ ~-1 ~ minecraft:reinforced_deepslate run kill @s
