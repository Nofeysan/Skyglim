#>
# 
# 
# 
# 

# ダメージ処理用 Marker <= いったんデバッグで armor_stand にしてる
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
