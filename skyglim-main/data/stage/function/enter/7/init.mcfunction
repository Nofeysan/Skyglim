#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9746 -532 9979 -275

# スポナー設置
function entity:spawner/set {id: 'stage/7/13', xyz: '9922 13 -290', block: 'iron_block'}
function entity:spawner/set {id: 'stage/7/11', xyz: '9928 14 -303', block: 'iron_block'}
function entity:spawner/set {id: 'stage/7/12', xyz: '9932 14 -308', block: 'iron_block'}

function entity:spawner/set {id: 'stage/7/11', xyz: '9950 14 -300', block: 'iron_block'}
function entity:spawner/set {id: 'stage/7/13', xyz: '9967 14 -310', block: 'iron_block'}
function entity:spawner/set {id: 'stage/7/12', xyz: '9955 14 -308', block: 'iron_block'}

function entity:spawner/set {id: 'stage/7/14', xyz: '9920 11 -411', block: 'bedrock'}

# チェスト配置
data modify block 9885 14 -320 LootTable set value "entity:mob_drop/7/chest"

# token / button
setblock 9879 16 -353 minecraft:air
setblock 9952 16 -319 minecraft:polished_blackstone_button[face=floor, facing=west]
setblock 9878 17 -356 minecraft:air
setblock 9952 16 -319 minecraft:polished_blackstone_button[face=floor, facing=south]
setblock 9878 17 -360 minecraft:air
setblock 9883 24 -399 minecraft:polished_blackstone_button[face=floor, facing=south]
setblock 9879 16 -363 minecraft:air
setblock 9920 12 -429 minecraft:polished_blackstone_button[face=floor, facing=north]
fill 9878 15 -356 9878 11 -360 minecraft:iron_bars
fill 9919 13 -426 9921 11 -426 minecraft:yellow_stained_glass
setblock 9920 11 -424 minecraft:air
scoreboard players set $progress s7.gimmick 0

# ボス召喚設置
setblock 9798 -1 -358 minecraft:command_block{Command: "function stage:boss/7/summon"}
setblock 9798 0 -358 minecraft:lapis_block
setblock 9798 1 -358 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 9778 4 -357 9778 1 -359 minecraft:waxed_weathered_copper

# foeceload remove
forceload remove 9746 -532 9979 -275

# スコアの設定
scoreboard players set _ stage.7 1

#! debug
#tellraw @a {text: '[!] Stage 7 を構成しました。', color: "gray"}
