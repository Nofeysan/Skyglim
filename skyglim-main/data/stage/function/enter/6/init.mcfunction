#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9958 -233 10075 -144

# スポナー設置
function entity:spawner/set {id: 'stage/6/11', xyz: '10009 90 -173', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/11', xyz: '10024 90 -178', block: 'iron_block'}

function entity:spawner/set {id: 'stage/6/15', xyz: '9978 91 -175', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/11', xyz: '9982 91 -187', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/12', xyz: '9970 92 -187', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/13', xyz: '9987 78 -173', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/16', xyz: '9978 78 -160', block: 'iron_block'}

function entity:spawner/set {id: 'stage/6/13', xyz: '10021 70 -190', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/14', xyz: '10001 69 -189', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/15', xyz: '9997 69 -195', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/16', xyz: '10000 69 -216', block: 'beacon'}
function entity:spawner/set {id: 'stage/6/11', xyz: '10021 69 -216', block: 'iron_block'}
function entity:spawner/set {id: 'stage/6/12', xyz: '10028 69 -219', block: 'beacon'}

# チェスト配置
data modify block 9971 95 -173 LootTable set value "entity:mob_drop/6/chest"
data modify block 10045 60 -177 LootTable set value "entity:mob_drop/6/chest"
data modify block 10021 70 -219 LootTable set value "entity:mob_drop/6/chest"

# ボス召喚設置
setblock 10012 40 -178 minecraft:command_block{Command: "function stage:boss/6/summon"}
setblock 10012 41 -178 minecraft:lapis_block
setblock 10012 42 -178 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 10028 45 -179 10028 42 -177 minecraft:honeycomb_block

# foeceload remove
forceload remove 9958 -233 10075 -144

# スコアの設定
scoreboard players set _ stage.6 1

#! debug
#tellraw @a {text: '[!] Stage 6 を構成しました。', color: "gray"}
