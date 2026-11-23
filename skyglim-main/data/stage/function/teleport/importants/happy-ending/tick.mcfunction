#> stage:teleport/importants/happy-ending/tick
# 
# 
# 
# 

#* tick score
    scoreboard players add $happy_ending _ 1

#* 待機
    execute if score $happy_ending _ matches 0..39 run tp @a -212 86 -308 0 0
    execute if score $happy_ending _ matches 0..39 run effect give @a minecraft:blindness 2 0 true

#* start
    # armor_staind summon
        execute if score $happy_ending _ matches 40 run summon minecraft:armor_stand -212 86.5 -308 {Invisible: true, NoGravity: true, Tags: ['happy.ending'], Small: true, Rotation: [0, 0]}

    # sound
        execute if score $happy_ending _ matches 75 as @a at @s run playsound skyglim:ending voice @s ~ ~ ~ 0.8 1
        execute if score $happy_ending _ matches 40 run time set 15000

        execute if score $happy_ending _ matches 40 run effect clear @a minecraft:blindness

#* spectator
    execute if score $happy_ending _ matches 0..3000 run gamemode spectator @a
    execute if score $happy_ending _ matches 40..3000 as @a run spectate @n[tag=happy.ending] @s

#* moves
    execute if score $happy_ending _ matches 40..2700 as @n[tag=happy.ending] at @s run tp @s ~ ~ ~0.17

