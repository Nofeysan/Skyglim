#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 11027 -148 11199 -33

# スポナー設置
function entity:spawner/set {id: 'stage/12/11', xyz: '11147 225 -137', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/12', xyz: '11156 231 -137', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/11', xyz: '11174 231 -143', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/13', xyz: '11174 231 -131', block: 'iron_block'}

function entity:spawner/set {id: 'stage/12/19', xyz: '11192 225 -119', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11192 225 -95', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11173 231 -101', block: 'beacon'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11173 231 -110', block: 'beacon'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11155 225 -120', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11155 225 -92', block: 'iron_block'}

function entity:spawner/set {id: 'stage/12/13', xyz: '11144 225 -80', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/12', xyz: '11167 227 -73', block: 'obsidian'}
function entity:spawner/set {id: 'stage/12/11', xyz: '11156 225 -71', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/11', xyz: '11145 227 -61', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11167 239 -48', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11162 225 -53', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/13', xyz: '11143 240 -67', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11146 234 -79', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11168 238 -83', block: 'iron_block'}
function entity:spawner/set {id: 'stage/12/19', xyz: '11168 268 -69', block: 'iron_block'}

# チェスト配置
data modify block 11173 231 -106 LootTable set value "entity:mob_drop/12/chest"
data modify block 11163 239 -76 LootTable set value "entity:mob_drop/12/chest"

# ボス召喚設置
setblock 11060 227 -82 minecraft:command_block{Command: "function stage:boss/12/summon"}
setblock 11060 228 -82 minecraft:lapis_block
setblock 11060 229 -82 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 11063 230 -68 11056 229 -68 minecraft:cracked_deepslate_tiles replace minecraft:air

# foeceload remove
forceload remove 11027 -148 11199 -33

# スコアの設定
scoreboard players set _ stage.12 1

#! debug
#tellraw @a {text: '[!] Stage 12 を構成しました。', color: "gray"}
