#> entity:aec_manager/damage/dealt
# 
# ライブラリを用いて範囲内のプレイヤーにダメージを与える
# 
# @input <storage> enemy: aec.damage.
#   dmg: [int] status.dmg の値
#   str: [int] status.str の値
#   r: 直径
#   half_r: 半径
#   t: 拡大完了までの時間
#   t_2: 拡大用に合わせての2tickの遅延 (t+2 [t])
#  

# 自身にtag
tag @s add aec_dealt

# 引数設定
$data modify storage km_bounding: arguments.cuboid set value \
{selector: "@a", x_plus: $(half_r), y_plus: 5.0, z_plus: $(half_r), x_minus: $(half_r), y_minus: 0.0, z_minus: $(half_r)}

# 対象特定
execute at @s run function km_bounding:cuboid/

# ダメージ判定
execute as @a[tag=bounding_cuboid] at @s run damage @s 100 minecraft:magic by @n[type=minecraft:armor_stand, tag=aec_dealt]

# tag remove
tag @s remove aec_dealt
tag @e[tag=bounding_cuboid] remove bounding_cuboid
