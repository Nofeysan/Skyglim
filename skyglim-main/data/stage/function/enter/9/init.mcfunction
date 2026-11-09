#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 10152 49 10327 330
forceload add 10386 290 10424 325

# スポナー設置
function entity:spawner/set {id: 'stage/9/11', xyz: '10201 16 96', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/12', xyz: '10210 14 120', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/11', xyz: '10222 14 117', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/12', xyz: '10220 8 134', block: 'raw_gold_block'}
function entity:spawner/set {id: 'stage/9/13', xyz: '10221 4 150', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/11', xyz: '10252 -7 150', block: 'raw_gold_block'}
function entity:spawner/set {id: 'stage/9/12', xyz: '10253 -7 160', block: 'iron_block'}

function entity:spawner/set {id: 'stage/9/13', xyz: '10228 -19 209', block: 'obsidian'}
function entity:spawner/set {id: 'stage/9/11', xyz: '10226 -17 244', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/11', xyz: '10211 -19 254', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/13', xyz: '10215 -32 272', block: 'beacon'}
function entity:spawner/set {id: 'stage/9/12', xyz: '10246 -6 262', block: 'raw_gold_block'}
function entity:spawner/set {id: 'stage/9/13', xyz: '10267 -1 266', block: 'beacon'}
function entity:spawner/set {id: 'stage/9/11', xyz: '10273 -16 293', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/12', xyz: '10249 -13 307', block: 'beacon'}
function entity:spawner/set {id: 'stage/9/11', xyz: '10236 -9 311', block: 'iron_block'}
function entity:spawner/set {id: 'stage/9/13', xyz: '10300 -12 292', block: 'obsidian'}

# チェスト配置
data modify block 10221 3 150 LootTable set value "entity:mob_drop/9/chest"
data modify block 10238 -16 189 LootTable set value "entity:mob_drop/9/chest"
data modify block 10211 -27 268 LootTable set value "entity:mob_drop/9/chest"
data modify block 10236 -10 311 LootTable set value "entity:mob_drop/9/chest"

# ボス召喚設置
setblock 10408 -7 306 minecraft:command_block{Command: "function stage:boss/9/summon"}
setblock 10408 -6 306 minecraft:lapis_block
setblock 10408 -5 306 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 10428 -3 305 10428 -6 307 minecraft:polished_diorite

# foeceload remove
forceload remove 10152 49 10327 330
forceload remove 10386 290 10424 325

# スコアの設定
scoreboard players set _ stage.9 1

#! debug
#tellraw @a {text: '[!] Stage 9 を構成しました。', color: "gray"}
