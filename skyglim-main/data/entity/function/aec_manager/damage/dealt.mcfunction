#> entity:aec_manager/damage/dealt
# 
# ダメージを与える
# 正方形上にちゃんと調整
# 

# tag
tag @s add aec_dealt

# pos をずらして dx, dz
$execute at @s positioned ~-$(half_r) ~ ~-$(half_r) as @a[dx=$(r), dz=$(r), dy=5] run damage @s 100 minecraft:magic by @n[tag=aec_dealt, type=minecraft:armor_stand]

# tag remove
tag @s remove aec_dealt
