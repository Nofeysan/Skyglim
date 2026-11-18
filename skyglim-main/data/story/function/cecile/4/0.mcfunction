#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# bossbar
    bossbar remove minecraft:stageexx.boss

# gimmick 削除
    execute positioned 9295 146 -405 run effect give @e[predicate=entity:entity_enemy, distance=..100] minecraft:wind_charged 1 100
    execute positioned 9295 146 -405 run kill @e[tag=gimmick, distance=..100]

# 自動進行
    schedule function story:cecile/4/1 20t

# no tp
    scoreboard players set $cant_use_pearl _ 1

# score
    scoreboard players set $exx.boss.slain _ 1

# cecile
    execute positioned 9295 147 -405 rotated -180 0 as @n[tag=aj.skyglim.cecile.root] run function aj:skyglim/cecile/animations/spreadeagled/play
