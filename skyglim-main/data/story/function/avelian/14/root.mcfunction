#> story:avelian/14/root
# 
# 0 からスタート
# 
# 

# score
    scoreboard players add $last_talk _ 1

# 0~ ; 転移
    execute if score $last_talk _ matches 0 run effect give @a minecraft:blindness 5 0 true
    execute if score $last_talk _ matches 20 run tp @a 90.0 54 235 0 0

# 100~ ; 会話スタート
    execute if score $last_talk _ matches 100 run function story:avelian/14/talk_avelian {id: 1}

    execute if score $last_talk _ matches 160 positioned 87 54 241 rotated -36.9 -6.7 run function aj:skyglim/cecile/summon {args: {}}
    execute if score $last_talk _ matches 160 run function story:avelian/14/talk_cecile {id: 2}

    execute if score $last_talk _ matches 200 run function story:avelian/14/talk_avelian {id: 3}

    execute if score $last_talk _ matches 220 run function story:avelian/14/talk_cecile {id: 4}

    execute if score $last_talk _ matches 280 as @n[tag=aj.skyglim.avelian.root] at @s run tp @s 90 54 242 90 0
    execute if score $last_talk _ matches 280 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/animations/punch/play
    execute if score $last_talk _ matches 280 as @n[tag=aj.skyglim.cecile.root] at @s run tp @s 89 54 242 -90 0
    execute if score $last_talk _ matches 280 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/cecile/animations/dai/play
    execute if score $last_talk _ matches 280 run function story:avelian/14/talk_avelian {id: 5}

    execute if score $last_talk _ matches 300 run function story:avelian/14/talk_avelian {id: 6}
    execute if score $last_talk _ matches 360 run function story:avelian/14/talk_cecile {id: 7}

    execute if score $last_talk _ matches 420 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/cecile/animations/hang/play
    execute if score $last_talk _ matches 420 run function story:avelian/14/talk_cecile {id: 8}

    execute if score $last_talk _ matches 460 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/animations/dai/play
    execute if score $last_talk _ matches 460 run function story:avelian/14/talk_avelian {id: 9}

    execute if score $last_talk _ matches 540 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/animations/stand/play
    execute if score $last_talk _ matches 540 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/avelian/animations/stand/play
    execute if score $last_talk _ matches 540 run function story:avelian/14/talk_cecile {id: 10}

    execute if score $last_talk _ matches 660 run function story:avelian/14/talk_avelian {id: 11}
    execute if score $last_talk _ matches 760 run function story:avelian/14/talk_cecile {id: 12}
    execute if score $last_talk _ matches 820 run function story:avelian/14/talk_avelian {id: 13}
    execute if score $last_talk _ matches 860 run function story:avelian/14/talk_cecile {id: 14}
    execute if score $last_talk _ matches 920 run function story:avelian/14/talk_avelian {id: 15}
    execute if score $last_talk _ matches 1020 run function story:avelian/14/talk_avelian {id: 16}
    execute if score $last_talk _ matches 1120 run function story:avelian/14/talk_avelian {id: 17}

    execute if score $last_talk _ matches 1220 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/avelian/animations/hang/play
    execute if score $last_talk _ matches 1220 run function story:avelian/14/talk_cecile {id: 18}

    execute if score $last_talk _ matches 1320 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/animations/hang/play
    execute if score $last_talk _ matches 1320 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/avelian/animations/dai/play
    execute if score $last_talk _ matches 1320 run function story:avelian/14/talk_avelian {id: 19}

    execute if score $last_talk _ matches 1380 as @n[tag=aj.skyglim.avelian.root] at @s run rotate @s 180 0
    execute if score $last_talk _ matches 1380 as @n[tag=aj.skyglim.cecile.root] at @s run rotate @s 180 0
    execute if score $last_talk _ matches 1380 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/animations/stand/play
    execute if score $last_talk _ matches 1380 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/avelian/animations/stand/play
    execute if score $last_talk _ matches 1380 run function story:avelian/14/talk_avelian {id: 20}
    execute if score $last_talk _ matches 1460 run function story:avelian/14/talk_avelian {id: 21}
    execute if score $last_talk _ matches 1560 run function story:avelian/14/talk_avelian {id: 22}
    execute if score $last_talk _ matches 1640 run function story:avelian/14/talk_avelian {id: 23}
    execute if score $last_talk _ matches 1700 run function story:avelian/14/talk_avelian {id: 24}
    execute if score $last_talk _ matches 1800 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/animations/endroll/play
    execute if score $last_talk _ matches 1800 run function story:avelian/14/talk_avelian {id: 25}

    execute if score $last_talk _ matches 1860 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/cecile/animations/hang/play
    execute if score $last_talk _ matches 1860 as @n[tag=aj.skyglim.cecile.root] at @s run rotate @s -90 0
    execute if score $last_talk _ matches 1860 run function story:avelian/14/talk_cecile {id: 26}

    execute if score $last_talk _ matches 1900 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/animations/hang/play
    execute if score $last_talk _ matches 1900 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/avelian/animations/dai/play
    execute if score $last_talk _ matches 1900 as @n[tag=aj.skyglim.avelian.root] at @s run rotate @s 90 0
    execute if score $last_talk _ matches 1900 run function story:avelian/14/talk_avelian {id: 27}

    execute if score $last_talk _ matches 1920..1980 as @a at @s run particle minecraft:firework 0.7 1.4 0.7 ~ ~ ~ 0.1 4
    execute if score $last_talk _ matches 1940 run effect give @a minecraft:blindness 5 0 true

    execute if score $last_talk _ matches 1980 run tp @a 78 96 -192 0 0
    execute if score $last_talk _ matches 1980 run scoreboard players set $last_talk _ -2
    execute if score $last_talk _ matches 1980 run scoreboard players set $kalmia_last _ -1
