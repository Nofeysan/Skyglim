#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9868 -152 9896 -124

# スポナー設置
function entity:spawner/set {id: 'stage/4/1', xyz: '9882 72 -149'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9893 72 -138'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9882 72 -127'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9893 60 -138'}
function entity:spawner/set {id: 'stage/4/3', xyz: '9874 48 -131'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9874 42 -131'}
function entity:spawner/set {id: 'stage/4/3', xyz: '9874 36 -130'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9871 36 -138'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9890 48 -131'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9890 48 -146'}
function entity:spawner/set {id: 'stage/4/3', xyz: '9890 42 -146'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9889 36 -146'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9890 30 -145'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9875 30 -146'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9875 24 -147'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9874 18 -145'}
function entity:spawner/set {id: 'stage/4/3', xyz: '9890 18 -145'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9889 12 -146'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9889 12 -130'}
function entity:spawner/set {id: 'stage/4/2', xyz: '9890 0 -130'}
function entity:spawner/set {id: 'stage/4/3', xyz: '9874 0 -130'}
function entity:spawner/set {id: 'stage/4/1', xyz: '9874 0 -145'}

# チェスト配置
data modify block 9882 60 -149 LootTable set value "entity:mob_drop/4/chest"
data modify block 9872 36 -145 LootTable set value "entity:mob_drop/4/chest"
data modify block 9875 18 -129 LootTable set value "entity:mob_drop/4/chest"

# ボス召喚設置
setblock 9882 -28 -138 minecraft:command_block{Command: "function stage:boss/4/summon"}
setblock 9882 -27 -138 minecraft:lapis_block
setblock 9882 -26 -138 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 9883 -24 -124 9881 -27 -124 minecraft:gold_block

# foeceload remove
forceload remove 9868 -152 9896 -124

# スコアの設定
scoreboard players set _ stage.4 1

#! debug
#tellraw @a {text: '[!] Stage 4 を構成しました。', color: "gray"}
