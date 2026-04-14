#> entity:aec_manager/summon/macro_square
# 
# 事前予告・拡大用のエンティティを召喚する
# 
# <storage> enemy: aec.list.
#   dmg: [int] status.dmg の値
#   str: [int] status.str の値
#   r: 直径
#   half_r: 半径
#   t: 拡大完了までの時間
#   t_2: 拡大用に合わせての2tickの遅延 (t+2 [t])
#  

# ダメージ処理用 armor_stand
$summon minecraft:armor_stand ~ ~ ~ {Small: true, Invulnerable: true, NoGravity: true, Invisible: true, data: {status: {dmg: $(dmg), str: $(str)}, r: $(r), half_r: $(half_r)}, PortalCooldown: $(t_2), Tags: ["aec"]}

# 事前に表示するやつ
$execute positioned ~ ~ ~ run summon minecraft:block_display ~ ~ ~ \
{\
    block_state: {Name: "minecraft:blue_stained_glass"},\
    brightness: {block: 12, sky: 12},\
    view_range: 12f,\
    \
    transformation: {\
        right_rotation: [0f, 0f, 0f, 1f],\
        scale: [$(r), 0.01, $(r)],\
        left_rotation: [0f, 0f, 0f, 1f],\
        translation: [-$(half_r), 0, -$(half_r)]\
    },\
    Tags: ["aec"]\
}

# 拡大させる用
$execute positioned ~ ~ ~ run summon minecraft:block_display ~ ~ ~ \
{\
    block_state: {Name: "minecraft:red_stained_glass"},\
    brightness: {block: 12, sky: 12},\
    view_range: 12f,\
    \
    transformation: {\
        right_rotation: [0f, 0f, 0f, 1f],\
        scale: [-0.01f, 0.02f, 0.01f],\
        left_rotation: [0f, 0f, 0f, 1f],\
        translation: [0f, -0.01f, 0f]\
    },\
    Tags: ["req_trans", "aec"],\
    \
    data: {r: $(r), t: $(t), half_r: $(half_r)}\
}
