#> stage:boss/6/move/1/limit
# 
# 大ダメージ及び片付け
# 
# 

# damage
    execute at @e[distance=..30, tag=gimmick.aoe.enemy.s6] run effect give @a[distance=..13] minecraft:wind_charged 1 80

# remove
    kill @e[tag=gimmick.aoe.enemy.s6]
