#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 7523 -14 7808 -113

# スポナー設置
function entity:spawner/set {id: 'stage/14/11', xyz: '7806 64 -60', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/11', xyz: '7781 66 -86', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/12', xyz: '7770 65 -60', block: 'iron_block'}

function entity:spawner/set {id: 'stage/14/13', xyz: '7748 65 -60', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/11', xyz: '7724 65 -84', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/11', xyz: '7724 65 -36', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/13', xyz: '7700 65 -60', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/12', xyz: '7724 69 -59', block: 'beacon'}
function entity:spawner/set {id: 'stage/14/13', xyz: '7724 69 -61', block: 'beacon'}

function entity:spawner/set {id: 'stage/14/11', xyz: '7750 73 -25', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/12', xyz: '7750 65 -25', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/11', xyz: '7777 74 -25', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/13', xyz: '7764 65 -18', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/13', xyz: '7764 65 -32', block: 'iron_block'}

function entity:spawner/set {id: 'stage/14/11', xyz: '7724 66 -110', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/13', xyz: '7754 65 -104', block: 'obsidian'}
function entity:spawner/set {id: 'stage/14/13', xyz: '7694 65 -104', block: 'obsidian'}

function entity:spawner/set {id: 'stage/14/11', xyz: '7679 70 -55', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/11', xyz: '7673 75 -65', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/12', xyz: '7617 82 -76', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/12', xyz: '7617 82 -68', block: 'iron_block'}
function entity:spawner/set {id: 'stage/14/13', xyz: '7614 82 -72', block: 'beacon'}

# チェスト配置
data modify block 7781 65 -86 LootTable set value "entity:mob_drop/14/chest"
data modify block 7777 73 -25 LootTable set value "entity:mob_drop/14/chest"
data modify block 7724 65 -110 LootTable set value "entity:mob_drop/14/chest"
data modify block 7724 69 -60 LootTable set value "entity:mob_drop/14/chest"

# ボス召喚設置
setblock 7544 81 -77 minecraft:command_block{Command: "function stage:boss/14/summon"}
setblock 7544 82 -77 minecraft:lapis_block
setblock 7544 83 -77 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 7523 84 -76 7523 82 -78 minecraft:glowstone

# foeceload remove
forceload remove 7523 -14 7808 -113

# スコアの設定
scoreboard players set _ stage.14 1

#! debug
#tellraw @a {text: '[!] Stage 14 を構成しました。', color: "gray"}
