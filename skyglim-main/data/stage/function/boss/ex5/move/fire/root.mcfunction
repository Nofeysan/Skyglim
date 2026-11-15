#> stage:boss/ex5/move/fire/root
# 
# Tags: ['ex5.campfire.base']
# 
# 点灯中: 'now.lit'
# 

# 既存のついてるやつを消化
    execute as @e[tag=now.lit] at @s run function stage:boss/ex5/move/fire/extinguish

# ランダムに点灯
    tag @e[tag=ex5.campfire.base] add now.lit
    execute as @e[tag=ex5.campfire.base, tag=now.lit, sort=random, limit=2] at @s run function stage:boss/ex5/move/fire/lit

# score
scoreboard players set $ex5.campfire ex5.campfire 0
