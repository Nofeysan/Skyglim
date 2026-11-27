#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# effect
execute if score exx BossMoves matches 700 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=exx] minecraft:slowness 12 50

# sound
    scoreboard players operation _ _ = exx BossMoves
    scoreboard players operation _ _ %= #5 num

    execute if score exx BossMoves matches 700..880 if score _ _ matches 0 as @a[distance=..50] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 740..920 if score _ _ matches 0 as @a[distance=..50] at @s run playsound minecraft:entity.wither.shoot voice @s ~ ~ ~ 0.3 2

# 召喚
    # 0 +10n
    execute if score exx BossMoves matches 700 rotated 0 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 1}
    execute if score exx BossMoves matches 705 rotated 10 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 2}
    execute if score exx BossMoves matches 710 rotated 20 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 3}
    execute if score exx BossMoves matches 715 rotated 30 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 4}
    execute if score exx BossMoves matches 720 rotated 40 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 5}
    execute if score exx BossMoves matches 725 rotated 50 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 6}
    execute if score exx BossMoves matches 730 rotated 60 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 7}
    execute if score exx BossMoves matches 735 rotated 70 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 8}
    execute if score exx BossMoves matches 740 rotated 80 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 9}
    execute if score exx BossMoves matches 745 rotated 90 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 10}
    execute if score exx BossMoves matches 750 rotated 100 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 11}
    execute if score exx BossMoves matches 755 rotated 110 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 12}
    execute if score exx BossMoves matches 760 rotated 120 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 13}
    execute if score exx BossMoves matches 765 rotated 130 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 14}
    execute if score exx BossMoves matches 770 rotated 140 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 15}
    execute if score exx BossMoves matches 775 rotated 150 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 16}
    execute if score exx BossMoves matches 780 rotated 160 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 17}
    execute if score exx BossMoves matches 785 rotated 170 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 18}
    execute if score exx BossMoves matches 790 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 19}
    execute if score exx BossMoves matches 795 rotated 190 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 20}
    execute if score exx BossMoves matches 800 rotated 200 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 21}
    execute if score exx BossMoves matches 805 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 22}
    execute if score exx BossMoves matches 810 rotated 220 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 23}
    execute if score exx BossMoves matches 815 rotated 230 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 24}
    execute if score exx BossMoves matches 820 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 25}
    execute if score exx BossMoves matches 825 rotated 250 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 26}
    execute if score exx BossMoves matches 830 rotated 260 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 27}
    execute if score exx BossMoves matches 835 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 28}
    execute if score exx BossMoves matches 840 rotated 280 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 29}
    execute if score exx BossMoves matches 845 rotated 290 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 30}
    execute if score exx BossMoves matches 850 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 31}
    execute if score exx BossMoves matches 855 rotated 310 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 32}
    execute if score exx BossMoves matches 860 rotated 320 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 33}
    execute if score exx BossMoves matches 865 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 34}
    execute if score exx BossMoves matches 870 rotated 340 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 35}
    execute if score exx BossMoves matches 875 rotated 350 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 36}
    execute if score exx BossMoves matches 880 rotated 360 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 37}

    execute if score exx BossMoves matches 740 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=1] Motion set value [0.0, 0.0, 2.5]
    execute if score exx BossMoves matches 745 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=2] Motion set value [-0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 750 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=3] Motion set value [-0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 755 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=4] Motion set value [-1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 760 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=5] Motion set value [-1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 765 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=6] Motion set value [-1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 770 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=7] Motion set value [-2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 775 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=8] Motion set value [-2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 780 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=9] Motion set value [-2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 785 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=10] Motion set value [-2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 790 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=11] Motion set value [-2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 795 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=12] Motion set value [-2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 800 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=13] Motion set value [-2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 805 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=14] Motion set value [-1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 810 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=15] Motion set value [-1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 815 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=16] Motion set value [-1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 820 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=17] Motion set value [-0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 825 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=18] Motion set value [-0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 830 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=19] Motion set value [0.0, 0.0, -2.5]
    execute if score exx BossMoves matches 835 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=20] Motion set value [0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 840 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=21] Motion set value [0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 845 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=22] Motion set value [1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 850 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=23] Motion set value [1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 855 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=24] Motion set value [1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 860 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=25] Motion set value [2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 865 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=26] Motion set value [2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 870 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=27] Motion set value [2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 875 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=28] Motion set value [2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 880 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=29] Motion set value [2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 885 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=30] Motion set value [2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 890 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=31] Motion set value [2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 895 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=32] Motion set value [1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 900 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=33] Motion set value [1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 905 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=34] Motion set value [1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 910 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=35] Motion set value [0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 915 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=36] Motion set value [0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 920 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=37] Motion set value [0.0, 0.0, 2.5]

    # 180 +10n
    execute if score exx BossMoves matches 700 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 101}
    execute if score exx BossMoves matches 705 rotated 190 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 102}
    execute if score exx BossMoves matches 710 rotated 200 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 103}
    execute if score exx BossMoves matches 715 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 104}
    execute if score exx BossMoves matches 720 rotated 220 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 105}
    execute if score exx BossMoves matches 725 rotated 230 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 106}
    execute if score exx BossMoves matches 730 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 107}
    execute if score exx BossMoves matches 735 rotated 250 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 108}
    execute if score exx BossMoves matches 740 rotated 260 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 109}
    execute if score exx BossMoves matches 745 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 110}
    execute if score exx BossMoves matches 750 rotated 280 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 111}
    execute if score exx BossMoves matches 755 rotated 290 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 112}
    execute if score exx BossMoves matches 760 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 113}
    execute if score exx BossMoves matches 765 rotated 310 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 114}
    execute if score exx BossMoves matches 770 rotated 320 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 115}
    execute if score exx BossMoves matches 775 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 116}
    execute if score exx BossMoves matches 780 rotated 340 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 117}
    execute if score exx BossMoves matches 785 rotated 350 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 118}
    execute if score exx BossMoves matches 790 rotated 360 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 119}
    execute if score exx BossMoves matches 795 rotated 370 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 120}
    execute if score exx BossMoves matches 800 rotated 380 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 121}
    execute if score exx BossMoves matches 805 rotated 390 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 122}
    execute if score exx BossMoves matches 810 rotated 400 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 123}
    execute if score exx BossMoves matches 815 rotated 410 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 124}
    execute if score exx BossMoves matches 820 rotated 420 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 125}
    execute if score exx BossMoves matches 825 rotated 430 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 126}
    execute if score exx BossMoves matches 830 rotated 440 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 127}
    execute if score exx BossMoves matches 835 rotated 450 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 128}
    execute if score exx BossMoves matches 840 rotated 460 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 129}
    execute if score exx BossMoves matches 845 rotated 470 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 130}
    execute if score exx BossMoves matches 850 rotated 480 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 131}
    execute if score exx BossMoves matches 855 rotated 490 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 132}
    execute if score exx BossMoves matches 860 rotated 500 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 133}
    execute if score exx BossMoves matches 865 rotated 510 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 134}
    execute if score exx BossMoves matches 870 rotated 520 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 135}
    execute if score exx BossMoves matches 875 rotated 530 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 136}
    execute if score exx BossMoves matches 880 rotated 540 0 positioned ~ ~1 ~ run function stage:boss/exx/move/init/2/round/item {id: 137}

    execute if score exx BossMoves matches 740 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=101] Motion set value [0.0, 0.0, -2.5]
    execute if score exx BossMoves matches 745 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=102] Motion set value [0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 750 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=103] Motion set value [0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 755 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=104] Motion set value [1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 760 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=105] Motion set value [1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 765 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=106] Motion set value [1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 770 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=107] Motion set value [2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 775 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=108] Motion set value [2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 780 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=109] Motion set value [2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 785 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=110] Motion set value [2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 790 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=111] Motion set value [2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 795 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=112] Motion set value [2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 800 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=113] Motion set value [2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 805 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=114] Motion set value [1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 810 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=115] Motion set value [1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 815 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=116] Motion set value [1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 820 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=117] Motion set value [0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 825 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=118] Motion set value [0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 830 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=119] Motion set value [0.0, 0.0, 2.5]
    execute if score exx BossMoves matches 835 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=120] Motion set value [-0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 840 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=121] Motion set value [-0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 845 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=122] Motion set value [-1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 850 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=123] Motion set value [-1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 855 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=124] Motion set value [-1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 860 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=125] Motion set value [-2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 865 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=126] Motion set value [-2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 870 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=127] Motion set value [-2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 875 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=128] Motion set value [-2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 880 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=129] Motion set value [-2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 885 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=130] Motion set value [-2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 890 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=131] Motion set value [-2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 895 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=132] Motion set value [-1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 900 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=133] Motion set value [-1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 905 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=134] Motion set value [-1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 910 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=135] Motion set value [-0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 915 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=136] Motion set value [-0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 920 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=137] Motion set value [0.0, 0.0, -2.5]

# damage 処理
execute if score exx BossMoves matches 740..920 as @e[type=item, tag=gimmick.magma, distance=..50] at @s run function stage:boss/exx/move/init/2/round/damage

# kill
execute if score exx BossMoves matches 940 as @e[type=item, tag=gimmick.magma, distance=..50] at @s run function stage:boss/exx/move/init/2/round/reset
