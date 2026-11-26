#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# already?
execute if score $s16.boss.first _ matches 1 run return fail

# forceload add
forceload add 9550 -468 9478 -540

# スポナーの破壊
#execute positioned 10098 2 -359 run kill @e[dx=73, dy=27, dz=217, type=minecraft:spawner_minecart]
execute positioned 9514 143 -504 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/cecile/remove/this

# foeceload remove
forceload remove 9550 -468 9478 -540

# 倒したらしない
execute if score $s16.boss.slain _ matches 1 run return fail

# スコアのリセット
scoreboard players set _ stage.16 -1

# boss 用
bossbar remove minecraft:stage16.boss

#! debug
tellraw @a {text: '[!] Stage 16 がリセットされた。', color: "gray"}
