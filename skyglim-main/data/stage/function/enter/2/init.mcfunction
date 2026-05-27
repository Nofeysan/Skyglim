#> stage:enter/1/init
# 
# ステージを構成する
# 
# 


# forceload add
forceload add 9862 -100 9894 -68

# スポナー設置
function entity:spawner/set {id: 'stage/2/1', xyz: '9867 -49 -80'}
function entity:spawner/set {id: 'stage/2/1', xyz: '9878 -49 -72'}
function entity:spawner/set {id: 'stage/2/2', xyz: '9890 -46 -89'}
function entity:spawner/set {id: 'stage/2/1', xyz: '9877 -46 -97'}
function entity:spawner/set {id: 'stage/2/2', xyz: '9869 -36 -92'}
function entity:spawner/set {id: 'stage/2/3', xyz: '9877 -28 -96'}
function entity:spawner/set {id: 'stage/2/1', xyz: '9886 -35 -86'}
function entity:spawner/set {id: 'stage/2/3', xyz: '9886 -36 -77'}
function entity:spawner/set {id: 'stage/2/2', xyz: '9872 -36 -77'}
function entity:spawner/set {id: 'stage/2/1', xyz: '9881 -20 -75'}
function entity:spawner/set {id: 'stage/2/2', xyz: '9881 -20 -85'}
function entity:spawner/set {id: 'stage/2/3', xyz: '9889 -19 -79'}
function entity:spawner/set {id: 'stage/2/2', xyz: '9874 0 -82'}

# チェスト配置
data modify block 9882 -53 -84 LootTable set value "entity:mob_drop/2/chest"
data modify block 9874 -45 -98 LootTable set value "entity:mob_drop/2/chest"
data modify block 9877 -29 -96 LootTable set value "entity:mob_drop/2/chest"

# ボス召喚設置
setblock 9878 21 -89 minecraft:command_block{Command: "function stage:boss/2/summon"}
setblock 9878 22 -89 minecraft:lapis_block
setblock 9878 23 -89 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 9877 25 -100 9879 22 -100 minecraft:dark_oak_log

# foeceload remove
forceload remove 9862 -100 9894 -68

# スコアの設定
scoreboard players set _ stage.2 1

#! debug
#tellraw @a {text: '[!] Stage 2 を構成しました。', color: "gray"}
