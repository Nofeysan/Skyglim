#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# 倒したらしない
execute if score $exx.boss.slain _ matches 1 run return fail

# ダメージいいよ
    scoreboard players set $cant_damage _ 0

# forceload add
forceload add 9331 -369 9259 -441

# 帰り道の生成
function stage:boss/exx/move/init/1/remove

fill 9294 151 -422 9296 147 -422 minecraft:air
fill 9294 147 -422 9296 147 -422 minecraft:smooth_stone_slab

execute positioned 9295 146 -405 run kill @e[tag=gimmick, distance=..50]

# スコアのリセット
scoreboard players set _ stage.ex.x -1

# boss 用
bossbar remove minecraft:stageexx.boss
execute positioned 9295 146 -405 run function aj:skyglim/cecile/remove/all
execute positioned 9295 147 -398 rotated 180 0 run function aj:skyglim/cecile/summon {args: {}}

setblock 9295 145 -405 minecraft:command_block{Command: "function stage:boss/exx/root"}
setblock 9295 146 -405 minecraft:lapis_block
setblock 9295 147 -405 minecraft:polished_blackstone_button[face=floor, facing=north]

# foeceload remove
forceload remove 9331 -369 9259 -441

#! debug
tellraw @a {text: '[!] Special X がリセットされた。', color: "gray"}
