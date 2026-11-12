#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9991 -520 9922 -580

#- スポナー設置

#- チェスト配置

# ボス召喚設置
setblock 9963 100 -551 minecraft:command_block{Command: "function stage:boss/ex3/summon"}
setblock 9963 101 -551 minecraft:lapis_block
setblock 9963 102 -551 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 9961 103 -574 9963 101 -574 minecraft:bricks

# foeceload remove
forceload remove 9991 -520 9922 -580

# スコアの設定
scoreboard players set _ stage.ex.3 1

#! debug
#tellraw @a {text: '[!] Special III を構成しました。', color: "gray"}
