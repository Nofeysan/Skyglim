#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# 倒したらしない
execute if score $exx.boss.slain _ matches 1 run return fail

# forceload add
forceload add 9331 -369 9259 -441

# 帰り道の生成
fill 9294 151 -422 9296 147 -422 minecraft:air
fill 9294 147 -422 9296 147 -422 minecraft:smooth_stone_slab

# foeceload remove
forceload remove 9331 -369 9259 -441

# スコアのリセット
scoreboard players set _ stage.ex.x -1

# boss 用
bossbar remove minecraft:stageexx.boss
function aj:skyglim/cecile/remove/all
execute positioned 9288 147 -405 rotated -90 0 run function aj:skyglim/cecile/summon {args: {}}
function stage:boss/exx/move/init/1/remove

setblock 9295 145 -405 minecraft:command_block{Command: "function stage:boss/exx/summon"}
setblock 9295 146 -405 minecraft:lapis_block
setblock 9295 147 -405 minecraft:polished_blackstone_button[face=floor, facing=north]

#! debug
tellraw @a {text: '[!] Special X がリセットされた。', color: "gray"}
