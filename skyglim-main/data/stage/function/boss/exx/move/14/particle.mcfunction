#> stage:boss/11/move/2/particle
# 
# 
# 
# 

# 円状にパーティクル
    summon minecraft:marker ~ ~ ~ {Tags: ['exx_center', 'exx_axis', 'exx']}
    summon minecraft:marker ~ ~ ~ {Tags: ['exx_axis', 'exx'], Rotation: [180, 0]}

    $execute as @e[tag=exx_center, limit=1] at @s rotated as @e[tag=exx_axis, limit=2] rotated ~90 0 positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^10 \
            run particle minecraft:dust{color: $(color), scale: 1.0} ~ ~0.5 ~ 0 0 0 0 10 force
    
    kill @e[tag=exx, type=minecraft:marker]
