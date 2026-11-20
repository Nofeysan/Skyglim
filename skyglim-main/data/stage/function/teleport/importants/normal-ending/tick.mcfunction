#> stage:teleport/importants/normal-ending/tick
# 
# 
# 
# 

# tick score
    scoreboard players add $normal_ending _ 1

# armor_staind summon
    execute if score $normal_ending _ matches 0 run summon minecraft:armor_stand 90.0 106 170 {Invisible: true, NoGravity: true, Tags: ['normal.ending'], Small: true, Rotation: [0, 0]}

# spectator
    execute if score $normal_ending _ matches 0..3720 run gamemode spectator @a

    execute if score $normal_ending _ matches 0..410 as @a run spectate @n[tag=normal.ending] @s
    execute if score $normal_ending _ matches 430..720 as @a run spectate @n[tag=normal.ending] @s
    execute if score $normal_ending _ matches 740..1080 as @a run spectate @n[tag=normal.ending] @s
    execute if score $normal_ending _ matches 1110..1600 as @a run spectate @n[tag=normal.ending] @s
    execute if score $normal_ending _ matches 1630..2880 as @a run spectate @n[tag=normal.ending] @s
    execute if score $normal_ending _ matches 2910..3850 as @a run spectate @n[tag=normal.ending] @s

# sound
    execute if score $normal_ending _ matches 40 run playsound minecraft:music_disc.strad voice @a 0 1000000 0 1000000 1
    execute if score $normal_ending _ matches 40 run time set noon

# effect
    # 0: 待機
        execute if score $normal_ending _ matches 40..245 run effect give @a minecraft:blindness 1 0 true

        execute if score $normal_ending _ matches 40 run title @a times 30 180 30
        execute if score $normal_ending _ matches 40 run title @a title {text: '◆ Skyglim ◆', color: '#44ddf4'}

    # 1: skyglim
        execute if score $normal_ending _ matches 246 run effect clear @a minecraft:blindness
        execute if score $normal_ending _ matches 246..410 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~ ~-0.121951219512 ~

    # 2: お菓子 x
        execute if score $normal_ending _ matches 410..470 run effect give @a minecraft:blindness 2 0 true
        execute if score $normal_ending _ matches 420 run tp @a 9917 115 -260
        execute if score $normal_ending _ matches 420 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 9917 115 -260 42 15
        execute if score $normal_ending _ matches 470..720 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~-0.072 ~-0.016 ~0.068

    # 3: 雪国t
        execute if score $normal_ending _ matches 720..780 run effect give @a minecraft:blindness 2 0 true
        execute if score $normal_ending _ matches 730 run tp @a 10077 63 -36
        execute if score $normal_ending _ matches 730 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 10077 63 -36 40 -50
        execute if score $normal_ending _ matches 780..1080 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~-0.006666666667 ~0.046666666676 ~0.006666666667

    # 4: 海賊船 x
        execute if score $normal_ending _ matches 1080..1140 run effect give @a minecraft:blindness 2 0 true
        execute if score $normal_ending _ matches 1100 run tp @a 9017 73 28
        execute if score $normal_ending _ matches 1100 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 9017 73 28 -132 -20
        execute if score $normal_ending _ matches 1140..1600 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~ ~ ~-0.03913043478

    # 5: 研究所 1~3 x
        #% 1
        execute if score $normal_ending _ matches 1600..1660 run effect give @a minecraft:blindness 2 0 true
        execute if score $normal_ending _ matches 1620 run tp @a 6914 72 4
        execute if score $normal_ending _ matches 1620 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 6914 72 4 135 0
        execute if score $normal_ending _ matches 1660..2080 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~-0.05 ~ ~

        #% 2
        execute if score $normal_ending _ matches 2080..2140 run effect give @a minecraft:blindness 2 0 true
        execute if score $normal_ending _ matches 2100 run tp @a 6872 81 -9
        execute if score $normal_ending _ matches 2100 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 6872 81 -9 -135 0
        execute if score $normal_ending _ matches 2140..2460 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~ ~ ~-0.05625

        #% 3
        execute if score $normal_ending _ matches 2460..2520 run effect give @a minecraft:blindness 2 0 true
        execute if score $normal_ending _ matches 2480 run tp @a 6901 51 -138
        execute if score $normal_ending _ matches 2480 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 6901 51 -138 50 0
        execute if score $normal_ending _ matches 2520..2880 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~-0.04722222222 ~ ~

    # 6: 玉座 x
        execute if score $normal_ending _ matches 2880..2940 run effect give @a minecraft:blindness 2 0 true
        execute if score $normal_ending _ matches 2900 run tp @a 90.0 55 239
        execute if score $normal_ending _ matches 2900 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 90.0 55 239 0 0
        execute if score $normal_ending _ matches 2940..3220 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~ ~ ~-0.2071428571

    # 7: 宝物庫
        execute if score $normal_ending _ matches 3230..3315 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~ ~ ~0.3764705882
        execute if score $normal_ending _ matches 3230..3315 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run rotate @s ~-1.058823529 ~

        execute if score $normal_ending _ matches 3315..3400 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~0.3823529412 ~0.02352941176 ~
        execute if score $normal_ending _ matches 3315..3400 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run rotate @s ~1.058823529 ~

        execute if score $normal_ending _ matches 3420 run tp @n[type=minecraft:armor_stand, tag=normal.ending] 122 57 213 0 25
        execute if score $normal_ending _ matches 3420..3760 as @n[type=minecraft:armor_stand, tag=normal.ending] at @s run tp @s ~ ~-0.008823529412 ~0.04705882353

    # 8: end (tp to home)
        execute if score $normal_ending _ matches 3770 run effect give @a minecraft:blindness 8 0 true
        execute if score $normal_ending _ matches 3770 run title @a times 0 80 20
        execute if score $normal_ending _ matches 3770 run title @a title ""
        execute if score $normal_ending _ matches 3770 run title @a subtitle {text: 'Thank you for playing...?', underlined: true, color: '#c5edff', italic: true}
        execute if score $normal_ending _ matches 3850 run function stage:teleport/importants/normal-ending/end
