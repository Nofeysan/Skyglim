#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 10098 -359 10171 -142

# スポナー設置
function entity:spawner/set {id: 'stage/10/12', xyz: '10119 5 -172', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/11', xyz: '10141 5 -189', block: 'beacon'}
function entity:spawner/set {id: 'stage/10/13', xyz: '10136 5 -208', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/14', xyz: '10142 5 -214', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/11', xyz: '10159 5 -207', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/12', xyz: '10163 5 -207', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/14', xyz: '10149 5 -229', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/13', xyz: '10135 9 -241', block: 'bedrock'}
function entity:spawner/set {id: 'stage/10/11', xyz: '10111 5 -229', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/12', xyz: '10111 5 -209', block: 'beacon'}

function entity:spawner/set {id: 'stage/10/12', xyz: '10157 5 -261', block: 'iron_block'}
function entity:spawner/set {id: 'stage/10/11', xyz: '10157 5 -269', block: 'obsidian'}
function entity:spawner/set {id: 'stage/10/13', xyz: '10157 5 -277', block: 'iron_block'}

# チェスト配置
data modify block 10117 5 -234 LootTable set value "entity:mob_drop/10/chest"
data modify block 10161 4 -209 LootTable set value "entity:mob_drop/10/chest"

# ボス召喚設置
setblock 10147 4 -340 minecraft:command_block{Command: "function stage:boss/10/summon"}
setblock 10147 5 -340 minecraft:lapis_block
setblock 10147 6 -340 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 10142 8 -350 10143 6 -350 minecraft:yellow_glazed_terracotta

# foeceload remove
forceload remove 10098 -359 10171 -142

# スコアの設定
scoreboard players set _ stage.10 1

#! debug
#tellraw @a {text: '[!] Stage 10 を構成しました。', color: "gray"}
