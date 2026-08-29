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
    # id の取得
    data modify storage temp: aec.id set from entity @s DisabledSlots

    # macro で処理実行
    function entity:aec_manager/perform/.root with storage temp: aec

# damage
    # square
    execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage

    # circle
    execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

# kill
kill @e[distance=..0.02, type=minecraft:block_display]
