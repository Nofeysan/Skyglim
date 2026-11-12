#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

#! 倒してたら初期化しない

# forceload add
forceload add 9550 -468 9478 -540

#- スポナー設置

#- チェスト配置

# ボス召喚設置
setblock 9514 142 -504 minecraft:command_block{Command: "function stage:boss/16/summon"}
setblock 9514 143 -504 minecraft:lapis_block
setblock 9514 144 -504 minecraft:polished_blackstone_button[face=floor, facing=north]

#- ボス部屋出口

# foeceload remove
forceload remove 9550 -468 9478 -540

# スコアの設定
scoreboard players set _ stage.16 1

#! debug
#tellraw @a {text: '[!] Stage 10 を構成しました。', color: "gray"}
