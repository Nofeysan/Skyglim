#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 8992 -185 9087 28

# スポナー設置
function entity:spawner/set {id: 'stage/13/13', xyz: '9012 31 7', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '9027 31 9', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '9019 26 -16', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/12', xyz: '9019 26 -24', block: 'beacon'}
function entity:spawner/set {id: 'stage/13/13', xyz: '9017 25 -45', block: 'obsidian'}

function entity:spawner/set {id: 'stage/13/12', xyz: '9019 19 -56', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/13', xyz: '9018 19 -68', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/13', xyz: '9019 19 -68', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '9011 19 -73', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '9026 19 -73', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/12', xyz: '9012 19 -92', block: 'obsidian'}
function entity:spawner/set {id: 'stage/13/12', xyz: '9025 19 -92', block: 'obsidian'}

function entity:spawner/set {id: 'stage/13/11', xyz: '9002 25 -73', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '8997 25 -80', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/12', xyz: '9000 25 -92', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/13', xyz: '9009 25 -77', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/13', xyz: '9028 25 -77', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '9019 25 -102', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/12', xyz: '9014 26 -112', block: 'obsidian'}
function entity:spawner/set {id: 'stage/13/13', xyz: '9022 26 -110', block: 'beacon'}

function entity:spawner/set {id: 'stage/13/13', xyz: '8999 19 -69', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '8994 19 -75', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/11', xyz: '8997 19 -84', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/13', xyz: '8997 19 -92', block: 'iron_block'}
function entity:spawner/set {id: 'stage/13/13', xyz: '9001 19 -92', block: 'iron_block'}

# チェスト配置
data modify block 9013 28 -43 LootTable set value "entity:mob_drop/13/chest"
data modify block 9012 25 -112 LootTable set value "entity:mob_drop/13/chest"

# ボス召喚設置
setblock 9062 11 -166 minecraft:command_block{Command: "function stage:boss/13/summon"}
setblock 9062 12 -166 minecraft:lapis_block
setblock 9062 13 -166 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 9043 15 -165 9043 12 -167 minecraft:orange_concrete_powder

# foeceload remove
forceload remove 8992 -185 9087 28

# スコアの設定
scoreboard players set _ stage.13 1

#! debug
#tellraw @a {text: '[!] Stage 13 を構成しました。', color: "gray"}
