#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 10240 -288 10310 -54

# スポナー設置
function entity:spawner/set {id: 'stage/ex5/11', xyz: '10276 9 -163', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/13', xyz: '10277 9 -180', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/12', xyz: '10247 9 -200', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/11', xyz: '10251 9 -184', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/19', xyz: '10247 9 -220', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex5/19', xyz: '10275 10 -202', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex5/12', xyz: '10297 9 -198', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex5/11', xyz: '10259 9 -206', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/11', xyz: '10273 9 -232', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/19', xyz: '10285 10 -220', block: 'obsidian'}

function entity:spawner/set {id: 'stage/ex5/19', xyz: '10285 27 -232', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/19', xyz: '10298 27 -202', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/13', xyz: '10277 27 -202', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/11', xyz: '10277 33 -202', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex5/12', xyz: '10257 27 -201', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/19', xyz: '10255 30 -181', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/13', xyz: '10295 27 -178', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex5/19', xyz: '10277 28 -160', block: 'obsidian'}

# チェスト配置
data modify block 10253 9 -225 LootTable set value "entity:mob_drop/ex5/chest"
data modify block 10285 9 -220 LootTable set value "entity:mob_drop/ex5/chest"
data modify block 10277 32 -202 LootTable set value "entity:mob_drop/ex5/chest"
data modify block 10277 36 -152 LootTable set value "entity:mob_drop/ex5/chest"

# ボス召喚設置
setblock 10277 23 -93 minecraft:command_block{Command: "function stage:boss/ex5/summon"}
setblock 10277 23 -93 minecraft:lapis_block
setblock 10277 23 -93 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 10278 26 -70 10276 24 -70 minecraft:end_stone

# foeceload remove
forceload remove 10240 -288 10310 -54

# スコアの設定
scoreboard players set _ stage.ex.5 1

#! debug
#tellraw @a {text: '[!] Special V を構成しました。', color: "gray"}
