#> entity:aec_manager/damage/root
# 
# AOE判定用の Marker の PortalCoolDown が 0 になったときの処理
# エフェクトとダメージ判定
# 
# <storage> enemy: aec.damage.
#   dmg: [int] status.dmg の値
#   str: [int] status.str の値
#   r: 直径
#   half_r: 半径
#   t: 拡大完了までの時間
#   t_2: 拡大用に合わせての2tickの遅延 (t+2 [t])
#  

# data
data modify storage enemy: aec.damage set from entity @s data

# effect
#! 物によって変更できるようにする
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 200 force @a

# damage
function entity:aec_manager/damage/dealt with storage enemy: aec.damage

# kill
kill @e[distance=..0.1, type=minecraft:block_display]
