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
#   p: 与える割合ダメージ
#   

# 自身にtag
tag @s add aec_dealt

# 引数設定
$data modify storage km_bounding: arguments.cylinder set value \
{selector: "@a[distance=..100]", radius: $(half_r), y_plus: 16.0, y_minus: 0.1}

# 対象特定
execute at @s run function km_bounding:cylinder/

# ダメージ判定
$effect give @a[tag=bounding_cylinder] minecraft:wind_charged 1 $(p) true

# tag remove
tag @s remove aec_dealt
tag @e[tag=bounding_cylinder] remove bounding_cylinder
