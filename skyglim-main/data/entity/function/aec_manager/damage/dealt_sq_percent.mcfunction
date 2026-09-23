#> entity:aec_manager/damage/dealt_sq
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
#   p: 与える割合ダメージ
#   

# 自身にtag
tag @s add aec_dealt

# 引数設定
$data modify storage km_bounding: arguments.cuboid set value \
{selector: "@a[distance=..100]", x_plus: $(half_r), y_plus: 16.0, z_plus: $(half_r), x_minus: $(half_r), y_minus: 0.1, z_minus: $(half_r)}

# 対象特定
execute at @s run function km_bounding:cuboid/

# ダメージ判定
$effect give @a[tag=bounding_cuboid] minecraft:wind_charged 1 $(p) true

# tag remove
tag @s remove aec_dealt
tag @e[tag=bounding_cuboid] remove bounding_cuboid
