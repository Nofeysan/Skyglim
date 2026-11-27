#> stage:boss/11/move/10/show_barrier
# 
# barrier の守られる範囲を表示
# 
# 

# 円状にパーティクル
    summon minecraft:marker ~ ~ ~ {Tags: ['exx_center', 'exx_axis', 'exx']}
    summon minecraft:marker ~ ~ ~ {Tags: ['exx_axis', 'exx'], Rotation: [180, 0]}

    execute as @e[tag=exx_center, limit=1] at @s rotated as @e[tag=exx_axis, limit=2] rotated ~90 0 positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 \
            rotated as @e[tag=exx_axis, limit=2] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^5 \
            run particle minecraft:end_rod ~ ~0.5 ~ 0 3 0 0 100 force
    
    kill @e[tag=exx, type=minecraft:marker]

# effect
    execute as @a at @s positioned ~ 144 ~ if entity @e[type=minecraft:marker, tag=gimmick.barrier.set, distance=..5] run effect give @s minecraft:glowing 1 0 false
