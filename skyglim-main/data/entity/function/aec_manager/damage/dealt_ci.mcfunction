#> entity:aec_manager/damage/dealt_ci
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
$data modify storage km_bounding: arguments.cylinder set value \
{selector: "@a[distance=..100]", radius: $(half_r), y_plus: 16.0, y_minus: 0.1}

# 対象特定
execute at @s run function km_bounding:cylinder/

# ダメージ判定
execute as @a[tag=bounding_cylinder] at @s run damage @s 100 minecraft:magic by @n[type=minecraft:armor_stand, tag=aec_dealt]

# tag remove
tag @s remove aec_dealt
tag @e[tag=bounding_cylinder] remove bounding_cylinder