#* title
    # Credits
        execute if score $happy_ending _ matches 50 run title @a times 40 140 40
        execute if score $happy_ending _ matches 85 run title @a title {text: '◆ Skyglim ◆', color: '#44ddf4'}
        execute if score $happy_ending _ matches 85 run title @a subtitle {text: 'Credits', color: '#fff6fe'}

        execute if score $happy_ending _ matches 330 run title @a times 20 80 20
        execute if score $happy_ending _ matches 330 run title @a title {text: '\ue010\uf100企画\uf106\uf105\uf103\uf102', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 330 run title @a subtitle {text: '◆ Nofey\uf107\uf106\uf104\uf101', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 450 run title @a times 20 64 20
        execute if score $happy_ending _ matches 450 run title @a title {text: '\ue010\uf100建築\uf106\uf105\uf103\uf102', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 450 run title @a subtitle {text: '◆ Nofey, TKfairy3_shin, Holyholly55\uf106\uf103\uf101', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 554 run title @a times 20 121 20
        execute if score $happy_ending _ matches 554 run title @a title {text: '\ue010\uf100ストーリー\uf106\uf104', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 554 run title @a subtitle {text: '◆ Nofey\uf107\uf106\uf104\uf101', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 715 run title @a times 20 130 20
        execute if score $happy_ending _ matches 715 run title @a title {text: '\ue010\uf100謎解き制作\uf106\uf104', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 715 run title @a subtitle {text: '◆ outer.\uf107\uf106\uf104', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 885 run title @a times 20 114 20
        execute if score $happy_ending _ matches 885 run title @a title {text: '\ue010\uf100データパック\uf106\uf103\uf100', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 885 run title @a subtitle {text: '◆ Nofey\uf107\uf106\uf104\uf101', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 1039 run title @a times 20 181 20
        execute if score $happy_ending _ matches 1039 run title @a title {text: '\ue010\uf100リソースパック\uf106\uf101', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 1039 run title @a subtitle {text: '◆ Nofey\uf107\uf106\uf104\uf101', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 1260 run title @a times 20 185 20
        execute if score $happy_ending _ matches 1260 run title @a title {text: '\ue010\uf1003Dモデル\uf106\uf104\uf102\uf101', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 1260 run title @a subtitle {text: '◆ Nofey\uf107\uf106\uf104\uf101', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 1710 run title @a times 20 140 20
        execute if score $happy_ending _ matches 1710 run title @a title {text: '\ue010\uf100テストプレイ\uf106\uf103\uf100', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 1710 run title @a subtitle {text: '◆ Holyholly55, TKfairy3_shin, konakona5735\uf105', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 1930 run title @a times 20 150 20
        execute if score $happy_ending _ matches 1930 run title @a title {text: '\ue010\uf100テストプレイ\uf106\uf103\uf100', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 1930 run title @a subtitle {text: '◆ akatuki__, HaM_Punch, DoscoiG36, kat8128\uf105\uf103', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 2246 run title @a times 20 164 20
        execute if score $happy_ending _ matches 2246 run title @a title {text: '\ue010\uf100リミックスした音楽\uf105\uf104', color: '#5dccab', italic: true}
        execute if score $happy_ending _ matches 2246 run title @a subtitle {text: '◆ Chronoexplorers / takehirotei (ft Finite Limit)\uf104\uf102', color: '#bfcfd8', italic: true}

        execute if score $happy_ending _ matches 2700 run time set 22000
        execute if score $happy_ending _ matches 2720 run time set 22300
        execute if score $happy_ending _ matches 2740 run time set 22500
        execute if score $happy_ending _ matches 2760 run time set 22700
        execute if score $happy_ending _ matches 2780 run time set 23000

        execute if score $happy_ending _ matches 2795 run title @a times 80 80 45
        execute if score $happy_ending _ matches 2795 run title @a title {text: 'Skyglim fin.', color: '#c5edff', italic: true}
        execute if score $happy_ending _ matches 2795 run title @a subtitle {text: 'Thank you for playing!', color: '#e9b530', italic: true, underlined: true}

    # avelian summon
        execute if score $happy_ending _ matches 2795 positioned -207 85 149 facing -212 87 143 rotated ~ 0 run function aj:skyglim/avelian/summon {args: {animation: 'endroll', start_animation: true}}
        execute if score $happy_ending _ matches 2795 positioned -207 85 149 run particle minecraft:dust{color: 11878500, scale: 2.4} ~ ~0.5 ~ 0.8 1.4 0.8 0 480 force
        execute if score $happy_ending _ matches 2795 positioned -217 85 149 facing -212 87 143 rotated ~ 0 run function aj:skyglim/cecile/summon {args: {animation: 'endroll', start_animation: true}}
        execute if score $happy_ending _ matches 2795 positioned -217 85 149 run particle minecraft:dust{color: 5027246, scale: 2.4} ~ ~0.5 ~ 0.8 1.4 0.8 0 480 force
        execute if score $happy_ending _ matches 2795 positioned -207 88 151 facing -212 87 143 rotated ~ 0 rotated ~ 15 run function aj:skyglim/kalmia/summon {args: {animation: 'hover', start_animation: false}}
        execute if score $happy_ending _ matches 2795 positioned -207 88 151 run particle minecraft:dust{color: 15050981, scale: 2.4} ~ ~0.5 ~ 0.8 1.4 0.8 0 480 force

#* actionbar
    # stage
        # 切り替え用リセット
            execute if score $happy_ending _ matches 0..3000 run title @a actionbar ''
        
        # stages
            execute if score $happy_ending _ matches 90..310 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【洞窟】\uf100', color: '#44ddf4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[グリムダスク坑道] ', color: '#92f3a4'}, {text: 'TKfairy3_shin', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[すすめ！のぼれ！大樹の中！] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 330..546 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【森】\uf100', color: '#44ddf4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[幻想の森] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[幻想の図書館] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 568..787 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【お菓子の国】\uf100', color: '#44ddf4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[お団子探検隊] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[ケーキの中の秘密] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 807..1020 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【研究所】\uf100', color: '#44ddf4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[異邦研究所] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[魔女の隠れ家] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 1039..1260 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【雪国】\uf100', color: '#44ddf4'}, {text: 'Nofey, TKfairy3_shin', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[水晶洞窟] ', color: '#92f3a4'}, {text: 'TKfairy3_shin', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[氷河の古代遺跡] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 1279..1486 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【天空】\uf100', color: '#44ddf4'}, {text: 'Nofey, TKfairy3_shin', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[天空の城跡] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[天空の豪邸] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 1504..1610 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【海賊船】\uf100', color: '#44ddf4'}, {text: 'TKfairy3_shin', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[幽霊船の旅路] ', color: '#92f3a4'}, {text: 'TKfairy3_shin', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 1630..1725 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【異界】\uf100', color: '#44ddf4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[ネザーの業火] ', color: '#92f3a4'}, {text: 'TKfairy3_shin', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 1744..1844 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【都市】\uf100', color: '#44ddf4'}, {text: 'TKfairy3_shin', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[機械都市] ', color: '#92f3a4'}, {text: 'TKfairy3_shin', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 1861..1961 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: ' [終末の遺跡] ', color: '#92f3a4'}, {text: 'Holyholly55', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 1979..2084 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: ' [鏡の回廊] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 2097..2195 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: ' [悪夢のパレード] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 2215..2310 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: ' [呪われた妖精の森] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 2330..2440 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: ' [喪失の文明] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 2460..2555 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: ' [神聖なる空中墓地] ', color: '#92f3a4'}, {text: 'Nofey, TKfairy3_shin, Holyholly55', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 2570..2675 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: ' [エンドシティの虚無の塔] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[虚無の回帰点] ', color: '#92f3a4'}, {text: 'TKfairy3_shin, Holyholly55, Nofey', color: '#fff6fe'}]
            execute if score $happy_ending _ matches 2695..2790 run title @a actionbar [{text: '建築  \ue010\ue010 ', color: '#fba03f'},{text: '【街】\uf100', color: '#92f3a4'}, {text: 'Nofey, TKfairy3_shin', color: '#fff6fe'}, {text: ' / ', color: '#aaaaaa'}, {text: '[理の黎明] ', color: '#92f3a4'}, {text: 'Nofey', color: '#fff6fe'}]

# リセット
    execute if score $happy_ending _ matches 3000.. run function stage:teleport/importants/happy-ending/end
