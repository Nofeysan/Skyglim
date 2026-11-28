#> story:avelian/14/root
# 
# 0 からスタート
# 
# 

# score
    scoreboard players add $kalmia_last _ 1

# 0~ ; 転移
    execute if score $kalmia_last _ matches 20 run tp @a 78 96 -191 0 0
    execute if score $kalmia_last _ matches 30 positioned 74 99 -182 rotated -162 18 run function aj:skyglim/kalmia/summon {args: {animation: 'hover', start_animation: true}}

# 80~ ; 会話スタート
    execute if score $kalmia_last _ matches 80 run function story:kalmia/talk_kalmia {id: 1}
    execute if score $kalmia_last _ matches 160 run function story:kalmia/talk_kalmia {id: 2}
    execute if score $kalmia_last _ matches 280 run function story:kalmia/talk_kalmia {id: 3}
    execute if score $kalmia_last _ matches 380 run function story:kalmia/talk_kalmia {id: 4}
    execute if score $kalmia_last _ matches 480 run function story:kalmia/talk_kalmia {id: 5}
    execute if score $kalmia_last _ matches 560 run function story:kalmia/talk_kalmia {id: 6}
    execute if score $kalmia_last _ matches 680 run function story:kalmia/talk_kalmia {id: 7}
    execute if score $kalmia_last _ matches 800 run function story:kalmia/talk_kalmia {id: 8}
    execute if score $kalmia_last _ matches 900 run function story:kalmia/talk_kalmia {id: 9}

    execute if score $kalmia_last _ matches 960 run effect give @a minecraft:blindness 4 0

    execute if score $kalmia_last _ matches 980 run function stage:teleport/importants/happy-ending/init
    execute if score $kalmia_last _ matches 980 run scoreboard players set $kalmia_last _ -2
